.include "macros.inc"
.file "tou_05.o"

# 0x00006B1C..0x00006B7C | size: 0x60
.text
.balign 4

# .text:0x0 | 0x6B1C | size: 0x60
.fn gans_msg_callback, local
/* 00006B1C 00006BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006B20 00006BE4  7C 08 02 A6 */	mflr r0
/* 00006B24 00006BE8  2C 03 00 02 */	cmpwi r3, 0x2
/* 00006B28 00006BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006B2C 00006BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006B30 00006BF4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006B34 00006BF8  3C 64 00 01 */	addis r3, r4, 0x1
/* 00006B38 00006BFC  83 E3 F2 00 */	lwz r31, -0xe00(r3)
/* 00006B3C 00006C00  40 82 00 2C */	bne .L_00006B68
/* 00006B40 00006C04  3C 80 FD 05 */	lis r4, 0xfd05
/* 00006B44 00006C08  7F E3 FB 78 */	mr r3, r31
/* 00006B48 00006C0C  38 84 0F 8A */	addi r4, r4, 0xf8a
/* 00006B4C 00006C10  4B FF C8 D1 */	bl evtGetValue
/* 00006B50 00006C14  7C 65 1B 78 */	mr r5, r3
/* 00006B54 00006C18  3C 80 FD 05 */	lis r4, 0xfd05
/* 00006B58 00006C1C  7F E3 FB 78 */	mr r3, r31
/* 00006B5C 00006C20  38 84 0F 8A */	addi r4, r4, 0xf8a
/* 00006B60 00006C24  38 A5 00 01 */	addi r5, r5, 0x1
/* 00006B64 00006C28  4B FF C8 B9 */	bl evtSetValue
.L_00006B68:
/* 00006B68 00006C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006B6C 00006C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00006B70 00006C34  7C 08 03 A6 */	mtlr r0
/* 00006B74 00006C38  38 21 00 10 */	addi r1, r1, 0x10
/* 00006B78 00006C3C  4E 80 00 20 */	blr
.endfn gans_msg_callback

# 0x000054F8..0x00005D38 | size: 0x840
.rodata
.balign 8

# .rodata:0x0 | 0x54F8 | size: 0xB
.obj str_haikikau_2_tou_0000e1b0, local
	.string "haikikau_2"
.endobj str_haikikau_2_tou_0000e1b0

# .rodata:0xB | 0x5503 | size: 0x1
.obj gap_03_00005503_rodata, global
.hidden gap_03_00005503_rodata
	.byte 0x00
.endobj gap_03_00005503_rodata

# .rodata:0xC | 0x5504 | size: 0x1B
.obj str_SFX_STG3_DUCT_KOUSHI_tou_0000e1bc, local
	.string "SFX_STG3_DUCT_KOUSHI_FALL1"
.endobj str_SFX_STG3_DUCT_KOUSHI_tou_0000e1bc

# .rodata:0x27 | 0x551F | size: 0x1
.obj gap_03_0000551F_rodata, global
.hidden gap_03_0000551F_rodata
	.byte 0x00
.endobj gap_03_0000551F_rodata

# .rodata:0x28 | 0x5520 | size: 0xB
.obj str_a_haikikan_tou_0000e1d8, local
	.string "a_haikikan"
.endobj str_a_haikikan_tou_0000e1d8

# .rodata:0x33 | 0x552B | size: 0x1
.obj gap_03_0000552B_rodata, global
.hidden gap_03_0000552B_rodata
	.byte 0x00
.endobj gap_03_0000552B_rodata

# .rodata:0x34 | 0x552C | size: 0xD
.obj str_stg3_tou_456_tou_0000e1e4, local
	.string "stg3_tou_456"
.endobj str_stg3_tou_456_tou_0000e1e4

# .rodata:0x41 | 0x5539 | size: 0x3
.obj gap_03_00005539_rodata, global
.hidden gap_03_00005539_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005539_rodata

# .rodata:0x44 | 0x553C | size: 0x7
.obj str_door_1_tou_0000e1f4, local
	.string "door_1"
.endobj str_door_1_tou_0000e1f4

# .rodata:0x4B | 0x5543 | size: 0x1
.obj gap_03_00005543_rodata, global
.hidden gap_03_00005543_rodata
	.byte 0x00
.endobj gap_03_00005543_rodata

# .rodata:0x4C | 0x5544 | size: 0x1B
.obj str_登録していた試合をリセット_tou_0000e1fc, local
	.4byte 0x936F985E
	.4byte 0x82B582C4
	.4byte 0x82A282BD
	.4byte 0x8E8E8D87
	.4byte 0x82F0838A
	.4byte 0x835A8362
	.byte 0x83, 0x67, 0x00
.endobj str_登録していた試合をリセット_tou_0000e1fc

# .rodata:0x67 | 0x555F | size: 0x1
.obj gap_03_0000555F_rodata, global
.hidden gap_03_0000555F_rodata
	.byte 0x00
.endobj gap_03_0000555F_rodata

# .rodata:0x68 | 0x5560 | size: 0x7
.obj str_n_bero_tou_0000e218, local
	.string "n_bero"
.endobj str_n_bero_tou_0000e218

# .rodata:0x6F | 0x5567 | size: 0x1
.obj gap_03_00005567_rodata, global
.hidden gap_03_00005567_rodata
	.byte 0x00
.endobj gap_03_00005567_rodata

# .rodata:0x70 | 0x5568 | size: 0x7
.obj str_tou_04_tou_0000e220, local
	.string "tou_04"
.endobj str_tou_04_tou_0000e220

# .rodata:0x77 | 0x556F | size: 0x1
.obj gap_03_0000556F_rodata, global
.hidden gap_03_0000556F_rodata
	.byte 0x00
.endobj gap_03_0000556F_rodata

# .rodata:0x78 | 0x5570 | size: 0x9
.obj str_s_bero_5_tou_0000e228, local
	.string "s_bero_5"
.endobj str_s_bero_5_tou_0000e228

# .rodata:0x81 | 0x5579 | size: 0x3
.obj gap_03_00005579_rodata, global
.hidden gap_03_00005579_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005579_rodata

# .rodata:0x84 | 0x557C | size: 0x7
.obj str_w_bero_tou_0000e234, local
	.string "w_bero"
.endobj str_w_bero_tou_0000e234

# .rodata:0x8B | 0x5583 | size: 0x1
.obj gap_03_00005583_rodata, global
.hidden gap_03_00005583_rodata
	.byte 0x00
.endobj gap_03_00005583_rodata

# .rodata:0x8C | 0x5584 | size: 0x7
.obj str_tou_13_tou_0000e23c, local
	.string "tou_13"
.endobj str_tou_13_tou_0000e23c

# .rodata:0x93 | 0x558B | size: 0x1
.obj gap_03_0000558B_rodata, global
.hidden gap_03_0000558B_rodata
	.byte 0x00
.endobj gap_03_0000558B_rodata

# .rodata:0x94 | 0x558C | size: 0x8
.obj str_w_bero_tou_0000e244, local
	.string "w_bero_"
.endobj str_w_bero_tou_0000e244

# .rodata:0x9C | 0x5594 | size: 0x10
.obj str_stg3_tou_456_01_tou_0000e24c, local
	.string "stg3_tou_456_01"
.endobj str_stg3_tou_456_01_tou_0000e24c

# .rodata:0xAC | 0x55A4 | size: 0x6
.obj str_M_L_2_tou_0000e25c, local
	.string "M_L_2"
.endobj str_M_L_2_tou_0000e25c

# .rodata:0xB2 | 0x55AA | size: 0x2
.obj gap_03_000055AA_rodata, global
.hidden gap_03_000055AA_rodata
	.2byte 0x0000
.endobj gap_03_000055AA_rodata

# .rodata:0xB4 | 0x55AC | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_tou_0000e264, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_tou_0000e264

# .rodata:0xD1 | 0x55C9 | size: 0x3
.obj gap_03_000055C9_rodata, global
.hidden gap_03_000055C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000055C9_rodata

# .rodata:0xD4 | 0x55CC | size: 0x6
.obj str_M_S_1_tou_0000e284, local
	.string "M_S_1"
.endobj str_M_S_1_tou_0000e284

# .rodata:0xDA | 0x55D2 | size: 0x2
.obj gap_03_000055D2_rodata, global
.hidden gap_03_000055D2_rodata
	.2byte 0x0000
.endobj gap_03_000055D2_rodata

# .rodata:0xDC | 0x55D4 | size: 0x7
.obj str_kami_2_tou_0000e28c, local
	.string "kami_2"
.endobj str_kami_2_tou_0000e28c

# .rodata:0xE3 | 0x55DB | size: 0x1
.obj gap_03_000055DB_rodata, global
.hidden gap_03_000055DB_rodata
	.byte 0x00
.endobj gap_03_000055DB_rodata

# .rodata:0xE4 | 0x55DC | size: 0xD
.obj str_stg3_tou_458_tou_0000e294, local
	.string "stg3_tou_458"
.endobj str_stg3_tou_458_tou_0000e294

# .rodata:0xF1 | 0x55E9 | size: 0x3
.obj gap_03_000055E9_rodata, global
.hidden gap_03_000055E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000055E9_rodata

