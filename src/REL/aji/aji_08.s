.include "macros.inc"
.file "aji_08.o"

# 0x000023E4..0x000024D4 | size: 0xF0
.text
.balign 4

# .text:0x0 | 0x23E4 | size: 0x9C
.fn slit_chk, local
/* 000023E4 000024A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000023E8 000024AC  7C 08 02 A6 */	mflr r0
/* 000023EC 000024B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000023F0 000024B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000023F4 000024B8  7C 7F 1B 78 */	mr r31, r3
/* 000023F8 000024BC  48 00 3E 45 */	bl marioGetPtr
/* 000023FC 000024C0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00002400 000024C4  54 00 02 D7 */	rlwinm. r0, r0, 0, 11, 11
/* 00002404 000024C8  41 82 00 64 */	beq .L_00002468
/* 00002408 000024CC  3C 80 00 00 */	lis r4, float_neg200_aji_00012e90@ha
/* 0000240C 000024D0  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 00002410 000024D4  C0 04 00 00 */	lfs f0, float_neg200_aji_00012e90@l(r4)
/* 00002414 000024D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00002418 000024DC  41 80 00 14 */	blt .L_0000242C
/* 0000241C 000024E0  3C 80 00 00 */	lis r4, float_300_aji_00012e94@ha
/* 00002420 000024E4  C0 04 00 00 */	lfs f0, float_300_aji_00012e94@l(r4)
/* 00002424 000024E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00002428 000024EC  40 81 00 40 */	ble .L_00002468
.L_0000242C:
/* 0000242C 000024F0  3C 80 00 00 */	lis r4, float_169_aji_00012e98@ha
/* 00002430 000024F4  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 00002434 000024F8  C0 04 00 00 */	lfs f0, float_169_aji_00012e98@l(r4)
/* 00002438 000024FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000243C 00002500  40 80 00 2C */	bge .L_00002468
/* 00002440 00002504  3C 60 00 00 */	lis r3, float_160_aji_00012e9c@ha
/* 00002444 00002508  C0 03 00 00 */	lfs f0, float_160_aji_00012e9c@l(r3)
/* 00002448 0000250C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000244C 00002510  40 81 00 1C */	ble .L_00002468
/* 00002450 00002514  38 60 00 04 */	li r3, 0x4
/* 00002454 00002518  48 00 3D E9 */	bl camCtrlOff
/* 00002458 0000251C  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 0000245C 00002520  48 00 3D E1 */	bl evtStopID
/* 00002460 00002524  38 60 00 02 */	li r3, 0x2
/* 00002464 00002528  48 00 00 08 */	b .L_0000246C
.L_00002468:
/* 00002468 0000252C  38 60 00 00 */	li r3, 0x0
.L_0000246C:
/* 0000246C 00002530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002470 00002534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00002474 00002538  7C 08 03 A6 */	mtlr r0
/* 00002478 0000253C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000247C 00002540  4E 80 00 20 */	blr
.endfn slit_chk

# .text:0x9C | 0x2480 | size: 0x54
.fn camAtY, local
/* 00002480 00002544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002484 00002548  7C 08 02 A6 */	mflr r0
/* 00002488 0000254C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000248C 00002550  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00002490 00002554  7C 7E 1B 78 */	mr r30, r3
/* 00002494 00002558  38 60 00 04 */	li r3, 0x4
/* 00002498 0000255C  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 0000249C 00002560  48 00 3D A1 */	bl camGetPtr
/* 000024A0 00002564  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 000024A4 00002568  7F C3 F3 78 */	mr r3, r30
/* 000024A8 0000256C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000024AC 00002570  FC 00 00 1E */	fctiwz f0, f0
/* 000024B0 00002574  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000024B4 00002578  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000024B8 0000257C  48 00 3D 85 */	bl evtSetValue
/* 000024BC 00002580  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000024C0 00002584  38 60 00 02 */	li r3, 0x2
/* 000024C4 00002588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000024C8 0000258C  7C 08 03 A6 */	mtlr r0
/* 000024CC 00002590  38 21 00 20 */	addi r1, r1, 0x20
/* 000024D0 00002594  4E 80 00 20 */	blr
.endfn camAtY

# 0x00001F20..0x00002038 | size: 0x118
.rodata
.balign 8

# .rodata:0x0 | 0x1F20 | size: 0xA
.obj str_S_door1_2_aji_00012d88, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00012d88

