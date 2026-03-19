.include "macros.inc"
.file "unit_boss_zonbaba.o"

# 0x00000BB4..0x00000C64 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0xBB4 | size: 0xB0
.fn _leg_smoke_effect, local
/* 00000BB4 00000C78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000BB8 00000C7C  7C 08 02 A6 */	mflr r0
/* 00000BBC 00000C80  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000BC0 00000C84  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00000BC4 00000C88  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00000BC8 00000C8C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 00000BCC 00000C90  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 00000BD0 00000C94  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000BD4 00000C98  7C 7E 1B 78 */	mr r30, r3
/* 00000BD8 00000C9C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000BDC 00000CA0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000BE0 00000CA4  4B FF FE 91 */	bl evtGetFloat
/* 00000BE4 00000CA8  FF E0 08 90 */	fmr f31, f1
/* 00000BE8 00000CAC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000BEC 00000CB0  7F C3 F3 78 */	mr r3, r30
/* 00000BF0 00000CB4  4B FF FE 81 */	bl evtGetFloat
/* 00000BF4 00000CB8  FF C0 08 90 */	fmr f30, f1
/* 00000BF8 00000CBC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000BFC 00000CC0  7F C3 F3 78 */	mr r3, r30
/* 00000C00 00000CC4  4B FF FE 71 */	bl evtGetFloat
/* 00000C04 00000CC8  FC 00 08 90 */	fmr f0, f1
/* 00000C08 00000CCC  3C 80 00 00 */	lis r4, float_60_jon_00008370@ha
/* 00000C0C 00000CD0  38 A4 00 00 */	addi r5, r4, float_60_jon_00008370@l
/* 00000C10 00000CD4  3C 60 00 00 */	lis r3, zero_jon_00008374@ha
/* 00000C14 00000CD8  38 83 00 00 */	addi r4, r3, zero_jon_00008374@l
/* 00000C18 00000CDC  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 00000C1C 00000CE0  C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 00000C20 00000CE4  FC 20 F8 90 */	fmr f1, f31
/* 00000C24 00000CE8  FC 40 F0 90 */	fmr f2, f30
/* 00000C28 00000CEC  38 60 00 01 */	li r3, 0x1
/* 00000C2C 00000CF0  FC 60 00 90 */	fmr f3, f0
/* 00000C30 00000CF4  38 80 00 12 */	li r4, 0x12
/* 00000C34 00000CF8  38 A0 00 5A */	li r5, 0x5a
/* 00000C38 00000CFC  4B FF FE 39 */	bl effKemuri9N64Entry
/* 00000C3C 00000D00  38 60 00 02 */	li r3, 0x2
/* 00000C40 00000D04  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00000C44 00000D08  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00000C48 00000D0C  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 00000C4C 00000D10  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00000C50 00000D14  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000C54 00000D18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000C58 00000D1C  7C 08 03 A6 */	mtlr r0
/* 00000C5C 00000D20  38 21 00 30 */	addi r1, r1, 0x30
/* 00000C60 00000D24  4E 80 00 20 */	blr
.endfn _leg_smoke_effect

# 0x00001050..0x00001348 | size: 0x2F8
.rodata
.balign 8

# .rodata:0x0 | 0x1050 | size: 0xF
.obj str_btl_un_zonbaba_jon_00008080, local
	.string "btl_un_zonbaba"
.endobj str_btl_un_zonbaba_jon_00008080

# .rodata:0xF | 0x105F | size: 0x1
.obj gap_03_0000105F_rodata, global
.hidden gap_03_0000105F_rodata
	.byte 0x00
.endobj gap_03_0000105F_rodata

# .rodata:0x10 | 0x1060 | size: 0x16
.obj str_SFX_BOSS_GNB_DAMAGED_jon_00008090, local
	.string "SFX_BOSS_GNB_DAMAGED1"
.endobj str_SFX_BOSS_GNB_DAMAGED_jon_00008090

# .rodata:0x26 | 0x1076 | size: 0x2
.obj gap_03_00001076_rodata, global
.hidden gap_03_00001076_rodata
	.2byte 0x0000
