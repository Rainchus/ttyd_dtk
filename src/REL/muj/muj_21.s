.include "macros.inc"
.file "muj_21.o"

# 0x0000D9B0..0x0000DBE0 | size: 0x230
.text
.balign 4

# .text:0x0 | 0xD9B0 | size: 0x230
.fn fune_eff, local
/* 0000D9B0 0000DA74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000D9B4 0000DA78  7C 08 02 A6 */	mflr r0
/* 0000D9B8 0000DA7C  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000D9BC 0000DA80  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000D9C0 0000DA84  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000D9C4 0000DA88  7C 7D 1B 78 */	mr r29, r3
/* 0000D9C8 0000DA8C  41 82 00 78 */	beq .L_0000DA40
/* 0000D9CC 0000DA90  3C 60 00 00 */	lis r3, zero_muj_00014814@ha
/* 0000D9D0 0000DA94  3C 80 00 00 */	lis r4, float_neg1000_muj_00014818@ha
/* 0000D9D4 0000DA98  38 A3 00 00 */	addi r5, r3, zero_muj_00014814@l
/* 0000D9D8 0000DA9C  C0 44 00 00 */	lfs f2, float_neg1000_muj_00014818@l(r4)
/* 0000D9DC 0000DAA0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000D9E0 0000DAA4  38 60 00 00 */	li r3, 0x0
/* 0000D9E4 0000DAA8  FC 60 08 90 */	fmr f3, f1
/* 0000D9E8 0000DAAC  FC 80 08 90 */	fmr f4, f1
/* 0000D9EC 0000DAB0  FC A0 08 90 */	fmr f5, f1
/* 0000D9F0 0000DAB4  4B FF 2F B9 */	bl effFunemizuEntry
/* 0000D9F4 0000DAB8  3C A0 00 00 */	lis r5, zero_muj_00014814@ha
/* 0000D9F8 0000DABC  3C 80 00 00 */	lis r4, float_neg1000_muj_00014818@ha
/* 0000D9FC 0000DAC0  C0 25 00 00 */	lfs f1, zero_muj_00014814@l(r5)
/* 0000DA00 0000DAC4  90 7D 00 78 */	stw r3, 0x78(r29)
/* 0000DA04 0000DAC8  38 60 00 02 */	li r3, 0x2
/* 0000DA08 0000DACC  FC 60 08 90 */	fmr f3, f1
/* 0000DA0C 0000DAD0  C0 44 00 00 */	lfs f2, float_neg1000_muj_00014818@l(r4)
/* 0000DA10 0000DAD4  FC 80 08 90 */	fmr f4, f1
/* 0000DA14 0000DAD8  FC A0 08 90 */	fmr f5, f1
/* 0000DA18 0000DADC  4B FF 2F 91 */	bl effFunemizuEntry
/* 0000DA1C 0000DAE0  3C 80 00 00 */	lis r4, str_S_fune_m_muj_00014704@ha
/* 0000DA20 0000DAE4  90 7D 00 7C */	stw r3, 0x7c(r29)
/* 0000DA24 0000DAE8  38 64 00 00 */	addi r3, r4, str_S_fune_m_muj_00014704@l
/* 0000DA28 0000DAEC  38 81 00 08 */	addi r4, r1, 0x8
/* 0000DA2C 0000DAF0  4B FF 2F 7D */	bl mapObjGetPos
/* 0000DA30 0000DAF4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000DA34 0000DAF8  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 0000DA38 0000DAFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000DA3C 0000DB00  D0 1D 00 84 */	stfs f0, 0x84(r29)
.L_0000DA40:
/* 0000DA40 0000DB04  3C 60 00 00 */	lis r3, str_S_fune_m_muj_00014704@ha
/* 0000DA44 0000DB08  83 FD 00 78 */	lwz r31, 0x78(r29)
/* 0000DA48 0000DB0C  83 DD 00 7C */	lwz r30, 0x7c(r29)
/* 0000DA4C 0000DB10  38 63 00 00 */	addi r3, r3, str_S_fune_m_muj_00014704@l
/* 0000DA50 0000DB14  38 81 00 08 */	addi r4, r1, 0x8
/* 0000DA54 0000DB18  4B FF 2F 55 */	bl mapObjGetPos
/* 0000DA58 0000DB1C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000DA5C 0000DB20  3C 60 00 00 */	lis r3, float_3_muj_0001481c@ha
/* 0000DA60 0000DB24  38 C3 00 00 */	addi r6, r3, float_3_muj_0001481c@l
/* 0000DA64 0000DB28  3C 60 00 00 */	lis r3, float_81p3_muj_00014820@ha
/* 0000DA68 0000DB2C  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 0000DA6C 0000DB30  38 A3 00 00 */	addi r5, r3, float_81p3_muj_00014820@l
/* 0000DA70 0000DB34  3C 80 00 00 */	lis r4, float_51_muj_00014824@ha
/* 0000DA74 0000DB38  3C 60 00 00 */	lis r3, float_38p9_muj_00014828@ha
/* 0000DA78 0000DB3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000DA7C 0000DB40  39 64 00 00 */	addi r11, r4, float_51_muj_00014824@l
/* 0000DA80 0000DB44  39 43 00 00 */	addi r10, r3, float_38p9_muj_00014828@l
/* 0000DA84 0000DB48  3C 60 00 00 */	lis r3, float_1_muj_0001482c@ha
/* 0000DA88 0000DB4C  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 0000DA8C 0000DB50  39 23 00 00 */	addi r9, r3, float_1_muj_0001482c@l
/* 0000DA90 0000DB54  3C 80 00 00 */	lis r4, float_270_muj_00014830@ha
/* 0000DA94 0000DB58  3C 60 00 00 */	lis r3, float_49p5_muj_00014834@ha
/* 0000DA98 0000DB5C  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 0000DA9C 0000DB60  39 04 00 00 */	addi r8, r4, float_270_muj_00014830@l
/* 0000DAA0 0000DB64  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 0000DAA4 0000DB68  38 E3 00 00 */	addi r7, r3, float_49p5_muj_00014834@l
/* 0000DAA8 0000DB6C  3C 80 00 00 */	lis r4, float_70p7_muj_00014838@ha
/* 0000DAAC 0000DB70  3C 60 00 00 */	lis r3, float_305_muj_0001483c@ha
/* 0000DAB0 0000DB74  D0 06 00 44 */	stfs f0, 0x44(r6)
/* 0000DAB4 0000DB78  38 C4 00 00 */	addi r6, r4, float_70p7_muj_00014838@l
/* 0000DAB8 0000DB7C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000DABC 0000DB80  38 A3 00 00 */	addi r5, r3, float_305_muj_0001483c@l
/* 0000DAC0 0000DB84  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 0000DAC4 0000DB88  3C 60 00 00 */	lis r3, gp@ha
/* 0000DAC8 0000DB8C  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 0000DACC 0000DB90  38 83 00 00 */	addi r4, r3, gp@l
/* 0000DAD0 0000DB94  EC 01 00 28 */	fsubs f0, f1, f0
/* 0000DAD4 0000DB98  C0 EB 00 00 */	lfs f7, 0x0(r11)
/* 0000DAD8 0000DB9C  C0 AA 00 00 */	lfs f5, 0x0(r10)
/* 0000DADC 0000DBA0  38 60 00 0F */	li r3, 0xf
/* 0000DAE0 0000DBA4  C0 89 00 00 */	lfs f4, 0x0(r9)
/* 0000DAE4 0000DBA8  D0 0C 00 04 */	stfs f0, 0x4(r12)
/* 0000DAE8 0000DBAC  C0 68 00 00 */	lfs f3, 0x0(r8)
/* 0000DAEC 0000DBB0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 0000DAF0 0000DBB4  81 1F 00 0C */	lwz r8, 0xc(r31)
/* 0000DAF4 0000DBB8  EC C0 38 28 */	fsubs f6, f0, f7
/* 0000DAF8 0000DBBC  C0 27 00 00 */	lfs f1, 0x0(r7)
/* 0000DAFC 0000DBC0  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 0000DB00 0000DBC4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000DB04 0000DBC8  D0 C8 00 08 */	stfs f6, 0x8(r8)
/* 0000DB08 0000DBCC  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 0000DB0C 0000DBD0  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 0000DB10 0000DBD4  EC A6 28 28 */	fsubs f5, f6, f5
/* 0000DB14 0000DBD8  D0 A5 00 0C */	stfs f5, 0xc(r5)
/* 0000DB18 0000DBDC  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 0000DB1C 0000DBE0  D0 85 00 10 */	stfs f4, 0x10(r5)
/* 0000DB20 0000DBE4  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 0000DB24 0000DBE8  D0 65 00 14 */	stfs f3, 0x14(r5)
/* 0000DB28 0000DBEC  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 0000DB2C 0000DBF0  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 0000DB30 0000DBF4  EC 23 08 28 */	fsubs f1, f3, f1
/* 0000DB34 0000DBF8  D0 25 00 04 */	stfs f1, 0x4(r5)
/* 0000DB38 0000DBFC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 0000DB3C 0000DC00  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 0000DB40 0000DC04  EC 21 38 28 */	fsubs f1, f1, f7
/* 0000DB44 0000DC08  D0 25 00 08 */	stfs f1, 0x8(r5)
/* 0000DB48 0000DC0C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 0000DB4C 0000DC10  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 0000DB50 0000DC14  EC 22 08 2A */	fadds f1, f2, f1
/* 0000DB54 0000DC18  D0 25 00 0C */	stfs f1, 0xc(r5)
/* 0000DB58 0000DC1C  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 0000DB5C 0000DC20  D0 85 00 10 */	stfs f4, 0x10(r5)
/* 0000DB60 0000DC24  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 0000DB64 0000DC28  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 0000DB68 0000DC2C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000DB6C 0000DC30  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 0000DB70 0000DC34  7C 04 1B 96 */	divwu r0, r4, r3
/* 0000DB74 0000DC38  7C 00 19 D6 */	mullw r0, r0, r3
/* 0000DB78 0000DC3C  7C 00 20 51 */	subf. r0, r0, r4
/* 0000DB7C 0000DC40  40 82 00 4C */	bne .L_0000DBC8
/* 0000DB80 0000DC44  3C 60 00 00 */	lis r3, float_106p1_muj_00014840@ha
/* 0000DB84 0000DC48  3C 80 00 00 */	lis r4, float_50_muj_00014844@ha
/* 0000DB88 0000DC4C  38 C3 00 00 */	addi r6, r3, float_106p1_muj_00014840@l
/* 0000DB8C 0000DC50  3C 60 00 00 */	lis r3, float_2_muj_00014848@ha
/* 0000DB90 0000DC54  38 A4 00 00 */	addi r5, r4, float_50_muj_00014844@l
/* 0000DB94 0000DC58  C0 66 00 00 */	lfs f3, 0x0(r6)
/* 0000DB98 0000DC5C  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 0000DB9C 0000DC60  38 83 00 00 */	addi r4, r3, float_2_muj_00014848@l
/* 0000DBA0 0000DC64  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000DBA4 0000DC68  38 60 00 05 */	li r3, 0x5
/* 0000DBA8 0000DC6C  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 0000DBAC 0000DC70  EC 23 08 2A */	fadds f1, f3, f1
/* 0000DBB0 0000DC74  C0 45 00 00 */	lfs f2, 0x0(r5)
/* 0000DBB4 0000DC78  EC 63 00 2A */	fadds f3, f3, f0
/* 0000DBB8 0000DC7C  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 0000DBBC 0000DC80  38 80 00 1E */	li r4, 0x1e
/* 0000DBC0 0000DC84  EC 45 10 28 */	fsubs f2, f5, f2
/* 0000DBC4 0000DC88  4B FF 2D E5 */	bl effWaterDamageN64Entry
.L_0000DBC8:
/* 0000DBC8 0000DC8C  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000DBCC 0000DC90  38 60 00 00 */	li r3, 0x0
/* 0000DBD0 0000DC94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000DBD4 0000DC98  7C 08 03 A6 */	mtlr r0
/* 0000DBD8 0000DC9C  38 21 00 30 */	addi r1, r1, 0x30
/* 0000DBDC 0000DCA0  4E 80 00 20 */	blr
.endfn fune_eff

