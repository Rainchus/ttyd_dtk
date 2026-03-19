.include "macros.inc"
.file "jin_04.o"

# 0x00003E90..0x00003F08 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x3E90 | size: 0x30
.fn vivian_away, local
/* 00003E90 00003F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003E94 00003F58  7C 08 02 A6 */	mflr r0
/* 00003E98 00003F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003E9C 00003F60  4B FF C1 65 */	bl pouchGetPtr
/* 00003EA0 00003F64  A0 03 00 54 */	lhz r0, 0x54(r3)
/* 00003EA4 00003F68  60 00 00 02 */	ori r0, r0, 0x2
/* 00003EA8 00003F6C  B0 03 00 54 */	sth r0, 0x54(r3)
/* 00003EAC 00003F70  38 60 00 02 */	li r3, 0x2
/* 00003EB0 00003F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003EB4 00003F78  7C 08 03 A6 */	mtlr r0
/* 00003EB8 00003F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 00003EBC 00003F80  4E 80 00 20 */	blr
.endfn vivian_away

# .text:0x30 | 0x3EC0 | size: 0x48
.fn getYoshiColor, local
/* 00003EC0 00003F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003EC4 00003F88  7C 08 02 A6 */	mflr r0
/* 00003EC8 00003F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003ECC 00003F90  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00003ED0 00003F94  7C 7E 1B 78 */	mr r30, r3
/* 00003ED4 00003F98  38 60 00 04 */	li r3, 0x4
/* 00003ED8 00003F9C  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00003EDC 00003FA0  4B FF C1 25 */	bl pouchGetPartyColor
/* 00003EE0 00003FA4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003EE4 00003FA8  7C 65 1B 78 */	mr r5, r3
/* 00003EE8 00003FAC  7F C3 F3 78 */	mr r3, r30
/* 00003EEC 00003FB0  4B FF C1 15 */	bl evtSetValue
/* 00003EF0 00003FB4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00003EF4 00003FB8  38 60 00 02 */	li r3, 0x2
/* 00003EF8 00003FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003EFC 00003FC0  7C 08 03 A6 */	mtlr r0
/* 00003F00 00003FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 00003F04 00003FC8  4E 80 00 20 */	blr
.endfn getYoshiColor

# 0x00000810..0x00000D00 | size: 0x4F0
.rodata
.balign 8

# .rodata:0x0 | 0x810 | size: 0x7
.obj str_door00_jin_00007a30, local
	.string "door00"
.endobj str_door00_jin_00007a30

# .rodata:0x7 | 0x817 | size: 0x1
.obj gap_03_00000817_rodata, global
.hidden gap_03_00000817_rodata
	.byte 0x00
.endobj gap_03_00000817_rodata

# .rodata:0x8 | 0x818 | size: 0x7
.obj str_s_bero_jin_00007a38, local
	.string "s_bero"
.endobj str_s_bero_jin_00007a38

# .rodata:0xF | 0x81F | size: 0x1
.obj gap_03_0000081F_rodata, global
.hidden gap_03_0000081F_rodata
	.byte 0x00
.endobj gap_03_0000081F_rodata

# .rodata:0x10 | 0x820 | size: 0x7
.obj str_jin_00_jin_00007a40, local
	.string "jin_00"
.endobj str_jin_00_jin_00007a40

# .rodata:0x17 | 0x827 | size: 0x1
.obj gap_03_00000827_rodata, global
.hidden gap_03_00000827_rodata
	.byte 0x00
.endobj gap_03_00000827_rodata

# .rodata:0x18 | 0x828 | size: 0x9
.obj str_n_bero_2_jin_00007a48, local
	.string "n_bero_2"
.endobj str_n_bero_2_jin_00007a48

# .rodata:0x21 | 0x831 | size: 0x3
.obj gap_03_00000831_rodata, global
.hidden gap_03_00000831_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000831_rodata

# .rodata:0x24 | 0x834 | size: 0x9
.obj str_ランペル_jin_00007a54, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.byte 0x00
.endobj str_ランペル_jin_00007a54

# .rodata:0x2D | 0x83D | size: 0x3
.obj gap_03_0000083D_rodata, global
.hidden gap_03_0000083D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000083D_rodata

# .rodata:0x30 | 0x840 | size: 0x4
.obj str_S_2_jin_00007a60, local
	.string "S_2"
.endobj str_S_2_jin_00007a60

# .rodata:0x34 | 0x844 | size: 0x4
.obj str_T_2_jin_00007a64, local
	.string "T_2"
.endobj str_T_2_jin_00007a64

# .rodata:0x38 | 0x848 | size: 0xC
.obj str_stg4_jin_00_jin_00007a68, local
	.string "stg4_jin_00"
.endobj str_stg4_jin_00_jin_00007a68

# .rodata:0x44 | 0x854 | size: 0x17
.obj str_BGM_FF_ENV_RPL_APPEA_jin_00007a74, local
	.string "BGM_FF_ENV_RPL_APPEAR1"
.endobj str_BGM_FF_ENV_RPL_APPEA_jin_00007a74

# .rodata:0x5B | 0x86B | size: 0x1
.obj gap_03_0000086B_rodata, global
.hidden gap_03_0000086B_rodata
	.byte 0x00
.endobj gap_03_0000086B_rodata

# .rodata:0x5C | 0x86C | size: 0xC
.obj str_stg4_jin_01_jin_00007a8c, local
	.string "stg4_jin_01"
.endobj str_stg4_jin_01_jin_00007a8c

# .rodata:0x68 | 0x878 | size: 0xC
.obj str_stg4_jin_02_jin_00007a98, local
	.string "stg4_jin_02"
.endobj str_stg4_jin_02_jin_00007a98

# .rodata:0x74 | 0x884 | size: 0xC
.obj str_stg4_jin_03_jin_00007aa4, local
	.string "stg4_jin_03"
.endobj str_stg4_jin_03_jin_00007aa4

# .rodata:0x80 | 0x890 | size: 0x4
.obj str_S_1_jin_00007ab0, local
	.string "S_1"
.endobj str_S_1_jin_00007ab0

# .rodata:0x84 | 0x894 | size: 0x4
.obj str_T_1_jin_00007ab4, local
	.string "T_1"
.endobj str_T_1_jin_00007ab4

# .rodata:0x88 | 0x898 | size: 0xC
.obj str_stg4_jin_04_jin_00007ab8, local
	.string "stg4_jin_04"
.endobj str_stg4_jin_04_jin_00007ab8

# .rodata:0x94 | 0x8A4 | size: 0xC
.obj str_stg4_jin_05_jin_00007ac4, local
	.string "stg4_jin_05"
.endobj str_stg4_jin_05_jin_00007ac4

# .rodata:0xA0 | 0x8B0 | size: 0xC
.obj str_stg4_jin_06_jin_00007ad0, local
	.string "stg4_jin_06"
.endobj str_stg4_jin_06_jin_00007ad0

