.include "macros.inc"
.file "aji_09.o"

# 0x000024D4..0x00002664 | size: 0x190
.text
.balign 4

# .text:0x0 | 0x24D4 | size: 0xDC
.fn check_kou_evt, local
/* 000024D4 00002598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000024D8 0000259C  7C 08 02 A6 */	mflr r0
/* 000024DC 000025A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 000024E0 000025A4  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 000024E4 000025A8  7C 7C 1B 78 */	mr r28, r3
/* 000024E8 000025AC  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000024EC 000025B0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000024F0 000025B4  48 00 3D 4D */	bl evtGetValue
/* 000024F4 000025B8  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000024F8 000025BC  7F 83 E3 78 */	mr r3, r28
/* 000024FC 000025C0  48 00 3D 41 */	bl evtGetValue
/* 00002500 000025C4  3C 80 F5 DE */	lis r4, 0xf5de
/* 00002504 000025C8  7C 7F 1B 78 */	mr r31, r3
/* 00002508 000025CC  38 84 01 80 */	addi r4, r4, 0x180
/* 0000250C 000025D0  3B A0 00 00 */	li r29, 0x0
/* 00002510 000025D4  38 60 00 00 */	li r3, 0x0
/* 00002514 000025D8  48 00 3D 29 */	bl evtGetValue
/* 00002518 000025DC  2C 03 00 A6 */	cmpwi r3, 0xa6
/* 0000251C 000025E0  40 82 00 20 */	bne .L_0000253C
/* 00002520 000025E4  3C 80 F8 40 */	lis r4, 0xf840
/* 00002524 000025E8  38 60 00 00 */	li r3, 0x0
/* 00002528 000025EC  38 84 6B EB */	addi r4, r4, 0x6beb
/* 0000252C 000025F0  48 00 3D 11 */	bl evtGetValue
/* 00002530 000025F4  2C 03 00 01 */	cmpwi r3, 0x1
/* 00002534 000025F8  40 82 00 08 */	bne .L_0000253C
/* 00002538 000025FC  3B A0 00 01 */	li r29, 0x1
.L_0000253C:
/* 0000253C 00002600  3C 80 F5 DE */	lis r4, 0xf5de
/* 00002540 00002604  38 60 00 00 */	li r3, 0x0
/* 00002544 00002608  38 84 01 80 */	addi r4, r4, 0x180
/* 00002548 0000260C  48 00 3C F5 */	bl evtGetValue
/* 0000254C 00002610  2C 03 00 A8 */	cmpwi r3, 0xa8
/* 00002550 00002614  40 82 00 38 */	bne .L_00002588
/* 00002554 00002618  3C 80 F8 40 */	lis r4, 0xf840
/* 00002558 0000261C  38 60 00 00 */	li r3, 0x0
/* 0000255C 00002620  38 84 6B EE */	addi r4, r4, 0x6bee
/* 00002560 00002624  48 00 3C DD */	bl evtGetValue
/* 00002564 00002628  2C 03 00 00 */	cmpwi r3, 0x0
/* 00002568 0000262C  40 82 00 20 */	bne .L_00002588
/* 0000256C 00002630  3C 80 F8 40 */	lis r4, 0xf840
/* 00002570 00002634  38 60 00 00 */	li r3, 0x0
/* 00002574 00002638  38 84 6B ED */	addi r4, r4, 0x6bed
/* 00002578 0000263C  48 00 3C C5 */	bl evtGetValue
/* 0000257C 00002640  7C 1F 18 00 */	cmpw r31, r3
/* 00002580 00002644  40 82 00 08 */	bne .L_00002588
/* 00002584 00002648  3B A0 00 01 */	li r29, 0x1
.L_00002588:
/* 00002588 0000264C  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 0000258C 00002650  7F 83 E3 78 */	mr r3, r28
/* 00002590 00002654  7F A5 EB 78 */	mr r5, r29
/* 00002594 00002658  48 00 3C A9 */	bl evtSetValue
/* 00002598 0000265C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000259C 00002660  38 60 00 02 */	li r3, 0x2
/* 000025A0 00002664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000025A4 00002668  7C 08 03 A6 */	mtlr r0
/* 000025A8 0000266C  38 21 00 20 */	addi r1, r1, 0x20
/* 000025AC 00002670  4E 80 00 20 */	blr
.endfn check_kou_evt

# .text:0xDC | 0x25B0 | size: 0x44
.fn peach_set_pose, local
/* 000025B0 00002674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000025B4 00002678  7C 08 02 A6 */	mflr r0
/* 000025B8 0000267C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000025BC 00002680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000025C0 00002684  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000025C4 00002688  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000025C8 0000268C  48 00 3C 75 */	bl evtGetValue
/* 000025CC 00002690  7C 7F 1B 78 */	mr r31, r3
/* 000025D0 00002694  48 00 3C 6D */	bl marioGetPtr
/* 000025D4 00002698  7F E3 FB 78 */	mr r3, r31
/* 000025D8 0000269C  48 00 3C 65 */	bl marioChgPose
/* 000025DC 000026A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000025E0 000026A4  38 60 00 02 */	li r3, 0x2
/* 000025E4 000026A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000025E8 000026AC  7C 08 03 A6 */	mtlr r0
/* 000025EC 000026B0  38 21 00 10 */	addi r1, r1, 0x10
/* 000025F0 000026B4  4E 80 00 20 */	blr
.endfn peach_set_pose

# .text:0x120 | 0x25F4 | size: 0x70
.fn dot_mario, local
/* 000025F4 000026B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000025F8 000026BC  7C 08 02 A6 */	mflr r0
/* 000025FC 000026C0  38 60 00 00 */	li r3, 0x0
/* 00002600 000026C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002604 000026C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00002608 000026CC  48 00 3C 35 */	bl partyGetPtr
/* 0000260C 000026D0  3C 80 00 00 */	lis r4, str_d_mario_aji_000132d4@ha
/* 00002610 000026D4  7C 7F 1B 78 */	mr r31, r3
/* 00002614 000026D8  38 04 00 00 */	addi r0, r4, str_d_mario_aji_000132d4@l
/* 00002618 000026DC  38 A0 00 00 */	li r5, 0x0
/* 0000261C 000026E0  38 80 00 00 */	li r4, 0x0
/* 00002620 000026E4  7C 03 03 78 */	mr r3, r0
/* 00002624 000026E8  48 00 3C 19 */	bl animGroupBaseAsync
/* 00002628 000026EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000262C 000026F0  40 82 00 0C */	bne .L_00002638
/* 00002630 000026F4  38 60 00 00 */	li r3, 0x0
/* 00002634 000026F8  48 00 00 1C */	b .L_00002650
.L_00002638:
/* 00002638 000026FC  38 60 00 01 */	li r3, 0x1
/* 0000263C 00002700  48 00 3C 01 */	bl marioSetFamicomMode
/* 00002640 00002704  7F E3 FB 78 */	mr r3, r31
/* 00002644 00002708  38 80 00 01 */	li r4, 0x1
/* 00002648 0000270C  48 00 3B F5 */	bl partySetFamicomMode
/* 0000264C 00002710  38 60 00 02 */	li r3, 0x2
.L_00002650:
/* 00002650 00002714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002654 00002718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00002658 0000271C  7C 08 03 A6 */	mtlr r0
/* 0000265C 00002720  38 21 00 10 */	addi r1, r1, 0x10
/* 00002660 00002724  4E 80 00 20 */	blr
.endfn dot_mario