# 0x00006A38..0x00006B9C | size: 0x164
.rodata
.balign 8

# .rodata:0x0 | 0x6A38 | size: 0x3
.obj str_me_muj_000146e8, local
	.string "me"
.endobj str_me_muj_000146e8

# .rodata:0x3 | 0x6A3B | size: 0x1
.obj gap_03_00006A3B_rodata, global
.hidden gap_03_00006A3B_rodata
	.byte 0x00
.endobj gap_03_00006A3B_rodata

# .rodata:0x4 | 0x6A3C | size: 0x9
.obj str_ピーチ姫_muj_000146ec, local
	.4byte 0x8373815B
	.4byte 0x83609550
	.byte 0x00
.endobj str_ピーチ姫_muj_000146ec

# .rodata:0xD | 0x6A45 | size: 0x3
.obj gap_03_00006A45_rodata, global
.hidden gap_03_00006A45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A45_rodata

# .rodata:0x10 | 0x6A48 | size: 0x9
.obj str_A_fune_m_muj_000146f8, local
	.string "A_fune_m"
.endobj str_A_fune_m_muj_000146f8

# .rodata:0x19 | 0x6A51 | size: 0x3
.obj gap_03_00006A51_rodata, global
.hidden gap_03_00006A51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A51_rodata

# .rodata:0x1C | 0x6A54 | size: 0x9
.obj str_S_fune_m_muj_00014704, local
	.string "S_fune_m"
