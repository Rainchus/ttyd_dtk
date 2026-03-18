.include "macros.inc"
.file "aji_01.o"

# 0x00000000..0x000000C8 | size: 0xC8
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x38
.fn peach_evt_toumei, local
/* 00000000 000000C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000000C 000000D0  48 00 62 31 */	bl marioGetPtr
/* 00000010 000000D4  3C 80 00 00 */	lis r4, zero_aji_00011a18@ha
/* 00000014 000000D8  C0 04 00 00 */	lfs f0, zero_aji_00011a18@l(r4)
/* 00000018 000000DC  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 0000001C 000000E0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 00000020 000000E4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 00000024 000000E8  38 60 00 02 */	li r3, 0x2
/* 00000028 000000EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000002C 000000F0  7C 08 03 A6 */	mtlr r0
/* 00000030 000000F4  38 21 00 10 */	addi r1, r1, 0x10
/* 00000034 000000F8  4E 80 00 20 */	blr
.endfn peach_evt_toumei

# .text:0x38 | 0x38 | size: 0x44
.fn peach_set_pose, local
/* 00000038 000000FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000003C 00000100  7C 08 02 A6 */	mflr r0
/* 00000040 00000104  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000044 00000108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000048 0000010C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000004C 00000110  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000050 00000114  48 00 61 ED */	bl evtGetValue
/* 00000054 00000118  7C 7F 1B 78 */	mr r31, r3
/* 00000058 0000011C  48 00 61 E5 */	bl marioGetPtr
/* 0000005C 00000120  7F E3 FB 78 */	mr r3, r31
/* 00000060 00000124  48 00 61 DD */	bl marioChgPose
/* 00000064 00000128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000068 0000012C  38 60 00 02 */	li r3, 0x2
/* 0000006C 00000130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000070 00000134  7C 08 03 A6 */	mtlr r0
/* 00000074 00000138  38 21 00 10 */	addi r1, r1, 0x10
/* 00000078 0000013C  4E 80 00 20 */	blr
.endfn peach_set_pose

# .text:0x7C | 0x7C | size: 0x4C
.fn get_password, local
/* 0000007C 00000140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000080 00000144  7C 08 02 A6 */	mflr r0
/* 00000084 00000148  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000088 0000014C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000008C 00000150  7C 7E 1B 78 */	mr r30, r3
/* 00000090 00000154  3C 60 00 00 */	lis r3, str_stg7_aji_password_aji_00011a1c@ha
/* 00000094 00000158  38 63 00 00 */	addi r3, r3, str_stg7_aji_password_aji_00011a1c@l
/* 00000098 0000015C  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 0000009C 00000160  48 00 61 A1 */	bl msgSearch
/* 000000A0 00000164  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000000A4 00000168  7C 65 1B 78 */	mr r5, r3
/* 000000A8 0000016C  7F C3 F3 78 */	mr r3, r30
/* 000000AC 00000170  48 00 61 91 */	bl evtSetValue
/* 000000B0 00000174  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000000B4 00000178  38 60 00 02 */	li r3, 0x2
/* 000000B8 0000017C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000000BC 00000180  7C 08 03 A6 */	mtlr r0
/* 000000C0 00000184  38 21 00 10 */	addi r1, r1, 0x10
/* 000000C4 00000188  4E 80 00 20 */	blr
.endfn get_password

# 0x000001A0..0x00000BC8 | size: 0xA28
.rodata
.balign 8

# .rodata:0x0 | 0x1A0 | size: 0xA
.obj str_S_door1_1_aji_00011008, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00011008

# .rodata:0xA | 0x1AA | size: 0x2
.obj gap_03_000001AA_rodata, global
.hidden gap_03_000001AA_rodata
	.2byte 0x0000
.endobj gap_03_000001AA_rodata

# .rodata:0xC | 0x1AC | size: 0xA
.obj str_S_door1_2_aji_00011014, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00011014

# .rodata:0x16 | 0x1B6 | size: 0x2
.obj gap_03_000001B6_rodata, global
.hidden gap_03_000001B6_rodata
	.2byte 0x0000
.endobj gap_03_000001B6_rodata

# .rodata:0x18 | 0x1B8 | size: 0xA
.obj str_S_door2_2_aji_00011020, local
	.string "S_door2_2"
.endobj str_S_door2_2_aji_00011020

# .rodata:0x22 | 0x1C2 | size: 0x2
.obj gap_03_000001C2_rodata, global
.hidden gap_03_000001C2_rodata
	.2byte 0x0000
.endobj gap_03_000001C2_rodata

# .rodata:0x24 | 0x1C4 | size: 0xA
.obj str_S_door2_1_aji_0001102c, local
	.string "S_door2_1"
.endobj str_S_door2_1_aji_0001102c

# .rodata:0x2E | 0x1CE | size: 0x2
.obj gap_03_000001CE_rodata, global
.hidden gap_03_000001CE_rodata
	.2byte 0x0000
.endobj gap_03_000001CE_rodata

# .rodata:0x30 | 0x1D0 | size: 0xA
.obj str_S_door3_1_aji_00011038, local
	.string "S_door3_1"
.endobj str_S_door3_1_aji_00011038

# .rodata:0x3A | 0x1DA | size: 0x2
.obj gap_03_000001DA_rodata, global
.hidden gap_03_000001DA_rodata
	.2byte 0x0000
.endobj gap_03_000001DA_rodata

# .rodata:0x3C | 0x1DC | size: 0xA
.obj str_S_door3_2_aji_00011044, local
	.string "S_door3_2"
.endobj str_S_door3_2_aji_00011044

# .rodata:0x46 | 0x1E6 | size: 0x2
.obj gap_03_000001E6_rodata, global
.hidden gap_03_000001E6_rodata
	.2byte 0x0000
.endobj gap_03_000001E6_rodata

# .rodata:0x48 | 0x1E8 | size: 0xA
.obj str_S_door4_2_aji_00011050, local
	.string "S_door4_2"
.endobj str_S_door4_2_aji_00011050

# .rodata:0x52 | 0x1F2 | size: 0x2
.obj gap_03_000001F2_rodata, global
.hidden gap_03_000001F2_rodata
	.2byte 0x0000
.endobj gap_03_000001F2_rodata

# .rodata:0x54 | 0x1F4 | size: 0xA
.obj str_S_door4_1_aji_0001105c, local
	.string "S_door4_1"
.endobj str_S_door4_1_aji_0001105c

# .rodata:0x5E | 0x1FE | size: 0x2
.obj gap_03_000001FE_rodata, global
.hidden gap_03_000001FE_rodata
	.2byte 0x0000
.endobj gap_03_000001FE_rodata

# .rodata:0x60 | 0x200 | size: 0xA
.obj str_S_door6_2_aji_00011068, local
	.string "S_door6_2"
.endobj str_S_door6_2_aji_00011068

# .rodata:0x6A | 0x20A | size: 0x2
.obj gap_03_0000020A_rodata, global
.hidden gap_03_0000020A_rodata
	.2byte 0x0000
.endobj gap_03_0000020A_rodata

# .rodata:0x6C | 0x20C | size: 0xA
.obj str_S_door6_1_aji_00011074, local
	.string "S_door6_1"
.endobj str_S_door6_1_aji_00011074

# .rodata:0x76 | 0x216 | size: 0x2
.obj gap_03_00000216_rodata, global
.hidden gap_03_00000216_rodata
	.2byte 0x0000
.endobj gap_03_00000216_rodata

# .rodata:0x78 | 0x218 | size: 0xA
.obj str_S_door7_2_aji_00011080, local
	.string "S_door7_2"
.endobj str_S_door7_2_aji_00011080

# .rodata:0x82 | 0x222 | size: 0x2
.obj gap_03_00000222_rodata, global
.hidden gap_03_00000222_rodata
	.2byte 0x0000
.endobj gap_03_00000222_rodata

# .rodata:0x84 | 0x224 | size: 0xA
.obj str_S_door7_1_aji_0001108c, local
	.string "S_door7_1"
.endobj str_S_door7_1_aji_0001108c

# .rodata:0x8E | 0x22E | size: 0x2
.obj gap_03_0000022E_rodata, global
.hidden gap_03_0000022E_rodata
	.2byte 0x0000
.endobj gap_03_0000022E_rodata

# .rodata:0x90 | 0x230 | size: 0xA
.obj str_S_door8_2_aji_00011098, local
	.string "S_door8_2"
.endobj str_S_door8_2_aji_00011098

# .rodata:0x9A | 0x23A | size: 0x2
.obj gap_03_0000023A_rodata, global
.hidden gap_03_0000023A_rodata
	.2byte 0x0000
.endobj gap_03_0000023A_rodata

# .rodata:0x9C | 0x23C | size: 0xA
.obj str_S_door8_1_aji_000110a4, local
	.string "S_door8_1"
.endobj str_S_door8_1_aji_000110a4

# .rodata:0xA6 | 0x246 | size: 0x2
.obj gap_03_00000246_rodata, global
.hidden gap_03_00000246_rodata
	.2byte 0x0000
.endobj gap_03_00000246_rodata

# .rodata:0xA8 | 0x248 | size: 0xA
.obj str_S_door9_2_aji_000110b0, local
	.string "S_door9_2"
.endobj str_S_door9_2_aji_000110b0

# .rodata:0xB2 | 0x252 | size: 0x2
.obj gap_03_00000252_rodata, global
.hidden gap_03_00000252_rodata
	.2byte 0x0000
.endobj gap_03_00000252_rodata

# .rodata:0xB4 | 0x254 | size: 0xA
.obj str_S_door9_1_aji_000110bc, local
	.string "S_door9_1"
.endobj str_S_door9_1_aji_000110bc

# .rodata:0xBE | 0x25E | size: 0x2
.obj gap_03_0000025E_rodata, global
.hidden gap_03_0000025E_rodata
	.2byte 0x0000
.endobj gap_03_0000025E_rodata

# .rodata:0xC0 | 0x260 | size: 0xA
.obj str_S_door5_1_aji_000110c8, local
	.string "S_door5_1"
.endobj str_S_door5_1_aji_000110c8

# .rodata:0xCA | 0x26A | size: 0x2
.obj gap_03_0000026A_rodata, global
.hidden gap_03_0000026A_rodata
	.2byte 0x0000
.endobj gap_03_0000026A_rodata

# .rodata:0xCC | 0x26C | size: 0xA
.obj str_S_door5_2_aji_000110d4, local
	.string "S_door5_2"
.endobj str_S_door5_2_aji_000110d4

# .rodata:0xD6 | 0x276 | size: 0x2
.obj gap_03_00000276_rodata, global
.hidden gap_03_00000276_rodata
	.2byte 0x0000
.endobj gap_03_00000276_rodata

# .rodata:0xD8 | 0x278 | size: 0xB
.obj str_S_door10_2_aji_000110e0, local
	.string "S_door10_2"
.endobj str_S_door10_2_aji_000110e0

# .rodata:0xE3 | 0x283 | size: 0x1
.obj gap_03_00000283_rodata, global
.hidden gap_03_00000283_rodata
	.byte 0x00
.endobj gap_03_00000283_rodata

# .rodata:0xE4 | 0x284 | size: 0xB
.obj str_S_door10_1_aji_000110ec, local
	.string "S_door10_1"
.endobj str_S_door10_1_aji_000110ec

# .rodata:0xEF | 0x28F | size: 0x1
.obj gap_03_0000028F_rodata, global
.hidden gap_03_0000028F_rodata
	.byte 0x00
.endobj gap_03_0000028F_rodata

# .rodata:0xF0 | 0x290 | size: 0xB
.obj str_S_door11_1_aji_000110f8, local
	.string "S_door11_1"
.endobj str_S_door11_1_aji_000110f8

# .rodata:0xFB | 0x29B | size: 0x1
.obj gap_03_0000029B_rodata, global
.hidden gap_03_0000029B_rodata
	.byte 0x00
.endobj gap_03_0000029B_rodata

# .rodata:0xFC | 0x29C | size: 0xB
.obj str_S_door11_2_aji_00011104, local
	.string "S_door11_2"
.endobj str_S_door11_2_aji_00011104

# .rodata:0x107 | 0x2A7 | size: 0x1
.obj gap_03_000002A7_rodata, global
.hidden gap_03_000002A7_rodata
	.byte 0x00
.endobj gap_03_000002A7_rodata

# .rodata:0x108 | 0x2A8 | size: 0xB
.obj str_S_door12_2_aji_00011110, local
	.string "S_door12_2"
.endobj str_S_door12_2_aji_00011110

# .rodata:0x113 | 0x2B3 | size: 0x1
.obj gap_03_000002B3_rodata, global
.hidden gap_03_000002B3_rodata
	.byte 0x00
.endobj gap_03_000002B3_rodata

# .rodata:0x114 | 0x2B4 | size: 0xB
.obj str_S_door12_1_aji_0001111c, local
	.string "S_door12_1"
.endobj str_S_door12_1_aji_0001111c

# .rodata:0x11F | 0x2BF | size: 0x1
.obj gap_03_000002BF_rodata, global
.hidden gap_03_000002BF_rodata
	.byte 0x00
.endobj gap_03_000002BF_rodata

# .rodata:0x120 | 0x2C0 | size: 0xB
.obj str_S_door13_1_aji_00011128, local
	.string "S_door13_1"
.endobj str_S_door13_1_aji_00011128

# .rodata:0x12B | 0x2CB | size: 0x1
.obj gap_03_000002CB_rodata, global
.hidden gap_03_000002CB_rodata
	.byte 0x00
.endobj gap_03_000002CB_rodata

# .rodata:0x12C | 0x2CC | size: 0xB
.obj str_S_door13_2_aji_00011134, local
	.string "S_door13_2"
