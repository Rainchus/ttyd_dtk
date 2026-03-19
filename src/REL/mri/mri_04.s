.include "macros.inc"
.file "mri_04.o"

# 0x0000347C..0x00003558 | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x347C | size: 0xDC
.fn evt_chuchu_back_loop, local
/* 0000347C 00003540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003480 00003544  7C 08 02 A6 */	mflr r0
/* 00003484 00003548  3C A0 00 00 */	lis r5, str_チュチュリーナ_mri_00022dd0@ha
/* 00003488 0000354C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000348C 00003550  38 05 00 00 */	addi r0, r5, str_チュチュリーナ_mri_00022dd0@l
/* 00003490 00003554  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00003494 00003558  7C 9D 23 78 */	mr r29, r4
/* 00003498 0000355C  7C 7E 1B 78 */	mr r30, r3
/* 0000349C 00003560  7C 04 03 78 */	mr r4, r0
/* 000034A0 00003564  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000034A4 00003568  4B FF CD B5 */	bl evtNpcNameToPtr
/* 000034A8 0000356C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000034AC 00003570  7C 7F 1B 78 */	mr r31, r3
/* 000034B0 00003574  7F C3 F3 78 */	mr r3, r30
/* 000034B4 00003578  4B FF CD A5 */	bl evtGetValue
/* 000034B8 0000357C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 000034BC 00003580  41 82 00 18 */	beq .L_000034D4
/* 000034C0 00003584  3C 80 00 00 */	lis r4, gp@ha
/* 000034C4 00003588  38 84 00 00 */	addi r4, r4, gp@l
/* 000034C8 0000358C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000034CC 00003590  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 000034D0 00003594  90 1E 00 78 */	stw r0, 0x78(r30)
.L_000034D4:
/* 000034D4 00003598  3C 80 80 00 */	lis r4, 0x8000
/* 000034D8 0000359C  3C A0 00 00 */	lis r5, gp@ha
/* 000034DC 000035A0  80 84 00 F8 */	lwz r4, 0xf8(r4)
/* 000034E0 000035A4  38 A5 00 00 */	addi r5, r5, gp@l
/* 000034E4 000035A8  38 00 03 E8 */	li r0, 0x3e8
/* 000034E8 000035AC  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 000034EC 000035B0  54 84 F0 BE */	srwi r4, r4, 2
/* 000034F0 000035B4  80 DE 00 78 */	lwz r6, 0x78(r30)
/* 000034F4 000035B8  7C 04 03 96 */	divwu r0, r4, r0
/* 000034F8 000035BC  80 85 00 3C */	lwz r4, 0x3c(r5)
/* 000034FC 000035C0  7C 86 20 50 */	subf r4, r6, r4
/* 00003500 000035C4  7C 84 03 96 */	divwu r4, r4, r0
/* 00003504 000035C8  7C 04 18 00 */	cmpw r4, r3
/* 00003508 000035CC  40 80 00 2C */	bge .L_00003534
/* 0000350C 000035D0  3C C0 00 00 */	lis r6, zero_mri_00022de0@ha
/* 00003510 000035D4  3C A0 00 00 */	lis r5, float_360_mri_00022de4@ha
/* 00003514 000035D8  C0 45 00 00 */	lfs f2, float_360_mri_00022de4@l(r5)
/* 00003518 000035DC  7C 65 1B 78 */	mr r5, r3
/* 0000351C 000035E0  C0 26 00 00 */	lfs f1, zero_mri_00022de0@l(r6)
/* 00003520 000035E4  38 60 00 0B */	li r3, 0xb
/* 00003524 000035E8  4B FF CD 35 */	bl intplGetValue
/* 00003528 000035EC  D0 3F 00 F4 */	stfs f1, 0xf4(r31)
/* 0000352C 000035F0  38 60 00 00 */	li r3, 0x0
/* 00003530 000035F4  48 00 00 14 */	b .L_00003544
.L_00003534:
/* 00003534 000035F8  3C 80 00 00 */	lis r4, zero_mri_00022de0@ha
/* 00003538 000035FC  38 60 00 02 */	li r3, 0x2
/* 0000353C 00003600  C0 04 00 00 */	lfs f0, zero_mri_00022de0@l(r4)
/* 00003540 00003604  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
.L_00003544:
/* 00003544 00003608  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00003548 0000360C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000354C 00003610  7C 08 03 A6 */	mtlr r0
/* 00003550 00003614  38 21 00 20 */	addi r1, r1, 0x20
/* 00003554 00003618  4E 80 00 20 */	blr
.endfn evt_chuchu_back_loop

# 0x000026E8..0x00002AA8 | size: 0x3C0
.rodata
.balign 8

# .rodata:0x0 | 0x26E8 | size: 0x7
.obj str_e_bero_mri_00022d88, local
	.string "e_bero"
.endobj str_e_bero_mri_00022d88

