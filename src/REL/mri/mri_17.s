.include "macros.inc"
.file "mri_17.o"

# 0x0001F09C..0x0001F104 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x1F09C | size: 0x68
.fn set_depthPlaneOffset, local
/* 0001F09C 0001F160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001F0A0 0001F164  7C 08 02 A6 */	mflr r0
/* 0001F0A4 0001F168  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001F0A8 0001F16C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0001F0AC 0001F170  7C 7E 1B 78 */	mr r30, r3
/* 0001F0B0 0001F174  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0001F0B4 0001F178  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0001F0B8 0001F17C  4B FE 11 A1 */	bl evtGetValue
/* 0001F0BC 0001F180  3C 80 00 00 */	lis r4, gp@ha
/* 0001F0C0 0001F184  38 84 00 00 */	addi r4, r4, gp@l
/* 0001F0C4 0001F188  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001F0C8 0001F18C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 0001F0CC 0001F190  30 04 FF FF */	subic r0, r4, 0x1
/* 0001F0D0 0001F194  7C 80 21 10 */	subfe r4, r0, r4
/* 0001F0D4 0001F198  4B FE 11 85 */	bl imgNameToPtr
/* 0001F0D8 0001F19C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0001F0DC 0001F1A0  7C 7F 1B 78 */	mr r31, r3
/* 0001F0E0 0001F1A4  7F C3 F3 78 */	mr r3, r30
/* 0001F0E4 0001F1A8  4B FE 11 75 */	bl evtGetFloat
/* 0001F0E8 0001F1AC  D0 3F 01 1C */	stfs f1, 0x11c(r31)
/* 0001F0EC 0001F1B0  38 60 00 02 */	li r3, 0x2
/* 0001F0F0 0001F1B4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0001F0F4 0001F1B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001F0F8 0001F1BC  7C 08 03 A6 */	mtlr r0
/* 0001F0FC 0001F1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 0001F100 0001F1C4  4E 80 00 20 */	blr
.endfn set_depthPlaneOffset

# 0x00006EA8..0x000072A8 | size: 0x400
.rodata
.balign 8

# .rodata:0x0 | 0x6EA8 | size: 0x7
.obj str_w_bero_mri_00027548, local
	.string "w_bero"
.endobj str_w_bero_mri_00027548

# .rodata:0x7 | 0x6EAF | size: 0x1
.obj gap_03_00006EAF_rodata, global
.hidden gap_03_00006EAF_rodata
	.byte 0x00
.endobj gap_03_00006EAF_rodata

# .rodata:0x8 | 0x6EB0 | size: 0x7
.obj str_mri_12_mri_00027550, local
	.string "mri_12"
.endobj str_mri_12_mri_00027550

# .rodata:0xF | 0x6EB7 | size: 0x1
.obj gap_03_00006EB7_rodata, global
.hidden gap_03_00006EB7_rodata
	.byte 0x00
.endobj gap_03_00006EB7_rodata

# .rodata:0x10 | 0x6EB8 | size: 0x9
.obj str_e_bero_2_mri_00027558, local
	.string "e_bero_2"
.endobj str_e_bero_2_mri_00027558

# .rodata:0x19 | 0x6EC1 | size: 0x3
.obj gap_03_00006EC1_rodata, global
.hidden gap_03_00006EC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006EC1_rodata

# .rodata:0x1C | 0x6EC4 | size: 0x7
.obj str_dokan1_mri_00027564, local
	.string "dokan1"
.endobj str_dokan1_mri_00027564

# .rodata:0x23 | 0x6ECB | size: 0x1
.obj gap_03_00006ECB_rodata, global
.hidden gap_03_00006ECB_rodata
	.byte 0x00
.endobj gap_03_00006ECB_rodata

# .rodata:0x24 | 0x6ECC | size: 0x7
.obj str_dokan2_mri_0002756c, local
	.string "dokan2"
.endobj str_dokan2_mri_0002756c

# .rodata:0x2B | 0x6ED3 | size: 0x1
.obj gap_03_00006ED3_rodata, global
.hidden gap_03_00006ED3_rodata
	.byte 0x00
.endobj gap_03_00006ED3_rodata

# .rodata:0x2C | 0x6ED4 | size: 0x13
.obj str_stg2_mri_e18_00_06_mri_00027574, local
	.string "stg2_mri_e18_00_06"
.endobj str_stg2_mri_e18_00_06_mri_00027574

# .rodata:0x3F | 0x6EE7 | size: 0x1
.obj gap_03_00006EE7_rodata, global
.hidden gap_03_00006EE7_rodata
	.byte 0x00
.endobj gap_03_00006EE7_rodata

# .rodata:0x40 | 0x6EE8 | size: 0x3
.obj str_me_mri_00027588, local
	.string "me"
.endobj str_me_mri_00027588

# .rodata:0x43 | 0x6EEB | size: 0x1
.obj gap_03_00006EEB_rodata, global
.hidden gap_03_00006EEB_rodata
	.byte 0x00
.endobj gap_03_00006EEB_rodata

# .rodata:0x44 | 0x6EEC | size: 0x13
.obj str_stg2_mri_e18_00_07_mri_0002758c, local
	.string "stg2_mri_e18_00_07"
.endobj str_stg2_mri_e18_00_07_mri_0002758c

# .rodata:0x57 | 0x6EFF | size: 0x1
.obj gap_03_00006EFF_rodata, global
.hidden gap_03_00006EFF_rodata
	.byte 0x00
.endobj gap_03_00006EFF_rodata

# .rodata:0x58 | 0x6F00 | size: 0x13
.obj str_stg2_mri_e18_00_08_mri_000275a0, local
	.string "stg2_mri_e18_00_08"
.endobj str_stg2_mri_e18_00_08_mri_000275a0

