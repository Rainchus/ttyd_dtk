.include "macros.inc"
.file "moo_00.o"

# 0x00000000..0x000001D8 | size: 0x1D8
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x4C
.fn party_reset, local
/* 00000000 000000C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  38 60 00 00 */	li r3, 0x0
/* 0000000C 000000D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000010 000000D4  48 00 04 9D */	bl partyGetPtr
/* 00000014 000000D8  3C A0 00 00 */	lis r5, float_1_moo_0000329c@ha
/* 00000018 000000DC  3C 80 00 00 */	lis r4, zero_moo_000032a0@ha
/* 0000001C 000000E0  C0 25 00 00 */	lfs f1, float_1_moo_0000329c@l(r5)
/* 00000020 000000E4  C0 04 00 00 */	lfs f0, zero_moo_000032a0@l(r4)
/* 00000024 000000E8  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 00000028 000000EC  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 0000002C 000000F0  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 00000030 000000F4  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 00000034 000000F8  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 00000038 000000FC  38 60 00 02 */	li r3, 0x2
/* 0000003C 00000100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000040 00000104  7C 08 03 A6 */	mtlr r0
/* 00000044 00000108  38 21 00 10 */	addi r1, r1, 0x10
/* 00000048 0000010C  4E 80 00 20 */	blr
.endfn party_reset

# .text:0x4C | 0x4C | size: 0x48
.fn mario_reset, local
/* 0000004C 00000110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000050 00000114  7C 08 02 A6 */	mflr r0
/* 00000054 00000118  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000058 0000011C  48 00 04 55 */	bl marioGetPtr
/* 0000005C 00000120  3C A0 00 00 */	lis r5, float_1_moo_0000329c@ha
/* 00000060 00000124  3C 80 00 00 */	lis r4, zero_moo_000032a0@ha
/* 00000064 00000128  C0 25 00 00 */	lfs f1, float_1_moo_0000329c@l(r5)
/* 00000068 0000012C  C0 04 00 00 */	lfs f0, zero_moo_000032a0@l(r4)
/* 0000006C 00000130  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 00000070 00000134  D0 23 00 CC */	stfs f1, 0xcc(r3)
/* 00000074 00000138  D0 23 00 C8 */	stfs f1, 0xc8(r3)
/* 00000078 0000013C  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 0000007C 00000140  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 00000080 00000144  38 60 00 02 */	li r3, 0x2
/* 00000084 00000148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000088 0000014C  7C 08 03 A6 */	mtlr r0
/* 0000008C 00000150  38 21 00 10 */	addi r1, r1, 0x10
/* 00000090 00000154  4E 80 00 20 */	blr
.endfn mario_reset

# .text:0x94 | 0x94 | size: 0xA4
.fn party_kirimomi, local
/* 00000094 00000158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000098 0000015C  7C 08 02 A6 */	mflr r0
/* 0000009C 00000160  90 01 00 24 */	stw r0, 0x24(r1)
/* 000000A0 00000164  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 000000A4 00000168  F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 000000A8 0000016C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000000AC 00000170  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000000B0 00000174  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000000B4 00000178  48 00 03 F9 */	bl evtGetFloat
/* 000000B8 0000017C  FF E0 08 90 */	fmr f31, f1
/* 000000BC 00000180  38 60 00 00 */	li r3, 0x0
/* 000000C0 00000184  48 00 03 ED */	bl partyGetPtr
/* 000000C4 00000188  3C 80 00 00 */	lis r4, float_1_moo_0000329c@ha
/* 000000C8 0000018C  3C A0 00 00 */	lis r5, float_0p5_moo_000032a4@ha
/* 000000CC 00000190  38 C4 00 00 */	addi r6, r4, float_1_moo_0000329c@l
/* 000000D0 00000194  7C 7F 1B 78 */	mr r31, r3
/* 000000D4 00000198  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 000000D8 0000019C  3C 80 00 00 */	lis r4, double_360_moo_000032a8@ha
/* 000000DC 000001A0  C0 25 00 00 */	lfs f1, float_0p5_moo_000032a4@l(r5)
/* 000000E0 000001A4  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 000000E4 000001A8  C8 44 00 00 */	lfd f2, double_360_moo_000032a8@l(r4)
/* 000000E8 000001AC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 000000EC 000001B0  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 000000F0 000001B4  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 000000F4 000001B8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 000000F8 000001BC  EC 23 00 72 */	fmuls f1, f3, f1
/* 000000FC 000001C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 00000100 000001C4  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 00000104 000001C8  D3 FF 00 6C */	stfs f31, 0x6c(r31)
/* 00000108 000001CC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 0000010C 000001D0  48 00 03 A1 */	bl fmod
/* 00000110 000001D4  FC 00 08 18 */	frsp f0, f1
/* 00000114 000001D8  38 60 00 02 */	li r3, 0x2
/* 00000118 000001DC  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 0000011C 000001E0  E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 00000120 000001E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000124 000001E8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 00000128 000001EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000012C 000001F0  7C 08 03 A6 */	mtlr r0
/* 00000130 000001F4  38 21 00 20 */	addi r1, r1, 0x20
/* 00000134 000001F8  4E 80 00 20 */	blr
.endfn party_kirimomi