# .rodata:0xAC | 0x8BC | size: 0x6
.obj str_M_I_Y_jin_00007adc, local
	.string "M_I_Y"
.endobj str_M_I_Y_jin_00007adc

# .rodata:0xB2 | 0x8C2 | size: 0x2
.obj gap_03_000008C2_rodata, global
.hidden gap_03_000008C2_rodata
	.2byte 0x0000
.endobj gap_03_000008C2_rodata

# .rodata:0xB4 | 0x8C4 | size: 0xC
.obj str_stg4_jin_07_jin_00007ae4, local
	.string "stg4_jin_07"
.endobj str_stg4_jin_07_jin_00007ae4

# .rodata:0xC0 | 0x8D0 | size: 0x9
.obj str_rubystar_jin_00007af0, local
	.string "rubystar"
.endobj str_rubystar_jin_00007af0

# .rodata:0xC9 | 0x8D9 | size: 0x3
.obj gap_03_000008D9_rodata, global
.hidden gap_03_000008D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008D9_rodata

# .rodata:0xCC | 0x8DC | size: 0x18
.obj str_SFX_EVT_STARSTONE_JU_jin_00007afc, local
	.string "SFX_EVT_STARSTONE_JUMP1"
.endobj str_SFX_EVT_STARSTONE_JU_jin_00007afc

# .rodata:0xE4 | 0x8F4 | size: 0xB
.obj str_にせマリオ_jin_00007b14, local
	.4byte 0x82C982B9
	.4byte 0x837D838A
	.byte 0x83, 0x49, 0x00
.endobj str_にせマリオ_jin_00007b14

# .rodata:0xEF | 0x8FF | size: 0x1
.obj gap_03_000008FF_rodata, global
.hidden gap_03_000008FF_rodata
	.byte 0x00
.endobj gap_03_000008FF_rodata

# .rodata:0xF0 | 0x900 | size: 0x6
.obj str_M_S_1_jin_00007b20, local
	.string "M_S_1"
.endobj str_M_S_1_jin_00007b20

# .rodata:0xF6 | 0x906 | size: 0x2
.obj gap_03_00000906_rodata, global
.hidden gap_03_00000906_rodata
	.2byte 0x0000
.endobj gap_03_00000906_rodata

# .rodata:0xF8 | 0x908 | size: 0x6
.obj str_M_D_1_jin_00007b28, local
	.string "M_D_1"
.endobj str_M_D_1_jin_00007b28

# .rodata:0xFE | 0x90E | size: 0x2
.obj gap_03_0000090E_rodata, global
.hidden gap_03_0000090E_rodata
	.2byte 0x0000
.endobj gap_03_0000090E_rodata

# .rodata:0x100 | 0x910 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_jin_00007b30, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_jin_00007b30

# .rodata:0x11B | 0x92B | size: 0x1
.obj gap_03_0000092B_rodata, global
.hidden gap_03_0000092B_rodata
	.byte 0x00
.endobj gap_03_0000092B_rodata

# .rodata:0x11C | 0x92C | size: 0x16
.obj str_SFX_VOICE_MARIO_DOWN_jin_00007b4c, local
	.string "SFX_VOICE_MARIO_DOWN1"
.endobj str_SFX_VOICE_MARIO_DOWN_jin_00007b4c

# .rodata:0x132 | 0x942 | size: 0x2
.obj gap_03_00000942_rodata, global
.hidden gap_03_00000942_rodata
	.2byte 0x0000
.endobj gap_03_00000942_rodata

# .rodata:0x134 | 0x944 | size: 0x6
.obj str_M_D_2_jin_00007b64, local
	.string "M_D_2"
.endobj str_M_D_2_jin_00007b64

# .rodata:0x13A | 0x94A | size: 0x2
.obj gap_03_0000094A_rodata, global
.hidden gap_03_0000094A_rodata
	.2byte 0x0000
.endobj gap_03_0000094A_rodata

# .rodata:0x13C | 0x94C | size: 0xC
.obj str_stg4_jin_10_jin_00007b6c, local
	.string "stg4_jin_10"
.endobj str_stg4_jin_10_jin_00007b6c

# .rodata:0x148 | 0x958 | size: 0x18
.obj str_SFX_STG4_LANPEL_M_JU_jin_00007b78, local
	.string "SFX_STG4_LANPEL_M_JUMP1"
.endobj str_SFX_STG4_LANPEL_M_JU_jin_00007b78

# .rodata:0x160 | 0x970 | size: 0x8
.obj str_EM_J_1B_jin_00007b90, local
	.string "EM_J_1B"
.endobj str_EM_J_1B_jin_00007b90

# .rodata:0x168 | 0x978 | size: 0x8
.obj str_EM_J_1C_jin_00007b98, local
	.string "EM_J_1C"
.endobj str_EM_J_1C_jin_00007b98

# .rodata:0x170 | 0x980 | size: 0xE
.obj str_BGM_STG4_JIN1_jin_00007ba0, local
	.string "BGM_STG4_JIN1"
.endobj str_BGM_STG4_JIN1_jin_00007ba0

# .rodata:0x17E | 0x98E | size: 0x2
.obj gap_03_0000098E_rodata, global
.hidden gap_03_0000098E_rodata
	.2byte 0x0000
.endobj gap_03_0000098E_rodata

# .rodata:0x180 | 0x990 | size: 0xE
.obj str_ENV_STG4_JIN1_jin_00007bb0, local
	.string "ENV_STG4_JIN1"
.endobj str_ENV_STG4_JIN1_jin_00007bb0

# .rodata:0x18E | 0x99E | size: 0x2
.obj gap_03_0000099E_rodata, global
.hidden gap_03_0000099E_rodata
	.2byte 0x0000
.endobj gap_03_0000099E_rodata

# .rodata:0x190 | 0x9A0 | size: 0x9
.obj str_ヨッシー_jin_00007bc0, local
	.4byte 0x83888362
	.4byte 0x8356815B
	.byte 0x00
.endobj str_ヨッシー_jin_00007bc0

# .rodata:0x199 | 0x9A9 | size: 0x3
.obj gap_03_000009A9_rodata, global
.hidden gap_03_000009A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009A9_rodata

# .rodata:0x19C | 0x9AC | size: 0xC
.obj str_c_babyyoshi_jin_00007bcc, local
	.string "c_babyyoshi"
.endobj str_c_babyyoshi_jin_00007bcc

# .rodata:0x1A8 | 0x9B8 | size: 0xD
.obj str_c_babyyoshi2_jin_00007bd8, local
	.string "c_babyyoshi2"
.endobj str_c_babyyoshi2_jin_00007bd8

# .rodata:0x1B5 | 0x9C5 | size: 0x3
.obj gap_03_000009C5_rodata, global
.hidden gap_03_000009C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009C5_rodata

# .rodata:0x1B8 | 0x9C8 | size: 0xD
.obj str_c_babyyoshi3_jin_00007be8, local
	.string "c_babyyoshi3"
