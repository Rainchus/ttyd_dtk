.include "macros.inc"
.file "gra_04.o"

# 0x00000470..0x000004B8 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x470 | size: 0x48
.fn unk_gra_00000534, local
/* 00000470 00000534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000474 00000538  7C 08 02 A6 */	mflr r0
/* 00000478 0000053C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000047C 00000540  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000480 00000544  7C 7E 1B 78 */	mr r30, r3
/* 00000484 00000548  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000488 0000054C  48 00 00 89 */	bl unk_800a1748
/* 0000048C 00000550  7C 60 00 34 */	cntlzw r0, r3
/* 00000490 00000554  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000494 00000558  54 05 D9 7E */	srwi r5, r0, 5
/* 00000498 0000055C  7F C3 F3 78 */	mr r3, r30
/* 0000049C 00000560  48 00 00 75 */	bl evtSetValue
/* 000004A0 00000564  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000004A4 00000568  38 60 00 02 */	li r3, 0x2
/* 000004A8 0000056C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000004AC 00000570  7C 08 03 A6 */	mtlr r0
/* 000004B0 00000574  38 21 00 10 */	addi r1, r1, 0x10
/* 000004B4 00000578  4E 80 00 20 */	blr
.endfn unk_gra_00000534

# 0x000005B8..0x000006A8 | size: 0xF0
.rodata
.balign 8

# .rodata:0x0 | 0x5B8 | size: 0x15
.obj str_ロール解除できません_gra_00001a78, local
	.4byte 0x838D815B
	.4byte 0x838B89F0
	.4byte 0x8F9C82C5
	.4byte 0x82AB82DC
	.4byte 0x82B982F1
	.byte 0x00
.endobj str_ロール解除できません_gra_00001a78

# .rodata:0x15 | 0x5CD | size: 0x3
.obj gap_03_000005CD_rodata, global
.hidden gap_03_000005CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005CD_rodata

# .rodata:0x18 | 0x5D0 | size: 0x7
.obj str_e_bero_gra_00001a90, local
	.string "e_bero"
.endobj str_e_bero_gra_00001a90

# .rodata:0x1F | 0x5D7 | size: 0x1
.obj gap_03_000005D7_rodata, global
.hidden gap_03_000005D7_rodata
	.byte 0x00
.endobj gap_03_000005D7_rodata

# .rodata:0x20 | 0x5D8 | size: 0x7
.obj str_gra_03_gra_00001a98, local
	.string "gra_03"
.endobj str_gra_03_gra_00001a98

# .rodata:0x27 | 0x5DF | size: 0x1
.obj gap_03_000005DF_rodata, global
.hidden gap_03_000005DF_rodata
	.byte 0x00
.endobj gap_03_000005DF_rodata

# .rodata:0x28 | 0x5E0 | size: 0x7
.obj str_w_bero_gra_00001aa0, local
	.string "w_bero"
.endobj str_w_bero_gra_00001aa0

# .rodata:0x2F | 0x5E7 | size: 0x1
.obj gap_03_000005E7_rodata, global
.hidden gap_03_000005E7_rodata
	.byte 0x00
.endobj gap_03_000005E7_rodata

# .rodata:0x30 | 0x5E8 | size: 0x9
.obj str_w_bero_1_gra_00001aa8, local
	.string "w_bero_1"
.endobj str_w_bero_1_gra_00001aa8

# .rodata:0x39 | 0x5F1 | size: 0x3
.obj gap_03_000005F1_rodata, global
.hidden gap_03_000005F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005F1_rodata

# .rodata:0x3C | 0x5F4 | size: 0x7
.obj str_gra_04_gra_00001ab4, local
	.string "gra_04"
.endobj str_gra_04_gra_00001ab4

# .rodata:0x43 | 0x5FB | size: 0x1
.obj gap_03_000005FB_rodata, global
.hidden gap_03_000005FB_rodata
	.byte 0x00
.endobj gap_03_000005FB_rodata

# .rodata:0x44 | 0x5FC | size: 0x9
.obj str_w_bero_2_gra_00001abc, local
	.string "w_bero_2"
.endobj str_w_bero_2_gra_00001abc

# .rodata:0x4D | 0x605 | size: 0x3
.obj gap_03_00000605_rodata, global
.hidden gap_03_00000605_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000605_rodata

# .rodata:0x50 | 0x608 | size: 0x9
.obj str_e_bero_2_gra_00001ac8, local
	.string "e_bero_2"
.endobj str_e_bero_2_gra_00001ac8

# .rodata:0x59 | 0x611 | size: 0x3
.obj gap_03_00000611_rodata, global
.hidden gap_03_00000611_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000611_rodata

