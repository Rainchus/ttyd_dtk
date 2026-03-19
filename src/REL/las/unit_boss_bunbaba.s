.include "macros.inc"
.file "unit_boss_bunbaba.o"

# 0x0000F30C..0x0000F3BC | size: 0xB0
.text
.balign 4

# .text:0x0 | 0xF30C | size: 0xB0
.fn _leg_smoke_effect, local
/* 0000F30C 0000F3D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000F310 0000F3DC  7C 08 02 A6 */	mflr r0
/* 0000F314 0000F3E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000F318 0000F3E4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 0000F31C 0000F3E8  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 0000F320 0000F3EC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 0000F324 0000F3F0  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 0000F328 0000F3F4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000F32C 0000F3F8  7C 7E 1B 78 */	mr r30, r3
/* 0000F330 0000F3FC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F334 0000F400  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F338 0000F404  4B FF 0E 05 */	bl evtGetFloat
/* 0000F33C 0000F408  FF E0 08 90 */	fmr f31, f1
/* 0000F340 0000F40C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000F344 0000F410  7F C3 F3 78 */	mr r3, r30
/* 0000F348 0000F414  4B FF 0D F5 */	bl evtGetFloat
/* 0000F34C 0000F418  FF C0 08 90 */	fmr f30, f1
/* 0000F350 0000F41C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000F354 0000F420  7F C3 F3 78 */	mr r3, r30
/* 0000F358 0000F424  4B FF 0D E5 */	bl evtGetFloat
/* 0000F35C 0000F428  FC 00 08 90 */	fmr f0, f1
/* 0000F360 0000F42C  3C 80 00 00 */	lis r4, float_60_las_0001973c@ha
/* 0000F364 0000F430  38 A4 00 00 */	addi r5, r4, float_60_las_0001973c@l
/* 0000F368 0000F434  3C 60 00 00 */	lis r3, zero_las_00019740@ha
/* 0000F36C 0000F438  38 83 00 00 */	addi r4, r3, zero_las_00019740@l
/* 0000F370 0000F43C  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 0000F374 0000F440  C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 0000F378 0000F444  FC 20 F8 90 */	fmr f1, f31
/* 0000F37C 0000F448  FC 40 F0 90 */	fmr f2, f30
/* 0000F380 0000F44C  38 60 00 01 */	li r3, 0x1
/* 0000F384 0000F450  FC 60 00 90 */	fmr f3, f0
/* 0000F388 0000F454  38 80 00 12 */	li r4, 0x12
/* 0000F38C 0000F458  38 A0 00 5A */	li r5, 0x5a
/* 0000F390 0000F45C  4B FF 0D AD */	bl effKemuri9N64Entry
/* 0000F394 0000F460  38 60 00 02 */	li r3, 0x2
/* 0000F398 0000F464  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 0000F39C 0000F468  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 0000F3A0 0000F46C  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 0000F3A4 0000F470  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 0000F3A8 0000F474  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000F3AC 0000F478  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000F3B0 0000F47C  7C 08 03 A6 */	mtlr r0
/* 0000F3B4 0000F480  38 21 00 30 */	addi r1, r1, 0x30
/* 0000F3B8 0000F484  4E 80 00 20 */	blr
.endfn _leg_smoke_effect

# 0x000079A0..0x00007CE0 | size: 0x340
.rodata
.balign 8

# .rodata:0x0 | 0x79A0 | size: 0xF
.obj str_btl_un_bunbaba_las_00019408, local
	.string "btl_un_bunbaba"
.endobj str_btl_un_bunbaba_las_00019408

# .rodata:0xF | 0x79AF | size: 0x1
.obj gap_03_000079AF_rodata, global
.hidden gap_03_000079AF_rodata
	.byte 0x00
.endobj gap_03_000079AF_rodata

# .rodata:0x10 | 0x79B0 | size: 0x16
.obj str_SFX_BOSS_GNB_DAMAGED_las_00019418, local
	.string "SFX_BOSS_GNB_DAMAGED1"
.endobj str_SFX_BOSS_GNB_DAMAGED_las_00019418

# .rodata:0x26 | 0x79C6 | size: 0x2
.obj gap_03_000079C6_rodata, global
.hidden gap_03_000079C6_rodata
	.2byte 0x0000