.endobj str_c_babyyoshi3_jin_00007be8

# .rodata:0x1C5 | 0x9D5 | size: 0x3
.obj gap_03_000009D5_rodata, global
.hidden gap_03_000009D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009D5_rodata

# .rodata:0x1C8 | 0x9D8 | size: 0xD
.obj str_c_babyyoshi4_jin_00007bf8, local
	.string "c_babyyoshi4"
.endobj str_c_babyyoshi4_jin_00007bf8

# .rodata:0x1D5 | 0x9E5 | size: 0x3
.obj gap_03_000009E5_rodata, global
.hidden gap_03_000009E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009E5_rodata

# .rodata:0x1D8 | 0x9E8 | size: 0xD
.obj str_c_babyyoshi5_jin_00007c08, local
	.string "c_babyyoshi5"
.endobj str_c_babyyoshi5_jin_00007c08

# .rodata:0x1E5 | 0x9F5 | size: 0x3
.obj gap_03_000009F5_rodata, global
.hidden gap_03_000009F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009F5_rodata

# .rodata:0x1E8 | 0x9F8 | size: 0xD
.obj str_c_babyyoshi6_jin_00007c18, local
	.string "c_babyyoshi6"
.endobj str_c_babyyoshi6_jin_00007c18

# .rodata:0x1F5 | 0xA05 | size: 0x3
.obj gap_03_00000A05_rodata, global
.hidden gap_03_00000A05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A05_rodata

# .rodata:0x1F8 | 0xA08 | size: 0xD
.obj str_c_babyyoshi7_jin_00007c28, local
	.string "c_babyyoshi7"
.endobj str_c_babyyoshi7_jin_00007c28

# .rodata:0x205 | 0xA15 | size: 0x3
.obj gap_03_00000A15_rodata, global
.hidden gap_03_00000A15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A15_rodata

# .rodata:0x208 | 0xA18 | size: 0xD
.obj str_クリスチーヌ_jin_00007c38, local
	.4byte 0x834E838A
	.4byte 0x83588360
	.4byte 0x815B836B
	.byte 0x00
.endobj str_クリスチーヌ_jin_00007c38

# .rodata:0x215 | 0xA25 | size: 0x3
.obj gap_03_00000A25_rodata, global
.hidden gap_03_00000A25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A25_rodata

# .rodata:0x218 | 0xA28 | size: 0xB
.obj str_ノコタロウ_jin_00007c48, local
	.4byte 0x836D8352
	.4byte 0x835E838D
	.byte 0x83, 0x45, 0x00
.endobj str_ノコタロウ_jin_00007c48

# .rodata:0x223 | 0xA33 | size: 0x1
.obj gap_03_00000A33_rodata, global
.hidden gap_03_00000A33_rodata
	.byte 0x00
.endobj gap_03_00000A33_rodata

# .rodata:0x224 | 0xA34 | size: 0x9
.obj str_クラウダ_jin_00007c54, local
	.4byte 0x834E8389
	.4byte 0x8345835F
	.byte 0x00
.endobj str_クラウダ_jin_00007c54

# .rodata:0x22D | 0xA3D | size: 0x3
.obj gap_03_00000A3D_rodata, global
.hidden gap_03_00000A3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A3D_rodata

# .rodata:0x230 | 0xA40 | size: 0xC
.obj str_stg4_jin_11_jin_00007c60, local
	.string "stg4_jin_11"
.endobj str_stg4_jin_11_jin_00007c60

# .rodata:0x23C | 0xA4C | size: 0xC
.obj str_stg4_jin_12_jin_00007c6c, local
	.string "stg4_jin_12"
.endobj str_stg4_jin_12_jin_00007c6c

# .rodata:0x248 | 0xA58 | size: 0xC
.obj str_stg4_jin_13_jin_00007c78, local
	.string "stg4_jin_13"
.endobj str_stg4_jin_13_jin_00007c78

# .rodata:0x254 | 0xA64 | size: 0xC
.obj str_stg4_jin_14_jin_00007c84, local
	.string "stg4_jin_14"
.endobj str_stg4_jin_14_jin_00007c84

# .rodata:0x260 | 0xA70 | size: 0xC
.obj str_stg4_jin_15_jin_00007c90, local
	.string "stg4_jin_15"
.endobj str_stg4_jin_15_jin_00007c90

# .rodata:0x26C | 0xA7C | size: 0xC
.obj str_stg4_jin_16_jin_00007c9c, local
	.string "stg4_jin_16"
.endobj str_stg4_jin_16_jin_00007c9c

# .rodata:0x278 | 0xA88 | size: 0xC
.obj str_stg4_jin_17_jin_00007ca8, local
	.string "stg4_jin_17"
.endobj str_stg4_jin_17_jin_00007ca8

# .rodata:0x284 | 0xA94 | size: 0x7
.obj str_EM_U_1_jin_00007cb4, local
	.string "EM_U_1"
.endobj str_EM_U_1_jin_00007cb4

# .rodata:0x28B | 0xA9B | size: 0x1
.obj gap_03_00000A9B_rodata, global
.hidden gap_03_00000A9B_rodata
	.byte 0x00
.endobj gap_03_00000A9B_rodata

# .rodata:0x28C | 0xA9C | size: 0xC
.obj str_stg4_jin_18_jin_00007cbc, local
	.string "stg4_jin_18"
.endobj str_stg4_jin_18_jin_00007cbc

# .rodata:0x298 | 0xAA8 | size: 0x8
.obj str_PTR_S_4_jin_00007cc8, local
	.string "PTR_S_4"
.endobj str_PTR_S_4_jin_00007cc8

# .rodata:0x2A0 | 0xAB0 | size: 0x8
.obj str_PTR_T_5_jin_00007cd0, local
	.string "PTR_T_5"
.endobj str_PTR_T_5_jin_00007cd0

# .rodata:0x2A8 | 0xAB8 | size: 0xC
.obj str_stg4_jin_19_jin_00007cd8, local
	.string "stg4_jin_19"
.endobj str_stg4_jin_19_jin_00007cd8

# .rodata:0x2B4 | 0xAC4 | size: 0x13
.obj str_stg4_jin_19_select_jin_00007ce4, local
	.string "stg4_jin_19_select"
.endobj str_stg4_jin_19_select_jin_00007ce4

# .rodata:0x2C7 | 0xAD7 | size: 0x1
.obj gap_03_00000AD7_rodata, global
.hidden gap_03_00000AD7_rodata
	.byte 0x00
.endobj gap_03_00000AD7_rodata

# .rodata:0x2C8 | 0xAD8 | size: 0xC
.obj str_stg4_jin_20_jin_00007cf8, local
	.string "stg4_jin_20"
.endobj str_stg4_jin_20_jin_00007cf8

# .rodata:0x2D4 | 0xAE4 | size: 0xC
.obj str_stg4_jin_21_jin_00007d04, local
	.string "stg4_jin_21"
