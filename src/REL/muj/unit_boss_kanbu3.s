.include "macros.inc"
.file "unit_boss_kanbu3.o"

# 0x000068D4..0x000069E4 | size: 0x110
.text
.balign 4

# .text:0x0 | 0x68D4 | size: 0x80
.fn check_exist_kenkyu, local
/* 000068D4 00006998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000068D8 0000699C  7C 08 02 A6 */	mflr r0
/* 000068DC 000069A0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000068E0 000069A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 000068E4 000069A8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 000068E8 000069AC  7C 7B 1B 78 */	mr r27, r3
/* 000068EC 000069B0  3B 80 FF FF */	li r28, -0x1
/* 000068F0 000069B4  3B E0 00 00 */	li r31, 0x0
/* 000068F4 000069B8  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000068F8 000069BC  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
.L_000068FC:
/* 000068FC 000069C0  7F A3 EB 78 */	mr r3, r29
/* 00006900 000069C4  7F E4 FB 78 */	mr r4, r31
/* 00006904 000069C8  4B FF A0 A5 */	bl BattleGetUnitPtr
/* 00006908 000069CC  28 03 00 00 */	cmplwi r3, 0x0
/* 0000690C 000069D0  41 82 00 14 */	beq .L_00006920
/* 00006910 000069D4  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00006914 000069D8  2C 00 00 77 */	cmpwi r0, 0x77
/* 00006918 000069DC  40 82 00 08 */	bne .L_00006920
/* 0000691C 000069E0  7F FC FB 78 */	mr r28, r31
.L_00006920:
/* 00006920 000069E4  3B FF 00 01 */	addi r31, r31, 0x1
/* 00006924 000069E8  2C 1F 00 40 */	cmpwi r31, 0x40
/* 00006928 000069EC  41 80 FF D4 */	blt .L_000068FC
/* 0000692C 000069F0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00006930 000069F4  7F 63 DB 78 */	mr r3, r27
/* 00006934 000069F8  7F 85 E3 78 */	mr r5, r28
/* 00006938 000069FC  4B FF A0 71 */	bl evtSetValue
/* 0000693C 00006A00  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00006940 00006A04  38 60 00 02 */	li r3, 0x2
/* 00006944 00006A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006948 00006A0C  7C 08 03 A6 */	mtlr r0
/* 0000694C 00006A10  38 21 00 20 */	addi r1, r1, 0x20
/* 00006950 00006A14  4E 80 00 20 */	blr
.endfn check_exist_kenkyu

# .text:0x80 | 0x6954 | size: 0x90
.fn check_exist_group, local
/* 00006954 00006A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006958 00006A1C  7C 08 02 A6 */	mflr r0
/* 0000695C 00006A20  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006960 00006A24  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006964 00006A28  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00006968 00006A2C  7C 7B 1B 78 */	mr r27, r3
/* 0000696C 00006A30  3B 80 FF FF */	li r28, -0x1
/* 00006970 00006A34  3B E0 00 00 */	li r31, 0x0
/* 00006974 00006A38  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00006978 00006A3C  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
.L_0000697C:
/* 0000697C 00006A40  7F A3 EB 78 */	mr r3, r29
/* 00006980 00006A44  7F E4 FB 78 */	mr r4, r31
/* 00006984 00006A48  4B FF A0 25 */	bl BattleGetUnitPtr
/* 00006988 00006A4C  28 03 00 00 */	cmplwi r3, 0x0
/* 0000698C 00006A50  41 82 00 24 */	beq .L_000069B0
/* 00006990 00006A54  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00006994 00006A58  2C 00 00 64 */	cmpwi r0, 0x64
/* 00006998 00006A5C  41 82 00 14 */	beq .L_000069AC
/* 0000699C 00006A60  2C 00 00 65 */	cmpwi r0, 0x65
/* 000069A0 00006A64  41 82 00 0C */	beq .L_000069AC
/* 000069A4 00006A68  2C 00 00 66 */	cmpwi r0, 0x66
/* 000069A8 00006A6C  40 82 00 08 */	bne .L_000069B0
.L_000069AC:
/* 000069AC 00006A70  7F FC FB 78 */	mr r28, r31
.L_000069B0:
/* 000069B0 00006A74  3B FF 00 01 */	addi r31, r31, 0x1
/* 000069B4 00006A78  2C 1F 00 40 */	cmpwi r31, 0x40
/* 000069B8 00006A7C  41 80 FF C4 */	blt .L_0000697C
/* 000069BC 00006A80  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000069C0 00006A84  7F 63 DB 78 */	mr r3, r27
/* 000069C4 00006A88  7F 85 E3 78 */	mr r5, r28
/* 000069C8 00006A8C  4B FF 9F E1 */	bl evtSetValue
/* 000069CC 00006A90  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 000069D0 00006A94  38 60 00 02 */	li r3, 0x2
/* 000069D4 00006A98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000069D8 00006A9C  7C 08 03 A6 */	mtlr r0
/* 000069DC 00006AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 000069E0 00006AA4  4E 80 00 20 */	blr
.endfn check_exist_group

