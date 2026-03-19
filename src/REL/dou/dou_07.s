.include "macros.inc"
.file "dou_07.o"

# 0x000006F0..0x000007D4 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x6F0 | size: 0x34
.fn bgm_start_wait, local
/* 000006F0 000007B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000006F4 000007B8  7C 08 02 A6 */	mflr r0
/* 000006F8 000007BC  38 60 00 01 */	li r3, 0x1
/* 000006FC 000007C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000700 000007C4  4B FF F9 6D */	bl psndBGMStartCheck
/* 00000704 000007C8  20 63 00 00 */	subfic r3, r3, 0x0
/* 00000708 000007CC  38 00 00 02 */	li r0, 0x2
/* 0000070C 000007D0  7C 63 19 10 */	subfe r3, r3, r3
/* 00000710 000007D4  7C 03 18 38 */	and r3, r0, r3
/* 00000714 000007D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000718 000007DC  7C 08 03 A6 */	mtlr r0
/* 0000071C 000007E0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000720 000007E4  4E 80 00 20 */	blr
.endfn bgm_start_wait

# .text:0x34 | 0x724 | size: 0xB0
.fn majin_callback, local
/* 00000724 000007E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000728 000007EC  7C 08 02 A6 */	mflr r0
/* 0000072C 000007F0  3C 80 00 00 */	lis r4, str_mobj_box00_dou_00004834@ha
/* 00000730 000007F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000734 000007F8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000738 000007FC  7C 7E 1B 78 */	mr r30, r3
/* 0000073C 00000800  38 64 00 00 */	addi r3, r4, str_mobj_box00_dou_00004834@l
/* 00000740 00000804  4B FF F9 2D */	bl mobjNameToPtr
/* 00000744 00000808  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00000748 0000080C  7C 7F 1B 78 */	mr r31, r3
/* 0000074C 00000810  40 82 00 1C */	bne .L_00000768
/* 00000750 00000814  3C 80 00 00 */	lis r4, str_A_2_dou_00004a14@ha
/* 00000754 00000818  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00000758 0000081C  38 84 00 00 */	addi r4, r4, str_A_2_dou_00004a14@l
/* 0000075C 00000820  38 A0 00 01 */	li r5, 0x1
/* 00000760 00000824  4B FF F9 0D */	bl animPoseSetAnim
/* 00000764 00000828  48 00 00 5C */	b .L_000007C0
.L_00000768:
/* 00000768 0000082C  2C 1E 00 05 */	cmpwi r30, 0x5
/* 0000076C 00000830  40 82 00 38 */	bne .L_000007A4
/* 00000770 00000834  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00000774 00000838  4B FF F8 F9 */	bl animPoseGetLoopTimes
/* 00000778 0000083C  3C 60 00 00 */	lis r3, float_1_dou_00004aa4@ha
/* 0000077C 00000840  C0 03 00 00 */	lfs f0, float_1_dou_00004aa4@l(r3)
/* 00000780 00000844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000784 00000848  4C 41 13 82 */	cror eq, gt, eq
/* 00000788 0000084C  40 82 00 38 */	bne .L_000007C0
/* 0000078C 00000850  3C 80 00 00 */	lis r4, str_A_2_dou_00004a14@ha
/* 00000790 00000854  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00000794 00000858  38 84 00 00 */	addi r4, r4, str_A_2_dou_00004a14@l
/* 00000798 0000085C  38 A0 00 01 */	li r5, 0x1
/* 0000079C 00000860  4B FF F8 D1 */	bl animPoseSetAnim
/* 000007A0 00000864  48 00 00 20 */	b .L_000007C0
.L_000007A4:
/* 000007A4 00000868  2C 1E 00 02 */	cmpwi r30, 0x2
/* 000007A8 0000086C  40 82 00 18 */	bne .L_000007C0
/* 000007AC 00000870  3C 80 00 00 */	lis r4, str_S_1_dou_00004aa8@ha
/* 000007B0 00000874  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 000007B4 00000878  38 84 00 00 */	addi r4, r4, str_S_1_dou_00004aa8@l
/* 000007B8 0000087C  38 A0 00 01 */	li r5, 0x1
/* 000007BC 00000880  4B FF F8 B1 */	bl animPoseSetAnim
.L_000007C0:
/* 000007C0 00000884  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000007C4 00000888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000007C8 0000088C  7C 08 03 A6 */	mtlr r0
/* 000007CC 00000890  38 21 00 10 */	addi r1, r1, 0x10
/* 000007D0 00000894  4E 80 00 20 */	blr
.endfn majin_callback