.endobj str_stg4_jin_21_jin_00007d04

# .rodata:0x2E0 | 0xAF0 | size: 0x8
.obj str_PTR_S_1_jin_00007d10, local
	.string "PTR_S_1"
.endobj str_PTR_S_1_jin_00007d10

# .rodata:0x2E8 | 0xAF8 | size: 0x8
.obj str_PTR_T_1_jin_00007d18, local
	.string "PTR_T_1"
.endobj str_PTR_T_1_jin_00007d18

# .rodata:0x2F0 | 0xB00 | size: 0x7
.obj str_EM_S_1_jin_00007d20, local
	.string "EM_S_1"
.endobj str_EM_S_1_jin_00007d20

# .rodata:0x2F7 | 0xB07 | size: 0x1
.obj gap_03_00000B07_rodata, global
.hidden gap_03_00000B07_rodata
	.byte 0x00
.endobj gap_03_00000B07_rodata

# .rodata:0x2F8 | 0xB08 | size: 0x4
.obj str_D_2_jin_00007d28, local
	.string "D_2"
.endobj str_D_2_jin_00007d28

# .rodata:0x2FC | 0xB0C | size: 0x7
.obj str_ダミー_jin_00007d2c, local
	.4byte 0x835F837E
	.byte 0x81, 0x5B, 0x00
.endobj str_ダミー_jin_00007d2c

# .rodata:0x303 | 0xB13 | size: 0x1
.obj gap_03_00000B13_rodata, global
.hidden gap_03_00000B13_rodata
	.byte 0x00
.endobj gap_03_00000B13_rodata

# .rodata:0x304 | 0xB14 | size: 0x8
.obj str_c_mario_jin_00007d34, local
	.string "c_mario"
.endobj str_c_mario_jin_00007d34

# .rodata:0x30C | 0xB1C | size: 0x18
.obj str_SFX_STG4_LANPEL_M_DO_jin_00007d3c, local
	.string "SFX_STG4_LANPEL_M_DOWN1"
.endobj str_SFX_STG4_LANPEL_M_DO_jin_00007d3c

# .rodata:0x324 | 0xB34 | size: 0x7
.obj str_EM_D_4_jin_00007d54, local
	.string "EM_D_4"
.endobj str_EM_D_4_jin_00007d54

# .rodata:0x32B | 0xB3B | size: 0x1
.obj gap_03_00000B3B_rodata, global
.hidden gap_03_00000B3B_rodata
	.byte 0x00
.endobj gap_03_00000B3B_rodata

# .rodata:0x32C | 0xB3C | size: 0x1A
.obj str_SFX_VOICE_NM_LAND_DA_jin_00007d5c, local
	.string "SFX_VOICE_NM_LAND_DAMAGE2"
.endobj str_SFX_VOICE_NM_LAND_DA_jin_00007d5c

# .rodata:0x346 | 0xB56 | size: 0x2
.obj gap_03_00000B56_rodata, global
.hidden gap_03_00000B56_rodata
	.2byte 0x0000
.endobj gap_03_00000B56_rodata

# .rodata:0x348 | 0xB58 | size: 0xC
.obj str_stg4_jin_27_jin_00007d78, local
	.string "stg4_jin_27"
.endobj str_stg4_jin_27_jin_00007d78

# .rodata:0x354 | 0xB64 | size: 0x6
.obj str_M_I_1_jin_00007d84, local
	.string "M_I_1"
.endobj str_M_I_1_jin_00007d84

# .rodata:0x35A | 0xB6A | size: 0x2
.obj gap_03_00000B6A_rodata, global
.hidden gap_03_00000B6A_rodata
	.2byte 0x0000
.endobj gap_03_00000B6A_rodata

# .rodata:0x35C | 0xB6C | size: 0x19
.obj str_SFX_STG4_MARIO_RETUR_jin_00007d8c, local
	.string "SFX_STG4_MARIO_RETURN1_1"
.endobj str_SFX_STG4_MARIO_RETUR_jin_00007d8c

# .rodata:0x375 | 0xB85 | size: 0x3
.obj gap_03_00000B85_rodata, global
.hidden gap_03_00000B85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B85_rodata

# .rodata:0x378 | 0xB88 | size: 0xE
.obj str_stardust2_n64_jin_00007da8, local
	.string "stardust2_n64"
.endobj str_stardust2_n64_jin_00007da8

# .rodata:0x386 | 0xB96 | size: 0x2
.obj gap_03_00000B96_rodata, global
.hidden gap_03_00000B96_rodata
	.2byte 0x0000
.endobj gap_03_00000B96_rodata

# .rodata:0x388 | 0xB98 | size: 0x18
.obj str_SFX_STG4_CHANGE_LANP_jin_00007db8, local
	.string "SFX_STG4_CHANGE_LANPEL1"
.endobj str_SFX_STG4_CHANGE_LANP_jin_00007db8

# .rodata:0x3A0 | 0xBB0 | size: 0x17
.obj str_SFX_VOICE_MARIO_PAUS_jin_00007dd0, local
	.string "SFX_VOICE_MARIO_PAUSE1"
.endobj str_SFX_VOICE_MARIO_PAUS_jin_00007dd0

# .rodata:0x3B7 | 0xBC7 | size: 0x1
.obj gap_03_00000BC7_rodata, global
.hidden gap_03_00000BC7_rodata
	.byte 0x00
.endobj gap_03_00000BC7_rodata

# .rodata:0x3B8 | 0xBC8 | size: 0xC
.obj str_kemuri_test_jin_00007de8, local
	.string "kemuri_test"
.endobj str_kemuri_test_jin_00007de8

# .rodata:0x3C4 | 0xBD4 | size: 0x4
.obj str_O_1_jin_00007df4, local
	.string "O_1"
.endobj str_O_1_jin_00007df4

# .rodata:0x3C8 | 0xBD8 | size: 0xF
.obj str_ランペル音付き_jin_00007df8, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.4byte 0x89B99574
	.byte 0x82, 0xAB, 0x00
.endobj str_ランペル音付き_jin_00007df8

# .rodata:0x3D7 | 0xBE7 | size: 0x1
.obj gap_03_00000BE7_rodata, global
.hidden gap_03_00000BE7_rodata
	.byte 0x00
.endobj gap_03_00000BE7_rodata

# .rodata:0x3D8 | 0xBE8 | size: 0x4
.obj str_S_3_jin_00007e08, local
	.string "S_3"
.endobj str_S_3_jin_00007e08

# .rodata:0x3DC | 0xBEC | size: 0x4
.obj str_T_3_jin_00007e0c, local
	.string "T_3"
.endobj str_T_3_jin_00007e0c

# .rodata:0x3E0 | 0xBF0 | size: 0xC
.obj str_stg4_jin_28_jin_00007e10, local
	.string "stg4_jin_28"