# .rodata:0xF4 | 0x55EC | size: 0x7
.obj str_ガンス_tou_0000e2a4, local
	.4byte 0x834B8393
	.byte 0x83, 0x58, 0x00
.endobj str_ガンス_tou_0000e2a4

# .rodata:0xFB | 0x55F3 | size: 0x1
.obj gap_03_000055F3_rodata, global
.hidden gap_03_000055F3_rodata
	.byte 0x00
.endobj gap_03_000055F3_rodata

# .rodata:0xFC | 0x55F4 | size: 0x6
.obj str_mario_tou_0000e2ac, local
	.string "mario"
.endobj str_mario_tou_0000e2ac

# .rodata:0x102 | 0x55FA | size: 0x2
.obj gap_03_000055FA_rodata, global
.hidden gap_03_000055FA_rodata
	.2byte 0x0000
.endobj gap_03_000055FA_rodata

# .rodata:0x104 | 0x55FC | size: 0xD
.obj str_stg3_tou_459_tou_0000e2b4, local
	.string "stg3_tou_459"
.endobj str_stg3_tou_459_tou_0000e2b4

# .rodata:0x111 | 0x5609 | size: 0x3
.obj gap_03_00005609_rodata, global
.hidden gap_03_00005609_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005609_rodata

# .rodata:0x114 | 0x560C | size: 0xD
.obj str_stg3_tou_460_tou_0000e2c4, local
	.string "stg3_tou_460"
.endobj str_stg3_tou_460_tou_0000e2c4

# .rodata:0x121 | 0x5619 | size: 0x3
.obj gap_03_00005619_rodata, global
.hidden gap_03_00005619_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005619_rodata

# .rodata:0x124 | 0x561C | size: 0xD
.obj str_stg3_tou_461_tou_0000e2d4, local
	.string "stg3_tou_461"
.endobj str_stg3_tou_461_tou_0000e2d4

# .rodata:0x131 | 0x5629 | size: 0x3
.obj gap_03_00005629_rodata, global
.hidden gap_03_00005629_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005629_rodata

# .rodata:0x134 | 0x562C | size: 0xD
.obj str_stg3_tou_462_tou_0000e2e4, local
	.string "stg3_tou_462"
.endobj str_stg3_tou_462_tou_0000e2e4

# .rodata:0x141 | 0x5639 | size: 0x3
.obj gap_03_00005639_rodata, global
.hidden gap_03_00005639_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005639_rodata

# .rodata:0x144 | 0x563C | size: 0x16
.obj str_SFX_STG3_DRAWER_SHUT_tou_0000e2f4, local
	.string "SFX_STG3_DRAWER_SHUT1"
.endobj str_SFX_STG3_DRAWER_SHUT_tou_0000e2f4

# .rodata:0x15A | 0x5652 | size: 0x2
.obj gap_03_00005652_rodata, global
.hidden gap_03_00005652_rodata
	.2byte 0x0000
.endobj gap_03_00005652_rodata

# .rodata:0x15C | 0x5654 | size: 0xB
.obj str_hikidasi_H_tou_0000e30c, local
	.string "hikidasi_H"
.endobj str_hikidasi_H_tou_0000e30c

# .rodata:0x167 | 0x565F | size: 0x1
.obj gap_03_0000565F_rodata, global
.hidden gap_03_0000565F_rodata
	.byte 0x00
.endobj gap_03_0000565F_rodata

# .rodata:0x168 | 0x5660 | size: 0x16
.obj str_SFX_STG3_DRAWER_OPEN_tou_0000e318, local
	.string "SFX_STG3_DRAWER_OPEN1"
.endobj str_SFX_STG3_DRAWER_OPEN_tou_0000e318

# .rodata:0x17E | 0x5676 | size: 0x2
.obj gap_03_00005676_rodata, global
.hidden gap_03_00005676_rodata
	.2byte 0x0000
.endobj gap_03_00005676_rodata

# .rodata:0x180 | 0x5678 | size: 0xB
.obj str_hikidasi_N_tou_0000e330, local
	.string "hikidasi_N"
.endobj str_hikidasi_N_tou_0000e330

# .rodata:0x18B | 0x5683 | size: 0x1
.obj gap_03_00005683_rodata, global
.hidden gap_03_00005683_rodata
	.byte 0x00
.endobj gap_03_00005683_rodata

# .rodata:0x18C | 0x5684 | size: 0x7
.obj str_item02_tou_0000e33c, local
	.string "item02"
.endobj str_item02_tou_0000e33c

# .rodata:0x193 | 0x568B | size: 0x1
.obj gap_03_0000568B_rodata, global
.hidden gap_03_0000568B_rodata
	.byte 0x00
.endobj gap_03_0000568B_rodata

# .rodata:0x194 | 0x568C | size: 0x3
.obj str_me_tou_0000e344, local
	.string "me"
.endobj str_me_tou_0000e344

# .rodata:0x197 | 0x568F | size: 0x1
.obj gap_03_0000568F_rodata, global
.hidden gap_03_0000568F_rodata
	.byte 0x00
.endobj gap_03_0000568F_rodata

# .rodata:0x198 | 0x5690 | size: 0xC
.obj str_stg3_tou_54_tou_0000e348, local
	.string "stg3_tou_54"
.endobj str_stg3_tou_54_tou_0000e348

# .rodata:0x1A4 | 0x569C | size: 0xF
.obj str_stg3_tou_52_yn_tou_0000e354, local
	.string "stg3_tou_52_yn"
.endobj str_stg3_tou_52_yn_tou_0000e354

# .rodata:0x1B3 | 0x56AB | size: 0x1
.obj gap_03_000056AB_rodata, global
.hidden gap_03_000056AB_rodata
	.byte 0x00
.endobj gap_03_000056AB_rodata

# .rodata:0x1B4 | 0x56AC | size: 0xC
.obj str_stg3_tou_53_tou_0000e364, local
	.string "stg3_tou_53"
.endobj str_stg3_tou_53_tou_0000e364

# .rodata:0x1C0 | 0x56B8 | size: 0x7
.obj str_kami_1_tou_0000e370, local
	.string "kami_1"
.endobj str_kami_1_tou_0000e370

# .rodata:0x1C7 | 0x56BF | size: 0x1
.obj gap_03_000056BF_rodata, global
.hidden gap_03_000056BF_rodata
	.byte 0x00
.endobj gap_03_000056BF_rodata

# .rodata:0x1C8 | 0x56C0 | size: 0xC
.obj str_stg3_tou_55_tou_0000e378, local
	.string "stg3_tou_55"
.endobj str_stg3_tou_55_tou_0000e378

# .rodata:0x1D4 | 0x56CC | size: 0xF
.obj str_stg3_tou_55_01_tou_0000e384, local
	.string "stg3_tou_55_01"
.endobj str_stg3_tou_55_01_tou_0000e384

# .rodata:0x1E3 | 0x56DB | size: 0x1
.obj gap_03_000056DB_rodata, global
.hidden gap_03_000056DB_rodata
	.byte 0x00
.endobj gap_03_000056DB_rodata

# .rodata:0x1E4 | 0x56DC | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_tou_0000e394, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000e394

# .rodata:0x1FC | 0x56F4 | size: 0x7
.obj str_M_N_5B_tou_0000e3ac, local
	.string "M_N_5B"
.endobj str_M_N_5B_tou_0000e3ac

# .rodata:0x203 | 0x56FB | size: 0x1
.obj gap_03_000056FB_rodata, global
.hidden gap_03_000056FB_rodata
	.byte 0x00
.endobj gap_03_000056FB_rodata

# .rodata:0x204 | 0x56FC | size: 0x6
.obj str_M_I_G_tou_0000e3b4, local
	.string "M_I_G"
.endobj str_M_I_G_tou_0000e3b4

# .rodata:0x20A | 0x5702 | size: 0x2
.obj gap_03_00005702_rodata, global
.hidden gap_03_00005702_rodata
	.2byte 0x0000
.endobj gap_03_00005702_rodata

# .rodata:0x20C | 0x5704 | size: 0xC
.obj str_stg3_tou_56_tou_0000e3bc, local
	.string "stg3_tou_56"
.endobj str_stg3_tou_56_tou_0000e3bc

# .rodata:0x218 | 0x5710 | size: 0x2
.obj str_a_tou_0000e3c8, local
	.string "a"
.endobj str_a_tou_0000e3c8

# .rodata:0x21A | 0x5712 | size: 0x2
.obj gap_03_00005712_rodata, global
.hidden gap_03_00005712_rodata
	.2byte 0x0000
.endobj gap_03_00005712_rodata

# .rodata:0x21C | 0x5714 | size: 0xB
.obj str_キノシコワ_tou_0000e3cc, local
	.4byte 0x834C836D
	.4byte 0x83568352
	.byte 0x83, 0x8F, 0x00
.endobj str_キノシコワ_tou_0000e3cc

# .rodata:0x227 | 0x571F | size: 0x1
.obj gap_03_0000571F_rodata, global
.hidden gap_03_0000571F_rodata
	.byte 0x00
.endobj gap_03_0000571F_rodata