# .rodata:0x6B | 0x6F13 | size: 0x1
.obj gap_03_00006F13_rodata, global
.hidden gap_03_00006F13_rodata
	.byte 0x00
.endobj gap_03_00006F13_rodata

# .rodata:0x6C | 0x6F14 | size: 0x7
.obj str_ガイド_mri_000275b4, local
	.4byte 0x834B8343
	.byte 0x83, 0x68, 0x00
.endobj str_ガイド_mri_000275b4

# .rodata:0x73 | 0x6F1B | size: 0x1
.obj gap_03_00006F1B_rodata, global
.hidden gap_03_00006F1B_rodata
	.byte 0x00
.endobj gap_03_00006F1B_rodata

# .rodata:0x74 | 0x6F1C | size: 0x9
.obj str_ガイド妹_mri_000275bc, local
	.4byte 0x834B8343
	.4byte 0x83689685
	.byte 0x00
.endobj str_ガイド妹_mri_000275bc

# .rodata:0x7D | 0x6F25 | size: 0x3
.obj gap_03_00006F25_rodata, global
.hidden gap_03_00006F25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F25_rodata

# .rodata:0x80 | 0x6F28 | size: 0x9
.obj str_ライバル_mri_000275c8, local
	.4byte 0x83898343
	.4byte 0x836F838B
	.byte 0x00
.endobj str_ライバル_mri_000275c8

# .rodata:0x89 | 0x6F31 | size: 0x3
.obj gap_03_00006F31_rodata, global
.hidden gap_03_00006F31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F31_rodata

# .rodata:0x8C | 0x6F34 | size: 0xC
.obj str_A_f1_ueki01_mri_000275d4, local
	.string "A_f1_ueki01"
.endobj str_A_f1_ueki01_mri_000275d4

# .rodata:0x98 | 0x6F40 | size: 0xC
.obj str_S_f1_ueki01_mri_000275e0, local
	.string "S_f1_ueki01"
.endobj str_S_f1_ueki01_mri_000275e0

# .rodata:0xA4 | 0x6F4C | size: 0xC
.obj str_A_f1_ueki02_mri_000275ec, local
	.string "A_f1_ueki02"
.endobj str_A_f1_ueki02_mri_000275ec

# .rodata:0xB0 | 0x6F58 | size: 0xC
.obj str_S_f1_ueki02_mri_000275f8, local
	.string "S_f1_ueki02"
.endobj str_S_f1_ueki02_mri_000275f8

# .rodata:0xBC | 0x6F64 | size: 0xC
.obj str_A_f1_ueki03_mri_00027604, local
	.string "A_f1_ueki03"
.endobj str_A_f1_ueki03_mri_00027604

# .rodata:0xC8 | 0x6F70 | size: 0xC
.obj str_S_f1_ueki03_mri_00027610, local
	.string "S_f1_ueki03"
.endobj str_S_f1_ueki03_mri_00027610

# .rodata:0xD4 | 0x6F7C | size: 0xC
.obj str_kemuri_test_mri_0002761c, local
	.string "kemuri_test"
.endobj str_kemuri_test_mri_0002761c

# .rodata:0xE0 | 0x6F88 | size: 0xC
.obj str_capture_img_mri_00027628, local
	.string "capture_img"
.endobj str_capture_img_mri_00027628

# .rodata:0xEC | 0x6F94 | size: 0xC
.obj str_OFF_d_batan_mri_00027634, local
	.string "OFF_d_batan"
.endobj str_OFF_d_batan_mri_00027634

# .rodata:0xF8 | 0x6FA0 | size: 0xA
.obj str_offscreen_mri_00027640, local
	.string "offscreen"
.endobj str_offscreen_mri_00027640

# .rodata:0x102 | 0x6FAA | size: 0x2
.obj gap_03_00006FAA_rodata, global
.hidden gap_03_00006FAA_rodata
	.2byte 0x0000
.endobj gap_03_00006FAA_rodata

# .rodata:0x104 | 0x6FAC | size: 0x7
.obj str_S_hako_mri_0002764c, local
	.string "S_hako"
.endobj str_S_hako_mri_0002764c

# .rodata:0x10B | 0x6FB3 | size: 0x1
.obj gap_03_00006FB3_rodata, global
.hidden gap_03_00006FB3_rodata
	.byte 0x00
.endobj gap_03_00006FB3_rodata

# .rodata:0x10C | 0x6FB4 | size: 0x19
.obj str_SFX_OFF2_DOOR_GRID_S_mri_00027654, local
	.string "SFX_OFF2_DOOR_GRID_SHUT1"
.endobj str_SFX_OFF2_DOOR_GRID_S_mri_00027654

# .rodata:0x125 | 0x6FCD | size: 0x3
.obj gap_03_00006FCD_rodata, global
.hidden gap_03_00006FCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006FCD_rodata

# .rodata:0x128 | 0x6FD0 | size: 0x19
.obj str_SFX_STG2_DOOR_GRID_D_mri_00027670, local
	.string "SFX_STG2_DOOR_GRID_DOWN1"
.endobj str_SFX_STG2_DOOR_GRID_D_mri_00027670

# .rodata:0x141 | 0x6FE9 | size: 0x3
.obj gap_03_00006FE9_rodata, global
.hidden gap_03_00006FE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006FE9_rodata

# .rodata:0x144 | 0x6FEC | size: 0x4
.obj str_A_1_mri_0002768c, local
	.string "A_1"
.endobj str_A_1_mri_0002768c

# .rodata:0x148 | 0x6FF0 | size: 0x7
.obj str_A_hako_mri_00027690, local
	.string "A_hako"
.endobj str_A_hako_mri_00027690

# .rodata:0x14F | 0x6FF7 | size: 0x1
.obj gap_03_00006FF7_rodata, global
.hidden gap_03_00006FF7_rodata
	.byte 0x00