.endobj str_stg4_jin_28_jin_00007e10

# .rodata:0x3EC | 0xBFC | size: 0x4
.obj str_R_2_jin_00007e1c, local
	.string "R_2"
.endobj str_R_2_jin_00007e1c

# .rodata:0x3F0 | 0xC00 | size: 0xC
.obj str_stg4_jin_29_jin_00007e20, local
	.string "stg4_jin_29"
.endobj str_stg4_jin_29_jin_00007e20

# .rodata:0x3FC | 0xC0C | size: 0xC
.obj str_stg4_jin_30_jin_00007e2c, local
	.string "stg4_jin_30"
.endobj str_stg4_jin_30_jin_00007e2c

# .rodata:0x408 | 0xC18 | size: 0xC
.obj str_stg4_jin_31_jin_00007e38, local
	.string "stg4_jin_31"
.endobj str_stg4_jin_31_jin_00007e38

# .rodata:0x414 | 0xC24 | size: 0xC
.obj str_stg4_jin_32_jin_00007e44, local
	.string "stg4_jin_32"
.endobj str_stg4_jin_32_jin_00007e44

# .rodata:0x420 | 0xC30 | size: 0xC
.obj str_stg4_jin_33_jin_00007e50, local
	.string "stg4_jin_33"
.endobj str_stg4_jin_33_jin_00007e50

# .rodata:0x42C | 0xC3C | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_jin_00007e5c, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_jin_00007e5c

# .rodata:0x443 | 0xC53 | size: 0x1
.obj gap_03_00000C53_rodata, global
.hidden gap_03_00000C53_rodata
	.byte 0x00
.endobj gap_03_00000C53_rodata

# .rodata:0x444 | 0xC54 | size: 0x6
.obj str_M_N_2_jin_00007e74, local
	.string "M_N_2"
.endobj str_M_N_2_jin_00007e74

# .rodata:0x44A | 0xC5A | size: 0x2
.obj gap_03_00000C5A_rodata, global
.hidden gap_03_00000C5A_rodata
	.2byte 0x0000
.endobj gap_03_00000C5A_rodata

# .rodata:0x44C | 0xC5C | size: 0xC
.obj str_stg4_jin_34_jin_00007e7c, local
	.string "stg4_jin_34"
.endobj str_stg4_jin_34_jin_00007e7c

# .rodata:0x458 | 0xC68 | size: 0xC
.obj str_stg4_jin_35_jin_00007e88, local
	.string "stg4_jin_35"
.endobj str_stg4_jin_35_jin_00007e88

# .rodata:0x464 | 0xC74 | size: 0xC
.obj str_stg4_jin_36_jin_00007e94, local
	.string "stg4_jin_36"
.endobj str_stg4_jin_36_jin_00007e94

# .rodata:0x470 | 0xC80 | size: 0xC
.obj str_stg4_jin_37_jin_00007ea0, local
	.string "stg4_jin_37"
.endobj str_stg4_jin_37_jin_00007ea0

# .rodata:0x47C | 0xC8C | size: 0x8
.obj str_PTR_W_4_jin_00007eac, local
	.string "PTR_W_4"
.endobj str_PTR_W_4_jin_00007eac

# .rodata:0x484 | 0xC94 | size: 0x8
.obj str_PTR_T_6_jin_00007eb4, local
	.string "PTR_T_6"
.endobj str_PTR_T_6_jin_00007eb4

# .rodata:0x48C | 0xC9C | size: 0x8
.obj str_PTR_S_5_jin_00007ebc, local
	.string "PTR_S_5"
.endobj str_PTR_S_5_jin_00007ebc

# .rodata:0x494 | 0xCA4 | size: 0xC
.obj str_stg4_jin_38_jin_00007ec4, local
	.string "stg4_jin_38"
.endobj str_stg4_jin_38_jin_00007ec4

# .rodata:0x4A0 | 0xCB0 | size: 0x8
.obj str_PTR_U_1_jin_00007ed0, local
	.string "PTR_U_1"
.endobj str_PTR_U_1_jin_00007ed0

# .rodata:0x4A8 | 0xCB8 | size: 0x8
.obj str_PTR_W_1_jin_00007ed8, local
	.string "PTR_W_1"
.endobj str_PTR_W_1_jin_00007ed8

# .rodata:0x4B0 | 0xCC0 | size: 0x8
.obj str_PTR_R_1_jin_00007ee0, local
	.string "PTR_R_1"
.endobj str_PTR_R_1_jin_00007ee0

# .rodata:0x4B8 | 0xCC8 | size: 0x3
.obj str_me_jin_00007ee8, local
	.string "me"
.endobj str_me_jin_00007ee8

# .rodata:0x4BB | 0xCCB | size: 0x1
.obj gap_03_00000CCB_rodata, global
.hidden gap_03_00000CCB_rodata
	.byte 0x00
.endobj gap_03_00000CCB_rodata

# .rodata:0x4BC | 0xCCC | size: 0xA
.obj str_mobj_jump_jin_00007eec, local
	.string "mobj_jump"
.endobj str_mobj_jump_jin_00007eec

# .rodata:0x4C6 | 0xCD6 | size: 0x2
.obj gap_03_00000CD6_rodata, global
.hidden gap_03_00000CD6_rodata
	.2byte 0x0000
.endobj gap_03_00000CD6_rodata

# .rodata:0x4C8 | 0xCD8 | size: 0xF
.obj str_MOBJ_mobj_jump_jin_00007ef8, local
	.string "MOBJ_mobj_jump"
.endobj str_MOBJ_mobj_jump_jin_00007ef8

# .rodata:0x4D7 | 0xCE7 | size: 0x1
.obj gap_03_00000CE7_rodata, global
.hidden gap_03_00000CE7_rodata
	.byte 0x00
.endobj gap_03_00000CE7_rodata

# .rodata:0x4D8 | 0xCE8 | size: 0xD
.obj str_mobj_recover_jin_00007f08, local
	.string "mobj_recover"
.endobj str_mobj_recover_jin_00007f08

# .rodata:0x4E5 | 0xCF5 | size: 0x3
.obj gap_03_00000CF5_rodata, global
.hidden gap_03_00000CF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000CF5_rodata

# .rodata:0x4E8 | 0xCF8 | size: 0x7
.obj str_a_yuka_jin_00007f18, local
	.string "a_yuka"
.endobj str_a_yuka_jin_00007f18

# .rodata:0x4EF | 0xCFF | size: 0x1
.obj gap_03_00000CFF_rodata, global
.hidden gap_03_00000CFF_rodata
	.byte 0x00
.endobj gap_03_00000CFF_rodata

# 0x00004A88..0x00007948 | size: 0x2EC0
.data
.balign 8

# .data:0x0 | 0x4A88 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4A90 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4A94 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4A98 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4A9C | size: 0x4
.obj gap_04_00004A9C_data, global
.hidden gap_04_00004A9C_data
	.4byte 0x00000000