# .rodata:0x7 | 0x26EF | size: 0x1
.obj gap_03_000026EF_rodata, global
.hidden gap_03_000026EF_rodata
	.byte 0x00
.endobj gap_03_000026EF_rodata

# .rodata:0x8 | 0x26F0 | size: 0x7
.obj str_mri_03_mri_00022d90, local
	.string "mri_03"
.endobj str_mri_03_mri_00022d90

# .rodata:0xF | 0x26F7 | size: 0x1
.obj gap_03_000026F7_rodata, global
.hidden gap_03_000026F7_rodata
	.byte 0x00
.endobj gap_03_000026F7_rodata

# .rodata:0x10 | 0x26F8 | size: 0x7
.obj str_w_bero_mri_00022d98, local
	.string "w_bero"
.endobj str_w_bero_mri_00022d98

# .rodata:0x17 | 0x26FF | size: 0x1
.obj gap_03_000026FF_rodata, global
.hidden gap_03_000026FF_rodata
	.byte 0x00
.endobj gap_03_000026FF_rodata

# .rodata:0x18 | 0x2700 | size: 0x3
.obj str_me_mri_00022da0, local
	.string "me"
.endobj str_me_mri_00022da0

# .rodata:0x1B | 0x2703 | size: 0x1
.obj gap_03_00002703_rodata, global
.hidden gap_03_00002703_rodata
	.byte 0x00
.endobj gap_03_00002703_rodata

# .rodata:0x1C | 0x2704 | size: 0x10
.obj str_stg2_mri_re_019_mri_00022da4, local
	.string "stg2_mri_re_019"
.endobj str_stg2_mri_re_019_mri_00022da4

# .rodata:0x2C | 0x2714 | size: 0xF
.obj str_chibitoge_item_mri_00022db4, local
	.string "chibitoge_item"
.endobj str_chibitoge_item_mri_00022db4

# .rodata:0x3B | 0x2723 | size: 0x1
.obj gap_03_00002723_rodata, global
.hidden gap_03_00002723_rodata
	.byte 0x00
.endobj gap_03_00002723_rodata

# .rodata:0x3C | 0x2724 | size: 0x9
.obj str_ちびトゲ_mri_00022dc4, local
	.4byte 0x82BF82D1
	.4byte 0x83678351
	.byte 0x00
.endobj str_ちびトゲ_mri_00022dc4

# .rodata:0x45 | 0x272D | size: 0x3
.obj gap_03_0000272D_rodata, global
.hidden gap_03_0000272D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000272D_rodata

# .rodata:0x48 | 0x2730 | size: 0xF
.obj str_チュチュリーナ_mri_00022dd0, local
	.4byte 0x83608385
	.4byte 0x83608385
	.4byte 0x838A815B
	.byte 0x83, 0x69, 0x00
.endobj str_チュチュリーナ_mri_00022dd0
	.byte 0x00

# .rodata:0x58 | 0x2740 | size: 0x4
.obj zero_mri_00022de0, local
	.float 0
.endobj zero_mri_00022de0

# .rodata:0x5C | 0x2744 | size: 0x4
.obj float_360_mri_00022de4, local
	.float 360
.endobj float_360_mri_00022de4

# .rodata:0x60 | 0x2748 | size: 0xD
.obj str_第三勢力部下_mri_00022de8, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x00
.endobj str_第三勢力部下_mri_00022de8

# .rodata:0x6D | 0x2755 | size: 0x3
.obj gap_03_00002755_rodata, global
.hidden gap_03_00002755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002755_rodata

# .rodata:0x70 | 0x2758 | size: 0x13
.obj str_SFX_GURUGURU_MARK1_mri_00022df8, local
	.string "SFX_GURUGURU_MARK1"
.endobj str_SFX_GURUGURU_MARK1_mri_00022df8

# .rodata:0x83 | 0x276B | size: 0x1
.obj gap_03_0000276B_rodata, global
.hidden gap_03_0000276B_rodata
	.byte 0x00
.endobj gap_03_0000276B_rodata

# .rodata:0x84 | 0x276C | size: 0x9
.obj str_eff_moja_mri_00022e0c, local
	.string "eff_moja"
.endobj str_eff_moja_mri_00022e0c

# .rodata:0x8D | 0x2775 | size: 0x3
.obj gap_03_00002775_rodata, global
.hidden gap_03_00002775_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002775_rodata

# .rodata:0x90 | 0x2778 | size: 0x4
.obj str_D_2_mri_00022e18, local
	.string "D_2"
.endobj str_D_2_mri_00022e18

# .rodata:0x94 | 0x277C | size: 0x14
.obj str_BGM_EVT_CYUCYURINA1_mri_00022e1c, local
	.string "BGM_EVT_CYUCYURINA1"
.endobj str_BGM_EVT_CYUCYURINA1_mri_00022e1c