.endobj gap_03_00006FF7_rodata

# .rodata:0x150 | 0x6FF8 | size: 0xB
.obj str_OFF_d_saku_mri_00027698, local
	.string "OFF_d_saku"
.endobj str_OFF_d_saku_mri_00027698

# .rodata:0x15B | 0x7003 | size: 0x1
.obj gap_03_00007003_rodata, global
.hidden gap_03_00007003_rodata
	.byte 0x00
.endobj gap_03_00007003_rodata

# .rodata:0x15C | 0x7004 | size: 0x9
.obj str_S_dokan1_mri_000276a4, local
	.string "S_dokan1"
.endobj str_S_dokan1_mri_000276a4

# .rodata:0x165 | 0x700D | size: 0x3
.obj gap_03_0000700D_rodata, global
.hidden gap_03_0000700D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000700D_rodata

# .rodata:0x168 | 0x7010 | size: 0x9
.obj str_A_dokan1_mri_000276b0, local
	.string "A_dokan1"
.endobj str_A_dokan1_mri_000276b0

# .rodata:0x171 | 0x7019 | size: 0x3
.obj gap_03_00007019_rodata, global
.hidden gap_03_00007019_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007019_rodata

# .rodata:0x174 | 0x701C | size: 0x17
.obj str_SFX_OFF2_DOKAN_APPEA_mri_000276bc, local
	.string "SFX_OFF2_DOKAN_APPEAR1"
.endobj str_SFX_OFF2_DOKAN_APPEA_mri_000276bc

# .rodata:0x18B | 0x7033 | size: 0x1
.obj gap_03_00007033_rodata, global
.hidden gap_03_00007033_rodata
	.byte 0x00
.endobj gap_03_00007033_rodata

# .rodata:0x18C | 0x7034 | size: 0x17
.obj str_SFX_OFF2_DOKAN_APPEA_mri_000276d4, local
	.string "SFX_OFF2_DOKAN_APPEAR2"
.endobj str_SFX_OFF2_DOKAN_APPEA_mri_000276d4

# .rodata:0x1A3 | 0x704B | size: 0x1
.obj gap_03_0000704B_rodata, global
.hidden gap_03_0000704B_rodata
	.byte 0x00
.endobj gap_03_0000704B_rodata

# .rodata:0x1A4 | 0x704C | size: 0x4
.obj str_A_2_mri_000276ec, local
	.string "A_2"
.endobj str_A_2_mri_000276ec

# .rodata:0x1A8 | 0x7050 | size: 0xD
.obj str_第三勢力幹部_mri_000276f0, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x8AB29594
	.byte 0x00
.endobj str_第三勢力幹部_mri_000276f0

# .rodata:0x1B5 | 0x705D | size: 0x3
.obj gap_03_0000705D_rodata, global
.hidden gap_03_0000705D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000705D_rodata

# .rodata:0x1B8 | 0x7060 | size: 0xF
.obj str_第三勢力部下Ａ_mri_00027700, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x82, 0x60, 0x00
.endobj str_第三勢力部下Ａ_mri_00027700

# .rodata:0x1C7 | 0x706F | size: 0x1
.obj gap_03_0000706F_rodata, global
.hidden gap_03_0000706F_rodata
	.byte 0x00
.endobj gap_03_0000706F_rodata

# .rodata:0x1C8 | 0x7070 | size: 0xF
.obj str_第三勢力部下Ｂ_mri_00027710, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x82, 0x61, 0x00
.endobj str_第三勢力部下Ｂ_mri_00027710

# .rodata:0x1D7 | 0x707F | size: 0x1
.obj gap_03_0000707F_rodata, global
.hidden gap_03_0000707F_rodata
	.byte 0x00
.endobj gap_03_0000707F_rodata

# .rodata:0x1D8 | 0x7080 | size: 0x13
.obj str_stg2_mri_e18_00_01_mri_00027720, local
	.string "stg2_mri_e18_00_01"
.endobj str_stg2_mri_e18_00_01_mri_00027720

# .rodata:0x1EB | 0x7093 | size: 0x1
.obj gap_03_00007093_rodata, global
.hidden gap_03_00007093_rodata
	.byte 0x00
.endobj gap_03_00007093_rodata

# .rodata:0x1EC | 0x7094 | size: 0x12
.obj str_BGM_EVT_3RD_ENEMY_mri_00027734, local
	.string "BGM_EVT_3RD_ENEMY"
.endobj str_BGM_EVT_3RD_ENEMY_mri_00027734

# .rodata:0x1FE | 0x70A6 | size: 0x2
.obj gap_03_000070A6_rodata, global
.hidden gap_03_000070A6_rodata
	.2byte 0x0000
.endobj gap_03_000070A6_rodata

# .rodata:0x200 | 0x70A8 | size: 0x13
.obj str_stg2_mri_e18_00_02_mri_00027748, local
	.string "stg2_mri_e18_00_02"
.endobj str_stg2_mri_e18_00_02_mri_00027748

# .rodata:0x213 | 0x70BB | size: 0x1
.obj gap_03_000070BB_rodata, global
.hidden gap_03_000070BB_rodata
	.byte 0x00
.endobj gap_03_000070BB_rodata

# .rodata:0x214 | 0x70BC | size: 0x4
.obj str_R_1_mri_0002775c, local
	.string "R_1"
.endobj str_R_1_mri_0002775c

# .rodata:0x218 | 0x70C0 | size: 0x13
.obj str_SFX_STG2_3RD_FALL1_mri_00027760, local
	.string "SFX_STG2_3RD_FALL1"
.endobj str_SFX_STG2_3RD_FALL1_mri_00027760