# 0x00002038..0x00002478 | size: 0x440
.rodata
.balign 8

# .rodata:0x0 | 0x2038 | size: 0xA
.obj str_S_door1_2_aji_00012ea0, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00012ea0

# .rodata:0xA | 0x2042 | size: 0x2
.obj gap_03_00002042_rodata, global
.hidden gap_03_00002042_rodata
	.2byte 0x0000
.endobj gap_03_00002042_rodata

# .rodata:0xC | 0x2044 | size: 0xA
.obj str_S_door1_1_aji_00012eac, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00012eac

# .rodata:0x16 | 0x204E | size: 0x2
.obj gap_03_0000204E_rodata, global
.hidden gap_03_0000204E_rodata
	.2byte 0x0000
.endobj gap_03_0000204E_rodata

# .rodata:0x18 | 0x2050 | size: 0x7
.obj str_s_bero_aji_00012eb8, local
	.string "s_bero"
.endobj str_s_bero_aji_00012eb8

# .rodata:0x1F | 0x2057 | size: 0x1
.obj gap_03_00002057_rodata, global
.hidden gap_03_00002057_rodata
	.byte 0x00
.endobj gap_03_00002057_rodata

# .rodata:0x20 | 0x2058 | size: 0x7
.obj str_aji_01_aji_00012ec0, local
	.string "aji_01"
.endobj str_aji_01_aji_00012ec0

# .rodata:0x27 | 0x205F | size: 0x1
.obj gap_03_0000205F_rodata, global
.hidden gap_03_0000205F_rodata
	.byte 0x00
.endobj gap_03_0000205F_rodata

# .rodata:0x28 | 0x2060 | size: 0x9
.obj str_n_bero_4_aji_00012ec8, local
	.string "n_bero_4"
.endobj str_n_bero_4_aji_00012ec8

# .rodata:0x31 | 0x2069 | size: 0x3
.obj gap_03_00002069_rodata, global
.hidden gap_03_00002069_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002069_rodata

# .rodata:0x34 | 0x206C | size: 0xE
.obj str_peach_aji_133_aji_00012ed4, local
	.string "peach_aji_133"
.endobj str_peach_aji_133_aji_00012ed4

# .rodata:0x42 | 0x207A | size: 0x2
.obj gap_03_0000207A_rodata, global
.hidden gap_03_0000207A_rodata
	.2byte 0x0000
.endobj gap_03_0000207A_rodata

# .rodata:0x44 | 0x207C | size: 0x11
.obj str_peach_aji_155_01_aji_00012ee4, local
	.string "peach_aji_155_01"
.endobj str_peach_aji_155_01_aji_00012ee4

# .rodata:0x55 | 0x208D | size: 0x3
.obj gap_03_0000208D_rodata, global
.hidden gap_03_0000208D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000208D_rodata

# .rodata:0x58 | 0x2090 | size: 0x7
.obj str_aji_17_aji_00012ef8, local
	.string "aji_17"
.endobj str_aji_17_aji_00012ef8

# .rodata:0x5F | 0x2097 | size: 0x1
.obj gap_03_00002097_rodata, global
.hidden gap_03_00002097_rodata
	.byte 0x00
.endobj gap_03_00002097_rodata

# .rodata:0x60 | 0x2098 | size: 0x7
.obj str_w_bero_aji_00012f00, local
	.string "w_bero"
.endobj str_w_bero_aji_00012f00

# .rodata:0x67 | 0x209F | size: 0x1
.obj gap_03_0000209F_rodata, global
.hidden gap_03_0000209F_rodata
	.byte 0x00
.endobj gap_03_0000209F_rodata

# .rodata:0x68 | 0x20A0 | size: 0xE
.obj str_A_kou1_ka_omo_aji_00012f08, local
	.string "A_kou1_ka_omo"
.endobj str_A_kou1_ka_omo_aji_00012f08

# .rodata:0x76 | 0x20AE | size: 0x2
.obj gap_03_000020AE_rodata, global
.hidden gap_03_000020AE_rodata
	.2byte 0x0000
.endobj gap_03_000020AE_rodata

# .rodata:0x78 | 0x20B0 | size: 0xA
.obj str_S_kou1_ka_aji_00012f18, local
	.string "S_kou1_ka"
.endobj str_S_kou1_ka_aji_00012f18

# .rodata:0x82 | 0x20BA | size: 0x2
.obj gap_03_000020BA_rodata, global
.hidden gap_03_000020BA_rodata
	.2byte 0x0000
.endobj gap_03_000020BA_rodata

# .rodata:0x84 | 0x20BC | size: 0xE
.obj str_A_kou1_ka_ura_aji_00012f24, local
	.string "A_kou1_ka_ura"
.endobj str_A_kou1_ka_ura_aji_00012f24

# .rodata:0x92 | 0x20CA | size: 0x2
.obj gap_03_000020CA_rodata, global
.hidden gap_03_000020CA_rodata
	.2byte 0x0000
.endobj gap_03_000020CA_rodata

# .rodata:0x94 | 0x20CC | size: 0x17
.obj str_SFX_STG7_CURTAIN_OPE_aji_00012f34, local
	.string "SFX_STG7_CURTAIN_OPEN1"
.endobj str_SFX_STG7_CURTAIN_OPE_aji_00012f34

# .rodata:0xAB | 0x20E3 | size: 0x1
.obj gap_03_000020E3_rodata, global
.hidden gap_03_000020E3_rodata
	.byte 0x00
.endobj gap_03_000020E3_rodata