# 0x00005350..0x00005558 | size: 0x208
.rodata
.balign 8

# .rodata:0x0 | 0x5350 | size: 0xE
.obj str_btl_un_kanbu3_muj_00013000, local
	.string "btl_un_kanbu3"
.endobj str_btl_un_kanbu3_muj_00013000

# .rodata:0xE | 0x535E | size: 0x2
.obj gap_03_0000535E_rodata, global
.hidden gap_03_0000535E_rodata
	.2byte 0x0000
.endobj gap_03_0000535E_rodata

# .rodata:0x10 | 0x5360 | size: 0x18
.obj str_SFX_BOSS_KANBU_DAMAG_muj_00013010, local
	.string "SFX_BOSS_KANBU_DAMAGED1"
.endobj str_SFX_BOSS_KANBU_DAMAG_muj_00013010

# .rodata:0x28 | 0x5378 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00013028, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00013028

# .rodata:0x3D | 0x538D | size: 0x3
.obj gap_03_0000538D_rodata, global
.hidden gap_03_0000538D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000538D_rodata

# .rodata:0x40 | 0x5390 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00013040, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00013040

# .rodata:0x54 | 0x53A4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00013054, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00013054

# .rodata:0x6D | 0x53BD | size: 0x3
.obj gap_03_000053BD_rodata, global
.hidden gap_03_000053BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000053BD_rodata

# .rodata:0x70 | 0x53C0 | size: 0x8
.obj str_c_kanbu_muj_00013070, local
	.string "c_kanbu"
.endobj str_c_kanbu_muj_00013070

# .rodata:0x78 | 0x53C8 | size: 0x16
.obj str_SFX_BOSS_KANBU_MOVE1_muj_00013078, local
	.string "SFX_BOSS_KANBU_MOVE1L"
.endobj str_SFX_BOSS_KANBU_MOVE1_muj_00013078

# .rodata:0x8E | 0x53DE | size: 0x2
.obj gap_03_000053DE_rodata, global
.hidden gap_03_000053DE_rodata
	.2byte 0x0000
.endobj gap_03_000053DE_rodata

# .rodata:0x90 | 0x53E0 | size: 0x16
.obj str_SFX_BOSS_KANBU_MOVE1_muj_00013090, local
	.string "SFX_BOSS_KANBU_MOVE1R"
.endobj str_SFX_BOSS_KANBU_MOVE1_muj_00013090

# .rodata:0xA6 | 0x53F6 | size: 0x2
.obj gap_03_000053F6_rodata, global
.hidden gap_03_000053F6_rodata
	.2byte 0x0000
.endobj gap_03_000053F6_rodata

# .rodata:0xA8 | 0x53F8 | size: 0x10
.obj str_stg5_muj_125_00_muj_000130a8, local
	.string "stg5_muj_125_00"
.endobj str_stg5_muj_125_00_muj_000130a8