# .rodata:0x22B | 0x70D3 | size: 0x1
.obj gap_03_000070D3_rodata, global
.hidden gap_03_000070D3_rodata
	.byte 0x00
.endobj gap_03_000070D3_rodata

# .rodata:0x22C | 0x70D4 | size: 0x4
.obj str_S_1_mri_00027774, local
	.string "S_1"
.endobj str_S_1_mri_00027774

# .rodata:0x230 | 0x70D8 | size: 0x16
.obj str_SFX_STG2_3RD_LANDING_mri_00027778, local
	.string "SFX_STG2_3RD_LANDING1"
.endobj str_SFX_STG2_3RD_LANDING_mri_00027778

# .rodata:0x246 | 0x70EE | size: 0x2
.obj gap_03_000070EE_rodata, global
.hidden gap_03_000070EE_rodata
	.2byte 0x0000
.endobj gap_03_000070EE_rodata

# .rodata:0x248 | 0x70F0 | size: 0x15
.obj str_SFX_STG2_KANBU_FALL1_mri_00027790, local
	.string "SFX_STG2_KANBU_FALL1"
.endobj str_SFX_STG2_KANBU_FALL1_mri_00027790

# .rodata:0x25D | 0x7105 | size: 0x3
.obj gap_03_00007105_rodata, global
.hidden gap_03_00007105_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007105_rodata

# .rodata:0x260 | 0x7108 | size: 0x18
.obj str_SFX_STG2_KANBU_LANDI_mri_000277a8, local
	.string "SFX_STG2_KANBU_LANDING1"
.endobj str_SFX_STG2_KANBU_LANDI_mri_000277a8

# .rodata:0x278 | 0x7120 | size: 0x13
.obj str_stg2_mri_e18_00_03_mri_000277c0, local
	.string "stg2_mri_e18_00_03"
.endobj str_stg2_mri_e18_00_03_mri_000277c0

# .rodata:0x28B | 0x7133 | size: 0x1
.obj gap_03_00007133_rodata, global
.hidden gap_03_00007133_rodata
	.byte 0x00
.endobj gap_03_00007133_rodata

# .rodata:0x28C | 0x7134 | size: 0x13
.obj str_stg2_mri_e18_00_04_mri_000277d4, local
	.string "stg2_mri_e18_00_04"
.endobj str_stg2_mri_e18_00_04_mri_000277d4

# .rodata:0x29F | 0x7147 | size: 0x1
.obj gap_03_00007147_rodata, global
.hidden gap_03_00007147_rodata
	.byte 0x00
.endobj gap_03_00007147_rodata

# .rodata:0x2A0 | 0x7148 | size: 0x13
.obj str_stg2_mri_e18_00_05_mri_000277e8, local
	.string "stg2_mri_e18_00_05"
.endobj str_stg2_mri_e18_00_05_mri_000277e8

# .rodata:0x2B3 | 0x715B | size: 0x1
.obj gap_03_0000715B_rodata, global
.hidden gap_03_0000715B_rodata
	.byte 0x00
.endobj gap_03_0000715B_rodata

# .rodata:0x2B4 | 0x715C | size: 0x13
.obj str_stg2_mri_e18_00_09_mri_000277fc, local
	.string "stg2_mri_e18_00_09"
.endobj str_stg2_mri_e18_00_09_mri_000277fc

# .rodata:0x2C7 | 0x716F | size: 0x1
.obj gap_03_0000716F_rodata, global
.hidden gap_03_0000716F_rodata
	.byte 0x00
.endobj gap_03_0000716F_rodata

# .rodata:0x2C8 | 0x7170 | size: 0x13
.obj str_stg2_mri_e18_00_12_mri_00027810, local
	.string "stg2_mri_e18_00_12"
.endobj str_stg2_mri_e18_00_12_mri_00027810

# .rodata:0x2DB | 0x7183 | size: 0x1
.obj gap_03_00007183_rodata, global
.hidden gap_03_00007183_rodata
	.byte 0x00
.endobj gap_03_00007183_rodata

# .rodata:0x2DC | 0x7184 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00027824, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00027824

# .rodata:0x2EA | 0x7192 | size: 0x2
.obj gap_03_00007192_rodata, global
.hidden gap_03_00007192_rodata
	.2byte 0x0000
.endobj gap_03_00007192_rodata

# .rodata:0x2EC | 0x7194 | size: 0xD
.obj str_S_sui_hikari_mri_00027834, local
	.string "S_sui_hikari"
.endobj str_S_sui_hikari_mri_00027834

# .rodata:0x2F9 | 0x71A1 | size: 0x3
.obj gap_03_000071A1_rodata, global
.hidden gap_03_000071A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000071A1_rodata

# .rodata:0x2FC | 0x71A4 | size: 0xC
.obj str_A_f2_rak_01_mri_00027844, local
	.string "A_f2_rak_01"
.endobj str_A_f2_rak_01_mri_00027844

# .rodata:0x308 | 0x71B0 | size: 0x13
.obj str_stg2_mri_e18_00_13_mri_00027850, local
	.string "stg2_mri_e18_00_13"
.endobj str_stg2_mri_e18_00_13_mri_00027850

# .rodata:0x31B | 0x71C3 | size: 0x1
.obj gap_03_000071C3_rodata, global
.hidden gap_03_000071C3_rodata
	.byte 0x00
.endobj gap_03_000071C3_rodata

# .rodata:0x31C | 0x71C4 | size: 0x13
.obj str_stg2_mri_e18_00_11_mri_00027864, local
	.string "stg2_mri_e18_00_11"
.endobj str_stg2_mri_e18_00_11_mri_00027864

# .rodata:0x32F | 0x71D7 | size: 0x1
.obj gap_03_000071D7_rodata, global
.hidden gap_03_000071D7_rodata
	.byte 0x00