# .rodata:0x228 | 0x5720 | size: 0xD
.obj str_irai_13_03_b_tou_0000e3d8, local
	.string "irai_13_03_b"
.endobj str_irai_13_03_b_tou_0000e3d8

# .rodata:0x235 | 0x572D | size: 0x3
.obj gap_03_0000572D_rodata, global
.hidden gap_03_0000572D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000572D_rodata

# .rodata:0x238 | 0x5730 | size: 0xB
.obj str_irai_13_04_tou_0000e3e8, local
	.string "irai_13_04"
.endobj str_irai_13_04_tou_0000e3e8

# .rodata:0x243 | 0x573B | size: 0x1
.obj gap_03_0000573B_rodata, global
.hidden gap_03_0000573B_rodata
	.byte 0x00
.endobj gap_03_0000573B_rodata

# .rodata:0x244 | 0x573C | size: 0xB
.obj str_irai_13_00_tou_0000e3f4, local
	.string "irai_13_00"
.endobj str_irai_13_00_tou_0000e3f4

# .rodata:0x24F | 0x5747 | size: 0x1
.obj gap_03_00005747_rodata, global
.hidden gap_03_00005747_rodata
	.byte 0x00
.endobj gap_03_00005747_rodata

# .rodata:0x250 | 0x5748 | size: 0xB
.obj str_irai_13_02_tou_0000e400, local
	.string "irai_13_02"
.endobj str_irai_13_02_tou_0000e400

# .rodata:0x25B | 0x5753 | size: 0x1
.obj gap_03_00005753_rodata, global
.hidden gap_03_00005753_rodata
	.byte 0x00
.endobj gap_03_00005753_rodata

# .rodata:0x25C | 0x5754 | size: 0xB
.obj str_irai_13_03_tou_0000e40c, local
	.string "irai_13_03"
.endobj str_irai_13_03_tou_0000e40c

# .rodata:0x267 | 0x575F | size: 0x1
.obj gap_03_0000575F_rodata, global
.hidden gap_03_0000575F_rodata
	.byte 0x00
.endobj gap_03_0000575F_rodata

# .rodata:0x268 | 0x5760 | size: 0x4
.obj str_M_1_tou_0000e418, local
	.string "M_1"
.endobj str_M_1_tou_0000e418

# .rodata:0x26C | 0x5764 | size: 0xB
.obj str_irai_13_05_tou_0000e41c, local
	.string "irai_13_05"
.endobj str_irai_13_05_tou_0000e41c

# .rodata:0x277 | 0x576F | size: 0x1
.obj gap_03_0000576F_rodata, global
.hidden gap_03_0000576F_rodata
	.byte 0x00
.endobj gap_03_0000576F_rodata

# .rodata:0x278 | 0x5770 | size: 0x13
.obj str_sys_request_finish_tou_0000e428, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_tou_0000e428

# .rodata:0x28B | 0x5783 | size: 0x1
.obj gap_03_00005783_rodata, global
.hidden gap_03_00005783_rodata
	.byte 0x00
.endobj gap_03_00005783_rodata

# .rodata:0x28C | 0x5784 | size: 0xB
.obj str_irai_23_03_tou_0000e43c, local
	.string "irai_23_03"
.endobj str_irai_23_03_tou_0000e43c

# .rodata:0x297 | 0x578F | size: 0x1
.obj gap_03_0000578F_rodata, global
.hidden gap_03_0000578F_rodata
	.byte 0x00
.endobj gap_03_0000578F_rodata

# .rodata:0x298 | 0x5790 | size: 0xB
.obj str_irai_23_00_tou_0000e448, local
	.string "irai_23_00"
.endobj str_irai_23_00_tou_0000e448

# .rodata:0x2A3 | 0x579B | size: 0x1
.obj gap_03_0000579B_rodata, global
.hidden gap_03_0000579B_rodata
	.byte 0x00
.endobj gap_03_0000579B_rodata

# .rodata:0x2A4 | 0x579C | size: 0x6
.obj str_M_N_3_tou_0000e454, local
	.string "M_N_3"
.endobj str_M_N_3_tou_0000e454

# .rodata:0x2AA | 0x57A2 | size: 0x2
.obj gap_03_000057A2_rodata, global
.hidden gap_03_000057A2_rodata
	.2byte 0x0000
.endobj gap_03_000057A2_rodata

# .rodata:0x2AC | 0x57A4 | size: 0x6
.obj str_M_I_2_tou_0000e45c, local
	.string "M_I_2"
.endobj str_M_I_2_tou_0000e45c

# .rodata:0x2B2 | 0x57AA | size: 0x2
.obj gap_03_000057AA_rodata, global
.hidden gap_03_000057AA_rodata
	.2byte 0x0000
.endobj gap_03_000057AA_rodata

# .rodata:0x2B4 | 0x57AC | size: 0xB
.obj str_irai_23_01_tou_0000e464, local
	.string "irai_23_01"
.endobj str_irai_23_01_tou_0000e464

# .rodata:0x2BF | 0x57B7 | size: 0x1
.obj gap_03_000057B7_rodata, global
.hidden gap_03_000057B7_rodata
	.byte 0x00
.endobj gap_03_000057B7_rodata

# .rodata:0x2C0 | 0x57B8 | size: 0xB
.obj str_irai_23_02_tou_0000e470, local
	.string "irai_23_02"
.endobj str_irai_23_02_tou_0000e470

# .rodata:0x2CB | 0x57C3 | size: 0x1
.obj gap_03_000057C3_rodata, global
.hidden gap_03_000057C3_rodata
	.byte 0x00
.endobj gap_03_000057C3_rodata

# .rodata:0x2CC | 0x57C4 | size: 0x3
.obj str_pm_tou_0000e47c, local
	.string "pm"
.endobj str_pm_tou_0000e47c

# .rodata:0x2CF | 0x57C7 | size: 0x1
.obj gap_03_000057C7_rodata, global
.hidden gap_03_000057C7_rodata
	.byte 0x00
.endobj gap_03_000057C7_rodata

# .rodata:0x2D0 | 0x57C8 | size: 0x10
.obj str_stg3_tou_re_008_tou_0000e480, local
	.string "stg3_tou_re_008"
.endobj str_stg3_tou_re_008_tou_0000e480

# .rodata:0x2E0 | 0x57D8 | size: 0xC
.obj str_stg3_tou_57_tou_0000e490, local
	.string "stg3_tou_57"
.endobj str_stg3_tou_57_tou_0000e490

# .rodata:0x2EC | 0x57E4 | size: 0x4
.obj str_S_1_tou_0000e49c, local
	.string "S_1"
.endobj str_S_1_tou_0000e49c

# .rodata:0x2F0 | 0x57E8 | size: 0xC
.obj str_stg3_tou_58_tou_0000e4a0, local
	.string "stg3_tou_58"
.endobj str_stg3_tou_58_tou_0000e4a0

# .rodata:0x2FC | 0x57F4 | size: 0xC
.obj str_stg3_tou_59_tou_0000e4ac, local
	.string "stg3_tou_59"
.endobj str_stg3_tou_59_tou_0000e4ac

# .rodata:0x308 | 0x5800 | size: 0xC
.obj str_stg3_tou_60_tou_0000e4b8, local
	.string "stg3_tou_60"
.endobj str_stg3_tou_60_tou_0000e4b8

# .rodata:0x314 | 0x580C | size: 0xC
.obj str_stg3_tou_61_tou_0000e4c4, local
	.string "stg3_tou_61"
.endobj str_stg3_tou_61_tou_0000e4c4

# .rodata:0x320 | 0x5818 | size: 0x14
.obj str_BGM_EVT_STG3_GANCE1_tou_0000e4d0, local
	.string "BGM_EVT_STG3_GANCE1"
.endobj str_BGM_EVT_STG3_GANCE1_tou_0000e4d0

# .rodata:0x334 | 0x582C | size: 0x4
.obj str_eff_tou_0000e4e4, local
	.string "eff"
.endobj str_eff_tou_0000e4e4

# .rodata:0x338 | 0x5830 | size: 0xC
.obj str_stg3_tou_43_tou_0000e4e8, local
	.string "stg3_tou_43"
.endobj str_stg3_tou_43_tou_0000e4e8

# .rodata:0x344 | 0x583C | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_tou_0000e4f4, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_tou_0000e4f4

# .rodata:0x35F | 0x5857 | size: 0x1
.obj gap_03_00005857_rodata, global
.hidden gap_03_00005857_rodata
	.byte 0x00
.endobj gap_03_00005857_rodata

# .rodata:0x360 | 0x5858 | size: 0xC
.obj str_stg3_tou_44_tou_0000e510, local
	.string "stg3_tou_44"
.endobj str_stg3_tou_44_tou_0000e510

# .rodata:0x36C | 0x5864 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_tou_0000e51c, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_tou_0000e51c

# .rodata:0x383 | 0x587B | size: 0x1
.obj gap_03_0000587B_rodata, global
.hidden gap_03_0000587B_rodata
	.byte 0x00
.endobj gap_03_0000587B_rodata

# .rodata:0x384 | 0x587C | size: 0x6
.obj str_M_N_2_tou_0000e534, local
	.string "M_N_2"
.endobj str_M_N_2_tou_0000e534

