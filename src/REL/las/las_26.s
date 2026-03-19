.include "macros.inc"
.file "las_26.o"

# 0x00005DB0..0x00005DEC | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x5DB0 | size: 0x3C
.fn bonbaba_wait_landon, local
/* 00005DB0 00005E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005DB4 00005E80  7C 08 02 A6 */	mflr r0
/* 00005DB8 00005E84  3C 60 00 00 */	lis r3, str_ボンババ_las_00014ef8@ha
/* 00005DBC 00005E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005DC0 00005E8C  38 63 00 00 */	addi r3, r3, str_ボンババ_las_00014ef8@l
/* 00005DC4 00005E90  4B FF A3 79 */	bl npcNameToPtr
/* 00005DC8 00005E94  80 63 03 00 */	lwz r3, 0x300(r3)
/* 00005DCC 00005E98  38 00 00 02 */	li r0, 0x2
/* 00005DD0 00005E9C  20 63 00 00 */	subfic r3, r3, 0x0
/* 00005DD4 00005EA0  7C 63 19 10 */	subfe r3, r3, r3
/* 00005DD8 00005EA4  7C 03 18 38 */	and r3, r0, r3
/* 00005DDC 00005EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005DE0 00005EAC  7C 08 03 A6 */	mtlr r0
/* 00005DE4 00005EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 00005DE8 00005EB4  4E 80 00 20 */	blr
.endfn bonbaba_wait_landon

# 0x00003430..0x00003778 | size: 0x348
.rodata
.balign 8

# .rodata:0x0 | 0x3430 | size: 0xA
.obj str_S_door1_1_las_00014e98, local
	.string "S_door1_1"
.endobj str_S_door1_1_las_00014e98

# .rodata:0xA | 0x343A | size: 0x2
.obj gap_03_0000343A_rodata, global
.hidden gap_03_0000343A_rodata
	.2byte 0x0000
.endobj gap_03_0000343A_rodata

# .rodata:0xC | 0x343C | size: 0xA
.obj str_S_door1_2_las_00014ea4, local
	.string "S_door1_2"
.endobj str_S_door1_2_las_00014ea4

# .rodata:0x16 | 0x3446 | size: 0x2
.obj gap_03_00003446_rodata, global
.hidden gap_03_00003446_rodata
	.2byte 0x0000
.endobj gap_03_00003446_rodata

# .rodata:0x18 | 0x3448 | size: 0x7
.obj str_w_bero_las_00014eb0, local
	.string "w_bero"
.endobj str_w_bero_las_00014eb0

# .rodata:0x1F | 0x344F | size: 0x1
.obj gap_03_0000344F_rodata, global
.hidden gap_03_0000344F_rodata
	.byte 0x00
.endobj gap_03_0000344F_rodata

# .rodata:0x20 | 0x3450 | size: 0x7
.obj str_las_25_las_00014eb8, local
	.string "las_25"
.endobj str_las_25_las_00014eb8

# .rodata:0x27 | 0x3457 | size: 0x1
.obj gap_03_00003457_rodata, global
.hidden gap_03_00003457_rodata
	.byte 0x00
.endobj gap_03_00003457_rodata

# .rodata:0x28 | 0x3458 | size: 0x9
.obj str_e_bero_1_las_00014ec0, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_00014ec0

# .rodata:0x31 | 0x3461 | size: 0x3
.obj gap_03_00003461_rodata, global
.hidden gap_03_00003461_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003461_rodata

# .rodata:0x34 | 0x3464 | size: 0x7
.obj str_s_bero_las_00014ecc, local
	.string "s_bero"
.endobj str_s_bero_las_00014ecc

# .rodata:0x3B | 0x346B | size: 0x1
.obj gap_03_0000346B_rodata, global
.hidden gap_03_0000346B_rodata
	.byte 0x00
.endobj gap_03_0000346B_rodata

# .rodata:0x3C | 0x346C | size: 0x7
.obj str_las_28_las_00014ed4, local
	.string "las_28"
.endobj str_las_28_las_00014ed4

# .rodata:0x43 | 0x3473 | size: 0x1
.obj gap_03_00003473_rodata, global
.hidden gap_03_00003473_rodata
	.byte 0x00