# .rodata:0x5C | 0x614 | size: 0x7
.obj str_gra_05_gra_00001ad4, local
	.string "gra_05"
.endobj str_gra_05_gra_00001ad4

# .rodata:0x63 | 0x61B | size: 0x1
.obj gap_03_0000061B_rodata, global
.hidden gap_03_0000061B_rodata
	.byte 0x00
.endobj gap_03_0000061B_rodata

# .rodata:0x64 | 0x61C | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_gra_00001adc, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_gra_00001adc

# .rodata:0x78 | 0x630 | size: 0x7
.obj str_S_futa_gra_00001af0, local
	.string "S_futa"
.endobj str_S_futa_gra_00001af0

# .rodata:0x7F | 0x637 | size: 0x1
.obj gap_03_00000637_rodata, global
.hidden gap_03_00000637_rodata
	.byte 0x00
.endobj gap_03_00000637_rodata

# .rodata:0x80 | 0x638 | size: 0xF
.obj str_S_gra04_kideka_gra_00001af8, local
	.string "S_gra04_kideka"
.endobj str_S_gra04_kideka_gra_00001af8

# .rodata:0x8F | 0x647 | size: 0x1
.obj gap_03_00000647_rodata, global
.hidden gap_03_00000647_rodata
	.byte 0x00
.endobj gap_03_00000647_rodata

# .rodata:0x90 | 0x648 | size: 0xD
.obj str_S_gra04_ishi_gra_00001b08, local
	.string "S_gra04_ishi"
.endobj str_S_gra04_ishi_gra_00001b08

# .rodata:0x9D | 0x655 | size: 0x3
.obj gap_03_00000655_rodata, global
.hidden gap_03_00000655_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000655_rodata

# .rodata:0xA0 | 0x658 | size: 0xD
.obj str_S_gra04_kusa_gra_00001b18, local
	.string "S_gra04_kusa"
.endobj str_S_gra04_kusa_gra_00001b18

# .rodata:0xAD | 0x665 | size: 0x3
.obj gap_03_00000665_rodata, global
.hidden gap_03_00000665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000665_rodata

# .rodata:0xB0 | 0x668 | size: 0xD
.obj str_S_gra04_dai2_gra_00001b28, local
	.string "S_gra04_dai2"
.endobj str_S_gra04_dai2_gra_00001b28

# .rodata:0xBD | 0x675 | size: 0x3
.obj gap_03_00000675_rodata, global
.hidden gap_03_00000675_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000675_rodata

# .rodata:0xC0 | 0x678 | size: 0xE
.obj str_BGM_STG4_GRA1_gra_00001b38, local
	.string "BGM_STG4_GRA1"
.endobj str_BGM_STG4_GRA1_gra_00001b38

# .rodata:0xCE | 0x686 | size: 0x2
.obj gap_03_00000686_rodata, global
.hidden gap_03_00000686_rodata
	.2byte 0x0000
.endobj gap_03_00000686_rodata

# .rodata:0xD0 | 0x688 | size: 0xE
.obj str_ENV_STG4_GRA1_gra_00001b48, local
	.string "ENV_STG4_GRA1"
.endobj str_ENV_STG4_GRA1_gra_00001b48

# .rodata:0xDE | 0x696 | size: 0x2
.obj gap_03_00000696_rodata, global
.hidden gap_03_00000696_rodata
	.2byte 0x0000
.endobj gap_03_00000696_rodata

# .rodata:0xE0 | 0x698 | size: 0x7
.obj str_A_futa_gra_00001b58, local
	.string "A_futa"
.endobj str_A_futa_gra_00001b58

# .rodata:0xE7 | 0x69F | size: 0x1
.obj gap_03_0000069F_rodata, global
.hidden gap_03_0000069F_rodata
	.byte 0x00
.endobj gap_03_0000069F_rodata

# .rodata:0xE8 | 0x6A0 | size: 0x2
.obj str_m_gra_00001b60, local
	.string "m"
.endobj str_m_gra_00001b60

# .rodata:0xEA | 0x6A2 | size: 0x6
.obj gap_03_000006A2_rodata, global
.hidden gap_03_000006A2_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_000006A2_rodata

# 0x000026C0..0x00002E00 | size: 0x740
.data
.balign 8

# .data:0x0 | 0x26C0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x26C8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x26CC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x26D0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x26D4 | size: 0x4
.obj gap_04_000026D4_data, global
.hidden gap_04_000026D4_data
	.4byte 0x00000000
.endobj gap_04_000026D4_data

# .data:0x18 | 0x26D8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x26E0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x26E4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x26E8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x26F0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x26F4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x26F8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x26FC | size: 0x4
.obj gap_04_000026FC_data, global
.hidden gap_04_000026FC_data
	.4byte 0x00000000