.endobj gap_03_000079C6_rodata

# .rodata:0x28 | 0x79C8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_00019430, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_00019430

# .rodata:0x3D | 0x79DD | size: 0x3
.obj gap_03_000079DD_rodata, global
.hidden gap_03_000079DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000079DD_rodata

# .rodata:0x40 | 0x79E0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_00019448, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_00019448

# .rodata:0x54 | 0x79F4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_0001945c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_0001945c

# .rodata:0x6D | 0x7A0D | size: 0x3
.obj gap_03_00007A0D_rodata, global
.hidden gap_03_00007A0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A0D_rodata

# .rodata:0x70 | 0x7A10 | size: 0x8
.obj str_GNB_N_1_las_00019478, local
	.string "GNB_N_1"
.endobj str_GNB_N_1_las_00019478

# .rodata:0x78 | 0x7A18 | size: 0x8
.obj str_GNB_X_1_las_00019480, local
	.string "GNB_X_1"
.endobj str_GNB_X_1_las_00019480

# .rodata:0x80 | 0x7A20 | size: 0x9
.obj str_GNB_D2_1_las_00019488, local
	.string "GNB_D2_1"
.endobj str_GNB_D2_1_las_00019488

# .rodata:0x89 | 0x7A29 | size: 0x3
.obj gap_03_00007A29_rodata, global
.hidden gap_03_00007A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A29_rodata

# .rodata:0x8C | 0x7A2C | size: 0x8
.obj str_GNB_S_3_las_00019494, local
	.string "GNB_S_3"
.endobj str_GNB_S_3_las_00019494

# .rodata:0x94 | 0x7A34 | size: 0x8
.obj str_GNB_T_3_las_0001949c, local
	.string "GNB_T_3"
.endobj str_GNB_T_3_las_0001949c

# .rodata:0x9C | 0x7A3C | size: 0x8
.obj dat_las_000194a4, local
	.string "GNB_D_1"
.endobj dat_las_000194a4

# .rodata:0xA4 | 0x7A44 | size: 0xC
.obj str_c_gonbaba_b_las_000194ac, local
	.string "c_gonbaba_b"
.endobj str_c_gonbaba_b_las_000194ac

# .rodata:0xB0 | 0x7A50 | size: 0x7
.obj str_dontyo_las_000194b8, local
	.string "dontyo"
.endobj str_dontyo_las_000194b8

# .rodata:0xB7 | 0x7A57 | size: 0x1
.obj gap_03_00007A57_rodata, global
.hidden gap_03_00007A57_rodata
	.byte 0x00
.endobj gap_03_00007A57_rodata

# .rodata:0xB8 | 0x7A58 | size: 0x6
.obj str_M_I_Y_las_000194c0, local
	.string "M_I_Y"
.endobj str_M_I_Y_las_000194c0

# .rodata:0xBE | 0x7A5E | size: 0x2
.obj gap_03_00007A5E_rodata, global
.hidden gap_03_00007A5E_rodata
	.2byte 0x0000
.endobj gap_03_00007A5E_rodata

# .rodata:0xC0 | 0x7A60 | size: 0x8
.obj dat_las_000194c8, local
	.string "GNB_F_3"
.endobj dat_las_000194c8

# .rodata:0xC8 | 0x7A68 | size: 0x6
.obj str_M_I_O_las_000194d0, local
	.string "M_I_O"
.endobj str_M_I_O_las_000194d0

# .rodata:0xCE | 0x7A6E | size: 0x2
.obj gap_03_00007A6E_rodata, global
.hidden gap_03_00007A6E_rodata
	.2byte 0x0000
.endobj gap_03_00007A6E_rodata

# .rodata:0xD0 | 0x7A70 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_las_000194d8, local
	.string "SFX_VOICE_MARIO_SURPRISED2_2"
.endobj str_SFX_VOICE_MARIO_SURP_las_000194d8

# .rodata:0xED | 0x7A8D | size: 0x3
.obj gap_03_00007A8D_rodata, global
.hidden gap_03_00007A8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A8D_rodata