# .rodata:0xA | 0x1F2A | size: 0x2
.obj gap_03_00001F2A_rodata, global
.hidden gap_03_00001F2A_rodata
	.2byte 0x0000
.endobj gap_03_00001F2A_rodata

# .rodata:0xC | 0x1F2C | size: 0xA
.obj str_S_door1_1_aji_00012d94, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00012d94

# .rodata:0x16 | 0x1F36 | size: 0x2
.obj gap_03_00001F36_rodata, global
.hidden gap_03_00001F36_rodata
	.2byte 0x0000
.endobj gap_03_00001F36_rodata

# .rodata:0x18 | 0x1F38 | size: 0x7
.obj str_aji_06_aji_00012da0, local
	.string "aji_06"
.endobj str_aji_06_aji_00012da0

# .rodata:0x1F | 0x1F3F | size: 0x1
.obj gap_03_00001F3F_rodata, global
.hidden gap_03_00001F3F_rodata
	.byte 0x00
.endobj gap_03_00001F3F_rodata

# .rodata:0x20 | 0x1F40 | size: 0x6
.obj str_tenjo_aji_00012da8, local
	.string "tenjo"
.endobj str_tenjo_aji_00012da8

# .rodata:0x26 | 0x1F46 | size: 0x2
.obj gap_03_00001F46_rodata, global
.hidden gap_03_00001F46_rodata
	.2byte 0x0000
.endobj gap_03_00001F46_rodata

# .rodata:0x28 | 0x1F48 | size: 0x7
.obj str_aji_07_aji_00012db0, local
	.string "aji_07"
.endobj str_aji_07_aji_00012db0

# .rodata:0x2F | 0x1F4F | size: 0x1
.obj gap_03_00001F4F_rodata, global
.hidden gap_03_00001F4F_rodata
	.byte 0x00
.endobj gap_03_00001F4F_rodata

# .rodata:0x30 | 0x1F50 | size: 0x7
.obj str_aji_09_aji_00012db8, local
	.string "aji_09"
.endobj str_aji_09_aji_00012db8

# .rodata:0x37 | 0x1F57 | size: 0x1
.obj gap_03_00001F57_rodata, global
.hidden gap_03_00001F57_rodata
	.byte 0x00
.endobj gap_03_00001F57_rodata

# .rodata:0x38 | 0x1F58 | size: 0x9
.obj str_s_bero_1_aji_00012dc0, local
	.string "s_bero_1"
.endobj str_s_bero_1_aji_00012dc0

# .rodata:0x41 | 0x1F61 | size: 0x3
.obj gap_03_00001F61_rodata, global
.hidden gap_03_00001F61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F61_rodata

# .rodata:0x44 | 0x1F64 | size: 0x7
.obj str_aji_01_aji_00012dcc, local
	.string "aji_01"
.endobj str_aji_01_aji_00012dcc

# .rodata:0x4B | 0x1F6B | size: 0x1
.obj gap_03_00001F6B_rodata, global
.hidden gap_03_00001F6B_rodata
	.byte 0x00
.endobj gap_03_00001F6B_rodata

# .rodata:0x4C | 0x1F6C | size: 0x9
.obj str_n_bero_3_aji_00012dd4, local
	.string "n_bero_3"
.endobj str_n_bero_3_aji_00012dd4

# .rodata:0x55 | 0x1F75 | size: 0x3
.obj gap_03_00001F75_rodata, global
.hidden gap_03_00001F75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F75_rodata

# .rodata:0x58 | 0x1F78 | size: 0x9
.obj str_s_bero_2_aji_00012de0, local
	.string "s_bero_2"
.endobj str_s_bero_2_aji_00012de0

# .rodata:0x61 | 0x1F81 | size: 0x3
.obj gap_03_00001F81_rodata, global
.hidden gap_03_00001F81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F81_rodata

# .rodata:0x64 | 0x1F84 | size: 0x9
.obj str_s_bero_3_aji_00012dec, local
	.string "s_bero_3"
.endobj str_s_bero_3_aji_00012dec

# .rodata:0x6D | 0x1F8D | size: 0x3
.obj gap_03_00001F8D_rodata, global
.hidden gap_03_00001F8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F8D_rodata

# .rodata:0x70 | 0x1F90 | size: 0x9
.obj str_s_bero_4_aji_00012df8, local
	.string "s_bero_4"