# .text:0x138 | 0x138 | size: 0xA0
.fn mario_kirimomi, local
/* 00000138 000001FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000013C 00000200  7C 08 02 A6 */	mflr r0
/* 00000140 00000204  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000144 00000208  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 00000148 0000020C  F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 0000014C 00000210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000150 00000214  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000154 00000218  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000158 0000021C  48 00 03 55 */	bl evtGetFloat
/* 0000015C 00000220  FF E0 08 90 */	fmr f31, f1
/* 00000160 00000224  48 00 03 4D */	bl marioGetPtr
/* 00000164 00000228  3C 80 00 00 */	lis r4, float_1_moo_0000329c@ha
/* 00000168 0000022C  3C A0 00 00 */	lis r5, float_0p5_moo_000032a4@ha
/* 0000016C 00000230  38 C4 00 00 */	addi r6, r4, float_1_moo_0000329c@l
/* 00000170 00000234  7C 7F 1B 78 */	mr r31, r3
/* 00000174 00000238  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00000178 0000023C  3C 80 00 00 */	lis r4, double_360_moo_000032a8@ha
/* 0000017C 00000240  C0 25 00 00 */	lfs f1, float_0p5_moo_000032a4@l(r5)
/* 00000180 00000244  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 00000184 00000248  C8 44 00 00 */	lfd f2, double_360_moo_000032a8@l(r4)
/* 00000188 0000024C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 0000018C 00000250  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 00000190 00000254  C0 7F 01 BC */	lfs f3, 0x1bc(r31)
/* 00000194 00000258  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 00000198 0000025C  EC 23 00 72 */	fmuls f1, f3, f1
/* 0000019C 00000260  EC 01 00 32 */	fmuls f0, f1, f0
/* 000001A0 00000264  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 000001A4 00000268  D3 FF 00 C4 */	stfs f31, 0xc4(r31)
/* 000001A8 0000026C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 000001AC 00000270  48 00 03 01 */	bl fmod
/* 000001B0 00000274  FC 00 08 18 */	frsp f0, f1
/* 000001B4 00000278  38 60 00 02 */	li r3, 0x2
/* 000001B8 0000027C  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 000001BC 00000280  E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 000001C0 00000284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000001C4 00000288  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 000001C8 0000028C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000001CC 00000290  7C 08 03 A6 */	mtlr r0
/* 000001D0 00000294  38 21 00 20 */	addi r1, r1, 0x20
/* 000001D4 00000298  4E 80 00 20 */	blr
.endfn mario_kirimomi

# 0x00000000..0x00000220 | size: 0x220
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_w_bero_moo_00003090, local
	.string "w_bero"
.endobj str_w_bero_moo_00003090

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_moo_07_moo_00003098, local
	.string "moo_07"
.endobj str_moo_07_moo_00003098

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# .rodata:0x10 | 0x10 | size: 0x7
.obj str_e_bero_moo_000030a0, local
	.string "e_bero"
.endobj str_e_bero_moo_000030a0