# .rodata:0xB8 | 0x5408 | size: 0x4
.obj str_D_1_muj_000130b8, local
	.string "D_1"
.endobj str_D_1_muj_000130b8

# .rodata:0xBC | 0x540C | size: 0x1A
.obj str_SFX_BOSS_TEAM_3RD_ES_muj_000130bc, local
	.string "SFX_BOSS_TEAM_3RD_ESCAPE1"
.endobj str_SFX_BOSS_TEAM_3RD_ES_muj_000130bc

# .rodata:0xD6 | 0x5426 | size: 0x2
.obj gap_03_00005426_rodata, global
.hidden gap_03_00005426_rodata
	.2byte 0x0000
.endobj gap_03_00005426_rodata

# .rodata:0xD8 | 0x5428 | size: 0x4
.obj str_S_1_muj_000130d8, local
	.string "S_1"
.endobj str_S_1_muj_000130d8

# .rodata:0xDC | 0x542C | size: 0x18
.obj str_SFX_BOSS_KANBU_CALL__muj_000130dc, local
	.string "SFX_BOSS_KANBU_CALL_ON1"
.endobj str_SFX_BOSS_KANBU_CALL__muj_000130dc

# .rodata:0xF4 | 0x5444 | size: 0x4
.obj str_C_2_muj_000130f4, local
	.string "C_2"
.endobj str_C_2_muj_000130f4

# .rodata:0xF8 | 0x5448 | size: 0x10
.obj str_stg5_muj_125_01_muj_000130f8, local
	.string "stg5_muj_125_01"
.endobj str_stg5_muj_125_01_muj_000130f8

# .rodata:0x108 | 0x5458 | size: 0x10
.obj str_stg5_muj_125_02_muj_00013108, local
	.string "stg5_muj_125_02"
.endobj str_stg5_muj_125_02_muj_00013108

# .rodata:0x118 | 0x5468 | size: 0x4
.obj str_R_1_muj_00013118, local
	.string "R_1"
.endobj str_R_1_muj_00013118

# .rodata:0x11C | 0x546C | size: 0x1
.obj zero_muj_0001311c, local
	.byte 0x00
.endobj zero_muj_0001311c

# .rodata:0x11D | 0x546D | size: 0x3
.obj gap_03_0000546D_rodata, global
.hidden gap_03_0000546D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000546D_rodata

# .rodata:0x120 | 0x5470 | size: 0x9
.obj str_recovery_muj_00013120, local
	.string "recovery"
.endobj str_recovery_muj_00013120

# .rodata:0x129 | 0x5479 | size: 0x3
.obj gap_03_00005479_rodata, global
.hidden gap_03_00005479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005479_rodata

# .rodata:0x12C | 0x547C | size: 0x18
.obj str_SFX_BOSS_TEAM_3RD_MO_muj_0001312c, local
	.string "SFX_BOSS_TEAM_3RD_MOVE2"
.endobj str_SFX_BOSS_TEAM_3RD_MO_muj_0001312c

# .rodata:0x144 | 0x5494 | size: 0x10
.obj str_stg5_muj_125_03_muj_00013144, local
	.string "stg5_muj_125_03"
.endobj str_stg5_muj_125_03_muj_00013144

# .rodata:0x154 | 0x54A4 | size: 0x1A
.obj str_SFX_BOSS_KANBU_CALL__muj_00013154, local
	.string "SFX_BOSS_KANBU_CALL_BACK1"
.endobj str_SFX_BOSS_KANBU_CALL__muj_00013154

# .rodata:0x16E | 0x54BE | size: 0x2
.obj gap_03_000054BE_rodata, global
.hidden gap_03_000054BE_rodata
	.2byte 0x0000
.endobj gap_03_000054BE_rodata

# .rodata:0x170 | 0x54C0 | size: 0x4
.obj str_C_1_muj_00013170, local
	.string "C_1"
.endobj str_C_1_muj_00013170

# .rodata:0x174 | 0x54C4 | size: 0x4
.obj str_G_1_muj_00013174, local
	.string "G_1"
.endobj str_G_1_muj_00013174

