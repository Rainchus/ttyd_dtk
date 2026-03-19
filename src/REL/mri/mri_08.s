.include "macros.inc"
.file "mri_08.o"

# 0x000037CC..0x00003848 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x37CC | size: 0x7C
.fn toge_enter_func00, local
/* 000037CC 00003890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000037D0 00003894  7C 08 02 A6 */	mflr r0
/* 000037D4 00003898  3C 80 00 00 */	lis r4, vec3_mri_00023fb0@ha
/* 000037D8 0000389C  38 A0 00 6F */	li r5, 0x6f
/* 000037DC 000038A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 000037E0 000038A4  39 24 00 00 */	addi r9, r4, vec3_mri_00023fb0@l
/* 000037E4 000038A8  38 61 00 08 */	addi r3, r1, 0x8
/* 000037E8 000038AC  38 80 00 6E */	li r4, 0x6e
/* 000037EC 000038B0  81 09 00 00 */	lwz r8, 0x0(r9)
/* 000037F0 000038B4  38 C0 00 70 */	li r6, 0x70
/* 000037F4 000038B8  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 000037F8 000038BC  80 09 00 08 */	lwz r0, 0x8(r9)
/* 000037FC 000038C0  91 01 00 08 */	stw r8, 0x8(r1)
/* 00003800 000038C4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 00003804 000038C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 00003808 000038CC  4B FF D2 79 */	bl togeMakeRetsu_18_text_A80
/* 0000380C 000038D0  38 61 00 08 */	addi r3, r1, 0x8
/* 00003810 000038D4  38 80 00 71 */	li r4, 0x71
/* 00003814 000038D8  38 A0 00 72 */	li r5, 0x72
/* 00003818 000038DC  38 C0 00 73 */	li r6, 0x73
/* 0000381C 000038E0  4B FF D2 65 */	bl togeMakeRetsu_18_text_A80
/* 00003820 000038E4  38 61 00 08 */	addi r3, r1, 0x8
/* 00003824 000038E8  38 80 00 74 */	li r4, 0x74
/* 00003828 000038EC  38 A0 00 75 */	li r5, 0x75
/* 0000382C 000038F0  38 C0 00 77 */	li r6, 0x77
/* 00003830 000038F4  4B FF D2 51 */	bl togeMakeRetsu_18_text_A80
/* 00003834 000038F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003838 000038FC  38 60 00 02 */	li r3, 0x2
/* 0000383C 00003900  7C 08 03 A6 */	mtlr r0
/* 00003840 00003904  38 21 00 20 */	addi r1, r1, 0x20
/* 00003844 00003908  4E 80 00 20 */	blr
.endfn toge_enter_func00

# 0x000036E8..0x00003B30 | size: 0x448
.rodata
.balign 8

# .rodata:0x0 | 0x36E8 | size: 0x3
.obj str_me_mri_00023d88, local
	.string "me"
.endobj str_me_mri_00023d88

# .rodata:0x3 | 0x36EB | size: 0x1
.obj gap_03_000036EB_rodata, global
.hidden gap_03_000036EB_rodata
	.byte 0x00
.endobj gap_03_000036EB_rodata

# .rodata:0x4 | 0x36EC | size: 0x10
.obj str_stg2_mri_re_028_mri_00023d8c, local
	.string "stg2_mri_re_028"
.endobj str_stg2_mri_re_028_mri_00023d8c

# .rodata:0x14 | 0x36FC | size: 0x10
.obj str_stg2_mri_re_029_mri_00023d9c, local
	.string "stg2_mri_re_029"
.endobj str_stg2_mri_re_029_mri_00023d9c

# .rodata:0x24 | 0x370C | size: 0x12
.obj str_stg2_mri_re_028_1_mri_00023dac, local
	.string "stg2_mri_re_028_1"
.endobj str_stg2_mri_re_028_1_mri_00023dac

# .rodata:0x36 | 0x371E | size: 0x2
.obj gap_03_0000371E_rodata, global
.hidden gap_03_0000371E_rodata
	.2byte 0x0000
.endobj gap_03_0000371E_rodata

# .rodata:0x38 | 0x3720 | size: 0x12
.obj str_stg2_mri_re_029_1_mri_00023dc0, local
	.string "stg2_mri_re_029_1"
.endobj str_stg2_mri_re_029_1_mri_00023dc0

# .rodata:0x4A | 0x3732 | size: 0x2
.obj gap_03_00003732_rodata, global
.hidden gap_03_00003732_rodata
	.2byte 0x0000
.endobj gap_03_00003732_rodata

# .rodata:0x4C | 0x3734 | size: 0x10
.obj str_stg2_mri_re_030_mri_00023dd4, local
	.string "stg2_mri_re_030"
.endobj str_stg2_mri_re_030_mri_00023dd4

# .rodata:0x5C | 0x3744 | size: 0x10
.obj str_stg2_mri_re_031_mri_00023de4, local
	.string "stg2_mri_re_031"
.endobj str_stg2_mri_re_031_mri_00023de4

# .rodata:0x6C | 0x3754 | size: 0x12
.obj str_stg2_mri_re_030_1_mri_00023df4, local
	.string "stg2_mri_re_030_1"
.endobj str_stg2_mri_re_030_1_mri_00023df4

