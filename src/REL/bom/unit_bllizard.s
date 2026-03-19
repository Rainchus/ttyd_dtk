.include "macros.inc"
.file "unit_bllizard.o"

# 0x00005D88..0x00005F00 | size: 0x178
.text
.balign 4

# .text:0x0 | 0x5D88 | size: 0x74
.fn eff_ice_barrier_end, local
/* 00005D88 00005E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005D8C 00005E50  7C 08 02 A6 */	mflr r0
/* 00005D90 00005E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005D94 00005E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00005D98 00005E5C  7C 7F 1B 78 */	mr r31, r3
/* 00005D9C 00005E60  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005DA0 00005E64  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005DA4 00005E68  4B FF A2 5D */	bl evtGetValue
/* 00005DA8 00005E6C  7C 64 1B 78 */	mr r4, r3
/* 00005DAC 00005E70  7F E3 FB 78 */	mr r3, r31
/* 00005DB0 00005E74  4B FF A2 51 */	bl BattleTransID
/* 00005DB4 00005E78  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005DB8 00005E7C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005DBC 00005E80  7C 64 1B 78 */	mr r4, r3
/* 00005DC0 00005E84  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005DC4 00005E88  4B FF A2 3D */	bl BattleGetUnitPtr
/* 00005DC8 00005E8C  7C 7F 1B 78 */	mr r31, r3
/* 00005DCC 00005E90  80 63 02 1C */	lwz r3, 0x21c(r3)
/* 00005DD0 00005E94  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005DD4 00005E98  41 82 00 10 */	beq .L_00005DE4
/* 00005DD8 00005E9C  4B FF A2 29 */	bl effDelete
/* 00005DDC 00005EA0  38 00 00 00 */	li r0, 0x0
/* 00005DE0 00005EA4  90 1F 02 1C */	stw r0, 0x21c(r31)
.L_00005DE4:
/* 00005DE4 00005EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005DE8 00005EAC  38 60 00 02 */	li r3, 0x2
/* 00005DEC 00005EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00005DF0 00005EB4  7C 08 03 A6 */	mtlr r0
/* 00005DF4 00005EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 00005DF8 00005EBC  4E 80 00 20 */	blr
.endfn eff_ice_barrier_end