# 0x00000B70..0x00000E20 | size: 0x2B0
.rodata
.balign 8

# .rodata:0x0 | 0xB70 | size: 0x3
.obj str_me_dou_00004800, local
	.string "me"
.endobj str_me_dou_00004800

# .rodata:0x3 | 0xB73 | size: 0x1
.obj gap_03_00000B73_rodata, global
.hidden gap_03_00000B73_rodata
	.byte 0x00
.endobj gap_03_00000B73_rodata

# .rodata:0x4 | 0xB74 | size: 0x9
.obj str_item_key_dou_00004804, local
	.string "item_key"
.endobj str_item_key_dou_00004804

# .rodata:0xD | 0xB7D | size: 0x3
.obj gap_03_00000B7D_rodata, global
.hidden gap_03_00000B7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B7D_rodata

# .rodata:0x10 | 0xB80 | size: 0x9
.obj str_エルモス_dou_00004810, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.byte 0x00
.endobj str_エルモス_dou_00004810

# .rodata:0x19 | 0xB89 | size: 0x3
.obj gap_03_00000B89_rodata, global
.hidden gap_03_00000B89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B89_rodata

# .rodata:0x1C | 0xB8C | size: 0x7
.obj str_s_bero_dou_0000481c, local
	.string "s_bero"
.endobj str_s_bero_dou_0000481c

# .rodata:0x23 | 0xB93 | size: 0x1
.obj gap_03_00000B93_rodata, global
.hidden gap_03_00000B93_rodata
	.byte 0x00
.endobj gap_03_00000B93_rodata

# .rodata:0x24 | 0xB94 | size: 0x7
.obj str_dou_08_dou_00004824, local
	.string "dou_08"
.endobj str_dou_08_dou_00004824

# .rodata:0x2B | 0xB9B | size: 0x1
.obj gap_03_00000B9B_rodata, global
.hidden gap_03_00000B9B_rodata
	.byte 0x00
.endobj gap_03_00000B9B_rodata

# .rodata:0x2C | 0xB9C | size: 0x7
.obj str_n_bero_dou_0000482c, local
	.string "n_bero"
.endobj str_n_bero_dou_0000482c

# .rodata:0x33 | 0xBA3 | size: 0x1
.obj gap_03_00000BA3_rodata, global
.hidden gap_03_00000BA3_rodata
	.byte 0x00
.endobj gap_03_00000BA3_rodata

# .rodata:0x34 | 0xBA4 | size: 0xB
.obj str_mobj_box00_dou_00004834, local
	.string "mobj_box00"
.endobj str_mobj_box00_dou_00004834

# .rodata:0x3F | 0xBAF | size: 0x1
.obj gap_03_00000BAF_rodata, global
.hidden gap_03_00000BAF_rodata
	.byte 0x00
.endobj gap_03_00000BAF_rodata

# .rodata:0x40 | 0xBB0 | size: 0x13
.obj str_stg1_gon_majin4_08_dou_00004840, local
	.string "stg1_gon_majin4_08"
.endobj str_stg1_gon_majin4_08_dou_00004840

# .rodata:0x53 | 0xBC3 | size: 0x1
.obj gap_03_00000BC3_rodata, global
.hidden gap_03_00000BC3_rodata
	.byte 0x00
.endobj gap_03_00000BC3_rodata

# .rodata:0x54 | 0xBC4 | size: 0x13
.obj str_stg1_gon_majin4_09_dou_00004854, local
	.string "stg1_gon_majin4_09"
.endobj str_stg1_gon_majin4_09_dou_00004854

# .rodata:0x67 | 0xBD7 | size: 0x1
.obj gap_03_00000BD7_rodata, global
.hidden gap_03_00000BD7_rodata
	.byte 0x00
.endobj gap_03_00000BD7_rodata