.endobj gap_03_00003473_rodata

# .rodata:0x44 | 0x3474 | size: 0x7
.obj str_from26_las_00014edc, local
	.string "from26"
.endobj str_from26_las_00014edc

# .rodata:0x4B | 0x347B | size: 0x1
.obj gap_03_0000347B_rodata, global
.hidden gap_03_0000347B_rodata
	.byte 0x00
.endobj gap_03_0000347B_rodata

# .rodata:0x4C | 0x347C | size: 0x4
.obj str_box_las_00014ee4, local
	.string "box"
.endobj str_box_las_00014ee4

# .rodata:0x50 | 0x3480 | size: 0x4
.obj str_key_las_00014ee8, local
	.string "key"
.endobj str_key_las_00014ee8

# .rodata:0x54 | 0x3484 | size: 0xC
.obj str_stg8_las_44_las_00014eec, local
	.string "stg8_las_44"
.endobj str_stg8_las_44_las_00014eec

# .rodata:0x60 | 0x3490 | size: 0x9
.obj str_ボンババ_las_00014ef8, local
	.4byte 0x837B8393
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ボンババ_las_00014ef8

# .rodata:0x69 | 0x3499 | size: 0x3
.obj gap_03_00003499_rodata, global
.hidden gap_03_00003499_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003499_rodata

# .rodata:0x6C | 0x349C | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_las_00014f04, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_las_00014f04

# .rodata:0x84 | 0x34B4 | size: 0x10
.obj str_BGM_EVT_DANGER2_las_00014f1c, local
	.string "BGM_EVT_DANGER2"
.endobj str_BGM_EVT_DANGER2_las_00014f1c

# .rodata:0x94 | 0x34C4 | size: 0x13
.obj str_SFX_STG8_GNB_ROAR1_las_00014f2c, local
	.string "SFX_STG8_GNB_ROAR1"
.endobj str_SFX_STG8_GNB_ROAR1_las_00014f2c

# .rodata:0xA7 | 0x34D7 | size: 0x1
.obj gap_03_000034D7_rodata, global
.hidden gap_03_000034D7_rodata
	.byte 0x00
.endobj gap_03_000034D7_rodata

# .rodata:0xA8 | 0x34D8 | size: 0x8
.obj str_GNB_U_1_las_00014f40, local
	.string "GNB_U_1"
.endobj str_GNB_U_1_las_00014f40

# .rodata:0xB0 | 0x34E0 | size: 0x8
.obj str_GNB_S_1_las_00014f48, local
	.string "GNB_S_1"
.endobj str_GNB_S_1_las_00014f48

# .rodata:0xB8 | 0x34E8 | size: 0x13
.obj str_SFX_STG8_GNB_STEP1_las_00014f50, local
	.string "SFX_STG8_GNB_STEP1"
.endobj str_SFX_STG8_GNB_STEP1_las_00014f50

# .rodata:0xCB | 0x34FB | size: 0x1
.obj gap_03_000034FB_rodata, global
.hidden gap_03_000034FB_rodata
	.byte 0x00
.endobj gap_03_000034FB_rodata

# .rodata:0xCC | 0x34FC | size: 0x7
.obj str_S_kesu_las_00014f64, local
	.string "S_kesu"
.endobj str_S_kesu_las_00014f64

# .rodata:0xD3 | 0x3503 | size: 0x1
.obj gap_03_00003503_rodata, global
.hidden gap_03_00003503_rodata
	.byte 0x00
.endobj gap_03_00003503_rodata

# .rodata:0xD4 | 0x3504 | size: 0xC
.obj str_stg8_las_45_las_00014f6c, local
	.string "stg8_las_45"
.endobj str_stg8_las_45_las_00014f6c

# .rodata:0xE0 | 0x3510 | size: 0xC
.obj str_stg8_las_46_las_00014f78, local
	.string "stg8_las_46"
.endobj str_stg8_las_46_las_00014f78

# .rodata:0xEC | 0x351C | size: 0xC
.obj str_stg8_las_47_las_00014f84, local
	.string "stg8_las_47"
.endobj str_stg8_las_47_las_00014f84