.endobj gap_03_000071D7_rodata

# .rodata:0x330 | 0x71D8 | size: 0x17
.obj str_SFX_STG2_SWITCH_QUAK_mri_00027878, local
	.string "SFX_STG2_SWITCH_QUAKE1"
.endobj str_SFX_STG2_SWITCH_QUAK_mri_00027878

# .rodata:0x347 | 0x71EF | size: 0x1
.obj gap_03_000071EF_rodata, global
.hidden gap_03_000071EF_rodata
	.byte 0x00
.endobj gap_03_000071EF_rodata

# .rodata:0x348 | 0x71F0 | size: 0x13
.obj str_stg2_mri_e18_00_10_mri_00027890, local
	.string "stg2_mri_e18_00_10"
.endobj str_stg2_mri_e18_00_10_mri_00027890

# .rodata:0x35B | 0x7203 | size: 0x1
.obj gap_03_00007203_rodata, global
.hidden gap_03_00007203_rodata
	.byte 0x00
.endobj gap_03_00007203_rodata

# .rodata:0x35C | 0x7204 | size: 0x8
.obj str_mizu_01_mri_000278a4, local
	.string "mizu_01"
.endobj str_mizu_01_mri_000278a4

# .rodata:0x364 | 0x720C | size: 0x8
.obj str_mizu_02_mri_000278ac, local
	.string "mizu_02"
.endobj str_mizu_02_mri_000278ac

# .rodata:0x36C | 0x7214 | size: 0x7
.obj str_awa_01_mri_000278b4, local
	.string "awa_01"
.endobj str_awa_01_mri_000278b4

# .rodata:0x373 | 0x721B | size: 0x1
.obj gap_03_0000721B_rodata, global
.hidden gap_03_0000721B_rodata
	.byte 0x00
.endobj gap_03_0000721B_rodata

# .rodata:0x374 | 0x721C | size: 0x7
.obj str_awa_02_mri_000278bc, local
	.string "awa_02"
.endobj str_awa_02_mri_000278bc

# .rodata:0x37B | 0x7223 | size: 0x1
.obj gap_03_00007223_rodata, global
.hidden gap_03_00007223_rodata
	.byte 0x00
.endobj gap_03_00007223_rodata

# .rodata:0x37C | 0x7224 | size: 0xB
.obj str_sui_hikari_mri_000278c4, local
	.string "sui_hikari"
.endobj str_sui_hikari_mri_000278c4

# .rodata:0x387 | 0x722F | size: 0x1
.obj gap_03_0000722F_rodata, global
.hidden gap_03_0000722F_rodata
	.byte 0x00
.endobj gap_03_0000722F_rodata

# .rodata:0x388 | 0x7230 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_000278d0, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_000278d0

# .rodata:0x398 | 0x7240 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_000278e0, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_000278e0

# .rodata:0x3A6 | 0x724E | size: 0x2
.obj gap_03_0000724E_rodata, global
.hidden gap_03_0000724E_rodata
	.2byte 0x0000
.endobj gap_03_0000724E_rodata

# .rodata:0x3A8 | 0x7250 | size: 0xE
.obj str_ENV_STG2_MRI4_mri_000278f0, local
	.string "ENV_STG2_MRI4"
.endobj str_ENV_STG2_MRI4_mri_000278f0

# .rodata:0x3B6 | 0x725E | size: 0x2
.obj gap_03_0000725E_rodata, global
.hidden gap_03_0000725E_rodata
	.2byte 0x0000
.endobj gap_03_0000725E_rodata

# .rodata:0x3B8 | 0x7260 | size: 0x9
.obj str_punipuni_mri_00027900, local
	.string "punipuni"
.endobj str_punipuni_mri_00027900

# .rodata:0x3C1 | 0x7269 | size: 0x3
.obj gap_03_00007269_rodata, global
.hidden gap_03_00007269_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007269_rodata

# .rodata:0x3C4 | 0x726C | size: 0xA
.obj str_A_dai_mae_mri_0002790c, local
	.string "A_dai_mae"
.endobj str_A_dai_mae_mri_0002790c

# .rodata:0x3CE | 0x7276 | size: 0x2
.obj gap_03_00007276_rodata, global
.hidden gap_03_00007276_rodata
	.2byte 0x0000
.endobj gap_03_00007276_rodata

# .rodata:0x3D0 | 0x7278 | size: 0xA
.obj str_mobj_bf00_mri_00027918, local
	.string "mobj_bf00"
.endobj str_mobj_bf00_mri_00027918

# .rodata:0x3DA | 0x7282 | size: 0x2
.obj gap_03_00007282_rodata, global
.hidden gap_03_00007282_rodata
	.2byte 0x0000
.endobj gap_03_00007282_rodata

# .rodata:0x3DC | 0x7284 | size: 0x7
.obj str_switch_mri_00027924, local
	.string "switch"
.endobj str_switch_mri_00027924

# .rodata:0x3E3 | 0x728B | size: 0x1
.obj gap_03_0000728B_rodata, global
.hidden gap_03_0000728B_rodata
	.byte 0x00
.endobj gap_03_0000728B_rodata

# .rodata:0x3E4 | 0x728C | size: 0x8
.obj str_item_01_mri_0002792c, local
	.string "item_01"
.endobj str_item_01_mri_0002792c

# .rodata:0x3EC | 0x7294 | size: 0x10
.obj str_S_hako_saku_mae_mri_00027934, local
	.string "S_hako_saku_mae"
.endobj str_S_hako_saku_mae_mri_00027934

# .rodata:0x3FC | 0x72A4 | size: 0x4
.obj gap_03_000072A4_rodata, global
.hidden gap_03_000072A4_rodata
	.4byte 0x00000000
.endobj gap_03_000072A4_rodata