# .rodata:0x68 | 0xBD8 | size: 0x13
.obj str_stg1_gon_majin4_10_dou_00004868, local
	.string "stg1_gon_majin4_10"
.endobj str_stg1_gon_majin4_10_dou_00004868

# .rodata:0x7B | 0xBEB | size: 0x1
.obj gap_03_00000BEB_rodata, global
.hidden gap_03_00000BEB_rodata
	.byte 0x00
.endobj gap_03_00000BEB_rodata

# .rodata:0x7C | 0xBEC | size: 0x13
.obj str_stg1_gon_majin4_11_dou_0000487c, local
	.string "stg1_gon_majin4_11"
.endobj str_stg1_gon_majin4_11_dou_0000487c

# .rodata:0x8F | 0xBFF | size: 0x1
.obj gap_03_00000BFF_rodata, global
.hidden gap_03_00000BFF_rodata
	.byte 0x00
.endobj gap_03_00000BFF_rodata

# .rodata:0x90 | 0xC00 | size: 0x6
.obj str_M_I_N_dou_00004890, local
	.string "M_I_N"
.endobj str_M_I_N_dou_00004890

# .rodata:0x96 | 0xC06 | size: 0x2
.obj gap_03_00000C06_rodata, global
.hidden gap_03_00000C06_rodata
	.2byte 0x0000
.endobj gap_03_00000C06_rodata

# .rodata:0x98 | 0xC08 | size: 0x13
.obj str_stg1_gon_majin4_01_dou_00004898, local
	.string "stg1_gon_majin4_01"
.endobj str_stg1_gon_majin4_01_dou_00004898

# .rodata:0xAB | 0xC1B | size: 0x1
.obj gap_03_00000C1B_rodata, global
.hidden gap_03_00000C1B_rodata
	.byte 0x00
.endobj gap_03_00000C1B_rodata

# .rodata:0xAC | 0xC1C | size: 0x19
.obj str_SFX_MOBJ_BLACKBOX_SW_dou_000048ac, local
	.string "SFX_MOBJ_BLACKBOX_SWING1"
.endobj str_SFX_MOBJ_BLACKBOX_SW_dou_000048ac

# .rodata:0xC5 | 0xC35 | size: 0x3
.obj gap_03_00000C35_rodata, global
.hidden gap_03_00000C35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C35_rodata

# .rodata:0xC8 | 0xC38 | size: 0x4
.obj str_A_3_dou_000048c8, local
	.string "A_3"
.endobj str_A_3_dou_000048c8

# .rodata:0xCC | 0xC3C | size: 0x13
.obj str_stg1_gon_majin4_02_dou_000048cc, local
	.string "stg1_gon_majin4_02"
.endobj str_stg1_gon_majin4_02_dou_000048cc

# .rodata:0xDF | 0xC4F | size: 0x1
.obj gap_03_00000C4F_rodata, global
.hidden gap_03_00000C4F_rodata
	.byte 0x00
.endobj gap_03_00000C4F_rodata

# .rodata:0xE0 | 0xC50 | size: 0x6
.obj str_M_I_2_dou_000048e0, local
	.string "M_I_2"
.endobj str_M_I_2_dou_000048e0

# .rodata:0xE6 | 0xC56 | size: 0x2
.obj gap_03_00000C56_rodata, global
.hidden gap_03_00000C56_rodata
	.2byte 0x0000
.endobj gap_03_00000C56_rodata

# .rodata:0xE8 | 0xC58 | size: 0x6
.obj str_M_S_1_dou_000048e8, local
	.string "M_S_1"
.endobj str_M_S_1_dou_000048e8

# .rodata:0xEE | 0xC5E | size: 0x2
.obj gap_03_00000C5E_rodata, global
.hidden gap_03_00000C5E_rodata
	.2byte 0x0000
.endobj gap_03_00000C5E_rodata

# .rodata:0xF0 | 0xC60 | size: 0x13
.obj str_stg1_gon_majin4_03_dou_000048f0, local
	.string "stg1_gon_majin4_03"
.endobj str_stg1_gon_majin4_03_dou_000048f0

# .rodata:0x103 | 0xC73 | size: 0x1
.obj gap_03_00000C73_rodata, global
.hidden gap_03_00000C73_rodata
	.byte 0x00
