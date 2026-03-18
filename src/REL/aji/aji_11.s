.include "macros.inc"
.file "aji_11.o"

# 0x00002E7C..0x00002F24 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x2E7C | size: 0x38
.fn peach_evt_toumei, local
/* 00002E7C 00002F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002E80 00002F44  7C 08 02 A6 */	mflr r0
/* 00002E84 00002F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002E88 00002F4C  48 00 33 B5 */	bl marioGetPtr
/* 00002E8C 00002F50  3C 80 00 00 */	lis r4, zero_aji_00013e90@ha
/* 00002E90 00002F54  C0 04 00 00 */	lfs f0, zero_aji_00013e90@l(r4)
/* 00002E94 00002F58  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 00002E98 00002F5C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 00002E9C 00002F60  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 00002EA0 00002F64  38 60 00 02 */	li r3, 0x2
/* 00002EA4 00002F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002EA8 00002F6C  7C 08 03 A6 */	mtlr r0
/* 00002EAC 00002F70  38 21 00 10 */	addi r1, r1, 0x10
/* 00002EB0 00002F74  4E 80 00 20 */	blr
.endfn peach_evt_toumei

# .text:0x38 | 0x2EB4 | size: 0x70
.fn map_anim_flag_off, local
/* 00002EB4 00002F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002EB8 00002F7C  7C 08 02 A6 */	mflr r0
/* 00002EBC 00002F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002EC0 00002F84  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002EC4 00002F88  7C 7D 1B 78 */	mr r29, r3
/* 00002EC8 00002F8C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002ECC 00002F90  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002ED0 00002F94  48 00 33 6D */	bl evtGetValue
/* 00002ED4 00002F98  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002ED8 00002F9C  7C 7E 1B 78 */	mr r30, r3
/* 00002EDC 00002FA0  7F A3 EB 78 */	mr r3, r29
/* 00002EE0 00002FA4  48 00 33 5D */	bl evtGetValue
/* 00002EE4 00002FA8  7C 7F 1B 78 */	mr r31, r3
/* 00002EE8 00002FAC  7F C3 F3 78 */	mr r3, r30
/* 00002EEC 00002FB0  48 00 33 51 */	bl mapSearchAnmObj
/* 00002EF0 00002FB4  28 03 00 00 */	cmplwi r3, 0x0
/* 00002EF4 00002FB8  40 82 00 0C */	bne .L_00002F00
/* 00002EF8 00002FBC  38 60 00 02 */	li r3, 0x2
/* 00002EFC 00002FC0  48 00 00 14 */	b .L_00002F10
.L_00002F00:
/* 00002F00 00002FC4  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 00002F04 00002FC8  7C 00 F8 78 */	andc r0, r0, r31
/* 00002F08 00002FCC  B0 03 00 00 */	sth r0, 0x0(r3)
/* 00002F0C 00002FD0  38 60 00 02 */	li r3, 0x2
.L_00002F10:
/* 00002F10 00002FD4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00002F14 00002FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002F18 00002FDC  7C 08 03 A6 */	mtlr r0
/* 00002F1C 00002FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 00002F20 00002FE4  4E 80 00 20 */	blr
.endfn map_anim_flag_off

# 0x00002E00..0x00003030 | size: 0x230
.rodata
.balign 8

# .rodata:0x0 | 0x2E00 | size: 0x9
.obj str_door_w_A_aji_00013c68, local
	.string "door_w_A"
.endobj str_door_w_A_aji_00013c68

# .rodata:0x9 | 0x2E09 | size: 0x3
.obj gap_03_00002E09_rodata, global
.hidden gap_03_00002E09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E09_rodata

# .rodata:0xC | 0x2E0C | size: 0x9
.obj str_door_w_B_aji_00013c74, local
	.string "door_w_B"
.endobj str_door_w_B_aji_00013c74

# .rodata:0x15 | 0x2E15 | size: 0x3
.obj gap_03_00002E15_rodata, global
.hidden gap_03_00002E15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E15_rodata

# .rodata:0x18 | 0x2E18 | size: 0x7
.obj str_w_bero_aji_00013c80, local
	.string "w_bero"