# .rodata:0x17 | 0x17 | size: 0x1
.obj gap_03_00000017_rodata, global
.hidden gap_03_00000017_rodata
	.byte 0x00
.endobj gap_03_00000017_rodata

# .rodata:0x18 | 0x18 | size: 0x7
.obj str_moo_01_moo_000030a8, local
	.string "moo_01"
.endobj str_moo_01_moo_000030a8

# .rodata:0x1F | 0x1F | size: 0x1
.obj gap_03_0000001F_rodata, global
.hidden gap_03_0000001F_rodata
	.byte 0x00
.endobj gap_03_0000001F_rodata

# .rodata:0x20 | 0x20 | size: 0x8
.obj str_PKR_D_1_moo_000030b0, local
	.string "PKR_D_1"
.endobj str_PKR_D_1_moo_000030b0

# .rodata:0x28 | 0x28 | size: 0x8
.obj str_PNK_D_1_moo_000030b8, local
	.string "PNK_D_1"
.endobj str_PNK_D_1_moo_000030b8

# .rodata:0x30 | 0x30 | size: 0x4
.obj str_D_1_moo_000030c0, local
	.string "D_1"
.endobj str_D_1_moo_000030c0

# .rodata:0x34 | 0x34 | size: 0x8
.obj str_PYS_D_1_moo_000030c4, local
	.string "PYS_D_1"
.endobj str_PYS_D_1_moo_000030c4

# .rodata:0x3C | 0x3C | size: 0x8
.obj str_PWD_D_1_moo_000030cc, local
	.string "PWD_D_1"
.endobj str_PWD_D_1_moo_000030cc

# .rodata:0x44 | 0x44 | size: 0x8
.obj str_PTR_D_1_moo_000030d4, local
	.string "PTR_D_1"
.endobj str_PTR_D_1_moo_000030d4

# .rodata:0x4C | 0x4C | size: 0x8
.obj str_PCH_D_1_moo_000030dc, local
	.string "PCH_D_1"
.endobj str_PCH_D_1_moo_000030dc

# .rodata:0x54 | 0x54 | size: 0x8
.obj str_PKR_D_5_moo_000030e4, local
	.string "PKR_D_5"
.endobj str_PKR_D_5_moo_000030e4

# .rodata:0x5C | 0x5C | size: 0x8
.obj str_PNK_D_5_moo_000030ec, local
	.string "PNK_D_5"
.endobj str_PNK_D_5_moo_000030ec

# .rodata:0x64 | 0x64 | size: 0x4
.obj str_D_4_moo_000030f4, local
	.string "D_4"
.endobj str_D_4_moo_000030f4

# .rodata:0x68 | 0x68 | size: 0x8
.obj str_PYS_D_5_moo_000030f8, local
	.string "PYS_D_5"
.endobj str_PYS_D_5_moo_000030f8

# .rodata:0x70 | 0x70 | size: 0x8
.obj str_PWD_D_5_moo_00003100, local
	.string "PWD_D_5"
.endobj str_PWD_D_5_moo_00003100

# .rodata:0x78 | 0x78 | size: 0x8
.obj str_PTR_D_4_moo_00003108, local
	.string "PTR_D_4"
.endobj str_PTR_D_4_moo_00003108

# .rodata:0x80 | 0x80 | size: 0x8
.obj str_PCH_D_4_moo_00003110, local
	.string "PCH_D_4"
.endobj str_PCH_D_4_moo_00003110

# .rodata:0x88 | 0x88 | size: 0x6
.obj str_M_F_1_moo_00003118, local
	.string "M_F_1"
.endobj str_M_F_1_moo_00003118

# .rodata:0x8E | 0x8E | size: 0x2
.obj gap_03_0000008E_rodata, global
.hidden gap_03_0000008E_rodata
	.2byte 0x0000
.endobj gap_03_0000008E_rodata

# .rodata:0x90 | 0x90 | size: 0xC
.obj str_kemuri_test_moo_00003120, local
	.string "kemuri_test"
.endobj str_kemuri_test_moo_00003120

