.include "macros.inc"
.file "gra_05.o"

# 0x000004B8..0x00000510 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x4B8 | size: 0x2C
.fn camera_curve_on, local
/* 000004B8 0000057C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000004BC 00000580  7C 08 02 A6 */	mflr r0
/* 000004C0 00000584  3C 60 00 00 */	lis r3, str_MarioSt_CameraRoad_c_gra_00001d08@ha
/* 000004C4 00000588  90 01 00 14 */	stw r0, 0x14(r1)
/* 000004C8 0000058C  38 63 00 00 */	addi r3, r3, str_MarioSt_CameraRoad_c_gra_00001d08@l
/* 000004CC 00000590  48 00 00 45 */	bl camRoadCurveOn
/* 000004D0 00000594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000004D4 00000598  38 60 00 02 */	li r3, 0x2
/* 000004D8 0000059C  7C 08 03 A6 */	mtlr r0
/* 000004DC 000005A0  38 21 00 10 */	addi r1, r1, 0x10
/* 000004E0 000005A4  4E 80 00 20 */	blr
.endfn camera_curve_on

# .text:0x2C | 0x4E4 | size: 0x2C
.fn camera_curve_off, local
/* 000004E4 000005A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000004E8 000005AC  7C 08 02 A6 */	mflr r0
/* 000004EC 000005B0  3C 60 00 00 */	lis r3, str_MarioSt_CameraRoad_c_gra_00001d08@ha
/* 000004F0 000005B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 000004F4 000005B8  38 63 00 00 */	addi r3, r3, str_MarioSt_CameraRoad_c_gra_00001d08@l
/* 000004F8 000005BC  48 00 00 19 */	bl camRoadCurveOff
/* 000004FC 000005C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000500 000005C4  38 60 00 02 */	li r3, 0x2
/* 00000504 000005C8  7C 08 03 A6 */	mtlr r0
/* 00000508 000005CC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000050C 000005D0  4E 80 00 20 */	blr
.endfn camera_curve_off

# 0x000006A8..0x00000868 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x6A8 | size: 0x8
.obj str_A_ana_1_gra_00001b68, local
	.string "A_ana_1"
.endobj str_A_ana_1_gra_00001b68

# .rodata:0x8 | 0x6B0 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__gra_00001b70, local
	.string "SFX_VOICE_MARIO_FLD_JUMP2"
.endobj str_SFX_VOICE_MARIO_FLD__gra_00001b70

# .rodata:0x22 | 0x6CA | size: 0x2
.obj gap_03_000006CA_rodata, global
.hidden gap_03_000006CA_rodata
	.2byte 0x0000
.endobj gap_03_000006CA_rodata

# .rodata:0x24 | 0x6CC | size: 0x8
.obj str_A_ana_2_gra_00001b8c, local
	.string "A_ana_2"
.endobj str_A_ana_2_gra_00001b8c

# .rodata:0x2C | 0x6D4 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__gra_00001b94, local
	.string "SFX_VOICE_MARIO_FLD_JUMP4"
.endobj str_SFX_VOICE_MARIO_FLD__gra_00001b94

# .rodata:0x46 | 0x6EE | size: 0x2
.obj gap_03_000006EE_rodata, global
.hidden gap_03_000006EE_rodata
	.2byte 0x0000
.endobj gap_03_000006EE_rodata

# .rodata:0x48 | 0x6F0 | size: 0x6
.obj str_ana_1_gra_00001bb0, local
	.string "ana_1"
.endobj str_ana_1_gra_00001bb0

# .rodata:0x4E | 0x6F6 | size: 0x2
.obj gap_03_000006F6_rodata, global
.hidden gap_03_000006F6_rodata
	.2byte 0x0000
.endobj gap_03_000006F6_rodata

# .rodata:0x50 | 0x6F8 | size: 0x6
.obj str_ana_2_gra_00001bb8, local
	.string "ana_2"
.endobj str_ana_2_gra_00001bb8

# .rodata:0x56 | 0x6FE | size: 0x2
.obj gap_03_000006FE_rodata, global
.hidden gap_03_000006FE_rodata
	.2byte 0x0000
.endobj gap_03_000006FE_rodata

# .rodata:0x58 | 0x700 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__gra_00001bc0, local
	.string "SFX_VOICE_MARIO_FLD_JUMP5"
.endobj str_SFX_VOICE_MARIO_FLD__gra_00001bc0