# .rodata:0x178 | 0x54C8 | size: 0x4
.obj str_G_2_muj_00013178, local
	.string "G_2"
.endobj str_G_2_muj_00013178

# .rodata:0x17C | 0x54CC | size: 0x4
.obj str_N_1_muj_0001317c, local
	.string "N_1"
.endobj str_N_1_muj_0001317c

# .rodata:0x180 | 0x54D0 | size: 0x4
.obj str_Y_1_muj_00013180, local
	.string "Y_1"
.endobj str_Y_1_muj_00013180

# .rodata:0x184 | 0x54D4 | size: 0x4
.obj str_K_1_muj_00013184, local
	.string "K_1"
.endobj str_K_1_muj_00013184

# .rodata:0x188 | 0x54D8 | size: 0x4
.obj str_X_1_muj_00013188, local
	.string "X_1"
.endobj str_X_1_muj_00013188

# .rodata:0x18C | 0x54DC | size: 0x4
.obj str_T_1_muj_0001318c, local
	.string "T_1"
.endobj str_T_1_muj_0001318c

# .rodata:0x190 | 0x54E0 | size: 0x4
.obj str_Q_1_muj_00013190, local
	.string "Q_1"
.endobj str_Q_1_muj_00013190

# .rodata:0x194 | 0x54E4 | size: 0x4
.obj str_R_2_muj_00013194, local
	.string "R_2"
.endobj str_R_2_muj_00013194

# .rodata:0x198 | 0x54E8 | size: 0x4
.obj str_W_1_muj_00013198, local
	.string "W_1"
.endobj str_W_1_muj_00013198

# .rodata:0x19C | 0x54EC | size: 0x15
.obj str_SFX_BOSS_KANBU_JUMP1_muj_0001319c, local
	.string "SFX_BOSS_KANBU_JUMP1"
.endobj str_SFX_BOSS_KANBU_JUMP1_muj_0001319c

# .rodata:0x1B1 | 0x5501 | size: 0x3
.obj gap_03_00005501_rodata, global
.hidden gap_03_00005501_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005501_rodata

# .rodata:0x1B4 | 0x5504 | size: 0x5
.obj str_A_1A_muj_000131b4, local
	.string "A_1A"
.endobj str_A_1A_muj_000131b4

# .rodata:0x1B9 | 0x5509 | size: 0x3
.obj gap_03_00005509_rodata, global
.hidden gap_03_00005509_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005509_rodata

# .rodata:0x1BC | 0x550C | size: 0x5
.obj str_A_1B_muj_000131bc, local
	.string "A_1B"
.endobj str_A_1B_muj_000131bc

# .rodata:0x1C1 | 0x5511 | size: 0x3
.obj gap_03_00005511_rodata, global
.hidden gap_03_00005511_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005511_rodata

# .rodata:0x1C4 | 0x5514 | size: 0x5
.obj str_A_1C_muj_000131c4, local
	.string "A_1C"
.endobj str_A_1C_muj_000131c4

# .rodata:0x1C9 | 0x5519 | size: 0x3
.obj gap_03_00005519_rodata, global
.hidden gap_03_00005519_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005519_rodata

# .rodata:0x1CC | 0x551C | size: 0x1B
.obj str_SFX_BOSS_KANBU_HIP_A_muj_000131cc, local
	.string "SFX_BOSS_KANBU_HIP_ATTACK1"
.endobj str_SFX_BOSS_KANBU_HIP_A_muj_000131cc

# .rodata:0x1E7 | 0x5537 | size: 0x1
.obj gap_03_00005537_rodata, global
.hidden gap_03_00005537_rodata
	.byte 0x00
.endobj gap_03_00005537_rodata

# .rodata:0x1E8 | 0x5538 | size: 0x1B
.obj str_SFX_BOSS_KANBU_HIP_A_muj_000131e8, local
	.string "SFX_BOSS_KANBU_HIP_ATTACK2"
.endobj str_SFX_BOSS_KANBU_HIP_A_muj_000131e8