.endobj str_w_bero_aji_00013c80

# .rodata:0x1F | 0x2E1F | size: 0x1
.obj gap_03_00002E1F_rodata, global
.hidden gap_03_00002E1F_rodata
	.byte 0x00
.endobj gap_03_00002E1F_rodata

# .rodata:0x20 | 0x2E20 | size: 0x7
.obj str_aji_10_aji_00013c88, local
	.string "aji_10"
.endobj str_aji_10_aji_00013c88

# .rodata:0x27 | 0x2E27 | size: 0x1
.obj gap_03_00002E27_rodata, global
.hidden gap_03_00002E27_rodata
	.byte 0x00
.endobj gap_03_00002E27_rodata

# .rodata:0x28 | 0x2E28 | size: 0x7
.obj str_e_bero_aji_00013c90, local
	.string "e_bero"
.endobj str_e_bero_aji_00013c90

# .rodata:0x2F | 0x2E2F | size: 0x1
.obj gap_03_00002E2F_rodata, global
.hidden gap_03_00002E2F_rodata
	.byte 0x00
.endobj gap_03_00002E2F_rodata

# .rodata:0x30 | 0x2E30 | size: 0x11
.obj str_peach_aji_249_01_aji_00013c98, local
	.string "peach_aji_249_01"
.endobj str_peach_aji_249_01_aji_00013c98

# .rodata:0x41 | 0x2E41 | size: 0x3
.obj gap_03_00002E41_rodata, global
.hidden gap_03_00002E41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E41_rodata

# .rodata:0x44 | 0x2E44 | size: 0xE
.obj str_peach_aji_250_aji_00013cac, local
	.string "peach_aji_250"
.endobj str_peach_aji_250_aji_00013cac

# .rodata:0x52 | 0x2E52 | size: 0x2
.obj gap_03_00002E52_rodata, global
.hidden gap_03_00002E52_rodata
	.2byte 0x0000
.endobj gap_03_00002E52_rodata

# .rodata:0x54 | 0x2E54 | size: 0x8
.obj str_GAZ_A_1_aji_00013cbc, local
	.string "GAZ_A_1"
.endobj str_GAZ_A_1_aji_00013cbc

# .rodata:0x5C | 0x2E5C | size: 0xB
.obj str_c_gazigazi_aji_00013cc4, local
	.string "c_gazigazi"
.endobj str_c_gazigazi_aji_00013cc4

# .rodata:0x67 | 0x2E67 | size: 0x1
.obj gap_03_00002E67_rodata, global
.hidden gap_03_00002E67_rodata
	.byte 0x00
.endobj gap_03_00002E67_rodata

# .rodata:0x68 | 0x2E68 | size: 0x8
.obj str_GAZ_S_1_aji_00013cd0, local
	.string "GAZ_S_1"
.endobj str_GAZ_S_1_aji_00013cd0

# .rodata:0x70 | 0x2E70 | size: 0x6
.obj str_gazi1_aji_00013cd8, local
	.string "gazi1"
.endobj str_gazi1_aji_00013cd8

# .rodata:0x76 | 0x2E76 | size: 0x2
.obj gap_03_00002E76_rodata, global
.hidden gap_03_00002E76_rodata
	.2byte 0x0000
.endobj gap_03_00002E76_rodata

# .rodata:0x78 | 0x2E78 | size: 0x6
.obj str_gazi2_aji_00013ce0, local
	.string "gazi2"
.endobj str_gazi2_aji_00013ce0

# .rodata:0x7E | 0x2E7E | size: 0x2
.obj gap_03_00002E7E_rodata, global
.hidden gap_03_00002E7E_rodata
	.2byte 0x0000
.endobj gap_03_00002E7E_rodata

# .rodata:0x80 | 0x2E80 | size: 0x6
.obj str_gazi3_aji_00013ce8, local
	.string "gazi3"
.endobj str_gazi3_aji_00013ce8

# .rodata:0x86 | 0x2E86 | size: 0x2
.obj gap_03_00002E86_rodata, global
.hidden gap_03_00002E86_rodata
	.2byte 0x0000
.endobj gap_03_00002E86_rodata