# .text:0x74 | 0x5DFC | size: 0x104
.fn eff_ice_barrier, local
/* 00005DFC 00005EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005E00 00005EC4  7C 08 02 A6 */	mflr r0
/* 00005E04 00005EC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005E08 00005ECC  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005E0C 00005ED0  7C 9E 23 78 */	mr r30, r4
/* 00005E10 00005ED4  7C 7F 1B 78 */	mr r31, r3
/* 00005E14 00005ED8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005E18 00005EDC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005E1C 00005EE0  4B FF A1 E5 */	bl evtGetValue
/* 00005E20 00005EE4  7C 64 1B 78 */	mr r4, r3
/* 00005E24 00005EE8  7F E3 FB 78 */	mr r3, r31
/* 00005E28 00005EEC  4B FF A1 D9 */	bl BattleTransID
/* 00005E2C 00005EF0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005E30 00005EF4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005E34 00005EF8  7C 64 1B 78 */	mr r4, r3
/* 00005E38 00005EFC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005E3C 00005F00  4B FF A1 C5 */	bl BattleGetUnitPtr
/* 00005E40 00005F04  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00005E44 00005F08  7C 7F 1B 78 */	mr r31, r3
/* 00005E48 00005F0C  41 82 00 48 */	beq .L_00005E90
/* 00005E4C 00005F10  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 00005E50 00005F14  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005E54 00005F18  40 82 00 3C */	bne .L_00005E90
/* 00005E58 00005F1C  3C 60 00 00 */	lis r3, zero_bom_00008458@ha
/* 00005E5C 00005F20  3C 80 00 00 */	lis r4, float_neg1000_bom_0000845c@ha
/* 00005E60 00005F24  38 A3 00 00 */	addi r5, r3, zero_bom_00008458@l
/* 00005E64 00005F28  C0 44 00 00 */	lfs f2, float_neg1000_bom_0000845c@l(r4)
/* 00005E68 00005F2C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00005E6C 00005F30  3C 60 00 00 */	lis r3, float_1_bom_00008460@ha
/* 00005E70 00005F34  C0 C3 00 00 */	lfs f6, float_1_bom_00008460@l(r3)
/* 00005E74 00005F38  38 60 00 03 */	li r3, 0x3
/* 00005E78 00005F3C  FC 60 08 90 */	fmr f3, f1
/* 00005E7C 00005F40  38 80 03 E8 */	li r4, 0x3e8
/* 00005E80 00005F44  FC 80 08 90 */	fmr f4, f1
/* 00005E84 00005F48  FC A0 08 90 */	fmr f5, f1
/* 00005E88 00005F4C  4B FF A1 79 */	bl effKumokumoN64Entry
/* 00005E8C 00005F50  90 7F 02 1C */	stw r3, 0x21c(r31)
.L_00005E90:
/* 00005E90 00005F54  83 DF 02 1C */	lwz r30, 0x21c(r31)
/* 00005E94 00005F58  7F E3 FB 78 */	mr r3, r31
/* 00005E98 00005F5C  38 81 00 10 */	addi r4, r1, 0x10
/* 00005E9C 00005F60  38 A1 00 0C */	addi r5, r1, 0xc
/* 00005EA0 00005F64  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005EA4 00005F68  4B FF A1 5D */	bl BtlUnit_GetPos
/* 00005EA8 00005F6C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00005EAC 00005F70  3C 60 00 00 */	lis r3, float_10_bom_00008464@ha
/* 00005EB0 00005F74  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005EB4 00005F78  C0 43 00 00 */	lfs f2, float_10_bom_00008464@l(r3)
/* 00005EB8 00005F7C  38 60 00 02 */	li r3, 0x2
/* 00005EBC 00005F80  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 00005EC0 00005F84  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00005EC4 00005F88  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00005EC8 00005F8C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005ECC 00005F90  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00005ED0 00005F94  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 00005ED4 00005F98  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00005ED8 00005F9C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005EDC 00005FA0  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 00005EE0 00005FA4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00005EE4 00005FA8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00005EE8 00005FAC  D0 04 00 5C */	stfs f0, 0x5c(r4)
/* 00005EEC 00005FB0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005EF0 00005FB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005EF4 00005FB8  7C 08 03 A6 */	mtlr r0
/* 00005EF8 00005FBC  38 21 00 20 */	addi r1, r1, 0x20
/* 00005EFC 00005FC0  4E 80 00 20 */	blr
.endfn eff_ice_barrier

# 0x00002058..0x00002208 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x2058 | size: 0x10
.obj str_btl_un_bllizard_bom_000082b8, local
	.string "btl_un_bllizard"
.endobj str_btl_un_bllizard_bom_000082b8

# .rodata:0x10 | 0x2068 | size: 0x16
.obj str_SFX_ENM_KUMO_DAMAGED_bom_000082c8, local
	.string "SFX_ENM_KUMO_DAMAGED1"
.endobj str_SFX_ENM_KUMO_DAMAGED_bom_000082c8

# .rodata:0x26 | 0x207E | size: 0x2
.obj gap_03_0000207E_rodata, global
.hidden gap_03_0000207E_rodata
	.2byte 0x0000
.endobj gap_03_0000207E_rodata

# .rodata:0x28 | 0x2080 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_bom_000082e0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_bom_000082e0

# .rodata:0x3D | 0x2095 | size: 0x3
.obj gap_03_00002095_rodata, global
.hidden gap_03_00002095_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002095_rodata

# .rodata:0x40 | 0x2098 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_bom_000082f8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_bom_000082f8