.endobj gap_03_00001076_rodata

# .rodata:0x28 | 0x1078 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_000080a8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_000080a8

# .rodata:0x3D | 0x108D | size: 0x3
.obj gap_03_0000108D_rodata, global
.hidden gap_03_0000108D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000108D_rodata

# .rodata:0x40 | 0x1090 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_000080c0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_000080c0

# .rodata:0x54 | 0x10A4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_000080d4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_000080d4

# .rodata:0x6D | 0x10BD | size: 0x3
.obj gap_03_000010BD_rodata, global
.hidden gap_03_000010BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010BD_rodata

# .rodata:0x70 | 0x10C0 | size: 0x8
.obj str_GNB_N_1_jon_000080f0, local
	.string "GNB_N_1"
.endobj str_GNB_N_1_jon_000080f0

# .rodata:0x78 | 0x10C8 | size: 0x8
.obj str_GNB_X_1_jon_000080f8, local
	.string "GNB_X_1"
.endobj str_GNB_X_1_jon_000080f8

# .rodata:0x80 | 0x10D0 | size: 0x8
.obj str_GNB_Z_1_jon_00008100, local
	.string "GNB_Z_1"
.endobj str_GNB_Z_1_jon_00008100

# .rodata:0x88 | 0x10D8 | size: 0x8
.obj str_GNB_S_3_jon_00008108, local
	.string "GNB_S_3"
.endobj str_GNB_S_3_jon_00008108

# .rodata:0x90 | 0x10E0 | size: 0x8
.obj str_GNB_T_3_jon_00008110, local
	.string "GNB_T_3"
.endobj str_GNB_T_3_jon_00008110

# .rodata:0x98 | 0x10E8 | size: 0x8
.obj str_GNB_D_1_jon_00008118, local
	.string "GNB_D_1"
.endobj str_GNB_D_1_jon_00008118

# .rodata:0xA0 | 0x10F0 | size: 0x8
.obj str_GNB_S_4_jon_00008120, local
	.string "GNB_S_4"
.endobj str_GNB_S_4_jon_00008120

# .rodata:0xA8 | 0x10F8 | size: 0x8
.obj str_GNB_T_4_jon_00008128, local
	.string "GNB_T_4"
.endobj str_GNB_T_4_jon_00008128

# .rodata:0xB0 | 0x1100 | size: 0x8
.obj str_GNB_V_1_jon_00008130, local
	.string "GNB_V_1"
.endobj str_GNB_V_1_jon_00008130

# .rodata:0xB8 | 0x1108 | size: 0xC
.obj str_c_gonbaba_z_jon_00008138, local
	.string "c_gonbaba_z"
.endobj str_c_gonbaba_z_jon_00008138

# .rodata:0xC4 | 0x1114 | size: 0x7
.obj str_dontyo_jon_00008144, local
	.string "dontyo"
.endobj str_dontyo_jon_00008144

# .rodata:0xCB | 0x111B | size: 0x1
.obj gap_03_0000111B_rodata, global
.hidden gap_03_0000111B_rodata
	.byte 0x00
.endobj gap_03_0000111B_rodata

# .rodata:0xCC | 0x111C | size: 0x6
.obj str_M_I_Y_jon_0000814c, local
	.string "M_I_Y"
.endobj str_M_I_Y_jon_0000814c

# .rodata:0xD2 | 0x1122 | size: 0x2
.obj gap_03_00001122_rodata, global
.hidden gap_03_00001122_rodata
	.2byte 0x0000
.endobj gap_03_00001122_rodata

# .rodata:0xD4 | 0x1124 | size: 0x8
.obj str_GNB_F_3_jon_00008154, local
	.string "GNB_F_3"
.endobj str_GNB_F_3_jon_00008154

# .rodata:0xDC | 0x112C | size: 0x6
.obj str_M_I_O_jon_0000815c, local
	.string "M_I_O"
.endobj str_M_I_O_jon_0000815c

# .rodata:0xE2 | 0x1132 | size: 0x2
.obj gap_03_00001132_rodata, global
.hidden gap_03_00001132_rodata
	.2byte 0x0000