.endobj str_S_door13_2_aji_00011134

# .rodata:0x137 | 0x2D7 | size: 0x1
.obj gap_03_000002D7_rodata, global
.hidden gap_03_000002D7_rodata
	.byte 0x00
.endobj gap_03_000002D7_rodata

# .rodata:0x138 | 0x2D8 | size: 0xB
.obj str_S_door14_2_aji_00011140, local
	.string "S_door14_2"
.endobj str_S_door14_2_aji_00011140

# .rodata:0x143 | 0x2E3 | size: 0x1
.obj gap_03_000002E3_rodata, global
.hidden gap_03_000002E3_rodata
	.byte 0x00
.endobj gap_03_000002E3_rodata

# .rodata:0x144 | 0x2E4 | size: 0xB
.obj str_S_door14_1_aji_0001114c, local
	.string "S_door14_1"
.endobj str_S_door14_1_aji_0001114c

# .rodata:0x14F | 0x2EF | size: 0x1
.obj gap_03_000002EF_rodata, global
.hidden gap_03_000002EF_rodata
	.byte 0x00
.endobj gap_03_000002EF_rodata

# .rodata:0x150 | 0x2F0 | size: 0x9
.obj str_w_bero_1_aji_00011158, local
	.string "w_bero_1"
.endobj str_w_bero_1_aji_00011158

# .rodata:0x159 | 0x2F9 | size: 0x3
.obj gap_03_000002F9_rodata, global
.hidden gap_03_000002F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002F9_rodata

# .rodata:0x15C | 0x2FC | size: 0x7
.obj str_aji_00_aji_00011164, local
	.string "aji_00"
.endobj str_aji_00_aji_00011164

# .rodata:0x163 | 0x303 | size: 0x1
.obj gap_03_00000303_rodata, global
.hidden gap_03_00000303_rodata
	.byte 0x00
.endobj gap_03_00000303_rodata

# .rodata:0x164 | 0x304 | size: 0x7
.obj str_e_bero_aji_0001116c, local
	.string "e_bero"
.endobj str_e_bero_aji_0001116c

# .rodata:0x16B | 0x30B | size: 0x1
.obj gap_03_0000030B_rodata, global
.hidden gap_03_0000030B_rodata
	.byte 0x00
.endobj gap_03_0000030B_rodata

# .rodata:0x16C | 0x30C | size: 0x9
.obj str_e_bero_1_aji_00011174, local
	.string "e_bero_1"
.endobj str_e_bero_1_aji_00011174

# .rodata:0x175 | 0x315 | size: 0x3
.obj gap_03_00000315_rodata, global
.hidden gap_03_00000315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000315_rodata

# .rodata:0x178 | 0x318 | size: 0x7
.obj str_aji_02_aji_00011180, local
	.string "aji_02"
.endobj str_aji_02_aji_00011180

# .rodata:0x17F | 0x31F | size: 0x1
.obj gap_03_0000031F_rodata, global
.hidden gap_03_0000031F_rodata
	.byte 0x00
.endobj gap_03_0000031F_rodata

# .rodata:0x180 | 0x320 | size: 0x7
.obj str_w_bero_aji_00011188, local
	.string "w_bero"
.endobj str_w_bero_aji_00011188

# .rodata:0x187 | 0x327 | size: 0x1
.obj gap_03_00000327_rodata, global
.hidden gap_03_00000327_rodata
	.byte 0x00
.endobj gap_03_00000327_rodata

# .rodata:0x188 | 0x328 | size: 0x9
.obj str_w_bero_2_aji_00011190, local
	.string "w_bero_2"
.endobj str_w_bero_2_aji_00011190

# .rodata:0x191 | 0x331 | size: 0x3
.obj gap_03_00000331_rodata, global
.hidden gap_03_00000331_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000331_rodata

# .rodata:0x194 | 0x334 | size: 0x7
.obj str_aji_03_aji_0001119c, local
	.string "aji_03"
.endobj str_aji_03_aji_0001119c

# .rodata:0x19B | 0x33B | size: 0x1
.obj gap_03_0000033B_rodata, global
.hidden gap_03_0000033B_rodata
	.byte 0x00
.endobj gap_03_0000033B_rodata

# .rodata:0x19C | 0x33C | size: 0x9
.obj str_e_bero_2_aji_000111a4, local
	.string "e_bero_2"
.endobj str_e_bero_2_aji_000111a4

# .rodata:0x1A5 | 0x345 | size: 0x3
.obj gap_03_00000345_rodata, global
.hidden gap_03_00000345_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000345_rodata

# .rodata:0x1A8 | 0x348 | size: 0x7
.obj str_aji_04_aji_000111b0, local
	.string "aji_04"
.endobj str_aji_04_aji_000111b0

# .rodata:0x1AF | 0x34F | size: 0x1
.obj gap_03_0000034F_rodata, global
.hidden gap_03_0000034F_rodata
	.byte 0x00
.endobj gap_03_0000034F_rodata

# .rodata:0x1B0 | 0x350 | size: 0x9
.obj str_n_bero_1_aji_000111b8, local
	.string "n_bero_1"
.endobj str_n_bero_1_aji_000111b8

# .rodata:0x1B9 | 0x359 | size: 0x3
.obj gap_03_00000359_rodata, global
.hidden gap_03_00000359_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000359_rodata

# .rodata:0x1BC | 0x35C | size: 0x7
.obj str_aji_06_aji_000111c4, local
	.string "aji_06"
.endobj str_aji_06_aji_000111c4

# .rodata:0x1C3 | 0x363 | size: 0x1
.obj gap_03_00000363_rodata, global
.hidden gap_03_00000363_rodata
	.byte 0x00
.endobj gap_03_00000363_rodata

# .rodata:0x1C4 | 0x364 | size: 0x7
.obj str_s_bero_aji_000111cc, local
	.string "s_bero"
.endobj str_s_bero_aji_000111cc

# .rodata:0x1CB | 0x36B | size: 0x1
.obj gap_03_0000036B_rodata, global
.hidden gap_03_0000036B_rodata
	.byte 0x00
.endobj gap_03_0000036B_rodata

# .rodata:0x1CC | 0x36C | size: 0x9
.obj str_n_bero_2_aji_000111d4, local
	.string "n_bero_2"
.endobj str_n_bero_2_aji_000111d4

# .rodata:0x1D5 | 0x375 | size: 0x3
.obj gap_03_00000375_rodata, global
.hidden gap_03_00000375_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000375_rodata

# .rodata:0x1D8 | 0x378 | size: 0x7
.obj str_aji_07_aji_000111e0, local
	.string "aji_07"
.endobj str_aji_07_aji_000111e0

# .rodata:0x1DF | 0x37F | size: 0x1
.obj gap_03_0000037F_rodata, global
.hidden gap_03_0000037F_rodata
	.byte 0x00
.endobj gap_03_0000037F_rodata

# .rodata:0x1E0 | 0x380 | size: 0x9
.obj str_n_bero_3_aji_000111e8, local
	.string "n_bero_3"
.endobj str_n_bero_3_aji_000111e8

# .rodata:0x1E9 | 0x389 | size: 0x3
.obj gap_03_00000389_rodata, global
.hidden gap_03_00000389_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000389_rodata

# .rodata:0x1EC | 0x38C | size: 0x7
.obj str_aji_08_aji_000111f4, local
	.string "aji_08"
.endobj str_aji_08_aji_000111f4

# .rodata:0x1F3 | 0x393 | size: 0x1
.obj gap_03_00000393_rodata, global
.hidden gap_03_00000393_rodata
	.byte 0x00
.endobj gap_03_00000393_rodata

# .rodata:0x1F4 | 0x394 | size: 0x9
.obj str_s_bero_1_aji_000111fc, local
	.string "s_bero_1"
.endobj str_s_bero_1_aji_000111fc

# .rodata:0x1FD | 0x39D | size: 0x3
.obj gap_03_0000039D_rodata, global
.hidden gap_03_0000039D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000039D_rodata

# .rodata:0x200 | 0x3A0 | size: 0x9
.obj str_n_bero_4_aji_00011208, local
	.string "n_bero_4"
.endobj str_n_bero_4_aji_00011208

# .rodata:0x209 | 0x3A9 | size: 0x3
.obj gap_03_000003A9_rodata, global
.hidden gap_03_000003A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003A9_rodata

# .rodata:0x20C | 0x3AC | size: 0x7
.obj str_aji_09_aji_00011214, local
	.string "aji_09"
.endobj str_aji_09_aji_00011214

# .rodata:0x213 | 0x3B3 | size: 0x1
.obj gap_03_000003B3_rodata, global
.hidden gap_03_000003B3_rodata
	.byte 0x00
.endobj gap_03_000003B3_rodata

# .rodata:0x214 | 0x3B4 | size: 0x9
.obj str_w_bero_3_aji_0001121c, local
	.string "w_bero_3"
.endobj str_w_bero_3_aji_0001121c

# .rodata:0x21D | 0x3BD | size: 0x3
.obj gap_03_000003BD_rodata, global
.hidden gap_03_000003BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003BD_rodata

# .rodata:0x220 | 0x3C0 | size: 0x7
.obj str_aji_05_aji_00011228, local
	.string "aji_05"
.endobj str_aji_05_aji_00011228

# .rodata:0x227 | 0x3C7 | size: 0x1
.obj gap_03_000003C7_rodata, global
.hidden gap_03_000003C7_rodata
	.byte 0x00
.endobj gap_03_000003C7_rodata

# .rodata:0x228 | 0x3C8 | size: 0x8
.obj str_e_bero3_aji_00011230, local
	.string "e_bero3"
.endobj str_e_bero3_aji_00011230

# .rodata:0x230 | 0x3D0 | size: 0x7
.obj str_aji_10_aji_00011238, local
	.string "aji_10"
.endobj str_aji_10_aji_00011238

# .rodata:0x237 | 0x3D7 | size: 0x1
.obj gap_03_000003D7_rodata, global
.hidden gap_03_000003D7_rodata
	.byte 0x00
.endobj gap_03_000003D7_rodata

# .rodata:0x238 | 0x3D8 | size: 0x9
.obj str_w_bero_4_aji_00011240, local
	.string "w_bero_4"
.endobj str_w_bero_4_aji_00011240

# .rodata:0x241 | 0x3E1 | size: 0x3
.obj gap_03_000003E1_rodata, global
.hidden gap_03_000003E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003E1_rodata

# .rodata:0x244 | 0x3E4 | size: 0x7
.obj str_aji_12_aji_0001124c, local
	.string "aji_12"
.endobj str_aji_12_aji_0001124c

# .rodata:0x24B | 0x3EB | size: 0x1
.obj gap_03_000003EB_rodata, global
.hidden gap_03_000003EB_rodata
	.byte 0x00
.endobj gap_03_000003EB_rodata

# .rodata:0x24C | 0x3EC | size: 0x9
.obj str_e_bero_4_aji_00011254, local
	.string "e_bero_4"
.endobj str_e_bero_4_aji_00011254

# .rodata:0x255 | 0x3F5 | size: 0x3
.obj gap_03_000003F5_rodata, global
.hidden gap_03_000003F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003F5_rodata

# .rodata:0x258 | 0x3F8 | size: 0x7
.obj str_aji_18_aji_00011260, local
	.string "aji_18"
.endobj str_aji_18_aji_00011260

# .rodata:0x25F | 0x3FF | size: 0x1
.obj gap_03_000003FF_rodata, global
.hidden gap_03_000003FF_rodata
	.byte 0x00
.endobj gap_03_000003FF_rodata

# .rodata:0x260 | 0x400 | size: 0x9
.obj str_w_bero_5_aji_00011268, local
	.string "w_bero_5"
.endobj str_w_bero_5_aji_00011268

# .rodata:0x269 | 0x409 | size: 0x3
.obj gap_03_00000409_rodata, global
.hidden gap_03_00000409_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000409_rodata

# .rodata:0x26C | 0x40C | size: 0x7
.obj str_aji_16_aji_00011274, local
	.string "aji_16"
.endobj str_aji_16_aji_00011274

# .rodata:0x273 | 0x413 | size: 0x1
.obj gap_03_00000413_rodata, global
.hidden gap_03_00000413_rodata
	.byte 0x00
.endobj gap_03_00000413_rodata

# .rodata:0x274 | 0x414 | size: 0x9
.obj str_e_bero_5_aji_0001127c, local
	.string "e_bero_5"
.endobj str_e_bero_5_aji_0001127c

# .rodata:0x27D | 0x41D | size: 0x3
.obj gap_03_0000041D_rodata, global
.hidden gap_03_0000041D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000041D_rodata

# .rodata:0x280 | 0x420 | size: 0x7
.obj str_aji_17_aji_00011288, local
	.string "aji_17"
.endobj str_aji_17_aji_00011288

# .rodata:0x287 | 0x427 | size: 0x1
.obj gap_03_00000427_rodata, global
.hidden gap_03_00000427_rodata
	.byte 0x00
.endobj gap_03_00000427_rodata

# .rodata:0x288 | 0x428 | size: 0xC
.obj str_stg7_aji_65_aji_00011290, local
	.string "stg7_aji_65"
.endobj str_stg7_aji_65_aji_00011290

# .rodata:0x294 | 0x434 | size: 0xD
.obj str_S_ekagi1_aka_aji_0001129c, local
	.string "S_ekagi1_aka"
.endobj str_S_ekagi1_aka_aji_0001129c

# .rodata:0x2A1 | 0x441 | size: 0x3
.obj gap_03_00000441_rodata, global
.hidden gap_03_00000441_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000441_rodata

# .rodata:0x2A4 | 0x444 | size: 0xD
.obj str_S_ekagi2_aka_aji_000112ac, local
	.string "S_ekagi2_aka"
