.include "macros.inc"
.file "unit_bllizard.o"

# 0x00005C44..0x00005DBC | size: 0x178
.text
.balign 4

# .text:0x0 | 0x5C44 | size: 0x74
.fn eff_ice_barrier_end, local
/* 00005C44 00005D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005C48 00005D0C  7C 08 02 A6 */	mflr r0
/* 00005C4C 00005D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005C50 00005D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00005C54 00005D18  7C 7F 1B 78 */	mr r31, r3
/* 00005C58 00005D1C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005C5C 00005D20  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005C60 00005D24  4B FF AE 11 */	bl evtGetValue
/* 00005C64 00005D28  7C 64 1B 78 */	mr r4, r3
/* 00005C68 00005D2C  7F E3 FB 78 */	mr r3, r31
/* 00005C6C 00005D30  4B FF AE 05 */	bl BattleTransID
/* 00005C70 00005D34  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005C74 00005D38  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005C78 00005D3C  7C 64 1B 78 */	mr r4, r3
/* 00005C7C 00005D40  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005C80 00005D44  4B FF AD F1 */	bl BattleGetUnitPtr
/* 00005C84 00005D48  7C 7F 1B 78 */	mr r31, r3
/* 00005C88 00005D4C  80 63 02 1C */	lwz r3, 0x21c(r3)
/* 00005C8C 00005D50  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005C90 00005D54  41 82 00 10 */	beq .L_00005CA0
/* 00005C94 00005D58  4B FF AD DD */	bl effDelete
/* 00005C98 00005D5C  38 00 00 00 */	li r0, 0x0
/* 00005C9C 00005D60  90 1F 02 1C */	stw r0, 0x21c(r31)
.L_00005CA0:
/* 00005CA0 00005D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005CA4 00005D68  38 60 00 02 */	li r3, 0x2
/* 00005CA8 00005D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00005CAC 00005D70  7C 08 03 A6 */	mtlr r0
/* 00005CB0 00005D74  38 21 00 10 */	addi r1, r1, 0x10
/* 00005CB4 00005D78  4E 80 00 20 */	blr
.endfn eff_ice_barrier_end