# .rodata:0x72 | 0x71A | size: 0x2
.obj gap_03_0000071A_rodata, global
.hidden gap_03_0000071A_rodata
	.2byte 0x0000
.endobj gap_03_0000071A_rodata

# .rodata:0x74 | 0x71C | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__gra_00001bdc, local
	.string "SFX_VOICE_MARIO_FLD_JUMP1"
.endobj str_SFX_VOICE_MARIO_FLD__gra_00001bdc

# .rodata:0x8E | 0x736 | size: 0x2
.obj gap_03_00000736_rodata, global
.hidden gap_03_00000736_rodata
	.2byte 0x0000
.endobj gap_03_00000736_rodata

# .rodata:0x90 | 0x738 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__gra_00001bf8, local
	.string "SFX_VOICE_MARIO_FLD_JUMP3"
.endobj str_SFX_VOICE_MARIO_FLD__gra_00001bf8

# .rodata:0xAA | 0x752 | size: 0x2
.obj gap_03_00000752_rodata, global
.hidden gap_03_00000752_rodata
	.2byte 0x0000
.endobj gap_03_00000752_rodata

# .rodata:0xAC | 0x754 | size: 0x7
.obj str_w_bero_gra_00001c14, local
	.string "w_bero"
.endobj str_w_bero_gra_00001c14

# .rodata:0xB3 | 0x75B | size: 0x1
.obj gap_03_0000075B_rodata, global
.hidden gap_03_0000075B_rodata
	.byte 0x00
.endobj gap_03_0000075B_rodata

# .rodata:0xB4 | 0x75C | size: 0x7
.obj str_gra_04_gra_00001c1c, local
	.string "gra_04"
.endobj str_gra_04_gra_00001c1c

# .rodata:0xBB | 0x763 | size: 0x1
.obj gap_03_00000763_rodata, global
.hidden gap_03_00000763_rodata
	.byte 0x00
.endobj gap_03_00000763_rodata

# .rodata:0xBC | 0x764 | size: 0x9
.obj str_e_bero_2_gra_00001c24, local
	.string "e_bero_2"
.endobj str_e_bero_2_gra_00001c24

# .rodata:0xC5 | 0x76D | size: 0x3
.obj gap_03_0000076D_rodata, global
.hidden gap_03_0000076D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000076D_rodata

# .rodata:0xC8 | 0x770 | size: 0x7
.obj str_e_bero_gra_00001c30, local
	.string "e_bero"
.endobj str_e_bero_gra_00001c30

# .rodata:0xCF | 0x777 | size: 0x1
.obj gap_03_00000777_rodata, global
.hidden gap_03_00000777_rodata
	.byte 0x00
.endobj gap_03_00000777_rodata

# .rodata:0xD0 | 0x778 | size: 0x7
.obj str_gra_06_gra_00001c38, local
	.string "gra_06"
.endobj str_gra_06_gra_00001c38

# .rodata:0xD7 | 0x77F | size: 0x1
.obj gap_03_0000077F_rodata, global
.hidden gap_03_0000077F_rodata
	.byte 0x00
.endobj gap_03_0000077F_rodata

# .rodata:0xD8 | 0x780 | size: 0x8
.obj str_sw_bero_gra_00001c40, local
	.string "sw_bero"
.endobj str_sw_bero_gra_00001c40

# .rodata:0xE0 | 0x788 | size: 0x7
.obj str_gra_05_gra_00001c48, local
	.string "gra_05"
.endobj str_gra_05_gra_00001c48

# .rodata:0xE7 | 0x78F | size: 0x1
.obj gap_03_0000078F_rodata, global
.hidden gap_03_0000078F_rodata
	.byte 0x00
.endobj gap_03_0000078F_rodata

# .rodata:0xE8 | 0x790 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_gra_00001c50, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_gra_00001c50

# .rodata:0xFC | 0x7A4 | size: 0x7
.obj str_A_futa_gra_00001c64, local
	.string "A_futa"
.endobj str_A_futa_gra_00001c64

# .rodata:0x103 | 0x7AB | size: 0x1
.obj gap_03_000007AB_rodata, global
.hidden gap_03_000007AB_rodata
	.byte 0x00
.endobj gap_03_000007AB_rodata

# .rodata:0x104 | 0x7AC | size: 0x6
.obj str_A_iwa_gra_00001c6c, local
	.string "A_iwa"
.endobj str_A_iwa_gra_00001c6c