.endobj str_S_fune_m_muj_00014704

# .rodata:0x25 | 0x6A5D | size: 0x3
.obj gap_03_00006A5D_rodata, global
.hidden gap_03_00006A5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A5D_rodata

# .rodata:0x28 | 0x6A60 | size: 0xC
.obj str_BGM_ENDING5_muj_00014710, local
	.string "BGM_ENDING5"
.endobj str_BGM_ENDING5_muj_00014710

# .rodata:0x34 | 0x6A6C | size: 0xD
.obj str_ENV_END_MUJ2_muj_0001471c, local
	.string "ENV_END_MUJ2"
.endobj str_ENV_END_MUJ2_muj_0001471c

# .rodata:0x41 | 0x6A79 | size: 0x3
.obj gap_03_00006A79_rodata, global
.hidden gap_03_00006A79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A79_rodata

# .rodata:0x44 | 0x6A7C | size: 0x14
.obj str_SFX_STG0_SHIP_MOVE1_muj_0001472c, local
	.string "SFX_STG0_SHIP_MOVE1"
.endobj str_SFX_STG0_SHIP_MOVE1_muj_0001472c

# .rodata:0x58 | 0x6A90 | size: 0x6
.obj str_P_S_7_muj_00014740, local
	.string "P_S_7"