# .rodata:0xA8 | 0x2790 | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_mri_00022e30, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_mri_00022e30

# .rodata:0xBE | 0x27A6 | size: 0x2
.obj gap_03_000027A6_rodata, global
.hidden gap_03_000027A6_rodata
	.2byte 0x0000
.endobj gap_03_000027A6_rodata

# .rodata:0xC0 | 0x27A8 | size: 0x1
.obj zero_mri_00022e48, local
	.byte 0x00
.endobj zero_mri_00022e48

# .rodata:0xC1 | 0x27A9 | size: 0x3
.obj gap_03_000027A9_rodata, global
.hidden gap_03_000027A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027A9_rodata

# .rodata:0xC4 | 0x27AC | size: 0x10
.obj str_stg2_mri_e13_00_mri_00022e4c, local
	.string "stg2_mri_e13_00"
.endobj str_stg2_mri_e13_00_mri_00022e4c

# .rodata:0xD4 | 0x27BC | size: 0x10
.obj str_stg2_mri_e13_01_mri_00022e5c, local
	.string "stg2_mri_e13_01"
.endobj str_stg2_mri_e13_01_mri_00022e5c

# .rodata:0xE4 | 0x27CC | size: 0x10
.obj str_stg2_mri_e13_02_mri_00022e6c, local
	.string "stg2_mri_e13_02"
.endobj str_stg2_mri_e13_02_mri_00022e6c

# .rodata:0xF4 | 0x27DC | size: 0x8
.obj str_PCH_W_1_mri_00022e7c, local
	.string "PCH_W_1"
.endobj str_PCH_W_1_mri_00022e7c

# .rodata:0xFC | 0x27E4 | size: 0x8
.obj str_PCH_S_1_mri_00022e84, local
	.string "PCH_S_1"
.endobj str_PCH_S_1_mri_00022e84

# .rodata:0x104 | 0x27EC | size: 0x8
.obj str_PCH_K_1_mri_00022e8c, local
	.string "PCH_K_1"
.endobj str_PCH_K_1_mri_00022e8c

# .rodata:0x10C | 0x27F4 | size: 0x5
.obj str_kiss_mri_00022e94, local
	.string "kiss"
.endobj str_kiss_mri_00022e94

# .rodata:0x111 | 0x27F9 | size: 0x3
.obj gap_03_000027F9_rodata, global
.hidden gap_03_000027F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027F9_rodata

# .rodata:0x114 | 0x27FC | size: 0x17
.obj str_SFX_STG1_CHURINA_KIS_mri_00022e9c, local
	.string "SFX_STG1_CHURINA_KISS1"
.endobj str_SFX_STG1_CHURINA_KIS_mri_00022e9c

# .rodata:0x12B | 0x2813 | size: 0x1
.obj gap_03_00002813_rodata, global
.hidden gap_03_00002813_rodata
	.byte 0x00
.endobj gap_03_00002813_rodata

# .rodata:0x12C | 0x2814 | size: 0x17
.obj str_SFX_STG1_CHURINA_KIS_mri_00022eb4, local
	.string "SFX_STG1_CHURINA_KISS2"
.endobj str_SFX_STG1_CHURINA_KIS_mri_00022eb4

# .rodata:0x143 | 0x282B | size: 0x1
.obj gap_03_0000282B_rodata, global
.hidden gap_03_0000282B_rodata
	.byte 0x00
.endobj gap_03_0000282B_rodata

# .rodata:0x144 | 0x282C | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_mri_00022ecc, local
	.string "SFX_VOICE_MARIO_SURPRISED2"
.endobj str_SFX_VOICE_MARIO_SURP_mri_00022ecc

# .rodata:0x15F | 0x2847 | size: 0x1
.obj gap_03_00002847_rodata, global
.hidden gap_03_00002847_rodata
	.byte 0x00
.endobj gap_03_00002847_rodata

# .rodata:0x160 | 0x2848 | size: 0x7
.obj str_M_N_5B_mri_00022ee8, local
	.string "M_N_5B"
.endobj str_M_N_5B_mri_00022ee8

# .rodata:0x167 | 0x284F | size: 0x1
.obj gap_03_0000284F_rodata, global
.hidden gap_03_0000284F_rodata
	.byte 0x00
.endobj gap_03_0000284F_rodata

# .rodata:0x168 | 0x2850 | size: 0x8
.obj str_PCH_R_1_mri_00022ef0, local
	.string "PCH_R_1"
.endobj str_PCH_R_1_mri_00022ef0

# .rodata:0x170 | 0x2858 | size: 0x10
.obj str_stg2_mri_e13_03_mri_00022ef8, local
	.string "stg2_mri_e13_03"
.endobj str_stg2_mri_e13_03_mri_00022ef8

# .rodata:0x180 | 0x2868 | size: 0x10
.obj str_stg2_mri_e13_04_mri_00022f08, local
	.string "stg2_mri_e13_04"