# .rodata:0x7E | 0x3766 | size: 0x2
.obj gap_03_00003766_rodata, global
.hidden gap_03_00003766_rodata
	.2byte 0x0000
.endobj gap_03_00003766_rodata

# .rodata:0x80 | 0x3768 | size: 0x12
.obj str_stg2_mri_re_031_1_mri_00023e08, local
	.string "stg2_mri_re_031_1"
.endobj str_stg2_mri_re_031_1_mri_00023e08

# .rodata:0x92 | 0x377A | size: 0x2
.obj gap_03_0000377A_rodata, global
.hidden gap_03_0000377A_rodata
	.2byte 0x0000
.endobj gap_03_0000377A_rodata

# .rodata:0x94 | 0x377C | size: 0x10
.obj str_stg2_mri_re_032_mri_00023e1c, local
	.string "stg2_mri_re_032"
.endobj str_stg2_mri_re_032_mri_00023e1c

# .rodata:0xA4 | 0x378C | size: 0x10
.obj str_stg2_mri_re_033_mri_00023e2c, local
	.string "stg2_mri_re_033"
.endobj str_stg2_mri_re_033_mri_00023e2c

# .rodata:0xB4 | 0x379C | size: 0x12
.obj str_stg2_mri_re_032_1_mri_00023e3c, local
	.string "stg2_mri_re_032_1"
.endobj str_stg2_mri_re_032_1_mri_00023e3c

# .rodata:0xC6 | 0x37AE | size: 0x2
.obj gap_03_000037AE_rodata, global
.hidden gap_03_000037AE_rodata
	.2byte 0x0000
.endobj gap_03_000037AE_rodata

# .rodata:0xC8 | 0x37B0 | size: 0x12
.obj str_stg2_mri_re_033_1_mri_00023e50, local
	.string "stg2_mri_re_033_1"
.endobj str_stg2_mri_re_033_1_mri_00023e50

# .rodata:0xDA | 0x37C2 | size: 0x2
.obj gap_03_000037C2_rodata, global
.hidden gap_03_000037C2_rodata
	.2byte 0x0000
.endobj gap_03_000037C2_rodata

# .rodata:0xDC | 0x37C4 | size: 0x10
.obj str_stg2_mri_re_034_mri_00023e64, local
	.string "stg2_mri_re_034"
.endobj str_stg2_mri_re_034_mri_00023e64

# .rodata:0xEC | 0x37D4 | size: 0x10
.obj str_stg2_mri_re_035_mri_00023e74, local
	.string "stg2_mri_re_035"
.endobj str_stg2_mri_re_035_mri_00023e74

# .rodata:0xFC | 0x37E4 | size: 0x12
.obj str_stg2_mri_re_034_1_mri_00023e84, local
	.string "stg2_mri_re_034_1"
.endobj str_stg2_mri_re_034_1_mri_00023e84

# .rodata:0x10E | 0x37F6 | size: 0x2
.obj gap_03_000037F6_rodata, global
.hidden gap_03_000037F6_rodata
	.2byte 0x0000
.endobj gap_03_000037F6_rodata

# .rodata:0x110 | 0x37F8 | size: 0x12
.obj str_stg2_mri_re_035_1_mri_00023e98, local
	.string "stg2_mri_re_035_1"
.endobj str_stg2_mri_re_035_1_mri_00023e98

# .rodata:0x122 | 0x380A | size: 0x2
.obj gap_03_0000380A_rodata, global
.hidden gap_03_0000380A_rodata
	.2byte 0x0000
.endobj gap_03_0000380A_rodata

# .rodata:0x124 | 0x380C | size: 0x10
.obj str_stg2_mri_re_036_mri_00023eac, local
	.string "stg2_mri_re_036"
.endobj str_stg2_mri_re_036_mri_00023eac

# .rodata:0x134 | 0x381C | size: 0x10
.obj str_stg2_mri_re_037_mri_00023ebc, local
	.string "stg2_mri_re_037"
.endobj str_stg2_mri_re_037_mri_00023ebc

# .rodata:0x144 | 0x382C | size: 0x12
.obj str_stg2_mri_re_036_1_mri_00023ecc, local
	.string "stg2_mri_re_036_1"
.endobj str_stg2_mri_re_036_1_mri_00023ecc

# .rodata:0x156 | 0x383E | size: 0x2
.obj gap_03_0000383E_rodata, global
.hidden gap_03_0000383E_rodata
	.2byte 0x0000
.endobj gap_03_0000383E_rodata

# .rodata:0x158 | 0x3840 | size: 0x12
.obj str_stg2_mri_re_037_1_mri_00023ee0, local
	.string "stg2_mri_re_037_1"
.endobj str_stg2_mri_re_037_1_mri_00023ee0

# .rodata:0x16A | 0x3852 | size: 0x2
.obj gap_03_00003852_rodata, global
.hidden gap_03_00003852_rodata
	.2byte 0x0000
.endobj gap_03_00003852_rodata

# .rodata:0x16C | 0x3854 | size: 0x10
.obj str_stg2_mri_re_038_mri_00023ef4, local
	.string "stg2_mri_re_038"
.endobj str_stg2_mri_re_038_mri_00023ef4

# .rodata:0x17C | 0x3864 | size: 0x10
.obj str_stg2_mri_re_039_mri_00023f04, local
	.string "stg2_mri_re_039"