.endobj gap_03_00000C73_rodata

# .rodata:0x104 | 0xC74 | size: 0x6
.obj str_M_N_2_dou_00004904, local
	.string "M_N_2"
.endobj str_M_N_2_dou_00004904

# .rodata:0x10A | 0xC7A | size: 0x2
.obj gap_03_00000C7A_rodata, global
.hidden gap_03_00000C7A_rodata
	.2byte 0x0000
.endobj gap_03_00000C7A_rodata

# .rodata:0x10C | 0xC7C | size: 0x13
.obj str_stg1_gon_majin4_04_dou_0000490c, local
	.string "stg1_gon_majin4_04"
.endobj str_stg1_gon_majin4_04_dou_0000490c

# .rodata:0x11F | 0xC8F | size: 0x1
.obj gap_03_00000C8F_rodata, global
.hidden gap_03_00000C8F_rodata
	.byte 0x00
.endobj gap_03_00000C8F_rodata

# .rodata:0x120 | 0xC90 | size: 0x13
.obj str_stg1_gon_majin4_05_dou_00004920, local
	.string "stg1_gon_majin4_05"
.endobj str_stg1_gon_majin4_05_dou_00004920

# .rodata:0x133 | 0xCA3 | size: 0x1
.obj gap_03_00000CA3_rodata, global
.hidden gap_03_00000CA3_rodata
	.byte 0x00
.endobj gap_03_00000CA3_rodata

# .rodata:0x134 | 0xCA4 | size: 0x13
.obj str_stg1_gon_majin4_06_dou_00004934, local
	.string "stg1_gon_majin4_06"
.endobj str_stg1_gon_majin4_06_dou_00004934

# .rodata:0x147 | 0xCB7 | size: 0x1
.obj gap_03_00000CB7_rodata, global
.hidden gap_03_00000CB7_rodata
	.byte 0x00
.endobj gap_03_00000CB7_rodata

# .rodata:0x148 | 0xCB8 | size: 0x13
.obj str_stg1_gon_majin4_07_dou_00004948, local
	.string "stg1_gon_majin4_07"
.endobj str_stg1_gon_majin4_07_dou_00004948

# .rodata:0x15B | 0xCCB | size: 0x1
.obj gap_03_00000CCB_rodata, global
.hidden gap_03_00000CCB_rodata
	.byte 0x00
.endobj gap_03_00000CCB_rodata

# .rodata:0x15C | 0xCCC | size: 0x17
.obj str_SFX_STG5_ELMOS_APPEA_dou_0000495c, local
	.string "SFX_STG5_ELMOS_APPEAR1"
.endobj str_SFX_STG5_ELMOS_APPEA_dou_0000495c

# .rodata:0x173 | 0xCE3 | size: 0x1
.obj gap_03_00000CE3_rodata, global
.hidden gap_03_00000CE3_rodata
	.byte 0x00
.endobj gap_03_00000CE3_rodata

# .rodata:0x174 | 0xCE4 | size: 0x13
.obj str_BGM_EVT_PERAMAJIN1_dou_00004974, local
	.string "BGM_EVT_PERAMAJIN1"
.endobj str_BGM_EVT_PERAMAJIN1_dou_00004974

# .rodata:0x187 | 0xCF7 | size: 0x1
.obj gap_03_00000CF7_rodata, global
.hidden gap_03_00000CF7_rodata
	.byte 0x00
.endobj gap_03_00000CF7_rodata

# .rodata:0x188 | 0xCF8 | size: 0x9
.obj str_s02_moku_dou_00004988, local
	.string "s02_moku"
.endobj str_s02_moku_dou_00004988

# .rodata:0x191 | 0xD01 | size: 0x3
.obj gap_03_00000D01_rodata, global
.hidden gap_03_00000D01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D01_rodata

# .rodata:0x194 | 0xD04 | size: 0xC
.obj str_OFF_d_kusya_dou_00004994, local
	.string "OFF_d_kusya"
.endobj str_OFF_d_kusya_dou_00004994

# .rodata:0x1A0 | 0xD10 | size: 0x4
.obj str_img_dou_000049a0, local
	.string "img"
.endobj str_img_dou_000049a0