.endobj gap_03_00001132_rodata

# .rodata:0xE4 | 0x1134 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_jon_00008164, local
	.string "SFX_VOICE_MARIO_SURPRISED2_2"
.endobj str_SFX_VOICE_MARIO_SURP_jon_00008164

# .rodata:0x101 | 0x1151 | size: 0x3
.obj gap_03_00001151_rodata, global
.hidden gap_03_00001151_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001151_rodata

# .rodata:0x104 | 0x1154 | size: 0x15
.obj str_SFX_BOSS_GNB_APPEAR1_jon_00008184, local
	.string "SFX_BOSS_GNB_APPEAR1"
.endobj str_SFX_BOSS_GNB_APPEAR1_jon_00008184

# .rodata:0x119 | 0x1169 | size: 0x3
.obj gap_03_00001169_rodata, global
.hidden gap_03_00001169_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001169_rodata

# .rodata:0x11C | 0x116C | size: 0xC
.obj str_tik_boss_12_jon_0000819c, local
	.string "tik_boss_12"
.endobj str_tik_boss_12_jon_0000819c

# .rodata:0x128 | 0x1178 | size: 0xC
.obj str_tik_boss_13_jon_000081a8, local
	.string "tik_boss_13"
.endobj str_tik_boss_13_jon_000081a8

# .rodata:0x134 | 0x1184 | size: 0x8
.obj str_GNB_D_2_jon_000081b4, local
	.string "GNB_D_2"
.endobj str_GNB_D_2_jon_000081b4

# .rodata:0x13C | 0x118C | size: 0x15
.obj str_SFX_BTL_ATTACK_MISS2_jon_000081bc, local
	.string "SFX_BTL_ATTACK_MISS2"
.endobj str_SFX_BTL_ATTACK_MISS2_jon_000081bc

# .rodata:0x151 | 0x11A1 | size: 0x3
.obj gap_03_000011A1_rodata, global
.hidden gap_03_000011A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011A1_rodata

# .rodata:0x154 | 0x11A4 | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN1_jon_000081d4, local
	.string "SFX_BOSS_GNB_DOWN1"
.endobj str_SFX_BOSS_GNB_DOWN1_jon_000081d4

# .rodata:0x167 | 0x11B7 | size: 0x1
.obj gap_03_000011B7_rodata, global
.hidden gap_03_000011B7_rodata
	.byte 0x00
.endobj gap_03_000011B7_rodata

# .rodata:0x168 | 0x11B8 | size: 0xC
.obj str_tik_boss_16_jon_000081e8, local
	.string "tik_boss_16"
.endobj str_tik_boss_16_jon_000081e8

# .rodata:0x174 | 0x11C4 | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN2_jon_000081f4, local
	.string "SFX_BOSS_GNB_DOWN2"
.endobj str_SFX_BOSS_GNB_DOWN2_jon_000081f4

# .rodata:0x187 | 0x11D7 | size: 0x1
.obj gap_03_000011D7_rodata, global
.hidden gap_03_000011D7_rodata
	.byte 0x00
.endobj gap_03_000011D7_rodata

# .rodata:0x188 | 0x11D8 | size: 0x8
.obj str_GNB_D_3_jon_00008208, local
	.string "GNB_D_3"
.endobj str_GNB_D_3_jon_00008208

# .rodata:0x190 | 0x11E0 | size: 0x8
.obj str_GNB_H_1_jon_00008210, local
	.string "GNB_H_1"
.endobj str_GNB_H_1_jon_00008210

# .rodata:0x198 | 0x11E8 | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN3_jon_00008218, local
	.string "SFX_BOSS_GNB_DOWN3"
.endobj str_SFX_BOSS_GNB_DOWN3_jon_00008218

# .rodata:0x1AB | 0x11FB | size: 0x1
.obj gap_03_000011FB_rodata, global
.hidden gap_03_000011FB_rodata
	.byte 0x00
.endobj gap_03_000011FB_rodata

# .rodata:0x1AC | 0x11FC | size: 0x8
.obj str_GNB_H_2_jon_0000822c, local
	.string "GNB_H_2"