# 0x00033758..0x00035B28 | size: 0x23D0
.data
.balign 8

# .data:0x0 | 0x33758 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x33760 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x33764 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x33768 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3376C | size: 0x4
.obj gap_04_0003376C_data, global
.hidden gap_04_0003376C_data
	.4byte 0x00000000
.endobj gap_04_0003376C_data

# .data:0x18 | 0x33770 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x33778 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3377C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x33780 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x33788 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3378C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x33790 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x33794 | size: 0x4
.obj gap_04_00033794_data, global
.hidden gap_04_00033794_data
	.4byte 0x00000000
.endobj gap_04_00033794_data

# .data:0x40 | 0x33798 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x337A0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x337A4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x337A8 | size: 0x38
.obj bero_02_into_event, local
	.4byte 0x00020018
	.4byte 0xF84066B8
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte strange_statue
	.4byte 0x00020032
	.4byte 0xF84066B8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_02_into_event

# .data:0x88 | 0x337E0 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_w_bero_mri_00027548
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_12_mri_00027550
	.4byte str_e_bero_2_mri_00027558
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan1_mri_00027564
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_mri_0002756c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_mri_0002756c
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_02_into_event
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan1_mri_00027564
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

# .data:0x178 | 0x338D0 | size: 0x8
.obj guide_init, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_init

# .data:0x180 | 0x338D8 | size: 0x20
.obj guide_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_06_mri_00027574
	.4byte 0x00000000
	.4byte str_me_mri_00027588
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_talk

# .data:0x1A0 | 0x338F8 | size: 0x8
.obj sister_init, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_init

# .data:0x1A8 | 0x33900 | size: 0x20
.obj sister_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_07_mri_0002758c
	.4byte 0x00000000
	.4byte str_me_mri_00027588
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_talk

# .data:0x1C8 | 0x33920 | size: 0x8
.obj rival_init, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rival_init

# .data:0x1D0 | 0x33928 | size: 0x20
.obj rival_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_08_mri_000275a0
	.4byte 0x00000000
	.4byte str_me_mri_00027588
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rival_talk

# .data:0x1F0 | 0x33948 | size: 0x170
.obj npcEnt, local
	.4byte str_ガイド_mri_000275b4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte guide_init
	.4byte 0x00000000
	.4byte guide_talk
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
	.4byte str_ガイド妹_mri_000275bc
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte sister_init
	.4byte 0x00000000
	.4byte sister_talk
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
	.4byte str_ライバル_mri_000275c8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte rival_init
	.4byte 0x00000000
	.4byte rival_talk
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

# .data:0x360 | 0x33AB8 | size: 0x40
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_f1_ueki01_mri_000275d4
	.4byte str_S_f1_ueki01_mri_000275e0
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_f1_ueki02_mri_000275ec
	.4byte str_S_f1_ueki02_mri_000275f8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_f1_ueki03_mri_00027604
	.4byte str_S_f1_ueki03_mri_00027610
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x3A0 | 0x33AF8 | size: 0x198
.obj trap_position, local
	.4byte 0x0045FFEA
	.4byte 0x0046FFF7
	.4byte 0x0040FFF5
	.4byte 0x002EFFDE
	.4byte 0x0027FFD3
	.4byte 0x0038FFE1
	.4byte 0x0040FFF1
	.4byte 0x0027FFFA
	.4byte 0x0044FFE7
	.4byte 0x003EFFE4
	.4byte 0x001FFFED
	.4byte 0x0023FFF7
	.4byte 0x002DFFCF
	.4byte 0x003CFFF6
	.4byte 0x001EFFE9
	.4byte 0x002BFFF4
	.4byte 0x0046FFE4
	.4byte 0x001FFFE1
	.4byte 0x0019FFED
	.4byte 0x0015FFE6
	.4byte 0x003DFFF3
	.4byte 0x0037FFED
	.4byte 0x0039FFD3
	.4byte 0x002DFFF6
	.4byte 0x00300006
	.4byte 0x0034FFE9
	.4byte 0x003EFFD2
	.4byte 0x0038FFDA
	.4byte 0x001EFFDA
	.4byte 0x0025FFE2
	.4byte 0x0024FFFE
	.4byte 0x001CFFE3
	.4byte 0x001FFFD0
	.4byte 0x003BFFEB
	.4byte 0x0023FFF0
	.4byte 0x004DFFDF
	.4byte 0x0039FFD1
	.4byte 0x002EFFDA
	.4byte 0x0029FFE9
	.4byte 0x001FFFDB
	.4byte 0x0027FFD2
	.4byte 0x0034FFF1
	.4byte 0x0022FFD9
	.4byte 0x0044FFEA
	.4byte 0x003FFFFB
	.4byte 0x0043FFDC
	.4byte 0x002DFFE3
	.4byte 0x0031FFD0
	.4byte 0x004CFFDB
	.4byte 0x0024FFF2
	.4byte 0x0033FFC7
	.4byte 0x0011FFE3
	.4byte 0x0037FFF7
	.4byte 0x0049FFD8
	.4byte 0x003AFFFD
	.4byte 0x003CFFC3
	.4byte 0x0022FFD9
	.4byte 0x0045FFEE
	.4byte 0x0045FFDF
	.4byte 0x0031FFEB
	.4byte 0x0035FFF9
	.4byte 0x0037FFCC
	.4byte 0x0021FFEF
	.4byte 0x0033FFE1
	.4byte 0x0051FFF5
	.4byte 0x0030FFF7
	.4byte 0x0036FFCC
	.4byte 0x002FFFFF
	.4byte 0x003AFFE6
	.4byte 0x0042FFD3
	.4byte 0x001EFFE7
	.4byte 0x002DFFEE
	.4byte 0x002EFFE7
	.4byte 0x002BFFD2
	.4byte 0x0029FFF6
	.4byte 0x003DFFD4
	.4byte 0x0029FFE4
	.4byte 0x002BFFCD
	.4byte 0x0058FFE5
	.4byte 0x0032FFD8
	.4byte 0x0033FFDC
	.4byte 0x0032FFF7
	.4byte 0x0021FFCB
	.4byte 0x0026FFEB
	.4byte 0x001EFFD3
	.4byte 0x0029FFCE
	.4byte 0x0040FFD8
	.4byte 0x001FFFDF
	.4byte 0x0044FFF5
	.4byte 0x0043FFD0
	.4byte 0x003BFFDE
	.4byte 0x0041FFD8
	.4byte 0x0038FFF9
	.4byte 0x0045FFE1
	.4byte 0x002EFFD3
	.4byte 0x004CFFE6
	.4byte 0x0035FFE5
	.4byte 0x0041FFEE
	.4byte 0x001AFFF5
	.4byte 0x0044FFCB
	.4byte 0x0029FFDD
	.4byte 0x0031FFC6
