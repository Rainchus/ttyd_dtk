.include "macros.inc"
.file "tik_19.o"

# 0x00005930..0x00005A14 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x5930 | size: 0x34
.fn bgm_start_wait, local
/* 00005930 000059F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005934 000059F8  7C 08 02 A6 */	mflr r0
/* 00005938 000059FC  38 60 00 01 */	li r3, 0x1
/* 0000593C 00005A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005940 00005A04  4B FF A8 09 */	bl psndBGMStartCheck
/* 00005944 00005A08  20 63 00 00 */	subfic r3, r3, 0x0
/* 00005948 00005A0C  38 00 00 02 */	li r0, 0x2
/* 0000594C 00005A10  7C 63 19 10 */	subfe r3, r3, r3
/* 00005950 00005A14  7C 03 18 38 */	and r3, r0, r3
/* 00005954 00005A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005958 00005A1C  7C 08 03 A6 */	mtlr r0
/* 0000595C 00005A20  38 21 00 10 */	addi r1, r1, 0x10
/* 00005960 00005A24  4E 80 00 20 */	blr
.endfn bgm_start_wait

# .text:0x34 | 0x5964 | size: 0xB0
.fn majin_callback, local
/* 00005964 00005A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005968 00005A2C  7C 08 02 A6 */	mflr r0
/* 0000596C 00005A30  3C 80 00 00 */	lis r4, str_box_tik_0000c29c@ha
/* 00005970 00005A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005974 00005A38  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005978 00005A3C  7C 7E 1B 78 */	mr r30, r3
/* 0000597C 00005A40  38 64 00 00 */	addi r3, r4, str_box_tik_0000c29c@l
/* 00005980 00005A44  4B FF A7 C9 */	bl mobjNameToPtr
/* 00005984 00005A48  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00005988 00005A4C  7C 7F 1B 78 */	mr r31, r3
/* 0000598C 00005A50  40 82 00 1C */	bne .L_000059A8
/* 00005990 00005A54  3C 80 00 00 */	lis r4, str_A_2_tik_0000c47c@ha
/* 00005994 00005A58  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00005998 00005A5C  38 84 00 00 */	addi r4, r4, str_A_2_tik_0000c47c@l
/* 0000599C 00005A60  38 A0 00 01 */	li r5, 0x1
/* 000059A0 00005A64  4B FF A7 A9 */	bl animPoseSetAnim
/* 000059A4 00005A68  48 00 00 5C */	b .L_00005A00
.L_000059A8:
/* 000059A8 00005A6C  2C 1E 00 05 */	cmpwi r30, 0x5
/* 000059AC 00005A70  40 82 00 38 */	bne .L_000059E4
/* 000059B0 00005A74  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 000059B4 00005A78  4B FF A7 95 */	bl animPoseGetLoopTimes
/* 000059B8 00005A7C  3C 60 00 00 */	lis r3, float_1_tik_0000c4f4@ha
/* 000059BC 00005A80  C0 03 00 00 */	lfs f0, float_1_tik_0000c4f4@l(r3)
/* 000059C0 00005A84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000059C4 00005A88  4C 41 13 82 */	cror eq, gt, eq
/* 000059C8 00005A8C  40 82 00 38 */	bne .L_00005A00
/* 000059CC 00005A90  3C 80 00 00 */	lis r4, str_A_2_tik_0000c47c@ha
/* 000059D0 00005A94  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 000059D4 00005A98  38 84 00 00 */	addi r4, r4, str_A_2_tik_0000c47c@l
/* 000059D8 00005A9C  38 A0 00 01 */	li r5, 0x1
/* 000059DC 00005AA0  4B FF A7 6D */	bl animPoseSetAnim
/* 000059E0 00005AA4  48 00 00 20 */	b .L_00005A00
.L_000059E4:
/* 000059E4 00005AA8  2C 1E 00 02 */	cmpwi r30, 0x2
/* 000059E8 00005AAC  40 82 00 18 */	bne .L_00005A00
/* 000059EC 00005AB0  3C 80 00 00 */	lis r4, str_S_1_tik_0000c4f8@ha
/* 000059F0 00005AB4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 000059F4 00005AB8  38 84 00 00 */	addi r4, r4, str_S_1_tik_0000c4f8@l
/* 000059F8 00005ABC  38 A0 00 01 */	li r5, 0x1
/* 000059FC 00005AC0  4B FF A7 4D */	bl animPoseSetAnim
.L_00005A00:
/* 00005A00 00005AC4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005A04 00005AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005A08 00005ACC  7C 08 03 A6 */	mtlr r0
/* 00005A0C 00005AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 00005A10 00005AD4  4E 80 00 20 */	blr
.endfn majin_callback