# .rodata:0xF8 | 0x3528 | size: 0x9
.obj str_S_archi1_las_00014f90, local
	.string "S_archi1"
.endobj str_S_archi1_las_00014f90

# .rodata:0x101 | 0x3531 | size: 0x3
.obj gap_03_00003531_rodata, global
.hidden gap_03_00003531_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003531_rodata

# .rodata:0x104 | 0x3534 | size: 0xC
.obj str_stg8_las_48_las_00014f9c, local
	.string "stg8_las_48"
.endobj str_stg8_las_48_las_00014f9c

# .rodata:0x110 | 0x3540 | size: 0x13
.obj str_SFX_STG8_GNB_DOWN1_las_00014fa8, local
	.string "SFX_STG8_GNB_DOWN1"
.endobj str_SFX_STG8_GNB_DOWN1_las_00014fa8

# .rodata:0x123 | 0x3553 | size: 0x1
.obj gap_03_00003553_rodata, global
.hidden gap_03_00003553_rodata
	.byte 0x00
.endobj gap_03_00003553_rodata

# .rodata:0x124 | 0x3554 | size: 0x8
.obj str_GNB_H_1_las_00014fbc, local
	.string "GNB_H_1"
.endobj str_GNB_H_1_las_00014fbc

# .rodata:0x12C | 0x355C | size: 0x8
.obj str_GNB_H_2_las_00014fc4, local
	.string "GNB_H_2"
.endobj str_GNB_H_2_las_00014fc4

# .rodata:0x134 | 0x3564 | size: 0x13
.obj str_SFX_STG8_GNB_DOWN2_las_00014fcc, local
	.string "SFX_STG8_GNB_DOWN2"
.endobj str_SFX_STG8_GNB_DOWN2_las_00014fcc

# .rodata:0x147 | 0x3577 | size: 0x1
.obj gap_03_00003577_rodata, global
.hidden gap_03_00003577_rodata
	.byte 0x00
.endobj gap_03_00003577_rodata

# .rodata:0x148 | 0x3578 | size: 0x8
.obj str_GNB_H_3_las_00014fe0, local
	.string "GNB_H_3"
.endobj str_GNB_H_3_las_00014fe0

# .rodata:0x150 | 0x3580 | size: 0x13
.obj str_SFX_STG8_GNB_DOWN3_las_00014fe8, local
	.string "SFX_STG8_GNB_DOWN3"
.endobj str_SFX_STG8_GNB_DOWN3_las_00014fe8

# .rodata:0x163 | 0x3593 | size: 0x1
.obj gap_03_00003593_rodata, global
.hidden gap_03_00003593_rodata
	.byte 0x00
.endobj gap_03_00003593_rodata

# .rodata:0x164 | 0x3594 | size: 0x1A
.obj str_SFX_STG8_GNB_THROAT__las_00014ffc, local
	.string "SFX_STG8_GNB_THROAT_MOVE1"
.endobj str_SFX_STG8_GNB_THROAT__las_00014ffc

# .rodata:0x17E | 0x35AE | size: 0x2
.obj gap_03_000035AE_rodata, global
.hidden gap_03_000035AE_rodata
	.2byte 0x0000
.endobj gap_03_000035AE_rodata

# .rodata:0x180 | 0x35B0 | size: 0x19
.obj str_SFX_STG8_GMB_MOUTH_M_las_00015018, local
	.string "SFX_STG8_GMB_MOUTH_MOVE1"
.endobj str_SFX_STG8_GMB_MOUTH_M_las_00015018

# .rodata:0x199 | 0x35C9 | size: 0x3
.obj gap_03_000035C9_rodata, global
.hidden gap_03_000035C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000035C9_rodata

# .rodata:0x19C | 0x35CC | size: 0x19
.obj str_SFX_STG8_GMB_MOUTH_O_las_00015034, local
	.string "SFX_STG8_GMB_MOUTH_OPEN1"
.endobj str_SFX_STG8_GMB_MOUTH_O_las_00015034

# .rodata:0x1B5 | 0x35E5 | size: 0x3
.obj gap_03_000035E5_rodata, global
.hidden gap_03_000035E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000035E5_rodata