# .rodata:0xF0 | 0x7A90 | size: 0x15
.obj str_SFX_BOSS_GNB_APPEAR1_las_000194f8, local
	.string "SFX_BOSS_GNB_APPEAR1"
.endobj str_SFX_BOSS_GNB_APPEAR1_las_000194f8

# .rodata:0x105 | 0x7AA5 | size: 0x3
.obj gap_03_00007AA5_rodata, global
.hidden gap_03_00007AA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007AA5_rodata

# .rodata:0x108 | 0x7AA8 | size: 0xF
.obj str_stg8_las_49_01_las_00019510, local
	.string "stg8_las_49_01"
.endobj str_stg8_las_49_01_las_00019510

# .rodata:0x117 | 0x7AB7 | size: 0x1
.obj gap_03_00007AB7_rodata, global
.hidden gap_03_00007AB7_rodata
	.byte 0x00
.endobj gap_03_00007AB7_rodata

# .rodata:0x118 | 0x7AB8 | size: 0x8
.obj dat_las_00019520, local
	.string "GNB_D_2"
.endobj dat_las_00019520

# .rodata:0x120 | 0x7AC0 | size: 0x15
.obj str_SFX_BTL_ATTACK_MISS2_las_00019528, local
	.string "SFX_BTL_ATTACK_MISS2"
.endobj str_SFX_BTL_ATTACK_MISS2_las_00019528

# .rodata:0x135 | 0x7AD5 | size: 0x3
.obj gap_03_00007AD5_rodata, global
.hidden gap_03_00007AD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007AD5_rodata

# .rodata:0x138 | 0x7AD8 | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN1_las_00019540, local
	.string "SFX_BOSS_GNB_DOWN1"
.endobj str_SFX_BOSS_GNB_DOWN1_las_00019540

# .rodata:0x14B | 0x7AEB | size: 0x1
.obj gap_03_00007AEB_rodata, global
.hidden gap_03_00007AEB_rodata
	.byte 0x00
.endobj gap_03_00007AEB_rodata

# .rodata:0x14C | 0x7AEC | size: 0xF
.obj str_stg8_las_49_08_las_00019554, local
	.string "stg8_las_49_08"
.endobj str_stg8_las_49_08_las_00019554

# .rodata:0x15B | 0x7AFB | size: 0x1
.obj gap_03_00007AFB_rodata, global
.hidden gap_03_00007AFB_rodata
	.byte 0x00
.endobj gap_03_00007AFB_rodata

# .rodata:0x15C | 0x7AFC | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN2_las_00019564, local
	.string "SFX_BOSS_GNB_DOWN2"
.endobj str_SFX_BOSS_GNB_DOWN2_las_00019564

# .rodata:0x16F | 0x7B0F | size: 0x1
.obj gap_03_00007B0F_rodata, global
.hidden gap_03_00007B0F_rodata
	.byte 0x00
.endobj gap_03_00007B0F_rodata

# .rodata:0x170 | 0x7B10 | size: 0x8
.obj dat_las_00019578, local
	.string "GNB_D_3"
.endobj dat_las_00019578

# .rodata:0x178 | 0x7B18 | size: 0x8
.obj dat_las_00019580, local
	.string "GNB_H_1"
.endobj dat_las_00019580

# .rodata:0x180 | 0x7B20 | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN3_las_00019588, local
	.string "SFX_BOSS_GNB_DOWN3"
.endobj str_SFX_BOSS_GNB_DOWN3_las_00019588

# .rodata:0x193 | 0x7B33 | size: 0x1
.obj gap_03_00007B33_rodata, global
.hidden gap_03_00007B33_rodata
	.byte 0x00
.endobj gap_03_00007B33_rodata

# .rodata:0x194 | 0x7B34 | size: 0x8
.obj dat_las_0001959c, local
	.string "GNB_H_2"
.endobj dat_las_0001959c

# .rodata:0x19C | 0x7B3C | size: 0x8
.obj dat_las_000195a4, local
	.string "GNB_H_3"
.endobj dat_las_000195a4

# .rodata:0x1A4 | 0x7B44 | size: 0xF
.obj str_stg8_las_49_03_las_000195ac, local
	.string "stg8_las_49_03"
.endobj str_stg8_las_49_03_las_000195ac