.endobj str_S_ekagi2_aka_aji_000112ac

# .rodata:0x2B1 | 0x451 | size: 0x3
.obj gap_03_00000451_rodata, global
.hidden gap_03_00000451_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000451_rodata

# .rodata:0x2B4 | 0x454 | size: 0xD
.obj str_S_ekagi3_aka_aji_000112bc, local
	.string "S_ekagi3_aka"
.endobj str_S_ekagi3_aka_aji_000112bc

# .rodata:0x2C1 | 0x461 | size: 0x3
.obj gap_03_00000461_rodata, global
.hidden gap_03_00000461_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000461_rodata

# .rodata:0x2C4 | 0x464 | size: 0xD
.obj str_S_ekagi1_mid_aji_000112cc, local
	.string "S_ekagi1_mid"
.endobj str_S_ekagi1_mid_aji_000112cc

# .rodata:0x2D1 | 0x471 | size: 0x3
.obj gap_03_00000471_rodata, global
.hidden gap_03_00000471_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000471_rodata

# .rodata:0x2D4 | 0x474 | size: 0xD
.obj str_S_ekagi2_mid_aji_000112dc, local
	.string "S_ekagi2_mid"
.endobj str_S_ekagi2_mid_aji_000112dc

# .rodata:0x2E1 | 0x481 | size: 0x3
.obj gap_03_00000481_rodata, global
.hidden gap_03_00000481_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000481_rodata

# .rodata:0x2E4 | 0x484 | size: 0xD
.obj str_S_ekagi3_mid_aji_000112ec, local
	.string "S_ekagi3_mid"
.endobj str_S_ekagi3_mid_aji_000112ec

# .rodata:0x2F1 | 0x491 | size: 0x3
.obj gap_03_00000491_rodata, global
.hidden gap_03_00000491_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000491_rodata

# .rodata:0x2F4 | 0x494 | size: 0x9
.obj str_A_ekagi1_aji_000112fc, local
	.string "A_ekagi1"
.endobj str_A_ekagi1_aji_000112fc

# .rodata:0x2FD | 0x49D | size: 0x3
.obj gap_03_0000049D_rodata, global
.hidden gap_03_0000049D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000049D_rodata

# .rodata:0x300 | 0x4A0 | size: 0x9
.obj str_A_ekagi2_aji_00011308, local
	.string "A_ekagi2"
.endobj str_A_ekagi2_aji_00011308

# .rodata:0x309 | 0x4A9 | size: 0x3
.obj gap_03_000004A9_rodata, global
.hidden gap_03_000004A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004A9_rodata

# .rodata:0x30C | 0x4AC | size: 0x9
.obj str_A_ekagi3_aji_00011314, local
	.string "A_ekagi3"
.endobj str_A_ekagi3_aji_00011314

# .rodata:0x315 | 0x4B5 | size: 0x3
.obj gap_03_000004B5_rodata, global
.hidden gap_03_000004B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004B5_rodata

# .rodata:0x318 | 0x4B8 | size: 0x17
.obj str_SFX_STG7_ELEVATOR_KE_aji_00011320, local
	.string "SFX_STG7_ELEVATOR_KEY1"
.endobj str_SFX_STG7_ELEVATOR_KE_aji_00011320

# .rodata:0x32F | 0x4CF | size: 0x1
.obj gap_03_000004CF_rodata, global
.hidden gap_03_000004CF_rodata
	.byte 0x00
.endobj gap_03_000004CF_rodata

# .rodata:0x330 | 0x4D0 | size: 0xD
.obj str_S_ekagi4_aka_aji_00011338, local
	.string "S_ekagi4_aka"
.endobj str_S_ekagi4_aka_aji_00011338

# .rodata:0x33D | 0x4DD | size: 0x3
.obj gap_03_000004DD_rodata, global
.hidden gap_03_000004DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004DD_rodata

# .rodata:0x340 | 0x4E0 | size: 0xD
.obj str_S_ekagi5_aka_aji_00011348, local
	.string "S_ekagi5_aka"
.endobj str_S_ekagi5_aka_aji_00011348

# .rodata:0x34D | 0x4ED | size: 0x3
.obj gap_03_000004ED_rodata, global
.hidden gap_03_000004ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004ED_rodata

# .rodata:0x350 | 0x4F0 | size: 0xD
.obj str_S_ekagi6_aka_aji_00011358, local
	.string "S_ekagi6_aka"
.endobj str_S_ekagi6_aka_aji_00011358

# .rodata:0x35D | 0x4FD | size: 0x3
.obj gap_03_000004FD_rodata, global
.hidden gap_03_000004FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004FD_rodata

# .rodata:0x360 | 0x500 | size: 0xD
.obj str_S_ekagi4_mid_aji_00011368, local
	.string "S_ekagi4_mid"
.endobj str_S_ekagi4_mid_aji_00011368

# .rodata:0x36D | 0x50D | size: 0x3
.obj gap_03_0000050D_rodata, global
.hidden gap_03_0000050D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000050D_rodata

# .rodata:0x370 | 0x510 | size: 0xD
.obj str_S_ekagi5_mid_aji_00011378, local
	.string "S_ekagi5_mid"
.endobj str_S_ekagi5_mid_aji_00011378

# .rodata:0x37D | 0x51D | size: 0x3
.obj gap_03_0000051D_rodata, global
.hidden gap_03_0000051D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000051D_rodata

# .rodata:0x380 | 0x520 | size: 0xD
.obj str_S_ekagi6_mid_aji_00011388, local
	.string "S_ekagi6_mid"
.endobj str_S_ekagi6_mid_aji_00011388

# .rodata:0x38D | 0x52D | size: 0x3
.obj gap_03_0000052D_rodata, global
.hidden gap_03_0000052D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000052D_rodata

# .rodata:0x390 | 0x530 | size: 0x9
.obj str_A_ekagi4_aji_00011398, local
	.string "A_ekagi4"
.endobj str_A_ekagi4_aji_00011398

# .rodata:0x399 | 0x539 | size: 0x3
.obj gap_03_00000539_rodata, global
.hidden gap_03_00000539_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000539_rodata

# .rodata:0x39C | 0x53C | size: 0x9
.obj str_A_ekagi5_aji_000113a4, local
	.string "A_ekagi5"
.endobj str_A_ekagi5_aji_000113a4

# .rodata:0x3A5 | 0x545 | size: 0x3
.obj gap_03_00000545_rodata, global
.hidden gap_03_00000545_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000545_rodata

# .rodata:0x3A8 | 0x548 | size: 0x9
.obj str_A_ekagi6_aji_000113b0, local
	.string "A_ekagi6"
.endobj str_A_ekagi6_aji_000113b0

# .rodata:0x3B1 | 0x551 | size: 0x3
.obj gap_03_00000551_rodata, global
.hidden gap_03_00000551_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000551_rodata

# .rodata:0x3B4 | 0x554 | size: 0xB
.obj str_e1_1_door1_aji_000113bc, local
	.string "e1_1_door1"
.endobj str_e1_1_door1_aji_000113bc

# .rodata:0x3BF | 0x55F | size: 0x1
.obj gap_03_0000055F_rodata, global
.hidden gap_03_0000055F_rodata
	.byte 0x00
.endobj gap_03_0000055F_rodata

# .rodata:0x3C0 | 0x560 | size: 0xB
.obj str_e1_1_door2_aji_000113c8, local
	.string "e1_1_door2"
.endobj str_e1_1_door2_aji_000113c8

# .rodata:0x3CB | 0x56B | size: 0x1
.obj gap_03_0000056B_rodata, global
.hidden gap_03_0000056B_rodata
	.byte 0x00
.endobj gap_03_0000056B_rodata

# .rodata:0x3CC | 0x56C | size: 0xB
.obj str_e1_2_door1_aji_000113d4, local
	.string "e1_2_door1"
.endobj str_e1_2_door1_aji_000113d4

# .rodata:0x3D7 | 0x577 | size: 0x1
.obj gap_03_00000577_rodata, global
.hidden gap_03_00000577_rodata
	.byte 0x00
.endobj gap_03_00000577_rodata

# .rodata:0x3D8 | 0x578 | size: 0xB
.obj str_e1_2_door2_aji_000113e0, local
	.string "e1_2_door2"
.endobj str_e1_2_door2_aji_000113e0

# .rodata:0x3E3 | 0x583 | size: 0x1
.obj gap_03_00000583_rodata, global
.hidden gap_03_00000583_rodata
	.byte 0x00
.endobj gap_03_00000583_rodata

# .rodata:0x3E4 | 0x584 | size: 0xB
.obj str_e1_3_door1_aji_000113ec, local
	.string "e1_3_door1"
.endobj str_e1_3_door1_aji_000113ec

# .rodata:0x3EF | 0x58F | size: 0x1
.obj gap_03_0000058F_rodata, global
.hidden gap_03_0000058F_rodata
	.byte 0x00
.endobj gap_03_0000058F_rodata

# .rodata:0x3F0 | 0x590 | size: 0xB
.obj str_e1_3_door2_aji_000113f8, local
	.string "e1_3_door2"
.endobj str_e1_3_door2_aji_000113f8

# .rodata:0x3FB | 0x59B | size: 0x1
.obj gap_03_0000059B_rodata, global
.hidden gap_03_0000059B_rodata
	.byte 0x00
.endobj gap_03_0000059B_rodata

# .rodata:0x3FC | 0x59C | size: 0x18
.obj str_SFX_STG7_ELEVATOR_OP_aji_00011404, local
	.string "SFX_STG7_ELEVATOR_OPEN1"
.endobj str_SFX_STG7_ELEVATOR_OP_aji_00011404

# .rodata:0x414 | 0x5B4 | size: 0xA
.obj str_ee1_door1_aji_0001141c, local
	.string "ee1_door1"
.endobj str_ee1_door1_aji_0001141c

# .rodata:0x41E | 0x5BE | size: 0x2
.obj gap_03_000005BE_rodata, global
.hidden gap_03_000005BE_rodata
	.2byte 0x0000
.endobj gap_03_000005BE_rodata

# .rodata:0x420 | 0x5C0 | size: 0x18
.obj str_SFX_STG7_ELEVATOR_OP_aji_00011428, local
	.string "SFX_STG7_ELEVATOR_OPEN2"
.endobj str_SFX_STG7_ELEVATOR_OP_aji_00011428

# .rodata:0x438 | 0x5D8 | size: 0xA
.obj str_ee1_door2_aji_00011440, local
	.string "ee1_door2"
.endobj str_ee1_door2_aji_00011440

# .rodata:0x442 | 0x5E2 | size: 0x2
.obj gap_03_000005E2_rodata, global
.hidden gap_03_000005E2_rodata
	.2byte 0x0000
.endobj gap_03_000005E2_rodata

# .rodata:0x444 | 0x5E4 | size: 0x19
.obj str_SFX_STG7_ELEVATOR_CL_aji_0001144c, local
	.string "SFX_STG7_ELEVATOR_CLOSE2"
.endobj str_SFX_STG7_ELEVATOR_CL_aji_0001144c

# .rodata:0x45D | 0x5FD | size: 0x3
.obj gap_03_000005FD_rodata, global
.hidden gap_03_000005FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005FD_rodata

# .rodata:0x460 | 0x600 | size: 0x19
.obj str_SFX_STG7_ELEVATOR_CL_aji_00011468, local
	.string "SFX_STG7_ELEVATOR_CLOSE1"
.endobj str_SFX_STG7_ELEVATOR_CL_aji_00011468

# .rodata:0x479 | 0x619 | size: 0x3
.obj gap_03_00000619_rodata, global
.hidden gap_03_00000619_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000619_rodata

# .rodata:0x47C | 0x61C | size: 0x1A
.obj str_SFX_STG7_ELEVATOR_AC_aji_00011484, local
	.string "SFX_STG7_ELEVATOR_ACCESS1"
.endobj str_SFX_STG7_ELEVATOR_AC_aji_00011484

# .rodata:0x496 | 0x636 | size: 0x2
.obj gap_03_00000636_rodata, global
.hidden gap_03_00000636_rodata
	.2byte 0x0000
.endobj gap_03_00000636_rodata

# .rodata:0x498 | 0x638 | size: 0x7
.obj str_ere1_m_aji_000114a0, local
	.string "ere1_m"
.endobj str_ere1_m_aji_000114a0

# .rodata:0x49F | 0x63F | size: 0x1
.obj gap_03_0000063F_rodata, global
.hidden gap_03_0000063F_rodata
	.byte 0x00
.endobj gap_03_0000063F_rodata

# .rodata:0x4A0 | 0x640 | size: 0x1A
.obj str_SFX_STG7_ELEVATOR_AP_aji_000114a8, local
	.string "SFX_STG7_ELEVATOR_APPEAR1"
.endobj str_SFX_STG7_ELEVATOR_AP_aji_000114a8

# .rodata:0x4BA | 0x65A | size: 0x2
.obj gap_03_0000065A_rodata, global
.hidden gap_03_0000065A_rodata
	.2byte 0x0000
.endobj gap_03_0000065A_rodata

# .rodata:0x4BC | 0x65C | size: 0x9
.obj str_A_ere1_m_aji_000114c4, local
	.string "A_ere1_m"
.endobj str_A_ere1_m_aji_000114c4

# .rodata:0x4C5 | 0x665 | size: 0x3
.obj gap_03_00000665_rodata, global
.hidden gap_03_00000665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000665_rodata

# .rodata:0x4C8 | 0x668 | size: 0xC
.obj str_stg7_aji_66_aji_000114d0, local
	.string "stg7_aji_66"
.endobj str_stg7_aji_66_aji_000114d0