.endobj str_stg2_mri_e13_04_mri_00022f08

# .rodata:0x190 | 0x2878 | size: 0x10
.obj str_stg2_mri_e13_05_mri_00022f18, local
	.string "stg2_mri_e13_05"
.endobj str_stg2_mri_e13_05_mri_00022f18

# .rodata:0x1A0 | 0x2888 | size: 0x19
.obj str_SFX_STG2_CHURINA_ESC_mri_00022f28, local
	.string "SFX_STG2_CHURINA_ESCAPE1"
.endobj str_SFX_STG2_CHURINA_ESC_mri_00022f28

# .rodata:0x1B9 | 0x28A1 | size: 0x3
.obj gap_03_000028A1_rodata, global
.hidden gap_03_000028A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028A1_rodata

# .rodata:0x1BC | 0x28A4 | size: 0xE
.obj str_ENV_STG2_MRI5_mri_00022f44, local
	.string "ENV_STG2_MRI5"
.endobj str_ENV_STG2_MRI5_mri_00022f44

# .rodata:0x1CA | 0x28B2 | size: 0x2
.obj gap_03_000028B2_rodata, global
.hidden gap_03_000028B2_rodata
	.2byte 0x0000
.endobj gap_03_000028B2_rodata

# .rodata:0x1CC | 0x28B4 | size: 0x10
.obj str_stg2_mri_e13_06_mri_00022f54, local
	.string "stg2_mri_e13_06"
.endobj str_stg2_mri_e13_06_mri_00022f54

# .rodata:0x1DC | 0x28C4 | size: 0x13
.obj str_SFX_STG2_3RD_WAKE1_mri_00022f64, local
	.string "SFX_STG2_3RD_WAKE1"
.endobj str_SFX_STG2_3RD_WAKE1_mri_00022f64

# .rodata:0x1EF | 0x28D7 | size: 0x1
.obj gap_03_000028D7_rodata, global
.hidden gap_03_000028D7_rodata
	.byte 0x00
.endobj gap_03_000028D7_rodata

# .rodata:0x1F0 | 0x28D8 | size: 0x4
.obj str_D_3_mri_00022f78, local
	.string "D_3"
.endobj str_D_3_mri_00022f78

# .rodata:0x1F4 | 0x28DC | size: 0x10
.obj str_stg2_mri_e13_07_mri_00022f7c, local
	.string "stg2_mri_e13_07"
.endobj str_stg2_mri_e13_07_mri_00022f7c

# .rodata:0x204 | 0x28EC | size: 0x4
.obj str_R_1_mri_00022f8c, local
	.string "R_1"
.endobj str_R_1_mri_00022f8c

# .rodata:0x208 | 0x28F0 | size: 0x9
.obj str_item_key_mri_00022f90, local
	.string "item_key"
.endobj str_item_key_mri_00022f90

# .rodata:0x211 | 0x28F9 | size: 0x3
.obj gap_03_000028F9_rodata, global
.hidden gap_03_000028F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028F9_rodata

# .rodata:0x214 | 0x28FC | size: 0x16
.obj str_stg2_mri_e12_26_00_0_mri_00022f9c, local
	.string "stg2_mri_e12_26_00_01"
.endobj str_stg2_mri_e12_26_00_0_mri_00022f9c

# .rodata:0x22A | 0x2912 | size: 0x2
.obj gap_03_00002912_rodata, global
.hidden gap_03_00002912_rodata
	.2byte 0x0000
.endobj gap_03_00002912_rodata

# .rodata:0x22C | 0x2914 | size: 0x17
.obj str_SFX_STG2_CHURINA_JUM_mri_00022fb4, local
	.string "SFX_STG2_CHURINA_JUMP1"
.endobj str_SFX_STG2_CHURINA_JUM_mri_00022fb4

# .rodata:0x243 | 0x292B | size: 0x1
.obj gap_03_0000292B_rodata, global
.hidden gap_03_0000292B_rodata
	.byte 0x00
.endobj gap_03_0000292B_rodata

# .rodata:0x244 | 0x292C | size: 0x1A
.obj str_SFX_STG2_CHURINA_LAN_mri_00022fcc, local
	.string "SFX_STG2_CHURINA_LANDING1"
.endobj str_SFX_STG2_CHURINA_LAN_mri_00022fcc

# .rodata:0x25E | 0x2946 | size: 0x2
.obj gap_03_00002946_rodata, global
.hidden gap_03_00002946_rodata
	.2byte 0x0000
.endobj gap_03_00002946_rodata

# .rodata:0x260 | 0x2948 | size: 0x19
.obj str_SFX_STG2_CHURINA_ATT_mri_00022fe8, local
	.string "SFX_STG2_CHURINA_ATTACK1"
.endobj str_SFX_STG2_CHURINA_ATT_mri_00022fe8