# .rodata:0x10A | 0x7B2 | size: 0x2
.obj gap_03_000007B2_rodata, global
.hidden gap_03_000007B2_rodata
	.2byte 0x0000
.endobj gap_03_000007B2_rodata

# .rodata:0x10C | 0x7B4 | size: 0x6
.obj str_S_iwa_gra_00001c74, local
	.string "S_iwa"
.endobj str_S_iwa_gra_00001c74

# .rodata:0x112 | 0x7BA | size: 0x2
.obj gap_03_000007BA_rodata, global
.hidden gap_03_000007BA_rodata
	.2byte 0x0000
.endobj gap_03_000007BA_rodata

# .rodata:0x114 | 0x7BC | size: 0x7
.obj str_S_futa_gra_00001c7c, local
	.string "S_futa"
.endobj str_S_futa_gra_00001c7c

# .rodata:0x11B | 0x7C3 | size: 0x1
.obj gap_03_000007C3_rodata, global
.hidden gap_03_000007C3_rodata
	.byte 0x00
.endobj gap_03_000007C3_rodata

# .rodata:0x11C | 0x7C4 | size: 0x14
.obj str_SFX_STG4_MOVE_ROCK1_gra_00001c84, local
	.string "SFX_STG4_MOVE_ROCK1"
.endobj str_SFX_STG4_MOVE_ROCK1_gra_00001c84

# .rodata:0x130 | 0x7D8 | size: 0x6
.obj str_M_O_1_gra_00001c98, local
	.string "M_O_1"
.endobj str_M_O_1_gra_00001c98

# .rodata:0x136 | 0x7DE | size: 0x2
.obj gap_03_000007DE_rodata, global
.hidden gap_03_000007DE_rodata
	.2byte 0x0000
.endobj gap_03_000007DE_rodata

# .rodata:0x138 | 0x7E0 | size: 0x7
.obj str_kemuri_gra_00001ca0, local
	.string "kemuri"
.endobj str_kemuri_gra_00001ca0

# .rodata:0x13F | 0x7E7 | size: 0x1
.obj gap_03_000007E7_rodata, global
.hidden gap_03_000007E7_rodata
	.byte 0x00
.endobj gap_03_000007E7_rodata

# .rodata:0x140 | 0x7E8 | size: 0x6
.obj str_M_S_1_gra_00001ca8, local
	.string "M_S_1"
.endobj str_M_S_1_gra_00001ca8

# .rodata:0x146 | 0x7EE | size: 0x2
.obj gap_03_000007EE_rodata, global
.hidden gap_03_000007EE_rodata
	.2byte 0x0000
.endobj gap_03_000007EE_rodata

# .rodata:0x148 | 0x7F0 | size: 0x7
.obj str_S_kura_gra_00001cb0, local
	.string "S_kura"
.endobj str_S_kura_gra_00001cb0

# .rodata:0x14F | 0x7F7 | size: 0x1
.obj gap_03_000007F7_rodata, global
.hidden gap_03_000007F7_rodata
	.byte 0x00
.endobj gap_03_000007F7_rodata

# .rodata:0x150 | 0x7F8 | size: 0xD
.obj str_S_gra04_kusa_gra_00001cb8, local
	.string "S_gra04_kusa"
.endobj str_S_gra04_kusa_gra_00001cb8

# .rodata:0x15D | 0x805 | size: 0x3
.obj gap_03_00000805_rodata, global
.hidden gap_03_00000805_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000805_rodata

# .rodata:0x160 | 0x808 | size: 0xE
.obj str_BGM_STG4_GRA1_gra_00001cc8, local
	.string "BGM_STG4_GRA1"
.endobj str_BGM_STG4_GRA1_gra_00001cc8

# .rodata:0x16E | 0x816 | size: 0x2
.obj gap_03_00000816_rodata, global
.hidden gap_03_00000816_rodata
	.2byte 0x0000
.endobj gap_03_00000816_rodata

# .rodata:0x170 | 0x818 | size: 0xE
.obj str_ENV_STG4_GRA1_gra_00001cd8, local
	.string "ENV_STG4_GRA1"
.endobj str_ENV_STG4_GRA1_gra_00001cd8

# .rodata:0x17E | 0x826 | size: 0x2
.obj gap_03_00000826_rodata, global
.hidden gap_03_00000826_rodata
	.2byte 0x0000
.endobj gap_03_00000826_rodata

# .rodata:0x180 | 0x828 | size: 0x6
.obj str_blk00_gra_00001ce8, local
	.string "blk00"