# .rodata:0x54 | 0x20AC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_bom_0000830c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_bom_0000830c

# .rodata:0x6D | 0x20C5 | size: 0x3
.obj gap_03_000020C5_rodata, global
.hidden gap_03_000020C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020C5_rodata

# .rodata:0x70 | 0x20C8 | size: 0xA
.obj str_c_kmoon_b_bom_00008328, local
	.string "c_kmoon_b"
.endobj str_c_kmoon_b_bom_00008328

# .rodata:0x7A | 0x20D2 | size: 0x2
.obj gap_03_000020D2_rodata, global
.hidden gap_03_000020D2_rodata
	.2byte 0x0000
.endobj gap_03_000020D2_rodata

# .rodata:0x7C | 0x20D4 | size: 0x4
.obj str_R_1_bom_00008334, local
	.string "R_1"
.endobj str_R_1_bom_00008334

# .rodata:0x80 | 0x20D8 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE3_bom_00008338, local
	.string "SFX_ENM_KUMO_MOVE3"
.endobj str_SFX_ENM_KUMO_MOVE3_bom_00008338

# .rodata:0x93 | 0x20EB | size: 0x1
.obj gap_03_000020EB_rodata, global
.hidden gap_03_000020EB_rodata
	.byte 0x00
.endobj gap_03_000020EB_rodata

# .rodata:0x94 | 0x20EC | size: 0x1A
.obj str_SFX_ENM_BLIZ_KUMO_CH_bom_0000834c, local
	.string "SFX_ENM_BLIZ_KUMO_CHARGE1"
.endobj str_SFX_ENM_BLIZ_KUMO_CH_bom_0000834c

# .rodata:0xAE | 0x2106 | size: 0x2
.obj gap_03_00002106_rodata, global
.hidden gap_03_00002106_rodata
	.2byte 0x0000
.endobj gap_03_00002106_rodata

# .rodata:0xB0 | 0x2108 | size: 0x5
.obj str_A_2B_bom_00008368, local
	.string "A_2B"
.endobj str_A_2B_bom_00008368

# .rodata:0xB5 | 0x210D | size: 0x3
.obj gap_03_0000210D_rodata, global
.hidden gap_03_0000210D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000210D_rodata

# .rodata:0xB8 | 0x2110 | size: 0x21
.obj str_SFX_ENM_BLIZ_KUMO_CH_bom_00008370, local
	.string "SFX_ENM_BLIZ_KUMO_CHARGE_ATTACK1"
.endobj str_SFX_ENM_BLIZ_KUMO_CH_bom_00008370

# .rodata:0xD9 | 0x2131 | size: 0x3
.obj gap_03_00002131_rodata, global
.hidden gap_03_00002131_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002131_rodata

# .rodata:0xDC | 0x2134 | size: 0x1
.obj zero_bom_00008394, local
	.byte 0x00
.endobj zero_bom_00008394

# .rodata:0xDD | 0x2135 | size: 0x3
.obj gap_03_00002135_rodata, global
.hidden gap_03_00002135_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002135_rodata

# .rodata:0xE0 | 0x2138 | size: 0xD
.obj str_kumokumo_n64_bom_00008398, local
	.string "kumokumo_n64"
.endobj str_kumokumo_n64_bom_00008398

# .rodata:0xED | 0x2145 | size: 0x3
.obj gap_03_00002145_rodata, global
.hidden gap_03_00002145_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002145_rodata

# .rodata:0xF0 | 0x2148 | size: 0x5
.obj str_A_3A_bom_000083a8, local
	.string "A_3A"
.endobj str_A_3A_bom_000083a8

# .rodata:0xF5 | 0x214D | size: 0x3
.obj gap_03_0000214D_rodata, global
.hidden gap_03_0000214D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000214D_rodata

# .rodata:0xF8 | 0x2150 | size: 0x5
.obj str_A_3B_bom_000083b0, local
	.string "A_3B"
.endobj str_A_3B_bom_000083b0