.endobj str_stg2_mri_re_039_mri_00023f04

# .rodata:0x18C | 0x3874 | size: 0x12
.obj str_stg2_mri_re_038_1_mri_00023f14, local
	.string "stg2_mri_re_038_1"
.endobj str_stg2_mri_re_038_1_mri_00023f14

# .rodata:0x19E | 0x3886 | size: 0x2
.obj gap_03_00003886_rodata, global
.hidden gap_03_00003886_rodata
	.2byte 0x0000
.endobj gap_03_00003886_rodata

# .rodata:0x1A0 | 0x3888 | size: 0x12
.obj str_stg2_mri_re_039_1_mri_00023f28, local
	.string "stg2_mri_re_039_1"
.endobj str_stg2_mri_re_039_1_mri_00023f28

# .rodata:0x1B2 | 0x389A | size: 0x2
.obj gap_03_0000389A_rodata, global
.hidden gap_03_0000389A_rodata
	.2byte 0x0000
.endobj gap_03_0000389A_rodata

# .rodata:0x1B4 | 0x389C | size: 0x9
.obj str_トゲ族１_mri_00023f3c, local
	.4byte 0x83678351
	.4byte 0x91B08250
	.byte 0x00
.endobj str_トゲ族１_mri_00023f3c

# .rodata:0x1BD | 0x38A5 | size: 0x3
.obj gap_03_000038A5_rodata, global
.hidden gap_03_000038A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038A5_rodata

# .rodata:0x1C0 | 0x38A8 | size: 0x9
.obj str_トゲ族２_mri_00023f48, local
	.4byte 0x83678351
	.4byte 0x91B08251
	.byte 0x00
.endobj str_トゲ族２_mri_00023f48

# .rodata:0x1C9 | 0x38B1 | size: 0x3
.obj gap_03_000038B1_rodata, global
.hidden gap_03_000038B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038B1_rodata

# .rodata:0x1CC | 0x38B4 | size: 0x9
.obj str_トゲ族３_mri_00023f54, local
	.4byte 0x83678351
	.4byte 0x91B08252
	.byte 0x00
.endobj str_トゲ族３_mri_00023f54

# .rodata:0x1D5 | 0x38BD | size: 0x3
.obj gap_03_000038BD_rodata, global
.hidden gap_03_000038BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038BD_rodata

# .rodata:0x1D8 | 0x38C0 | size: 0x9
.obj str_トゲ族４_mri_00023f60, local
	.4byte 0x83678351
	.4byte 0x91B08253
	.byte 0x00
.endobj str_トゲ族４_mri_00023f60

# .rodata:0x1E1 | 0x38C9 | size: 0x3
.obj gap_03_000038C9_rodata, global
.hidden gap_03_000038C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038C9_rodata

# .rodata:0x1E4 | 0x38CC | size: 0x9
.obj str_トゲ族５_mri_00023f6c, local
	.4byte 0x83678351
	.4byte 0x91B08254
	.byte 0x00
.endobj str_トゲ族５_mri_00023f6c

# .rodata:0x1ED | 0x38D5 | size: 0x3
.obj gap_03_000038D5_rodata, global
.hidden gap_03_000038D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038D5_rodata

# .rodata:0x1F0 | 0x38D8 | size: 0x9
.obj str_トゲ族６_mri_00023f78, local
	.4byte 0x83678351
	.4byte 0x91B08255
	.byte 0x00
.endobj str_トゲ族６_mri_00023f78

# .rodata:0x1F9 | 0x38E1 | size: 0x3
.obj gap_03_000038E1_rodata, global
.hidden gap_03_000038E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038E1_rodata

# .rodata:0x1FC | 0x38E4 | size: 0x7
.obj str_e_bero_mri_00023f84, local
	.string "e_bero"
.endobj str_e_bero_mri_00023f84

# .rodata:0x203 | 0x38EB | size: 0x1
.obj gap_03_000038EB_rodata, global
.hidden gap_03_000038EB_rodata
	.byte 0x00
.endobj gap_03_000038EB_rodata

# .rodata:0x204 | 0x38EC | size: 0x7
.obj str_mri_09_mri_00023f8c, local
	.string "mri_09"
.endobj str_mri_09_mri_00023f8c

# .rodata:0x20B | 0x38F3 | size: 0x1
.obj gap_03_000038F3_rodata, global
.hidden gap_03_000038F3_rodata
	.byte 0x00
.endobj gap_03_000038F3_rodata

# .rodata:0x20C | 0x38F4 | size: 0x7
.obj str_w_bero_mri_00023f94, local
	.string "w_bero"
.endobj str_w_bero_mri_00023f94

# .rodata:0x213 | 0x38FB | size: 0x1
.obj gap_03_000038FB_rodata, global
.hidden gap_03_000038FB_rodata
	.byte 0x00
.endobj gap_03_000038FB_rodata

# .rodata:0x214 | 0x38FC | size: 0x7
.obj str_mri_06_mri_00023f9c, local
	.string "mri_06"
.endobj str_mri_06_mri_00023f9c

# .rodata:0x21B | 0x3903 | size: 0x1
.obj gap_03_00003903_rodata, global
.hidden gap_03_00003903_rodata
	.byte 0x00