# .rodata:0x9C | 0x9C | size: 0x1A
.obj str_SFX_STG7_MARIO_MOON__moo_0000312c, local
	.string "SFX_STG7_MARIO_MOON_FALL1"
.endobj str_SFX_STG7_MARIO_MOON__moo_0000312c

# .rodata:0xB6 | 0xB6 | size: 0x2
.obj gap_03_000000B6_rodata, global
.hidden gap_03_000000B6_rodata
	.2byte 0x0000
.endobj gap_03_000000B6_rodata

# .rodata:0xB8 | 0xB8 | size: 0x1D
.obj str_SFX_VOICE_MARIO_LAND_moo_00003148, local
	.string "SFX_VOICE_MARIO_LAND_DAMAGE2"
.endobj str_SFX_VOICE_MARIO_LAND_moo_00003148

# .rodata:0xD5 | 0xD5 | size: 0x3
.obj gap_03_000000D5_rodata, global
.hidden gap_03_000000D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000D5_rodata

# .rodata:0xD8 | 0xD8 | size: 0x6
.obj str_M_N_H_moo_00003168, local
	.string "M_N_H"
.endobj str_M_N_H_moo_00003168

# .rodata:0xDE | 0xDE | size: 0x2
.obj gap_03_000000DE_rodata, global
.hidden gap_03_000000DE_rodata
	.2byte 0x0000
.endobj gap_03_000000DE_rodata

# .rodata:0xE0 | 0xE0 | size: 0x13
.obj str_ビビアンしっぽ有効_moo_00003170, local
	.4byte 0x83728372
	.4byte 0x83418393
	.4byte 0x82B582C1
	.4byte 0x82DB974C
	.byte 0x8C, 0xF8, 0x00
.endobj str_ビビアンしっぽ有効_moo_00003170

# .rodata:0xF3 | 0xF3 | size: 0x1
.obj gap_03_000000F3_rodata, global
.hidden gap_03_000000F3_rodata
	.byte 0x00
.endobj gap_03_000000F3_rodata

# .rodata:0xF4 | 0xF4 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__moo_00003184, local
	.string "SFX_VOICE_MARIO_FLD_JUMP5"
.endobj str_SFX_VOICE_MARIO_FLD__moo_00003184

# .rodata:0x10E | 0x10E | size: 0x2
.obj gap_03_0000010E_rodata, global
.hidden gap_03_0000010E_rodata
	.2byte 0x0000
.endobj gap_03_0000010E_rodata

# .rodata:0x110 | 0x110 | size: 0x6
.obj str_M_S_1_moo_000031a0, local
	.string "M_S_1"
.endobj str_M_S_1_moo_000031a0

# .rodata:0x116 | 0x116 | size: 0x2
.obj gap_03_00000116_rodata, global
.hidden gap_03_00000116_rodata
	.2byte 0x0000
.endobj gap_03_00000116_rodata

# .rodata:0x118 | 0x118 | size: 0xC
.obj str_stg7_moo_03_moo_000031a8, local
	.string "stg7_moo_03"
.endobj str_stg7_moo_03_moo_000031a8

# .rodata:0x124 | 0x124 | size: 0x7
.obj str_M_W_4B_moo_000031b4, local
	.string "M_W_4B"
.endobj str_M_W_4B_moo_000031b4

# .rodata:0x12B | 0x12B | size: 0x1
.obj gap_03_0000012B_rodata, global
.hidden gap_03_0000012B_rodata
	.byte 0x00
.endobj gap_03_0000012B_rodata

# .rodata:0x12C | 0x12C | size: 0xC
.obj str_stg7_moo_04_moo_000031bc, local
	.string "stg7_moo_04"
.endobj str_stg7_moo_04_moo_000031bc

# .rodata:0x138 | 0x138 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_moo_000031c8, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_moo_000031c8

# .rodata:0x14F | 0x14F | size: 0x1
.obj gap_03_0000014F_rodata, global
.hidden gap_03_0000014F_rodata
	.byte 0x00
.endobj gap_03_0000014F_rodata

# .rodata:0x150 | 0x150 | size: 0x6
.obj str_M_N_2_moo_000031e0, local
	.string "M_N_2"