.endobj str_GNB_H_2_jon_0000822c

# .rodata:0x1B4 | 0x1204 | size: 0x8
.obj str_GNB_H_3_jon_00008234, local
	.string "GNB_H_3"
.endobj str_GNB_H_3_jon_00008234

# .rodata:0x1BC | 0x120C | size: 0xC
.obj str_tik_boss_15_jon_0000823c, local
	.string "tik_boss_15"
.endobj str_tik_boss_15_jon_0000823c

# .rodata:0x1C8 | 0x1218 | size: 0x8
.obj str_GNB_W_2_jon_00008248, local
	.string "GNB_W_2"
.endobj str_GNB_W_2_jon_00008248

# .rodata:0x1D0 | 0x1220 | size: 0x13
.obj str_SFX_BOSS_GNB_MOVE1_jon_00008250, local
	.string "SFX_BOSS_GNB_MOVE1"
.endobj str_SFX_BOSS_GNB_MOVE1_jon_00008250

# .rodata:0x1E3 | 0x1233 | size: 0x1
.obj gap_03_00001233_rodata, global
.hidden gap_03_00001233_rodata
	.byte 0x00
.endobj gap_03_00001233_rodata

# .rodata:0x1E4 | 0x1234 | size: 0x8
.obj str_GNB_A_3_jon_00008264, local
	.string "GNB_A_3"
.endobj str_GNB_A_3_jon_00008264

# .rodata:0x1EC | 0x123C | size: 0x15
.obj str_SFX_BOSS_GNB_ARM_UP1_jon_0000826c, local
	.string "SFX_BOSS_GNB_ARM_UP1"
.endobj str_SFX_BOSS_GNB_ARM_UP1_jon_0000826c

# .rodata:0x201 | 0x1251 | size: 0x3
.obj gap_03_00001251_rodata, global
.hidden gap_03_00001251_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001251_rodata

# .rodata:0x204 | 0x1254 | size: 0x17
.obj str_SFX_BOSS_GNB_ARM_DOW_jon_00008284, local
	.string "SFX_BOSS_GNB_ARM_DOWN1"
.endobj str_SFX_BOSS_GNB_ARM_DOW_jon_00008284

# .rodata:0x21B | 0x126B | size: 0x1
.obj gap_03_0000126B_rodata, global
.hidden gap_03_0000126B_rodata
	.byte 0x00
.endobj gap_03_0000126B_rodata

# .rodata:0x21C | 0x126C | size: 0x8
.obj str_GNB_W_3_jon_0000829c, local
	.string "GNB_W_3"
.endobj str_GNB_W_3_jon_0000829c

# .rodata:0x224 | 0x1274 | size: 0x13
.obj str_SFX_BOSS_GNB_BITE1_jon_000082a4, local
	.string "SFX_BOSS_GNB_BITE1"
.endobj str_SFX_BOSS_GNB_BITE1_jon_000082a4

# .rodata:0x237 | 0x1287 | size: 0x1
.obj gap_03_00001287_rodata, global
.hidden gap_03_00001287_rodata
	.byte 0x00
.endobj gap_03_00001287_rodata

# .rodata:0x238 | 0x1288 | size: 0x13
.obj str_SFX_BOSS_GNB_BITE2_jon_000082b8, local
	.string "SFX_BOSS_GNB_BITE2"
.endobj str_SFX_BOSS_GNB_BITE2_jon_000082b8

# .rodata:0x24B | 0x129B | size: 0x1
.obj gap_03_0000129B_rodata, global
.hidden gap_03_0000129B_rodata
	.byte 0x00
.endobj gap_03_0000129B_rodata

# .rodata:0x24C | 0x129C | size: 0x8
.obj str_GNB_A_2_jon_000082cc, local
	.string "GNB_A_2"
.endobj str_GNB_A_2_jon_000082cc

# .rodata:0x254 | 0x12A4 | size: 0x8
.obj str_GNB_A_1_jon_000082d4, local
	.string "GNB_A_1"
.endobj str_GNB_A_1_jon_000082d4