.endobj trap_position

# .data:0x538 | 0x33C90 | size: 0x1E8
.obj trap_main, local
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mri_get16bitdata_18_text_4D0
	.4byte trap_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mri_get16bitdata_18_text_4D0
	.4byte trap_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8A
	.4byte 0x00000018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00A00000
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x00000027
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000275b4
	.4byte 0x00000027
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x00000071
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_000275bc
	.4byte 0x00000071
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバル_mri_000275c8
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000021
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trap_main

# .data:0x720 | 0x33E78 | size: 0xEC
.obj unk_evt_mri_0005c358, local
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mri_get16bitdata_18_text_4D0
	.4byte trap_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mri_get16bitdata_18_text_4D0
	.4byte trap_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8A
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00800000
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_mri_0005c358

# .data:0x80C | 0x33F64 | size: 0x208
.obj wana_kemuri, local
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0xFFFFFFEE
	.4byte 0x00000019
	.4byte 0x0000004C
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x00000046
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x00000017
	.4byte 0x00000017
	.4byte 0x0000004D
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x00000029
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x00000042
	.4byte 0x00000009
	.4byte 0x00000048
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x0000000E
	.4byte 0x00000046
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x00000067
	.4byte 0x00000002
	.4byte 0x0000004E
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_mri_0002761c
	.4byte 0x00000000
	.4byte 0x0000007C
	.4byte 0x0000000F
	.4byte 0x00000046
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wana_kemuri

# .data:0xA14 | 0x3416C | size: 0x36C
.obj wana_offscreen, local
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_mri_00027628
	.4byte str_OFF_d_batan_mri_00027634
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_mri_00027640
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_hako_mri_0002764c
	.4byte str_offscreen_mri_00027640
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte str_offscreen_mri_00027640
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF2_DOOR_GRID_S_mri_00027654
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000006D6
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_GRID_D_mri_00027670
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte wana_kemuri
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A9E
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_mri_00027628
	.4byte str_A_1_mri_0002768c
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_hako_mri_0002764c
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_mri_00027640
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_mri_0002764c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_mri_00027690
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_mri_00027628
	.4byte str_OFF_d_saku_mri_00027698
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_mri_00027640
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_dokan1_mri_000276a4
	.4byte str_offscreen_mri_00027640
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox
	.4byte str_offscreen_mri_00027640
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte set_depthPlaneOffset
	.4byte str_capture_img_mri_00027628
	.4byte 0xF24A6A80
	.4byte 0x0003005B
	.4byte evt_img_set_shadow
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_dokan1_mri_000276b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF2_DOKAN_APPEA_mri_000276bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF2_DOKAN_APPEA_mri_000276d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_mri_00027628
	.4byte str_A_2_mri_000276ec
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_dokan1_mri_000276a4
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00027628
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_mri_00027628
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_dokan1_mri_000276a4
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_mri_00027640
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_dokan1_mri_000276a4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokan1_mri_000276b0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wana_offscreen

# .data:0xD80 | 0x344D8 | size: 0xB30
.obj trap_event, local
	.4byte 0x0001000B
	.4byte 0xFAA2B58F
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x40000220
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x40000220
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x40000220
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000050
	.4byte 0x00000097
	.4byte 0x0000022B
	.4byte 0x00000050
	.4byte 0x00000038
	.4byte 0x0000000D
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte wana_offscreen
	.4byte 0x0001005E
	.4byte mri_guide_goryu_18_data_E6C
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000018
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00200000
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000275b4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_000275b4
	.4byte 0x40000620
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0000010E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0000000C
	.4byte 0x00000006
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000D
	.4byte 0x0000006E
	.4byte 0x00000146
	.4byte 0x0000000D
	.4byte 0x00000038
	.4byte 0x00000014
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_01_mri_00027720
	.4byte 0x00000000
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x000000E6
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_3RD_ENEMY_mri_00027734
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_02_mri_00027748
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x000000A4
	.4byte 0x00000270
	.4byte 0x00000032
	.4byte 0x00000038
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0000000A
	.4byte 0x000000B4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x0000005A
	.4byte 0x000000B4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x00000032
	.4byte 0x000000B4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte str_R_1_mri_0002775c
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_FALL1_mri_00027760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte str_S_1_mri_00027774
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_LANDING_mri_00027778
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte str_S_1_mri_00027774
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte str_R_1_mri_0002775c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_FALL1_mri_00027760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_3RD_LANDING_mri_00027778
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte str_S_1_mri_00027774
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte str_R_1_mri_0002775c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_FALL1_mri_00027790
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_KANBU_LANDI_mri_000277a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte str_S_1_mri_00027774
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A87
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000032
	.4byte 0x00000008
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x00000400
	.4byte 0x0002005B
	.4byte evt_npc_sound_data_reset
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0002005B
	.4byte evt_npc_sound_data_reset
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x0002005B
	.4byte evt_npc_sound_data_reset
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x00000079
	.4byte 0x000001C3
	.4byte 0x00000032
	.4byte 0x0000002B
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_03_mri_000277c0
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x00000097
	.4byte 0x00000224
	.4byte 0x00000032
	.4byte 0x00000038
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_04_mri_000277d4
	.4byte 0x00000000
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC6
	.4byte 0x00000097
	.4byte 0x00000224
	.4byte 0xFFFFFFC6
	.4byte 0x00000038
	.4byte 0x00000007
	.4byte 0x00000514
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力部下Ａ_mri_00027700
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFAC
	.4byte 0x00000042
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力部下Ｂ_mri_00027710
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFAC
	.4byte 0x00000042
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_第三勢力幹部_mri_000276f0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFAC
	.4byte 0x00000042
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000022
	.4byte 0x0000007A
	.4byte 0x00000186
	.4byte 0x00000022
	.4byte 0x00000038
	.4byte 0x0000000E
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_05_mri_000277e8
	.4byte 0x00000000
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド_mri_000275b4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x00000018
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000066
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x00000049
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFFFFFF97
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e18_00_09_mri_000277fc
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_12_mri_00027810
	.4byte 0x00000000
	.4byte str_ガイド_mri_000275b4
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00027824
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trap_event