.endobj str_s_bero_4_aji_00012df8

# .rodata:0x79 | 0x1F99 | size: 0x3
.obj gap_03_00001F99_rodata, global
.hidden gap_03_00001F99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F99_rodata

# .rodata:0x7C | 0x1F9C | size: 0x7
.obj str_S_heya_aji_00012e04, local
	.string "S_heya"
.endobj str_S_heya_aji_00012e04

# .rodata:0x83 | 0x1FA3 | size: 0x1
.obj gap_03_00001FA3_rodata, global
.hidden gap_03_00001FA3_rodata
	.byte 0x00
.endobj gap_03_00001FA3_rodata

# .rodata:0x84 | 0x1FA4 | size: 0x9
.obj str_S_tenura_aji_00012e0c, local
	.string "S_tenura"
.endobj str_S_tenura_aji_00012e0c

# .rodata:0x8D | 0x1FAD | size: 0x3
.obj gap_03_00001FAD_rodata, global
.hidden gap_03_00001FAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FAD_rodata

# .rodata:0x90 | 0x1FB0 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00012e18, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00012e18

# .rodata:0x9E | 0x1FBE | size: 0x2
.obj gap_03_00001FBE_rodata, global
.hidden gap_03_00001FBE_rodata
	.2byte 0x0000
.endobj gap_03_00001FBE_rodata

# .rodata:0xA0 | 0x1FC0 | size: 0xE
.obj str_ENV_STG7_AJI2_aji_00012e28, local
	.string "ENV_STG7_AJI2"
.endobj str_ENV_STG7_AJI2_aji_00012e28

# .rodata:0xAE | 0x1FCE | size: 0x2
.obj gap_03_00001FCE_rodata, global
.hidden gap_03_00001FCE_rodata
	.2byte 0x0000
.endobj gap_03_00001FCE_rodata

# .rodata:0xB0 | 0x1FD0 | size: 0x5
.obj str_bari_aji_00012e38, local
	.string "bari"
.endobj str_bari_aji_00012e38

# .rodata:0xB5 | 0x1FD5 | size: 0x3
.obj gap_03_00001FD5_rodata, global
.hidden gap_03_00001FD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FD5_rodata

# .rodata:0xB8 | 0x1FD8 | size: 0x5
.obj str_awa1_aji_00012e40, local
	.string "awa1"
.endobj str_awa1_aji_00012e40

# .rodata:0xBD | 0x1FDD | size: 0x3
.obj gap_03_00001FDD_rodata, global
.hidden gap_03_00001FDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FDD_rodata

# .rodata:0xC0 | 0x1FE0 | size: 0x5
.obj str_awa2_aji_00012e48, local
	.string "awa2"
.endobj str_awa2_aji_00012e48

# .rodata:0xC5 | 0x1FE5 | size: 0x3
.obj gap_03_00001FE5_rodata, global
.hidden gap_03_00001FE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FE5_rodata

# .rodata:0xC8 | 0x1FE8 | size: 0x7
.obj str_item00_aji_00012e50, local
	.string "item00"
.endobj str_item00_aji_00012e50

# .rodata:0xCF | 0x1FEF | size: 0x1
.obj gap_03_00001FEF_rodata, global
.hidden gap_03_00001FEF_rodata
	.byte 0x00
.endobj gap_03_00001FEF_rodata

# .rodata:0xD0 | 0x1FF0 | size: 0x6
.obj str_S_ita_aji_00012e58, local
	.string "S_ita"
.endobj str_S_ita_aji_00012e58

# .rodata:0xD6 | 0x1FF6 | size: 0x2
.obj gap_03_00001FF6_rodata, global
.hidden gap_03_00001FF6_rodata
	.2byte 0x0000
.endobj gap_03_00001FF6_rodata

# .rodata:0xD8 | 0x1FF8 | size: 0x1B
.obj str_SFX_STG7_AMB_CEILING_aji_00012e60, local
	.string "SFX_STG7_AMB_CEILING_MOVE1"
.endobj str_SFX_STG7_AMB_CEILING_aji_00012e60

# .rodata:0xF3 | 0x2013 | size: 0x1
.obj gap_03_00002013_rodata, global
.hidden gap_03_00002013_rodata
	.byte 0x00
.endobj gap_03_00002013_rodata