# .rodata:0xAC | 0x20E4 | size: 0x18
.obj str_SFX_STG7_CURTAIN_CLO_aji_00012f4c, local
	.string "SFX_STG7_CURTAIN_CLOSE1"
.endobj str_SFX_STG7_CURTAIN_CLO_aji_00012f4c

# .rodata:0xC4 | 0x20FC | size: 0xE
.obj str_A_kou2_ka_omo_aji_00012f64, local
	.string "A_kou2_ka_omo"
.endobj str_A_kou2_ka_omo_aji_00012f64

# .rodata:0xD2 | 0x210A | size: 0x2
.obj gap_03_0000210A_rodata, global
.hidden gap_03_0000210A_rodata
	.2byte 0x0000
.endobj gap_03_0000210A_rodata

# .rodata:0xD4 | 0x210C | size: 0xA
.obj str_S_kou2_ka_aji_00012f74, local
	.string "S_kou2_ka"
.endobj str_S_kou2_ka_aji_00012f74

# .rodata:0xDE | 0x2116 | size: 0x2
.obj gap_03_00002116_rodata, global
.hidden gap_03_00002116_rodata
	.2byte 0x0000
.endobj gap_03_00002116_rodata

# .rodata:0xE0 | 0x2118 | size: 0xE
.obj str_A_kou2_ka_ura_aji_00012f80, local
	.string "A_kou2_ka_ura"
.endobj str_A_kou2_ka_ura_aji_00012f80

# .rodata:0xEE | 0x2126 | size: 0x2
.obj gap_03_00002126_rodata, global
.hidden gap_03_00002126_rodata
	.2byte 0x0000
.endobj gap_03_00002126_rodata

# .rodata:0xF0 | 0x2128 | size: 0x6
.obj str_tenjo_aji_00012f90, local
	.string "tenjo"
.endobj str_tenjo_aji_00012f90

# .rodata:0xF6 | 0x212E | size: 0x2
.obj gap_03_0000212E_rodata, global
.hidden gap_03_0000212E_rodata
	.2byte 0x0000
.endobj gap_03_0000212E_rodata

# .rodata:0xF8 | 0x2130 | size: 0x13
.obj str_BGM_EVT_DOT_MARIO1_aji_00012f98, local
	.string "BGM_EVT_DOT_MARIO1"
.endobj str_BGM_EVT_DOT_MARIO1_aji_00012f98

# .rodata:0x10B | 0x2143 | size: 0x1
.obj gap_03_00002143_rodata, global
.hidden gap_03_00002143_rodata
	.byte 0x00
.endobj gap_03_00002143_rodata

# .rodata:0x10C | 0x2144 | size: 0x9
.obj str_R_door_1_aji_00012fac, local
	.string "R_door_1"
.endobj str_R_door_1_aji_00012fac

# .rodata:0x115 | 0x214D | size: 0x3
.obj gap_03_0000214D_rodata, global
.hidden gap_03_0000214D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000214D_rodata

# .rodata:0x118 | 0x2150 | size: 0x9
.obj str_a_door_1_aji_00012fb8, local
	.string "a_door_1"
.endobj str_a_door_1_aji_00012fb8

# .rodata:0x121 | 0x2159 | size: 0x3
.obj gap_03_00002159_rodata, global
.hidden gap_03_00002159_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002159_rodata

# .rodata:0x124 | 0x215C | size: 0xF
.obj str_a_door_1_omote_aji_00012fc4, local
	.string "a_door_1_omote"
.endobj str_a_door_1_omote_aji_00012fc4

# .rodata:0x133 | 0x216B | size: 0x1
.obj gap_03_0000216B_rodata, global
.hidden gap_03_0000216B_rodata
	.byte 0x00
.endobj gap_03_0000216B_rodata

# .rodata:0x134 | 0x216C | size: 0xD
.obj str_a_door_1_ura_aji_00012fd4, local
	.string "a_door_1_ura"
.endobj str_a_door_1_ura_aji_00012fd4

# .rodata:0x141 | 0x2179 | size: 0x3
.obj gap_03_00002179_rodata, global
.hidden gap_03_00002179_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002179_rodata

# .rodata:0x144 | 0x217C | size: 0xA
.obj str_a_R_1_asi_aji_00012fe4, local
	.string "a_R_1_asi"
.endobj str_a_R_1_asi_aji_00012fe4

# .rodata:0x14E | 0x2186 | size: 0x2
.obj gap_03_00002186_rodata, global
.hidden gap_03_00002186_rodata
	.2byte 0x0000
.endobj gap_03_00002186_rodata

# .rodata:0x150 | 0x2188 | size: 0x9
.obj str_R_door_2_aji_00012ff0, local
	.string "R_door_2"
.endobj str_R_door_2_aji_00012ff0

# .rodata:0x159 | 0x2191 | size: 0x3
.obj gap_03_00002191_rodata, global
.hidden gap_03_00002191_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002191_rodata

# .rodata:0x15C | 0x2194 | size: 0x9
.obj str_a_door_2_aji_00012ffc, local
	.string "a_door_2"
.endobj str_a_door_2_aji_00012ffc

# .rodata:0x165 | 0x219D | size: 0x3
.obj gap_03_0000219D_rodata, global
.hidden gap_03_0000219D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000219D_rodata

# .rodata:0x168 | 0x21A0 | size: 0xF
.obj str_a_door_2_omote_aji_00013008, local
	.string "a_door_2_omote"
.endobj str_a_door_2_omote_aji_00013008

# .rodata:0x177 | 0x21AF | size: 0x1
.obj gap_03_000021AF_rodata, global
.hidden gap_03_000021AF_rodata
	.byte 0x00
.endobj gap_03_000021AF_rodata

# .rodata:0x178 | 0x21B0 | size: 0xD
.obj str_a_door_2_ura_aji_00013018, local
	.string "a_door_2_ura"
.endobj str_a_door_2_ura_aji_00013018

# .rodata:0x185 | 0x21BD | size: 0x3
.obj gap_03_000021BD_rodata, global
.hidden gap_03_000021BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021BD_rodata

# .rodata:0x188 | 0x21C0 | size: 0xA
.obj str_a_R_2_asi_aji_00013028, local
	.string "a_R_2_asi"
.endobj str_a_R_2_asi_aji_00013028

# .rodata:0x192 | 0x21CA | size: 0x2
.obj gap_03_000021CA_rodata, global
.hidden gap_03_000021CA_rodata
	.2byte 0x0000
.endobj gap_03_000021CA_rodata

# .rodata:0x194 | 0x21CC | size: 0x9
.obj str_R_door_3_aji_00013034, local
	.string "R_door_3"