# .rodata:0x4D4 | 0x674 | size: 0x12
.obj str_stg7_aji_ele_1_00_aji_000114dc, local
	.string "stg7_aji_ele_1_00"
.endobj str_stg7_aji_ele_1_00_aji_000114dc

# .rodata:0x4E6 | 0x686 | size: 0x2
.obj gap_03_00000686_rodata, global
.hidden gap_03_00000686_rodata
	.2byte 0x0000
.endobj gap_03_00000686_rodata

# .rodata:0x4E8 | 0x688 | size: 0x12
.obj str_stg7_aji_ele_1_01_aji_000114f0, local
	.string "stg7_aji_ele_1_01"
.endobj str_stg7_aji_ele_1_01_aji_000114f0

# .rodata:0x4FA | 0x69A | size: 0x2
.obj gap_03_0000069A_rodata, global
.hidden gap_03_0000069A_rodata
	.2byte 0x0000
.endobj gap_03_0000069A_rodata

# .rodata:0x4FC | 0x69C | size: 0x12
.obj str_stg7_aji_ele_1_02_aji_00011504, local
	.string "stg7_aji_ele_1_02"
.endobj str_stg7_aji_ele_1_02_aji_00011504

# .rodata:0x50E | 0x6AE | size: 0x2
.obj gap_03_000006AE_rodata, global
.hidden gap_03_000006AE_rodata
	.2byte 0x0000
.endobj gap_03_000006AE_rodata

# .rodata:0x510 | 0x6B0 | size: 0x18
.obj str_SFX_STG7_ELEVATOR_MO_aji_00011518, local
	.string "SFX_STG7_ELEVATOR_MOVE1"
.endobj str_SFX_STG7_ELEVATOR_MO_aji_00011518

# .rodata:0x528 | 0x6C8 | size: 0xB
.obj str_e2_4_door1_aji_00011530, local
	.string "e2_4_door1"
.endobj str_e2_4_door1_aji_00011530

# .rodata:0x533 | 0x6D3 | size: 0x1
.obj gap_03_000006D3_rodata, global
.hidden gap_03_000006D3_rodata
	.byte 0x00
.endobj gap_03_000006D3_rodata

# .rodata:0x534 | 0x6D4 | size: 0xB
.obj str_e2_4_door2_aji_0001153c, local
	.string "e2_4_door2"
.endobj str_e2_4_door2_aji_0001153c

# .rodata:0x53F | 0x6DF | size: 0x1
.obj gap_03_000006DF_rodata, global
.hidden gap_03_000006DF_rodata
	.byte 0x00
.endobj gap_03_000006DF_rodata

# .rodata:0x540 | 0x6E0 | size: 0xB
.obj str_e2_5_door1_aji_00011548, local
	.string "e2_5_door1"
.endobj str_e2_5_door1_aji_00011548

# .rodata:0x54B | 0x6EB | size: 0x1
.obj gap_03_000006EB_rodata, global
.hidden gap_03_000006EB_rodata
	.byte 0x00
.endobj gap_03_000006EB_rodata

# .rodata:0x54C | 0x6EC | size: 0xB
.obj str_e2_5_door2_aji_00011554, local
	.string "e2_5_door2"
.endobj str_e2_5_door2_aji_00011554

# .rodata:0x557 | 0x6F7 | size: 0x1
.obj gap_03_000006F7_rodata, global
.hidden gap_03_000006F7_rodata
	.byte 0x00
.endobj gap_03_000006F7_rodata

# .rodata:0x558 | 0x6F8 | size: 0xB
.obj str_e2_6_door1_aji_00011560, local
	.string "e2_6_door1"
.endobj str_e2_6_door1_aji_00011560

# .rodata:0x563 | 0x703 | size: 0x1
.obj gap_03_00000703_rodata, global
.hidden gap_03_00000703_rodata
	.byte 0x00
.endobj gap_03_00000703_rodata

# .rodata:0x564 | 0x704 | size: 0xB
.obj str_e2_6_door2_aji_0001156c, local
	.string "e2_6_door2"
.endobj str_e2_6_door2_aji_0001156c

# .rodata:0x56F | 0x70F | size: 0x1
.obj gap_03_0000070F_rodata, global
.hidden gap_03_0000070F_rodata
	.byte 0x00
.endobj gap_03_0000070F_rodata

# .rodata:0x570 | 0x710 | size: 0xA
.obj str_ee2_door1_aji_00011578, local
	.string "ee2_door1"
.endobj str_ee2_door1_aji_00011578

# .rodata:0x57A | 0x71A | size: 0x2
.obj gap_03_0000071A_rodata, global
.hidden gap_03_0000071A_rodata
	.2byte 0x0000
.endobj gap_03_0000071A_rodata

# .rodata:0x57C | 0x71C | size: 0xA
.obj str_ee2_door2_aji_00011584, local
	.string "ee2_door2"
.endobj str_ee2_door2_aji_00011584

# .rodata:0x586 | 0x726 | size: 0x2
.obj gap_03_00000726_rodata, global
.hidden gap_03_00000726_rodata
	.2byte 0x0000
.endobj gap_03_00000726_rodata

# .rodata:0x588 | 0x728 | size: 0x7
.obj str_ere2_m_aji_00011590, local
	.string "ere2_m"
.endobj str_ere2_m_aji_00011590

# .rodata:0x58F | 0x72F | size: 0x1
.obj gap_03_0000072F_rodata, global
.hidden gap_03_0000072F_rodata
	.byte 0x00
.endobj gap_03_0000072F_rodata

# .rodata:0x590 | 0x730 | size: 0x9
.obj str_A_ere2_m_aji_00011598, local
	.string "A_ere2_m"
.endobj str_A_ere2_m_aji_00011598

# .rodata:0x599 | 0x739 | size: 0x3
.obj gap_03_00000739_rodata, global
.hidden gap_03_00000739_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000739_rodata

# .rodata:0x59C | 0x73C | size: 0x12
.obj str_stg7_aji_ele_2_00_aji_000115a4, local
	.string "stg7_aji_ele_2_00"
.endobj str_stg7_aji_ele_2_00_aji_000115a4

# .rodata:0x5AE | 0x74E | size: 0x2
.obj gap_03_0000074E_rodata, global
.hidden gap_03_0000074E_rodata
	.2byte 0x0000
.endobj gap_03_0000074E_rodata

# .rodata:0x5B0 | 0x750 | size: 0x12
.obj str_stg7_aji_ele_2_01_aji_000115b8, local
	.string "stg7_aji_ele_2_01"
.endobj str_stg7_aji_ele_2_01_aji_000115b8

# .rodata:0x5C2 | 0x762 | size: 0x2
.obj gap_03_00000762_rodata, global
.hidden gap_03_00000762_rodata
	.2byte 0x0000
.endobj gap_03_00000762_rodata

# .rodata:0x5C4 | 0x764 | size: 0x12
.obj str_stg7_aji_ele_2_02_aji_000115cc, local
	.string "stg7_aji_ele_2_02"
.endobj str_stg7_aji_ele_2_02_aji_000115cc

# .rodata:0x5D6 | 0x776 | size: 0x2
.obj gap_03_00000776_rodata, global
.hidden gap_03_00000776_rodata
	.2byte 0x0000
.endobj gap_03_00000776_rodata

# .rodata:0x5D8 | 0x778 | size: 0xC
.obj str_stg7_aji_71_aji_000115e0, local
	.string "stg7_aji_71"
.endobj str_stg7_aji_71_aji_000115e0

# .rodata:0x5E4 | 0x784 | size: 0xF
.obj str_stg7_aji_45_02_aji_000115ec, local
	.string "stg7_aji_45_02"
.endobj str_stg7_aji_45_02_aji_000115ec

# .rodata:0x5F3 | 0x793 | size: 0x1
.obj gap_03_00000793_rodata, global
.hidden gap_03_00000793_rodata
	.byte 0x00
.endobj gap_03_00000793_rodata

# .rodata:0x5F4 | 0x794 | size: 0xF
.obj str_stg7_aji_45_03_aji_000115fc, local
	.string "stg7_aji_45_03"
.endobj str_stg7_aji_45_03_aji_000115fc

# .rodata:0x603 | 0x7A3 | size: 0x1
.obj gap_03_000007A3_rodata, global
.hidden gap_03_000007A3_rodata
	.byte 0x00
.endobj gap_03_000007A3_rodata

# .rodata:0x604 | 0x7A4 | size: 0xF
.obj str_stg7_aji_45_01_aji_0001160c, local
	.string "stg7_aji_45_01"
.endobj str_stg7_aji_45_01_aji_0001160c

# .rodata:0x613 | 0x7B3 | size: 0x1
.obj gap_03_000007B3_rodata, global
.hidden gap_03_000007B3_rodata
	.byte 0x00
.endobj gap_03_000007B3_rodata

# .rodata:0x614 | 0x7B4 | size: 0xC
.obj str_S_lights1_m_aji_0001161c, local
	.string "S_lights1_m"
.endobj str_S_lights1_m_aji_0001161c

# .rodata:0x620 | 0x7C0 | size: 0xC
.obj str_S_lights1_r_aji_00011628, local
	.string "S_lights1_r"
.endobj str_S_lights1_r_aji_00011628

# .rodata:0x62C | 0x7CC | size: 0xC
.obj str_S_lights2_m_aji_00011634, local
	.string "S_lights2_m"
.endobj str_S_lights2_m_aji_00011634

# .rodata:0x638 | 0x7D8 | size: 0xC
.obj str_S_lights2_r_aji_00011640, local
	.string "S_lights2_r"
.endobj str_S_lights2_r_aji_00011640

# .rodata:0x644 | 0x7E4 | size: 0xC
.obj str_S_lights3_m_aji_0001164c, local
	.string "S_lights3_m"
.endobj str_S_lights3_m_aji_0001164c

# .rodata:0x650 | 0x7F0 | size: 0xC
.obj str_S_lights3_r_aji_00011658, local
	.string "S_lights3_r"
.endobj str_S_lights3_r_aji_00011658

# .rodata:0x65C | 0x7FC | size: 0xC
.obj str_S_lights4_m_aji_00011664, local
	.string "S_lights4_m"
.endobj str_S_lights4_m_aji_00011664

# .rodata:0x668 | 0x808 | size: 0xC
.obj str_S_lights4_r_aji_00011670, local
	.string "S_lights4_r"
.endobj str_S_lights4_r_aji_00011670

# .rodata:0x674 | 0x814 | size: 0xC
.obj str_S_lights5_m_aji_0001167c, local
	.string "S_lights5_m"
.endobj str_S_lights5_m_aji_0001167c

# .rodata:0x680 | 0x820 | size: 0xC
.obj str_S_lights5_r_aji_00011688, local
	.string "S_lights5_r"
.endobj str_S_lights5_r_aji_00011688

# .rodata:0x68C | 0x82C | size: 0xC
.obj str_stg7_aji_68_aji_00011694, local
	.string "stg7_aji_68"
.endobj str_stg7_aji_68_aji_00011694

# .rodata:0x698 | 0x838 | size: 0xB
.obj str_OFF_d_roll_aji_000116a0, local
	.string "OFF_d_roll"
.endobj str_OFF_d_roll_aji_000116a0

# .rodata:0x6A3 | 0x843 | size: 0x1
.obj gap_03_00000843_rodata, global
.hidden gap_03_00000843_rodata
	.byte 0x00
.endobj gap_03_00000843_rodata

# .rodata:0x6A4 | 0x844 | size: 0x4
.obj str_img_aji_000116ac, local
	.string "img"
.endobj str_img_aji_000116ac

# .rodata:0x6A8 | 0x848 | size: 0x4
.obj str_Z_1_aji_000116b0, local
	.string "Z_1"
.endobj str_Z_1_aji_000116b0

# .rodata:0x6AC | 0x84C | size: 0x15
.obj str_SFX_OFF4_NAME_ENTRY1_aji_000116b4, local
	.string "SFX_OFF4_NAME_ENTRY1"
.endobj str_SFX_OFF4_NAME_ENTRY1_aji_000116b4

# .rodata:0x6C1 | 0x861 | size: 0x3
.obj gap_03_00000861_rodata, global
.hidden gap_03_00000861_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000861_rodata

# .rodata:0x6C4 | 0x864 | size: 0x4
.obj str_A_2_aji_000116cc, local
	.string "A_2"
.endobj str_A_2_aji_000116cc

# .rodata:0x6C8 | 0x868 | size: 0x15
.obj str_SFX_OFF4_NAME_ENTRY2_aji_000116d0, local
	.string "SFX_OFF4_NAME_ENTRY2"
.endobj str_SFX_OFF4_NAME_ENTRY2_aji_000116d0

# .rodata:0x6DD | 0x87D | size: 0x3
.obj gap_03_0000087D_rodata, global
.hidden gap_03_0000087D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000087D_rodata

# .rodata:0x6E0 | 0x880 | size: 0x4
.obj str_A_1_aji_000116e8, local
	.string "A_1"
.endobj str_A_1_aji_000116e8

# .rodata:0x6E4 | 0x884 | size: 0xC
.obj str_stg7_aji_70_aji_000116ec, local
	.string "stg7_aji_70"
.endobj str_stg7_aji_70_aji_000116ec

# .rodata:0x6F0 | 0x890 | size: 0xC
.obj str_S_kagi1_mid_aji_000116f8, local
	.string "S_kagi1_mid"
.endobj str_S_kagi1_mid_aji_000116f8

# .rodata:0x6FC | 0x89C | size: 0xC
.obj str_S_kagi1_aka_aji_00011704, local
	.string "S_kagi1_aka"
.endobj str_S_kagi1_aka_aji_00011704

# .rodata:0x708 | 0x8A8 | size: 0x16
.obj str_SFX_STG7_DOOR_UNLOCK_aji_00011710, local
	.string "SFX_STG7_DOOR_UNLOCK1"