.endobj str_M_N_2_moo_000031e0

# .rodata:0x156 | 0x156 | size: 0x2
.obj gap_03_00000156_rodata, global
.hidden gap_03_00000156_rodata
	.2byte 0x0000
.endobj gap_03_00000156_rodata

# .rodata:0x158 | 0x158 | size: 0x14
.obj str_SFX_OFF_WALL_BREAK1_moo_000031e8, local
	.string "SFX_OFF_WALL_BREAK1"
.endobj str_SFX_OFF_WALL_BREAK1_moo_000031e8

# .rodata:0x16C | 0x16C | size: 0xA
.obj str_offscreen_moo_000031fc, local
	.string "offscreen"
.endobj str_offscreen_moo_000031fc

# .rodata:0x176 | 0x176 | size: 0x2
.obj gap_03_00000176_rodata, global
.hidden gap_03_00000176_rodata
	.2byte 0x0000
.endobj gap_03_00000176_rodata

# .rodata:0x178 | 0x178 | size: 0x4
.obj str_img_moo_00003208, local
	.string "img"
.endobj str_img_moo_00003208

# .rodata:0x17C | 0x17C | size: 0xF
.obj str_OFF_d_bom_ver2_moo_0000320c, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_moo_0000320c

# .rodata:0x18B | 0x18B | size: 0x1
.obj gap_03_0000018B_rodata, global
.hidden gap_03_0000018B_rodata
	.byte 0x00
.endobj gap_03_0000018B_rodata

# .rodata:0x18C | 0x18C | size: 0x4
.obj str_A_1_moo_0000321c, local
	.string "A_1"
.endobj str_A_1_moo_0000321c

# .rodata:0x190 | 0x190 | size: 0x9
.obj str_S_iwa_01_moo_00003220, local
	.string "S_iwa_01"
.endobj str_S_iwa_01_moo_00003220

# .rodata:0x199 | 0x199 | size: 0x3
.obj gap_03_00000199_rodata, global
.hidden gap_03_00000199_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000199_rodata

# .rodata:0x19C | 0x19C | size: 0x9
.obj str_A_iwa_01_moo_0000322c, local
	.string "A_iwa_01"
.endobj str_A_iwa_01_moo_0000322c

# .rodata:0x1A5 | 0x1A5 | size: 0x3
.obj gap_03_000001A5_rodata, global
.hidden gap_03_000001A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001A5_rodata

# .rodata:0x1A8 | 0x1A8 | size: 0x9
.obj str_S_iwa_08_moo_00003238, local
	.string "S_iwa_08"
.endobj str_S_iwa_08_moo_00003238

# .rodata:0x1B1 | 0x1B1 | size: 0x3
.obj gap_03_000001B1_rodata, global
.hidden gap_03_000001B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001B1_rodata

# .rodata:0x1B4 | 0x1B4 | size: 0x9
.obj str_A_iwa_08_moo_00003244, local
	.string "A_iwa_08"
.endobj str_A_iwa_08_moo_00003244

# .rodata:0x1BD | 0x1BD | size: 0x3
.obj gap_03_000001BD_rodata, global
.hidden gap_03_000001BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001BD_rodata

# .rodata:0x1C0 | 0x1C0 | size: 0xE
.obj str_BGM_STG7_MON1_moo_00003250, local
	.string "BGM_STG7_MON1"
.endobj str_BGM_STG7_MON1_moo_00003250

# .rodata:0x1CE | 0x1CE | size: 0x2
.obj gap_03_000001CE_rodata, global
.hidden gap_03_000001CE_rodata
	.2byte 0x0000
.endobj gap_03_000001CE_rodata

# .rodata:0x1D0 | 0x1D0 | size: 0xE
.obj str_ENV_STG7_MOO1_moo_00003260, local
	.string "ENV_STG7_MOO1"
.endobj str_ENV_STG7_MOO1_moo_00003260

# .rodata:0x1DE | 0x1DE | size: 0x2
.obj gap_03_000001DE_rodata, global
.hidden gap_03_000001DE_rodata
	.2byte 0x0000
.endobj gap_03_000001DE_rodata