.endobj str_R_door_3_aji_00013034

# .rodata:0x19D | 0x21D5 | size: 0x3
.obj gap_03_000021D5_rodata, global
.hidden gap_03_000021D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021D5_rodata

# .rodata:0x1A0 | 0x21D8 | size: 0x9
.obj str_a_door_3_aji_00013040, local
	.string "a_door_3"
.endobj str_a_door_3_aji_00013040

# .rodata:0x1A9 | 0x21E1 | size: 0x3
.obj gap_03_000021E1_rodata, global
.hidden gap_03_000021E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021E1_rodata

# .rodata:0x1AC | 0x21E4 | size: 0xF
.obj str_a_door_3_omote_aji_0001304c, local
	.string "a_door_3_omote"
.endobj str_a_door_3_omote_aji_0001304c

# .rodata:0x1BB | 0x21F3 | size: 0x1
.obj gap_03_000021F3_rodata, global
.hidden gap_03_000021F3_rodata
	.byte 0x00
.endobj gap_03_000021F3_rodata

# .rodata:0x1BC | 0x21F4 | size: 0xD
.obj str_a_door_3_ura_aji_0001305c, local
	.string "a_door_3_ura"
.endobj str_a_door_3_ura_aji_0001305c

# .rodata:0x1C9 | 0x2201 | size: 0x3
.obj gap_03_00002201_rodata, global
.hidden gap_03_00002201_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002201_rodata

# .rodata:0x1CC | 0x2204 | size: 0xA
.obj str_a_R_3_asi_aji_0001306c, local
	.string "a_R_3_asi"
.endobj str_a_R_3_asi_aji_0001306c

# .rodata:0x1D6 | 0x220E | size: 0x2
.obj gap_03_0000220E_rodata, global
.hidden gap_03_0000220E_rodata
	.2byte 0x0000
.endobj gap_03_0000220E_rodata

# .rodata:0x1D8 | 0x2210 | size: 0x9
.obj str_R_door_4_aji_00013078, local
	.string "R_door_4"
.endobj str_R_door_4_aji_00013078

# .rodata:0x1E1 | 0x2219 | size: 0x3
.obj gap_03_00002219_rodata, global
.hidden gap_03_00002219_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002219_rodata

# .rodata:0x1E4 | 0x221C | size: 0x9
.obj str_a_door_4_aji_00013084, local
	.string "a_door_4"
.endobj str_a_door_4_aji_00013084

# .rodata:0x1ED | 0x2225 | size: 0x3
.obj gap_03_00002225_rodata, global
.hidden gap_03_00002225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002225_rodata

# .rodata:0x1F0 | 0x2228 | size: 0xF
.obj str_a_door_4_omote_aji_00013090, local
	.string "a_door_4_omote"
.endobj str_a_door_4_omote_aji_00013090

# .rodata:0x1FF | 0x2237 | size: 0x1
.obj gap_03_00002237_rodata, global
.hidden gap_03_00002237_rodata
	.byte 0x00
.endobj gap_03_00002237_rodata

# .rodata:0x200 | 0x2238 | size: 0xD
.obj str_a_door_4_ura_aji_000130a0, local
	.string "a_door_4_ura"
.endobj str_a_door_4_ura_aji_000130a0

# .rodata:0x20D | 0x2245 | size: 0x3
.obj gap_03_00002245_rodata, global
.hidden gap_03_00002245_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002245_rodata

# .rodata:0x210 | 0x2248 | size: 0xA
.obj str_a_R_4_asi_aji_000130b0, local
	.string "a_R_4_asi"
.endobj str_a_R_4_asi_aji_000130b0

# .rodata:0x21A | 0x2252 | size: 0x2
.obj gap_03_00002252_rodata, global
.hidden gap_03_00002252_rodata
	.2byte 0x0000
.endobj gap_03_00002252_rodata

# .rodata:0x21C | 0x2254 | size: 0x17
.obj str_SFX_PEACH_LOCKER_OPE_aji_000130bc, local
	.string "SFX_PEACH_LOCKER_OPEN1"
.endobj str_SFX_PEACH_LOCKER_OPE_aji_000130bc

# .rodata:0x233 | 0x226B | size: 0x1
.obj gap_03_0000226B_rodata, global
.hidden gap_03_0000226B_rodata
	.byte 0x00
.endobj gap_03_0000226B_rodata

# .rodata:0x234 | 0x226C | size: 0x18
.obj str_SFX_PEACH_LOCKER_CLO_aji_000130d4, local
	.string "SFX_PEACH_LOCKER_CLOSE1"
.endobj str_SFX_PEACH_LOCKER_CLO_aji_000130d4

# .rodata:0x24C | 0x2284 | size: 0xE
.obj str_peach_aji_134_aji_000130ec, local
	.string "peach_aji_134"
.endobj str_peach_aji_134_aji_000130ec

# .rodata:0x25A | 0x2292 | size: 0x2
.obj gap_03_00002292_rodata, global
.hidden gap_03_00002292_rodata
	.2byte 0x0000
.endobj gap_03_00002292_rodata

# .rodata:0x25C | 0x2294 | size: 0x6
.obj str_mario_aji_000130fc, local
	.string "mario"
.endobj str_mario_aji_000130fc

# .rodata:0x262 | 0x229A | size: 0x2
.obj gap_03_0000229A_rodata, global
.hidden gap_03_0000229A_rodata
	.2byte 0x0000
.endobj gap_03_0000229A_rodata

# .rodata:0x264 | 0x229C | size: 0xE
.obj str_peach_aji_135_aji_00013104, local
	.string "peach_aji_135"
.endobj str_peach_aji_135_aji_00013104

# .rodata:0x272 | 0x22AA | size: 0x2
.obj gap_03_000022AA_rodata, global
.hidden gap_03_000022AA_rodata
	.2byte 0x0000
.endobj gap_03_000022AA_rodata

# .rodata:0x274 | 0x22AC | size: 0x9
.obj str_R_fuku_g_aji_00013114, local
	.string "R_fuku_g"
.endobj str_R_fuku_g_aji_00013114

# .rodata:0x27D | 0x22B5 | size: 0x3
.obj gap_03_000022B5_rodata, global
.hidden gap_03_000022B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022B5_rodata

# .rodata:0x280 | 0x22B8 | size: 0xB
.obj str_A_R_fuku_g_aji_00013120, local
	.string "A_R_fuku_g"
.endobj str_A_R_fuku_g_aji_00013120