# .rodata:0x38A | 0x5882 | size: 0x2
.obj gap_03_00005882_rodata, global
.hidden gap_03_00005882_rodata
	.2byte 0x0000
.endobj gap_03_00005882_rodata

# .rodata:0x38C | 0x5884 | size: 0xC
.obj str_stg3_tou_45_tou_0000e53c, local
	.string "stg3_tou_45"
.endobj str_stg3_tou_45_tou_0000e53c

# .rodata:0x398 | 0x5890 | size: 0xF
.obj str_stg3_tou_45_yn_tou_0000e548, local
	.string "stg3_tou_45_yn"
.endobj str_stg3_tou_45_yn_tou_0000e548

# .rodata:0x3A7 | 0x589F | size: 0x1
.obj gap_03_0000589F_rodata, global
.hidden gap_03_0000589F_rodata
	.byte 0x00
.endobj gap_03_0000589F_rodata

# .rodata:0x3A8 | 0x58A0 | size: 0xF
.obj str_stg3_tou_46_00_tou_0000e558, local
	.string "stg3_tou_46_00"
.endobj str_stg3_tou_46_00_tou_0000e558

# .rodata:0x3B7 | 0x58AF | size: 0x1
.obj gap_03_000058AF_rodata, global
.hidden gap_03_000058AF_rodata
	.byte 0x00
.endobj gap_03_000058AF_rodata

# .rodata:0x3B8 | 0x58B0 | size: 0x12
.obj str_stg3_tou_46_00_01_tou_0000e568, local
	.string "stg3_tou_46_00_01"
.endobj str_stg3_tou_46_00_01_tou_0000e568

# .rodata:0x3CA | 0x58C2 | size: 0x2
.obj gap_03_000058C2_rodata, global
.hidden gap_03_000058C2_rodata
	.2byte 0x0000
.endobj gap_03_000058C2_rodata

# .rodata:0x3CC | 0x58C4 | size: 0xF
.obj str_stg3_tou_46_01_tou_0000e57c, local
	.string "stg3_tou_46_01"
.endobj str_stg3_tou_46_01_tou_0000e57c

# .rodata:0x3DB | 0x58D3 | size: 0x1
.obj gap_03_000058D3_rodata, global
.hidden gap_03_000058D3_rodata
	.byte 0x00
.endobj gap_03_000058D3_rodata

# .rodata:0x3DC | 0x58D4 | size: 0xF
.obj str_stg3_tou_46_02_tou_0000e58c, local
	.string "stg3_tou_46_02"
.endobj str_stg3_tou_46_02_tou_0000e58c

# .rodata:0x3EB | 0x58E3 | size: 0x1
.obj gap_03_000058E3_rodata, global
.hidden gap_03_000058E3_rodata
	.byte 0x00
.endobj gap_03_000058E3_rodata

# .rodata:0x3EC | 0x58E4 | size: 0xF
.obj str_stg3_tou_46_03_tou_0000e59c, local
	.string "stg3_tou_46_03"
.endobj str_stg3_tou_46_03_tou_0000e59c

# .rodata:0x3FB | 0x58F3 | size: 0x1
.obj gap_03_000058F3_rodata, global
.hidden gap_03_000058F3_rodata
	.byte 0x00
.endobj gap_03_000058F3_rodata

# .rodata:0x3FC | 0x58F4 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_tou_0000e5ac, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000e5ac

# .rodata:0x414 | 0x590C | size: 0xC
.obj str_stg3_tou_47_tou_0000e5c4, local
	.string "stg3_tou_47"
.endobj str_stg3_tou_47_tou_0000e5c4

# .rodata:0x420 | 0x5918 | size: 0xC
.obj str_stg3_tou_51_tou_0000e5d0, local
	.string "stg3_tou_51"
.endobj str_stg3_tou_51_tou_0000e5d0

# .rodata:0x42C | 0x5924 | size: 0xC
.obj str_stg3_tou_52_tou_0000e5dc, local
	.string "stg3_tou_52"
.endobj str_stg3_tou_52_tou_0000e5dc

# .rodata:0x438 | 0x5930 | size: 0xA
.obj str_a_p_tukue_tou_0000e5e8, local
	.string "a_p_tukue"
.endobj str_a_p_tukue_tou_0000e5e8

# .rodata:0x442 | 0x593A | size: 0x2
.obj gap_03_0000593A_rodata, global
.hidden gap_03_0000593A_rodata
	.2byte 0x0000
.endobj gap_03_0000593A_rodata

# .rodata:0x444 | 0x593C | size: 0xD
.obj str_a_hikidasi_H_tou_0000e5f4, local
	.string "a_hikidasi_H"
.endobj str_a_hikidasi_H_tou_0000e5f4

# .rodata:0x451 | 0x5949 | size: 0x3
.obj gap_03_00005949_rodata, global
.hidden gap_03_00005949_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005949_rodata

# .rodata:0x454 | 0x594C | size: 0xD
.obj str_stg3_tou_287_tou_0000e604, local
	.string "stg3_tou_287"
.endobj str_stg3_tou_287_tou_0000e604

# .rodata:0x461 | 0x5959 | size: 0x3
.obj gap_03_00005959_rodata, global
.hidden gap_03_00005959_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005959_rodata

# .rodata:0x464 | 0x595C | size: 0xD
.obj str_stg3_tou_288_tou_0000e614, local
	.string "stg3_tou_288"
.endobj str_stg3_tou_288_tou_0000e614

# .rodata:0x471 | 0x5969 | size: 0x3
.obj gap_03_00005969_rodata, global
.hidden gap_03_00005969_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005969_rodata

# .rodata:0x474 | 0x596C | size: 0xD
.obj str_stg3_tou_289_tou_0000e624, local
	.string "stg3_tou_289"
.endobj str_stg3_tou_289_tou_0000e624

# .rodata:0x481 | 0x5979 | size: 0x3
.obj gap_03_00005979_rodata, global
.hidden gap_03_00005979_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005979_rodata

# .rodata:0x484 | 0x597C | size: 0xD
.obj str_stg3_tou_290_tou_0000e634, local
	.string "stg3_tou_290"
.endobj str_stg3_tou_290_tou_0000e634

# .rodata:0x491 | 0x5989 | size: 0x3
.obj gap_03_00005989_rodata, global
.hidden gap_03_00005989_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005989_rodata

# .rodata:0x494 | 0x598C | size: 0xD
.obj str_stg3_tou_291_tou_0000e644, local
	.string "stg3_tou_291"
.endobj str_stg3_tou_291_tou_0000e644

# .rodata:0x4A1 | 0x5999 | size: 0x3
.obj gap_03_00005999_rodata, global
.hidden gap_03_00005999_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005999_rodata

# .rodata:0x4A4 | 0x599C | size: 0x6
.obj str_M_I_U_tou_0000e654, local
	.string "M_I_U"
.endobj str_M_I_U_tou_0000e654

# .rodata:0x4AA | 0x59A2 | size: 0x2
.obj gap_03_000059A2_rodata, global
.hidden gap_03_000059A2_rodata
	.2byte 0x0000
.endobj gap_03_000059A2_rodata

# .rodata:0x4AC | 0x59A4 | size: 0x5
.obj str_coin_tou_0000e65c, local
	.string "coin"
.endobj str_coin_tou_0000e65c

# .rodata:0x4B1 | 0x59A9 | size: 0x3
.obj gap_03_000059A9_rodata, global
.hidden gap_03_000059A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059A9_rodata

# .rodata:0x4B4 | 0x59AC | size: 0x10
.obj str_stg3_tou_292_02_tou_0000e664, local
	.string "stg3_tou_292_02"
.endobj str_stg3_tou_292_02_tou_0000e664

# .rodata:0x4C4 | 0x59BC | size: 0xD
.obj str_stg3_tou_292_tou_0000e674, local
	.string "stg3_tou_292"
.endobj str_stg3_tou_292_tou_0000e674

# .rodata:0x4D1 | 0x59C9 | size: 0x3
.obj gap_03_000059C9_rodata, global
.hidden gap_03_000059C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059C9_rodata

# .rodata:0x4D4 | 0x59CC | size: 0xD
.obj str_stg3_tou_293_tou_0000e684, local
	.string "stg3_tou_293"
.endobj str_stg3_tou_293_tou_0000e684

# .rodata:0x4E1 | 0x59D9 | size: 0x3
.obj gap_03_000059D9_rodata, global
.hidden gap_03_000059D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059D9_rodata

# .rodata:0x4E4 | 0x59DC | size: 0x10
.obj str_stg3_tou_316_03_tou_0000e694, local
	.string "stg3_tou_316_03"
.endobj str_stg3_tou_316_03_tou_0000e694

# .rodata:0x4F4 | 0x59EC | size: 0x10
.obj str_stg3_tou_316_04_tou_0000e6a4, local
	.string "stg3_tou_316_04"
.endobj str_stg3_tou_316_04_tou_0000e6a4

# .rodata:0x504 | 0x59FC | size: 0xB
.obj str_OFF_d_meku_tou_0000e6b4, local
	.string "OFF_d_meku"
.endobj str_OFF_d_meku_tou_0000e6b4