# .text:0x74 | 0x5CB8 | size: 0x104
.fn eff_ice_barrier, local
/* 00005CB8 00005D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005CBC 00005D80  7C 08 02 A6 */	mflr r0
/* 00005CC0 00005D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005CC4 00005D88  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005CC8 00005D8C  7C 9E 23 78 */	mr r30, r4
/* 00005CCC 00005D90  7C 7F 1B 78 */	mr r31, r3
/* 00005CD0 00005D94  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005CD4 00005D98  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005CD8 00005D9C  4B FF AD 99 */	bl evtGetValue
/* 00005CDC 00005DA0  7C 64 1B 78 */	mr r4, r3
/* 00005CE0 00005DA4  7F E3 FB 78 */	mr r3, r31
/* 00005CE4 00005DA8  4B FF AD 8D */	bl BattleTransID
/* 00005CE8 00005DAC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005CEC 00005DB0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005CF0 00005DB4  7C 64 1B 78 */	mr r4, r3
/* 00005CF4 00005DB8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005CF8 00005DBC  4B FF AD 79 */	bl BattleGetUnitPtr
/* 00005CFC 00005DC0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00005D00 00005DC4  7C 7F 1B 78 */	mr r31, r3
/* 00005D04 00005DC8  41 82 00 48 */	beq .L_00005D4C
/* 00005D08 00005DCC  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 00005D0C 00005DD0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005D10 00005DD4  40 82 00 3C */	bne .L_00005D4C
/* 00005D14 00005DD8  3C 60 00 00 */	lis r3, zero_jon_0000de10@ha
/* 00005D18 00005DDC  3C 80 00 00 */	lis r4, float_neg1000_jon_0000de14@ha
/* 00005D1C 00005DE0  38 A3 00 00 */	addi r5, r3, zero_jon_0000de10@l
/* 00005D20 00005DE4  C0 44 00 00 */	lfs f2, float_neg1000_jon_0000de14@l(r4)
/* 00005D24 00005DE8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00005D28 00005DEC  3C 60 00 00 */	lis r3, float_1_jon_0000de18@ha
/* 00005D2C 00005DF0  C0 C3 00 00 */	lfs f6, float_1_jon_0000de18@l(r3)
/* 00005D30 00005DF4  38 60 00 03 */	li r3, 0x3
/* 00005D34 00005DF8  FC 60 08 90 */	fmr f3, f1
/* 00005D38 00005DFC  38 80 03 E8 */	li r4, 0x3e8
/* 00005D3C 00005E00  FC 80 08 90 */	fmr f4, f1
/* 00005D40 00005E04  FC A0 08 90 */	fmr f5, f1
/* 00005D44 00005E08  4B FF AD 2D */	bl effKumokumoN64Entry
/* 00005D48 00005E0C  90 7F 02 1C */	stw r3, 0x21c(r31)
.L_00005D4C:
/* 00005D4C 00005E10  83 DF 02 1C */	lwz r30, 0x21c(r31)
/* 00005D50 00005E14  7F E3 FB 78 */	mr r3, r31
/* 00005D54 00005E18  38 81 00 10 */	addi r4, r1, 0x10
/* 00005D58 00005E1C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00005D5C 00005E20  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005D60 00005E24  4B FF AD 11 */	bl BtlUnit_GetPos
/* 00005D64 00005E28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00005D68 00005E2C  3C 60 00 00 */	lis r3, float_10_jon_0000de1c@ha
/* 00005D6C 00005E30  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005D70 00005E34  C0 43 00 00 */	lfs f2, float_10_jon_0000de1c@l(r3)
/* 00005D74 00005E38  38 60 00 02 */	li r3, 0x2
/* 00005D78 00005E3C  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 00005D7C 00005E40  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00005D80 00005E44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00005D84 00005E48  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005D88 00005E4C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00005D8C 00005E50  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 00005D90 00005E54  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00005D94 00005E58  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005D98 00005E5C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 00005D9C 00005E60  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00005DA0 00005E64  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005DA4 00005E68  D0 04 00 5C */	stfs f0, 0x5c(r4)
/* 00005DA8 00005E6C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005DAC 00005E70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005DB0 00005E74  7C 08 03 A6 */	mtlr r0
/* 00005DB4 00005E78  38 21 00 20 */	addi r1, r1, 0x20
/* 00005DB8 00005E7C  4E 80 00 20 */	blr
.endfn eff_ice_barrier

# 0x00006C40..0x00006DF0 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x6C40 | size: 0x10
.obj str_btl_un_bllizard_jon_0000dc70, local
	.string "btl_un_bllizard"
.endobj str_btl_un_bllizard_jon_0000dc70

# .rodata:0x10 | 0x6C50 | size: 0x16
.obj str_SFX_ENM_KUMO_DAMAGED_jon_0000dc80, local
	.string "SFX_ENM_KUMO_DAMAGED1"
.endobj str_SFX_ENM_KUMO_DAMAGED_jon_0000dc80

# .rodata:0x26 | 0x6C66 | size: 0x2
.obj gap_03_00006C66_rodata, global
.hidden gap_03_00006C66_rodata
	.2byte 0x0000
.endobj gap_03_00006C66_rodata

# .rodata:0x28 | 0x6C68 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000dc98, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000dc98

# .rodata:0x3D | 0x6C7D | size: 0x3
.obj gap_03_00006C7D_rodata, global
.hidden gap_03_00006C7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C7D_rodata

# .rodata:0x40 | 0x6C80 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000dcb0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000dcb0

# .rodata:0x54 | 0x6C94 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000dcc4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000dcc4