.endobj gap_03_00003903_rodata

# .rodata:0x21C | 0x3904 | size: 0x9
.obj str_e_bero02_mri_00023fa4, local
	.string "e_bero02"
.endobj str_e_bero02_mri_00023fa4

# .rodata:0x225 | 0x390D | size: 0x3
.obj gap_03_0000390D_rodata, global
.hidden gap_03_0000390D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000390D_rodata

# .rodata:0x228 | 0x3910 | size: 0xC
.obj vec3_mri_00023fb0, local
	.4byte 0x43E10000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00023fb0

# .rodata:0x234 | 0x391C | size: 0xA
.obj str_OFF_d_bom_mri_00023fbc, local
	.string "OFF_d_bom"
.endobj str_OFF_d_bom_mri_00023fbc

# .rodata:0x23E | 0x3926 | size: 0x2
.obj gap_03_00003926_rodata, global
.hidden gap_03_00003926_rodata
	.2byte 0x0000
.endobj gap_03_00003926_rodata

# .rodata:0x240 | 0x3928 | size: 0xC
.obj str_capture_img_mri_00023fc8, local
	.string "capture_img"
.endobj str_capture_img_mri_00023fc8

# .rodata:0x24C | 0x3934 | size: 0xA
.obj str_offscreen_mri_00023fd4, local
	.string "offscreen"
.endobj str_offscreen_mri_00023fd4

# .rodata:0x256 | 0x393E | size: 0x2
.obj gap_03_0000393E_rodata, global
.hidden gap_03_0000393E_rodata
	.2byte 0x0000
.endobj gap_03_0000393E_rodata

# .rodata:0x258 | 0x3940 | size: 0x7
.obj str_S_hati_mri_00023fe0, local
	.string "S_hati"
.endobj str_S_hati_mri_00023fe0

# .rodata:0x25F | 0x3947 | size: 0x1
.obj gap_03_00003947_rodata, global
.hidden gap_03_00003947_rodata
	.byte 0x00
.endobj gap_03_00003947_rodata

# .rodata:0x260 | 0x3948 | size: 0xC
.obj str_S_patolight_mri_00023fe8, local
	.string "S_patolight"
.endobj str_S_patolight_mri_00023fe8

# .rodata:0x26C | 0x3954 | size: 0x17
.obj str_SFX_OFF2_TORIDE_BREA_mri_00023ff4, local
	.string "SFX_OFF2_TORIDE_BREAK2"
.endobj str_SFX_OFF2_TORIDE_BREA_mri_00023ff4

# .rodata:0x283 | 0x396B | size: 0x1
.obj gap_03_0000396B_rodata, global
.hidden gap_03_0000396B_rodata
	.byte 0x00
.endobj gap_03_0000396B_rodata

# .rodata:0x284 | 0x396C | size: 0x7
.obj str_A_hati_mri_0002400c, local
	.string "A_hati"
.endobj str_A_hati_mri_0002400c

# .rodata:0x28B | 0x3973 | size: 0x1
.obj gap_03_00003973_rodata, global
.hidden gap_03_00003973_rodata
	.byte 0x00
.endobj gap_03_00003973_rodata

# .rodata:0x28C | 0x3974 | size: 0x4
.obj str_A_1_mri_00024014, local
	.string "A_1"
.endobj str_A_1_mri_00024014

# .rodata:0x290 | 0x3978 | size: 0x9
.obj str_ガイドsp_mri_00024018, local
	.4byte 0x834B8343
	.4byte 0x83687370
	.byte 0x00
.endobj str_ガイドsp_mri_00024018

# .rodata:0x299 | 0x3981 | size: 0x3
.obj gap_03_00003981_rodata, global
.hidden gap_03_00003981_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003981_rodata

# .rodata:0x29C | 0x3984 | size: 0x4
.obj str_S_1_mri_00024024, local
	.string "S_1"
.endobj str_S_1_mri_00024024

# .rodata:0x2A0 | 0x3988 | size: 0x10
.obj str_stg2_mri_e17_01_mri_00024028, local
	.string "stg2_mri_e17_01"
.endobj str_stg2_mri_e17_01_mri_00024028

# .rodata:0x2B0 | 0x3998 | size: 0x17
.obj str_SFX_STG2_TORIDE_BREA_mri_00024038, local
	.string "SFX_STG2_TORIDE_BREAK1"
.endobj str_SFX_STG2_TORIDE_BREA_mri_00024038

# .rodata:0x2C7 | 0x39AF | size: 0x1
.obj gap_03_000039AF_rodata, global
.hidden gap_03_000039AF_rodata
	.byte 0x00
.endobj gap_03_000039AF_rodata

# .rodata:0x2C8 | 0x39B0 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00024050, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00024050

# .rodata:0x2D6 | 0x39BE | size: 0x2
.obj gap_03_000039BE_rodata, global
.hidden gap_03_000039BE_rodata
	.2byte 0x0000
.endobj gap_03_000039BE_rodata

# .rodata:0x2D8 | 0x39C0 | size: 0x10
.obj str_stg2_mri_e17_02_mri_00024060, local
	.string "stg2_mri_e17_02"
.endobj str_stg2_mri_e17_02_mri_00024060