# 0x00004418..0x00004698 | size: 0x280
.rodata
.balign 8

# .rodata:0x0 | 0x4418 | size: 0x7
.obj str_s_bero_tik_0000c280, local
	.string "s_bero"
.endobj str_s_bero_tik_0000c280

# .rodata:0x7 | 0x441F | size: 0x1
.obj gap_03_0000441F_rodata, global
.hidden gap_03_0000441F_rodata
	.byte 0x00
.endobj gap_03_0000441F_rodata

# .rodata:0x8 | 0x4420 | size: 0x7
.obj str_tik_04_tik_0000c288, local
	.string "tik_04"
.endobj str_tik_04_tik_0000c288

# .rodata:0xF | 0x4427 | size: 0x1
.obj gap_03_00004427_rodata, global
.hidden gap_03_00004427_rodata
	.byte 0x00
.endobj gap_03_00004427_rodata

# .rodata:0x10 | 0x4428 | size: 0x9
.obj str_n_bero_5_tik_0000c290, local
	.string "n_bero_5"
.endobj str_n_bero_5_tik_0000c290

# .rodata:0x19 | 0x4431 | size: 0x3
.obj gap_03_00004431_rodata, global
.hidden gap_03_00004431_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004431_rodata

# .rodata:0x1C | 0x4434 | size: 0x4
.obj str_box_tik_0000c29c, local
	.string "box"
.endobj str_box_tik_0000c29c

# .rodata:0x20 | 0x4438 | size: 0xD
.obj str_mac_majin_01_tik_0000c2a0, local
	.string "mac_majin_01"
.endobj str_mac_majin_01_tik_0000c2a0

# .rodata:0x2D | 0x4445 | size: 0x3
.obj gap_03_00004445_rodata, global
.hidden gap_03_00004445_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004445_rodata

# .rodata:0x30 | 0x4448 | size: 0x19
.obj str_SFX_MOBJ_BLACKBOX_SW_tik_0000c2b0, local
	.string "SFX_MOBJ_BLACKBOX_SWING1"
.endobj str_SFX_MOBJ_BLACKBOX_SW_tik_0000c2b0

# .rodata:0x49 | 0x4461 | size: 0x3
.obj gap_03_00004461_rodata, global
.hidden gap_03_00004461_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004461_rodata

# .rodata:0x4C | 0x4464 | size: 0x4
.obj str_A_3_tik_0000c2cc, local
	.string "A_3"
.endobj str_A_3_tik_0000c2cc

# .rodata:0x50 | 0x4468 | size: 0xD
.obj str_mac_majin_02_tik_0000c2d0, local
	.string "mac_majin_02"
.endobj str_mac_majin_02_tik_0000c2d0

# .rodata:0x5D | 0x4475 | size: 0x3
.obj gap_03_00004475_rodata, global
.hidden gap_03_00004475_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004475_rodata

# .rodata:0x60 | 0x4478 | size: 0x6
.obj str_M_I_G_tik_0000c2e0, local
	.string "M_I_G"
.endobj str_M_I_G_tik_0000c2e0

# .rodata:0x66 | 0x447E | size: 0x2
.obj gap_03_0000447E_rodata, global
.hidden gap_03_0000447E_rodata
	.2byte 0x0000
.endobj gap_03_0000447E_rodata

# .rodata:0x68 | 0x4480 | size: 0x6
.obj str_M_S_1_tik_0000c2e8, local
	.string "M_S_1"
.endobj str_M_S_1_tik_0000c2e8

# .rodata:0x6E | 0x4486 | size: 0x2
.obj gap_03_00004486_rodata, global
.hidden gap_03_00004486_rodata
	.2byte 0x0000
.endobj gap_03_00004486_rodata

# .rodata:0x70 | 0x4488 | size: 0xD
.obj str_mac_majin_03_tik_0000c2f0, local
	.string "mac_majin_03"
.endobj str_mac_majin_03_tik_0000c2f0

# .rodata:0x7D | 0x4495 | size: 0x3
.obj gap_03_00004495_rodata, global
.hidden gap_03_00004495_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004495_rodata