# .rodata:0x1B8 | 0x35E8 | size: 0x8
.obj str_GNB_H_4_las_00015050, local
	.string "GNB_H_4"
.endobj str_GNB_H_4_las_00015050

# .rodata:0x1C0 | 0x35F0 | size: 0x14
.obj str_SFX_STG8_TBOX_JUMP1_las_00015058, local
	.string "SFX_STG8_TBOX_JUMP1"
.endobj str_SFX_STG8_TBOX_JUMP1_las_00015058

# .rodata:0x1D4 | 0x3604 | size: 0x17
.obj str_SFX_STG8_TBOX_LANDIN_las_0001506c, local
	.string "SFX_STG8_TBOX_LANDING1"
.endobj str_SFX_STG8_TBOX_LANDIN_las_0001506c

# .rodata:0x1EB | 0x361B | size: 0x1
.obj gap_03_0000361B_rodata, global
.hidden gap_03_0000361B_rodata
	.byte 0x00
.endobj gap_03_0000361B_rodata

# .rodata:0x1EC | 0x361C | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_las_00015084, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_las_00015084

# .rodata:0x202 | 0x3632 | size: 0x2
.obj gap_03_00003632_rodata, global
.hidden gap_03_00003632_rodata
	.2byte 0x0000
.endobj gap_03_00003632_rodata

# .rodata:0x204 | 0x3634 | size: 0x5
.obj str_baba_las_0001509c, local
	.string "baba"
.endobj str_baba_las_0001509c

# .rodata:0x209 | 0x3639 | size: 0x3
.obj gap_03_00003639_rodata, global
.hidden gap_03_00003639_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003639_rodata

# .rodata:0x20C | 0x363C | size: 0x3
.obj str_me_las_000150a4, local
	.string "me"
.endobj str_me_las_000150a4

# .rodata:0x20F | 0x363F | size: 0x1
.obj gap_03_0000363F_rodata, global
.hidden gap_03_0000363F_rodata
	.byte 0x00
.endobj gap_03_0000363F_rodata

# .rodata:0x210 | 0x3640 | size: 0xB
.obj str_クリハカセ_las_000150a8, local
	.4byte 0x834E838A
	.4byte 0x836E834A
	.byte 0x83, 0x5A, 0x00
.endobj str_クリハカセ_las_000150a8

# .rodata:0x21B | 0x364B | size: 0x1
.obj gap_03_0000364B_rodata, global
.hidden gap_03_0000364B_rodata
	.byte 0x00
.endobj gap_03_0000364B_rodata

# .rodata:0x21C | 0x364C | size: 0x9
.obj str_c_kuri_h_las_000150b4, local
	.string "c_kuri_h"
.endobj str_c_kuri_h_las_000150b4

# .rodata:0x225 | 0x3655 | size: 0x3
.obj gap_03_00003655_rodata, global
.hidden gap_03_00003655_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003655_rodata

# .rodata:0x228 | 0x3658 | size: 0x18
.obj str_SFX_STG8_CEILING_BRE_las_000150c0, local
	.string "SFX_STG8_CEILING_BREAK1"
.endobj str_SFX_STG8_CEILING_BRE_las_000150c0

# .rodata:0x240 | 0x3670 | size: 0xB
.obj str_hokori_n64_las_000150d8, local
	.string "hokori_n64"
.endobj str_hokori_n64_las_000150d8

# .rodata:0x24B | 0x367B | size: 0x1
.obj gap_03_0000367B_rodata, global
.hidden gap_03_0000367B_rodata
	.byte 0x00
.endobj gap_03_0000367B_rodata

# .rodata:0x24C | 0x367C | size: 0xD
.obj str_stg8_dark_09_las_000150e4, local
	.string "stg8_dark_09"
.endobj str_stg8_dark_09_las_000150e4

# .rodata:0x259 | 0x3689 | size: 0x3
.obj gap_03_00003689_rodata, global
.hidden gap_03_00003689_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003689_rodata

# .rodata:0x25C | 0x368C | size: 0x7
.obj str_las_29_las_000150f4, local
	.string "las_29"
.endobj str_las_29_las_000150f4