# .rodata:0x6D | 0x6CAD | size: 0x3
.obj gap_03_00006CAD_rodata, global
.hidden gap_03_00006CAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CAD_rodata

# .rodata:0x70 | 0x6CB0 | size: 0xA
.obj str_c_kmoon_b_jon_0000dce0, local
	.string "c_kmoon_b"
.endobj str_c_kmoon_b_jon_0000dce0

# .rodata:0x7A | 0x6CBA | size: 0x2
.obj gap_03_00006CBA_rodata, global
.hidden gap_03_00006CBA_rodata
	.2byte 0x0000
.endobj gap_03_00006CBA_rodata

# .rodata:0x7C | 0x6CBC | size: 0x4
.obj str_R_1_jon_0000dcec, local
	.string "R_1"
.endobj str_R_1_jon_0000dcec

# .rodata:0x80 | 0x6CC0 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE3_jon_0000dcf0, local
	.string "SFX_ENM_KUMO_MOVE3"
.endobj str_SFX_ENM_KUMO_MOVE3_jon_0000dcf0

# .rodata:0x93 | 0x6CD3 | size: 0x1
.obj gap_03_00006CD3_rodata, global
.hidden gap_03_00006CD3_rodata
	.byte 0x00
.endobj gap_03_00006CD3_rodata

# .rodata:0x94 | 0x6CD4 | size: 0x1A
.obj str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd04, local
	.string "SFX_ENM_BLIZ_KUMO_CHARGE1"
.endobj str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd04

# .rodata:0xAE | 0x6CEE | size: 0x2
.obj gap_03_00006CEE_rodata, global
.hidden gap_03_00006CEE_rodata
	.2byte 0x0000
.endobj gap_03_00006CEE_rodata

# .rodata:0xB0 | 0x6CF0 | size: 0x5
.obj str_A_2B_jon_0000dd20, local
	.string "A_2B"
.endobj str_A_2B_jon_0000dd20

# .rodata:0xB5 | 0x6CF5 | size: 0x3
.obj gap_03_00006CF5_rodata, global
.hidden gap_03_00006CF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CF5_rodata

# .rodata:0xB8 | 0x6CF8 | size: 0x21
.obj str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd28, local
	.string "SFX_ENM_BLIZ_KUMO_CHARGE_ATTACK1"
.endobj str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd28

# .rodata:0xD9 | 0x6D19 | size: 0x3
.obj gap_03_00006D19_rodata, global
.hidden gap_03_00006D19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D19_rodata

# .rodata:0xDC | 0x6D1C | size: 0x1
.obj zero_jon_0000dd4c, local
	.byte 0x00
.endobj zero_jon_0000dd4c

# .rodata:0xDD | 0x6D1D | size: 0x3
.obj gap_03_00006D1D_rodata, global
.hidden gap_03_00006D1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D1D_rodata

# .rodata:0xE0 | 0x6D20 | size: 0xD
.obj str_kumokumo_n64_jon_0000dd50, local
	.string "kumokumo_n64"
.endobj str_kumokumo_n64_jon_0000dd50

# .rodata:0xED | 0x6D2D | size: 0x3
.obj gap_03_00006D2D_rodata, global
.hidden gap_03_00006D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D2D_rodata

# .rodata:0xF0 | 0x6D30 | size: 0x5
.obj str_A_3A_jon_0000dd60, local
	.string "A_3A"
.endobj str_A_3A_jon_0000dd60

# .rodata:0xF5 | 0x6D35 | size: 0x3
.obj gap_03_00006D35_rodata, global
.hidden gap_03_00006D35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D35_rodata

# .rodata:0xF8 | 0x6D38 | size: 0x5
.obj str_A_3B_jon_0000dd68, local
	.string "A_3B"
.endobj str_A_3B_jon_0000dd68

# .rodata:0xFD | 0x6D3D | size: 0x3
.obj gap_03_00006D3D_rodata, global
.hidden gap_03_00006D3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D3D_rodata