# .rodata:0x88 | 0x2E88 | size: 0x6
.obj str_gazi4_aji_00013cf0, local
	.string "gazi4"
.endobj str_gazi4_aji_00013cf0

# .rodata:0x8E | 0x2E8E | size: 0x2
.obj gap_03_00002E8E_rodata, global
.hidden gap_03_00002E8E_rodata
	.2byte 0x0000
.endobj gap_03_00002E8E_rodata

# .rodata:0x90 | 0x2E90 | size: 0x6
.obj str_gazi5_aji_00013cf8, local
	.string "gazi5"
.endobj str_gazi5_aji_00013cf8

# .rodata:0x96 | 0x2E96 | size: 0x2
.obj gap_03_00002E96_rodata, global
.hidden gap_03_00002E96_rodata
	.2byte 0x0000
.endobj gap_03_00002E96_rodata

# .rodata:0x98 | 0x2E98 | size: 0x6
.obj str_gazi6_aji_00013d00, local
	.string "gazi6"
.endobj str_gazi6_aji_00013d00

# .rodata:0x9E | 0x2E9E | size: 0x2
.obj gap_03_00002E9E_rodata, global
.hidden gap_03_00002E9E_rodata
	.2byte 0x0000
.endobj gap_03_00002E9E_rodata

# .rodata:0xA0 | 0x2EA0 | size: 0x11
.obj str_peach_aji_244_01_aji_00013d08, local
	.string "peach_aji_244_01"
.endobj str_peach_aji_244_01_aji_00013d08

# .rodata:0xB1 | 0x2EB1 | size: 0x3
.obj gap_03_00002EB1_rodata, global
.hidden gap_03_00002EB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EB1_rodata

# .rodata:0xB4 | 0x2EB4 | size: 0x6
.obj str_mario_aji_00013d1c, local
	.string "mario"
.endobj str_mario_aji_00013d1c

# .rodata:0xBA | 0x2EBA | size: 0x2
.obj gap_03_00002EBA_rodata, global
.hidden gap_03_00002EBA_rodata
	.2byte 0x0000
.endobj gap_03_00002EBA_rodata

# .rodata:0xBC | 0x2EBC | size: 0xB
.obj str_monitor_02_aji_00013d24, local
	.string "monitor_02"
.endobj str_monitor_02_aji_00013d24

# .rodata:0xC7 | 0x2EC7 | size: 0x1
.obj gap_03_00002EC7_rodata, global
.hidden gap_03_00002EC7_rodata
	.byte 0x00
.endobj gap_03_00002EC7_rodata

# .rodata:0xC8 | 0x2EC8 | size: 0xB
.obj str_monitor_03_aji_00013d30, local
	.string "monitor_03"
.endobj str_monitor_03_aji_00013d30

# .rodata:0xD3 | 0x2ED3 | size: 0x1
.obj gap_03_00002ED3_rodata, global
.hidden gap_03_00002ED3_rodata
	.byte 0x00
.endobj gap_03_00002ED3_rodata

# .rodata:0xD4 | 0x2ED4 | size: 0x14
.obj str_SFX_PEACH_DISC_SET1_aji_00013d3c, local
	.string "SFX_PEACH_DISC_SET1"
.endobj str_SFX_PEACH_DISC_SET1_aji_00013d3c

# .rodata:0xE8 | 0x2EE8 | size: 0x16
.obj str_SFX_PEACH_MONITOR_ON_aji_00013d50, local
	.string "SFX_PEACH_MONITOR_ON1"
.endobj str_SFX_PEACH_MONITOR_ON_aji_00013d50

# .rodata:0xFE | 0x2EFE | size: 0x2
.obj gap_03_00002EFE_rodata, global
.hidden gap_03_00002EFE_rodata
	.2byte 0x0000
.endobj gap_03_00002EFE_rodata

# .rodata:0x100 | 0x2F00 | size: 0x16
.obj str_BGM_FF_PEACH_DISCSET_aji_00013d68, local
	.string "BGM_FF_PEACH_DISCSET1"
.endobj str_BGM_FF_PEACH_DISCSET_aji_00013d68