# .rodata:0x1B3 | 0x7B53 | size: 0x1
.obj gap_03_00007B53_rodata, global
.hidden gap_03_00007B53_rodata
	.byte 0x00
.endobj gap_03_00007B53_rodata

# .rodata:0x1B4 | 0x7B54 | size: 0xF
.obj str_stg8_las_49_04_las_000195bc, local
	.string "stg8_las_49_04"
.endobj str_stg8_las_49_04_las_000195bc

# .rodata:0x1C3 | 0x7B63 | size: 0x1
.obj gap_03_00007B63_rodata, global
.hidden gap_03_00007B63_rodata
	.byte 0x00
.endobj gap_03_00007B63_rodata

# .rodata:0x1C4 | 0x7B64 | size: 0xF
.obj str_stg8_las_49_05_las_000195cc, local
	.string "stg8_las_49_05"
.endobj str_stg8_las_49_05_las_000195cc

# .rodata:0x1D3 | 0x7B73 | size: 0x1
.obj gap_03_00007B73_rodata, global
.hidden gap_03_00007B73_rodata
	.byte 0x00
.endobj gap_03_00007B73_rodata

# .rodata:0x1D4 | 0x7B74 | size: 0xF
.obj str_stg8_las_49_07_las_000195dc, local
	.string "stg8_las_49_07"
.endobj str_stg8_las_49_07_las_000195dc

# .rodata:0x1E3 | 0x7B83 | size: 0x1
.obj gap_03_00007B83_rodata, global
.hidden gap_03_00007B83_rodata
	.byte 0x00
.endobj gap_03_00007B83_rodata

# .rodata:0x1E4 | 0x7B84 | size: 0x8
.obj str_GNB_W_2_las_000195ec, local
	.string "GNB_W_2"
.endobj str_GNB_W_2_las_000195ec

# .rodata:0x1EC | 0x7B8C | size: 0x13
.obj str_SFX_BOSS_GNB_MOVE1_las_000195f4, local
	.string "SFX_BOSS_GNB_MOVE1"
.endobj str_SFX_BOSS_GNB_MOVE1_las_000195f4

# .rodata:0x1FF | 0x7B9F | size: 0x1
.obj gap_03_00007B9F_rodata, global
.hidden gap_03_00007B9F_rodata
	.byte 0x00
.endobj gap_03_00007B9F_rodata

# .rodata:0x200 | 0x7BA0 | size: 0x8
.obj dat_las_00019608, local
	.string "GNB_A_3"
.endobj dat_las_00019608

# .rodata:0x208 | 0x7BA8 | size: 0x15
.obj str_SFX_BOSS_GNB_ARM_UP1_las_00019610, local
	.string "SFX_BOSS_GNB_ARM_UP1"
.endobj str_SFX_BOSS_GNB_ARM_UP1_las_00019610

# .rodata:0x21D | 0x7BBD | size: 0x3
.obj gap_03_00007BBD_rodata, global
.hidden gap_03_00007BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007BBD_rodata

# .rodata:0x220 | 0x7BC0 | size: 0x17
.obj str_SFX_BOSS_GNB_ARM_DOW_las_00019628, local
	.string "SFX_BOSS_GNB_ARM_DOWN1"
.endobj str_SFX_BOSS_GNB_ARM_DOW_las_00019628

# .rodata:0x237 | 0x7BD7 | size: 0x1
.obj gap_03_00007BD7_rodata, global
.hidden gap_03_00007BD7_rodata
	.byte 0x00
.endobj gap_03_00007BD7_rodata

# .rodata:0x238 | 0x7BD8 | size: 0x8
.obj str_GNB_W_3_las_00019640, local
	.string "GNB_W_3"
.endobj str_GNB_W_3_las_00019640

# .rodata:0x240 | 0x7BE0 | size: 0x13
.obj str_SFX_BOSS_GNB_BITE1_las_00019648, local
	.string "SFX_BOSS_GNB_BITE1"
.endobj str_SFX_BOSS_GNB_BITE1_las_00019648

# .rodata:0x253 | 0x7BF3 | size: 0x1
.obj gap_03_00007BF3_rodata, global
.hidden gap_03_00007BF3_rodata
	.byte 0x00