.endobj gap_04_00004A9C_data

# .data:0x18 | 0x4AA0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4AA8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4AAC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4AB0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4AB8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4ABC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4AC0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4AC4 | size: 0x4
.obj gap_04_00004AC4_data, global
.hidden gap_04_00004AC4_data
	.4byte 0x00000000
.endobj gap_04_00004AC4_data

# .data:0x40 | 0x4AC8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4AD0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4AD4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4AD8 | size: 0x30
.obj s_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door00_jin_00007a30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_close

# .data:0x80 | 0x4B08 | size: 0x30
.obj s_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door00_jin_00007a30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_open

# .data:0xB0 | 0x4B38 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_jin_00007a38
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_00_jin_00007a40
	.4byte str_n_bero_2_jin_00007a48
	.4byte 0x00050005
	.4byte s_close
	.4byte s_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x128 | 0x4BB0 | size: 0x548
.obj ranperu_toujou, local
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_2_jin_00007a60
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_2_jin_00007a60
	.4byte str_T_2_jin_00007a64
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_00_jin_00007a68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006C
	.4byte 0x000002FE
	.4byte 0x0000008D
	.4byte 0x00000069
	.4byte 0x000002D6
	.4byte 0xFFFFFF9E
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_RPL_APPEA_jin_00007a74
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_01_jin_00007a8c
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000302
	.4byte 0x00000158
	.4byte 0xFFFFFFB5
	.4byte 0x000002C9
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_02_jin_00007a98
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006C
	.4byte 0x000002FE
	.4byte 0x0000008D
	.4byte 0x00000069
	.4byte 0x000002D6
	.4byte 0xFFFFFF9E
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_03_jin_00007aa4
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x0000005C
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x0000029E
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFFFFFFAE
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000028
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set_rel
	.4byte 0xFFFFFFE2
	.4byte 0x0000003C
	.4byte 0x0000012C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_1_jin_00007ab0
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_1_jin_00007ab0
	.4byte str_T_1_jin_00007ab4
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000055
	.4byte 0x0000029E
	.4byte 0xFFFFFFBF
	.4byte 0x0000015E
	.4byte 0xF24AF280
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0x0000002D
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000028
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set_rel
	.4byte 0xFFFFFFE2
	.4byte 0x0000003C
	.4byte 0x0000012C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000043
	.4byte 0x00000032
	.4byte 0x00000578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_04_jin_00007ab8
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFAB
	.4byte 0x000002EE
	.4byte 0x00000126
	.4byte 0xFFFFFFAB
	.4byte 0x000002C6
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_05_jin_00007ac4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000037
	.4byte 0x000002EE
	.4byte 0x00000126
	.4byte 0x00000037
	.4byte 0x000002C6
	.4byte 0x0000002F
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_06_jin_00007ad0
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFAB
	.4byte 0x000002EE
	.4byte 0x00000126
	.4byte 0xFFFFFFAB
	.4byte 0x000002C6
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_jin_00007adc
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000037
	.4byte 0x000002EE
	.4byte 0x00000126
	.4byte 0x00000037
	.4byte 0x000002C6
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_07_jin_00007ae4
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000A
	.4byte 0x00000384
	.4byte 0x000002DC
	.4byte 0x0000000A
	.4byte 0x00000306
	.4byte 0x0000000F
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0001005E
	.4byte irekawatta_mario_init
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte irekawatta_mario
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ranperu_toujou

# .data:0x670 | 0x50F8 | size: 0x3C
.obj starstone_jump_se, local
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_rubystar_jin_00007af0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_STARSTONE_JU_jin_00007afc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj starstone_jump_se

# .data:0x6AC | 0x5134 | size: 0x10C
.obj irekawatta_mario_init, local
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_kagemario_change_13_text_4D24
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFFFFFFF8
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000050
	.4byte 0x0000029E
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x00000311
	.4byte 0x000001A6
	.4byte 0x0000004B
	.4byte 0x000002CB
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00008000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj irekawatta_mario_init

# .data:0x7B8 | 0x5240 | size: 0x7BC
.obj irekawatta_mario, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte irekawatta_mario_init
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_jin_00007b20
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_1_jin_00007b28
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_jin_00007b30
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000005A0
	.4byte 0x000004B0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_DOWN_jin_00007b4c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_2_jin_00007b64
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF8
	.4byte 0x00000320
	.4byte 0x000001A6
	.4byte 0xFFFFFFF8
	.4byte 0x000002DA
	.4byte 0x0000001C
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_rubystar_jin_00007af0
	.4byte 0x00000075
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000055
	.4byte 0x000001D6
	.4byte 0x00000033
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x000000C8
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_rubystar_jin_00007af0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF8
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000023
	.4byte 0x000001D6
	.4byte 0x00000033
	.4byte 0x00000258
	.4byte 0xF24AF280
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000000A
	.4byte 0x000001D6
	.4byte 0x00000033
	.4byte 0x0000012C
	.4byte 0xF24AB680
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFFFFFFFE
	.4byte 0x000001D6
	.4byte 0x00000033
	.4byte 0x00000096
	.4byte 0xF24A9880
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFFFFFFF8
	.4byte 0x000001D6
	.4byte 0x00000033
	.4byte 0x0000004F
	.4byte 0xF24A8780
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFFFFFFF8
	.4byte 0x000001D6
	.4byte 0x00000033
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_rubystar_jin_00007af0
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001005E
	.4byte evt_sub_starstone
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000065
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_kagemario_change_13_text_4D24
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFFFFFFF8
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000050
	.4byte 0x0000029E
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_cam3d_evt_set_npc_rel
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000018D
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_2_jin_00007b64
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x00010003
	.4byte 0x00000065
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000337
	.4byte 0x0000023A
	.4byte 0x00000000
	.4byte 0x000002D7
	.4byte 0x0000001B
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_10_jin_00007b6c
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFFFFFFD3
	.4byte 0x00000069
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFFFFFFD3
	.4byte 0x000001D6
	.4byte 0x00000069
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFFFFFFAC
	.4byte 0x00000190
	.4byte 0x00000069
	.4byte 0x00000190
	.4byte 0xF24B6A80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_LANPEL_M_JU_jin_00007b78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_jin_00007b14
	.4byte str_EM_J_1B_jin_00007b90
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_jin_00007b14
	.4byte str_EM_J_1C_jin_00007b98
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000190
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFD3
	.4byte 0x00000069
	.4byte 0xF24BBA80
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFA4
	.4byte 0x00000258
	.4byte 0x00000069
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_pouch_party_left
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_pouch_party_left
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_pouch_party_left
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_pouch_party_left
	.4byte 0x00000004
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
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_00007ba0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN1_jin_00007bb0
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000C9
	.4byte 0x00020032
	.4byte 0xF84063A1
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj irekawatta_mario