# .rodata:0x116 | 0x2F16 | size: 0x2
.obj gap_03_00002F16_rodata, global
.hidden gap_03_00002F16_rodata
	.2byte 0x0000
.endobj gap_03_00002F16_rodata

# .rodata:0x118 | 0x2F18 | size: 0xB
.obj str_monitor_01_aji_00013d80, local
	.string "monitor_01"
.endobj str_monitor_01_aji_00013d80

# .rodata:0x123 | 0x2F23 | size: 0x1
.obj gap_03_00002F23_rodata, global
.hidden gap_03_00002F23_rodata
	.byte 0x00
.endobj gap_03_00002F23_rodata

# .rodata:0x124 | 0x2F24 | size: 0xE
.obj str_peach_aji_247_aji_00013d8c, local
	.string "peach_aji_247"
.endobj str_peach_aji_247_aji_00013d8c

# .rodata:0x132 | 0x2F32 | size: 0x2
.obj gap_03_00002F32_rodata, global
.hidden gap_03_00002F32_rodata
	.2byte 0x0000
.endobj gap_03_00002F32_rodata

# .rodata:0x134 | 0x2F34 | size: 0x17
.obj str_SFX_PEACH_MONITOR_OF_aji_00013d9c, local
	.string "SFX_PEACH_MONITOR_OFF1"
.endobj str_SFX_PEACH_MONITOR_OF_aji_00013d9c

# .rodata:0x14B | 0x2F4B | size: 0x1
.obj gap_03_00002F4B_rodata, global
.hidden gap_03_00002F4B_rodata
	.byte 0x00
.endobj gap_03_00002F4B_rodata

# .rodata:0x14C | 0x2F4C | size: 0xE
.obj str_peach_aji_248_aji_00013db4, local
	.string "peach_aji_248"
.endobj str_peach_aji_248_aji_00013db4

# .rodata:0x15A | 0x2F5A | size: 0x2
.obj gap_03_00002F5A_rodata, global
.hidden gap_03_00002F5A_rodata
	.2byte 0x0000
.endobj gap_03_00002F5A_rodata

# .rodata:0x15C | 0x2F5C | size: 0x5
.obj str_tana_aji_00013dc4, local
	.string "tana"
.endobj str_tana_aji_00013dc4

# .rodata:0x161 | 0x2F61 | size: 0x3
.obj gap_03_00002F61_rodata, global
.hidden gap_03_00002F61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F61_rodata

# .rodata:0x164 | 0x2F64 | size: 0xE
.obj str_peach_aji_245_aji_00013dcc, local
	.string "peach_aji_245"
.endobj str_peach_aji_245_aji_00013dcc

# .rodata:0x172 | 0x2F72 | size: 0x2
.obj gap_03_00002F72_rodata, global
.hidden gap_03_00002F72_rodata
	.2byte 0x0000
.endobj gap_03_00002F72_rodata

# .rodata:0x174 | 0x2F74 | size: 0x5
.obj str_disk_aji_00013ddc, local
	.string "disk"
.endobj str_disk_aji_00013ddc

# .rodata:0x179 | 0x2F79 | size: 0x3
.obj gap_03_00002F79_rodata, global
.hidden gap_03_00002F79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F79_rodata

# .rodata:0x17C | 0x2F7C | size: 0xE
.obj str_peach_aji_246_aji_00013de4, local
	.string "peach_aji_246"
.endobj str_peach_aji_246_aji_00013de4

# .rodata:0x18A | 0x2F8A | size: 0x2
.obj gap_03_00002F8A_rodata, global
.hidden gap_03_00002F8A_rodata
	.2byte 0x0000
.endobj gap_03_00002F8A_rodata

# .rodata:0x18C | 0x2F8C | size: 0xA
.obj str_a_disksys_aji_00013df4, local
	.string "a_disksys"
.endobj str_a_disksys_aji_00013df4

# .rodata:0x196 | 0x2F96 | size: 0x2
.obj gap_03_00002F96_rodata, global
.hidden gap_03_00002F96_rodata
	.2byte 0x0000
.endobj gap_03_00002F96_rodata