# .rodata:0x100 | 0x6D40 | size: 0x4
.obj str_S_1_jon_0000dd70, local
	.string "S_1"
.endobj str_S_1_jon_0000dd70

# .rodata:0x104 | 0x6D44 | size: 0x4
.obj str_N_1_jon_0000dd74, local
	.string "N_1"
.endobj str_N_1_jon_0000dd74

# .rodata:0x108 | 0x6D48 | size: 0x4
.obj str_Y_1_jon_0000dd78, local
	.string "Y_1"
.endobj str_Y_1_jon_0000dd78

# .rodata:0x10C | 0x6D4C | size: 0x4
.obj str_K_1_jon_0000dd7c, local
	.string "K_1"
.endobj str_K_1_jon_0000dd7c

# .rodata:0x110 | 0x6D50 | size: 0x4
.obj str_X_1_jon_0000dd80, local
	.string "X_1"
.endobj str_X_1_jon_0000dd80

# .rodata:0x114 | 0x6D54 | size: 0x4
.obj str_Q_1_jon_0000dd84, local
	.string "Q_1"
.endobj str_Q_1_jon_0000dd84

# .rodata:0x118 | 0x6D58 | size: 0x4
.obj str_A_1_jon_0000dd88, local
	.string "A_1"
.endobj str_A_1_jon_0000dd88

# .rodata:0x11C | 0x6D5C | size: 0x4
.obj str_D_1_jon_0000dd8c, local
	.string "D_1"
.endobj str_D_1_jon_0000dd8c

# .rodata:0x120 | 0x6D60 | size: 0x4
.obj str_W_1_jon_0000dd90, local
	.string "W_1"
.endobj str_W_1_jon_0000dd90

# .rodata:0x124 | 0x6D64 | size: 0x4
.obj str_T_1_jon_0000dd94, local
	.string "T_1"
.endobj str_T_1_jon_0000dd94

# .rodata:0x128 | 0x6D68 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE4_jon_0000dd98, local
	.string "SFX_ENM_KUMO_MOVE4"
.endobj str_SFX_ENM_KUMO_MOVE4_jon_0000dd98

# .rodata:0x13B | 0x6D7B | size: 0x1
.obj gap_03_00006D7B_rodata, global
.hidden gap_03_00006D7B_rodata
	.byte 0x00
.endobj gap_03_00006D7B_rodata

# .rodata:0x13C | 0x6D7C | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE5_jon_0000ddac, local
	.string "SFX_ENM_KUMO_MOVE5"
.endobj str_SFX_ENM_KUMO_MOVE5_jon_0000ddac

# .rodata:0x14F | 0x6D8F | size: 0x1
.obj gap_03_00006D8F_rodata, global
.hidden gap_03_00006D8F_rodata
	.byte 0x00
.endobj gap_03_00006D8F_rodata

# .rodata:0x150 | 0x6D90 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE1_jon_0000ddc0, local
	.string "SFX_ENM_KUMO_MOVE1"
.endobj str_SFX_ENM_KUMO_MOVE1_jon_0000ddc0

# .rodata:0x163 | 0x6DA3 | size: 0x1
.obj gap_03_00006DA3_rodata, global
.hidden gap_03_00006DA3_rodata
	.byte 0x00
.endobj gap_03_00006DA3_rodata

# .rodata:0x164 | 0x6DA4 | size: 0x15
.obj str_SFX_ENM_KUMO_ATTACK1_jon_0000ddd4, local
	.string "SFX_ENM_KUMO_ATTACK1"
.endobj str_SFX_ENM_KUMO_ATTACK1_jon_0000ddd4

# .rodata:0x179 | 0x6DB9 | size: 0x3
.obj gap_03_00006DB9_rodata, global
.hidden gap_03_00006DB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006DB9_rodata

# .rodata:0x17C | 0x6DBC | size: 0x5
.obj str_A_2A_jon_0000ddec, local
	.string "A_2A"