# .rodata:0x279 | 0x2961 | size: 0x3
.obj gap_03_00002961_rodata, global
.hidden gap_03_00002961_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002961_rodata

# .rodata:0x27C | 0x2964 | size: 0x9
.obj str_PCH_A1_2_mri_00023004, local
	.string "PCH_A1_2"
.endobj str_PCH_A1_2_mri_00023004

# .rodata:0x285 | 0x296D | size: 0x3
.obj gap_03_0000296D_rodata, global
.hidden gap_03_0000296D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000296D_rodata

# .rodata:0x288 | 0x2970 | size: 0xB
.obj str_small_star_mri_00023010, local
	.string "small_star"
.endobj str_small_star_mri_00023010

# .rodata:0x293 | 0x297B | size: 0x1
.obj gap_03_0000297B_rodata, global
.hidden gap_03_0000297B_rodata
	.byte 0x00
.endobj gap_03_0000297B_rodata

# .rodata:0x294 | 0x297C | size: 0x13
.obj str_SFX_STG2_3RD_DOWN1_mri_0002301c, local
	.string "SFX_STG2_3RD_DOWN1"
.endobj str_SFX_STG2_3RD_DOWN1_mri_0002301c

# .rodata:0x2A7 | 0x298F | size: 0x1
.obj gap_03_0000298F_rodata, global
.hidden gap_03_0000298F_rodata
	.byte 0x00
.endobj gap_03_0000298F_rodata

# .rodata:0x2A8 | 0x2990 | size: 0x4
.obj str_D_4_mri_00023030, local
	.string "D_4"
.endobj str_D_4_mri_00023030

# .rodata:0x2AC | 0x2994 | size: 0x16
.obj str_stg2_mri_e12_26_00_0_mri_00023034, local
	.string "stg2_mri_e12_26_00_02"
.endobj str_stg2_mri_e12_26_00_0_mri_00023034

# .rodata:0x2C2 | 0x29AA | size: 0x2
.obj gap_03_000029AA_rodata, global
.hidden gap_03_000029AA_rodata
	.2byte 0x0000
.endobj gap_03_000029AA_rodata

# .rodata:0x2C4 | 0x29AC | size: 0x6
.obj str_dokan_mri_0002304c, local
	.string "dokan"
.endobj str_dokan_mri_0002304c

# .rodata:0x2CA | 0x29B2 | size: 0x2
.obj gap_03_000029B2_rodata, global
.hidden gap_03_000029B2_rodata
	.2byte 0x0000
.endobj gap_03_000029B2_rodata

# .rodata:0x2CC | 0x29B4 | size: 0xD
.obj str_item_ueki_02_mri_00023054, local
	.string "item_ueki_02"
.endobj str_item_ueki_02_mri_00023054

# .rodata:0x2D9 | 0x29C1 | size: 0x3
.obj gap_03_000029C1_rodata, global
.hidden gap_03_000029C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029C1_rodata

# .rodata:0x2DC | 0x29C4 | size: 0x9
.obj str_A_ueki01_mri_00023064, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_00023064

# .rodata:0x2E5 | 0x29CD | size: 0x3
.obj gap_03_000029CD_rodata, global
.hidden gap_03_000029CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029CD_rodata

# .rodata:0x2E8 | 0x29D0 | size: 0x9
.obj str_S_ueki01_mri_00023070, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_00023070

# .rodata:0x2F1 | 0x29D9 | size: 0x3
.obj gap_03_000029D9_rodata, global
.hidden gap_03_000029D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029D9_rodata

# .rodata:0x2F4 | 0x29DC | size: 0x9
.obj str_A_ueki02_mri_0002307c, local
	.string "A_ueki02"
.endobj str_A_ueki02_mri_0002307c

# .rodata:0x2FD | 0x29E5 | size: 0x3
.obj gap_03_000029E5_rodata, global
.hidden gap_03_000029E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029E5_rodata

# .rodata:0x300 | 0x29E8 | size: 0x9
.obj str_S_ueki02_mri_00023088, local
	.string "S_ueki02"
.endobj str_S_ueki02_mri_00023088

# .rodata:0x309 | 0x29F1 | size: 0x3
.obj gap_03_000029F1_rodata, global
.hidden gap_03_000029F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029F1_rodata

# .rodata:0x30C | 0x29F4 | size: 0x9
.obj str_A_ueki04_mri_00023094, local
	.string "A_ueki04"
.endobj str_A_ueki04_mri_00023094

# .rodata:0x315 | 0x29FD | size: 0x3
.obj gap_03_000029FD_rodata, global
.hidden gap_03_000029FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029FD_rodata

# .rodata:0x318 | 0x2A00 | size: 0x9
.obj str_S_ueki04_mri_000230a0, local
	.string "S_ueki04"
.endobj str_S_ueki04_mri_000230a0