# .rodata:0x203 | 0x5553 | size: 0x5
.obj gap_03_00005553_rodata, global
.hidden gap_03_00005553_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00005553_rodata

# 0x0002D260..0x0002F558 | size: 0x22F8
.data
.balign 8

# .data:0x0 | 0x2D260 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2D268 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2D26C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2D270 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2D274 | size: 0x4
.obj gap_04_0002D274_data, global
.hidden gap_04_0002D274_data
	.4byte 0x00000000
.endobj gap_04_0002D274_data

# .data:0x18 | 0x2D278 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2D280 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2D284 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2D288 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2D290 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2D294 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2D298 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2D29C | size: 0x4
.obj gap_04_0002D29C_data, global
.hidden gap_04_0002D29C_data
	.4byte 0x00000000
.endobj gap_04_0002D29C_data

# .data:0x40 | 0x2D2A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2D2A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2D2AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2D2B0 | size: 0xC4
.obj unit_boss_kanbu3_19_data_2D2B0, global
	.4byte 0x00000063
	.4byte str_btl_un_kanbu3_muj_00013000
	.4byte 0x001E0000
	.4byte 0x01013900
	.4byte 0x00640032
	.4byte 0x00080038
	.4byte 0x003B0000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x42196666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42500000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KANBU_DAMAG_muj_00013010
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00013028
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00013040
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00013054
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_kanbu3_19_data_2D2B0

# .data:0x114 | 0x2D374 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x2D379 | size: 0x3
.obj gap_04_0002D379_data, global
.hidden gap_04_0002D379_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002D379_data

# .data:0x11C | 0x2D37C | size: 0x5
.obj defence_guard, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence_guard

# .data:0x121 | 0x2D381 | size: 0x3
.obj gap_04_0002D381_data, global
.hidden gap_04_0002D381_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002D381_data

# .data:0x124 | 0x2D384 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x129 | 0x2D389 | size: 0x3
.obj gap_04_0002D389_data, global
.hidden gap_04_0002D389_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002D389_data

# .data:0x12C | 0x2D38C | size: 0x16
.obj regist, local
	.4byte 0x50463C64
	.4byte 0x5064643C
	.4byte 0x64556455
	.4byte 0x645A3C00
	.4byte 0x00643C64
	.2byte 0x0000
.endobj regist

# .data:0x142 | 0x2D3A2 | size: 0x2
.obj gap_04_0002D3A2_data, global
.hidden gap_04_0002D3A2_data
	.2byte 0x0000
.endobj gap_04_0002D3A2_data

# .data:0x144 | 0x2D3A4 | size: 0x18
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x15C | 0x2D3BC | size: 0x10
.obj data_table2, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table2

# .data:0x16C | 0x2D3CC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kanbu3_muj_00013000
	.4byte str_c_kanbu_muj_00013070
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1B8 | 0x2D418 | size: 0xC0
.obj weapon_kanbu3_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00001087
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_kanbu3_attack

# .data:0x278 | 0x2D4D8 | size: 0xC0
.obj weapon_kanbu3_charge, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kanbu3_charge

# .data:0x338 | 0x2D598 | size: 0x30
.obj entry_kenkyu, local
	.4byte unit_gundan_zako_magician_19_data_325E0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_kenkyu

# .data:0x368 | 0x2D5C8 | size: 0x30
.obj entry_group1, local
	.4byte unit_boss_gundan_zako_group1_19_data_2F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_group1

# .data:0x398 | 0x2D5F8 | size: 0x30
.obj entry_group2, local
	.4byte unit_boss_gundan_zako_group2_19_data_304A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_group2

# .data:0x3C8 | 0x2D628 | size: 0x30
.obj entry_group3, local
	.4byte unit_boss_gundan_zako_group3_19_data_316C8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_group3