.endobj str_A_2A_jon_0000ddec

# .rodata:0x181 | 0x6DC1 | size: 0x3
.obj gap_03_00006DC1_rodata, global
.hidden gap_03_00006DC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006DC1_rodata

# .rodata:0x184 | 0x6DC4 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE2_jon_0000ddf4, local
	.string "SFX_ENM_KUMO_MOVE2"
.endobj str_SFX_ENM_KUMO_MOVE2_jon_0000ddf4

# .rodata:0x197 | 0x6DD7 | size: 0x1
.obj gap_03_00006DD7_rodata, global
.hidden gap_03_00006DD7_rodata
	.byte 0x00
.endobj gap_03_00006DD7_rodata

# .rodata:0x198 | 0x6DD8 | size: 0x5
.obj str_A_1A_jon_0000de08, local
	.string "A_1A"
.endobj str_A_1A_jon_0000de08
	.byte 0x00, 0x00, 0x00

# .rodata:0x1A0 | 0x6DE0 | size: 0x4
.obj zero_jon_0000de10, local
	.float 0
.endobj zero_jon_0000de10

# .rodata:0x1A4 | 0x6DE4 | size: 0x4
.obj float_neg1000_jon_0000de14, local
	.float -1000
.endobj float_neg1000_jon_0000de14

# .rodata:0x1A8 | 0x6DE8 | size: 0x4
.obj float_1_jon_0000de18, local
	.float 1
.endobj float_1_jon_0000de18

# .rodata:0x1AC | 0x6DEC | size: 0x4
.obj float_10_jon_0000de1c, local
	.float 10
.endobj float_10_jon_0000de1c

# 0x000611B8..0x00062778 | size: 0x15C0
.data
.balign 8

# .data:0x0 | 0x611B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x611C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x611C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x611C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x611CC | size: 0x4
.obj gap_04_000611CC_data, global
.hidden gap_04_000611CC_data
	.4byte 0x00000000
.endobj gap_04_000611CC_data

# .data:0x18 | 0x611D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x611D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x611DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x611E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x611E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x611EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x611F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x611F4 | size: 0x4
.obj gap_04_000611F4_data, global
.hidden gap_04_000611F4_data
	.4byte 0x00000000
.endobj gap_04_000611F4_data

# .data:0x40 | 0x611F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x61200 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x61204 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x61208 | size: 0xC4
.obj unit_bllizard_14_data_61208, global
	.4byte 0x00000070
	.4byte str_btl_un_bllizard_jon_0000dc70
	.4byte 0x00090000
	.4byte 0x01011900
	.4byte 0x04460032
	.4byte 0x270F0023
	.4byte 0x001E0004
	.4byte 0x001E0000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x418C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x418C0000
	.4byte 0x419C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x41F00000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KUMO_DAMAGED_jon_0000dc80
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000dc98
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000dcb0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000dcc4
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_bllizard_14_data_61208

# .data:0x114 | 0x612CC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x612D1 | size: 0x3
.obj gap_04_000612D1_data, global
.hidden gap_04_000612D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000612D1_data

# .data:0x11C | 0x612D4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00010300
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x612D9 | size: 0x3
.obj gap_04_000612D9_data, global
.hidden gap_04_000612D9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000612D9_data

# .data:0x124 | 0x612DC | size: 0x16
.obj regist, local
	.4byte 0x41415F64
	.4byte 0x3C006400
	.4byte 0x644B644B
	.4byte 0x645A4146
	.4byte 0x55644164
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x612F2 | size: 0x2
.obj gap_04_000612F2_data, global
.hidden gap_04_000612F2_data
	.2byte 0x0000
.endobj gap_04_000612F2_data

# .data:0x13C | 0x612F4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_bllizard_jon_0000dc70
	.4byte str_c_kmoon_b_jon_0000dce0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x001E001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x188 | 0x61340 | size: 0xC0
.obj weapon_bllizard_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000020
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_bllizard_attack