.endobj str_P_S_7_muj_00014740

# .rodata:0x5E | 0x6A96 | size: 0x2
.obj gap_03_00006A96_rodata, global
.hidden gap_03_00006A96_rodata
	.2byte 0x0000
.endobj gap_03_00006A96_rodata

# .rodata:0x60 | 0x6A98 | size: 0x7
.obj str_P_T_13_muj_00014748, local
	.string "P_T_13"
.endobj str_P_T_13_muj_00014748

# .rodata:0x67 | 0x6A9F | size: 0x1
.obj gap_03_00006A9F_rodata, global
.hidden gap_03_00006A9F_rodata
	.byte 0x00
.endobj gap_03_00006A9F_rodata

# .rodata:0x68 | 0x6AA0 | size: 0x6
.obj str_ep_27_muj_00014750, local
	.string "ep_27"
.endobj str_ep_27_muj_00014750

# .rodata:0x6E | 0x6AA6 | size: 0x2
.obj gap_03_00006AA6_rodata, global
.hidden gap_03_00006AA6_rodata
	.2byte 0x0000
.endobj gap_03_00006AA6_rodata

# .rodata:0x70 | 0x6AA8 | size: 0x6
.obj str_ep_28_muj_00014758, local
	.string "ep_28"
.endobj str_ep_28_muj_00014758

# .rodata:0x76 | 0x6AAE | size: 0x2
.obj gap_03_00006AAE_rodata, global
.hidden gap_03_00006AAE_rodata
	.2byte 0x0000
.endobj gap_03_00006AAE_rodata

# .rodata:0x78 | 0x6AB0 | size: 0x6
.obj str_ep_29_muj_00014760, local
	.string "ep_29"
.endobj str_ep_29_muj_00014760

# .rodata:0x7E | 0x6AB6 | size: 0x2
.obj gap_03_00006AB6_rodata, global
.hidden gap_03_00006AB6_rodata
	.2byte 0x0000
.endobj gap_03_00006AB6_rodata