# .data:0xF74 | 0x59FC | size: 0x104
.obj yoshi_color, local
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0002005B
	.4byte getYoshiColor
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi_jin_00007bcc
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi2_jin_00007bd8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi3_jin_00007be8
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi4_jin_00007bf8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi5_jin_00007c08
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi6_jin_00007c18
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi7_jin_00007c28
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ヨッシー_jin_00007bc0
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x40080600
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yoshi_color

# .data:0x1078 | 0x5B00 | size: 0x5E8
.obj ranperu_lastbattle, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000004B
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x00000071
	.4byte 0x0000029E
	.4byte 0x0000002B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x00000087
	.4byte 0x0000029E
	.4byte 0x0000003D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x0000009D
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x000000AF
	.4byte 0x0000029E
	.4byte 0x0000004B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_11_jin_00007c60
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000030C
	.4byte 0x00000185
	.4byte 0x00000000
	.4byte 0x000002C7
	.4byte 0xFFFFFFFA
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_RPL_APPEA_jin_00007a74
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_12_jin_00007c6c
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000005A
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000064
	.4byte 0x0000030C
	.4byte 0x00000185
	.4byte 0x00000064
	.4byte 0x000002C7
	.4byte 0xFFFFFFFA
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_13_jin_00007c78
	.4byte 0x00000000
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000072
	.4byte 0x000002DF
	.4byte 0x000000F0
	.4byte 0x00000072
	.4byte 0x000002B4
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_14_jin_00007c84
	.4byte 0x00000000
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000085
	.4byte 0x000002DF
	.4byte 0x000000F0
	.4byte 0x00000085
	.4byte 0x000002B4
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_15_jin_00007c90
	.4byte 0x00000000
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000009C
	.4byte 0x000002E8
	.4byte 0x000000F0
	.4byte 0x0000009C
	.4byte 0x000002BD
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_16_jin_00007c9c
	.4byte 0x00000000
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000AA
	.4byte 0x000002D3
	.4byte 0x000000F0
	.4byte 0x000000AA
	.4byte 0x000002A8
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_17_jin_00007ca8
	.4byte 0x00000000
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000047
	.4byte 0x000002DF
	.4byte 0x000000D7
	.4byte 0x00000047
	.4byte 0x000002B4
	.4byte 0xFFFFFFFA
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_jin_00007b14
	.4byte str_EM_U_1_jin_00007cb4
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_18_jin_00007cbc
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000001
	.4byte str_PTR_S_4_jin_00007cc8
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000007
	.4byte str_PTR_T_5_jin_00007cd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFA1
	.4byte 0x000002E4
	.4byte 0x00000120
	.4byte 0xFFFFFFA1
	.4byte 0x000002C8
	.4byte 0x0000005A
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_19_jin_00007cd8
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg4_jin_19_select_jin_00007ce4
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg4_jin_20_jin_00007cf8
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000047
	.4byte 0x000002DF
	.4byte 0x000000D7
	.4byte 0x00000047
	.4byte 0x000002B4
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte vivian_away
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_21_jin_00007d04
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000A
	.4byte 0x00000384
	.4byte 0x000002DC
	.4byte 0x0000000A
	.4byte 0x00000306
	.4byte 0x0000000F
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0001005E
	.4byte hontonosugata_mario_init
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000D3
	.4byte 0x0001005C
	.4byte hontonosugata_mario
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ranperu_lastbattle

# .data:0x1660 | 0x60E8 | size: 0x1F4
.obj hontonosugata_mario_init, local
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000001
	.4byte str_PTR_S_1_jin_00007d10
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000007
	.4byte str_PTR_T_1_jin_00007d18
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFFFFFFF1
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ランペル_jin_00007a54
	.4byte 0x40000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000000
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x0000006D
	.4byte 0x0000029E
	.4byte 0x00000029
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x0000004E
	.4byte 0x0000029E
	.4byte 0x0000004B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x00000032
	.4byte 0x0000029E
	.4byte 0x0000003B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x00000018
	.4byte 0x0000029E
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_jin_00007b14
	.4byte str_EM_S_1_jin_00007d20
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_D_2_jin_00007d28
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
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF96
	.4byte 0x0000029E
	.4byte 0x00000023
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFBE
	.4byte 0x0000029E
	.4byte 0x00000023
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEA
	.4byte 0x000002E9
	.4byte 0x00000122
	.4byte 0xFFFFFFEA
	.4byte 0x000002B7
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hontonosugata_mario_init