# .rodata:0x321 | 0x2A09 | size: 0x3
.obj gap_03_00002A09_rodata, global
.hidden gap_03_00002A09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A09_rodata

# .rodata:0x324 | 0x2A0C | size: 0x9
.obj str_A_ueki05_mri_000230ac, local
	.string "A_ueki05"
.endobj str_A_ueki05_mri_000230ac

# .rodata:0x32D | 0x2A15 | size: 0x3
.obj gap_03_00002A15_rodata, global
.hidden gap_03_00002A15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A15_rodata

# .rodata:0x330 | 0x2A18 | size: 0x9
.obj str_S_ueki05_mri_000230b8, local
	.string "S_ueki05"
.endobj str_S_ueki05_mri_000230b8

# .rodata:0x339 | 0x2A21 | size: 0x3
.obj gap_03_00002A21_rodata, global
.hidden gap_03_00002A21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A21_rodata

# .rodata:0x33C | 0x2A24 | size: 0xB
.obj str_mobj_box00_mri_000230c4, local
	.string "mobj_box00"
.endobj str_mobj_box00_mri_000230c4

# .rodata:0x347 | 0x2A2F | size: 0x1
.obj gap_03_00002A2F_rodata, global
.hidden gap_03_00002A2F_rodata
	.byte 0x00
.endobj gap_03_00002A2F_rodata

# .rodata:0x348 | 0x2A30 | size: 0x7
.obj str_item00_mri_000230d0, local
	.string "item00"
.endobj str_item00_mri_000230d0

# .rodata:0x34F | 0x2A37 | size: 0x1
.obj gap_03_00002A37_rodata, global
.hidden gap_03_00002A37_rodata
	.byte 0x00
.endobj gap_03_00002A37_rodata

# .rodata:0x350 | 0x2A38 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_000230d8, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_000230d8

# .rodata:0x360 | 0x2A48 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_000230e8, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_000230e8

# .rodata:0x36E | 0x2A56 | size: 0x2
.obj gap_03_00002A56_rodata, global
.hidden gap_03_00002A56_rodata
	.2byte 0x0000
.endobj gap_03_00002A56_rodata

# .rodata:0x370 | 0x2A58 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_000230f8, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_000230f8

# .rodata:0x37E | 0x2A66 | size: 0x2
.obj gap_03_00002A66_rodata, global
.hidden gap_03_00002A66_rodata
	.2byte 0x0000
.endobj gap_03_00002A66_rodata

# .rodata:0x380 | 0x2A68 | size: 0xB
.obj str_mobj_box01_mri_00023108, local
	.string "mobj_box01"
.endobj str_mobj_box01_mri_00023108

# .rodata:0x38B | 0x2A73 | size: 0x1
.obj gap_03_00002A73_rodata, global
.hidden gap_03_00002A73_rodata
	.byte 0x00
.endobj gap_03_00002A73_rodata

# .rodata:0x38C | 0x2A74 | size: 0x8
.obj str_mizu_01_mri_00023114, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00023114

# .rodata:0x394 | 0x2A7C | size: 0x8
.obj str_mizu_02_mri_0002311c, local
	.string "mizu_02"
.endobj str_mizu_02_mri_0002311c

# .rodata:0x39C | 0x2A84 | size: 0x7
.obj str_awa_01_mri_00023124, local
	.string "awa_01"
.endobj str_awa_01_mri_00023124

# .rodata:0x3A3 | 0x2A8B | size: 0x1
.obj gap_03_00002A8B_rodata, global
.hidden gap_03_00002A8B_rodata
	.byte 0x00
.endobj gap_03_00002A8B_rodata

# .rodata:0x3A4 | 0x2A8C | size: 0x7
.obj str_awa_02_mri_0002312c, local
	.string "awa_02"
.endobj str_awa_02_mri_0002312c

# .rodata:0x3AB | 0x2A93 | size: 0x1
.obj gap_03_00002A93_rodata, global
.hidden gap_03_00002A93_rodata
	.byte 0x00
.endobj gap_03_00002A93_rodata

# .rodata:0x3AC | 0x2A94 | size: 0xA
.obj str_hikari_01_mri_00023134, local
	.string "hikari_01"
.endobj str_hikari_01_mri_00023134

# .rodata:0x3B6 | 0x2A9E | size: 0x2
.obj gap_03_00002A9E_rodata, global
.hidden gap_03_00002A9E_rodata
	.2byte 0x0000
.endobj gap_03_00002A9E_rodata

# .rodata:0x3B8 | 0x2AA0 | size: 0x2
.obj str_S_mri_00023140, local
	.string "S"
.endobj str_S_mri_00023140

# .rodata:0x3BA | 0x2AA2 | size: 0x6
.obj gap_03_00002AA2_rodata, global
.hidden gap_03_00002AA2_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_00002AA2_rodata