.endobj gap_03_00007BF3_rodata

# .rodata:0x254 | 0x7BF4 | size: 0x13
.obj str_SFX_BOSS_GNB_BITE2_las_0001965c, local
	.string "SFX_BOSS_GNB_BITE2"
.endobj str_SFX_BOSS_GNB_BITE2_las_0001965c

# .rodata:0x267 | 0x7C07 | size: 0x1
.obj gap_03_00007C07_rodata, global
.hidden gap_03_00007C07_rodata
	.byte 0x00
.endobj gap_03_00007C07_rodata

# .rodata:0x268 | 0x7C08 | size: 0x8
.obj dat_las_00019670, local
	.string "GNB_A_2"
.endobj dat_las_00019670

# .rodata:0x270 | 0x7C10 | size: 0x8
.obj dat_las_00019678, local
	.string "GNB_A_5"
.endobj dat_las_00019678

# .rodata:0x278 | 0x7C18 | size: 0x16
.obj str_SFX_BOSS_GNB_NECK_UP_las_00019680, local
	.string "SFX_BOSS_GNB_NECK_UP1"
.endobj str_SFX_BOSS_GNB_NECK_UP_las_00019680

# .rodata:0x28E | 0x7C2E | size: 0x2
.obj gap_03_00007C2E_rodata, global
.hidden gap_03_00007C2E_rodata
	.2byte 0x0000
.endobj gap_03_00007C2E_rodata

# .rodata:0x290 | 0x7C30 | size: 0x8
.obj dat_las_00019698, local
	.string "GNB_A_6"
.endobj dat_las_00019698

# .rodata:0x298 | 0x7C38 | size: 0x9
.obj str_GNB_A2_1_las_000196a0, local
	.string "GNB_A2_1"
.endobj str_GNB_A2_1_las_000196a0

# .rodata:0x2A1 | 0x7C41 | size: 0x3
.obj gap_03_00007C41_rodata, global
.hidden gap_03_00007C41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007C41_rodata

# .rodata:0x2A4 | 0x7C44 | size: 0x9
.obj str_GNB_A2_3_las_000196ac, local
	.string "GNB_A2_3"
.endobj str_GNB_A2_3_las_000196ac

# .rodata:0x2AD | 0x7C4D | size: 0x3
.obj gap_03_00007C4D_rodata, global
.hidden gap_03_00007C4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007C4D_rodata

# .rodata:0x2B0 | 0x7C50 | size: 0x1C
.obj str_SFX_BOSS_GNB_BREATH__las_000196b8, local
	.string "SFX_BOSS_GNB_BREATH_POISON1"
.endobj str_SFX_BOSS_GNB_BREATH__las_000196b8

# .rodata:0x2CC | 0x7C6C | size: 0xF
.obj str_gonbaba_breath_las_000196d4, local
	.string "gonbaba_breath"
.endobj str_gonbaba_breath_las_000196d4

# .rodata:0x2DB | 0x7C7B | size: 0x1
.obj gap_03_00007C7B_rodata, global
.hidden gap_03_00007C7B_rodata
	.byte 0x00
.endobj gap_03_00007C7B_rodata

# .rodata:0x2DC | 0x7C7C | size: 0x8
.obj dat_las_000196e4, local
	.string "GNB_A_1"
.endobj dat_las_000196e4

# .rodata:0x2E4 | 0x7C84 | size: 0x19
.obj str_SFX_BOSS_GNB_MEGABRE_las_000196ec, local
	.string "SFX_BOSS_GNB_MEGABREATH1"
.endobj str_SFX_BOSS_GNB_MEGABRE_las_000196ec

# .rodata:0x2FD | 0x7C9D | size: 0x3
.obj gap_03_00007C9D_rodata, global
.hidden gap_03_00007C9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007C9D_rodata

# .rodata:0x300 | 0x7CA0 | size: 0x15
.obj str_SFX_BOSS_GNB_CHARGE1_las_00019708, local
	.string "SFX_BOSS_GNB_CHARGE1"
.endobj str_SFX_BOSS_GNB_CHARGE1_las_00019708