# .rodata:0x28B | 0x22C3 | size: 0x1
.obj gap_03_000022C3_rodata, global
.hidden gap_03_000022C3_rodata
	.byte 0x00
.endobj gap_03_000022C3_rodata

# .rodata:0x28C | 0x22C4 | size: 0x18
.obj str_SFX_PEACH_CURTAIN_OP_aji_0001312c, local
	.string "SFX_PEACH_CURTAIN_OPEN1"
.endobj str_SFX_PEACH_CURTAIN_OP_aji_0001312c

# .rodata:0x2A4 | 0x22DC | size: 0x19
.obj str_SFX_PEACH_CURTAIN_CL_aji_00013144, local
	.string "SFX_PEACH_CURTAIN_CLOSE1"
.endobj str_SFX_PEACH_CURTAIN_CL_aji_00013144

# .rodata:0x2BD | 0x22F5 | size: 0x3
.obj gap_03_000022F5_rodata, global
.hidden gap_03_000022F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022F5_rodata

# .rodata:0x2C0 | 0x22F8 | size: 0x11
.obj str_peach_aji_137_02_aji_00013160, local
	.string "peach_aji_137_02"
.endobj str_peach_aji_137_02_aji_00013160

# .rodata:0x2D1 | 0x2309 | size: 0x3
.obj gap_03_00002309_rodata, global
.hidden gap_03_00002309_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002309_rodata

# .rodata:0x2D4 | 0x230C | size: 0xE
.obj str_peach_aji_154_aji_00013174, local
	.string "peach_aji_154"
.endobj str_peach_aji_154_aji_00013174

# .rodata:0x2E2 | 0x231A | size: 0x2
.obj gap_03_0000231A_rodata, global
.hidden gap_03_0000231A_rodata
	.2byte 0x0000
.endobj gap_03_0000231A_rodata

# .rodata:0x2E4 | 0x231C | size: 0x18
.obj str_SFX_PEACH_CHANGE_CLO_aji_00013184, local
	.string "SFX_PEACH_CHANGE_CLOTH1"
.endobj str_SFX_PEACH_CHANGE_CLO_aji_00013184

# .rodata:0x2FC | 0x2334 | size: 0xE
.obj str_peach_aji_136_aji_0001319c, local
	.string "peach_aji_136"
.endobj str_peach_aji_136_aji_0001319c

# .rodata:0x30A | 0x2342 | size: 0x2
.obj gap_03_00002342_rodata, global
.hidden gap_03_00002342_rodata
	.2byte 0x0000
.endobj gap_03_00002342_rodata

# .rodata:0x30C | 0x2344 | size: 0xE
.obj str_peach_aji_137_aji_000131ac, local
	.string "peach_aji_137"
.endobj str_peach_aji_137_aji_000131ac

# .rodata:0x31A | 0x2352 | size: 0x2
.obj gap_03_00002352_rodata, global
.hidden gap_03_00002352_rodata
	.2byte 0x0000
.endobj gap_03_00002352_rodata

# .rodata:0x31C | 0x2354 | size: 0x11
.obj str_peach_aji_137_01_aji_000131bc, local
	.string "peach_aji_137_01"
.endobj str_peach_aji_137_01_aji_000131bc

# .rodata:0x32D | 0x2365 | size: 0x3
.obj gap_03_00002365_rodata, global
.hidden gap_03_00002365_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002365_rodata

# .rodata:0x330 | 0x2368 | size: 0x6
.obj str_P_S_7_aji_000131d0, local
	.string "P_S_7"
.endobj str_P_S_7_aji_000131d0

# .rodata:0x336 | 0x236E | size: 0x2
.obj gap_03_0000236E_rodata, global
.hidden gap_03_0000236E_rodata
	.2byte 0x0000
.endobj gap_03_0000236E_rodata

# .rodata:0x338 | 0x2370 | size: 0x7
.obj str_P_T_13_aji_000131d8, local
	.string "P_T_13"
.endobj str_P_T_13_aji_000131d8

# .rodata:0x33F | 0x2377 | size: 0x1
.obj gap_03_00002377_rodata, global
.hidden gap_03_00002377_rodata
	.byte 0x00
.endobj gap_03_00002377_rodata

# .rodata:0x340 | 0x2378 | size: 0xE
.obj str_peach_aji_155_aji_000131e0, local
	.string "peach_aji_155"
.endobj str_peach_aji_155_aji_000131e0

# .rodata:0x34E | 0x2386 | size: 0x2
.obj gap_03_00002386_rodata, global
.hidden gap_03_00002386_rodata
	.2byte 0x0000
.endobj gap_03_00002386_rodata

# .rodata:0x350 | 0x2388 | size: 0x6
.obj str_P_S_1_aji_000131f0, local
	.string "P_S_1"
.endobj str_P_S_1_aji_000131f0

# .rodata:0x356 | 0x238E | size: 0x2
.obj gap_03_0000238E_rodata, global
.hidden gap_03_0000238E_rodata
	.2byte 0x0000
.endobj gap_03_0000238E_rodata

# .rodata:0x358 | 0x2390 | size: 0x6
.obj str_P_T_1_aji_000131f8, local
	.string "P_T_1"
.endobj str_P_T_1_aji_000131f8

# .rodata:0x35E | 0x2396 | size: 0x2
.obj gap_03_00002396_rodata, global
.hidden gap_03_00002396_rodata
	.2byte 0x0000
.endobj gap_03_00002396_rodata

# .rodata:0x360 | 0x2398 | size: 0xA
.obj str_S_fuku1_g_aji_00013200, local
	.string "S_fuku1_g"
.endobj str_S_fuku1_g_aji_00013200

# .rodata:0x36A | 0x23A2 | size: 0x2
.obj gap_03_000023A2_rodata, global
.hidden gap_03_000023A2_rodata
	.2byte 0x0000
.endobj gap_03_000023A2_rodata

# .rodata:0x36C | 0x23A4 | size: 0xA
.obj str_S_fuku1_p_aji_0001320c, local
	.string "S_fuku1_p"
.endobj str_S_fuku1_p_aji_0001320c

# .rodata:0x376 | 0x23AE | size: 0x2
.obj gap_03_000023AE_rodata, global
.hidden gap_03_000023AE_rodata
	.2byte 0x0000
.endobj gap_03_000023AE_rodata

# .rodata:0x378 | 0x23B0 | size: 0xA
.obj str_S_fuku2_g_aji_00013218, local
	.string "S_fuku2_g"
.endobj str_S_fuku2_g_aji_00013218