# .rodata:0x2E8 | 0x39D0 | size: 0x8
.obj str_A_gra_r_mri_00024070, local
	.string "A_gra_r"
.endobj str_A_gra_r_mri_00024070

# .rodata:0x2F0 | 0x39D8 | size: 0x13
.obj str_stg2_mri_e17_00_02_mri_00024078, local
	.string "stg2_mri_e17_00_02"
.endobj str_stg2_mri_e17_00_02_mri_00024078

# .rodata:0x303 | 0x39EB | size: 0x1
.obj gap_03_000039EB_rodata, global
.hidden gap_03_000039EB_rodata
	.byte 0x00
.endobj gap_03_000039EB_rodata

# .rodata:0x304 | 0x39EC | size: 0x10
.obj str_SFX_STG2_SIREN1_mri_0002408c, local
	.string "SFX_STG2_SIREN1"
.endobj str_SFX_STG2_SIREN1_mri_0002408c

# .rodata:0x314 | 0x39FC | size: 0x9
.obj str_light_02_mri_0002409c, local
	.string "light_02"
.endobj str_light_02_mri_0002409c

# .rodata:0x31D | 0x3A05 | size: 0x3
.obj gap_03_00003A05_rodata, global
.hidden gap_03_00003A05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A05_rodata

# .rodata:0x320 | 0x3A08 | size: 0x17
.obj str_BGM_EVT_STG2_PUNITOG_mri_000240a8, local
	.string "BGM_EVT_STG2_PUNITOGE1"
.endobj str_BGM_EVT_STG2_PUNITOG_mri_000240a8

# .rodata:0x337 | 0x3A1F | size: 0x1
.obj gap_03_00003A1F_rodata, global
.hidden gap_03_00003A1F_rodata
	.byte 0x00
.endobj gap_03_00003A1F_rodata

# .rodata:0x338 | 0x3A20 | size: 0x10
.obj str_stg2_mri_e17_00_mri_000240c0, local
	.string "stg2_mri_e17_00"
.endobj str_stg2_mri_e17_00_mri_000240c0

# .rodata:0x348 | 0x3A30 | size: 0x13
.obj str_stg2_mri_e17_00_01_mri_000240d0, local
	.string "stg2_mri_e17_00_01"
.endobj str_stg2_mri_e17_00_01_mri_000240d0

# .rodata:0x35B | 0x3A43 | size: 0x1
.obj gap_03_00003A43_rodata, global
.hidden gap_03_00003A43_rodata
	.byte 0x00
.endobj gap_03_00003A43_rodata

# .rodata:0x35C | 0x3A44 | size: 0x9
.obj str_A_ueki01_mri_000240e4, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_000240e4

# .rodata:0x365 | 0x3A4D | size: 0x3
.obj gap_03_00003A4D_rodata, global
.hidden gap_03_00003A4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A4D_rodata

# .rodata:0x368 | 0x3A50 | size: 0x9
.obj str_S_ueki01_mri_000240f0, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_000240f0

# .rodata:0x371 | 0x3A59 | size: 0x3
.obj gap_03_00003A59_rodata, global
.hidden gap_03_00003A59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A59_rodata

# .rodata:0x374 | 0x3A5C | size: 0x9
.obj str_A_ueki02_mri_000240fc, local
	.string "A_ueki02"
.endobj str_A_ueki02_mri_000240fc

# .rodata:0x37D | 0x3A65 | size: 0x3
.obj gap_03_00003A65_rodata, global
.hidden gap_03_00003A65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A65_rodata

# .rodata:0x380 | 0x3A68 | size: 0x9
.obj str_S_ueki02_mri_00024108, local
	.string "S_ueki02"
.endobj str_S_ueki02_mri_00024108

# .rodata:0x389 | 0x3A71 | size: 0x3
.obj gap_03_00003A71_rodata, global
.hidden gap_03_00003A71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A71_rodata

# .rodata:0x38C | 0x3A74 | size: 0x9
.obj str_A_ueki03_mri_00024114, local
	.string "A_ueki03"
.endobj str_A_ueki03_mri_00024114

# .rodata:0x395 | 0x3A7D | size: 0x3
.obj gap_03_00003A7D_rodata, global
.hidden gap_03_00003A7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A7D_rodata

# .rodata:0x398 | 0x3A80 | size: 0x9
.obj str_S_ueki03_mri_00024120, local
	.string "S_ueki03"
.endobj str_S_ueki03_mri_00024120

# .rodata:0x3A1 | 0x3A89 | size: 0x3
.obj gap_03_00003A89_rodata, global
.hidden gap_03_00003A89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A89_rodata

# .rodata:0x3A4 | 0x3A8C | size: 0x9
.obj str_A_ueki04_mri_0002412c, local
	.string "A_ueki04"
.endobj str_A_ueki04_mri_0002412c

# .rodata:0x3AD | 0x3A95 | size: 0x3
.obj gap_03_00003A95_rodata, global
.hidden gap_03_00003A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A95_rodata

# .rodata:0x3B0 | 0x3A98 | size: 0x9
.obj str_S_ueki04_mri_00024138, local
	.string "S_ueki04"
.endobj str_S_ueki04_mri_00024138

# .rodata:0x3B9 | 0x3AA1 | size: 0x3
.obj gap_03_00003AA1_rodata, global
.hidden gap_03_00003AA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003AA1_rodata