# .rodata:0x50F | 0x5A07 | size: 0x1
.obj gap_03_00005A07_rodata, global
.hidden gap_03_00005A07_rodata
	.byte 0x00
.endobj gap_03_00005A07_rodata

# .rodata:0x510 | 0x5A08 | size: 0x4
.obj str_img_tou_0000e6c0, local
	.string "img"
.endobj str_img_tou_0000e6c0

# .rodata:0x514 | 0x5A0C | size: 0x4
.obj str_ofs_tou_0000e6c4, local
	.string "ofs"
.endobj str_ofs_tou_0000e6c4

# .rodata:0x518 | 0x5A10 | size: 0x7
.obj str_kuro_P_tou_0000e6c8, local
	.string "kuro_P"
.endobj str_kuro_P_tou_0000e6c8

# .rodata:0x51F | 0x5A17 | size: 0x1
.obj gap_03_00005A17_rodata, global
.hidden gap_03_00005A17_rodata
	.byte 0x00
.endobj gap_03_00005A17_rodata

# .rodata:0x520 | 0x5A18 | size: 0x4
.obj str_A_1_tou_0000e6d0, local
	.string "A_1"
.endobj str_A_1_tou_0000e6d0

# .rodata:0x524 | 0x5A1C | size: 0x14
.obj str_SFX_OFF3_VIEW_ROOM1_tou_0000e6d4, local
	.string "SFX_OFF3_VIEW_ROOM1"
.endobj str_SFX_OFF3_VIEW_ROOM1_tou_0000e6d4

# .rodata:0x538 | 0x5A30 | size: 0x10
.obj str_stg3_tou_316_05_tou_0000e6e8, local
	.string "stg3_tou_316_05"
.endobj str_stg3_tou_316_05_tou_0000e6e8

# .rodata:0x548 | 0x5A40 | size: 0x10
.obj str_stg3_tou_316_06_tou_0000e6f8, local
	.string "stg3_tou_316_06"
.endobj str_stg3_tou_316_06_tou_0000e6f8

# .rodata:0x558 | 0x5A50 | size: 0x10
.obj str_stg3_tou_316_07_tou_0000e708, local
	.string "stg3_tou_316_07"
.endobj str_stg3_tou_316_07_tou_0000e708

# .rodata:0x568 | 0x5A60 | size: 0x10
.obj str_stg3_tou_316_08_tou_0000e718, local
	.string "stg3_tou_316_08"
.endobj str_stg3_tou_316_08_tou_0000e718

# .rodata:0x578 | 0x5A70 | size: 0x10
.obj str_stg3_tou_316_09_tou_0000e728, local
	.string "stg3_tou_316_09"
.endobj str_stg3_tou_316_09_tou_0000e728

# .rodata:0x588 | 0x5A80 | size: 0x10
.obj str_stg3_tou_316_10_tou_0000e738, local
	.string "stg3_tou_316_10"
.endobj str_stg3_tou_316_10_tou_0000e738

# .rodata:0x598 | 0x5A90 | size: 0x10
.obj str_stg3_tou_316_11_tou_0000e748, local
	.string "stg3_tou_316_11"
.endobj str_stg3_tou_316_11_tou_0000e748

# .rodata:0x5A8 | 0x5AA0 | size: 0x10
.obj str_stg3_tou_316_12_tou_0000e758, local
	.string "stg3_tou_316_12"
.endobj str_stg3_tou_316_12_tou_0000e758

# .rodata:0x5B8 | 0x5AB0 | size: 0x10
.obj str_stg3_tou_316_13_tou_0000e768, local
	.string "stg3_tou_316_13"
.endobj str_stg3_tou_316_13_tou_0000e768

# .rodata:0x5C8 | 0x5AC0 | size: 0x10
.obj str_stg3_tou_316_14_tou_0000e778, local
	.string "stg3_tou_316_14"
.endobj str_stg3_tou_316_14_tou_0000e778

# .rodata:0x5D8 | 0x5AD0 | size: 0x10
.obj str_stg3_tou_316_15_tou_0000e788, local
	.string "stg3_tou_316_15"
.endobj str_stg3_tou_316_15_tou_0000e788

# .rodata:0x5E8 | 0x5AE0 | size: 0x10
.obj str_stg3_tou_316_16_tou_0000e798, local
	.string "stg3_tou_316_16"
.endobj str_stg3_tou_316_16_tou_0000e798

# .rodata:0x5F8 | 0x5AF0 | size: 0x10
.obj str_stg3_tou_316_17_tou_0000e7a8, local
	.string "stg3_tou_316_17"
.endobj str_stg3_tou_316_17_tou_0000e7a8

# .rodata:0x608 | 0x5B00 | size: 0xD
.obj str_stg3_tou_320_tou_0000e7b8, local
	.string "stg3_tou_320"
.endobj str_stg3_tou_320_tou_0000e7b8

# .rodata:0x615 | 0x5B0D | size: 0x3
.obj gap_03_00005B0D_rodata, global
.hidden gap_03_00005B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B0D_rodata

# .rodata:0x618 | 0x5B10 | size: 0xD
.obj str_stg3_tou_321_tou_0000e7c8, local
	.string "stg3_tou_321"
.endobj str_stg3_tou_321_tou_0000e7c8

# .rodata:0x625 | 0x5B1D | size: 0x3
.obj gap_03_00005B1D_rodata, global
.hidden gap_03_00005B1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B1D_rodata

# .rodata:0x628 | 0x5B20 | size: 0x15
.obj str_SFX_VOICE_MARIO_NOD1_tou_0000e7d8, local
	.string "SFX_VOICE_MARIO_NOD1"
.endobj str_SFX_VOICE_MARIO_NOD1_tou_0000e7d8

# .rodata:0x63D | 0x5B35 | size: 0x3
.obj gap_03_00005B35_rodata, global
.hidden gap_03_00005B35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B35_rodata

# .rodata:0x640 | 0x5B38 | size: 0xD
.obj str_stg3_tou_322_tou_0000e7f0, local
	.string "stg3_tou_322"
.endobj str_stg3_tou_322_tou_0000e7f0

# .rodata:0x64D | 0x5B45 | size: 0x3
.obj gap_03_00005B45_rodata, global
.hidden gap_03_00005B45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B45_rodata

# .rodata:0x650 | 0x5B48 | size: 0x10
.obj str_stg3_tou_322_yn_tou_0000e800, local
	.string "stg3_tou_322_yn"
.endobj str_stg3_tou_322_yn_tou_0000e800

# .rodata:0x660 | 0x5B58 | size: 0x11
.obj str_stg3_tou_323_kur_tou_0000e810, local
	.string "stg3_tou_323_kur"
.endobj str_stg3_tou_323_kur_tou_0000e810

# .rodata:0x671 | 0x5B69 | size: 0x3
.obj gap_03_00005B69_rodata, global
.hidden gap_03_00005B69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B69_rodata

# .rodata:0x674 | 0x5B6C | size: 0xD
.obj str_stg3_tou_325_tou_0000e824, local
	.string "stg3_tou_325"
.endobj str_stg3_tou_325_tou_0000e824

# .rodata:0x681 | 0x5B79 | size: 0x3
.obj gap_03_00005B79_rodata, global
.hidden gap_03_00005B79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B79_rodata

# .rodata:0x684 | 0x5B7C | size: 0x11
.obj str_stg3_tou_324_kur_tou_0000e834, local
	.string "stg3_tou_324_kur"
.endobj str_stg3_tou_324_kur_tou_0000e834

# .rodata:0x695 | 0x5B8D | size: 0x3
.obj gap_03_00005B8D_rodata, global
.hidden gap_03_00005B8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B8D_rodata

# .rodata:0x698 | 0x5B90 | size: 0x10
.obj str_stg3_tou_325_01_tou_0000e848, local
	.string "stg3_tou_325_01"
.endobj str_stg3_tou_325_01_tou_0000e848

# .rodata:0x6A8 | 0x5BA0 | size: 0x14
.obj str_stg3_tou_324_01_kur_tou_0000e858, local
	.string "stg3_tou_324_01_kur"
.endobj str_stg3_tou_324_01_kur_tou_0000e858

# .rodata:0x6BC | 0x5BB4 | size: 0x10
.obj str_stg3_tou_325_02_tou_0000e86c, local
	.string "stg3_tou_325_02"
.endobj str_stg3_tou_325_02_tou_0000e86c

# .rodata:0x6CC | 0x5BC4 | size: 0x14
.obj str_SFX_OFF3_VIEW_ROOM2_tou_0000e87c, local
	.string "SFX_OFF3_VIEW_ROOM2"
.endobj str_SFX_OFF3_VIEW_ROOM2_tou_0000e87c

# .rodata:0x6E0 | 0x5BD8 | size: 0x4
.obj str_A_2_tou_0000e890, local
	.string "A_2"
.endobj str_A_2_tou_0000e890

# .rodata:0x6E4 | 0x5BDC | size: 0xD
.obj str_stg3_tou_326_tou_0000e894, local
	.string "stg3_tou_326"
.endobj str_stg3_tou_326_tou_0000e894

# .rodata:0x6F1 | 0x5BE9 | size: 0x3
.obj gap_03_00005BE9_rodata, global
.hidden gap_03_00005BE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005BE9_rodata