# .rodata:0x1A4 | 0xD14 | size: 0x1A
.obj str_SFX_OFF_PERAMAJIN_AP_dou_000049a4, local
	.string "SFX_OFF_PERAMAJIN_APPEAR1"
.endobj str_SFX_OFF_PERAMAJIN_AP_dou_000049a4

# .rodata:0x1BE | 0xD2E | size: 0x2
.obj gap_03_00000D2E_rodata, global
.hidden gap_03_00000D2E_rodata
	.2byte 0x0000
.endobj gap_03_00000D2E_rodata

# .rodata:0x1C0 | 0xD30 | size: 0x18
.obj str_SFX_OFF_PERAMAJIN_CO_dou_000049c0, local
	.string "SFX_OFF_PERAMAJIN_COME1"
.endobj str_SFX_OFF_PERAMAJIN_CO_dou_000049c0

# .rodata:0x1D8 | 0xD48 | size: 0x4
.obj str_A_1_dou_000049d8, local
	.string "A_1"
.endobj str_A_1_dou_000049d8

# .rodata:0x1DC | 0xD4C | size: 0x1C
.obj str_SFX_EVT_PERAMAJIN_BL_dou_000049dc, local
	.string "SFX_EVT_PERAMAJIN_BLINKING1"
.endobj str_SFX_EVT_PERAMAJIN_BL_dou_000049dc

# .rodata:0x1F8 | 0xD68 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_dou_000049f8, local
	.string "SFX_OFF_PERAMAJIN_GOOUT1"
.endobj str_SFX_OFF_PERAMAJIN_GO_dou_000049f8

# .rodata:0x211 | 0xD81 | size: 0x3
.obj gap_03_00000D81_rodata, global
.hidden gap_03_00000D81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D81_rodata

# .rodata:0x214 | 0xD84 | size: 0x4
.obj str_A_2_dou_00004a14, local
	.string "A_2"
.endobj str_A_2_dou_00004a14

# .rodata:0x218 | 0xD88 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_dou_00004a18, local
	.string "SFX_OFF_PERAMAJIN_GOOUT2"
.endobj str_SFX_OFF_PERAMAJIN_GO_dou_00004a18

# .rodata:0x231 | 0xDA1 | size: 0x3
.obj gap_03_00000DA1_rodata, global
.hidden gap_03_00000DA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000DA1_rodata

# .rodata:0x234 | 0xDA4 | size: 0x13
.obj str_stg1_gon_majin4_19_dou_00004a34, local
	.string "stg1_gon_majin4_19"
.endobj str_stg1_gon_majin4_19_dou_00004a34

# .rodata:0x247 | 0xDB7 | size: 0x1
.obj gap_03_00000DB7_rodata, global
.hidden gap_03_00000DB7_rodata
	.byte 0x00
.endobj gap_03_00000DB7_rodata

# .rodata:0x248 | 0xDB8 | size: 0xE
.obj str_BGM_STG5_DOU1_dou_00004a48, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_00004a48

# .rodata:0x256 | 0xDC6 | size: 0x2
.obj gap_03_00000DC6_rodata, global
.hidden gap_03_00000DC6_rodata
	.2byte 0x0000
.endobj gap_03_00000DC6_rodata

# .rodata:0x258 | 0xDC8 | size: 0xE
.obj str_ENV_STG5_DOU7_dou_00004a58, local
	.string "ENV_STG5_DOU7"
.endobj str_ENV_STG5_DOU7_dou_00004a58

# .rodata:0x266 | 0xDD6 | size: 0x2
.obj gap_03_00000DD6_rodata, global
.hidden gap_03_00000DD6_rodata
	.2byte 0x0000
.endobj gap_03_00000DD6_rodata

# .rodata:0x268 | 0xDD8 | size: 0x11
.obj str_S_Ship_Change_01_dou_00004a68, local
	.string "S_Ship_Change_01"
.endobj str_S_Ship_Change_01_dou_00004a68

# .rodata:0x279 | 0xDE9 | size: 0x3
.obj gap_03_00000DE9_rodata, global
.hidden gap_03_00000DE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000DE9_rodata