# .rodata:0x80 | 0x6AB8 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_muj_00014768, local
	.string "SFX_VOICE_MARIO_HAND_UP1_3"
.endobj str_SFX_VOICE_MARIO_HAND_muj_00014768

# .rodata:0x9B | 0x6AD3 | size: 0x1
.obj gap_03_00006AD3_rodata, global
.hidden gap_03_00006AD3_rodata
	.byte 0x00
.endobj gap_03_00006AD3_rodata

# .rodata:0x9C | 0x6AD4 | size: 0x6
.obj str_M_N_2_muj_00014784, local
	.string "M_N_2"
.endobj str_M_N_2_muj_00014784

# .rodata:0xA2 | 0x6ADA | size: 0x2
.obj gap_03_00006ADA_rodata, global
.hidden gap_03_00006ADA_rodata
	.2byte 0x0000
.endobj gap_03_00006ADA_rodata

# .rodata:0xA4 | 0x6ADC | size: 0x6
.obj str_M_S_1_muj_0001478c, local
	.string "M_S_1"
.endobj str_M_S_1_muj_0001478c

# .rodata:0xAA | 0x6AE2 | size: 0x2
.obj gap_03_00006AE2_rodata, global
.hidden gap_03_00006AE2_rodata
	.2byte 0x0000
.endobj gap_03_00006AE2_rodata

# .rodata:0xAC | 0x6AE4 | size: 0x1
.obj zero_muj_00014794, local
	.byte 0x00
.endobj zero_muj_00014794

# .rodata:0xAD | 0x6AE5 | size: 0x3
.obj gap_03_00006AE5_rodata, global
.hidden gap_03_00006AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AE5_rodata

# .rodata:0xB0 | 0x6AE8 | size: 0x6
.obj str_P_S_5_muj_00014798, local
	.string "P_S_5"
.endobj str_P_S_5_muj_00014798

# .rodata:0xB6 | 0x6AEE | size: 0x2
.obj gap_03_00006AEE_rodata, global
.hidden gap_03_00006AEE_rodata
	.2byte 0x0000
.endobj gap_03_00006AEE_rodata

# .rodata:0xB8 | 0x6AF0 | size: 0x4
.obj str_ake_muj_000147a0, local
	.string "ake"
.endobj str_ake_muj_000147a0

# .rodata:0xBC | 0x6AF4 | size: 0x9
.obj str_sunlight_muj_000147a4, local
	.string "sunlight"
.endobj str_sunlight_muj_000147a4

# .rodata:0xC5 | 0x6AFD | size: 0x3
.obj gap_03_00006AFD_rodata, global
.hidden gap_03_00006AFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AFD_rodata

# .rodata:0xC8 | 0x6B00 | size: 0xD
.obj str_sunlight_n64_muj_000147b0, local
	.string "sunlight_n64"
.endobj str_sunlight_n64_muj_000147b0

# .rodata:0xD5 | 0x6B0D | size: 0x3
.obj gap_03_00006B0D_rodata, global
.hidden gap_03_00006B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B0D_rodata

# .rodata:0xD8 | 0x6B10 | size: 0xC
.obj str_BGM_ENDING3_muj_000147c0, local
	.string "BGM_ENDING3"
.endobj str_BGM_ENDING3_muj_000147c0

# .rodata:0xE4 | 0x6B1C | size: 0xC
.obj str_S_nami_kira_muj_000147cc, local
	.string "S_nami_kira"
.endobj str_S_nami_kira_muj_000147cc

# .rodata:0xF0 | 0x6B28 | size: 0xB
.obj str_S_sun_hika_muj_000147d8, local
	.string "S_sun_hika"
.endobj str_S_sun_hika_muj_000147d8

# .rodata:0xFB | 0x6B33 | size: 0x1
.obj gap_03_00006B33_rodata, global
.hidden gap_03_00006B33_rodata
	.byte 0x00
.endobj gap_03_00006B33_rodata

# .rodata:0xFC | 0x6B34 | size: 0x6
.obj str_P_T_5_muj_000147e4, local
	.string "P_T_5"
.endobj str_P_T_5_muj_000147e4

# .rodata:0x102 | 0x6B3A | size: 0x2
.obj gap_03_00006B3A_rodata, global
.hidden gap_03_00006B3A_rodata
	.2byte 0x0000