# .rodata:0x263 | 0x3693 | size: 0x1
.obj gap_03_00003693_rodata, global
.hidden gap_03_00003693_rodata
	.byte 0x00
.endobj gap_03_00003693_rodata

# .rodata:0x264 | 0x3694 | size: 0xC
.obj str_sekai_yami2_las_000150fc, local
	.string "sekai_yami2"
.endobj str_sekai_yami2_las_000150fc

# .rodata:0x270 | 0x36A0 | size: 0xE
.obj str_S_ana_before1_las_00015108, local
	.string "S_ana_before1"
.endobj str_S_ana_before1_las_00015108

# .rodata:0x27E | 0x36AE | size: 0x2
.obj gap_03_000036AE_rodata, global
.hidden gap_03_000036AE_rodata
	.2byte 0x0000
.endobj gap_03_000036AE_rodata

# .rodata:0x280 | 0x36B0 | size: 0x14
.obj str_SFX_OFF_WALL_BREAK1_las_00015118, local
	.string "SFX_OFF_WALL_BREAK1"
.endobj str_SFX_OFF_WALL_BREAK1_las_00015118

# .rodata:0x294 | 0x36C4 | size: 0xF
.obj str_OFF_d_bom_ver2_las_0001512c, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_las_0001512c

# .rodata:0x2A3 | 0x36D3 | size: 0x1
.obj gap_03_000036D3_rodata, global
.hidden gap_03_000036D3_rodata
	.byte 0x00
.endobj gap_03_000036D3_rodata

# .rodata:0x2A4 | 0x36D4 | size: 0x4
.obj str_ofs_las_0001513c, local
	.string "ofs"
.endobj str_ofs_las_0001513c

# .rodata:0x2A8 | 0x36D8 | size: 0x4
.obj str_img_las_00015140, local
	.string "img"
.endobj str_img_las_00015140

# .rodata:0x2AC | 0x36DC | size: 0xD
.obj str_S_ana_before_las_00015144, local
	.string "S_ana_before"
.endobj str_S_ana_before_las_00015144

# .rodata:0x2B9 | 0x36E9 | size: 0x3
.obj gap_03_000036E9_rodata, global
.hidden gap_03_000036E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000036E9_rodata

# .rodata:0x2BC | 0x36EC | size: 0xC
.obj str_S_ana_after_las_00015154, local
	.string "S_ana_after"
.endobj str_S_ana_after_las_00015154

# .rodata:0x2C8 | 0x36F8 | size: 0x4
.obj str_A_1_las_00015160, local
	.string "A_1"
.endobj str_A_1_las_00015160

# .rodata:0x2CC | 0x36FC | size: 0xC
.obj str_A_ana_after_las_00015164, local
	.string "A_ana_after"
.endobj str_A_ana_after_las_00015164

# .rodata:0x2D8 | 0x3708 | size: 0xE
.obj str_A_ana_before1_las_00015170, local
	.string "A_ana_before1"
.endobj str_A_ana_before1_las_00015170

# .rodata:0x2E6 | 0x3716 | size: 0x2
.obj gap_03_00003716_rodata, global
.hidden gap_03_00003716_rodata
	.2byte 0x0000
.endobj gap_03_00003716_rodata

# .rodata:0x2E8 | 0x3718 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00015180, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00015180

# .rodata:0x2F6 | 0x3726 | size: 0x2
.obj gap_03_00003726_rodata, global
.hidden gap_03_00003726_rodata
	.2byte 0x0000
.endobj gap_03_00003726_rodata

# .rodata:0x2F8 | 0x3728 | size: 0xE
.obj str_ENV_STG8_LAS8_las_00015190, local
	.string "ENV_STG8_LAS8"
.endobj str_ENV_STG8_LAS8_las_00015190

# .rodata:0x306 | 0x3736 | size: 0x2
.obj gap_03_00003736_rodata, global
.hidden gap_03_00003736_rodata
	.2byte 0x0000
.endobj gap_03_00003736_rodata

# .rodata:0x308 | 0x3738 | size: 0xA
.obj str_S_yukaato_las_000151a0, local
	.string "S_yukaato"
.endobj str_S_yukaato_las_000151a0