# .rodata:0x25C | 0x12AC | size: 0x16
.obj str_SFX_BOSS_GNB_NECK_UP_jon_000082dc, local
	.string "SFX_BOSS_GNB_NECK_UP1"
.endobj str_SFX_BOSS_GNB_NECK_UP_jon_000082dc

# .rodata:0x272 | 0x12C2 | size: 0x2
.obj gap_03_000012C2_rodata, global
.hidden gap_03_000012C2_rodata
	.2byte 0x0000
.endobj gap_03_000012C2_rodata

# .rodata:0x274 | 0x12C4 | size: 0xF
.obj str_gonbaba_breath_jon_000082f4, local
	.string "gonbaba_breath"
.endobj str_gonbaba_breath_jon_000082f4

# .rodata:0x283 | 0x12D3 | size: 0x1
.obj gap_03_000012D3_rodata, global
.hidden gap_03_000012D3_rodata
	.byte 0x00
.endobj gap_03_000012D3_rodata

# .rodata:0x284 | 0x12D4 | size: 0x9
.obj str_GNB_A2_1_jon_00008304, local
	.string "GNB_A2_1"
.endobj str_GNB_A2_1_jon_00008304

# .rodata:0x28D | 0x12DD | size: 0x3
.obj gap_03_000012DD_rodata, global
.hidden gap_03_000012DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012DD_rodata

# .rodata:0x290 | 0x12E0 | size: 0x9
.obj str_GNB_A2_3_jon_00008310, local
	.string "GNB_A2_3"
.endobj str_GNB_A2_3_jon_00008310

# .rodata:0x299 | 0x12E9 | size: 0x3
.obj gap_03_000012E9_rodata, global
.hidden gap_03_000012E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012E9_rodata

# .rodata:0x29C | 0x12EC | size: 0xC
.obj str_tik_boss_14_jon_0000831c, local
	.string "tik_boss_14"
.endobj str_tik_boss_14_jon_0000831c

# .rodata:0x2A8 | 0x12F8 | size: 0x1
.obj zero_jon_00008328, local
	.byte 0x00
.endobj zero_jon_00008328

# .rodata:0x2A9 | 0x12F9 | size: 0x3
.obj gap_03_000012F9_rodata, global
.hidden gap_03_000012F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012F9_rodata

# .rodata:0x2AC | 0x12FC | size: 0x9
.obj str_recovery_jon_0000832c, local
	.string "recovery"
.endobj str_recovery_jon_0000832c

# .rodata:0x2B5 | 0x1305 | size: 0x3
.obj gap_03_00001305_rodata, global
.hidden gap_03_00001305_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001305_rodata

# .rodata:0x2B8 | 0x1308 | size: 0x1A
.obj str_SFX_BOSS_GNB_BREATH__jon_00008338, local
	.string "SFX_BOSS_GNB_BREATH_COLD1"
.endobj str_SFX_BOSS_GNB_BREATH__jon_00008338

# .rodata:0x2D2 | 0x1322 | size: 0x2
.obj gap_03_00001322_rodata, global
.hidden gap_03_00001322_rodata
	.2byte 0x0000
.endobj gap_03_00001322_rodata

# .rodata:0x2D4 | 0x1324 | size: 0x1C
.obj str_SFX_BOSS_GNB_BREATH__jon_00008354, local
	.string "SFX_BOSS_GNB_BREATH_CHANGE1"
.endobj str_SFX_BOSS_GNB_BREATH__jon_00008354

# .rodata:0x2F0 | 0x1340 | size: 0x4
.obj float_60_jon_00008370, local
	.float 60
.endobj float_60_jon_00008370

# .rodata:0x2F4 | 0x1344 | size: 0x4
.obj zero_jon_00008374, local
	.float 0
.endobj zero_jon_00008374

# 0x0000FB80..0x000127C0 | size: 0x2C40
.data
.balign 8

# .data:0x0 | 0xFB80 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xFB88 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xFB8C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xFB90 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xFB94 | size: 0x4
.obj gap_04_0000FB94_data, global
.hidden gap_04_0000FB94_data
	.4byte 0x00000000
.endobj gap_04_0000FB94_data