# .rodata:0x27C | 0xDEC | size: 0xF
.obj str_Ship_Change_01_dou_00004a7c, local
	.string "Ship_Change_01"
.endobj str_Ship_Change_01_dou_00004a7c

# .rodata:0x28B | 0xDFB | size: 0x1
.obj gap_03_00000DFB_rodata, global
.hidden gap_03_00000DFB_rodata
	.byte 0x00
.endobj gap_03_00000DFB_rodata

# .rodata:0x28C | 0xDFC | size: 0x5
.obj str_moku_dou_00004a8c, local
	.string "moku"
.endobj str_moku_dou_00004a8c

# .rodata:0x291 | 0xE01 | size: 0x3
.obj gap_03_00000E01_rodata, global
.hidden gap_03_00000E01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E01_rodata

# .rodata:0x294 | 0xE04 | size: 0x5
.obj str_nami_dou_00004a94, local
	.string "nami"
.endobj str_nami_dou_00004a94

# .rodata:0x299 | 0xE09 | size: 0x3
.obj gap_03_00000E09_rodata, global
.hidden gap_03_00000E09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E09_rodata

# .rodata:0x29C | 0xE0C | size: 0x8
.obj str_item_00_dou_00004a9c, local
	.string "item_00"
.endobj str_item_00_dou_00004a9c

# .rodata:0x2A4 | 0xE14 | size: 0x4
.obj float_1_dou_00004aa4, local
	.float 1
.endobj float_1_dou_00004aa4

# .rodata:0x2A8 | 0xE18 | size: 0x4
.obj str_S_1_dou_00004aa8, local
	.string "S_1"
.endobj str_S_1_dou_00004aa8

# .rodata:0x2AC | 0xE1C | size: 0x4
.obj gap_03_00000E1C_rodata, global
.hidden gap_03_00000E1C_rodata
	.4byte 0x00000000
.endobj gap_03_00000E1C_rodata

# 0x000049A8..0x00005890 | size: 0xEE8
.data
.balign 8

# .data:0x0 | 0x49A8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x49B0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x49B4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x49B8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x49BC | size: 0x4
.obj gap_04_000049BC_data, global
.hidden gap_04_000049BC_data
	.4byte 0x00000000
.endobj gap_04_000049BC_data

# .data:0x18 | 0x49C0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x49C8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x49CC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x49D0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x49D8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x49DC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x49E0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x49E4 | size: 0x4
.obj gap_04_000049E4_data, global
.hidden gap_04_000049E4_data
	.4byte 0x00000000
.endobj gap_04_000049E4_data

# .data:0x40 | 0x49E8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x49F0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x49F4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x49F8 | size: 0x8
.obj erumosu_regl, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_regl

# .data:0x58 | 0x4A00 | size: 0x70
.obj erumosu_dead, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_dou_00004800
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xF840672D
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte enemy_event_dead_event
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000096
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_key_dou_00004804
	.4byte 0x00000024
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000D
	.4byte 0xF840672B
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_dead

# .data:0xC8 | 0x4A70 | size: 0xB8
.obj npcEnt, local
	.4byte str_エルモス_dou_00004810
	.4byte 0x00000608
	.4byte 0x00000000
	.4byte bubble_init_event
	.4byte bubble_move_event
	.4byte 0x00000000
	.4byte erumosu_dead
	.4byte bubble_find_event
	.4byte bubble_lost_event
	.4byte bubble_return_event
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42C80000
	.4byte 0xC0C00000
	.4byte 0xC2140000
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x43480000
	.4byte 0x43960000
	.4byte 0x447A0000
	.4byte 0x43B40000
	.4byte 0x0000000F
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

# .data:0x180 | 0x4B28 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_dou_0000481c
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_08_dou_00004824
	.4byte str_n_bero_dou_0000482c
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

# .data:0x1F8 | 0x4BA0 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000024
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0x200 | 0x4BA8 | size: 0xAC
.obj apper_elmos, local
	.4byte 0x00020032
	.4byte 0xF840672C
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモス_dou_00004810
	.4byte 0x00000064
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFDB
	.4byte 0x0006005B
	.4byte evt_npc_set_color
	.4byte str_エルモス_dou_00004810
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_npc_set_color
	.4byte str_エルモス_dou_00004810
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj apper_elmos