# .rodata:0x312 | 0x3742 | size: 0x2
.obj gap_03_00003742_rodata, global
.hidden gap_03_00003742_rodata
	.2byte 0x0000
.endobj gap_03_00003742_rodata

# .rodata:0x314 | 0x3744 | size: 0xA
.obj str_A_yukaato_las_000151ac, local
	.string "A_yukaato"
.endobj str_A_yukaato_las_000151ac

# .rodata:0x31E | 0x374E | size: 0x2
.obj gap_03_0000374E_rodata, global
.hidden gap_03_0000374E_rodata
	.2byte 0x0000
.endobj gap_03_0000374E_rodata

# .rodata:0x320 | 0x3750 | size: 0xA
.obj str_S_yukamae_las_000151b8, local
	.string "S_yukamae"
.endobj str_S_yukamae_las_000151b8

# .rodata:0x32A | 0x375A | size: 0x2
.obj gap_03_0000375A_rodata, global
.hidden gap_03_0000375A_rodata
	.2byte 0x0000
.endobj gap_03_0000375A_rodata

# .rodata:0x32C | 0x375C | size: 0xA
.obj str_A_yukamae_las_000151c4, local
	.string "A_yukamae"
.endobj str_A_yukamae_las_000151c4

# .rodata:0x336 | 0x3766 | size: 0x2
.obj gap_03_00003766_rodata, global
.hidden gap_03_00003766_rodata
	.2byte 0x0000
.endobj gap_03_00003766_rodata

# .rodata:0x338 | 0x3768 | size: 0x8
.obj str_mobj_01_las_000151d0, local
	.string "mobj_01"
.endobj str_mobj_01_las_000151d0

# .rodata:0x340 | 0x3770 | size: 0x8
.obj str_mobj_02_las_000151d8, local
	.string "mobj_02"
.endobj str_mobj_02_las_000151d8

# 0x00011F28..0x00013720 | size: 0x17F8
.data
.balign 8

# .data:0x0 | 0x11F28 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11F30 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11F34 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11F38 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11F3C | size: 0x4
.obj gap_04_00011F3C_data, global
.hidden gap_04_00011F3C_data
	.4byte 0x00000000
.endobj gap_04_00011F3C_data

# .data:0x18 | 0x11F40 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11F48 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11F4C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11F50 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11F58 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11F5C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11F60 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11F64 | size: 0x4
.obj gap_04_00011F64_data, global
.hidden gap_04_00011F64_data
	.4byte 0x00000000
.endobj gap_04_00011F64_data

# .data:0x40 | 0x11F68 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11F70 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11F74 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11F78 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00014e98
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00014ea4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x11FD0 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00014e98
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00014ea4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x12028 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00014eb0
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_25_las_00014eb8
	.4byte str_e_bero_1_las_00014ec0
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_s_bero_las_00014ecc
	.4byte 0x0F000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_las_28_las_00014ed4
	.4byte str_from26_las_00014edc
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
.endobj bero_entry_data

# .data:0x1B4 | 0x120DC | size: 0x78
.obj box_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_00014ee4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key_las_00014ee8
	.4byte 0x00000025
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_las_00014ee4
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_key_las_00014ee8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_evt