# .rodata:0x1E0 | 0x1E0 | size: 0x8
.obj str_hosi_01_moo_00003270, local
	.string "hosi_01"
.endobj str_hosi_01_moo_00003270

# .rodata:0x1E8 | 0x1E8 | size: 0x8
.obj str_hosi_02_moo_00003278, local
	.string "hosi_02"
.endobj str_hosi_02_moo_00003278

# .rodata:0x1F0 | 0x1F0 | size: 0x8
.obj str_hosi_03_moo_00003280, local
	.string "hosi_03"
.endobj str_hosi_03_moo_00003280

# .rodata:0x1F8 | 0x1F8 | size: 0xA
.obj str_mobj_save_moo_00003288, local
	.string "mobj_save"
.endobj str_mobj_save_moo_00003288

# .rodata:0x202 | 0x202 | size: 0x2
.obj gap_03_00000202_rodata, global
.hidden gap_03_00000202_rodata
	.2byte 0x0000
.endobj gap_03_00000202_rodata

# .rodata:0x204 | 0x204 | size: 0x8
.obj str_item_01_moo_00003294, local
	.string "item_01"
.endobj str_item_01_moo_00003294

# .rodata:0x20C | 0x20C | size: 0x4
.obj float_1_moo_0000329c, local
	.float 1
.endobj float_1_moo_0000329c

# .rodata:0x210 | 0x210 | size: 0x4
.obj zero_moo_000032a0, local
	.float 0
.endobj zero_moo_000032a0

# .rodata:0x214 | 0x214 | size: 0x4
.obj float_0p5_moo_000032a4, local
	.float 0.5
.endobj float_0p5_moo_000032a4

# .rodata:0x218 | 0x218 | size: 0x8
.obj double_360_moo_000032a8, local
	.double 360
.endobj double_360_moo_000032a8

# 0x00000000..0x00000F40 | size: 0xF40
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14 | size: 0x4
.obj gap_04_00000014_data, global
.hidden gap_04_00000014_data
	.4byte 0x00000000
.endobj gap_04_00000014_data

# .data:0x18 | 0x18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3C | size: 0x4
.obj gap_04_0000003C_data, global
.hidden gap_04_0000003C_data
	.4byte 0x00000000
.endobj gap_04_0000003C_data

# .data:0x40 | 0x40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50 | size: 0x8
.obj _three$localstatic4$sqrtf, local
	.4byte 0x40080000
	.4byte 0x00000000
.endobj _three$localstatic4$sqrtf

# .data:0x58 | 0x58 | size: 0x8
.obj _half$localstatic3$sqrtf, local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj _half$localstatic3$sqrtf

# .data:0x60 | 0x60 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_moo_00003090
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_07_moo_00003098
	.4byte str_e_bero_moo_000030a0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_moo_000030a0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_01_moo_000030a8
	.4byte str_w_bero_moo_00003090
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

# .data:0x114 | 0x114 | size: 0x24
.obj spline_dt, local
	.4byte 0xC3A00000
	.4byte 0x43480000
	.4byte 0xC32A0000
	.4byte 0xC35C0000
	.4byte 0x42C80000
	.4byte 0xC32A0000
	.4byte 0xC2F00000
	.4byte 0x00000000
	.4byte 0xC32A0000
.endobj spline_dt

# .data:0x138 | 0x138 | size: 0xD0
.obj party_damage_pose, local
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_D_1_moo_000030b0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_1_moo_000030b8
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_D_1_moo_000030c0
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_D_1_moo_000030c4
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_D_1_moo_000030cc
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_1_moo_000030d4
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_D_1_moo_000030dc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj party_damage_pose

# .data:0x208 | 0x208 | size: 0xD0
.obj party_damage_pose2, local
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_D_5_moo_000030e4
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_5_moo_000030ec
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_D_4_moo_000030f4
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_D_5_moo_000030f8
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_D_5_moo_00003100
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_4_moo_00003108
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_D_4_moo_00003110
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj party_damage_pose2