# .rodata:0xFD | 0x2155 | size: 0x3
.obj gap_03_00002155_rodata, global
.hidden gap_03_00002155_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002155_rodata

# .rodata:0x100 | 0x2158 | size: 0x4
.obj str_S_1_bom_000083b8, local
	.string "S_1"
.endobj str_S_1_bom_000083b8

# .rodata:0x104 | 0x215C | size: 0x4
.obj str_N_1_bom_000083bc, local
	.string "N_1"
.endobj str_N_1_bom_000083bc

# .rodata:0x108 | 0x2160 | size: 0x4
.obj str_Y_1_bom_000083c0, local
	.string "Y_1"
.endobj str_Y_1_bom_000083c0

# .rodata:0x10C | 0x2164 | size: 0x4
.obj str_K_1_bom_000083c4, local
	.string "K_1"
.endobj str_K_1_bom_000083c4

# .rodata:0x110 | 0x2168 | size: 0x4
.obj str_X_1_bom_000083c8, local
	.string "X_1"
.endobj str_X_1_bom_000083c8

# .rodata:0x114 | 0x216C | size: 0x4
.obj str_Q_1_bom_000083cc, local
	.string "Q_1"
.endobj str_Q_1_bom_000083cc

# .rodata:0x118 | 0x2170 | size: 0x4
.obj str_A_1_bom_000083d0, local
	.string "A_1"
.endobj str_A_1_bom_000083d0

# .rodata:0x11C | 0x2174 | size: 0x4
.obj str_D_1_bom_000083d4, local
	.string "D_1"
.endobj str_D_1_bom_000083d4

# .rodata:0x120 | 0x2178 | size: 0x4
.obj str_W_1_bom_000083d8, local
	.string "W_1"
.endobj str_W_1_bom_000083d8

# .rodata:0x124 | 0x217C | size: 0x4
.obj str_T_1_bom_000083dc, local
	.string "T_1"
.endobj str_T_1_bom_000083dc

# .rodata:0x128 | 0x2180 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE4_bom_000083e0, local
	.string "SFX_ENM_KUMO_MOVE4"
.endobj str_SFX_ENM_KUMO_MOVE4_bom_000083e0

# .rodata:0x13B | 0x2193 | size: 0x1
.obj gap_03_00002193_rodata, global
.hidden gap_03_00002193_rodata
	.byte 0x00
.endobj gap_03_00002193_rodata

# .rodata:0x13C | 0x2194 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE5_bom_000083f4, local
	.string "SFX_ENM_KUMO_MOVE5"
.endobj str_SFX_ENM_KUMO_MOVE5_bom_000083f4

# .rodata:0x14F | 0x21A7 | size: 0x1
.obj gap_03_000021A7_rodata, global
.hidden gap_03_000021A7_rodata
	.byte 0x00
.endobj gap_03_000021A7_rodata

# .rodata:0x150 | 0x21A8 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE1_bom_00008408, local
	.string "SFX_ENM_KUMO_MOVE1"
.endobj str_SFX_ENM_KUMO_MOVE1_bom_00008408

# .rodata:0x163 | 0x21BB | size: 0x1
.obj gap_03_000021BB_rodata, global
.hidden gap_03_000021BB_rodata
	.byte 0x00
.endobj gap_03_000021BB_rodata

# .rodata:0x164 | 0x21BC | size: 0x15
.obj str_SFX_ENM_KUMO_ATTACK1_bom_0000841c, local
	.string "SFX_ENM_KUMO_ATTACK1"
.endobj str_SFX_ENM_KUMO_ATTACK1_bom_0000841c

# .rodata:0x179 | 0x21D1 | size: 0x3
.obj gap_03_000021D1_rodata, global
.hidden gap_03_000021D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021D1_rodata

# .rodata:0x17C | 0x21D4 | size: 0x5
.obj str_A_2A_bom_00008434, local
	.string "A_2A"