# .rodata:0x382 | 0x23BA | size: 0x2
.obj gap_03_000023BA_rodata, global
.hidden gap_03_000023BA_rodata
	.2byte 0x0000
.endobj gap_03_000023BA_rodata

# .rodata:0x384 | 0x23BC | size: 0xA
.obj str_S_fuku2_p_aji_00013224, local
	.string "S_fuku2_p"
.endobj str_S_fuku2_p_aji_00013224

# .rodata:0x38E | 0x23C6 | size: 0x2
.obj gap_03_000023C6_rodata, global
.hidden gap_03_000023C6_rodata
	.2byte 0x0000
.endobj gap_03_000023C6_rodata

# .rodata:0x390 | 0x23C8 | size: 0x8
.obj str_S_fuku1_aji_00013230, local
	.string "S_fuku1"
.endobj str_S_fuku1_aji_00013230

# .rodata:0x398 | 0x23D0 | size: 0x8
.obj str_S_fuku2_aji_00013238, local
	.string "S_fuku2"
.endobj str_S_fuku2_aji_00013238

# .rodata:0x3A0 | 0x23D8 | size: 0xE
.obj str_peach_aji_132_aji_00013240, local
	.string "peach_aji_132"
.endobj str_peach_aji_132_aji_00013240

# .rodata:0x3AE | 0x23E6 | size: 0x2
.obj gap_03_000023E6_rodata, global
.hidden gap_03_000023E6_rodata
	.2byte 0x0000
.endobj gap_03_000023E6_rodata

# .rodata:0x3B0 | 0x23E8 | size: 0xE
.obj str_peach_aji_152_aji_00013250, local
	.string "peach_aji_152"
.endobj str_peach_aji_152_aji_00013250

# .rodata:0x3BE | 0x23F6 | size: 0x2
.obj gap_03_000023F6_rodata, global
.hidden gap_03_000023F6_rodata
	.2byte 0x0000
.endobj gap_03_000023F6_rodata

# .rodata:0x3C0 | 0x23F8 | size: 0xE
.obj str_peach_aji_153_aji_00013260, local
	.string "peach_aji_153"
.endobj str_peach_aji_153_aji_00013260

# .rodata:0x3CE | 0x2406 | size: 0x2
.obj gap_03_00002406_rodata, global
.hidden gap_03_00002406_rodata
	.2byte 0x0000
.endobj gap_03_00002406_rodata

# .rodata:0x3D0 | 0x2408 | size: 0xC
.obj str_stg7_aji_33_aji_00013270, local
	.string "stg7_aji_33"
.endobj str_stg7_aji_33_aji_00013270

# .rodata:0x3DC | 0x2414 | size: 0xF
.obj str_stg7_aji_33_01_aji_0001327c, local
	.string "stg7_aji_33_01"
.endobj str_stg7_aji_33_01_aji_0001327c

# .rodata:0x3EB | 0x2423 | size: 0x1
.obj gap_03_00002423_rodata, global
.hidden gap_03_00002423_rodata
	.byte 0x00
.endobj gap_03_00002423_rodata

# .rodata:0x3EC | 0x2424 | size: 0x8
.obj str_A_memo1_aji_0001328c, local
	.string "A_memo1"
.endobj str_A_memo1_aji_0001328c

# .rodata:0x3F4 | 0x242C | size: 0x8
.obj str_A_memo2_aji_00013294, local
	.string "A_memo2"
.endobj str_A_memo2_aji_00013294

# .rodata:0x3FC | 0x2434 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_0001329c, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_0001329c

# .rodata:0x40A | 0x2442 | size: 0x2
.obj gap_03_00002442_rodata, global
.hidden gap_03_00002442_rodata
	.2byte 0x0000
.endobj gap_03_00002442_rodata

# .rodata:0x40C | 0x2444 | size: 0xE
.obj str_ENV_STG7_AJI2_aji_000132ac, local
	.string "ENV_STG7_AJI2"
.endobj str_ENV_STG7_AJI2_aji_000132ac

# .rodata:0x41A | 0x2452 | size: 0x2
.obj gap_03_00002452_rodata, global
.hidden gap_03_00002452_rodata
	.2byte 0x0000
.endobj gap_03_00002452_rodata

# .rodata:0x41C | 0x2454 | size: 0x7
.obj str_S_memo_aji_000132bc, local
	.string "S_memo"
.endobj str_S_memo_aji_000132bc

# .rodata:0x423 | 0x245B | size: 0x1
.obj gap_03_0000245B_rodata, global
.hidden gap_03_0000245B_rodata
	.byte 0x00
.endobj gap_03_0000245B_rodata

# .rodata:0x424 | 0x245C | size: 0xF
.obj str_BGM_EVT_PEACH1_aji_000132c4, local
	.string "BGM_EVT_PEACH1"
.endobj str_BGM_EVT_PEACH1_aji_000132c4

# .rodata:0x433 | 0x246B | size: 0x1
.obj gap_03_0000246B_rodata, global
.hidden gap_03_0000246B_rodata
	.byte 0x00
.endobj gap_03_0000246B_rodata

# .rodata:0x434 | 0x246C | size: 0x8
.obj str_d_mario_aji_000132d4, local
	.string "d_mario"
.endobj str_d_mario_aji_000132d4

# .rodata:0x43C | 0x2474 | size: 0x4
.obj gap_03_00002474_rodata, global
.hidden gap_03_00002474_rodata
	.4byte 0x00000000
.endobj gap_03_00002474_rodata

# 0x00011DA0..0x00013DB8 | size: 0x2018
.data
.balign 8

# .data:0x0 | 0x11DA0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11DA8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11DAC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11DB0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11DB4 | size: 0x4
.obj gap_04_00011DB4_data, global
.hidden gap_04_00011DB4_data
	.4byte 0x00000000
.endobj gap_04_00011DB4_data

# .data:0x18 | 0x11DB8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11DC0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11DC4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11DC8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11DD0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11DD4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11DD8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11DDC | size: 0x4
.obj gap_04_00011DDC_data, global
.hidden gap_04_00011DDC_data
	.4byte 0x00000000
.endobj gap_04_00011DDC_data

# .data:0x40 | 0x11DE0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11DE8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11DEC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11DF0 | size: 0x58
.obj s_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00012ea0
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00012eac
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_open

# .data:0xA8 | 0x11E48 | size: 0x58
.obj s_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B2A
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_2_aji_00012ea0
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_door1_1_aji_00012eac
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_close