# .data:0x18 | 0xFB98 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xFBA0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xFBA4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xFBA8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xFBB0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xFBB4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xFBB8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xFBBC | size: 0x4
.obj gap_04_0000FBBC_data, global
.hidden gap_04_0000FBBC_data
	.4byte 0x00000000
.endobj gap_04_0000FBBC_data

# .data:0x40 | 0xFBC0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xFBC8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xFBCC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xFBD0 | size: 0xC4
.obj unit_boss_zonbaba_14_data_FBD0, global
	.4byte 0x000000AB
	.4byte str_btl_un_zonbaba_jon_00008080
	.4byte 0x00C80000
	.4byte 0x01010063
	.4byte 0x00640032
	.4byte 0x000500E6
	.4byte 0x00AAFF2E
	.4byte 0x002D0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF060000
	.4byte 0x438C0000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x42E60000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x42E60000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x437A0000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x43BE0000
	.4byte 0x42DC0000
	.4byte 0x42480000
	.4byte 0xC3910000
	.4byte 0x42AA0000
	.4byte 0x00000000
	.4byte 0x43660000
	.4byte 0x432A0000
	.4byte 0x0000FF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_GNB_DAMAGED_jon_00008090
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_000080a8
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_000080c0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_000080d4
	.4byte 0x00200000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_zonbaba_14_data_FBD0

# .data:0x114 | 0xFC94 | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x00
.endobj defence

# .data:0x119 | 0xFC99 | size: 0x3
.obj gap_04_0000FC99_data, global
.hidden gap_04_0000FC99_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000FC99_data

# .data:0x11C | 0xFC9C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xFCA1 | size: 0x3
.obj gap_04_0000FCA1_data, global
.hidden gap_04_0000FCA1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000FCA1_data

# .data:0x124 | 0xFCA4 | size: 0x16
.obj regist, local
	.4byte 0x00000064
	.4byte 0x00646400
	.4byte 0x00006400
	.4byte 0x64000000
	.4byte 0x00640000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0xFCBA | size: 0x2
.obj gap_04_0000FCBA_data, global
.hidden gap_04_0000FCBA_data
	.2byte 0x0000
.endobj gap_04_0000FCBA_data

# .data:0x13C | 0xFCBC | size: 0x48
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_GNB_N_1_jon_000080f0
	.4byte 0x00000005
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x00000003
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x00000002
	.4byte str_GNB_Z_1_jon_00008100
	.4byte 0x0000001C
	.4byte str_GNB_S_3_jon_00008108
	.4byte 0x00000041
	.4byte str_GNB_T_3_jon_00008110
	.4byte 0x0000001F
	.4byte str_GNB_S_3_jon_00008108
	.4byte 0x00000027
	.4byte str_GNB_D_1_jon_00008118
	.4byte 0x00000045
	.4byte str_GNB_S_3_jon_00008108
.endobj pose_table

# .data:0x184 | 0xFD04 | size: 0x48
.obj pose_table_weak, local
	.4byte 0x00000001
	.4byte str_GNB_N_1_jon_000080f0
	.4byte 0x00000005
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x00000003
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x00000002
	.4byte str_GNB_N_1_jon_000080f0
	.4byte 0x0000001C
	.4byte str_GNB_S_4_jon_00008120
	.4byte 0x00000041
	.4byte str_GNB_T_4_jon_00008128
	.4byte 0x0000001F
	.4byte str_GNB_S_4_jon_00008120
	.4byte 0x00000027
	.4byte str_GNB_V_1_jon_00008130
	.4byte 0x00000045
	.4byte str_GNB_S_4_jon_00008120
.endobj pose_table_weak

# .data:0x1CC | 0xFD4C | size: 0x18
.obj data_table, local
	.4byte 0x00000009
	.4byte zonbaba_damage_sub_event
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1E4 | 0xFD64 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_zonbaba_jon_00008080
	.4byte str_c_gonbaba_z_jon_00008138
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x43660000
	.4byte 0x42100000
	.4byte 0x42700000
	.4byte 0x43660000
	.4byte 0x42100000
	.4byte 0x42700000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_zonbaba_jon_00008080
	.4byte str_c_gonbaba_z_jon_00008138
	.4byte 0x42C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x437A0000
	.4byte 0x42DC0000
	.4byte 0x41C80000
	.4byte 0x437A0000
	.4byte 0x42DC0000
	.4byte 0x41C80000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x01600009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x27C | 0xFDFC | size: 0xC0