.endobj str_SFX_STG7_DOOR_UNLOCK_aji_00011710

# .rodata:0x71E | 0x8BE | size: 0x2
.obj gap_03_000008BE_rodata, global
.hidden gap_03_000008BE_rodata
	.2byte 0x0000
.endobj gap_03_000008BE_rodata

# .rodata:0x720 | 0x8C0 | size: 0xC
.obj str_stg7_aji_69_aji_00011728, local
	.string "stg7_aji_69"
.endobj str_stg7_aji_69_aji_00011728

# .rodata:0x72C | 0x8CC | size: 0xE
.obj str_BGM_STG7_DUN1_aji_00011734, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_aji_00011734

# .rodata:0x73A | 0x8DA | size: 0x2
.obj gap_03_000008DA_rodata, global
.hidden gap_03_000008DA_rodata
	.2byte 0x0000
.endobj gap_03_000008DA_rodata

# .rodata:0x73C | 0x8DC | size: 0xE
.obj str_ENV_STG7_AJI1_aji_00011744, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_00011744

# .rodata:0x74A | 0x8EA | size: 0x2
.obj gap_03_000008EA_rodata, global
.hidden gap_03_000008EA_rodata
	.2byte 0x0000
.endobj gap_03_000008EA_rodata

# .rodata:0x74C | 0x8EC | size: 0xF
.obj str_peach_evt_stg1_aji_00011754, local
	.string "peach_evt_stg1"
.endobj str_peach_evt_stg1_aji_00011754

# .rodata:0x75B | 0x8FB | size: 0x1
.obj gap_03_000008FB_rodata, global
.hidden gap_03_000008FB_rodata
	.byte 0x00
.endobj gap_03_000008FB_rodata

# .rodata:0x75C | 0x8FC | size: 0x6
.obj str_mario_aji_00011764, local
	.string "mario"
.endobj str_mario_aji_00011764

# .rodata:0x762 | 0x902 | size: 0x2
.obj gap_03_00000902_rodata, global
.hidden gap_03_00000902_rodata
	.2byte 0x0000
.endobj gap_03_00000902_rodata

# .rodata:0x764 | 0x904 | size: 0x6
.obj str_P_S_4_aji_0001176c, local
	.string "P_S_4"
.endobj str_P_S_4_aji_0001176c

# .rodata:0x76A | 0x90A | size: 0x2
.obj gap_03_0000090A_rodata, global
.hidden gap_03_0000090A_rodata
	.2byte 0x0000
.endobj gap_03_0000090A_rodata

# .rodata:0x76C | 0x90C | size: 0x6
.obj str_P_T_4_aji_00011774, local
	.string "P_T_4"
.endobj str_P_T_4_aji_00011774

# .rodata:0x772 | 0x912 | size: 0x2
.obj gap_03_00000912_rodata, global
.hidden gap_03_00000912_rodata
	.2byte 0x0000
.endobj gap_03_00000912_rodata

# .rodata:0x774 | 0x914 | size: 0xD
.obj str_peach_aji_39_aji_0001177c, local
	.string "peach_aji_39"
.endobj str_peach_aji_39_aji_0001177c

# .rodata:0x781 | 0x921 | size: 0x3
.obj gap_03_00000921_rodata, global
.hidden gap_03_00000921_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000921_rodata

# .rodata:0x784 | 0x924 | size: 0x6
.obj str_P_S_1_aji_0001178c, local
	.string "P_S_1"
.endobj str_P_S_1_aji_0001178c

# .rodata:0x78A | 0x92A | size: 0x2
.obj gap_03_0000092A_rodata, global
.hidden gap_03_0000092A_rodata
	.2byte 0x0000
.endobj gap_03_0000092A_rodata

# .rodata:0x78C | 0x92C | size: 0x6
.obj str_P_T_1_aji_00011794, local
	.string "P_T_1"
.endobj str_P_T_1_aji_00011794

# .rodata:0x792 | 0x932 | size: 0x2
.obj gap_03_00000932_rodata, global
.hidden gap_03_00000932_rodata
	.2byte 0x0000
.endobj gap_03_00000932_rodata

# .rodata:0x794 | 0x934 | size: 0x1A
.obj str_SFX_VOICE_PEACH_QUES_aji_0001179c, local
	.string "SFX_VOICE_PEACH_QUESTION1"
.endobj str_SFX_VOICE_PEACH_QUES_aji_0001179c

# .rodata:0x7AE | 0x94E | size: 0x2
.obj gap_03_0000094E_rodata, global
.hidden gap_03_0000094E_rodata
	.2byte 0x0000
.endobj gap_03_0000094E_rodata

# .rodata:0x7B0 | 0x950 | size: 0x1
.obj zero_aji_000117b8, local
	.byte 0x00
.endobj zero_aji_000117b8

# .rodata:0x7B1 | 0x951 | size: 0x3
.obj gap_03_00000951_rodata, global
.hidden gap_03_00000951_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000951_rodata

# .rodata:0x7B4 | 0x954 | size: 0xD
.obj str_peach_aji_41_aji_000117bc, local
	.string "peach_aji_41"
.endobj str_peach_aji_41_aji_000117bc

# .rodata:0x7C1 | 0x961 | size: 0x3
.obj gap_03_00000961_rodata, global
.hidden gap_03_00000961_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000961_rodata

# .rodata:0x7C4 | 0x964 | size: 0x6
.obj str_P_B_1_aji_000117cc, local
	.string "P_B_1"
.endobj str_P_B_1_aji_000117cc

# .rodata:0x7CA | 0x96A | size: 0x2
.obj gap_03_0000096A_rodata, global
.hidden gap_03_0000096A_rodata
	.2byte 0x0000
.endobj gap_03_0000096A_rodata

# .rodata:0x7CC | 0x96C | size: 0x6
.obj str_P_B_2_aji_000117d4, local
	.string "P_B_2"
.endobj str_P_B_2_aji_000117d4

# .rodata:0x7D2 | 0x972 | size: 0x2
.obj gap_03_00000972_rodata, global
.hidden gap_03_00000972_rodata
	.2byte 0x0000
.endobj gap_03_00000972_rodata

# .rodata:0x7D4 | 0x974 | size: 0x6
.obj str_P_T_7_aji_000117dc, local
	.string "P_T_7"
.endobj str_P_T_7_aji_000117dc

# .rodata:0x7DA | 0x97A | size: 0x2
.obj gap_03_0000097A_rodata, global
.hidden gap_03_0000097A_rodata
	.2byte 0x0000
.endobj gap_03_0000097A_rodata

# .rodata:0x7DC | 0x97C | size: 0xE
.obj str_peach_aji_127_aji_000117e4, local
	.string "peach_aji_127"
.endobj str_peach_aji_127_aji_000117e4

# .rodata:0x7EA | 0x98A | size: 0x2
.obj gap_03_0000098A_rodata, global
.hidden gap_03_0000098A_rodata
	.2byte 0x0000
.endobj gap_03_0000098A_rodata

# .rodata:0x7EC | 0x98C | size: 0xE
.obj str_peach_aji_126_aji_000117f4, local
	.string "peach_aji_126"
.endobj str_peach_aji_126_aji_000117f4

# .rodata:0x7FA | 0x99A | size: 0x2
.obj gap_03_0000099A_rodata, global
.hidden gap_03_0000099A_rodata
	.2byte 0x0000
.endobj gap_03_0000099A_rodata

# .rodata:0x7FC | 0x99C | size: 0xE
.obj str_peach_aji_219_aji_00011804, local
	.string "peach_aji_219"
.endobj str_peach_aji_219_aji_00011804

# .rodata:0x80A | 0x9AA | size: 0x2
.obj gap_03_000009AA_rodata, global
.hidden gap_03_000009AA_rodata
	.2byte 0x0000
.endobj gap_03_000009AA_rodata

# .rodata:0x80C | 0x9AC | size: 0xE
.obj str_peach_aji_220_aji_00011814, local
	.string "peach_aji_220"
.endobj str_peach_aji_220_aji_00011814

# .rodata:0x81A | 0x9BA | size: 0x2
.obj gap_03_000009BA_rodata, global
.hidden gap_03_000009BA_rodata
	.2byte 0x0000
.endobj gap_03_000009BA_rodata

# .rodata:0x81C | 0x9BC | size: 0x7
.obj str_見張り_aji_00011824, local
	.4byte 0x8CA992A3
	.byte 0x82, 0xE8, 0x00
.endobj str_見張り_aji_00011824

# .rodata:0x823 | 0x9C3 | size: 0x1
.obj gap_03_000009C3_rodata, global
.hidden gap_03_000009C3_rodata
	.byte 0x00
.endobj gap_03_000009C3_rodata

# .rodata:0x824 | 0x9C4 | size: 0xE
.obj str_peach_aji_243_aji_0001182c, local
	.string "peach_aji_243"
.endobj str_peach_aji_243_aji_0001182c

# .rodata:0x832 | 0x9D2 | size: 0x2
.obj gap_03_000009D2_rodata, global
.hidden gap_03_000009D2_rodata
	.2byte 0x0000
.endobj gap_03_000009D2_rodata

# .rodata:0x834 | 0x9D4 | size: 0xE
.obj str_peach_aji_130_aji_0001183c, local
	.string "peach_aji_130"
.endobj str_peach_aji_130_aji_0001183c

# .rodata:0x842 | 0x9E2 | size: 0x2
.obj gap_03_000009E2_rodata, global
.hidden gap_03_000009E2_rodata
	.2byte 0x0000
.endobj gap_03_000009E2_rodata

# .rodata:0x844 | 0x9E4 | size: 0xD
.obj str_peach_aji_40_aji_0001184c, local
	.string "peach_aji_40"
.endobj str_peach_aji_40_aji_0001184c

# .rodata:0x851 | 0x9F1 | size: 0x3
.obj gap_03_000009F1_rodata, global
.hidden gap_03_000009F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009F1_rodata

# .rodata:0x854 | 0x9F4 | size: 0x19
.obj str_SFX_PEACH_ELEVATOR_M_aji_0001185c, local
	.string "SFX_PEACH_ELEVATOR_MOVE1"
.endobj str_SFX_PEACH_ELEVATOR_M_aji_0001185c

# .rodata:0x86D | 0xA0D | size: 0x3
.obj gap_03_00000A0D_rodata, global
.hidden gap_03_00000A0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A0D_rodata

# .rodata:0x870 | 0xA10 | size: 0x1B
.obj str_SFX_PEACH_ELEVATOR_A_aji_00011878, local
	.string "SFX_PEACH_ELEVATOR_APPEAR1"
.endobj str_SFX_PEACH_ELEVATOR_A_aji_00011878

# .rodata:0x88B | 0xA2B | size: 0x1
.obj gap_03_00000A2B_rodata, global
.hidden gap_03_00000A2B_rodata
	.byte 0x00
.endobj gap_03_00000A2B_rodata

# .rodata:0x88C | 0xA2C | size: 0xE
.obj str_peach_aji_128_aji_00011894, local
	.string "peach_aji_128"
.endobj str_peach_aji_128_aji_00011894

# .rodata:0x89A | 0xA3A | size: 0x2
.obj gap_03_00000A3A_rodata, global
.hidden gap_03_00000A3A_rodata
	.2byte 0x0000
.endobj gap_03_00000A3A_rodata

# .rodata:0x89C | 0xA3C | size: 0xE
.obj str_peach_aji_129_aji_000118a4, local
	.string "peach_aji_129"
.endobj str_peach_aji_129_aji_000118a4

# .rodata:0x8AA | 0xA4A | size: 0x2
.obj gap_03_00000A4A_rodata, global
.hidden gap_03_00000A4A_rodata
	.2byte 0x0000
.endobj gap_03_00000A4A_rodata

# .rodata:0x8AC | 0xA4C | size: 0x7
.obj str_手下１_aji_000118b4, local
	.4byte 0x8EE889BA
	.byte 0x82, 0x50, 0x00
.endobj str_手下１_aji_000118b4

# .rodata:0x8B3 | 0xA53 | size: 0x1
.obj gap_03_00000A53_rodata, global
.hidden gap_03_00000A53_rodata
	.byte 0x00
.endobj gap_03_00000A53_rodata

# .rodata:0x8B4 | 0xA54 | size: 0xE
.obj str_peach_aji_131_aji_000118bc, local
	.string "peach_aji_131"
.endobj str_peach_aji_131_aji_000118bc

# .rodata:0x8C2 | 0xA62 | size: 0x2
.obj gap_03_00000A62_rodata, global
.hidden gap_03_00000A62_rodata
	.2byte 0x0000
.endobj gap_03_00000A62_rodata

# .rodata:0x8C4 | 0xA64 | size: 0xE
.obj str_peach_aji_218_aji_000118cc, local
	.string "peach_aji_218"
.endobj str_peach_aji_218_aji_000118cc

# .rodata:0x8D2 | 0xA72 | size: 0x2
.obj gap_03_00000A72_rodata, global
.hidden gap_03_00000A72_rodata
	.2byte 0x0000
.endobj gap_03_00000A72_rodata

# .rodata:0x8D4 | 0xA74 | size: 0xD
.obj str_A_e2_6_door1_aji_000118dc, local
	.string "A_e2_6_door1"
.endobj str_A_e2_6_door1_aji_000118dc

# .rodata:0x8E1 | 0xA81 | size: 0x3
.obj gap_03_00000A81_rodata, global
.hidden gap_03_00000A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A81_rodata

# .rodata:0x8E4 | 0xA84 | size: 0xD
.obj str_A_e2_6_door2_aji_000118ec, local
	.string "A_e2_6_door2"
.endobj str_A_e2_6_door2_aji_000118ec