# .data:0x100 | 0x11EA0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_aji_00012eb8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00012ec0
	.4byte str_n_bero_4_aji_00012ec8
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x178 | 0x11F18 | size: 0x64
.obj peach_evt_bero_out1, local
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_133_aji_00012ed4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_bero_out1

# .data:0x1DC | 0x11F7C | size: 0x78
.obj bero_data_peach1, local
	.4byte str_s_bero_aji_00012eb8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte peach_evt_bero_out1
	.4byte str_aji_01_aji_00012ec0
	.4byte str_n_bero_4_aji_00012ec8
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data_peach1

# .data:0x254 | 0x11FF4 | size: 0x64
.obj peach_evt_bero_out2, local
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_155_01_aji_00012ee4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_bero_out2

# .data:0x2B8 | 0x12058 | size: 0x78
.obj bero_data_peach2, local
	.4byte str_s_bero_aji_00012eb8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte peach_evt_bero_out2
	.4byte str_aji_17_aji_00012ef8
	.4byte str_w_bero_aji_00012f00
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data_peach2

# .data:0x330 | 0x120D0 | size: 0x1CC
.obj evt_kou1, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_kou1_ka_omo_aji_00012f08
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_kou1_ka_ura_aji_00012f24
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CURTAIN_OPE_aji_00012f34
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x00000064
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou1_ka_omo_aji_00012f08
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou1_ka_ura_aji_00012f24
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CURTAIN_CLO_aji_00012f4c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou1_ka_omo_aji_00012f08
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou1_ka_ura_aji_00012f24
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kou1

# .data:0x4FC | 0x1229C | size: 0x26C
.obj evt_kou2, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_kou2_ka_omo_aji_00012f64
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_kou2_ka_ura_aji_00012f80
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0x00020018
	.4byte 0xF8406BF9
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tenjo_aji_00012f90
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte dot_mario
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF8406BF9
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CURTAIN_OPE_aji_00012f34
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BF9
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DOT_MARIO1_aji_00012f98
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x000000C8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou2_ka_omo_aji_00012f64
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou2_ka_ura_aji_00012f80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_CURTAIN_CLO_aji_00012f4c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000C8
	.4byte 0x000003E8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou2_ka_omo_aji_00012f64
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_kou2_ka_ura_aji_00012f80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kou2

# .data:0x768 | 0x12508 | size: 0x54
.obj rokka_data, local
	.4byte str_R_door_1_aji_00012fac
	.4byte str_a_door_1_aji_00012fb8
	.4byte str_a_door_1_omote_aji_00012fc4
	.4byte str_a_door_1_ura_aji_00012fd4
	.4byte str_a_R_1_asi_aji_00012fe4
	.4byte str_R_door_2_aji_00012ff0
	.4byte str_a_door_2_aji_00012ffc
	.4byte str_a_door_2_omote_aji_00013008
	.4byte str_a_door_2_ura_aji_00013018
	.4byte str_a_R_2_asi_aji_00013028
	.4byte str_R_door_3_aji_00013034
	.4byte str_a_door_3_aji_00013040
	.4byte str_a_door_3_omote_aji_0001304c
	.4byte str_a_door_3_ura_aji_0001305c
	.4byte str_a_R_3_asi_aji_0001306c
	.4byte str_R_door_4_aji_00013078
	.4byte str_a_door_4_aji_00013084
	.4byte str_a_door_4_omote_aji_00013090
	.4byte str_a_door_4_ura_aji_000130a0
	.4byte str_a_R_4_asi_aji_000130b0
	.4byte 0x00000000
.endobj rokka_data

# .data:0x7BC | 0x1255C | size: 0x1FC
.obj evt_rokka_open, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_LOCKER_OPE_aji_000130bc
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000028
	.4byte 0x00010005
	.4byte 0x00000029
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C86
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte evt_rokka_close
	.4byte 0xFE363C8B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte evt_rokka_close
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_set_case_wrk
	.4byte 0xFE363C8B
	.4byte 0x0000000B
	.4byte 0xFE363C8B
	.4byte 0x0004005B
	.4byte evt_set_case_wrk
	.4byte 0xFE363C8B
	.4byte 0x0000000C
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_set_case_wrk
	.4byte 0xFE363C8C
	.4byte 0x0000000B
	.4byte 0xFE363C8B
	.4byte 0x0004005B
	.4byte evt_set_case_wrk
	.4byte 0xFE363C8C
	.4byte 0x0000000C
	.4byte 0xFE363C8C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_rokka_open

# .data:0x9B8 | 0x12758 | size: 0x294
.obj evt_rokka_close, local
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_LOCKER_CLO_aji_000130d4
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00010005
	.4byte 0x00000029
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C86
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte evt_rokka_open
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_LOCKER_CLO_aji_000130d4
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000015
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C86
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte evt_rokka_open
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_rokka_close

# .data:0xC4C | 0x129EC | size: 0x88
.obj evt_rokka_init, local
	.4byte 0x0001003E
	.4byte rokka_data
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00030041
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020040
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte evt_rokka_open
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_rokka_init

# .data:0xCD4 | 0x12A74 | size: 0x90
.obj peach_evt_fuku_g, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_134_aji_000130ec
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_135_aji_00013104
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406BEB
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_R_fuku_g_aji_00013114
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_R_fuku_g_aji_00013120
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_fuku_g

# .data:0xD64 | 0x12B04 | size: 0xB8
.obj peach_evt_ka_open, local
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_CURTAIN_OP_aji_0001312c
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x00000064
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_ka_open

# .data:0xE1C | 0x12BBC | size: 0xB8
.obj peach_evt_ka_close, local
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_CURTAIN_CL_aji_00013144
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_ka_close

# .data:0xED4 | 0x12C74 | size: 0x2B0
.obj peach_evt_kou_in, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0001005E
	.4byte peach_evt_ka_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF83
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0001005E
	.4byte peach_evt_ka_close
	.4byte 0x00020018
	.4byte 0xF8406BEB
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x0002000C
	.4byte 0xFE363C89
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x00020018
	.4byte 0xF8406BED
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_137_02_aji_00013160
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406BED
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_137_02_aji_00013160
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A8
	.4byte 0x00020018
	.4byte 0xF8406BEE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_154_aji_00013174
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_CHANGE_CLO_aji_00013184
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_snd_sfx_dist
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_136_aji_0001319c
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_CHANGE_CLO_aji_00013184
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_snd_sfx_dist
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_137_aji_000131ac
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x0002000C
	.4byte 0xFE363C89
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x00020032
	.4byte 0xF8406BED
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF8406BED
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406BEC
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_peach_transform_gundan_on
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_peach_transform_gundan_off
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_kou_in