# .rodata:0x80 | 0x4498 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_tik_0000c300, local
	.string "SFX_VOICE_MARIO_HAND_UP1_1"
.endobj str_SFX_VOICE_MARIO_HAND_tik_0000c300

# .rodata:0x9B | 0x44B3 | size: 0x1
.obj gap_03_000044B3_rodata, global
.hidden gap_03_000044B3_rodata
	.byte 0x00
.endobj gap_03_000044B3_rodata

# .rodata:0x9C | 0x44B4 | size: 0x6
.obj str_M_I_2_tik_0000c31c, local
	.string "M_I_2"
.endobj str_M_I_2_tik_0000c31c

# .rodata:0xA2 | 0x44BA | size: 0x2
.obj gap_03_000044BA_rodata, global
.hidden gap_03_000044BA_rodata
	.2byte 0x0000
.endobj gap_03_000044BA_rodata

# .rodata:0xA4 | 0x44BC | size: 0xD
.obj str_mac_majin_04_tik_0000c324, local
	.string "mac_majin_04"
.endobj str_mac_majin_04_tik_0000c324

# .rodata:0xB1 | 0x44C9 | size: 0x3
.obj gap_03_000044C9_rodata, global
.hidden gap_03_000044C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044C9_rodata

# .rodata:0xB4 | 0x44CC | size: 0xD
.obj str_mac_majin_05_tik_0000c334, local
	.string "mac_majin_05"
.endobj str_mac_majin_05_tik_0000c334

# .rodata:0xC1 | 0x44D9 | size: 0x3
.obj gap_03_000044D9_rodata, global
.hidden gap_03_000044D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044D9_rodata

# .rodata:0xC4 | 0x44DC | size: 0x9
.obj str_extparty_tik_0000c344, local
	.string "extparty"
.endobj str_extparty_tik_0000c344

# .rodata:0xCD | 0x44E5 | size: 0x3
.obj gap_03_000044E5_rodata, global
.hidden gap_03_000044E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044E5_rodata

# .rodata:0xD0 | 0x44E8 | size: 0xD
.obj str_mac_majin_06_tik_0000c350, local
	.string "mac_majin_06"
.endobj str_mac_majin_06_tik_0000c350

# .rodata:0xDD | 0x44F5 | size: 0x3
.obj gap_03_000044F5_rodata, global
.hidden gap_03_000044F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044F5_rodata

# .rodata:0xE0 | 0x44F8 | size: 0xD
.obj str_mac_majin_07_tik_0000c360, local
	.string "mac_majin_07"
.endobj str_mac_majin_07_tik_0000c360

# .rodata:0xED | 0x4505 | size: 0x3
.obj gap_03_00004505_rodata, global
.hidden gap_03_00004505_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004505_rodata

# .rodata:0xF0 | 0x4508 | size: 0x17
.obj str_SFX_VOICE_MARIO_THIN_tik_0000c370, local
	.string "SFX_VOICE_MARIO_THINK1"
.endobj str_SFX_VOICE_MARIO_THIN_tik_0000c370

# .rodata:0x107 | 0x451F | size: 0x1
.obj gap_03_0000451F_rodata, global
.hidden gap_03_0000451F_rodata
	.byte 0x00
.endobj gap_03_0000451F_rodata

# .rodata:0x108 | 0x4520 | size: 0x6
.obj str_M_I_Z_tik_0000c388, local
	.string "M_I_Z"
.endobj str_M_I_Z_tik_0000c388

# .rodata:0x10E | 0x4526 | size: 0x2
.obj gap_03_00004526_rodata, global
.hidden gap_03_00004526_rodata
	.2byte 0x0000
.endobj gap_03_00004526_rodata

# .rodata:0x110 | 0x4528 | size: 0xD
.obj str_mac_majin_08_tik_0000c390, local
	.string "mac_majin_08"
.endobj str_mac_majin_08_tik_0000c390

# .rodata:0x11D | 0x4535 | size: 0x3
.obj gap_03_00004535_rodata, global
.hidden gap_03_00004535_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004535_rodata

# .rodata:0x120 | 0x4538 | size: 0xD
.obj str_mac_majin_09_tik_0000c3a0, local
	.string "mac_majin_09"
.endobj str_mac_majin_09_tik_0000c3a0

# .rodata:0x12D | 0x4545 | size: 0x3
.obj gap_03_00004545_rodata, global
.hidden gap_03_00004545_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004545_rodata