# .data:0x22C | 0x12154 | size: 0xCCC
.obj bonbaba_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_set_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE4D
	.4byte 0x00000096
	.4byte 0x000001CB
	.4byte 0xFFFFFE4D
	.4byte 0x00000043
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFDA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFDA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00014e98
	.4byte 0x00000000
	.4byte 0xF2496280
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00014ea4
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0001005E
	.4byte w_door_close
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte w_door_close
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_44_las_00014eec
	.4byte 0x00000000
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_las_00014f04
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
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
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER2_las_00014f1c
	.4byte 0x0000006B
	.4byte 0x000A005B
	.4byte evt_snd_sfxon_3d_ex
	.4byte str_SFX_STG8_GNB_ROAR1_las_00014f2c
	.4byte 0xFFFFFE70
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000010CC
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_U_1_las_00014f40
	.4byte 0x0003005B
	.4byte evt_npc_wait_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_S_1_las_00014f48
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GNB_STEP1_las_00014f50
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000320
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kesu_las_00014f64
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFC7C
	.4byte 0x0000001F
	.4byte 0x000001EA
	.4byte 0xFFFFFF33
	.4byte 0x000000AF
	.4byte 0x00000014
	.4byte 0x00001388
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00001F40
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_45_las_00014f6c
	.4byte 0x00000000
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kesu_las_00014f64
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE4D
	.4byte 0x0000006D
	.4byte 0x00000161
	.4byte 0xFFFFFE4D
	.4byte 0x0000002D
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_46_las_00014f78
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDDF
	.4byte 0xFFFFFFF2
	.4byte 0x000001A1
	.4byte 0xFFFFFF1F
	.4byte 0x000000E3
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_47_las_00014f84
	.4byte 0x00000000
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_archi1_las_00014f90
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004D
	.4byte 0x000001C7
	.4byte 0x0000017C
	.4byte 0xFFFFFF6D
	.4byte 0x00000125
	.4byte 0x000000B7
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_48_las_00014f9c
	.4byte 0x00000000
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFED5
	.4byte 0x00000019
	.4byte 0x000002EC
	.4byte 0xFFFFFEB8
	.4byte 0x00000086
	.4byte 0xFFFFFFDE
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x0000000E
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_archi1_las_00014f90
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0000034D
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0xFFFFFF9C
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_GNB_DOWN1_las_00014fa8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_H_1_las_00014fbc
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x0000000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x00020010
	.4byte 0x0001005B
	.4byte bonbaba_wait_landon
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_H_2_las_00014fc4
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GNB_DOWN2_las_00014fcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7AB3
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x00000032
	.4byte 0x00000005
	.4byte 0x00000032
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000032
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_H_3_las_00014fe0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GNB_DOWN3_las_00014fe8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000FF
	.4byte 0x000000DC
	.4byte 0x00000288
	.4byte 0x000000FF
	.4byte 0x000000AA
	.4byte 0x00000096
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_las_00014ee4
	.4byte 0x0000010E
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte box_evt
	.4byte 0xF8406C89
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_box_las_00014ee4
	.4byte 0x00000040
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GNB_THROAT__las_00014ffc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GMB_MOUTH_M_las_00015018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GMB_MOUTH_M_las_00015018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GMB_MOUTH_M_las_00015018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000044C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_GMB_MOUTH_O_las_00015034
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_H_4_las_00015050
	.4byte 0x0003005B
	.4byte evt_npc_wait_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte 0xF24A7D9E
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_00014ee4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_TBOX_JUMP1_las_00015058
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24B6A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24ADE80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A781A
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF24A7FB3
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte str_box_las_00014ee4
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_mobj_set_z_position
	.4byte str_box_las_00014ee4
	.4byte 0xFE363C83
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF2
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A4280
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F80
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A7880
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_00014ee4
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_TBOX_LANDIN_las_0001506c
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte str_box_las_00014ee4
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ボンババ_las_00014ef8
	.4byte str_GNB_H_3_las_00014fe0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000FF
	.4byte 0x00000069
	.4byte 0x00000288
	.4byte 0x000000FF
	.4byte 0x00000037
	.4byte 0x00000096
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000708
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_las_00015084
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
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
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000184
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_baba_las_0001509c
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte bero_case_entry
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
.endobj bonbaba_evt

# .data:0xEF8 | 0x12E20 | size: 0xF8
.obj bonbaba_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x00000183
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_las_000150a4
	.4byte 0x00000064
	.4byte 0x0000000A
	.4byte 0x0000002D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_las_000150a4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_me_las_000150a4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_me_las_000150a4
	.4byte 0xF24A7FB3
	.4byte 0xF24A7FB3
	.4byte 0xF24A7FB3
	.4byte 0x00010029
	.4byte 0x00000184
	.4byte 0x00020018
	.4byte 0xF8406C9C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_las_000150a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_las_000150a4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_me_las_000150a4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_me_las_000150a4
	.4byte 0xF24A7FB3
	.4byte 0xF24A7FB3
	.4byte 0xF24A7FB3
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_las_000150a4
	.4byte str_GNB_H_3_las_00014fe0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_las_000150a4
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bonbaba_init