# .data:0x2AC | 0x4C54 | size: 0x630
.obj peramajin_before, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000F6
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_dou_00004834
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000024
	.4byte 0xFE363C8A
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_08_dou_00004840
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_mobj_box00_dou_00004834
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_09_dou_00004854
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_10_dou_00004868
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_mobj_box00_dou_00004834
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000023
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xF24BBA80
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_11_dou_0000487c
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_dou_00004890
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFDF
	.4byte 0x0000005C
	.4byte 0x0000019C
	.4byte 0xFFFFFFDF
	.4byte 0x00000024
	.4byte 0x0000005C
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000024
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_dou_00004834
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_01_dou_00004898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLACKBOX_SW_dou_000048ac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_mobj_set_anim
	.4byte str_mobj_box00_dou_00004834
	.4byte str_A_3_dou_000048c8
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_dou_00004834
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_02_dou_000048cc
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_dou_000048e0
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_000048e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_03_dou_000048f0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_dou_00004904
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_000048e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_04_dou_0000490c
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_dou_000048e0
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_000048e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_05_dou_00004920
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_dou_000048e0
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_000048e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_06_dou_00004934
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_dou_00004904
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_000048e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_majin4_07_dou_00004948
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_APPEA_dou_0000495c
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte apper_elmos
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_mobj_box00_dou_00004834
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F6
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peramajin_before

# .data:0x8DC | 0x5284 | size: 0x4A4
.obj peramajin_after, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_dou_00004834
	.4byte 0x0003005B
	.4byte evt_pouch_add_item
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_PERAMAJIN1_dou_00004974
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0001005B
	.4byte bgm_start_wait
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x00010005
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_s02_moku_dou_00004988
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_s02_moku_dou_00004988
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_kusya_dou_00004994
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_dou_000049a0
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_dou_000049a0
	.4byte str_OFF_d_kusya_dou_00004994
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_dou_000049a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0005005B
	.4byte evt_img_set_virtual_point
	.4byte str_img_dou_000049a0
	.4byte 0xFFFFFFDF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_dou_000049a0
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_dou_000049a0
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_AP_dou_000049a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_CO_dou_000049c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_dou_000049a0
	.4byte str_A_1_dou_000049d8
	.4byte 0x0002005B
	.4byte evt_mario_set_camid
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_dou_000049a0
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_s02_moku_dou_00004988
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte lect_cam_save
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte ship_majin_lecture_init_5_data_1BA60
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ship_majin_lecture_5_data_1BB5C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
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
	.4byte str_SFX_EVT_PERAMAJIN_BL_dou_000049dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_init_camid
	.4byte 0x0002005B
	.4byte lect_cam_load
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_dou_000049f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_dou_000049a0
	.4byte str_A_2_dou_00004a14
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_dou_000049a0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_dou_00004a18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_dou_000049a0
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_kusya_dou_00004994
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
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
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_majin4_19_dou_00004a34
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F7
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peramajin_after

# .data:0xD80 | 0x5728 | size: 0x164
.obj dou_07_init_evt_5_data_5728, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_00004a48
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU7_dou_00004a58
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
	.4byte 0x00020018
	.4byte 0xF840672D
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change_01_dou_00004a68
	.4byte str_Ship_Change_01_dou_00004a7c
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_moku_dou_00004a8c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_dou_00004a94
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_dou_00004834
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFEE
	.4byte 0x00000038
	.4byte 0x00000003
	.4byte peramajin_before
	.4byte peramajin_after
	.4byte 0xF8406724
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_dou_00004a9c
	.4byte 0x0000010E
	.4byte 0xFFFFFFB5
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFF1
	.4byte 0x00000010
	.4byte 0xF8406729
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840672C
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840672D
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte apper_elmos
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840672D
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_key_dou_00004804
	.4byte 0x00000024
	.4byte 0x00000064
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFDB
	.4byte 0x0000000E
	.4byte 0xF840672B
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_07_init_evt_5_data_5728

# .data:0xEE4 | 0x588C | size: 0x4
.obj gap_04_0000588C_data, global
.hidden gap_04_0000588C_data
	.4byte 0x00000000
.endobj gap_04_0000588C_data