# .rodata:0x130 | 0x4548 | size: 0xD
.obj str_mac_majin_10_tik_0000c3b0, local
	.string "mac_majin_10"
.endobj str_mac_majin_10_tik_0000c3b0

# .rodata:0x13D | 0x4555 | size: 0x3
.obj gap_03_00004555_rodata, global
.hidden gap_03_00004555_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004555_rodata

# .rodata:0x140 | 0x4558 | size: 0xD
.obj str_mac_majin_11_tik_0000c3c0, local
	.string "mac_majin_11"
.endobj str_mac_majin_11_tik_0000c3c0

# .rodata:0x14D | 0x4565 | size: 0x3
.obj gap_03_00004565_rodata, global
.hidden gap_03_00004565_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004565_rodata

# .rodata:0x150 | 0x4568 | size: 0xD
.obj str_mac_majin_12_tik_0000c3d0, local
	.string "mac_majin_12"
.endobj str_mac_majin_12_tik_0000c3d0

# .rodata:0x15D | 0x4575 | size: 0x3
.obj gap_03_00004575_rodata, global
.hidden gap_03_00004575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004575_rodata

# .rodata:0x160 | 0x4578 | size: 0x6
.obj str_M_I_N_tik_0000c3e0, local
	.string "M_I_N"
.endobj str_M_I_N_tik_0000c3e0

# .rodata:0x166 | 0x457E | size: 0x2
.obj gap_03_0000457E_rodata, global
.hidden gap_03_0000457E_rodata
	.2byte 0x0000
.endobj gap_03_0000457E_rodata

# .rodata:0x168 | 0x4580 | size: 0x13
.obj str_BGM_EVT_PERAMAJIN1_tik_0000c3e8, local
	.string "BGM_EVT_PERAMAJIN1"
.endobj str_BGM_EVT_PERAMAJIN1_tik_0000c3e8

# .rodata:0x17B | 0x4593 | size: 0x1
.obj gap_03_00004593_rodata, global
.hidden gap_03_00004593_rodata
	.byte 0x00
.endobj gap_03_00004593_rodata

# .rodata:0x17C | 0x4594 | size: 0x4
.obj str_img_tik_0000c3fc, local
	.string "img"
.endobj str_img_tik_0000c3fc

# .rodata:0x180 | 0x4598 | size: 0xC
.obj str_OFF_d_kusya_tik_0000c400, local
	.string "OFF_d_kusya"
.endobj str_OFF_d_kusya_tik_0000c400

# .rodata:0x18C | 0x45A4 | size: 0x1A
.obj str_SFX_OFF_PERAMAJIN_AP_tik_0000c40c, local
	.string "SFX_OFF_PERAMAJIN_APPEAR1"
.endobj str_SFX_OFF_PERAMAJIN_AP_tik_0000c40c

# .rodata:0x1A6 | 0x45BE | size: 0x2
.obj gap_03_000045BE_rodata, global
.hidden gap_03_000045BE_rodata
	.2byte 0x0000
.endobj gap_03_000045BE_rodata

# .rodata:0x1A8 | 0x45C0 | size: 0x18
.obj str_SFX_OFF_PERAMAJIN_CO_tik_0000c428, local
	.string "SFX_OFF_PERAMAJIN_COME1"
.endobj str_SFX_OFF_PERAMAJIN_CO_tik_0000c428

# .rodata:0x1C0 | 0x45D8 | size: 0x4
.obj str_A_1_tik_0000c440, local
	.string "A_1"
.endobj str_A_1_tik_0000c440

# .rodata:0x1C4 | 0x45DC | size: 0x1C
.obj str_SFX_EVT_PERAMAJIN_BL_tik_0000c444, local
	.string "SFX_EVT_PERAMAJIN_BLINKING1"
.endobj str_SFX_EVT_PERAMAJIN_BL_tik_0000c444

# .rodata:0x1E0 | 0x45F8 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_tik_0000c460, local
	.string "SFX_OFF_PERAMAJIN_GOOUT1"
.endobj str_SFX_OFF_PERAMAJIN_GO_tik_0000c460

# .rodata:0x1F9 | 0x4611 | size: 0x3
.obj gap_03_00004611_rodata, global
.hidden gap_03_00004611_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004611_rodata

# .rodata:0x1FC | 0x4614 | size: 0x4
.obj str_A_2_tik_0000c47c, local
	.string "A_2"