.endobj gap_03_00006B3A_rodata

# .rodata:0x104 | 0x6B3C | size: 0x6
.obj str_ep_30_muj_000147ec, local
	.string "ep_30"
.endobj str_ep_30_muj_000147ec

# .rodata:0x10A | 0x6B42 | size: 0x2
.obj gap_03_00006B42_rodata, global
.hidden gap_03_00006B42_rodata
	.2byte 0x0000
.endobj gap_03_00006B42_rodata

# .rodata:0x10C | 0x6B44 | size: 0x7
.obj str_gor_12_muj_000147f4, local
	.string "gor_12"
.endobj str_gor_12_muj_000147f4

# .rodata:0x113 | 0x6B4B | size: 0x1
.obj gap_03_00006B4B_rodata, global
.hidden gap_03_00006B4B_rodata
	.byte 0x00
.endobj gap_03_00006B4B_rodata

# .rodata:0x114 | 0x6B4C | size: 0x5
.obj str_nami_muj_000147fc, local
	.string "nami"
.endobj str_nami_muj_000147fc

# .rodata:0x119 | 0x6B51 | size: 0x3
.obj gap_03_00006B51_rodata, global
.hidden gap_03_00006B51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B51_rodata

# .rodata:0x11C | 0x6B54 | size: 0x7
.obj str_hikari_muj_00014804, local
	.string "hikari"
.endobj str_hikari_muj_00014804

# .rodata:0x123 | 0x6B5B | size: 0x1
.obj gap_03_00006B5B_rodata, global
.hidden gap_03_00006B5B_rodata
	.byte 0x00
.endobj gap_03_00006B5B_rodata

# .rodata:0x124 | 0x6B5C | size: 0x7
.obj str_S_f_wa_muj_0001480c, local
	.string "S_f_wa"
.endobj str_S_f_wa_muj_0001480c
	.byte 0x00

# .rodata:0x12C | 0x6B64 | size: 0x4
.obj zero_muj_00014814, local
	.float 0
.endobj zero_muj_00014814

# .rodata:0x130 | 0x6B68 | size: 0x4
.obj float_neg1000_muj_00014818, local
	.float -1000
.endobj float_neg1000_muj_00014818

# .rodata:0x134 | 0x6B6C | size: 0x4
.obj float_3_muj_0001481c, local
	.float 3
.endobj float_3_muj_0001481c

# .rodata:0x138 | 0x6B70 | size: 0x4
.obj float_81p3_muj_00014820, local
	.float 81.3
.endobj float_81p3_muj_00014820

# .rodata:0x13C | 0x6B74 | size: 0x4
.obj float_51_muj_00014824, local
	.float 51
.endobj float_51_muj_00014824

# .rodata:0x140 | 0x6B78 | size: 0x4
.obj float_38p9_muj_00014828, local
	.float 38.9
.endobj float_38p9_muj_00014828

# .rodata:0x144 | 0x6B7C | size: 0x4
.obj float_1_muj_0001482c, local
	.float 1
.endobj float_1_muj_0001482c

# .rodata:0x148 | 0x6B80 | size: 0x4
.obj float_270_muj_00014830, local
	.float 270
.endobj float_270_muj_00014830

# .rodata:0x14C | 0x6B84 | size: 0x4
.obj float_49p5_muj_00014834, local
	.float 49.5
.endobj float_49p5_muj_00014834

# .rodata:0x150 | 0x6B88 | size: 0x4
.obj float_70p7_muj_00014838, local
	.float 70.7
.endobj float_70p7_muj_00014838

# .rodata:0x154 | 0x6B8C | size: 0x4
.obj float_305_muj_0001483c, local
	.float 305
.endobj float_305_muj_0001483c

# .rodata:0x158 | 0x6B90 | size: 0x4
.obj float_106p1_muj_00014840, local
	.float 106.1
.endobj float_106p1_muj_00014840

# .rodata:0x15C | 0x6B94 | size: 0x4
.obj float_50_muj_00014844, local
	.float 50
.endobj float_50_muj_00014844

# .rodata:0x160 | 0x6B98 | size: 0x4
.obj float_2_muj_00014848, local
	.float 2
.endobj float_2_muj_00014848

# 0x0003D260..0x0003DA88 | size: 0x828
.data
.balign 8