# .data:0xFF0 | 0x12F18 | size: 0xB8
.obj npcEnt, local
	.4byte str_ボンババ_las_00014ef8
	.4byte 0x02000240
	.4byte 0x00000000
	.4byte bonbaba_init
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
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x10A8 | 0x12FD0 | size: 0x1D8
.obj sekai_yami_evt, local
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x0000004D
	.4byte 0x00000000
	.4byte 0x00000023
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_クリハカセ_las_000150a8
	.4byte str_c_kuri_h_las_000150b4
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_クリハカセ_las_000150a8
	.4byte str_クリハカセ_las_000150a8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリハカセ_las_000150a8
	.4byte 0xFFFFFFC6
	.4byte 0x00000000
	.4byte 0xFFFFFEE8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリハカセ_las_000150a8
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クリハカセ_las_000150a8
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_CEILING_BRE_las_000150c0
	.4byte 0xFE363C8A
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_hokori_n64_las_000150d8
	.4byte 0x00000000
	.4byte 0xFFFFFFC6
	.4byte 0x000000C8
	.4byte 0xFFFFFEE8
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_クリハカセ_las_000150a8
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_クリハカセ_las_000150a8
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_dark_09_las_000150e4
	.4byte 0x00000000
	.4byte str_クリハカセ_las_000150a8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000010
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_las_29_las_000150f4
	.4byte str_sekai_yami2_las_000150fc
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_evt

# .data:0x1280 | 0x131A8 | size: 0x26C
.obj bomb_wall, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ana_before1_las_00015108
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_WALL_BREAK1_las_00015118
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_las_0001512c
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_ofs_las_0001513c
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_las_00015140
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_00015140
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_las_00015140
	.4byte str_OFF_d_bom_ver2_las_0001512c
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_ana_before1_las_00015108
	.4byte str_ofs_las_0001513c
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox2
	.4byte str_ofs_las_0001513c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_las_00015140
	.4byte 0x00000000
	.4byte str_ofs_las_0001513c
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before_las_00015144
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_after_las_00015154
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_las_00015140
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_00015140
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_las_00015140
	.4byte str_A_1_las_00015160
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_las_00015140
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before_las_00015144
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_after_las_00015154
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_00015140
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_las_00015140
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_ana_before1_las_00015108
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_bom_ver2_las_0001512c
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_ofs_las_0001513c
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_ana_after_las_00015164
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_ana_before1_las_00015170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406C88
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bomb_wall

# .data:0x14EC | 0x13414 | size: 0x308
.obj las_26_init_evt_16_data_13414, global
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000183
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00015180
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS8_las_00015190
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00015180
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020018
	.4byte 0xF8406C88
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_after_las_00015154
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_ana_after_las_00015164
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_ana_before1_las_00015170
	.4byte 0x00000000
	.4byte bomb_wall
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before_las_00015144
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_ana_before1_las_00015170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_yukaato_las_000151a0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_yukaato_las_000151ac
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_yukamae_las_000151b8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_yukamae_las_000151c4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000183
	.4byte 0x0001005C
	.4byte bonbaba_evt
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x00000183
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_baba_las_0001509c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010029
	.4byte 0x00000184
	.4byte 0x00020018
	.4byte 0xF8406C9C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_baba_las_0001509c
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_baba_las_0001509c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_baba_las_0001509c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000184
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_las_00014ee4
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x000000B2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte box_evt
	.4byte 0xF8406C89
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte sekai_yami_evt
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_01_las_000151d0
	.4byte 0x000003E8
	.4byte 0x0000003C
	.4byte 0xFFFFFF6A
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0xF8406CA1
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_02_las_000151d8
	.4byte 0x00000555
	.4byte 0x0000003C
	.4byte 0xFFFFFF6A
	.4byte 0x0000009C
	.4byte 0x00000000
	.4byte 0xF8406CA2
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_26_init_evt_16_data_13414

# .data:0x17F4 | 0x1371C | size: 0x4
.obj gap_04_0001371C_data, global
.hidden gap_04_0001371C_data
	.4byte 0x00000000
.endobj gap_04_0001371C_data