# .data:0x1184 | 0x12F24 | size: 0x164
.obj peach_evt_kou_out, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0001005E
	.4byte peach_evt_ka_open
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFC9
	.4byte 0xF24B6A80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0001005E
	.4byte peach_evt_ka_close
	.4byte 0x00020018
	.4byte 0xF8406BEB
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_137_01_aji_000131bc
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A8
	.4byte 0x0002000C
	.4byte 0xFE363C89
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x00020018
	.4byte 0xF8406BED
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406BED
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BEE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000130fc
	.4byte str_P_S_7_aji_000131d0
	.4byte str_P_T_13_aji_000131d8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_155_aji_000131e0
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_000131f0
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000130fc
	.4byte str_P_S_1_aji_000131f0
	.4byte str_P_T_1_aji_000131f8
	.4byte 0x00020032
	.4byte 0xF8406BEE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_kou_out

# .data:0x12E8 | 0x13088 | size: 0x120
.obj peach_evt_kou1_in, local
	.4byte 0x0004005B
	.4byte check_kou_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFBD3E280
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x0001005E
	.4byte peach_evt_kou_in
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BEB
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku1_g_aji_00013200
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_p_aji_0001320c
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_g_aji_00013200
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku1_p_aji_0001320c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_kou1_in

# .data:0x1408 | 0x131A8 | size: 0xAC
.obj peach_evt_kou1_out, local
	.4byte 0x0004005B
	.4byte check_kou_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFBD3E280
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_kou1_ka_aji_00012f18
	.4byte 0x0001005E
	.4byte peach_evt_kou_out
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_kou1_out

# .data:0x14B4 | 0x13254 | size: 0x120
.obj peach_evt_kou2_in, local
	.4byte 0x0004005B
	.4byte check_kou_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFBD3E280
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0x0001005E
	.4byte peach_evt_kou_in
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BEB
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku2_g_aji_00013218
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_p_aji_00013224
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_g_aji_00013218
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku2_p_aji_00013224
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_kou2_in

# .data:0x15D4 | 0x13374 | size: 0xAC
.obj peach_evt_kou2_out, local
	.4byte 0x0004005B
	.4byte check_kou_evt
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFBD3E280
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_kou2_ka_aji_00012f74
	.4byte 0x0001005E
	.4byte peach_evt_kou_out
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_kou2_out

# .data:0x1680 | 0x13420 | size: 0x168
.obj s_bero_out, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24D4A80
	.4byte 0x0001005E
	.4byte s_door_open
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte s_door_open
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_bero_get_start_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_mario_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0x000001C2
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_17_aji_00012ef8
	.4byte str_w_bero_aji_00012f00
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_155_01_aji_00012ee4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_bero_out

# .data:0x17E8 | 0x13588 | size: 0x418
.obj peach_evt_stg3, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_aji_00013230
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_aji_00013238
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_R_fuku_g_aji_00013114
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_R_fuku_g_aji_00013120
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_R_fuku_g_aji_00013120
	.4byte 0x00000000
	.4byte peach_evt_fuku_g
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BED
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku2_g_aji_00013218
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_p_aji_00013224
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_aji_00013230
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku1_g_aji_00013200
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_p_aji_0001320c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_aji_00013238
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte evt_peach_transform_gundan_on
	.4byte 0x00020018
	.4byte 0xF8406BED
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_g_aji_00013218
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku2_p_aji_00013224
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_aji_00013230
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_g_aji_00013200
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_fuku1_p_aji_0001320c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_aji_00013238
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_R_fuku_g_aji_00013114
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou1_ka_omo_aji_00012f08
	.4byte 0x00000000
	.4byte peach_evt_kou1_in
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou1_ka_ura_aji_00012f24
	.4byte 0x00000000
	.4byte peach_evt_kou1_out
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou2_ka_omo_aji_00012f64
	.4byte 0x00000000
	.4byte peach_evt_kou2_in
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou2_ka_ura_aji_00012f80
	.4byte 0x00000000
	.4byte peach_evt_kou2_out
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000A8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_aji_00012eb8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_s_bero_aji_00012eb8
	.4byte bero_data_peach1
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_aji_00012eb8
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_s_bero_aji_00012eb8
	.4byte 0x00000000
	.4byte s_bero_out
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_132_aji_00013240
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_152_aji_00013250
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000001BA
	.4byte 0x00000000
	.4byte 0x00000029
	.4byte 0x0000002A
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_153_aji_00013260
	.4byte 0x00000000
	.4byte str_mario_aji_000130fc
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg3

# .data:0x1C00 | 0x139A0 | size: 0x54
.obj evt_memo1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_33_aji_00013270
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000016C
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000016C
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_memo1

# .data:0x1C54 | 0x139F4 | size: 0x38
.obj evt_memo2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_33_01_aji_0001327c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_memo2

# .data:0x1C8C | 0x13A2C | size: 0x388
.obj aji_09_init_evt_2_data_13A2C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_R_fuku_g_aji_00013120
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_R_fuku_g_aji_00013114
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_aji_00013230
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_aji_00013238
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000A6
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x000000A8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte peach_evt_stg3
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou1_ka_omo_aji_00012f08
	.4byte 0x00000000
	.4byte evt_kou1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou1_ka_ura_aji_00012f24
	.4byte 0x00000000
	.4byte evt_kou1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou2_ka_omo_aji_00012f64
	.4byte 0x00000000
	.4byte evt_kou2
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kou2_ka_ura_aji_00012f80
	.4byte 0x00000000
	.4byte evt_kou2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku1_p_aji_0001320c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_fuku2_g_aji_00013218
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_rokka_init
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tenjo_aji_00012f90
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000AA
	.4byte 0x0000006B
	.4byte 0xFFFFFF8D
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x000000A0
	.4byte 0x0000006B
	.4byte 0xFFFFFF97
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000096
	.4byte 0x0000006B
	.4byte 0xFFFFFFA1
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_memo1_aji_0001328c
	.4byte 0x00000000
	.4byte evt_memo1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_memo2_aji_00013294
	.4byte 0x00000000
	.4byte evt_memo2
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_0001329c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI2_aji_000132ac
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_memo_aji_000132bc
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_000132c4
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_09_init_evt_2_data_13A2C

# .data:0x2014 | 0x13DB4 | size: 0x4
.obj gap_04_00013DB4_data, global
.hidden gap_04_00013DB4_data
	.4byte 0x00000000
.endobj gap_04_00013DB4_data