# .rodata:0x315 | 0x7CB5 | size: 0x3
.obj gap_03_00007CB5_rodata, global
.hidden gap_03_00007CB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007CB5_rodata

# .rodata:0x318 | 0x7CB8 | size: 0x1
.obj zero_las_00019720, local
	.byte 0x00
.endobj zero_las_00019720

# .rodata:0x319 | 0x7CB9 | size: 0x3
.obj gap_03_00007CB9_rodata, global
.hidden gap_03_00007CB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007CB9_rodata

# .rodata:0x31C | 0x7CBC | size: 0x7
.obj str_charge_las_00019724, local
	.string "charge"
.endobj str_charge_las_00019724

# .rodata:0x323 | 0x7CC3 | size: 0x1
.obj gap_03_00007CC3_rodata, global
.hidden gap_03_00007CC3_rodata
	.byte 0x00
.endobj gap_03_00007CC3_rodata

# .rodata:0x324 | 0x7CC4 | size: 0xF
.obj str_stg8_las_49_06_las_0001972c, local
	.string "stg8_las_49_06"
.endobj str_stg8_las_49_06_las_0001972c
	.byte 0x00

# .rodata:0x334 | 0x7CD4 | size: 0x4
.obj float_60_las_0001973c, local
	.float 60
.endobj float_60_las_0001973c

# .rodata:0x338 | 0x7CD8 | size: 0x4
.obj zero_las_00019740, local
	.float 0
.endobj zero_las_00019740

# .rodata:0x33C | 0x7CDC | size: 0x4
.obj gap_03_00007CDC_rodata, global
.hidden gap_03_00007CDC_rodata
	.4byte 0x00000000
.endobj gap_03_00007CDC_rodata

# 0x00047A30..0x0004A618 | size: 0x2BE8
.data
.balign 8

# .data:0x0 | 0x47A30 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x47A38 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x47A3C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x47A40 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x47A44 | size: 0x4
.obj gap_04_00047A44_data, global
.hidden gap_04_00047A44_data
	.4byte 0x00000000
.endobj gap_04_00047A44_data

# .data:0x18 | 0x47A48 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x47A50 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x47A54 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x47A58 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x47A60 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x47A64 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x47A68 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x47A6C | size: 0x4
.obj gap_04_00047A6C_data, global
.hidden gap_04_00047A6C_data
	.4byte 0x00000000
.endobj gap_04_00047A6C_data

# .data:0x40 | 0x47A70 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x47A78 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x47A7C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x47A80 | size: 0xC4
.obj unit_boss_bunbaba_16_data_47A80, global
	.4byte 0x00000084
	.4byte str_btl_un_bunbaba_las_00019408
	.4byte 0x00500000
	.4byte 0x01014C00
	.4byte 0x00640032
	.4byte 0x000600E6
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
	.4byte str_SFX_BOSS_GNB_DAMAGED_las_00019418
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_00019430
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_00019448
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_0001945c
	.4byte 0x00200000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_bunbaba_16_data_47A80

# .data:0x114 | 0x47B44 | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x47B49 | size: 0x3
.obj gap_04_00047B49_data, global
.hidden gap_04_00047B49_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00047B49_data

# .data:0x11C | 0x47B4C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x47B51 | size: 0x3
.obj gap_04_00047B51_data, global
.hidden gap_04_00047B51_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00047B51_data

# .data:0x124 | 0x47B54 | size: 0x16
.obj regist, local
	.4byte 0x1E1E1E64
	.4byte 0x1E646400
	.4byte 0x00006400
	.4byte 0x64461E00
	.4byte 0x00641E00
	.2byte 0x0001
.endobj regist

# .data:0x13A | 0x47B6A | size: 0x2
.obj gap_04_00047B6A_data, global
.hidden gap_04_00047B6A_data
	.2byte 0x0000
.endobj gap_04_00047B6A_data

# .data:0x13C | 0x47B6C | size: 0x48
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_GNB_N_1_las_00019478
	.4byte 0x00000005
	.4byte str_GNB_X_1_las_00019480
	.4byte 0x00000003
	.4byte str_GNB_X_1_las_00019480
	.4byte 0x00000002
	.4byte str_GNB_D2_1_las_00019488
	.4byte 0x0000001C
	.4byte str_GNB_S_3_las_00019494
	.4byte 0x00000041
	.4byte str_GNB_T_3_las_0001949c
	.4byte 0x0000001F
	.4byte str_GNB_S_3_las_00019494
	.4byte 0x00000027
	.4byte dat_las_000194a4
	.4byte 0x00000045
	.4byte str_GNB_S_3_las_00019494