# .rodata:0x8F1 | 0xA91 | size: 0x3
.obj gap_03_00000A91_rodata, global
.hidden gap_03_00000A91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A91_rodata

# .rodata:0x8F4 | 0xA94 | size: 0xF
.obj str_BGM_EVT_PEACH1_aji_000118fc, local
	.string "BGM_EVT_PEACH1"
.endobj str_BGM_EVT_PEACH1_aji_000118fc

# .rodata:0x903 | 0xAA3 | size: 0x1
.obj gap_03_00000AA3_rodata, global
.hidden gap_03_00000AA3_rodata
	.byte 0x00
.endobj gap_03_00000AA3_rodata

# .rodata:0x904 | 0xAA4 | size: 0x9
.obj str_c_zako_n_aji_0001190c, local
	.string "c_zako_n"
.endobj str_c_zako_n_aji_0001190c

# .rodata:0x90D | 0xAAD | size: 0x3
.obj gap_03_00000AAD_rodata, global
.hidden gap_03_00000AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AAD_rodata

# .rodata:0x910 | 0xAB0 | size: 0xD
.obj str_第三勢力部下_aji_00011918, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x959489BA
	.byte 0x00
.endobj str_第三勢力部下_aji_00011918

# .rodata:0x91D | 0xABD | size: 0x3
.obj gap_03_00000ABD_rodata, global
.hidden gap_03_00000ABD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ABD_rodata

# .rodata:0x920 | 0xAC0 | size: 0x3
.obj str_me_aji_00011928, local
	.string "me"
.endobj str_me_aji_00011928

# .rodata:0x923 | 0xAC3 | size: 0x1
.obj gap_03_00000AC3_rodata, global
.hidden gap_03_00000AC3_rodata
	.byte 0x00
.endobj gap_03_00000AC3_rodata

# .rodata:0x924 | 0xAC4 | size: 0xE
.obj str_peach_aji_138_aji_0001192c, local
	.string "peach_aji_138"
.endobj str_peach_aji_138_aji_0001192c

# .rodata:0x932 | 0xAD2 | size: 0x2
.obj gap_03_00000AD2_rodata, global
.hidden gap_03_00000AD2_rodata
	.2byte 0x0000
.endobj gap_03_00000AD2_rodata

# .rodata:0x934 | 0xAD4 | size: 0xE
.obj str_peach_aji_139_aji_0001193c, local
	.string "peach_aji_139"
.endobj str_peach_aji_139_aji_0001193c

# .rodata:0x942 | 0xAE2 | size: 0x2
.obj gap_03_00000AE2_rodata, global
.hidden gap_03_00000AE2_rodata
	.2byte 0x0000
.endobj gap_03_00000AE2_rodata

# .rodata:0x944 | 0xAE4 | size: 0x7
.obj str_手下２_aji_0001194c, local
	.4byte 0x8EE889BA
	.byte 0x82, 0x51, 0x00
.endobj str_手下２_aji_0001194c

# .rodata:0x94B | 0xAEB | size: 0x1
.obj gap_03_00000AEB_rodata, global
.hidden gap_03_00000AEB_rodata
	.byte 0x00
.endobj gap_03_00000AEB_rodata

# .rodata:0x94C | 0xAEC | size: 0xE
.obj str_peach_aji_140_aji_00011954, local
	.string "peach_aji_140"
.endobj str_peach_aji_140_aji_00011954

# .rodata:0x95A | 0xAFA | size: 0x2
.obj gap_03_00000AFA_rodata, global
.hidden gap_03_00000AFA_rodata
	.2byte 0x0000
.endobj gap_03_00000AFA_rodata

# .rodata:0x95C | 0xAFC | size: 0x7
.obj str_手下３_aji_00011964, local
	.4byte 0x8EE889BA
	.byte 0x82, 0x52, 0x00
.endobj str_手下３_aji_00011964

# .rodata:0x963 | 0xB03 | size: 0x1
.obj gap_03_00000B03_rodata, global
.hidden gap_03_00000B03_rodata
	.byte 0x00
.endobj gap_03_00000B03_rodata

# .rodata:0x964 | 0xB04 | size: 0x8
.obj str_hosi_01_aji_0001196c, local
	.string "hosi_01"
.endobj str_hosi_01_aji_0001196c

# .rodata:0x96C | 0xB0C | size: 0x8
.obj str_hosi_02_aji_00011974, local
	.string "hosi_02"
.endobj str_hosi_02_aji_00011974

# .rodata:0x974 | 0xB14 | size: 0x8
.obj str_hosi_03_aji_0001197c, local
	.string "hosi_03"
.endobj str_hosi_03_aji_0001197c

# .rodata:0x97C | 0xB1C | size: 0x17
.obj str_polySurface1300_q002_aji_00011984, local
	.string "polySurface1300_q00266"
.endobj str_polySurface1300_q002_aji_00011984

# .rodata:0x993 | 0xB33 | size: 0x1
.obj gap_03_00000B33_rodata, global
.hidden gap_03_00000B33_rodata
	.byte 0x00
.endobj gap_03_00000B33_rodata

# .rodata:0x994 | 0xB34 | size: 0x8
.obj str_A_kagi1_aji_0001199c, local
	.string "A_kagi1"
.endobj str_A_kagi1_aji_0001199c

# .rodata:0x99C | 0xB3C | size: 0xB
.obj str_軍団ザコ１_aji_000119a4, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x50, 0x00
.endobj str_軍団ザコ１_aji_000119a4

# .rodata:0x9A7 | 0xB47 | size: 0x1
.obj gap_03_00000B47_rodata, global
.hidden gap_03_00000B47_rodata
	.byte 0x00
.endobj gap_03_00000B47_rodata

# .rodata:0x9A8 | 0xB48 | size: 0xB
.obj str_軍団ザコ２_aji_000119b0, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x51, 0x00
.endobj str_軍団ザコ２_aji_000119b0

# .rodata:0x9B3 | 0xB53 | size: 0x1
.obj gap_03_00000B53_rodata, global
.hidden gap_03_00000B53_rodata
	.byte 0x00
.endobj gap_03_00000B53_rodata

# .rodata:0x9B4 | 0xB54 | size: 0xB
.obj str_軍団ザコ３_aji_000119bc, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x52, 0x00
.endobj str_軍団ザコ３_aji_000119bc

# .rodata:0x9BF | 0xB5F | size: 0x1
.obj gap_03_00000B5F_rodata, global
.hidden gap_03_00000B5F_rodata
	.byte 0x00
.endobj gap_03_00000B5F_rodata

# .rodata:0x9C0 | 0xB60 | size: 0xB
.obj str_軍団ザコ４_aji_000119c8, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x53, 0x00
.endobj str_軍団ザコ４_aji_000119c8

# .rodata:0x9CB | 0xB6B | size: 0x1
.obj gap_03_00000B6B_rodata, global
.hidden gap_03_00000B6B_rodata
	.byte 0x00
.endobj gap_03_00000B6B_rodata

# .rodata:0x9CC | 0xB6C | size: 0xB
.obj str_軍団ザコ５_aji_000119d4, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x54, 0x00
.endobj str_軍団ザコ５_aji_000119d4

# .rodata:0x9D7 | 0xB77 | size: 0x1
.obj gap_03_00000B77_rodata, global
.hidden gap_03_00000B77_rodata
	.byte 0x00
.endobj gap_03_00000B77_rodata

# .rodata:0x9D8 | 0xB78 | size: 0xB
.obj str_軍団ザコ６_aji_000119e0, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x55, 0x00
.endobj str_軍団ザコ６_aji_000119e0

# .rodata:0x9E3 | 0xB83 | size: 0x1
.obj gap_03_00000B83_rodata, global
.hidden gap_03_00000B83_rodata
	.byte 0x00
.endobj gap_03_00000B83_rodata

# .rodata:0x9E4 | 0xB84 | size: 0xB
.obj str_軍団ザコ７_aji_000119ec, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x82, 0x56, 0x00
.endobj str_軍団ザコ７_aji_000119ec

# .rodata:0x9EF | 0xB8F | size: 0x1
.obj gap_03_00000B8F_rodata, global
.hidden gap_03_00000B8F_rodata
	.byte 0x00
.endobj gap_03_00000B8F_rodata

# .rodata:0x9F0 | 0xB90 | size: 0xD
.obj str_バリアーンＺ_aji_000119f8, local
	.4byte 0x836F838A
	.4byte 0x8341815B
	.4byte 0x83938279
	.byte 0x00
.endobj str_バリアーンＺ_aji_000119f8

# .rodata:0x9FD | 0xB9D | size: 0x3
.obj gap_03_00000B9D_rodata, global
.hidden gap_03_00000B9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B9D_rodata

# .rodata:0xA00 | 0xBA0 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00011a08, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00011a08
	.2byte 0x0000

# .rodata:0xA10 | 0xBB0 | size: 0x4
.obj zero_aji_00011a18, local
	.float 0
.endobj zero_aji_00011a18

# .rodata:0xA14 | 0xBB4 | size: 0x12
.obj str_stg7_aji_password_aji_00011a1c, local
	.string "stg7_aji_password"
.endobj str_stg7_aji_password_aji_00011a1c

# .rodata:0xA26 | 0xBC6 | size: 0x2
.obj gap_03_00000BC6_rodata, global
.hidden gap_03_00000BC6_rodata
	.2byte 0x0000
.endobj gap_03_00000BC6_rodata

# 0x00000A60..0x000065F0 | size: 0x5B90
.data
.balign 8

# .data:0x0 | 0xA60 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA68 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA6C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA70 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA74 | size: 0x4
.obj gap_04_00000A74_data, global
.hidden gap_04_00000A74_data
	.4byte 0x00000000
.endobj gap_04_00000A74_data

# .data:0x18 | 0xA78 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA80 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA84 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA88 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA90 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA94 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA98 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA9C | size: 0x4
.obj gap_04_00000A9C_data, global
.hidden gap_04_00000A9C_data
	.4byte 0x00000000
.endobj gap_04_00000A9C_data

# .data:0x40 | 0xAA0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAA8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAAC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAB0 | size: 0x58
.obj w1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00011008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00011014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w1_door_open

# .data:0xA8 | 0xB08 | size: 0x58
.obj w1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00011008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00011014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w1_door_close

# .data:0x100 | 0xB60 | size: 0x58
.obj e1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door2_2_aji_00011020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door2_1_aji_0001102c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e1_door_open

# .data:0x158 | 0xBB8 | size: 0x58
.obj e1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door2_2_aji_00011020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door2_1_aji_0001102c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e1_door_close

# .data:0x1B0 | 0xC10 | size: 0x58
.obj w2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door3_1_aji_00011038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door3_2_aji_00011044
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w2_door_open

# .data:0x208 | 0xC68 | size: 0x58
.obj w2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door3_1_aji_00011038
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door3_2_aji_00011044
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w2_door_close

# .data:0x260 | 0xCC0 | size: 0x58
.obj e2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door4_2_aji_00011050
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door4_1_aji_0001105c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e2_door_open

# .data:0x2B8 | 0xD18 | size: 0x58
.obj e2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door4_2_aji_00011050
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door4_1_aji_0001105c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e2_door_close

# .data:0x310 | 0xD70 | size: 0x58
.obj n1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door6_2_aji_00011068
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door6_1_aji_00011074
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n1_door_open

# .data:0x368 | 0xDC8 | size: 0x58
.obj n1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door6_2_aji_00011068
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door6_1_aji_00011074
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n1_door_close

# .data:0x3C0 | 0xE20 | size: 0x58
.obj n2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door7_2_aji_00011080
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door7_1_aji_0001108c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n2_door_open

# .data:0x418 | 0xE78 | size: 0x58
.obj n2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door7_2_aji_00011080
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door7_1_aji_0001108c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n2_door_close

# .data:0x470 | 0xED0 | size: 0x58
.obj n3_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door8_2_aji_00011098
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door8_1_aji_000110a4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n3_door_open

# .data:0x4C8 | 0xF28 | size: 0x58
.obj n3_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door8_2_aji_00011098
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door8_1_aji_000110a4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n3_door_close

# .data:0x520 | 0xF80 | size: 0x58
.obj n4_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door9_2_aji_000110b0
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door9_1_aji_000110bc
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n4_door_open

# .data:0x578 | 0xFD8 | size: 0x58
.obj n4_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door9_2_aji_000110b0
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door9_1_aji_000110bc
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n4_door_close

# .data:0x5D0 | 0x1030 | size: 0x58
.obj w3_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door5_1_aji_000110c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door5_2_aji_000110d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w3_door_open

# .data:0x628 | 0x1088 | size: 0x58
.obj w3_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door5_1_aji_000110c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door5_2_aji_000110d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w3_door_close

# .data:0x680 | 0x10E0 | size: 0x58
.obj e3_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door10_2_aji_000110e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door10_1_aji_000110ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e3_door_open

# .data:0x6D8 | 0x1138 | size: 0x58
.obj e3_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door10_2_aji_000110e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door10_1_aji_000110ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e3_door_close

# .data:0x730 | 0x1190 | size: 0x58
.obj w4_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door11_1_aji_000110f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door11_2_aji_00011104
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w4_door_open

# .data:0x788 | 0x11E8 | size: 0x58
.obj w4_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door11_1_aji_000110f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door11_2_aji_00011104
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w4_door_close

# .data:0x7E0 | 0x1240 | size: 0x58
.obj e4_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door12_2_aji_00011110
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door12_1_aji_0001111c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e4_door_open

# .data:0x838 | 0x1298 | size: 0x58
.obj e4_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door12_2_aji_00011110
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door12_1_aji_0001111c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e4_door_close