# .data:0x2D8 | 0x2D8 | size: 0x834
.obj evt_first, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_F_1_moo_00003118
	.4byte 0x0001005E
	.4byte party_damage_pose
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000015A4
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x0000001E
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte party_kirimomi
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_sub_spline_init
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte spline_dt
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_sub_spline_get_value
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFCE
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_moo_00003120
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_MARIO_MOON__moo_0000312c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte party_damage_pose2
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000015F4
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte mario_kirimomi
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_sub_spline_init
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte spline_dt
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_spline_get_value
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_LAND_moo_00003148
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
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_MARIO_MOON__moo_0000312c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_moo_00003120
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_H_moo_00003168
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte party_reset
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00010071
	.4byte str_ビビアンしっぽ有効_moo_00003170
	.4byte 0x0003005B
	.4byte L_evt_party_vivian_tail
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte mario_reset
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__moo_00003184
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_moo_000031a0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6F
	.4byte 0x00000028
	.4byte 0x00000069
	.4byte 0xFFFFFF6F
	.4byte 0x00000028
	.4byte 0xFFFFFF56
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_moo_03_moo_000031a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_W_4B_moo_000031b4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_moo_000031a0
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_moo_04_moo_000031bc
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_moo_000031c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_moo_000031e0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_moo_000031a0
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000166
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x0000000E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_first

# .data:0xB0C | 0xB0C | size: 0x1A4
.obj rock_main_17_data_B0C, global
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_WALL_BREAK1_moo_000031e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_moo_000031fc
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte str_offscreen_moo_000031fc
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox2
	.4byte str_offscreen_moo_000031fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002001B
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_moo_00003208
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_moo_00003208
	.4byte str_OFF_d_bom_ver2_moo_0000320c
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_moo_00003208
	.4byte 0x00000000
	.4byte str_offscreen_moo_000031fc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_moo_00003208
	.4byte 0x0003005B
	.4byte evt_img_set_shadow
	.4byte str_img_moo_00003208
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_moo_00003208
	.4byte str_A_1_moo_0000321c
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_moo_00003208
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_moo_00003208
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_moo_000031fc
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_main_17_data_B0C

# .data:0xCB0 | 0xCB0 | size: 0x3C
.obj rock_evt0, local
	.4byte 0x00020032
	.4byte 0xF8406B39
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_iwa_01_moo_00003220
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_A_iwa_01_moo_0000322c
	.4byte 0x0001005E
	.4byte rock_main_17_data_B0C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_evt0

# .data:0xCEC | 0xCEC | size: 0x3C
.obj rock_evt1, local
	.4byte 0x00020032
	.4byte 0xF8406B3A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_iwa_08_moo_00003238
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_A_iwa_08_moo_00003244
	.4byte 0x0001005E
	.4byte rock_main_17_data_B0C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_evt1

# .data:0xD28 | 0xD28 | size: 0x214
.obj moo_00_init_evt_17_data_D28, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000166
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_MON1_moo_00003250
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_MOO1_moo_00003260
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_moo_00003270
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_02_moo_00003278
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_03_moo_00003280
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_moo_00003288
	.4byte 0x000000F5
	.4byte 0x00000031
	.4byte 0xFFFFFF33
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000166
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x00000037
	.4byte 0x0000014A
	.4byte 0xFFFFFF6F
	.4byte 0x00000037
	.4byte 0xFFFFFF56
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte evt_first
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_moo_0000320c
	.4byte 0x00020018
	.4byte 0xF8406B39
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_iwa_01_moo_0000322c
	.4byte 0x00000000
	.4byte rock_evt0
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_iwa_01_moo_00003220
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_iwa_01_moo_0000322c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406B3A
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_iwa_08_moo_00003244
	.4byte 0x00000000
	.4byte rock_evt1
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_iwa_08_moo_00003238
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_iwa_08_moo_00003244
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_moo_00003294
	.4byte 0x0000008C
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0xFFFFFE43
	.4byte 0x00000010
	.4byte 0xF8406B43
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj moo_00_init_evt_17_data_D28

# .data:0xF3C | 0xF3C | size: 0x4
.obj gap_04_00000F3C_data, global
.hidden gap_04_00000F3C_data
	.4byte 0x00000000
.endobj gap_04_00000F3C_data