.endobj str_A_2_tik_0000c47c

# .rodata:0x200 | 0x4618 | size: 0x19
.obj str_SFX_OFF_PERAMAJIN_GO_tik_0000c480, local
	.string "SFX_OFF_PERAMAJIN_GOOUT2"
.endobj str_SFX_OFF_PERAMAJIN_GO_tik_0000c480

# .rodata:0x219 | 0x4631 | size: 0x3
.obj gap_03_00004631_rodata, global
.hidden gap_03_00004631_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004631_rodata

# .rodata:0x21C | 0x4634 | size: 0xD
.obj str_mac_majin_20_tik_0000c49c, local
	.string "mac_majin_20"
.endobj str_mac_majin_20_tik_0000c49c

# .rodata:0x229 | 0x4641 | size: 0x3
.obj gap_03_00004641_rodata, global
.hidden gap_03_00004641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004641_rodata

# .rodata:0x22C | 0x4644 | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000c4ac, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000c4ac

# .rodata:0x23A | 0x4652 | size: 0x2
.obj gap_03_00004652_rodata, global
.hidden gap_03_00004652_rodata
	.2byte 0x0000
.endobj gap_03_00004652_rodata

# .rodata:0x23C | 0x4654 | size: 0xE
.obj str_ENV_STG0_TIK1_tik_0000c4bc, local
	.string "ENV_STG0_TIK1"
.endobj str_ENV_STG0_TIK1_tik_0000c4bc

# .rodata:0x24A | 0x4662 | size: 0x2
.obj gap_03_00004662_rodata, global
.hidden gap_03_00004662_rodata
	.2byte 0x0000
.endobj gap_03_00004662_rodata

# .rodata:0x24C | 0x4664 | size: 0x6
.obj str_hikou_tik_0000c4cc, local
	.string "hikou"
.endobj str_hikou_tik_0000c4cc

# .rodata:0x252 | 0x466A | size: 0x2
.obj gap_03_0000466A_rodata, global
.hidden gap_03_0000466A_rodata
	.2byte 0x0000
.endobj gap_03_0000466A_rodata

# .rodata:0x254 | 0x466C | size: 0xB
.obj str_a_hikou_ue_tik_0000c4d4, local
	.string "a_hikou_ue"
.endobj str_a_hikou_ue_tik_0000c4d4

# .rodata:0x25F | 0x4677 | size: 0x1
.obj gap_03_00004677_rodata, global
.hidden gap_03_00004677_rodata
	.byte 0x00
.endobj gap_03_00004677_rodata

# .rodata:0x260 | 0x4678 | size: 0x9
.obj str_kururin1_tik_0000c4e0, local
	.string "kururin1"
.endobj str_kururin1_tik_0000c4e0

# .rodata:0x269 | 0x4681 | size: 0x3
.obj gap_03_00004681_rodata, global
.hidden gap_03_00004681_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004681_rodata

# .rodata:0x26C | 0x4684 | size: 0x6
.obj str_kakoi_tik_0000c4ec, local
	.string "kakoi"
.endobj str_kakoi_tik_0000c4ec
	.2byte 0x0000

# .rodata:0x274 | 0x468C | size: 0x4
.obj float_1_tik_0000c4f4, local
	.float 1
.endobj float_1_tik_0000c4f4

# .rodata:0x278 | 0x4690 | size: 0x4
.obj str_S_1_tik_0000c4f8, local
	.string "S_1"
.endobj str_S_1_tik_0000c4f8

# .rodata:0x27C | 0x4694 | size: 0x4
.obj gap_03_00004694_rodata, global
.hidden gap_03_00004694_rodata
	.4byte 0x00000000
.endobj gap_03_00004694_rodata

# 0x0001F3B8..0x000200A8 | size: 0xCF0
.data
.balign 8

# .data:0x0 | 0x1F3B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1F3C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1F3C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1F3C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1F3CC | size: 0x4
.obj gap_04_0001F3CC_data, global
.hidden gap_04_0001F3CC_data
	.4byte 0x00000000
.endobj gap_04_0001F3CC_data

# .data:0x18 | 0x1F3D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1F3D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1F3DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1F3E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1F3E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1F3EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1F3F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1F3F4 | size: 0x4
.obj gap_04_0001F3F4_data, global
.hidden gap_04_0001F3F4_data
	.4byte 0x00000000