.endobj str_blk00_gra_00001ce8

# .rodata:0x186 | 0x82E | size: 0x2
.obj gap_03_0000082E_rodata, global
.hidden gap_03_0000082E_rodata
	.2byte 0x0000
.endobj gap_03_0000082E_rodata

# .rodata:0x188 | 0x830 | size: 0x6
.obj str_blk01_gra_00001cf0, local
	.string "blk01"
.endobj str_blk01_gra_00001cf0

# .rodata:0x18E | 0x836 | size: 0x2
.obj gap_03_00000836_rodata, global
.hidden gap_03_00000836_rodata
	.2byte 0x0000
.endobj gap_03_00000836_rodata

# .rodata:0x190 | 0x838 | size: 0xF
.obj str_breaking_floor_gra_00001cf8, local
	.string "breaking_floor"
.endobj str_breaking_floor_gra_00001cf8

# .rodata:0x19F | 0x847 | size: 0x1
.obj gap_03_00000847_rodata, global
.hidden gap_03_00000847_rodata
	.byte 0x00
.endobj gap_03_00000847_rodata

# .rodata:0x1A0 | 0x848 | size: 0x1B
.obj str_MarioSt_CameraRoad_c_gra_00001d08, local
	.string "|MarioSt_CameraRoad|curve2"
.endobj str_MarioSt_CameraRoad_c_gra_00001d08

# .rodata:0x1BB | 0x863 | size: 0x5
.obj gap_03_00000863_rodata, global
.hidden gap_03_00000863_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00000863_rodata

# 0x00002E00..0x00003EA8 | size: 0x10A8
.data
.balign 8

# .data:0x0 | 0x2E00 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2E08 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2E0C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2E10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2E14 | size: 0x4
.obj gap_04_00002E14_data, global
.hidden gap_04_00002E14_data
	.4byte 0x00000000
.endobj gap_04_00002E14_data

# .data:0x18 | 0x2E18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2E20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2E24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2E28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2E30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2E34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2E38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2E3C | size: 0x4
.obj gap_04_00002E3C_data, global
.hidden gap_04_00002E3C_data
	.4byte 0x00000000
.endobj gap_04_00002E3C_data

# .data:0x40 | 0x2E40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2E48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2E4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2E50 | size: 0x14
.obj gra_05_in_01, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_05_in_01

# .data:0x64 | 0x2E64 | size: 0x254
.obj gra_05_out_01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_off
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_ana_1_gra_00001b68
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
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
	.4byte evt_mario_set_pos
	.4byte 0x000000FA
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x000000FA
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0x00000136
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000001
	.4byte 0x00000136
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__gra_00001b70
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x00000136
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_on
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_05_out_01

# .data:0x2B8 | 0x30B8 | size: 0x14
.obj gra_05_in_02, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_05_in_02

# .data:0x2CC | 0x30CC | size: 0x254
.obj gra_05_out_02, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_off
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_ana_2_gra_00001b8c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
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
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000001
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__gra_00001b94
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_off
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_05_out_02

# .data:0x520 | 0x3320 | size: 0x14
.obj in_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj in_evt

# .data:0x534 | 0x3334 | size: 0x1C4
.obj out_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_ana_1_gra_00001bb0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_party_force_reset_outofscreen
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_on
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_off
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000002BC
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_ana_2_gra_00001bb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__gra_00001bc0
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFF74
	.4byte 0x0000003C
	.4byte 0xFFFFFE3E
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_evt

# .data:0x6F8 | 0x34F8 | size: 0x258
.obj out_evt2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_ana_2_gra_00001bb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__gra_00001bdc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEFC
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEFC
	.4byte 0xFFFFFFBA
	.4byte 0xFFFFFFFB
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFEFC
	.4byte 0xFFFFFFB0
	.4byte 0xFFFFFFF6
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_off
	.4byte 0x0002005B
	.4byte evt_mario_set_prev_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_prev_party
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000002BC
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF42
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000001
	.4byte 0xFFFFFF42
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__gra_00001bf8
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFF42
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_evt2