# .rodata:0x3BC | 0x3AA4 | size: 0x9
.obj str_A_ueki05_mri_00024144, local
	.string "A_ueki05"
.endobj str_A_ueki05_mri_00024144

# .rodata:0x3C5 | 0x3AAD | size: 0x3
.obj gap_03_00003AAD_rodata, global
.hidden gap_03_00003AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003AAD_rodata

# .rodata:0x3C8 | 0x3AB0 | size: 0x9
.obj str_S_ueki05_mri_00024150, local
	.string "S_ueki05"
.endobj str_S_ueki05_mri_00024150

# .rodata:0x3D1 | 0x3AB9 | size: 0x3
.obj gap_03_00003AB9_rodata, global
.hidden gap_03_00003AB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003AB9_rodata

# .rodata:0x3D4 | 0x3ABC | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_0002415c, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_0002415c

# .rodata:0x3E4 | 0x3ACC | size: 0xE
.obj str_ENV_STG2_MRI9_mri_0002416c, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_0002416c

# .rodata:0x3F2 | 0x3ADA | size: 0x2
.obj gap_03_00003ADA_rodata, global
.hidden gap_03_00003ADA_rodata
	.2byte 0x0000
.endobj gap_03_00003ADA_rodata

# .rodata:0x3F4 | 0x3ADC | size: 0xE
.obj str_ENV_STG2_MRI7_mri_0002417c, local
	.string "ENV_STG2_MRI7"
.endobj str_ENV_STG2_MRI7_mri_0002417c

# .rodata:0x402 | 0x3AEA | size: 0x2
.obj gap_03_00003AEA_rodata, global
.hidden gap_03_00003AEA_rodata
	.2byte 0x0000
.endobj gap_03_00003AEA_rodata

# .rodata:0x404 | 0x3AEC | size: 0x8
.obj str_mizu_01_mri_0002418c, local
	.string "mizu_01"
.endobj str_mizu_01_mri_0002418c

# .rodata:0x40C | 0x3AF4 | size: 0x8
.obj str_mizu_02_mri_00024194, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00024194

# .rodata:0x414 | 0x3AFC | size: 0x7
.obj str_awa_01_mri_0002419c, local
	.string "awa_01"
.endobj str_awa_01_mri_0002419c

# .rodata:0x41B | 0x3B03 | size: 0x1
.obj gap_03_00003B03_rodata, global
.hidden gap_03_00003B03_rodata
	.byte 0x00
.endobj gap_03_00003B03_rodata

# .rodata:0x41C | 0x3B04 | size: 0x7
.obj str_awa_02_mri_000241a4, local
	.string "awa_02"
.endobj str_awa_02_mri_000241a4

# .rodata:0x423 | 0x3B0B | size: 0x1
.obj gap_03_00003B0B_rodata, global
.hidden gap_03_00003B0B_rodata
	.byte 0x00
.endobj gap_03_00003B0B_rodata

# .rodata:0x424 | 0x3B0C | size: 0x8
.obj str_kawa_01_mri_000241ac, local
	.string "kawa_01"
.endobj str_kawa_01_mri_000241ac

# .rodata:0x42C | 0x3B14 | size: 0x8
.obj str_kawa_02_mri_000241b4, local
	.string "kawa_02"
.endobj str_kawa_02_mri_000241b4

# .rodata:0x434 | 0x3B1C | size: 0xD
.obj str_kawa_sibu_01_mri_000241bc, local
	.string "kawa_sibu_01"
.endobj str_kawa_sibu_01_mri_000241bc

# .rodata:0x441 | 0x3B29 | size: 0x7
.obj gap_03_00003B29_rodata, global
.hidden gap_03_00003B29_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B29_rodata

# 0x000196C8..0x0001B0C0 | size: 0x19F8
.data
.balign 8

# .data:0x0 | 0x196C8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x196D0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x196D4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x196D8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x196DC | size: 0x4
.obj gap_04_000196DC_data, global
.hidden gap_04_000196DC_data
	.4byte 0x00000000
.endobj gap_04_000196DC_data

# .data:0x18 | 0x196E0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x196E8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x196EC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x196F0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x196F8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x196FC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x19700 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x19704 | size: 0x4
.obj gap_04_00019704_data, global
.hidden gap_04_00019704_data
	.4byte 0x00000000
.endobj gap_04_00019704_data

# .data:0x40 | 0x19708 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x19710 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x19714 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x19718 | size: 0x44
.obj toge_1_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023d88
	.4byte 0xFFFFFF24
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_1_init

# .data:0x94 | 0x1975C | size: 0xB0
.obj toge_1_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_028_mri_00023d8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_029_mri_00023d9c
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_028_1_mri_00023dac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_029_1_mri_00023dc0
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_1_talk

# .data:0x144 | 0x1980C | size: 0x44
.obj toge_2_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023d88
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_2_init

# .data:0x188 | 0x19850 | size: 0xB0
.obj toge_2_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_030_mri_00023dd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_031_mri_00023de4
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_030_1_mri_00023df4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_031_1_mri_00023e08
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_2_talk

# .data:0x238 | 0x19900 | size: 0x44
.obj toge_3_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023d88
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_3_init