.endobj gap_04_000026FC_data

# .data:0x40 | 0x2700 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2708 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x270C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2710 | size: 0x14
.obj in_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj in_evt

# .data:0x64 | 0x2724 | size: 0x238
.obj out_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte unk_gra_00000534
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_ロール解除できません_gra_00001a78
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xF2458E80
	.4byte 0xF24A3E80
	.4byte 0xF24BBA80
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_exparty
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFE89
	.4byte 0xFFFFFFEC
	.4byte 0xF24CD280
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C8B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFE89
	.4byte 0xFFFFFFE7
	.4byte 0xF24CD280
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE89
	.4byte 0xFFFFFFE2
	.4byte 0xF24CD280
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_on
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_off
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF0E
	.4byte 0x0000000A
	.4byte 0xFFFFFE3E
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF42
	.4byte 0xFFFFFE3E
	.4byte 0xF24CD280
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_evt

# .data:0x29C | 0x295C | size: 0x1B8
.obj out_evt2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte unk_gra_00000534
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x00000020
	.4byte 0x00010071
	.4byte str_ロール解除できません_gra_00001a78
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF0E
	.4byte 0xFFFFFE3E
	.4byte 0xF24CD280
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_off
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_on
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE84
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0005005B
	.4byte evt_mario_set_prev_party_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE84
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x0005005B
	.4byte evt_mario_set_prev_party_pos
	.4byte 0x00000001
	.4byte 0xFFFFFE84
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE70
	.4byte 0x00000005
	.4byte 0xFFFFFFF1
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFE70
	.4byte 0x00000005
	.4byte 0xFFFFFFEC
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE8B
	.4byte 0x00000000
	.4byte 0xFFFFFFE0
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFED9
	.4byte 0xFFFFFFF1
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEE8
	.4byte 0xFFFFFFF6
	.4byte 0xF24CD280
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_evt2

# .data:0x454 | 0x2B14 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_e_bero_gra_00001a90
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_03_gra_00001a98
	.4byte str_w_bero_gra_00001aa0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_1_gra_00001aa8
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte in_evt
	.4byte 0xFFFFFFFF
	.4byte out_evt
	.4byte str_gra_04_gra_00001ab4
	.4byte str_w_bero_2_gra_00001abc
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_2_gra_00001abc
	.4byte 0x10000000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte in_evt
	.4byte 0x00000000
	.4byte out_evt2
	.4byte str_gra_04_gra_00001ab4
	.4byte str_w_bero_1_gra_00001aa8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_2_gra_00001ac8
	.4byte 0x10000000
	.4byte 0x00000002
	.4byte 0xFFFFFF7C
	.4byte 0x0000003F
	.4byte 0xFFFFFE3E
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_gra_05_gra_00001ad4
	.4byte str_w_bero_gra_00001aa0
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

# .data:0x580 | 0x2C40 | size: 0xA4
.obj gra_04_tree_open_evt, local
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_gra_00001adc
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_w_bero_1_gra_00001aa8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000BD
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_04_tree_open_evt

# .data:0x624 | 0x2CE4 | size: 0x18
.obj fukitobashi_tbl, local
	.4byte str_S_futa_gra_00001af0
	.4byte str_S_gra04_kideka_gra_00001af8
	.4byte str_S_gra04_ishi_gra_00001b08
	.4byte str_S_gra04_kusa_gra_00001b18
	.4byte str_S_gra04_dai2_gra_00001b28
	.4byte 0x00000000
.endobj fukitobashi_tbl

# .data:0x63C | 0x2CFC | size: 0x100
.obj gra_04_init_evt_10_data_2CFC, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_GRA1_gra_00001b38
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_GRA1_gra_00001b48
	.4byte 0x0001005B
	.4byte evt_kagemario_init_10_text_820
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_10_data_5028
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000BD
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000001
	.4byte fukitobashi_tbl
	.4byte str_A_futa_gra_00001b58
	.4byte gra_04_tree_open_evt
	.4byte 0x0003005B
	.4byte evt_cloud_set_cap_size
	.4byte 0x00000100
	.4byte 0x00000100
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_w_bero_1_gra_00001aa8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_futa_gra_00001af0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_futa_gra_00001b58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_m_gra_00001b60
	.4byte 0x000000FA
	.4byte 0x0000003C
	.4byte 0xFFFFFFEC
	.4byte 0x000000F9
	.4byte 0x00000000
	.4byte 0xF84063A6
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_04_init_evt_10_data_2CFC

# .data:0x73C | 0x2DFC | size: 0x4
.obj gap_04_00002DFC_data, global
.hidden gap_04_00002DFC_data
	.4byte 0x00000000
.endobj gap_04_00002DFC_data