# .data:0x950 | 0x3750 | size: 0x1A4
.obj bero_entry_data, local
	.4byte str_w_bero_gra_00001c14
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_04_gra_00001c1c
	.4byte str_e_bero_2_gra_00001c24
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_gra_00001c30
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_06_gra_00001c38
	.4byte str_sw_bero_gra_00001c40
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ana_1_gra_00001bb0
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte in_evt
	.4byte 0x00000000
	.4byte out_evt
	.4byte str_gra_05_gra_00001c48
	.4byte str_ana_2_gra_00001bb8
	.4byte 0x00040004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ana_2_gra_00001bb8
	.4byte 0x1F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte in_evt
	.4byte 0x00000000
	.4byte out_evt2
	.4byte str_gra_05_gra_00001c48
	.4byte str_ana_1_gra_00001bb0
	.4byte 0x00040004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_ana_1_gra_00001b68
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte gra_05_in_01
	.4byte 0x00000000
	.4byte gra_05_out_01
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00040004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_ana_2_gra_00001b8c
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte gra_05_in_01
	.4byte 0x00000000
	.4byte gra_05_out_02
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00040004
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

# .data:0xAF4 | 0x38F4 | size: 0x70
.obj gra_05_futa_open_evt, local
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_gra_00001c50
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
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_futa_gra_00001c64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000BE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_05_futa_open_evt

# .data:0xB64 | 0x3964 | size: 0x7C
.obj evt_gra_05iwa_move_init, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_iwa_gra_00001c6c
	.4byte str_S_iwa_gra_00001c74
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000C0
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_iwa_gra_00001c74
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_iwa_gra_00001c6c
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_futa_gra_00001c7c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_futa_gra_00001c64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gra_05iwa_move_init

# .data:0xBE0 | 0x39E0 | size: 0x2E8
.obj evt_gra_05iwa_move_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_iwa_gra_00001c74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_MOVE_ROCK1_gra_00001c84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x00000BB8
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_O_1_gra_00001c98
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_iwa_gra_00001c74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_gra_00001ca0
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_iwa_gra_00001c74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_gra_00001ca0
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00000034
	.4byte 0xFFFFFE3F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_gra_00001ca0
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00000034
	.4byte 0xFFFFFE3F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_iwa_gra_00001c74
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gra_00001ca8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_iwa_gra_00001c6c
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000C0
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gra_05iwa_move_evt

# .data:0xEC8 | 0x3CC8 | size: 0x1C
.obj evt_break_floor, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000BF
	.4byte 0x0001005B
	.4byte camera_curve_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_break_floor

# .data:0xEE4 | 0x3CE4 | size: 0x10
.obj fukitobashi_tbl, local
	.4byte str_S_futa_gra_00001c7c
	.4byte str_S_kura_gra_00001cb0
	.4byte str_S_gra04_kusa_gra_00001cb8
	.4byte 0x00000000
.endobj fukitobashi_tbl

# .data:0xEF4 | 0x3CF4 | size: 0x1B0
.obj gra_05_init_evt_10_data_3CF4, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_GRA1_gra_00001cc8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_GRA1_gra_00001cd8
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_blk00_gra_00001ce8
	.4byte 0xFFFFFE25
	.4byte 0x0000003C
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0xF84063A5
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_blk01_gra_00001cf0
	.4byte 0x00000276
	.4byte 0x0000003C
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF840712C
	.4byte 0x00000000
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
	.4byte 0x000000BE
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000001
	.4byte fukitobashi_tbl
	.4byte str_A_futa_gra_00001c64
	.4byte gra_05_futa_open_evt
	.4byte 0x0003005B
	.4byte evt_cloud_set_cap_size
	.4byte 0x00000100
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_futa_gra_00001c64
	.4byte str_S_futa_gra_00001c7c
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_futa_gra_00001c7c
	.4byte 0x00000000
	.4byte 0xF24A7AE6
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_futa_gra_00001c64
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_futa_gra_00001c7c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_futa_gra_00001c64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000BF
	.4byte 0x0001005B
	.4byte camera_curve_off
	.4byte 0x0008005B
	.4byte evt_mobj_breaking_floor
	.4byte str_breaking_floor_gra_00001cf8
	.4byte 0xFFFFFF06
	.4byte 0xFFFFFFF9
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_break_floor
	.4byte 0xF84063A0
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_gra_05iwa_move_init
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000C0
	.4byte 0x0001005B
	.4byte evt_iwamove_init_10_text_B88
	.4byte 0x0002005B
	.4byte evt_iwamove_ent_10_text_B28
	.4byte evt_gra_05iwa_move_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_05_init_evt_10_data_3CF4

# .data:0x10A4 | 0x3EA4 | size: 0x4
.obj gap_04_00003EA4_data, global
.hidden gap_04_00003EA4_data
	.4byte 0x00000000
.endobj gap_04_00003EA4_data