# .rodata:0x6F4 | 0x5BEC | size: 0x1
.obj zero_tou_0000e8a4, local
	.byte 0x00
.endobj zero_tou_0000e8a4

# .rodata:0x6F5 | 0x5BED | size: 0x3
.obj gap_03_00005BED_rodata, global
.hidden gap_03_00005BED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005BED_rodata

# .rodata:0x6F8 | 0x5BF0 | size: 0x10
.obj str_stg3_tou_re_003_tou_0000e8a8, local
	.string "stg3_tou_re_003"
.endobj str_stg3_tou_re_003_tou_0000e8a8

# .rodata:0x708 | 0x5C00 | size: 0x10
.obj str_stg3_tou_re_004_tou_0000e8b8, local
	.string "stg3_tou_re_004"
.endobj str_stg3_tou_re_004_tou_0000e8b8

# .rodata:0x718 | 0x5C10 | size: 0x10
.obj str_stg3_tou_re_005_tou_0000e8c8, local
	.string "stg3_tou_re_005"
.endobj str_stg3_tou_re_005_tou_0000e8c8

# .rodata:0x728 | 0x5C20 | size: 0x12
.obj str_stg3_tou_re_005_1_tou_0000e8d8, local
	.string "stg3_tou_re_005_1"
.endobj str_stg3_tou_re_005_1_tou_0000e8d8

# .rodata:0x73A | 0x5C32 | size: 0x2
.obj gap_03_00005C32_rodata, global
.hidden gap_03_00005C32_rodata
	.2byte 0x0000
.endobj gap_03_00005C32_rodata

# .rodata:0x73C | 0x5C34 | size: 0x14
.obj str_stg3_tou_re_005_1_1_tou_0000e8ec, local
	.string "stg3_tou_re_005_1_1"
.endobj str_stg3_tou_re_005_1_1_tou_0000e8ec

# .rodata:0x750 | 0x5C48 | size: 0x12
.obj str_stg3_tou_re_005_2_tou_0000e900, local
	.string "stg3_tou_re_005_2"
.endobj str_stg3_tou_re_005_2_tou_0000e900

# .rodata:0x762 | 0x5C5A | size: 0x2
.obj gap_03_00005C5A_rodata, global
.hidden gap_03_00005C5A_rodata
	.2byte 0x0000
.endobj gap_03_00005C5A_rodata

# .rodata:0x764 | 0x5C5C | size: 0x12
.obj str_stg3_tou_re_005_3_tou_0000e914, local
	.string "stg3_tou_re_005_3"
.endobj str_stg3_tou_re_005_3_tou_0000e914

# .rodata:0x776 | 0x5C6E | size: 0x2
.obj gap_03_00005C6E_rodata, global
.hidden gap_03_00005C6E_rodata
	.2byte 0x0000
.endobj gap_03_00005C6E_rodata

# .rodata:0x778 | 0x5C70 | size: 0x6
.obj str_M_N_B_tou_0000e928, local
	.string "M_N_B"
.endobj str_M_N_B_tou_0000e928

# .rodata:0x77E | 0x5C76 | size: 0x2
.obj gap_03_00005C76_rodata, global
.hidden gap_03_00005C76_rodata
	.2byte 0x0000
.endobj gap_03_00005C76_rodata

# .rodata:0x780 | 0x5C78 | size: 0x10
.obj str_stg3_tou_re_006_tou_0000e930, local
	.string "stg3_tou_re_006"
.endobj str_stg3_tou_re_006_tou_0000e930

# .rodata:0x790 | 0x5C88 | size: 0x10
.obj str_stg3_tou_re_007_tou_0000e940, local
	.string "stg3_tou_re_007"
.endobj str_stg3_tou_re_007_tou_0000e940

# .rodata:0x7A0 | 0x5C98 | size: 0xB
.obj str_anm_camera_tou_0000e950, local
	.string "anm_camera"
.endobj str_anm_camera_tou_0000e950

# .rodata:0x7AB | 0x5CA3 | size: 0x1
.obj gap_03_00005CA3_rodata, global
.hidden gap_03_00005CA3_rodata
	.byte 0x00
.endobj gap_03_00005CA3_rodata

# .rodata:0x7AC | 0x5CA4 | size: 0x7
.obj str_item01_tou_0000e95c, local
	.string "item01"
.endobj str_item01_tou_0000e95c

# .rodata:0x7B3 | 0x5CAB | size: 0x1
.obj gap_03_00005CAB_rodata, global
.hidden gap_03_00005CAB_rodata
	.byte 0x00
.endobj gap_03_00005CAB_rodata

# .rodata:0x7B4 | 0x5CAC | size: 0x6
.obj str_paifu_tou_0000e964, local
	.string "paifu"
.endobj str_paifu_tou_0000e964

# .rodata:0x7BA | 0x5CB2 | size: 0x2
.obj gap_03_00005CB2_rodata, global
.hidden gap_03_00005CB2_rodata
	.2byte 0x0000
.endobj gap_03_00005CB2_rodata

# .rodata:0x7BC | 0x5CB4 | size: 0x5
.obj str_fall_tou_0000e96c, local
	.string "fall"
.endobj str_fall_tou_0000e96c

# .rodata:0x7C1 | 0x5CB9 | size: 0x3
.obj gap_03_00005CB9_rodata, global
.hidden gap_03_00005CB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CB9_rodata

# .rodata:0x7C4 | 0x5CBC | size: 0x7
.obj str_kuro_Y_tou_0000e974, local
	.string "kuro_Y"
.endobj str_kuro_Y_tou_0000e974

# .rodata:0x7CB | 0x5CC3 | size: 0x1
.obj gap_03_00005CC3_rodata, global
.hidden gap_03_00005CC3_rodata
	.byte 0x00
.endobj gap_03_00005CC3_rodata

# .rodata:0x7CC | 0x5CC4 | size: 0xD
.obj str_a_hikidasi_N_tou_0000e97c, local
	.string "a_hikidasi_N"
.endobj str_a_hikidasi_N_tou_0000e97c

# .rodata:0x7D9 | 0x5CD1 | size: 0x3
.obj gap_03_00005CD1_rodata, global
.hidden gap_03_00005CD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CD1_rodata

# .rodata:0x7DC | 0x5CD4 | size: 0x9
.obj str_a_nozoki_tou_0000e98c, local
	.string "a_nozoki"
.endobj str_a_nozoki_tou_0000e98c

# .rodata:0x7E5 | 0x5CDD | size: 0x3
.obj gap_03_00005CDD_rodata, global
.hidden gap_03_00005CDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CDD_rodata

# .rodata:0x7E8 | 0x5CE0 | size: 0x7
.obj str_tou_06_tou_0000e998, local
	.string "tou_06"
.endobj str_tou_06_tou_0000e998

# .rodata:0x7EF | 0x5CE7 | size: 0x1
.obj gap_03_00005CE7_rodata, global
.hidden gap_03_00005CE7_rodata
	.byte 0x00
.endobj gap_03_00005CE7_rodata

# .rodata:0x7F0 | 0x5CE8 | size: 0xE
.obj str_BGM_STG3_TOU2_tou_0000e9a0, local
	.string "BGM_STG3_TOU2"
.endobj str_BGM_STG3_TOU2_tou_0000e9a0

# .rodata:0x7FE | 0x5CF6 | size: 0x2
.obj gap_03_00005CF6_rodata, global
.hidden gap_03_00005CF6_rodata
	.2byte 0x0000
.endobj gap_03_00005CF6_rodata

# .rodata:0x800 | 0x5CF8 | size: 0xE
.obj str_ENV_STG3_TOU6_tou_0000e9b0, local
	.string "ENV_STG3_TOU6"
.endobj str_ENV_STG3_TOU6_tou_0000e9b0

# .rodata:0x80E | 0x5D06 | size: 0x2
.obj gap_03_00005D06_rodata, global
.hidden gap_03_00005D06_rodata
	.2byte 0x0000
.endobj gap_03_00005D06_rodata

# .rodata:0x810 | 0x5D08 | size: 0xE
.obj str_BGM_STG3_TOU1_tou_0000e9c0, local
	.string "BGM_STG3_TOU1"
.endobj str_BGM_STG3_TOU1_tou_0000e9c0

# .rodata:0x81E | 0x5D16 | size: 0x2
.obj gap_03_00005D16_rodata, global
.hidden gap_03_00005D16_rodata
	.2byte 0x0000
.endobj gap_03_00005D16_rodata

# .rodata:0x820 | 0x5D18 | size: 0xB
.obj str_haikikau_1_tou_0000e9d0, local
	.string "haikikau_1"
.endobj str_haikikau_1_tou_0000e9d0

# .rodata:0x82B | 0x5D23 | size: 0x1
.obj gap_03_00005D23_rodata, global
.hidden gap_03_00005D23_rodata
	.byte 0x00
.endobj gap_03_00005D23_rodata

# .rodata:0x82C | 0x5D24 | size: 0xB
.obj str_haiku_kabe_tou_0000e9dc, local
	.string "haiku_kabe"
.endobj str_haiku_kabe_tou_0000e9dc