# .data:0x3F8 | 0x2D658 | size: 0xEC
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_MOVE1_muj_00013078
	.4byte str_SFX_BOSS_KANBU_MOVE1_muj_00013090
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_MOVE1_muj_00013078
	.4byte str_SFX_BOSS_KANBU_MOVE1_muj_00013090
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
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
	.4byte 0x0001005E
	.4byte zakogun_entry_19_data_3027C
	.4byte 0x0001005B
	.4byte zakogun_ext_init1_19_text_862C
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x4E4 | 0x2D744 | size: 0xB4
.obj entry_event, local
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x000000A6
	.4byte 0x00000058
	.4byte 0x000001A6
	.4byte 0x000000A6
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg5_muj_125_00_muj_000130a8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x598 | 0x2D7F8 | size: 0x544
.obj damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000018
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001D
	.4byte 0x00010024
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001D
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_1_muj_000130b8
	.4byte 0x00000031
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_TEAM_3RD_ES_muj_000130bc
	.4byte 0xFE363C8D
	.4byte 0x0001005B
	.4byte zakogun_escape3_19_text_A108
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00010009
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000130d8
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000130d8
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte zakogun_escape1_19_text_6ABC
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x000000A6
	.4byte 0x00000058
	.4byte 0x000001A6
	.4byte 0x000000A6
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg5_muj_125_01_muj_000130f8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg5_muj_125_02_muj_00013108
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005B
	.4byte zakogun_ext_init2_19_text_9CD8
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C80
	.4byte entry_group2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte down_ceil_19_text_9FAC
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000130d8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xADC | 0x2DD3C | size: 0x648
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte zakogun_escape1_19_text_6ABC
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte up_ceil_19_text_9E58
	.4byte 0x0001005B
	.4byte zakogun_escape2_19_text_8C58
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_muj_00013118
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x000000DC
	.4byte 0x00000057
	.4byte 0x000001A3
	.4byte 0x000000DC
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_batstage_set_aud_dark
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_0001311c
	.4byte str_recovery_muj_00013120
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x0000001E
	.4byte 0x00000068
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_0001311c
	.4byte str_recovery_muj_00013120
	.4byte 0x00000000
	.4byte 0x000000DC
	.4byte 0x0000001E
	.4byte 0x00000067
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_0001311c
	.4byte str_recovery_muj_00013120
	.4byte 0x00000000
	.4byte 0x00000118
	.4byte 0x0000001E
	.4byte 0x00000066
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_0001311c
	.4byte str_recovery_muj_00013120
	.4byte 0x00000000
	.4byte 0x000000EB
	.4byte 0x0000003C
	.4byte 0x00000065
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_0001311c
	.4byte str_recovery_muj_00013120
	.4byte 0x00000000
	.4byte 0x00000109
	.4byte 0x0000003C
	.4byte 0x00000064
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_OnOffStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_batstage_return_aud_dark_base
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_group3
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_muj_00013118
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000130d8
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_TEAM_3RD_MO_muj_0001312c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte zakogun_ext_init3_19_text_B2B4
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table2
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x000000A6
	.4byte 0x00000058
	.4byte 0x000001A6
	.4byte 0x000000A6
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg5_muj_125_03_muj_00013144
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x1124 | 0x2E384 | size: 0xDC
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
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
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte call_event
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1200 | 0x2E460 | size: 0x470
.obj call_event, local
	.4byte 0x0002005B
	.4byte check_exist_group
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_00013154
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_1_muj_00013170
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_00013154
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_1_muj_00013170
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_000130dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_2_muj_000130f4
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_00013154
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_1_muj_00013170
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_CALL__muj_00013154
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_C_1_muj_00013170
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0000006D
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_group1
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte zakogun_ext_init1_19_text_862C
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte zakogun_ext_init2_19_text_9CD8
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C80
	.4byte entry_group2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte down_ceil_19_text_9FAC
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_group3
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_TEAM_3RD_MO_muj_0001312c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte zakogun_ext_init3_19_text_B2B4
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj call_event

# .data:0x1670 | 0x2E8D0 | size: 0x220
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
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kanbu3_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte guard_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte call_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte guard_cancel_event
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte no_event
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kanbu3_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1890 | 0x2EAF0 | size: 0xE0
.obj guard_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_1_muj_00013174
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_muj_00013178
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guard_event