# .data:0x27C | 0x19944 | size: 0xB0
.obj toge_3_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_032_mri_00023e1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_033_mri_00023e2c
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_032_1_mri_00023e3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_033_1_mri_00023e50
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_3_talk

# .data:0x32C | 0x199F4 | size: 0x44
.obj toge_4_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023d88
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_4_init

# .data:0x370 | 0x19A38 | size: 0xB0
.obj toge_4_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_034_mri_00023e64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_035_mri_00023e74
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_034_1_mri_00023e84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_035_1_mri_00023e98
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_4_talk

# .data:0x420 | 0x19AE8 | size: 0x44
.obj toge_5_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023d88
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0xFFFFFFDD
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_5_init

# .data:0x464 | 0x19B2C | size: 0x4C
.obj toge_5_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_mri_00023d88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_mri_00023d88
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_mri_00023d88
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_5_regl

# .data:0x4B0 | 0x19B78 | size: 0xB0
.obj toge_5_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_036_mri_00023eac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_037_mri_00023ebc
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_036_1_mri_00023ecc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_037_1_mri_00023ee0
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_5_talk

# .data:0x560 | 0x19C28 | size: 0x44
.obj toge_6_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023d88
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_6_init

# .data:0x5A4 | 0x19C6C | size: 0xB0
.obj toge_6_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_038_mri_00023ef4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_039_mri_00023f04
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_038_1_mri_00023f14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_039_1_mri_00023f28
	.4byte 0x00000000
	.4byte str_me_mri_00023d88
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_6_talk

# .data:0x654 | 0x19D1C | size: 0x284
.obj npcEnt, local
	.4byte str_トゲ族１_mri_00023f3c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte toge_1_init
	.4byte 0x00000000
	.4byte toge_1_talk
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
	.4byte str_トゲ族２_mri_00023f48
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte toge_2_init
	.4byte 0x00000000
	.4byte toge_2_talk
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
	.4byte str_トゲ族３_mri_00023f54
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte toge_3_init
	.4byte 0x00000000
	.4byte toge_3_talk
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
	.4byte str_トゲ族４_mri_00023f60
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte toge_4_init
	.4byte 0x00000000
	.4byte toge_4_talk
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
	.4byte str_トゲ族５_mri_00023f6c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte toge_5_init
	.4byte toge_5_regl
	.4byte toge_5_talk
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
	.4byte str_トゲ族６_mri_00023f78
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte toge_6_init
	.4byte 0x00000000
	.4byte toge_6_talk
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

# .data:0x8D8 | 0x19FA0 | size: 0x3C
.obj patolight_sound_off, local
	.4byte 0x00020018
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj patolight_sound_off

# .data:0x914 | 0x19FDC | size: 0xB4
.obj bero_entry_data, local
	.4byte str_e_bero_mri_00023f84
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte patolight_sound_off
	.4byte str_mri_09_mri_00023f8c
	.4byte str_w_bero_mri_00023f94
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_mri_00023f94
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte patolight_sound_off
	.4byte str_mri_06_mri_00023f9c
	.4byte str_e_bero02_mri_00023fa4
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

# .data:0x9C8 | 0x1A090 | size: 0x1A0
.obj puni_win_offscreen, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_mri_00023fbc
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_mri_00023fc8
	.4byte str_OFF_d_bom_mri_00023fbc
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_mri_00023fd4
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_hati_mri_00023fe0
	.4byte str_offscreen_mri_00023fd4
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_patolight_mri_00023fe8
	.4byte str_offscreen_mri_00023fd4
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x00000000
	.4byte str_offscreen_mri_00023fd4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF2_TORIDE_BREA_mri_00023ff4
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hati_mri_00023fe0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_patolight_mri_00023fe8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hati_mri_0002400c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_mri_00023fc8
	.4byte str_A_1_mri_00024014
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_mri_00023fc8
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_hati_mri_00023fe0
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_patolight_mri_00023fe8
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_mri_00023fd4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_win_offscreen

# .data:0xB68 | 0x1A230 | size: 0x36C
.obj puni_win, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_puni_winddisable_onoff_18_text_1A904
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_landon_check_18_text_1A6E8
	.4byte 0x00000000
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mri_puni_win_init_18_text_FA4
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_cam3d_get_shift
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x000B005B
	.4byte evt_cam3d_event_from_road
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_00024018
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002004D
	.4byte 0xFE363C80
	.4byte 0x00004000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガイドsp_mri_00024018
	.4byte str_S_1_mri_00024024
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイドsp_mri_00024018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ガイドsp_mri_00024018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e17_01_mri_00024028
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_00024018
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEED
	.4byte 0x0000008C
	.4byte 0x00000204
	.4byte 0x00000113
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_mri_puni_win_attack_18_text_1030
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_TORIDE_BREA_mri_00024038
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_mri_puni_win_end_18_text_1290
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte puni_win_offscreen
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG2_MRI1_mri_00024050
	.4byte 0x00000BB8
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF84066A1
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_winddisable_onoff_18_text_1A904
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_win

# .data:0xED4 | 0x1A59C | size: 0x158
.obj puni_lose, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_cam3d_get_shift
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x000B005B
	.4byte evt_cam3d_event_from_road
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e17_02_mri_00024060
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F80
	.4byte 0x0001005B
	.4byte evt_puni_force_se_off_18_text_1A940
	.4byte 0x00020032
	.4byte 0xF84066A0
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x000001F4
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_06_mri_00023f9c
	.4byte str_e_bero02_mri_00023fa4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_lose