# .data:0x1854 | 0x62DC | size: 0xED0
.obj hontonosugata_mario, local
	.4byte 0x0001005E
	.4byte hontonosugata_mario_init
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_rubystar_jin_00007af0
	.4byte 0x00000075
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ダミー_jin_00007d2c
	.4byte str_c_mario_jin_00007d34
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ダミー_jin_00007d2c
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_jin_00007d2c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ダミー_jin_00007d2c
	.4byte 0x40000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_LANPEL_M_DO_jin_00007d3c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_jin_00007b14
	.4byte str_EM_D_4_jin_00007d54
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_LAND_DA_jin_00007d5c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ダミー_jin_00007d2c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_jin_00007d2c
	.4byte 0xFE363C80
	.4byte 0x0000029E
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0xF24AB680
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_jin_00007d2c
	.4byte 0xFE363C80
	.4byte 0x0000029E
	.4byte 0xFE363C82
	.4byte 0x00000096
	.4byte 0xF24A9880
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_jin_00007d2c
	.4byte 0xFE363C80
	.4byte 0x0000029E
	.4byte 0xFE363C82
	.4byte 0x0000004B
	.4byte 0xF24A8780
	.4byte 0x0001005C
	.4byte starstone_jump_se
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ダミー_jin_00007d2c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_rubystar_jin_00007af0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000154
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0xFE363C84
	.4byte 0x00020036
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0x0002001C
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000043
	.4byte 0x000002EE
	.4byte 0x00000122
	.4byte 0x00000043
	.4byte 0x000002BC
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_27_jin_00007d78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF96
	.4byte 0x000002EF
	.4byte 0x0000011A
	.4byte 0xFFFFFF96
	.4byte 0x000002CF
	.4byte 0x0000005C
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_1_jin_00007d84
	.4byte 0x0001006C
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_MARIO_RETUR_jin_00007d8c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_stardust2_n64_jin_00007da8
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00001C20
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000FA0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x000017E8
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_CHANGE_LANP_jin_00007db8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_PAUS_jin_00007dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_jin_00007de8
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00001950
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_kagemario_change_13_text_4D24
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001004
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_kagemario_change_13_text_4D24
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_jin_00007b20
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF8
	.4byte 0x00000337
	.4byte 0x00000234
	.4byte 0xFFFFFFF8
	.4byte 0x000002D7
	.4byte 0x00000016
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_O_1_jin_00007df4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ランペル_jin_00007a54
	.4byte str_ランペル音付き_jin_00007df8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_3_jin_00007e08
	.4byte str_T_3_jin_00007e0c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_3_jin_00007e08
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_S_3_jin_00007e08
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_28_jin_00007e10
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_jin_00007a54
	.4byte str_R_2_jin_00007e1c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000002F
	.4byte 0x000002B8
	.4byte 0xFFFFFFBE
	.4byte 0x000001F4
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_jin_00007a54
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000015
	.4byte 0x000002B2
	.4byte 0xFFFFFF8B
	.4byte 0x0000012C
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000005
	.4byte 0x00000258
	.4byte 0xFFFFFED0
	.4byte 0x00000320
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000006E
	.4byte 0x000002DA
	.4byte 0x000000F0
	.4byte 0x0000006E
	.4byte 0x000002B2
	.4byte 0xFFFFFFFA
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_29_jin_00007e20
	.4byte 0x00000000
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004C
	.4byte 0x000002DC
	.4byte 0x00000105
	.4byte 0x0000004C
	.4byte 0x000002B4
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_30_jin_00007e2c
	.4byte 0x00000000
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x000002E4
	.4byte 0x00000105
	.4byte 0x00000032
	.4byte 0x000002BC
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_31_jin_00007e38
	.4byte 0x00000000
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000019
	.4byte 0x000002DD
	.4byte 0x000000FB
	.4byte 0x00000019
	.4byte 0x000002B5
	.4byte 0xFFFFFFFA
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_32_jin_00007e44
	.4byte 0x00000000
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000001
	.4byte str_PTR_S_4_jin_00007cc8
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000007
	.4byte str_PTR_T_5_jin_00007cd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x000002F0
	.4byte 0x000000EE
	.4byte 0xFFFFFFB5
	.4byte 0x000002CF
	.4byte 0x0000005C
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_33_jin_00007e50
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000E
	.4byte 0x00000316
	.4byte 0x000001B1
	.4byte 0x0000000E
	.4byte 0x000002DB
	.4byte 0x0000005C
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFFBE
	.4byte 0x00000014
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFFF0
	.4byte 0x00000023
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
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
	.4byte str_SFX_VOICE_MARIO_NOD1_jin_00007e5c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_jin_00007e74
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_34_jin_00007e7c
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000001
	.4byte str_PTR_S_1_jin_00007d10
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000007
	.4byte str_PTR_T_1_jin_00007d18
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000030
	.4byte 0x0000030D
	.4byte 0x0000017C
	.4byte 0x00000030
	.4byte 0x000002DB
	.4byte 0x0000005C
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_35_jin_00007e88
	.4byte 0x00000000
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD2
	.4byte 0x000002EF
	.4byte 0x000000E8
	.4byte 0xFFFFFFD2
	.4byte 0x000002CF
	.4byte 0x0000005C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_36_jin_00007e94
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_jin_00007e74
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_jin_37_jin_00007ea0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF0
	.4byte 0x00000316
	.4byte 0x000001B1
	.4byte 0xFFFFFFF0
	.4byte 0x000002DB
	.4byte 0x0000005C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_rubystar_jin_00007af0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000002
	.4byte str_PTR_W_4_jin_00007eac
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000003
	.4byte str_PTR_W_4_jin_00007eac
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000007
	.4byte str_PTR_T_6_jin_00007eb4
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000001
	.4byte str_PTR_S_5_jin_00007ebc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24ACA80
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24AA280
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_rubystar_jin_00007af0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_jin_38_jin_00007ec4
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_U_1_jin_00007ed0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_rubystar_jin_00007af0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_S_1_jin_00007d10
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000002
	.4byte str_PTR_W_1_jin_00007ed8
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000003
	.4byte str_PTR_R_1_jin_00007ee0
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000007
	.4byte str_PTR_T_1_jin_00007d18
	.4byte 0x0003005B
	.4byte evt_jin_vivian_pose_set_13_text_214
	.4byte 0x00000001
	.4byte str_PTR_S_1_jin_00007d10
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000D4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000D5
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_rubystar_jin_00007af0
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001005E
	.4byte evt_sub_starstone
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hontonosugata_mario

# .data:0x2724 | 0x71AC | size: 0x50
.obj ranperu_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_jin_00007ee8
	.4byte 0x0000006E
	.4byte 0x000002B7
	.4byte 0xFFFFFFAB
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_jin_00007ee8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ranperu_init

# .data:0x2774 | 0x71FC | size: 0x58
.obj nisemario_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_jin_00007ee8
	.4byte 0xFFFFFFF8
	.4byte 0x0000029E
	.4byte 0x00000051
	.4byte 0x00000030
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_jin_00007ee8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nisemario_init

# .data:0x27CC | 0x7254 | size: 0x284
.obj npcEnt, local
	.4byte str_ランペル_jin_00007a54
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte ranperu_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_にせマリオ_jin_00007b14
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte nisemario_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_クリスチーヌ_jin_00007c38
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ノコタロウ_jin_00007c48
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_クラウダ_jin_00007c54
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ヨッシー_jin_00007bc0
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x2A50 | 0x74D8 | size: 0x2D4
.obj jin_04_jumpstand, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0001002B
	.4byte 0x000000C7
	.4byte 0x0001002B
	.4byte 0x000000D2
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC9
	.4byte 0x00000316
	.4byte 0x000001B6
	.4byte 0xFFFFFFC9
	.4byte 0x000002D7
	.4byte 0x0000004F
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte L_evt_party_dokan
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_jump_jin_00007eec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x0000029E
	.4byte 0x00000032
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFFB5
	.4byte 0x0000029E
	.4byte 0x00000032
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte L_evt_party_dokan
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_jump_jin_00007eec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x000001C2
	.4byte 0x00000082
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_MOBJ_mobj_jump_jin_00007ef8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFFE2
	.4byte 0x000001C2
	.4byte 0x0000006E
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_MOBJ_mobj_jump_jin_00007ef8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_04_jumpstand

# .data:0x2D24 | 0x77AC | size: 0x19C
.obj jin_04_init_evt_13_data_77AC, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_00007ba0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN1_jin_00007bb0
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_kagemario_init_13_text_4DE8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_13_data_AF00
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_jin_00007f08
	.4byte 0x0000000A
	.4byte 0xFFFFFF9C
	.4byte 0x0000003C
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_jumpstand_red
	.4byte 0x00000000
	.4byte str_mobj_jump_jin_00007eec
	.4byte 0xFFFFFFB5
	.4byte 0x000001C2
	.4byte 0x00000064
	.4byte jin_04_jumpstand
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_a_yuka_jin_00007f18
	.4byte 0x00000000
	.4byte ranperu_toujou
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000D2
	.4byte 0x0001005E
	.4byte yoshi_color
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_a_yuka_jin_00007f18
	.4byte 0x00000000
	.4byte ranperu_lastbattle
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte yoshi_color
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte irekawatta_mario
	.4byte 0x00010024
	.4byte 0x000000D3
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte hontonosugata_mario
	.4byte 0x0000006D
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_04_init_evt_13_data_77AC