# .data:0x1970 | 0x2EBD0 | size: 0x114
.obj guard_cancel_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000130d8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guard_cancel_event

# .data:0x1A84 | 0x2ECE4 | size: 0x6C
.obj no_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj no_event

# .data:0x1AF0 | 0x2ED50 | size: 0x11C
.obj charge_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_kanbu3_charge
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_kanbu3_charge
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_1_muj_00013174
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_muj_00013178
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_kanbu3_charge
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_kanbu3_charge
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x1C0C | 0x2EE6C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1C24 | 0x2EE84 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_muj_0001317c
	.4byte 0x00000002
	.4byte str_Y_1_muj_00013180
	.4byte 0x00000009
	.4byte str_Y_1_muj_00013180
	.4byte 0x00000005
	.4byte str_K_1_muj_00013184
	.4byte 0x00000004
	.4byte str_X_1_muj_00013188
	.4byte 0x00000003
	.4byte str_X_1_muj_00013188
	.4byte 0x0000001C
	.4byte str_S_1_muj_000130d8
	.4byte 0x00000041
	.4byte str_T_1_muj_0001318c
	.4byte 0x0000001D
	.4byte str_Q_1_muj_00013190
	.4byte 0x0000001E
	.4byte str_Q_1_muj_00013190
	.4byte 0x0000001F
	.4byte str_S_1_muj_000130d8
	.4byte 0x00000027
	.4byte str_D_1_muj_000130b8
	.4byte 0x0000002A
	.4byte str_R_2_muj_00013194
	.4byte 0x00000028
	.4byte str_W_1_muj_00013198
	.4byte 0x00000038
	.4byte str_X_1_muj_00013188
	.4byte 0x00000039
	.4byte str_X_1_muj_00013188
	.4byte 0x00000041
	.4byte str_T_1_muj_0001318c
	.4byte 0x00000045
	.4byte str_S_1_muj_000130d8
.endobj pose_table

# .data:0x1CB4 | 0x2EF14 | size: 0x90
.obj pose_table_guard, local
	.4byte 0x00000001
	.4byte str_N_1_muj_0001317c
	.4byte 0x00000002
	.4byte str_Y_1_muj_00013180
	.4byte 0x00000009
	.4byte str_Y_1_muj_00013180
	.4byte 0x00000005
	.4byte str_K_1_muj_00013184
	.4byte 0x00000004
	.4byte str_X_1_muj_00013188
	.4byte 0x00000003
	.4byte str_X_1_muj_00013188
	.4byte 0x0000001C
	.4byte str_G_2_muj_00013178
	.4byte 0x00000041
	.4byte str_T_1_muj_0001318c
	.4byte 0x0000001D
	.4byte str_Q_1_muj_00013190
	.4byte 0x0000001E
	.4byte str_Q_1_muj_00013190
	.4byte 0x0000001F
	.4byte str_G_2_muj_00013178
	.4byte 0x00000027
	.4byte str_D_1_muj_000130b8
	.4byte 0x0000002A
	.4byte str_R_2_muj_00013194
	.4byte 0x00000028
	.4byte str_W_1_muj_00013198
	.4byte 0x00000038
	.4byte str_X_1_muj_00013188
	.4byte 0x00000039
	.4byte str_X_1_muj_00013188
	.4byte 0x00000041
	.4byte str_T_1_muj_0001318c
	.4byte 0x00000045
	.4byte str_G_2_muj_00013178
.endobj pose_table_guard

# .data:0x1D44 | 0x2EFA4 | size: 0x5B4
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
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
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_2_muj_00013194
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_JUMP1_muj_0001319c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_muj_000131b4
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_muj_000131bc
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8280
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
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
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_muj_000131c4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_HIP_A_muj_000131cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_muj_000131c4
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_muj_000131c4
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_HIP_A_muj_000131e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_HIP_A_muj_000131e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_1_muj_000130b8
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000130d8
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_muj_00013118
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9680
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event