# .rodata:0x837 | 0x5D2F | size: 0x1
.obj gap_03_00005D2F_rodata, global
.hidden gap_03_00005D2F_rodata
	.byte 0x00
.endobj gap_03_00005D2F_rodata

# .rodata:0x838 | 0x5D30 | size: 0x5
.obj str_kore_tou_0000e9e8, local
	.string "kore"
.endobj str_kore_tou_0000e9e8

# .rodata:0x83D | 0x5D35 | size: 0x3
.obj gap_03_00005D35_rodata, global
.hidden gap_03_00005D35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D35_rodata

# 0x0001C3A0..0x00020800 | size: 0x4460
.data
.balign 8

# .data:0x0 | 0x1C3A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1C3A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1C3AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1C3B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1C3B4 | size: 0x4
.obj gap_04_0001C3B4_data, global
.hidden gap_04_0001C3B4_data
	.4byte 0x00000000
.endobj gap_04_0001C3B4_data

# .data:0x18 | 0x1C3B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1C3C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1C3C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1C3C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1C3D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1C3D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1C3D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1C3DC | size: 0x4
.obj gap_04_0001C3DC_data, global
.hidden gap_04_0001C3DC_data
	.4byte 0x00000000
.endobj gap_04_0001C3DC_data

# .data:0x40 | 0x1C3E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1C3E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1C3EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1C3F0 | size: 0x168
.obj evt_dakuto, local
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF60
	.4byte 0x00000055
	.4byte 0xFFFFFFBF
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x00000055
	.4byte 0xFFFFFFBA
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xF84064E1
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_haikikau_2_tou_0000e1b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_DUCT_KOUSHI_tou_0000e1bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_haikikau_2_tou_0000e1b0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_haikikan_tou_0000e1d8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFF7E
	.4byte 0xFFFFFFBF
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0xFFFFFFBA
	.4byte 0x000001F4
	.4byte 0x00020018
	.4byte 0xF84064E1
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_456_tou_0000e1e4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064E1
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_dakuto

# .data:0x1B8 | 0x1C558 | size: 0x30
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000e1f4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0x1E8 | 0x1C588 | size: 0x30
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000e1f4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0x218 | 0x1C5B8 | size: 0x38
.obj unk_evt_tou_0002d4c0, local
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000001
	.4byte 0x00010071
	.4byte str_登録していた試合をリセット_tou_0000e1fc
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84064D4
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_tou_0002d4c0

# .data:0x250 | 0x1C5F0 | size: 0xB4
.obj bero_data, local
	.4byte str_n_bero_tou_0000e218
	.4byte 0x00010004
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte unk_evt_tou_0002d4c0
	.4byte str_tou_04_tou_0000e220
	.4byte str_s_bero_5_tou_0000e228
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte str_w_bero_tou_0000e234
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_dakuto
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_13_tou_0000e23c
	.4byte str_w_bero_tou_0000e244
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
.endobj bero_data

# .data:0x304 | 0x1C6A4 | size: 0x580
.obj evt_takurami, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_456_01_tou_0000e24c
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000003C
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_L_2_tou_0000e25c
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_tou_0000e264
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
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kami_2_tou_0000e28c
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_458_tou_0000e294
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00008000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00008000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000052
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x00000025
	.4byte 0xFFFFFF90
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_459_tou_0000e2b4
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x0000002C
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000004E
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000073
	.4byte 0x0000004A
	.4byte 0x00000128
	.4byte 0x00000073
	.4byte 0x00000023
	.4byte 0x0000004A
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_460_tou_0000e2c4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000052
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x00000025
	.4byte 0xFFFFFF90
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_461_tou_0000e2d4
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
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
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_462_tou_0000e2e4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_takurami

# .data:0x884 | 0x1CC24 | size: 0x158
.obj evt_hiki_close, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_2_tou_0000e28c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_DRAWER_SHUT_tou_0000e2f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte evt_hiki_open
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hiki_close

# .data:0x9DC | 0x1CD7C | size: 0x304
.obj evt_hiki_open, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hikidasi_H_tou_0000e30c
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000041
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x00000037
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_DRAWER_OPEN_tou_0000e318
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte evt_hiki_close
	.4byte 0x00000000
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hikidasi_H_tou_0000e30c
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x0001005E
	.4byte evt_takurami
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hikidasi_N_tou_0000e330
	.4byte 0x00020018
	.4byte 0xF840654C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item02_tou_0000e33c
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item02_tou_0000e33c
	.4byte 0x00020032
	.4byte 0xF840654C
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8407179
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hiki_open

# .data:0xCE0 | 0x1D080 | size: 0x74
.obj init_gans, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000082
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000e344
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000e344
	.4byte 0x0000010E
	.4byte 0x00010026
	.4byte 0x00000083
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000e344
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000e344
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_gans

# .data:0xD54 | 0x1D0F4 | size: 0x2D8
.obj talk_gans, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_54_tou_0000e348
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_52_yn_tou_0000e354
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_53_tou_0000e364
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000A
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kami_1_tou_0000e370
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x00000071
	.4byte 0x00000182
	.4byte 0x00000046
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000009
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_55_tou_0000e378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_55_01_tou_0000e384
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000e394
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_tou_0000e3ac
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_tou_0000e3b4
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_56_tou_0000e3bc
	.4byte gans_msg_callback
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_a_tou_0000e3c8
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000082
	.4byte 0x0001005E
	.4byte evt_kinoshikowa
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_gans

# .data:0x102C | 0x1D3CC | size: 0x48
.obj init_kinoshikowa, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000A4
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0000007F
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_kinoshikowa

# .data:0x1074 | 0x1D414 | size: 0x608
.obj talk_kinoshikowa, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000006B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_03_b_tou_0000e3d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_04_tou_0000e3e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_00_tou_0000e3f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_02_tou_0000e400
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_03_tou_0000e40c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tou_0000e344
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tou_0000e344
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_05_tou_0000e41c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_save_playtime
	.4byte 0xF5DE071D
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840708B
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_tou_0000e428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_13_04_tou_0000e3e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000017
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tou_0000e344
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tou_0000e344
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_03_tou_0000e43c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_00_tou_0000e448
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_3_tou_0000e454
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tou_0000e45c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_01_tou_0000e464
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tou_0000e344
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000e344
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000e344
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFCD
	.4byte 0x00000079
	.4byte 0x000001E5
	.4byte 0xFFFFFFCD
	.4byte 0x0000002D
	.4byte 0xFFFFFFF7
	.4byte 0x00000708
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0002001B
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x00000078
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000001E
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x00000078
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000001E
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0xFFFFFF94
	.4byte 0xFFFFFFAB
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000708
	.4byte 0x0000000B
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000001E
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000007F
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000007F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000001E
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000007F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tou_0000e344
	.4byte 0x0000007F
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_tou_0000e344
	.4byte str_mario_tou_0000e2ac
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_me_tou_0000e344
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_tou_0000e344
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tou_0000e344
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tou_0000e344
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_02_tou_0000e470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_pm_tou_0000e47c
	.4byte 0x00000063
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_pm_tou_0000e47c
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_pm_tou_0000e47c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000e344
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000A4
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_008_tou_0000e480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_kinoshikowa

# .data:0x167C | 0x1DA1C | size: 0x114
.obj npcEnt, local
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_gans
	.4byte 0x00000000
	.4byte talk_gans
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
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_kinoshikowa
	.4byte 0x00000000
	.4byte talk_kinoshikowa
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

# .data:0x1790 | 0x1DB30 | size: 0x378
.obj evt_kinoshikowa, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_57_tou_0000e490
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000001
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000023
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_S_1_tou_0000e49c
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_58_tou_0000e4a0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_59_tou_0000e4ac
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_60_tou_0000e4b8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_61_tou_0000e4c4
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000BB8
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF84064C8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_04_tou_0000e220
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kinoshikowa

# .data:0x1B08 | 0x1DEA8 | size: 0x6B8
.obj evt_sensyu, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_GANCE1_tou_0000e4d0
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_eff_tou_0000e4e4
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_43_tou_0000e4e8
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x00000072
	.4byte 0x00000182
	.4byte 0x0000004B
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0xF24B6A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
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
	.4byte str_SFX_VOICE_MARIO_HAND_tou_0000e4f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tou_0000e45c
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_44_tou_0000e510
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
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
	.4byte str_SFX_VOICE_MARIO_NOD1_tou_0000e51c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0000e534
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_45_tou_0000e53c
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_45_yn_tou_0000e548
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_46_00_tou_0000e558
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000078
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE2
	.4byte 0x00000072
	.4byte 0x00000182
	.4byte 0xFFFFFFE2
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_46_00_01_tou_0000e568
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_46_01_tou_0000e57c
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x00000061
	.4byte 0x0000011F
	.4byte 0xFFFFFFD8
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_46_02_tou_0000e58c
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x00000050
	.4byte 0x000000BD
	.4byte 0xFFFFFFD8
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_46_03_tou_0000e59c
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF1
	.4byte 0x00000050
	.4byte 0x000000BD
	.4byte 0xFFFFFFF1
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000e5ac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_tou_0000e3ac
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0000e534
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_47_tou_0000e5c4
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0000000A
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0xF24B6A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84064C7
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_04_tou_0000e220
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sensyu