# .data:0x18B0 | 0x35008 | size: 0x2E4
.obj trap_check, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFE7
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000046
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_puni_count_area_18_text_1A478
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFB
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFB
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C88
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xF84066B6
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte trap_event
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0002004D
	.4byte 0xFE363C89
	.4byte 0x00000400
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFFCE
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x0002001B
	.4byte 0xFE363C82
	.4byte 0xFFFFFF9C
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000046
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFB
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_set_trap_index_18_text_1A12C
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trap_check

# .data:0x1B94 | 0x352EC | size: 0x88
.obj punipuni_ball00_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00027834
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_setup_18_data_790
	.4byte 0x00020018
	.4byte 0xF84066B6
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0xFFFFFFC6
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00_init

# .data:0x1C1C | 0x35374 | size: 0xB4
.obj punipuni_ball00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84066B6
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemselect_18_data_7D0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84066B6
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0xFFFFFFC6
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemset_18_data_870
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF84066B6
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemremove_18_data_900
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00

# .data:0x1CD0 | 0x35428 | size: 0x2C
.obj breakyuka_init, local
	.4byte 0x00020018
	.4byte 0xF84066B7
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_01_mri_00027844
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj breakyuka_init

# .data:0x1CFC | 0x35454 | size: 0x20C
.obj breakyuka_main, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_01_mri_00027844
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_puni_all_fall_check_18_text_1A204
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000275b4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e18_00_13_mri_00027850
	.4byte 0x00000000
	.4byte str_ガイド_mri_000275b4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_000275b4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_000275bc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ライバル_mri_000275c8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_trap_index_18_text_1A0A8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00200000
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
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000006A
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00027824
	.4byte 0x00000002
	.4byte 0x00000001
.endobj breakyuka_main

# .data:0x1F08 | 0x35660 | size: 0xE0
.obj strange_statue, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFCE
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e18_00_11_mri_00027864
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj strange_statue

# .data:0x1FE8 | 0x35740 | size: 0xA4
.obj switch_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_SWITCH_QUAK_mri_00027878
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8F
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_mri_e18_00_10_mri_00027890
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000067
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_event

# .data:0x208C | 0x357E4 | size: 0x340
.obj mri_17_init_evt_18_data_357E4, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000011
	.4byte 0x00000000
	.4byte 0xFFFFFECB
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0xFFFFFF80
	.4byte 0x00000000
	.4byte 0x0000005E
	.4byte 0x00000007
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFECD
	.4byte 0xFFFFFEC9
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
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_000278a4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_000278ac
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_000278b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_000278bc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sui_hikari_mri_000278c4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_000278d0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_000278e0
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00027824
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI4_mri_000278f0
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_punipuni_mri_00027900
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte punipuni_ball00_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dai_mae_mri_0002790c
	.4byte 0x00000000
	.4byte punipuni_ball00
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte breakyuka_init
	.4byte 0x0008005B
	.4byte evt_mobj_breaking_floor
	.4byte str_mobj_bf00_mri_00027918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFDD
	.4byte 0x00000001
	.4byte breakyuka_main
	.4byte 0xF84066B7
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000067
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000001
	.4byte str_switch_mri_00027924
	.4byte 0x0000003C
	.4byte 0xFFFFFECB
	.4byte 0x00000035
	.4byte switch_event
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_mri_0002792c
	.4byte 0x0000007D
	.4byte 0x000000A8
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFFD4
	.4byte 0x00000010
	.4byte 0xF8407171
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000065
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hako_mri_0002764c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_mri_00027690
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dokan1_mri_000276a4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokan1_mri_000276b0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_batan_mri_00027634
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_saku_mri_00027698
	.4byte 0x0001005C
	.4byte trap_check
	.4byte 0x0002002F
	.4byte 0x00000066
	.4byte 0x00000069
	.4byte 0x0001005C
	.4byte trap_main
	.4byte 0x0002002F
	.4byte 0x0000006A
	.4byte 0x0000006B
	.4byte 0x0001005C
	.4byte unk_evt_mri_0005c358
	.4byte 0x00010029
	.4byte 0x0000006A
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_saku_mae_mri_00027934
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_17_init_evt_18_data_357E4

# .data:0x23CC | 0x35B24 | size: 0x4
.obj gap_04_00035B24_data, global
.hidden gap_04_00035B24_data
	.4byte 0x00000000
.endobj gap_04_00035B24_data