.endobj str_A_2A_bom_00008434

# .rodata:0x181 | 0x21D9 | size: 0x3
.obj gap_03_000021D9_rodata, global
.hidden gap_03_000021D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021D9_rodata

# .rodata:0x184 | 0x21DC | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE2_bom_0000843c, local
	.string "SFX_ENM_KUMO_MOVE2"
.endobj str_SFX_ENM_KUMO_MOVE2_bom_0000843c

# .rodata:0x197 | 0x21EF | size: 0x1
.obj gap_03_000021EF_rodata, global
.hidden gap_03_000021EF_rodata
	.byte 0x00
.endobj gap_03_000021EF_rodata

# .rodata:0x198 | 0x21F0 | size: 0x5
.obj str_A_1A_bom_00008450, local
	.string "A_1A"
.endobj str_A_1A_bom_00008450
	.byte 0x00, 0x00, 0x00

# .rodata:0x1A0 | 0x21F8 | size: 0x4
.obj zero_bom_00008458, local
	.float 0
.endobj zero_bom_00008458

# .rodata:0x1A4 | 0x21FC | size: 0x4
.obj float_neg1000_bom_0000845c, local
	.float -1000
.endobj float_neg1000_bom_0000845c

# .rodata:0x1A8 | 0x2200 | size: 0x4
.obj float_1_bom_00008460, local
	.float 1
.endobj float_1_bom_00008460

# .rodata:0x1AC | 0x2204 | size: 0x4
.obj float_10_bom_00008464, local
	.float 10
.endobj float_10_bom_00008464

# 0x0000B850..0x0000CE10 | size: 0x15C0
.data
.balign 8

# .data:0x0 | 0xB850 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xB858 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xB85C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xB860 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xB864 | size: 0x4
.obj gap_04_0000B864_data, global
.hidden gap_04_0000B864_data
	.4byte 0x00000000
.endobj gap_04_0000B864_data

# .data:0x18 | 0xB868 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xB870 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xB874 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xB878 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xB880 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xB884 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xB888 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xB88C | size: 0x4
.obj gap_04_0000B88C_data, global
.hidden gap_04_0000B88C_data
	.4byte 0x00000000
.endobj gap_04_0000B88C_data

# .data:0x40 | 0xB890 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xB898 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xB89C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xB8A0 | size: 0xC4
.obj unit_bllizard_3_data_B8A0, global
	.4byte 0x00000070
	.4byte str_btl_un_bllizard_bom_000082b8
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
	.4byte str_SFX_ENM_KUMO_DAMAGED_bom_000082c8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_bom_000082e0
	.4byte str_SFX_BTL_DAMAGE_ICE1_bom_000082f8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_bom_0000830c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_bllizard_3_data_B8A0

# .data:0x114 | 0xB964 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xB969 | size: 0x3
.obj gap_04_0000B969_data, global
.hidden gap_04_0000B969_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000B969_data

# .data:0x11C | 0xB96C | size: 0x5
.obj defence_attr, local
	.4byte 0x00010300
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xB971 | size: 0x3
.obj gap_04_0000B971_data, global
.hidden gap_04_0000B971_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000B971_data

# .data:0x124 | 0xB974 | size: 0x16
.obj regist, local
	.4byte 0x41415F64
	.4byte 0x3C006400
	.4byte 0x644B644B
	.4byte 0x645A4146
	.4byte 0x55644164
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0xB98A | size: 0x2
.obj gap_04_0000B98A_data, global
.hidden gap_04_0000B98A_data
	.2byte 0x0000
.endobj gap_04_0000B98A_data

# .data:0x13C | 0xB98C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_bllizard_bom_000082b8
	.4byte str_c_kmoon_b_bom_00008328
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

# .data:0x188 | 0xB9D8 | size: 0xC0
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

# .data:0x248 | 0xBA98 | size: 0xC0
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

# .data:0x308 | 0xBB58 | size: 0x114
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