.endobj pose_table

# .data:0x184 | 0x47BB4 | size: 0x18
.obj data_table, local
	.4byte 0x00000009
	.4byte bunbaba_damage_sub_event
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x19C | 0x47BCC | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_bunbaba_las_00019408
	.4byte str_c_gonbaba_b_las_000194ac
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
	.4byte str_btl_un_bunbaba_las_00019408
	.4byte str_c_gonbaba_b_las_000194ac
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

# .data:0x234 | 0x47C64 | size: 0xC0
.obj weapon_bunbaba_fumituke_attack, local
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
.endobj weapon_bunbaba_fumituke_attack

# .data:0x2F4 | 0x47D24 | size: 0xC0
.obj weapon_bunbaba_kamituki_attack, local
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
.endobj weapon_bunbaba_kamituki_attack

# .data:0x3B4 | 0x47DE4 | size: 0xC0
.obj weapon_bunbaba_poison_attack, local
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
	.4byte 0x0000320A
	.4byte 0x01000000
	.4byte 0x00000000
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
.endobj weapon_bunbaba_poison_attack

# .data:0x474 | 0x47EA4 | size: 0xC0
.obj weapon_bunbaba_eq_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20000008
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00001047
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
.endobj weapon_bunbaba_eq_attack

# .data:0x534 | 0x47F64 | size: 0xC0
.obj weapon_bunbaba_charge, local
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
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_bunbaba_charge

# .data:0x5F4 | 0x48024 | size: 0xC0
.obj weapon_bunbaba_mega_attack, local
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
.endobj weapon_bunbaba_mega_attack

# .data:0x6B4 | 0x480E4 | size: 0x5A0
.obj battle_entry_event, local
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replayanim
	.4byte 0x00000000
	.4byte str_dontyo_las_000194b8
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
	.4byte 0x0001000A
	.4byte 0x000003E8
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
	.4byte str_M_I_Y_las_000194c0
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte dat_las_000194c8
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
	.4byte 0x0001000A
	.4byte 0x000000A6
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_O_las_000194d0
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
	.4byte str_SFX_VOICE_MARIO_SURP_las_000194d8
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
	.4byte 0x0001000A
	.4byte 0x00000053
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
	.4byte str_SFX_BOSS_GNB_APPEAR1_las_000194f8
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_las_000194c0
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_T_3_las_0001949c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_S_3_las_00019494
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_49_01_las_00019510
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
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

# .data:0xC54 | 0x48684 | size: 0xD4
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

# .data:0xD28 | 0x48758 | size: 0x28
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

# .data:0xD50 | 0x48780 | size: 0xB4
.obj bunbaba_damage_sub_event, local
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
	.4byte dat_las_00019520
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte dat_las_000194a4
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
	.4byte str_SFX_BTL_ATTACK_MISS2_las_00019528
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunbaba_damage_sub_event

# .data:0xE04 | 0x48834 | size: 0x420
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_X_1_las_00019480
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_DOWN1_las_00019540
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
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_X_1_las_00019480
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_X_1_las_00019480
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_49_08_las_00019554
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
	.4byte str_SFX_BOSS_GNB_DOWN2_las_00019564
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
	.4byte dat_las_00019578
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte dat_las_00019580
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
	.4byte dat_las_00019580
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
	.4byte str_SFX_BOSS_GNB_DOWN3_las_00019588
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte dat_las_0001959c
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x000000A6
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte dat_las_000195a4
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
	.4byte 0x0001000A
	.4byte 0x000003E8
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