# .rodata:0x198 | 0x2F98 | size: 0xE
.obj str_peach_aji_249_aji_00013e00, local
	.string "peach_aji_249"
.endobj str_peach_aji_249_aji_00013e00

# .rodata:0x1A6 | 0x2FA6 | size: 0x2
.obj gap_03_00002FA6_rodata, global
.hidden gap_03_00002FA6_rodata
	.2byte 0x0000
.endobj gap_03_00002FA6_rodata

# .rodata:0x1A8 | 0x2FA8 | size: 0xE
.obj str_peach_aji_244_aji_00013e10, local
	.string "peach_aji_244"
.endobj str_peach_aji_244_aji_00013e10

# .rodata:0x1B6 | 0x2FB6 | size: 0x2
.obj gap_03_00002FB6_rodata, global
.hidden gap_03_00002FB6_rodata
	.2byte 0x0000
.endobj gap_03_00002FB6_rodata

# .rodata:0x1B8 | 0x2FB8 | size: 0xE
.obj str_BGM_STG7_DUN1_aji_00013e20, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_aji_00013e20

# .rodata:0x1C6 | 0x2FC6 | size: 0x2
.obj gap_03_00002FC6_rodata, global
.hidden gap_03_00002FC6_rodata
	.2byte 0x0000
.endobj gap_03_00002FC6_rodata

# .rodata:0x1C8 | 0x2FC8 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00013e30, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00013e30

# .rodata:0x1D6 | 0x2FD6 | size: 0x2
.obj gap_03_00002FD6_rodata, global
.hidden gap_03_00002FD6_rodata
	.2byte 0x0000
.endobj gap_03_00002FD6_rodata

# .rodata:0x1D8 | 0x2FD8 | size: 0xE
.obj str_ENV_STG7_AJI6_aji_00013e40, local
	.string "ENV_STG7_AJI6"
.endobj str_ENV_STG7_AJI6_aji_00013e40

# .rodata:0x1E6 | 0x2FE6 | size: 0x2
.obj gap_03_00002FE6_rodata, global
.hidden gap_03_00002FE6_rodata
	.2byte 0x0000
.endobj gap_03_00002FE6_rodata

# .rodata:0x1E8 | 0x2FE8 | size: 0x7
.obj str_sikaku_aji_00013e50, local
	.string "sikaku"
.endobj str_sikaku_aji_00013e50

# .rodata:0x1EF | 0x2FEF | size: 0x1
.obj gap_03_00002FEF_rodata, global
.hidden gap_03_00002FEF_rodata
	.byte 0x00
.endobj gap_03_00002FEF_rodata

# .rodata:0x1F0 | 0x2FF0 | size: 0x7
.obj str_mizu_1_aji_00013e58, local
	.string "mizu_1"
.endobj str_mizu_1_aji_00013e58

# .rodata:0x1F7 | 0x2FF7 | size: 0x1
.obj gap_03_00002FF7_rodata, global
.hidden gap_03_00002FF7_rodata
	.byte 0x00
.endobj gap_03_00002FF7_rodata

# .rodata:0x1F8 | 0x2FF8 | size: 0x7
.obj str_mizu_2_aji_00013e60, local
	.string "mizu_2"
.endobj str_mizu_2_aji_00013e60

# .rodata:0x1FF | 0x2FFF | size: 0x1
.obj gap_03_00002FFF_rodata, global
.hidden gap_03_00002FFF_rodata
	.byte 0x00
.endobj gap_03_00002FFF_rodata

# .rodata:0x200 | 0x3000 | size: 0x7
.obj str_mizu_3_aji_00013e68, local
	.string "mizu_3"
.endobj str_mizu_3_aji_00013e68

# .rodata:0x207 | 0x3007 | size: 0x1
.obj gap_03_00003007_rodata, global
.hidden gap_03_00003007_rodata
	.byte 0x00
.endobj gap_03_00003007_rodata

# .rodata:0x208 | 0x3008 | size: 0xB
.obj str_mizutama_1_aji_00013e70, local
	.string "mizutama_1"
.endobj str_mizutama_1_aji_00013e70