# 0x00014518..0x00015ED8 | size: 0x19C0
.data
.balign 8

# .data:0x0 | 0x14518 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x14520 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x14524 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x14528 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1452C | size: 0x4
.obj gap_04_0001452C_data, global
.hidden gap_04_0001452C_data
	.4byte 0x00000000
.endobj gap_04_0001452C_data

# .data:0x18 | 0x14530 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x14538 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1453C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x14540 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x14548 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1454C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x14550 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x14554 | size: 0x4
.obj gap_04_00014554_data, global
.hidden gap_04_00014554_data
	.4byte 0x00000000
.endobj gap_04_00014554_data

# .data:0x40 | 0x14558 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x14560 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x14564 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x14568 | size: 0x34
.obj bero_custom, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_custom

# .data:0x84 | 0x1459C | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_mri_00022d88
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_custom
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_03_mri_00022d90
	.4byte str_w_bero_mri_00022d98
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

# .data:0xFC | 0x14614 | size: 0x54
.obj chibitoge_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406698
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00022da0
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chibitoge_init

# .data:0x150 | 0x14668 | size: 0x1BC
.obj chibitoge_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_mri_00022da0
	.4byte 0x40000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_mri_00022da0
	.4byte 0xFFFFFFC4
	.4byte 0x00000043
	.4byte 0xFFFFFFD8
	.4byte 0x000001F4
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_mri_00022da0
	.4byte 0x0000010E
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_019_mri_00022da4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_mri_00022da0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_chibitoge_item_mri_00022db4
	.4byte 0x00000094
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_chibitoge_item_mri_00022db4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_mri_00022da0
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_mri_00022da0
	.4byte 0xFFFFFFC4
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_mri_00022da0
	.4byte 0x0000004B
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00022da0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406698
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chibitoge_talk

# .data:0x30C | 0x14824 | size: 0xB8
.obj npcEnt, local
	.4byte str_ちびトゲ_mri_00022dc4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte chibitoge_init
	.4byte 0x00000000
	.4byte chibitoge_talk
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x3C4 | 0x148DC | size: 0xCB8
.obj chuchurina_sogu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000011
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_GURUGURU_MARK1_mri_00022df8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000002
	.4byte str_eff_moja_mri_00022e0c
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte evt_bero_get_into_info
	.4byte 0x0003005B
	.4byte bero_get_position_normal
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_bero_get_start_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_bero_get_end_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000006E
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_bero_get_start_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFEC
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_bero_get_end_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFEC
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_bero_get_start_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_puni_set_dir_18_text_19170
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0x00000001
	.4byte 0x000000AF
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下_mri_00022de8
	.4byte str_D_2_mri_00022e18
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_CYUCYURINA1_mri_00022e1c
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000400
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_mri_00022e30
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_mri_00022e48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000060
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_mri_00022e48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000060
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000004
	.4byte zero_mri_00022e48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000060
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFAC
	.4byte 0x00000098
	.4byte 0x00000224
	.4byte 0xFFFFFFAC
	.4byte 0x00000039
	.4byte 0x00000007
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e13_00_mri_00022e4c
	.4byte 0x00000000
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000007D
	.4byte 0x0000005A
	.4byte 0x00000106
	.4byte 0x0000007D
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e13_01_mri_00022e5c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000053
	.4byte 0x00000105
	.4byte 0xFFFFFFB5
	.4byte 0x00000021
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e13_02_mri_00022e6c
	.4byte 0x00000000
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_W_1_mri_00022e7c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000064
	.4byte 0x0000005A
	.4byte 0x00000106
	.4byte 0x00000064
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_S_1_mri_00022e84
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_K_1_mri_00022e8c
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kiss_mri_00022e94
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHURINA_KIS_mri_00022e9c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_CHURINA_KIS_mri_00022eb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_mri_00022ecc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_mri_00022ee8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_S_1_mri_00022e84
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_R_1_mri_00022ef0
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_S_1_mri_00022e84
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e13_03_mri_00022ef8
	.4byte 0x00000000
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF24CA019
	.4byte 0xF24ADFB3
	.4byte 0xF254694C
	.4byte 0xF24B0D4C
	.4byte 0xF24C874C
	.4byte 0xF2492BB4
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_chuchu_back_loop
	.4byte 0x000001C2
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFFFFFFC4
	.4byte 0x00000043
	.4byte 0xFFFFFFCB
	.4byte 0x000001F4
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_chuchu_back_loop
	.4byte 0x000001C2
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFFFFFFCB
	.4byte 0x00000087
	.4byte 0xFFFFFF9F
	.4byte 0x000001F4
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e13_04_mri_00022f08
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000043
	.4byte 0x0000007D
	.4byte 0x000000B4
	.4byte 0xFFFFFFFA
	.4byte 0x00000096
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e13_05_mri_00022f18
	.4byte 0x00000000
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF24C674C
	.4byte 0xF24C214C
	.4byte 0xF24F52E6
	.4byte 0xF24A6280
	.4byte 0xF24CD280
	.4byte 0xF24AA680
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000163
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte str_PCH_W_1_mri_00022e7c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHURINA_ESC_mri_00022f28
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0xFFFFFFEE
	.4byte 0x00000087
	.4byte 0xFFFFFF38
	.4byte 0x0000012C
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI5_mri_00022f44
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000007D
	.4byte 0x0000005A
	.4byte 0x00000106
	.4byte 0x0000007D
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e13_06_mri_00022f54
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF6
	.4byte 0x00000072
	.4byte 0x00000190
	.4byte 0xFFFFFFF6
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_eff_moja_mri_00022e0c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_WAKE1_mri_00022f64
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下_mri_00022de8
	.4byte str_D_3_mri_00022f78
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00022e48
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x40000020
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e13_07_mri_00022f7c
	.4byte 0x00000000
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下_mri_00022de8
	.4byte str_R_1_mri_00022f8c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFDD
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF24BE619
	.4byte 0xF24C4280
	.4byte 0xF250BA80
	.4byte 0xF24BE619
	.4byte 0xF24B2E80
	.4byte 0xF24A9680
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x0001005C
	.4byte enemy_event_dead_event_sub
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_key_mri_00022f90
	.4byte 0x00000010
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0xF8406697
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000005D
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chuchurina_sogu