# .rodata:0xF4 | 0x2014 | size: 0x11
.obj str_軍団ザコ魔法使い_aji_00012e7c, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.4byte 0x96829640
	.4byte 0x8E6782A2
	.byte 0x00
.endobj str_軍団ザコ魔法使い_aji_00012e7c
	.byte 0x00, 0x00, 0x00

# .rodata:0x108 | 0x2028 | size: 0x4
.obj float_neg200_aji_00012e90, local
	.float -200
.endobj float_neg200_aji_00012e90

# .rodata:0x10C | 0x202C | size: 0x4
.obj float_300_aji_00012e94, local
	.float 300
.endobj float_300_aji_00012e94

# .rodata:0x110 | 0x2030 | size: 0x4
.obj float_169_aji_00012e98, local
	.float 169
.endobj float_169_aji_00012e98

# .rodata:0x114 | 0x2034 | size: 0x4
.obj float_160_aji_00012e9c, local
	.float 160
.endobj float_160_aji_00012e9c

# 0x00011760..0x00011DA0 | size: 0x640
.data
.balign 8

# .data:0x0 | 0x11760 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11768 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1176C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11770 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11774 | size: 0x4
.obj gap_04_00011774_data, global
.hidden gap_04_00011774_data
	.4byte 0x00000000
.endobj gap_04_00011774_data

# .data:0x18 | 0x11778 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11780 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11784 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11788 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11790 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11794 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11798 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1179C | size: 0x4
.obj gap_04_0001179C_data, global
.hidden gap_04_0001179C_data
	.4byte 0x00000000
.endobj gap_04_0001179C_data

# .data:0x40 | 0x117A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x117A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x117AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x117B0 | size: 0x58
.obj s_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00012d88
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00012d94
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_open

# .data:0xA8 | 0x11808 | size: 0x58
.obj s_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00012d88
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00012d94
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_close

# .data:0x100 | 0x11860 | size: 0x3C
.obj evt_slit0, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_06_aji_00012da0
	.4byte str_tenjo_aji_00012da8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_slit0

# .data:0x13C | 0x1189C | size: 0x3C
.obj evt_slit1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_07_aji_00012db0
	.4byte str_tenjo_aji_00012da8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_slit1

# .data:0x178 | 0x118D8 | size: 0x3C
.obj evt_slit2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_09_aji_00012db8
	.4byte str_tenjo_aji_00012da8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_slit2

# .data:0x1B4 | 0x11914 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_s_bero_1_aji_00012dc0
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00012dcc
	.4byte str_n_bero_3_aji_00012dd4
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
	.4byte str_s_bero_2_aji_00012de0
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_slit0
	.4byte str_aji_06_aji_00012da0
	.4byte str_tenjo_aji_00012da8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_s_bero_3_aji_00012dec
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_slit1
	.4byte str_aji_07_aji_00012db0
	.4byte str_tenjo_aji_00012da8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_s_bero_4_aji_00012df8
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_slit2
	.4byte str_aji_09_aji_00012db8
	.4byte str_tenjo_aji_00012da8
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

# .data:0x2E0 | 0x11A40 | size: 0x110
.obj heya_tenura_onoff, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_heya_aji_00012e04
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tenura_aji_00012e0c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte camAtY
	.4byte 0xFE363C81
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_heya_aji_00012e04
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_tenura_aji_00012e0c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_heya_aji_00012e04
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tenura_aji_00012e0c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj heya_tenura_onoff

# .data:0x3F0 | 0x11B50 | size: 0x250
.obj aji_08_init_evt_2_data_11B50, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00012e18
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI2_aji_00012e28
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
	.4byte 0x0002005D
	.4byte heya_tenura_onoff
	.4byte 0xFE363C80
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte slit_chk
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_bari_aji_00012e38
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa1_aji_00012e40
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa2_aji_00012e48
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_aji_00012e50
	.4byte 0x0000007D
	.4byte 0xFFFFFC31
	.4byte 0x000000AA
	.4byte 0x0000004B
	.4byte 0x00000010
	.4byte 0xF84071A2
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ita_aji_00012e58
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_AMB_CEILING_aji_00012e60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF9C
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ita_aji_00012e58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ita_aji_00012e58
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_AMB_CEILING_aji_00012e60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0xFFFFFF9C
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ita_aji_00012e58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ魔法使い_aji_00012e7c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_08_init_evt_2_data_11B50