# .data:0x890 | 0x12F0 | size: 0x58
.obj w5_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door13_1_aji_00011128
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door13_2_aji_00011134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w5_door_open

# .data:0x8E8 | 0x1348 | size: 0x58
.obj w5_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door13_1_aji_00011128
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door13_2_aji_00011134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w5_door_close

# .data:0x940 | 0x13A0 | size: 0x58
.obj e5_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door14_2_aji_00011140
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door14_1_aji_0001114c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e5_door_open

# .data:0x998 | 0x13F8 | size: 0x58
.obj e5_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door14_2_aji_00011140
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door14_1_aji_0001114c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e5_door_close

# .data:0x9F0 | 0x1450 | size: 0x384
.obj bero_entry_data, local
	.4byte str_w_bero_1_aji_00011158
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_00_aji_00011164
	.4byte str_e_bero_aji_0001116c
	.4byte 0x00050005
	.4byte w1_door_close
	.4byte w1_door_open
	.4byte str_e_bero_1_aji_00011174
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_02_aji_00011180
	.4byte str_w_bero_aji_00011188
	.4byte 0x00050005
	.4byte e1_door_close
	.4byte e1_door_open
	.4byte str_w_bero_2_aji_00011190
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_03_aji_0001119c
	.4byte str_e_bero_aji_0001116c
	.4byte 0x00050005
	.4byte w2_door_close
	.4byte w2_door_open
	.4byte str_e_bero_2_aji_000111a4
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_04_aji_000111b0
	.4byte str_w_bero_aji_00011188
	.4byte 0x00050005
	.4byte e2_door_close
	.4byte e2_door_open
	.4byte str_n_bero_1_aji_000111b8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_06_aji_000111c4
	.4byte str_s_bero_aji_000111cc
	.4byte 0x00050005
	.4byte n1_door_close
	.4byte n1_door_open
	.4byte str_n_bero_2_aji_000111d4
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_07_aji_000111e0
	.4byte str_s_bero_aji_000111cc
	.4byte 0x00050005
	.4byte n2_door_close
	.4byte n2_door_open
	.4byte str_n_bero_3_aji_000111e8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_08_aji_000111f4
	.4byte str_s_bero_1_aji_000111fc
	.4byte 0x00050005
	.4byte n3_door_close
	.4byte n3_door_open
	.4byte str_n_bero_4_aji_00011208
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_09_aji_00011214
	.4byte str_s_bero_aji_000111cc
	.4byte 0x00050005
	.4byte n4_door_close
	.4byte n4_door_open
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_05_aji_00011228
	.4byte str_e_bero_aji_0001116c
	.4byte 0x00050005
	.4byte w3_door_close
	.4byte w3_door_open
	.4byte str_e_bero3_aji_00011230
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_10_aji_00011238
	.4byte str_w_bero_aji_00011188
	.4byte 0x00050005
	.4byte e3_door_close
	.4byte e3_door_open
	.4byte str_w_bero_4_aji_00011240
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_12_aji_0001124c
	.4byte str_e_bero_aji_0001116c
	.4byte 0x00050005
	.4byte w4_door_close
	.4byte w4_door_open
	.4byte str_e_bero_4_aji_00011254
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_18_aji_00011260
	.4byte str_w_bero_aji_00011188
	.4byte 0x00050005
	.4byte e4_door_close
	.4byte e4_door_open
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_16_aji_00011274
	.4byte str_e_bero_aji_0001116c
	.4byte 0x00050005
	.4byte w5_door_close
	.4byte w5_door_open
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_17_aji_00011288
	.4byte str_w_bero_aji_00011188
	.4byte 0x00050005
	.4byte e5_door_close
	.4byte e5_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0xD74 | 0x17D4 | size: 0x78
.obj e_bero_5_peach, local
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte str_aji_17_aji_00011288
	.4byte str_w_bero_aji_00011188
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj e_bero_5_peach

# .data:0xDEC | 0x184C | size: 0x8
.obj elv_key1, local
	.4byte 0x0000001B
	.4byte 0xFFFFFFFF
.endobj elv_key1

# .data:0xDF4 | 0x1854 | size: 0x20C
.obj elv_unlock1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_65_aji_00011290
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte elv_key1
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi1_aka_aji_0001129c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi2_aka_aji_000112ac
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi3_aka_aji_000112bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi1_mid_aji_000112cc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi2_mid_aji_000112dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi3_mid_aji_000112ec
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi1_aji_000112fc
	.4byte 0x00000000
	.4byte ele_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi2_aji_00011308
	.4byte 0x00000000
	.4byte ele_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi3_aji_00011314
	.4byte 0x00000000
	.4byte ele_1
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_KE_aji_00011320
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000016B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elv_unlock1

# .data:0x1000 | 0x1A60 | size: 0x8
.obj elv_key2, local
	.4byte 0x0000001C
	.4byte 0xFFFFFFFF
.endobj elv_key2

# .data:0x1008 | 0x1A68 | size: 0x20C
.obj elv_unlock2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_65_aji_00011290
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001C
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte elv_key2
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi5_aka_aji_00011348
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi6_aka_aji_00011358
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi5_mid_aji_00011378
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi6_mid_aji_00011388
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi4_aji_00011398
	.4byte 0x00000000
	.4byte ele_2
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi5_aji_000113a4
	.4byte 0x00000000
	.4byte ele_2
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi6_aji_000113b0
	.4byte 0x00000000
	.4byte ele_2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_KE_aji_00011320
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000170
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elv_unlock2

# .data:0x1214 | 0x1C74 | size: 0x22C
.obj ele1_door_open, local
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e1_1_door1_aji_000113bc
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e1_1_door2_aji_000113c8
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e1_2_door1_aji_000113d4
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e1_2_door2_aji_000113e0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e1_3_door1_aji_000113ec
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e1_3_door2_aji_000113f8
	.4byte 0x00000031
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_OP_aji_00011404
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFDCD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ee1_door1_aji_0001141c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_OP_aji_00011428
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFDCD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee1_door1_aji_0001141c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee1_door2_aji_00011440
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ele1_door_open

# .data:0x1440 | 0x1EA0 | size: 0x22C
.obj ele1_door_close, local
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e1_1_door1_aji_000113bc
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e1_1_door2_aji_000113c8
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e1_2_door1_aji_000113d4
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e1_2_door2_aji_000113e0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e1_3_door1_aji_000113ec
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e1_3_door2_aji_000113f8
	.4byte 0x00000031
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ee1_door1_aji_0001141c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_CL_aji_0001144c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFDCD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee1_door1_aji_0001141c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee1_door2_aji_00011440
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_CL_aji_00011468
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFDCD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ele1_door_close

# .data:0x166C | 0x20CC | size: 0x97C
.obj ele_1, local
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_nokotaro_get_status
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFDEE
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_AC_aji_00011484
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x000B005B
	.4byte evt_cam3d_event_from_road
	.4byte 0xFFFFFDDF
	.4byte 0xFE363C81
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDD0
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F80
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere1_m_aji_000114a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_AP_aji_000114a8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ere1_m_aji_000114a0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_ere1_m_aji_000114c4
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele1_door_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDD0
	.4byte 0xFFFFFF88
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
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
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_66_aji_000114d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_ele_1_00_aji_000114dc
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_ele_1_01_aji_000114f0
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_ele_1_02_aji_00011504
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDD0
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele1_door_close
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C85
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele1_door_close
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C88
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere1_m_aji_000114a0
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_MO_aji_00011518
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ere1_m_aji_000114a0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_ere1_m_aji_000114c4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere1_m_aji_000114a0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte ele1_door_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFDD0
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte ele1_door_close
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C88
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
.endobj ele_1

# .data:0x1FE8 | 0x2A48 | size: 0x22C
.obj ele2_door_open, local
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e2_4_door1_aji_00011530
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e2_4_door2_aji_0001153c
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e2_5_door1_aji_00011548
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e2_5_door2_aji_00011554
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e2_6_door1_aji_00011560
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e2_6_door2_aji_0001156c
	.4byte 0x00000031
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_OP_aji_00011404
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFDCD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ee2_door1_aji_00011578
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_OP_aji_00011428
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFDCD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee2_door1_aji_00011578
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee2_door2_aji_00011584
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ele2_door_open

# .data:0x2214 | 0x2C74 | size: 0x22C
.obj ele2_door_close, local
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e2_4_door1_aji_00011530
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e2_4_door2_aji_0001153c
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e2_5_door1_aji_00011548
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e2_5_door2_aji_00011554
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte str_e2_6_door1_aji_00011560
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte str_e2_6_door2_aji_0001156c
	.4byte 0x00000031
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ee2_door1_aji_00011578
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_CL_aji_0001144c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFDCD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee2_door1_aji_00011578
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ee2_door2_aji_00011584
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_CL_aji_00011468
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFDCD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ele2_door_close

# .data:0x2440 | 0x2EA0 | size: 0x9E8
.obj ele_2, local
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000016F
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_65_aji_00011290
	.4byte 0x00000000
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
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_nokotaro_get_status
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_get_status
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000235
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_AC_aji_00011484
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte evt_cam3d_evt_set_now
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x000B005B
	.4byte evt_cam3d_event_from_road
	.4byte 0x00000226
	.4byte 0xFE363C81
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000217
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFD050F81
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_AP_aji_000114a8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ere2_m_aji_00011590
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_AP_aji_000114a8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_ere2_m_aji_00011598
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele2_door_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000217
	.4byte 0xFFFFFF88
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
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
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_66_aji_000114d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_ele_2_00_aji_000115a4
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_ele_2_01_aji_000115b8
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_ele_2_02_aji_000115cc
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000217
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele2_door_close
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C85
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele2_door_close
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C88
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_ELEVATOR_MO_aji_00011518
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ere2_m_aji_00011590
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_ere2_m_aji_00011598
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFC1A
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte ele2_door_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000217
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte ele2_door_close
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C88
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
.endobj ele_2

# .data:0x2E28 | 0x3888 | size: 0x43C
.obj evt_elv_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000177
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi1_aka_aji_0001129c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi2_aka_aji_000112ac
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi3_aka_aji_000112bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi1_mid_aji_000112cc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi2_mid_aji_000112dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi3_mid_aji_000112ec
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi1_aji_000112fc
	.4byte 0x00000000
	.4byte last_elv_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi2_aji_00011308
	.4byte 0x00000000
	.4byte last_elv_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi3_aji_00011314
	.4byte 0x00000000
	.4byte last_elv_lock
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000016B
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi1_aka_aji_0001129c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi1_mid_aji_000112cc
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi1_aji_000112fc
	.4byte 0x00000000
	.4byte elv_unlock1
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi1_aka_aji_0001129c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi2_aka_aji_000112ac
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi3_aka_aji_000112bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi1_mid_aji_000112cc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi2_mid_aji_000112dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi3_mid_aji_000112ec
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi1_aji_000112fc
	.4byte 0x00000000
	.4byte ele_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi2_aji_00011308
	.4byte 0x00000000
	.4byte ele_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi3_aji_00011314
	.4byte 0x00000000
	.4byte ele_1
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000170
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi4_aji_00011398
	.4byte 0x00000000
	.4byte elv_unlock2
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi5_aka_aji_00011348
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi6_aka_aji_00011358
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi5_mid_aji_00011378
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi6_mid_aji_00011388
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi4_aji_00011398
	.4byte 0x00000000
	.4byte ele_2
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi5_aji_000113a4
	.4byte 0x00000000
	.4byte ele_2
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi6_aji_000113b0
	.4byte 0x00000000
	.4byte ele_2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_ere1_m_aji_000114c4
	.4byte str_ere1_m_aji_000114a0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_ere2_m_aji_00011598
	.4byte str_ere2_m_aji_00011590
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_elv_init

# .data:0x3264 | 0x3CC4 | size: 0x38
.obj key_lock, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_71_aji_000115e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj key_lock

# .data:0x329C | 0x3CFC | size: 0x90
.obj last_key_lock, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_45_02_aji_000115ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE05AF
	.4byte 0x00000003
	.4byte 0x00020035
	.4byte 0xF5DE05AF
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05AF
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_45_03_aji_000115fc
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj last_key_lock

# .data:0x332C | 0x3D8C | size: 0x90
.obj last_elv_lock, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_45_01_aji_0001160c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE05AF
	.4byte 0x00000003
	.4byte 0x00020035
	.4byte 0xF5DE05AF
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05AF
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_45_03_aji_000115fc
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj last_elv_lock

# .data:0x33BC | 0x3E1C | size: 0x3C8
.obj evt_key_init, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00000000
	.4byte key_lock
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000178
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000177
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_1_aji_000111b8
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_2_aji_000111d4
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_3_aji_000111e8
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_4_aji_00011208
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero3_aji_00011230
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_4_aji_00011240
	.4byte 0x00000000
	.4byte last_key_lock
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_1_aji_000111b8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_2_aji_000111d4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_3_aji_000111e8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_4_aji_00011208
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero3_aji_00011230
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_4_aji_00011240
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_m_aji_0001161c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_r_aji_00011628
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights2_m_aji_00011634
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights2_r_aji_00011640
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights3_m_aji_0001164c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights3_r_aji_00011658
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights4_m_aji_00011664
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights4_r_aji_00011670
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights5_m_aji_0001167c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights5_r_aji_00011688
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_r_aji_00011628
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_m_aji_0001161c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights2_r_aji_00011640
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights2_m_aji_00011634
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights3_r_aji_00011658
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights3_m_aji_0001164c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights4_r_aji_00011670
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights4_m_aji_00011664
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_key_init