# .data:0x1224 | 0x48C54 | size: 0x280
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x0000003C
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
	.4byte str_stg8_las_49_03_las_000195ac
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000028
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
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_49_04_las_000195bc
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_49_05_las_000195cc
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010029
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000014
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
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_49_07_las_000195dc
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x14A4 | 0x48ED4 | size: 0x590
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
	.4byte str_GNB_W_2_las_000195ec
	.4byte 0x0001000A
	.4byte 0x000003B6
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_las_000195f4
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
	.4byte 0x0001000A
	.4byte 0x000002FE
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_las_000195f4
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
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte dat_las_00019608
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_ARM_UP1_las_00019610
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
	.4byte str_SFX_BOSS_GNB_ARM_DOW_las_00019628
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFE98
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000002EE
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
	.4byte str_SFX_BOSS_GNB_MOVE1_las_000195f4
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
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x00000074
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
	.4byte 0x0001000A
	.4byte 0x00000247
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_W_3_las_00019640
	.4byte 0x0001000A
	.4byte 0x00000352
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_las_000195f4
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
	.4byte 0x0001000A
	.4byte 0x000002FE
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_las_000195f4
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
	.4byte 0x0001000A
	.4byte 0x00000074
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fumituke_attack_event

# .data:0x1A34 | 0x49464 | size: 0x234
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
	.4byte str_SFX_BOSS_GNB_BITE1_las_00019648
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
	.4byte str_SFX_BOSS_GNB_BITE2_las_0001965c
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
	.4byte dat_las_00019670
	.4byte 0x0001000A
	.4byte 0x0000014D
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
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamituki_attack_event

# .data:0x1C68 | 0x49698 | size: 0x2C4
.obj eq_attack_event, local
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
	.4byte dat_las_00019678
	.4byte 0x0001000A
	.4byte 0x0000029A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_GNB_NECK_UP_las_00019680
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte dat_las_00019698
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_GNB_DOWN3_las_00019588
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x000000FA
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
	.4byte 0x00000063
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
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
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
	.4byte 0x0001000A
	.4byte 0x00000247
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj eq_attack_event

# .data:0x1F2C | 0x4995C | size: 0x414
.obj poison_attack_event, local
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
	.4byte str_GNB_A2_1_las_000196a0
	.4byte 0x0001000A
	.4byte 0x00000341
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_NECK_UP_las_00019680
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
	.4byte str_GNB_A2_3_las_000196ac
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_BREATH__las_000196b8
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
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000002D
	.4byte 0x00020036
	.4byte 0xFE363C88
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_las_000196d4
	.4byte 0x00000001
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
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj poison_attack_event

# .data:0x2340 | 0x49D70 | size: 0x400
.obj mega_attack_event, local
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
	.4byte dat_las_000196e4
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
	.4byte str_SFX_BOSS_GNB_NECK_UP_las_00019680
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000006D6
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MEGABRE_las_000196ec
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
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_las_000196d4
	.4byte 0x00000002
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
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mega_attack_event

# .data:0x2740 | 0x4A170 | size: 0xDC
.obj charge_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_CHARGE1_las_00019708
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFFFFFFE7
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_00019720
	.4byte str_charge_las_00019724
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8280
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x281C | 0x4A24C | size: 0x3B4
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_poison_attack
	.4byte 0x0001005E
	.4byte poison_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_fumituke_attack
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_kamituki_attack
	.4byte 0x0001005E
	.4byte kamituki_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_poison_attack
	.4byte 0x0001005E
	.4byte poison_attack_event
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_eq_attack
	.4byte 0x0001005E
	.4byte eq_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000000F
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_fumituke_attack
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_kamituki_attack
	.4byte 0x0001005E
	.4byte kamituki_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_poison_attack
	.4byte 0x0001005E
	.4byte poison_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_eq_attack
	.4byte 0x0001005E
	.4byte eq_attack_event
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_charge
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_mega_attack
	.4byte 0x0001005E
	.4byte mega_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_49_06_las_0001972c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_mega_attack
	.4byte 0x0001005E
	.4byte mega_attack_event
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0009005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_fumituke_attack
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_kamituki_attack
	.4byte 0x0001005E
	.4byte kamituki_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_poison_attack
	.4byte 0x0001005E
	.4byte poison_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_eq_attack
	.4byte 0x0001005E
	.4byte eq_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_charge
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bunbaba_mega_attack
	.4byte 0x0001005E
	.4byte mega_attack_event
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

# .data:0x2BD0 | 0x4A600 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