# .data:0x0 | 0x3D260 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3D268 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3D26C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3D270 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3D274 | size: 0x4
.obj gap_04_0003D274_data, global
.hidden gap_04_0003D274_data
	.4byte 0x00000000
.endobj gap_04_0003D274_data

# .data:0x18 | 0x3D278 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3D280 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3D284 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3D288 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3D290 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3D294 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3D298 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3D29C | size: 0x4
.obj gap_04_0003D29C_data, global
.hidden gap_04_0003D29C_data
	.4byte 0x00000000
.endobj gap_04_0003D29C_data

# .data:0x40 | 0x3D2A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3D2A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3D2AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3D2B0 | size: 0x30
.obj peach_init, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_000146e8
	.4byte 0x0000003E
	.4byte 0x0000001C
	.4byte 0x0000002C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_000146e8
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_init

# .data:0x80 | 0x3D2E0 | size: 0xB8
.obj npcEnt, local
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x00080600
	.4byte 0x00000000
	.4byte peach_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x138 | 0x3D398 | size: 0xA8
.obj fune_yure, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_fune_m_muj_000146f8
	.4byte str_S_fune_m_muj_00014704
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A7DB3
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_fune_m_muj_00014704
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_fune_m_muj_000146f8
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A8280
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fune_yure

# .data:0x1E0 | 0x3D440 | size: 0x560
.obj epilogue_evt, local
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_ENDING5_muj_00014710
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_END_MUJ2_muj_0001471c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000028
	.4byte 0x0000001C
	.4byte 0x00000040
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x00028010
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG0_SHIP_MOVE1_muj_0001472c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_snd_sfx_vol
	.4byte 0xFE363C83
	.4byte 0x0000003F
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002C
	.4byte 0x000000AD
	.4byte 0x00000249
	.4byte 0x0000002C
	.4byte 0x0000004F
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_muj_000146ec
	.4byte str_P_S_7_muj_00014740
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ピーチ姫_muj_000146ec
	.4byte str_P_S_7_muj_00014740
	.4byte str_P_T_13_muj_00014748
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_27_muj_00014750
	.4byte 0x00000000
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_28_muj_00014758
	.4byte 0x00000000
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002C
	.4byte 0x00000089
	.4byte 0x0000017C
	.4byte 0x0000002C
	.4byte 0x0000004F
	.4byte 0x00000032
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_29_muj_00014760
	.4byte 0x00000000
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_muj_00014768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_muj_00014784
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_0001478c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_muj_00014794
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_muj_000146ec
	.4byte str_P_S_5_muj_00014798
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_ake_muj_000147a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sunlight_muj_000147a4
	.4byte str_sunlight_n64_muj_000147b0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_ENDING3_muj_000147c0
	.4byte 0x000007D0
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_nami_kira_muj_000147cc
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_nami_kira_muj_000147cc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_nami_kira_muj_000147cc
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sun_hika_muj_000147d8
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_sun_hika_muj_000147d8
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sun_hika_muj_000147d8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_sun_hika_muj_000147d8
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_ake_muj_000147a0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00001F40
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ピーチ姫_muj_000146ec
	.4byte str_P_S_5_muj_00014798
	.4byte str_P_T_5_muj_000147e4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_30_muj_000147ec
	.4byte 0x00000000
	.4byte str_ピーチ姫_muj_000146ec
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x000003E8
	.4byte 0x00000009
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_12_muj_000147f4
	.4byte zero_muj_00014794
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x740 | 0x3D9A0 | size: 0xE8
.obj muj_21_init_evt_19_data_3D9A0, global
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_muj_000147fc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hikari_muj_00014804
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_nami_kira_muj_000147cc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sun_hika_muj_000147d8
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte fune_eff
	.4byte 0x0000006D
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xF24A7E80
	.4byte 0x0001005C
	.4byte anm_kaji_19_data_1EDBC
	.4byte 0x0001005C
	.4byte anm_wakka_19_data_1EEB0
	.4byte 0x0001005C
	.4byte anm_entotsu_19_data_1EF50
	.4byte 0x0001005C
	.4byte anm_neji_19_data_1EFD4
	.4byte 0x0001005C
	.4byte fune_yure
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_f_wa_muj_0001480c
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x0002005B
	.4byte evt_light_charalight_all_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_21_init_evt_19_data_3D9A0