# .data:0x21C0 | 0x1E560 | size: 0x340
.obj evt_sensyu2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x00000071
	.4byte 0x00000182
	.4byte 0x00000046
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_GANCE1_tou_0000e4d0
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_51_tou_0000e5d0
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_eff_tou_0000e4e4
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kami_1_tou_0000e370
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_52_tou_0000e5dc
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_52_yn_tou_0000e354
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_53_tou_0000e364
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_p_tukue_tou_0000e5e8
	.4byte 0x00000000
	.4byte talk_gans
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000082
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_55_tou_0000e378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_55_01_tou_0000e384
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000e394
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_tou_0000e3ac
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_tou_0000e3b4
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_56_tou_0000e3bc
	.4byte gans_msg_callback
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_a_tou_0000e3c8
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000083
	.4byte 0x0001005E
	.4byte evt_kinoshikowa
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sensyu2

# .data:0x2500 | 0x1E8A0 | size: 0x74C
.obj evt_1st_leagu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF5B
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikidasi_H_tou_0000e30c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x00000064
	.4byte 0x00000173
	.4byte 0x0000004B
	.4byte 0x00000025
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000001
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000032
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFE2
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFE2
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFEC
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte evt_npc_sound_data_reset
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_2_tou_0000e28c
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_hikidasi_H_tou_0000e30c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_a_hikidasi_H_tou_0000e5f4
	.4byte 0x0001005E
	.4byte evt_hiki_close
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_287_tou_0000e604
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_288_tou_0000e614
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_289_tou_0000e624
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_290_tou_0000e634
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000F
	.4byte 0x0000005A
	.4byte 0x0000010D
	.4byte 0x0000000F
	.4byte 0x00000025
	.4byte 0xFFFFFFE6
	.4byte 0x00000FA0
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000046
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0000006E
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000019
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_mario_tou_0000e2ac
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_291_tou_0000e644
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_U_tou_0000e654
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_coin_tou_0000e65c
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_coin_tou_0000e65c
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_292_02_tou_0000e664
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_292_tou_0000e674
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_293_tou_0000e684
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xF84064C9
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_04_tou_0000e220
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_1st_leagu

# .data:0x2C4C | 0x1EFEC | size: 0x84
.obj evt_nozoki_msg, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFFFFFFCE
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_03_tou_0000e694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_04_tou_0000e6a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_nozoki_msg

# .data:0x2CD0 | 0x1F070 | size: 0xC04
.obj evt_nozoki, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000098
	.4byte 0x0001005F
	.4byte 0xFD050F89
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000e2a4
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFF8
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_meku_tou_0000e6b4
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_tou_0000e6c0
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_tou_0000e6c0
	.4byte str_OFF_d_meku_tou_0000e6b4
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_ofs_tou_0000e6c4
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_kuro_P_tou_0000e6c8
	.4byte str_ofs_tou_0000e6c4
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox
	.4byte str_ofs_tou_0000e6c4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000000
	.4byte str_ofs_tou_0000e6c4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000002
	.4byte str_ofs_tou_0000e6c4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_tou_0000e6c0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_0000e6c0
	.4byte str_A_1_tou_0000e6d0
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000e6c0
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
	.4byte str_SFX_OFF3_VIEW_ROOM1_tou_0000e6d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tou_0000e6c0
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000098
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_05_tou_0000e6e8
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_06_tou_0000e6f8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x00000072
	.4byte 0x00000182
	.4byte 0x00000046
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x000004B0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_07_tou_0000e708
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_08_tou_0000e718
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_09_tou_0000e728
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_10_tou_0000e738
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_11_tou_0000e748
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_12_tou_0000e758
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_S_1_tou_0000e49c
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_13_tou_0000e768
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_14_tou_0000e778
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_15_tou_0000e788
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_16_tou_0000e798
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_316_17_tou_0000e7a8
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
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
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_320_tou_0000e7b8
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFEC
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x00000159
	.4byte 0x00000000
	.4byte 0x000000B9
	.4byte 0xFFFFFFFC
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_321_tou_0000e7c8
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
	.4byte str_SFX_VOICE_MARIO_NOD1_tou_0000e7d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0000e534
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000064
	.4byte 0x00000072
	.4byte 0x00000182
	.4byte 0x00000064
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_322_tou_0000e7f0
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_322_yn_tou_0000e800
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000064
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_323_kur_tou_0000e810
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_325_tou_0000e824
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_324_kur_tou_0000e834
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_325_01_tou_0000e848
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_324_01_kur_tou_0000e858
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_325_02_tou_0000e86c
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000031
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000073
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000e2a4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
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
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF3_VIEW_ROOM2_tou_0000e87c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_0000e6c0
	.4byte str_A_2_tou_0000e890
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tou_0000e6c0
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_tou_0000e6c0
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_ofs_tou_0000e6c4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x00000159
	.4byte 0x00000000
	.4byte 0x000000B9
	.4byte 0xFFFFFFFC
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_326_tou_0000e894
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000098
	.4byte 0x00000020
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF3_VIEW_ROOM2_tou_0000e87c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_0000e6c0
	.4byte str_A_2_tou_0000e890
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tou_0000e6c0
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_0000e6c0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_tou_0000e6c0
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_ofs_tou_0000e6c4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_nozoki

# .data:0x38D4 | 0x1FC74 | size: 0x494
.obj evt_sensyu_reentry, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_tou_0000e8a4
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_003_tou_0000e8a8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_004_tou_0000e8b8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000001F
	.4byte 0x00000069
	.4byte 0x0000013B
	.4byte 0x0000001F
	.4byte 0x00000037
	.4byte 0xFFFFFFF7
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000073
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000028
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_005_tou_0000e8c8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tou_0000e45c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_005_1_tou_0000e8d8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006F
	.4byte 0x00000069
	.4byte 0x00000136
	.4byte 0x0000006F
	.4byte 0x00000037
	.4byte 0xFFFFFFF2
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000073
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_005_1_1_tou_0000e8ec
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_tou_0000e8a4
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000041
	.4byte 0x00000068
	.4byte 0x0000014F
	.4byte 0x00000041
	.4byte 0x00000037
	.4byte 0x0000000C
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000073
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000028
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_005_2_tou_0000e900
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_005_3_tou_0000e914
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_B_tou_0000e928
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000e284
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte str_M_1_tou_0000e418
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_006_tou_0000e930
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006F
	.4byte 0x00000069
	.4byte 0x00000136
	.4byte 0x0000006F
	.4byte 0x00000037
	.4byte 0xFFFFFFF2
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00000073
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0000007F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_007_tou_0000e940
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000e3cc
	.4byte 0x00020032
	.4byte 0xF8406544
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sensyu_reentry

# .data:0x3D68 | 0x20108 | size: 0x6F4
.obj tou_05_init_evt_25_data_20108, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_camera_tou_0000e950
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_tou_0000e95c
	.4byte 0x0000007D
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0x00000069
	.4byte 0x00000010
	.4byte 0xF8407178
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_paifu_tou_0000e964
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_fall_tou_0000e96c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFCF9
	.4byte 0x00000096
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFCE0
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_mario_cam_off
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFCF9
	.4byte 0x000000FA
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFCE0
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_cam_on
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_fall_tou_0000e96c
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kuro_Y_tou_0000e974
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_kuro_Y_tou_0000e974
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kuro_P_tou_0000e6c8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000A2
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_hikidasi_N_tou_0000e330
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_a_hikidasi_N_tou_0000e97c
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte evt_hiki_open
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_hikidasi_H_tou_0000e30c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_a_hikidasi_H_tou_0000e5f4
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte evt_hiki_open
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000082
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_p_tukue_tou_0000e5e8
	.4byte 0x00000000
	.4byte talk_gans
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_1_tou_0000e370
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000098
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_fall_tou_0000e96c
	.4byte 0x0002005D
	.4byte evt_nozoki_msg
	.4byte 0xFD050F89
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte str_a_nozoki_tou_0000e98c
	.4byte 0x00000000
	.4byte evt_nozoki
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_fall_tou_0000e96c
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x0000008C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_06_tou_0000e998
	.4byte str_fall_tou_0000e96c
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000082
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84064C7
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_sensyu
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF84064C7
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_sensyu2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D9
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_GANCE1_tou_0000e4d0
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_1st_leagu
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_2_tou_0000e28c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000e9a0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000e9b0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00010029
	.4byte 0x000000A5
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000e9a0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000e9b0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000e9c0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000e9b0
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000A2
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF8406545
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_haikikau_1_tou_0000e9d0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_haikikau_2_tou_0000e1b0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_haikikan_tou_0000e1d8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_haikikau_1_tou_0000e9d0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_haikikau_2_tou_0000e1b0
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_fall_tou_0000e96c
	.4byte 0x00020018
	.4byte 0xF8406544
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_sensyu_reentry
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_haiku_kabe_tou_0000e9dc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_kore_tou_0000e9e8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_w_bero_tou_0000e234
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_05_init_evt_25_data_20108

# .data:0x445C | 0x207FC | size: 0x4
.obj gap_04_000207FC_data, global
.hidden gap_04_000207FC_data
	.4byte 0x00000000
.endobj gap_04_000207FC_data