# .rodata:0x213 | 0x3013 | size: 0x1
.obj gap_03_00003013_rodata, global
.hidden gap_03_00003013_rodata
	.byte 0x00
.endobj gap_03_00003013_rodata

# .rodata:0x214 | 0x3014 | size: 0xB
.obj str_mizutama_2_aji_00013e7c, local
	.string "mizutama_2"
.endobj str_mizutama_2_aji_00013e7c

# .rodata:0x21F | 0x301F | size: 0x1
.obj gap_03_0000301F_rodata, global
.hidden gap_03_0000301F_rodata
	.byte 0x00
.endobj gap_03_0000301F_rodata

# .rodata:0x220 | 0x3020 | size: 0x6
.obj str_dummy_aji_00013e88, local
	.string "dummy"
.endobj str_dummy_aji_00013e88
	.2byte 0x0000

# .rodata:0x228 | 0x3028 | size: 0x4
.obj zero_aji_00013e90, local
	.float 0
.endobj zero_aji_00013e90

# .rodata:0x22C | 0x302C | size: 0x4
.obj gap_03_0000302C_rodata, global
.hidden gap_03_0000302C_rodata
	.4byte 0x00000000
.endobj gap_03_0000302C_rodata

# 0x00017DE0..0x00018A68 | size: 0xC88
.data
.balign 8

# .data:0x0 | 0x17DE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x17DE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x17DEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x17DF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x17DF4 | size: 0x4
.obj gap_04_00017DF4_data, global
.hidden gap_04_00017DF4_data
	.4byte 0x00000000
.endobj gap_04_00017DF4_data

# .data:0x18 | 0x17DF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x17E00 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x17E04 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x17E08 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x17E10 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x17E14 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x17E18 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x17E1C | size: 0x4
.obj gap_04_00017E1C_data, global
.hidden gap_04_00017E1C_data
	.4byte 0x00000000
.endobj gap_04_00017E1C_data

# .data:0x40 | 0x17E20 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x17E28 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x17E2C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x17E30 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_A_aji_00013c68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_B_aji_00013c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x17E88 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_A_aji_00013c68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_B_aji_00013c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x17EE0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00013c80
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_10_aji_00013c88
	.4byte str_e_bero_aji_00013c90
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x178 | 0x17F58 | size: 0xC8
.obj peach_evt_bero, local
	.4byte 0x00020018
	.4byte 0xF8406BF0
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x00020018
	.4byte 0xF8406BF1
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_249_01_aji_00013c98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_250_aji_00013cac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_bero

# .data:0x240 | 0x18020 | size: 0x78
.obj bero_peach_data, local
	.4byte str_w_bero_aji_00013c80
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte peach_evt_bero
	.4byte str_aji_10_aji_00013c88
	.4byte str_e_bero_aji_00013c90
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_peach_data

# .data:0x2B8 | 0x18098 | size: 0x14
.obj key_evt, local
	.4byte 0x00020032
	.4byte 0xF8406BD4
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj key_evt

# .data:0x2CC | 0x180AC | size: 0x34
.obj evt_gajigaji_anim, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_GAZ_A_1_aji_00013cbc
	.4byte 0x0003005B
	.4byte evt_npc_wait_anim
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gajigaji_anim

# .data:0x300 | 0x180E0 | size: 0x180
.obj evt_gajigaji_main, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000B4
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte 0xFE363C8A
	.4byte str_c_gazigazi_aji_00013cc4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_GAZ_S_1_aji_00013cd0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0001005C
	.4byte evt_gajigaji_anim
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000B4
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0xFE363C82
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gajigaji_main

# .data:0x480 | 0x18260 | size: 0xC8
.obj evt_gajigaji, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_gazi1_aji_00013cd8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFEE8
	.4byte 0x0001005C
	.4byte evt_gajigaji_main
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_gazi2_aji_00013ce0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFEED
	.4byte 0x0001005C
	.4byte evt_gajigaji_main
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_gazi3_aji_00013ce8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFEF2
	.4byte 0x0001005C
	.4byte evt_gajigaji_main
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_gazi4_aji_00013cf0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFEF7
	.4byte 0x0001005C
	.4byte evt_gajigaji_main
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_gazi5_aji_00013cf8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFEFC
	.4byte 0x0001005C
	.4byte evt_gajigaji_main
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_gazi6_aji_00013d00
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFF01
	.4byte 0x0001005C
	.4byte evt_gajigaji_main
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gajigaji