# .data:0x248 | 0x61400 | size: 0xC0
.obj weapon_bllizard_bllizard_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20001000
	.4byte 0x02000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x80000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0200
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
.endobj weapon_bllizard_bllizard_attack

# .data:0x308 | 0x614C0 | size: 0x114
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
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000040
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bllizard_bllizard_attack
	.4byte 0x0001005E
	.4byte bllizard_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000046
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
	.4byte 0x00000046
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bllizard_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x41C | 0x615D4 | size: 0x5A4
.obj bllizard_event, local
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
	.4byte 0x000000FA
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
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000040
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_jon_0000dcec
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_jon_0000dcf0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
	.4byte 0x0000000F
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd04
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000dd20
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd28
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xF24A8E80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24A8280
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_jon_0000dd4c
	.4byte str_kumokumo_n64_jon_0000dd50
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0000008C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_jon_0000dd4c
	.4byte str_kumokumo_n64_jon_0000dd50
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0000008C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_jon_0000dd60
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_jon_0000dd68
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
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
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_jon_0000dcec
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_jon_0000dcf0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000dd70
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bllizard_event

# .data:0x9C0 | 0x61B78 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000dd74
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000dd78
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000dd78
	.4byte 0x00000005
	.4byte str_K_1_jon_0000dd7c
	.4byte 0x00000004
	.4byte str_X_1_jon_0000dd80
	.4byte 0x00000003
	.4byte str_X_1_jon_0000dd80
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000dd70
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000dd84
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000dd84
	.4byte 0x0000001F
	.4byte str_A_1_jon_0000dd88
	.4byte 0x00000027
	.4byte str_D_1_jon_0000dd8c
	.4byte 0x00000028
	.4byte str_W_1_jon_0000dd90
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000dcec
	.4byte 0x00000038
	.4byte str_X_1_jon_0000dd80
	.4byte 0x00000039
	.4byte str_X_1_jon_0000dd80
	.4byte 0x00000041
	.4byte str_T_1_jon_0000dd94
	.4byte 0x00000045
	.4byte str_S_1_jon_0000dd70
.endobj pose_table

# .data:0xA48 | 0x61C00 | size: 0x18
.obj data_table, local
	.4byte 0x00000029
	.4byte counter_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xA60 | 0x61C18 | size: 0x94
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte attack_event
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
	.4byte 0x0001005C
	.4byte barrier_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xAF4 | 0x61CAC | size: 0x94
.obj barrier_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000040
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte eff_ice_barrier
	.4byte 0xFFFFFFFE
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte eff_ice_barrier_end
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj barrier_event

# .data:0xB88 | 0x61D40 | size: 0x4C
.obj dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_first_attack_pos

# .data:0xBD4 | 0x61D8C | size: 0x90
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
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
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000040
	.4byte 0x0002005B
	.4byte eff_ice_barrier_end
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xC64 | 0x61E1C | size: 0x8
.obj counter_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_event

# .data:0xC6C | 0x61E24 | size: 0x230
.obj unison_phase_event, local
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
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000040
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE4_jon_0000dd98
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE5_jon_0000ddac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0xE9C | 0x62054 | size: 0x608
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE1_jon_0000ddc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A76
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_ATTACK1_jon_0000ddd4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_jon_0000ddec
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
	.4byte 0xFFFFFFD8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE2_jon_0000ddf4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jon_0000de08
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0xFFFFFFD8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_jon_0000dcf0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000028
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000dd70
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x14A4 | 0x6265C | size: 0xE8
.obj charge_event, local
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
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BLIZ_KUMO_CH_jon_0000dd04
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000040
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_jon_0000ddec
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000dd20
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000dd70
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x158C | 0x62744 | size: 0x30
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x15BC | 0x62774 | size: 0x4
.obj gap_04_00062774_data, global
.hidden gap_04_00062774_data
	.4byte 0x00000000
.endobj gap_04_00062774_data