# .data:0x41C | 0xBC6C | size: 0x5A4
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
	.4byte str_R_1_bom_00008334
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_bom_00008338
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
	.4byte str_SFX_ENM_BLIZ_KUMO_CH_bom_0000834c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_bom_00008368
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BLIZ_KUMO_CH_bom_00008370
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
	.4byte zero_bom_00008394
	.4byte str_kumokumo_n64_bom_00008398
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
	.4byte zero_bom_00008394
	.4byte str_kumokumo_n64_bom_00008398
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
	.4byte str_A_3A_bom_000083a8
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_bom_000083b0
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
	.4byte str_R_1_bom_00008334
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_bom_00008338
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
	.4byte str_S_1_bom_000083b8
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

# .data:0x9C0 | 0xC210 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_bom_000083bc
	.4byte 0x00000002
	.4byte str_Y_1_bom_000083c0
	.4byte 0x00000009
	.4byte str_Y_1_bom_000083c0
	.4byte 0x00000005
	.4byte str_K_1_bom_000083c4
	.4byte 0x00000004
	.4byte str_X_1_bom_000083c8
	.4byte 0x00000003
	.4byte str_X_1_bom_000083c8
	.4byte 0x0000001C
	.4byte str_S_1_bom_000083b8
	.4byte 0x0000001D
	.4byte str_Q_1_bom_000083cc
	.4byte 0x0000001E
	.4byte str_Q_1_bom_000083cc
	.4byte 0x0000001F
	.4byte str_A_1_bom_000083d0
	.4byte 0x00000027
	.4byte str_D_1_bom_000083d4
	.4byte 0x00000028
	.4byte str_W_1_bom_000083d8
	.4byte 0x0000002A
	.4byte str_R_1_bom_00008334
	.4byte 0x00000038
	.4byte str_X_1_bom_000083c8
	.4byte 0x00000039
	.4byte str_X_1_bom_000083c8
	.4byte 0x00000041
	.4byte str_T_1_bom_000083dc
	.4byte 0x00000045
	.4byte str_S_1_bom_000083b8
.endobj pose_table

# .data:0xA48 | 0xC298 | size: 0x18
.obj data_table, local
	.4byte 0x00000029
	.4byte counter_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xA60 | 0xC2B0 | size: 0x94
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

# .data:0xAF4 | 0xC344 | size: 0x94
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

# .data:0xB88 | 0xC3D8 | size: 0x4C
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

# .data:0xBD4 | 0xC424 | size: 0x90
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

# .data:0xC64 | 0xC4B4 | size: 0x8
.obj counter_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_event

# .data:0xC6C | 0xC4BC | size: 0x230
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
	.4byte str_SFX_ENM_KUMO_MOVE4_bom_000083e0
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
	.4byte str_SFX_ENM_KUMO_MOVE5_bom_000083f4
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

# .data:0xE9C | 0xC6EC | size: 0x608
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
	.4byte str_SFX_ENM_KUMO_MOVE1_bom_00008408
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
	.4byte str_SFX_ENM_KUMO_ATTACK1_bom_0000841c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_bom_00008434
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
	.4byte str_SFX_ENM_KUMO_MOVE2_bom_0000843c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_bom_00008450
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
	.4byte str_SFX_ENM_KUMO_MOVE3_bom_00008338
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
	.4byte str_S_1_bom_000083b8
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

# .data:0x14A4 | 0xCCF4 | size: 0xE8
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
	.4byte str_SFX_ENM_BLIZ_KUMO_CH_bom_0000834c
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
	.4byte str_A_2A_bom_00008434
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_bom_00008368
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
	.4byte str_S_1_bom_000083b8
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x158C | 0xCDDC | size: 0x30
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

# .data:0x15BC | 0xCE0C | size: 0x4
.obj gap_04_0000CE0C_data, global
.hidden gap_04_0000CE0C_data
	.4byte 0x00000000
.endobj gap_04_0000CE0C_data