# .data:0x548 | 0x18328 | size: 0x8
.obj item_list, local
	.4byte 0x00000056
	.4byte 0xFFFFFFFF
.endobj item_list

# .data:0x550 | 0x18330 | size: 0x290
.obj peach_evt_disksys, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BF0
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_244_01_aji_00013d08
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte item_list
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_monitor_02_aji_00013d24
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_monitor_03_aji_00013d30
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_DISC_SET1_aji_00013d3c
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_MONITOR_ON_aji_00013d50
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_PEACH_DISCSET_aji_00013d68
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_monitor_01_aji_00013d80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_monitor_01_aji_00013d80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_247_aji_00013d8c
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_monitor_02_aji_00013d24
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte map_anim_flag_off
	.4byte str_monitor_02_aji_00013d24
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_monitor_02_aji_00013d24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x000A005B
	.4byte evt_snd_sfxon_3d_ex
	.4byte str_SFX_PEACH_MONITOR_OF_aji_00013d9c
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000005DC
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_monitor_03_aji_00013d30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_monitor_03_aji_00013d30
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_02_aji_00013d24
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_03_aji_00013d30
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_248_aji_00013db4
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x00020032
	.4byte 0xF8406BF1
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_tana_aji_00013dc4
	.4byte 0x00000000
	.4byte peach_evt_tana2
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_disksys

# .data:0x7E0 | 0x185C0 | size: 0xC8
.obj peach_evt_tana1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_245_aji_00013dcc
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_disk_aji_00013ddc
	.4byte 0x00000056
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_disk_aji_00013ddc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_246_aji_00013de4
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x00020032
	.4byte 0xF8406BF0
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_disksys_aji_00013df4
	.4byte 0x00000000
	.4byte peach_evt_disksys
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_tana1

# .data:0x8A8 | 0x18688 | size: 0x7C
.obj peach_evt_tana2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000056
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000056
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_249_aji_00013e00
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_tana2

# .data:0x924 | 0x18704 | size: 0x1A4
.obj peach_evt_stg5, local
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000040
	.4byte 0x0003005B
	.4byte evt_sub_system_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000040
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte peach_evt_toumei
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x00020018
	.4byte 0xF8406BF0
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_tana_aji_00013dc4
	.4byte 0x00000000
	.4byte peach_evt_tana1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_disksys_aji_00013df4
	.4byte 0x00000000
	.4byte peach_evt_disksys
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406BF1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_disksys_aji_00013df4
	.4byte 0x00000000
	.4byte peach_evt_disksys
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_tana_aji_00013dc4
	.4byte 0x00000000
	.4byte peach_evt_tana2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_aji_00013c80
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_w_bero_aji_00013c80
	.4byte bero_peach_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_aji_00013c80
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020018
	.4byte 0xF8406BEF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_244_aji_00013e10
	.4byte 0x00000000
	.4byte str_mario_aji_00013d1c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BEF
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg5

# .data:0xAC8 | 0x188A8 | size: 0x1BC
.obj aji_11_init_evt_2_data_188A8, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000107
	.4byte 0x00000108
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_aji_00013e20
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00013e30
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI6_aji_00013e40
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
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sikaku_aji_00013e50
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_1_aji_00013e58
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_2_aji_00013e60
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_3_aji_00013e68
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizutama_1_aji_00013e70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizutama_2_aji_00013e7c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000160
	.4byte 0x00020018
	.4byte 0xF8406BD4
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_00013e88
	.4byte 0x0000001F
	.4byte 0x00000032
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte key_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_02_aji_00013d24
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_03_aji_00013d30
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000107
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte peach_evt_stg5
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_gajigaji
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_11_init_evt_2_data_188A8

# .data:0xC84 | 0x18A64 | size: 0x4
.obj gap_04_00018A64_data, global
.hidden gap_04_00018A64_data
	.4byte 0x00000000
.endobj gap_04_00018A64_data