.obj weapon_zonbaba_fumituke_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x000B0302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0A000000
.endobj weapon_zonbaba_fumituke_attack

# .data:0x33C | 0xFEBC | size: 0xC0
.obj weapon_zonbaba_kamituki_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020007
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_zonbaba_kamituki_attack

# .data:0x3FC | 0xFF7C | size: 0xC0
.obj weapon_zonbaba_cold_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x001E0300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_zonbaba_cold_attack

# .data:0x4BC | 0x1003C | size: 0xC0
.obj weapon_zonbaba_confuze_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x001E0300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_zonbaba_confuze_attack

# .data:0x57C | 0x100FC | size: 0xC0
.obj weapon_zonbaba_sleep_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x1E050000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_zonbaba_sleep_attack

# .data:0x63C | 0x101BC | size: 0xC0
.obj weapon_zonbaba_minimini_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x03FE0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_zonbaba_minimini_attack

# .data:0x6FC | 0x1027C | size: 0xC0
.obj weapon_zonbaba_recover, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_zonbaba_recover

# .data:0x7BC | 0x1033C | size: 0x594
.obj battle_entry_event, local
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replayanim
	.4byte 0x00000000
	.4byte str_dontyo_jon_00008144
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000438
	.4byte 0x00000000
	.4byte 0x0000005D
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C86
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xFE363C83
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C88
	.4byte 0xFE363C83
	.4byte 0x0002001A
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C86
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00020037
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFC
	.4byte 0xF24A9280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0000002B
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFD
	.4byte 0xF24A9280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_jon_0000814c
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_F_3_jon_00008154
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_O_jon_0000815c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFD
	.4byte 0xF24A7BB3
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_SURP_jon_00008164
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFC
	.4byte 0xF24A7BB3
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_GNB_APPEAR1_jon_00008184
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_jon_0000814c
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF17
	.4byte 0x0000002D
	.4byte 0x000001C4
	.4byte 0x00000038
	.4byte 0x0000007D
	.4byte 0x00000025
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_boss_12_jon_0000819c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_tik_boss_13_jon_000081a8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_entry_event

# .data:0xD50 | 0x108D0 | size: 0xE8
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkBodyId
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7FB3
	.4byte 0xF24A7FB3
	.4byte 0xF24A7C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte battle_entry_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xE38 | 0x109B8 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xE60 | 0x109E0 | size: 0xB4
.obj zonbaba_damage_sub_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte str_GNB_D_2_jon_000081b4
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte str_GNB_D_1_jon_00008118
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamage
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_BTL_ATTACK_MISS2_jon_000081bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj zonbaba_damage_sub_event

# .data:0xF14 | 0x10A94 | size: 0x420
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_DOWN1_jon_000081d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000218
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000025
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x000001FF
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000005D
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_X_1_jon_000080f8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_boss_16_jon_000081e8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFFDA
	.4byte 0x00000021
	.4byte 0x000003ED
	.4byte 0xFFFFFFDA
	.4byte 0x0000005C
	.4byte 0x0000000D
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_DOWN2_jon_000081f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_D_3_jon_00008208
	.4byte 0x00010009
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_1_jon_00008210
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_1_jon_00008210
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000078
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0x00020036
	.4byte 0xFE363C84
	.4byte 0x00000003
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_GNB_DOWN3_jon_00008218
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_2_jon_0000822c
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_3_jon_00008234
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x1334 | 0x10EB4 | size: 0x178
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_boss_15_jon_0000823c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x14AC | 0x1102C | size: 0x590
.obj fumituke_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_W_2_jon_00008248
	.4byte 0x00010009
	.4byte 0x00000039
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_jon_00008250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x0000002E
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_jon_00008250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A_3_jon_00008264
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_ARM_UP1_jon_0000826c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFEC0
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_ARM_DOW_jon_00008284
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFE98
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x00010009
	.4byte 0x0000002D
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_jon_00008250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFE70
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFB
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_W_3_jon_0000829c
	.4byte 0x00010009
	.4byte 0x00000033
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_jon_00008250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF4C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x0000002E
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_jon_00008250
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fumituke_attack_event