# .data:0x102C | 0x1A6F4 | size: 0xB0
.obj puni_winlose_check, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_zenmetsu_check_18_text_1A620
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_puni_zenmetsu_check_18_text_1A620
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte puni_lose
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte puni_win
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_gra_r_mri_00024070
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_winlose_check

# .data:0x10DC | 0x1A7A4 | size: 0x1A8
.obj toge_enter, local
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_mri_toge_make_retsu_18_text_C08
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0xFE363C8A
	.4byte 0x00000135
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0xFE363C8A
	.4byte 0x00000113
	.4byte 0xFFFFFFD8
	.4byte 0xF24C0A80
	.4byte 0x0004005B
	.4byte evt_mri_toge_retsu_stop_18_text_E54
	.4byte 0x0000006E
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000071
	.4byte 0x0007005B
	.4byte evt_mri_toge_make_retsu_18_text_C08
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000071
	.4byte 0x00000072
	.4byte 0x00000073
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0xFE363C8A
	.4byte 0x00000135
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0xFE363C8A
	.4byte 0x00000113
	.4byte 0x00000028
	.4byte 0xF24C0A80
	.4byte 0x0004005B
	.4byte evt_mri_toge_retsu_stop_18_text_E54
	.4byte 0x00000071
	.4byte 0x00000072
	.4byte 0x00000073
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_mri_toge_make_retsu_18_text_C08
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000074
	.4byte 0x00000075
	.4byte 0x00000077
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000074
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0xFE363C8A
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position2_18_text_195AC
	.4byte 0xFE363C8A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x0004005B
	.4byte evt_mri_toge_retsu_stop_18_text_E54
	.4byte 0x00000074
	.4byte 0x00000075
	.4byte 0x00000077
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toge_enter

# .data:0x1284 | 0x1A94C | size: 0x90
.obj puni_vs_toge_battlewait, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000AF
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_puni_attack_on_18_text_1A870
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e17_00_02_mri_00024078
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte puni_winlose_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_vs_toge_battlewait

# .data:0x1314 | 0x1A9DC | size: 0x158
.obj puni_vs_toge_init, local
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_mri_toge_enter_init_18_text_F10
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SIREN1_mri_0002408c
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFD050F80
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_light_02_mri_0002409c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEED
	.4byte 0x0000008C
	.4byte 0x00000204
	.4byte 0x00000113
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte mri_guide_goryu_18_data_E6C
	.4byte 0x0001005E
	.4byte toge_enter
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG2_PUNITOG_mri_000240a8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte puni_vs_toge_battlewait
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_vs_toge_init

# .data:0x146C | 0x1AB34 | size: 0x230
.obj puni_vs_toge, local
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_mri_toge_enter_init_18_text_F10
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SIREN1_mri_0002408c
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFD050F80
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_light_02_mri_0002409c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEED
	.4byte 0x0000008C
	.4byte 0x00000204
	.4byte 0x00000113
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte mri_guide_goryu_18_data_E6C
	.4byte 0x0001005E
	.4byte toge_enter
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_00024018
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_ガイドsp_mri_00024018
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG2_PUNITOG_mri_000240a8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e17_00_mri_000240c0
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_00024018
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set_rel
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000159
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e17_00_01_mri_000240d0
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_00024018
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF840669F
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_puni_all_movestop_18_text_1A358
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte puni_vs_toge_battlewait
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_vs_toge

# .data:0x169C | 0x1AD64 | size: 0x60
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_000240e4
	.4byte str_S_ueki01_mri_000240f0
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki02_mri_000240fc
	.4byte str_S_ueki02_mri_00024108
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki03_mri_00024114
	.4byte str_S_ueki03_mri_00024120
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki04_mri_0002412c
	.4byte str_S_ueki04_mri_00024138
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki05_mri_00024144
	.4byte str_S_ueki05_mri_00024150
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x16FC | 0x1ADC4 | size: 0x2F8
.obj mri_08_init_evt_18_data_1ADC4, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000008
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
	.4byte 0x00020018
	.4byte 0xF84066A1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x0000001E
	.4byte 0x00000020
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
	.4byte 0x00000021
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
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_0002415c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_0002416c
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00024050
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI7_mri_0002417c
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_0002418c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00024194
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_0002419c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_000241a4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_01_mri_000241ac
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_02_mri_000241b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kawa_sibu_01_mri_000241bc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFF95
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFF6A
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7E80
	.4byte 0x0001005C
	.4byte mri_waterfall_effect_18_data_D3C
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840669F
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte puni_vs_toge
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF84066A1
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte puni_vs_toge_init
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84066A1
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_gra_r_mri_00024070
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84066A1
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hati_mri_00023fe0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hati_mri_0002400c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_patolight_mri_00023fe8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_08_init_evt_18_data_1ADC4

# .data:0x19F4 | 0x1B0BC | size: 0x4
.obj gap_04_0001B0BC_data, global
.hidden gap_04_0001B0BC_data
	.4byte 0x00000000
.endobj gap_04_0001B0BC_data