# .data:0x107C | 0x15594 | size: 0x554
.obj black_shadow, local
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
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_チュチュリーナ_mri_00022dd0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C88
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x40000620
	.4byte 0x0006005B
	.4byte evt_npc_set_color
	.4byte 0xFE363C88
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte str_第三勢力部下_mri_00022de8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C89
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000600
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002004D
	.4byte 0xFE363C80
	.4byte 0x00000400
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000A
	.4byte 0x00000096
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0x00000007
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C89
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_00_0_mri_00022f9c
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C88
	.4byte 0xFFFFFFC9
	.4byte 0x00000087
	.4byte 0xFFFFFF9C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHURINA_JUM_mri_00022fb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C88
	.4byte 0xFFFFFFC4
	.4byte 0x00000043
	.4byte 0xFFFFFFCB
	.4byte 0x000001F4
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHURINA_LAN_mri_00022fcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHURINA_JUM_mri_00022fb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C88
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x00000017
	.4byte 0x000001F4
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHURINA_LAN_mri_00022fcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C89
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00022e48
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHURINA_ATT_mri_00022fe8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C88
	.4byte str_PCH_A1_2_mri_00023004
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_mri_00022e48
	.4byte str_small_star_mri_00023010
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00000032
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte mri_npc_buruburu_18_text_52C
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x00000064
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x00000600
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_DOWN1_mri_0002301c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C89
	.4byte str_D_4_mri_00023030
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C88
	.4byte str_PCH_S_1_mri_00022e84
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_00_0_mri_00023034
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_03_mri_00022d90
	.4byte str_dokan_mri_0002304c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj black_shadow

# .data:0x15D0 | 0x15AE8 | size: 0x50
.obj evt_ueki_02, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_ueki_02_mri_00023054
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_ueki_02_mri_00023054
	.4byte 0x00000079
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x00000004
	.4byte 0xF8406696
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_02

# .data:0x1620 | 0x15B38 | size: 0x50
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_00023064
	.4byte str_S_ueki01_mri_00023070
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki02_mri_0002307c
	.4byte str_S_ueki02_mri_00023088
	.4byte evt_ueki_02
	.4byte 0x00000001
	.4byte str_A_ueki04_mri_00023094
	.4byte str_S_ueki04_mri_000230a0
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki05_mri_000230ac
	.4byte str_S_ueki05_mri_000230b8
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x1670 | 0x15B88 | size: 0x88
.obj item_mri_04, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_mri_000230c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_000230d0
	.4byte 0x00000096
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_mri_000230d0
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_mri_000230c4
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_mri_000230d0
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_mri_04

# .data:0x16F8 | 0x15C10 | size: 0x2C8
.obj mri_04_init_evt_18_data_15C10, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_000230d8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_000230e8
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_000230f8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI5_mri_00022f44
	.4byte 0x00000031
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_mri_000230c4
	.4byte 0xFFFFFF65
	.4byte 0x00000000
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_mri_04
	.4byte 0xF8406695
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box01_mri_00023108
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box01_mri_00023108
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00023114
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_0002311c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00023124
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_0002312c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hikari_01_mri_00023134
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005A
	.4byte 0x0001005C
	.4byte black_shadow
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005C
	.4byte 0x0001005C
	.4byte chuchurina_sogu
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000005D
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_key_mri_00022f90
	.4byte 0x00000010
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0xF8406697
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mri_00023140
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_04_init_evt_18_data_15C10