# .data:0x1A3C | 0x115BC | size: 0x234
.obj kamituki_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_BITE1_jon_000082a4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF24
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_BITE2_jon_000082b8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFEFC
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A_2_jon_000082cc
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamituki_attack_event

# .data:0x1C70 | 0x117F0 | size: 0x4EC
.obj breath1_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A_1_jon_000082d4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000078
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x00000168
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x00000168
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_NECK_UP_jon_000082dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000069
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000002D
	.4byte 0x00020036
	.4byte 0xFE363C88
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C89
	.4byte 0x00010024
	.4byte weapon_zonbaba_cold_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte weapon_zonbaba_confuze_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000004
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte weapon_zonbaba_sleep_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte weapon_zonbaba_minimini_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000006
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020036
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x00020038
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000069
	.4byte 0x00010009
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000054
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj breath1_attack_event

# .data:0x215C | 0x11CDC | size: 0x500
.obj breath2_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A2_1_jon_00008304
	.4byte 0x0001000A
	.4byte 0x00000341
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_NECK_UP_jon_000082dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A2_3_jon_00008310
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000078
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x00000168
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x00000168
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000002D
	.4byte 0x00020036
	.4byte 0xFE363C88
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C89
	.4byte 0x00010024
	.4byte weapon_zonbaba_cold_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte weapon_zonbaba_confuze_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000004
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte weapon_zonbaba_sleep_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte weapon_zonbaba_minimini_attack
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_jon_000082f4
	.4byte 0x00000006
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020036
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x00020038
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000054
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj breath2_attack_event

# .data:0x265C | 0x121DC | size: 0x160
.obj recover_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_boss_14_jon_0000831c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE5
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_00008328
	.4byte str_recovery_jon_0000832c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000002
	.4byte 0x00000001
.endobj recover_event

# .data:0x27BC | 0x1233C | size: 0x468
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_fumituke_attack
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_kamituki_attack
	.4byte 0x0001005E
	.4byte kamituki_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008338
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_cold_attack
	.4byte 0x0001005E
	.4byte breath2_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_confuze_attack
	.4byte 0x0001005E
	.4byte breath1_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_sleep_attack
	.4byte 0x0001005E
	.4byte breath2_attack_event
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_minimini_attack
	.4byte 0x0001005E
	.4byte breath1_attack_event
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x000A005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_fumituke_attack
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_kamituki_attack
	.4byte 0x0001005E
	.4byte kamituki_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008338
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_cold_attack
	.4byte 0x0001005E
	.4byte breath2_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_confuze_attack
	.4byte 0x0001005E
	.4byte breath1_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_sleep_attack
	.4byte 0x0001005E
	.4byte breath2_attack_event
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_minimini_attack
	.4byte 0x0001005E
	.4byte breath1_attack_event
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_recover
	.4byte 0x0001005E
	.4byte recover_event
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x000A005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_fumituke_attack
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_kamituki_attack
	.4byte 0x0001005E
	.4byte kamituki_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008338
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_cold_attack
	.4byte 0x0001005E
	.4byte breath2_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_confuze_attack
	.4byte 0x0001005E
	.4byte breath1_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_sleep_attack
	.4byte 0x0001005E
	.4byte breath2_attack_event
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte str_SFX_BOSS_GNB_BREATH__jon_00008354
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_minimini_attack
	.4byte 0x0001005E
	.4byte breath1_attack_event
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_zonbaba_recover
	.4byte 0x0001005E
	.4byte recover_event
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x2C24 | 0x127A4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2C3C | 0x127BC | size: 0x4
.obj gap_04_000127BC_data, global
.hidden gap_04_000127BC_data
	.4byte 0x00000000
.endobj gap_04_000127BC_data