.endobj gap_04_0001F3F4_data

# .data:0x40 | 0x1F3F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1F400 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1F404 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1F408 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_tik_0000c280
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tik_04_tik_0000c288
	.4byte str_n_bero_5_tik_0000c290
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

# .data:0xC8 | 0x1F480 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000021
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0xD0 | 0x1F488 | size: 0x79C
.obj evt_majin, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84060C9
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_tik_0000c29c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_01_tik_0000c2a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x0000014C
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
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
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000019
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000019
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLACKBOX_SW_tik_0000c2b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_mobj_set_anim
	.4byte str_box_tik_0000c29c
	.4byte str_A_3_tik_0000c2cc
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_tik_0000c29c
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
	.4byte str_mac_majin_02_tik_0000c2d0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_tik_0000c2e0
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tik_0000c2e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_03_tik_0000c2f0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_tik_0000c300
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tik_0000c31c
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tik_0000c2e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_04_tik_0000c324
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000001E
	.4byte 0x0000005B
	.4byte 0x0000011B
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_05_tik_0000c334
	.4byte 0x00000000
	.4byte str_extparty_tik_0000c344
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x0000014C
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_06_tik_0000c350
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_mac_majin_07_tik_0000c360
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_THIN_tik_0000c370
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_tik_0000c388
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tik_0000c2e8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_08_tik_0000c390
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_box_tik_0000c29c
	.4byte 0x00020032
	.4byte 0xF84060C9
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000021
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_tik_0000c29c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_09_tik_0000c3a0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_box_tik_0000c29c
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_tik_0000c29c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_10_tik_0000c3b0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_tik_0000c29c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_11_tik_0000c3c0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_box_tik_0000c29c
	.4byte 0x00000020
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
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000021
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_tik_0000c29c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_mac_majin_12_tik_0000c3d0
	.4byte majin_callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_tik_0000c3e0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000076
	.4byte 0x00000130
	.4byte 0x00000000
	.4byte 0x0000003E
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_majin

# .data:0x86C | 0x1FC24 | size: 0x3B4
.obj evt_majin2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_tik_0000c29c
	.4byte 0x0003005B
	.4byte evt_pouch_add_item
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_PERAMAJIN1_tik_0000c3e8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0001005B
	.4byte bgm_start_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_tik_0000c3fc
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_tik_0000c3fc
	.4byte str_OFF_d_kusya_tik_0000c400
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_tik_0000c3fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0005005B
	.4byte evt_img_set_virtual_point
	.4byte str_img_tik_0000c3fc
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xFFFFFF9C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_tik_0000c3fc
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tik_0000c3fc
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
	.4byte str_SFX_OFF_PERAMAJIN_AP_tik_0000c40c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_CO_tik_0000c428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tik_0000c3fc
	.4byte str_A_1_tik_0000c440
	.4byte 0x0002005B
	.4byte evt_mario_set_camid
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tik_0000c3fc
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
	.4byte plane_majin_lecture_init_24_data_2F2C0
	.4byte 0x0001005E
	.4byte plane_majin_lecture_24_data_2F3E4
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
	.4byte str_SFX_EVT_PERAMAJIN_BL_tik_0000c444
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
	.4byte str_SFX_OFF_PERAMAJIN_GO_tik_0000c460
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
	.4byte str_img_tik_0000c3fc
	.4byte str_A_2_tik_0000c47c
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tik_0000c3fc
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_PERAMAJIN_GO_tik_0000c480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_tik_0000c3fc
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_kusya_tik_0000c400
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_mac_majin_20_tik_0000c49c
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xF84060C8
	.4byte 0x00000001
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
.endobj evt_majin2

# .data:0xC20 | 0x1FFD8 | size: 0xD0
.obj tik_19_init_evt_24_data_1FFD8, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000c4ac
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK1_tik_0000c4bc
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
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000000
	.4byte str_hikou_tik_0000c4cc
	.4byte str_a_hikou_ue_tik_0000c4d4
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_kusya_tik_0000c400
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_tik_0000c29c
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xFFFFFFCE
	.4byte 0x00000003
	.4byte evt_majin
	.4byte evt_majin2
	.4byte 0xF84060C8
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_box_tik_0000c29c
	.4byte 0x00000040
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_tik_0000c4e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte str_kakoi_tik_0000c4ec
	.4byte 0x0000007D
	.4byte 0xF840715D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_19_init_evt_24_data_1FFD8