# .data:0x3784 | 0x41E4 | size: 0x2F0
.obj evt_aikotoba, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_68_aji_00011694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_roll_aji_000116a0
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_aji_000116ac
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_aji_000116ac
	.4byte str_OFF_d_roll_aji_000116a0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_aji_000116ac
	.4byte str_Z_1_aji_000116b0
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_aji_000116ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_aji_000116ac
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_aji_000116ac
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_nameent_on
	.4byte 0x00000004
	.4byte 0x0000006B
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
	.4byte str_SFX_OFF4_NAME_ENTRY1_aji_000116b4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_aji_000116ac
	.4byte str_A_2_aji_000116cc
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_aji_000116ac
	.4byte 0x0001005B
	.4byte evt_win_nameent_wait
	.4byte 0x0002005B
	.4byte evt_win_nameent_name
	.4byte 0xFE363C80
	.4byte 0x0000006B
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
	.4byte str_SFX_OFF4_NAME_ENTRY2_aji_000116d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_aji_000116ac
	.4byte str_A_1_aji_000116e8
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_aji_000116ac
	.4byte 0x0001005B
	.4byte evt_win_nameent_off
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_aji_000116ac
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_roll_aji_000116a0
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte get_password
	.4byte 0xFE363C81
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_70_aji_000116ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000016D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_2_aji_000111a4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi1_mid_aji_000116f8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi1_aka_aji_00011704
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights5_r_aji_00011688
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights5_m_aji_0001167c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DOOR_UNLOCK_aji_00011710
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_69_aji_00011728
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_aikotoba

# .data:0x3A74 | 0x44D4 | size: 0x80
.obj peach_evt_stg1, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_aji_00011734
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00011744
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_02_aji_00011180
	.4byte str_peach_evt_stg1_aji_00011754
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1

# .data:0x3AF4 | 0x4554 | size: 0xA4
.obj peach_evt_stg1_1, local
	.4byte 0x00020018
	.4byte 0xF8406BE8
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00011764
	.4byte str_P_S_4_aji_0001176c
	.4byte str_P_T_4_aji_00011774
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_39_aji_0001177c
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_0001178c
	.4byte 0x00020032
	.4byte 0xF8406BE8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00011764
	.4byte str_P_S_1_aji_0001178c
	.4byte str_P_T_1_aji_00011794
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1_1

# .data:0x3B98 | 0x45F8 | size: 0x1A8
.obj peach_evt_stg1_2, local
	.4byte 0x00020018
	.4byte 0xF8406BE9
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
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
	.4byte 0x00000384
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_QUES_aji_0001179c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_aji_000117b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000D
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte e5_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_5_aji_0001127c
	.4byte e_bero_5_peach
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_41_aji_000117bc
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x00020032
	.4byte 0xF8406BE9
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1_2

# .data:0x3D40 | 0x47A0 | size: 0x100
.obj peach_evt_stg3_1, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x000001EA
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000262
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte ele2_door_open
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_B_1_aji_000117cc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00011764
	.4byte str_P_B_2_aji_000117d4
	.4byte str_P_T_7_aji_000117dc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_127_aji_000117e4
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_0001178c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00011764
	.4byte str_P_S_1_aji_0001178c
	.4byte str_P_T_1_aji_00011794
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg3_1

# .data:0x3E40 | 0x48A0 | size: 0x64
.obj peach_evt_stg3, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_126_aji_000117f4
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0001005C
	.4byte peach_evt_stg3_1
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg3

# .data:0x3EA4 | 0x4904 | size: 0xCC
.obj peach_evt_stg5, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x0000028A
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_219_aji_00011804
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_220_aji_00011814
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000280
	.4byte 0xFE363C82
	.4byte 0xF24B3A80
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg5

# .data:0x3F70 | 0x49D0 | size: 0xB8
.obj peach_evt_stg5_1, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_1_aji_000111b8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_見張り_aji_00011824
	.4byte 0x0000005A
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_aji_000117b8
	.4byte str_見張り_aji_00011824
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_243_aji_0001182c
	.4byte 0x00000000
	.4byte str_見張り_aji_00011824
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg5_1

# .data:0x4028 | 0x4A88 | size: 0x38
.obj peach_evt_door_stop, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_130_aji_0001183c
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_door_stop

# .data:0x4060 | 0x4AC0 | size: 0x7E4
.obj peach_evt_ele_2, local
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000A6
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000106
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000002
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_40_aji_0001184c
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFD050F81
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_ELEVATOR_M_aji_0001185c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ere2_m_aji_00011590
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_ere2_m_aji_00011598
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_ELEVATOR_A_aji_00011878
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele2_door_open
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000226
	.4byte 0xFFFFFFD8
	.4byte 0xF24BBA80
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000226
	.4byte 0xFFFFFF88
	.4byte 0xF24C5A80
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
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
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam3d_road_shift_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte ele2_door_close
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C88
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000007D0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_ELEVATOR_A_aji_00011878
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_ELEVATOR_M_aji_0001185c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ere2_m_aji_00011590
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_ere2_m_aji_00011598
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFC19
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ere2_m_aji_00011590
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_ELEVATOR_A_aji_00011878
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_128_aji_00011894
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_129_aji_000118a4
	.4byte 0x00000000
	.4byte str_mario_aji_00011764
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_手下１_aji_000118b4
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000118b4
	.4byte 0x000002BC
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下１_aji_000118b4
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000118b4
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000118b4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_手下１_aji_000118b4
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_131_aji_000118bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000106
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_218_aji_000118cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte ele2_door_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte ele2_door_close
	.4byte 0x0002005B
	.4byte evt_cam3d_road_shift_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi5_aka_aji_00011348
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi5_mid_aji_00011378
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi6_aka_aji_00011358
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi6_mid_aji_00011388
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_ele_2

# .data:0x4844 | 0x52A4 | size: 0x2C4
.obj peach_evt_ele_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi3_aka_aji_000112bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi3_mid_aji_000112ec
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000106
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi5_aka_aji_00011348
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi6_aka_aji_00011358
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi5_mid_aji_00011378
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi6_mid_aji_00011388
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi5_aka_aji_00011348
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi6_aka_aji_00011358
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi5_mid_aji_00011378
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi6_mid_aji_00011388
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000004
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A5
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte str_A_e2_6_door1_aji_000118dc
	.4byte 0x00000000
	.4byte peach_evt_ele_2
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte str_A_e2_6_door2_aji_000118ec
	.4byte 0x00000000
	.4byte peach_evt_ele_2
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi6_aji_000113b0
	.4byte 0x00000000
	.4byte peach_evt_ele_2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi6_aji_000113b0
	.4byte 0x00000000
	.4byte peach_evt_ele_2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi4_aji_00011398
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_ekagi3_aji_00011314
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_ere2_m_aji_00011598
	.4byte str_ere2_m_aji_00011590
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_ele_init

# .data:0x4B08 | 0x5568 | size: 0x2C8
.obj peach_evt_key_init, local
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000A5
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000A9
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000106
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000109
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_r_aji_00011628
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_m_aji_0001161c
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_4_aji_00011208
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_r_aji_00011628
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_m_aji_0001161c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights2_r_aji_00011640
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights2_m_aji_00011634
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_3_aji_000111e8
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights3_r_aji_00011658
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights3_m_aji_0001164c
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_2_aji_000111d4
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights4_r_aji_00011670
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights4_m_aji_00011664
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_1_aji_000111b8
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights4_r_aji_00011670
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights4_m_aji_00011664
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_4_aji_00011208
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_3_aji_000111e8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_2_aji_000111d4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_1_aji_000111b8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_key_init

# .data:0x4DD0 | 0x5830 | size: 0x5B4
.obj peach_evt_init, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_peach_transform_gundan_on
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_peach_evt_stg1_aji_00011754
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFCBD
	.4byte 0x00000C18
	.4byte 0x0000021D
	.4byte 0xFFFFFCBD
	.4byte 0x00000BFE
	.4byte 0xFFFFFFF9
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte peach_evt_stg1
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_000118fc
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0001005C
	.4byte peach_evt_ele_init
	.4byte 0x0001005C
	.4byte peach_evt_key_init
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000003A
	.4byte 0x0001005C
	.4byte peach_evt_stg1_1
	.4byte 0x0001005C
	.4byte peach_evt_stg1_2
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A5
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005C
	.4byte peach_evt_stg3
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi4_aka_aji_00011338
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi4_mid_aji_00011368
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi5_aka_aji_00011348
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi5_mid_aji_00011378
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ekagi6_aka_aji_00011358
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ekagi6_mid_aji_00011388
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero3_aji_00011230
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero3_aji_00011230
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0001005C
	.4byte peach_evt_stg3_1
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000107
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_見張り_aji_00011824
	.4byte str_c_zako_n_aji_0001190c
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_見張り_aji_00011824
	.4byte str_第三勢力部下_aji_00011918
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_見張り_aji_00011824
	.4byte 0xFFFFFC7C
	.4byte 0x000003E8
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_見張り_aji_00011824
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_見張り_aji_00011824
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_見張り_aji_00011824
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_見張り_aji_00011824
	.4byte 0x00000600
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_見張り_aji_00011824
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000106
	.4byte 0x0001005C
	.4byte peach_evt_stg5
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_3_aji_0001121c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_w_bero_5_aji_00011268
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_5_aji_0001127c
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000107
	.4byte 0x0001005B
	.4byte peach_evt_toumei
	.4byte 0x0001005C
	.4byte peach_evt_stg5_1
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x0001005B
	.4byte peach_evt_toumei
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_init

# .data:0x5384 | 0x5DE4 | size: 0xA8
.obj teshita1_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_aji_00011928
	.4byte 0x10000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00011928
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000A7
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_aji_00011928
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0xFFFFFFCE
	.4byte 0x00000002
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00011928
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00011928
	.4byte 0x000000A0
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00011928
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita1_init

# .data:0x542C | 0x5E8C | size: 0x38
.obj teshita1_talk, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_138_aji_0001192c
	.4byte 0x00000000
	.4byte str_me_aji_00011928
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita1_talk

# .data:0x5464 | 0x5EC4 | size: 0xCC
.obj teshita2_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_aji_00011928
	.4byte 0x10000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00011928
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000A7
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_aji_00011928
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0xFFFFFFF1
	.4byte 0x00000002
	.4byte 0x0002002F
	.4byte 0x00000107
	.4byte 0x00000109
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_aji_00011928
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0xFFFFFFF1
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00011928
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00011928
	.4byte 0x000000A0
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00011928
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita2_init

# .data:0x5530 | 0x5F90 | size: 0x38
.obj teshita2_talk, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_139_aji_0001193c
	.4byte 0x00000000
	.4byte str_手下２_aji_0001194c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita2_talk

# .data:0x5568 | 0x5FC8 | size: 0x8C
.obj teshita2_regl, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_aji_00011928
	.4byte 0x000003B6
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_aji_00011928
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_aji_00011928
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_aji_00011928
	.4byte 0xFFFFFC4A
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita2_regl

# .data:0x55F4 | 0x6054 | size: 0xB8
.obj teshita3_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00011928
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000A7
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_aji_00011928
	.4byte 0x000002EE
	.4byte 0x000003E8
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x0002002F
	.4byte 0x00000107
	.4byte 0x00000109
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_aji_00011928
	.4byte 0x000002EE
	.4byte 0x000003E8
	.4byte 0x00000014
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00011928
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00011928
	.4byte 0x000000A0
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00011928
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita3_init

# .data:0x56AC | 0x610C | size: 0x38
.obj teshita3_talk, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_140_aji_00011954
	.4byte 0x00000000
	.4byte str_手下３_aji_00011964
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita3_talk

# .data:0x56E4 | 0x6144 | size: 0x8C
.obj teshita3_regl, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_aji_00011928
	.4byte 0xFFFFFC4A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_aji_00011928
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_aji_00011928
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_aji_00011928
	.4byte 0x000003B6
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita3_regl

# .data:0x5770 | 0x61D0 | size: 0x170
.obj npcEnt, local
	.4byte str_手下１_aji_000118b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte teshita1_init
	.4byte 0x00000000
	.4byte teshita1_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_手下２_aji_0001194c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte teshita2_init
	.4byte teshita2_regl
	.4byte teshita2_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_手下３_aji_00011964
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte teshita3_init
	.4byte teshita3_regl
	.4byte teshita3_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x58E0 | 0x6340 | size: 0x2AC
.obj aji_01_init_evt_2_data_6340, global
	.4byte 0x0001005E
	.4byte peach_evt_init
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_aji_0001196c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_02_aji_00011974
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_03_aji_0001197c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_polySurface1300_q002_aji_00011984
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000016D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_2_aji_000111a4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi1_aji_0001199c
	.4byte 0x00000000
	.4byte evt_aikotoba
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi1_mid_aji_000116f8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi1_aka_aji_00011704
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights5_m_aji_0001167c
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi1_mid_aji_000116f8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi1_aka_aji_00011704
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights5_r_aji_00011688
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ１_aji_000119a4
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ２_aji_000119b0
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ３_aji_000119bc
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ４_aji_000119c8
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ５_aji_000119d4
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ６_aji_000119e0
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ７_aji_000119ec
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_バリアーンＺ_aji_000119f8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ１_aji_000119a4
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ２_aji_000119b0
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ３_aji_000119bc
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ４_aji_000119c8
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ５_aji_000119d4
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ６_aji_000119e0
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ７_aji_000119ec
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_バリアーンＺ_aji_000119f8
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00011a08
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00011744
	.4byte 0x0001005E
	.4byte evt_elv_init
	.4byte 0x0001005E
	.4byte evt_key_init
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_01_init_evt_2_data_6340

# .data:0x5B8C | 0x65EC | size: 0x4
.obj gap_04_000065EC_data, global
.hidden gap_04_000065EC_data
	.4byte 0x00000000
.endobj gap_04_000065EC_data
