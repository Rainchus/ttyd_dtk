.include "macros.inc"
.file "bom_02.o"

# 0x00005AA8..0x00005C3C | size: 0x194
.text
.balign 4

# .text:0x0 | 0x5AA8 | size: 0x60
.fn anim_tevcallback_mobj, local
/* 00005AA8 00005B6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005AAC 00005B70  7C 08 02 A6 */	mflr r0
/* 00005AB0 00005B74  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005AB4 00005B78  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00005AB8 00005B7C  7C 7D 1B 78 */	mr r29, r3
/* 00005ABC 00005B80  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005AC0 00005B84  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005AC4 00005B88  4B FF A5 3D */	bl evtGetValue
/* 00005AC8 00005B8C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005ACC 00005B90  7C 7E 1B 78 */	mr r30, r3
/* 00005AD0 00005B94  7F A3 EB 78 */	mr r3, r29
/* 00005AD4 00005B98  4B FF A5 2D */	bl evtGetValue
/* 00005AD8 00005B9C  7C 7F 1B 78 */	mr r31, r3
/* 00005ADC 00005BA0  7F C3 F3 78 */	mr r3, r30
/* 00005AE0 00005BA4  4B FF A5 21 */	bl mobjNameToPtr
/* 00005AE4 00005BA8  80 63 00 70 */	lwz r3, 0x70(r3)
/* 00005AE8 00005BAC  57 E4 C1 0E */	clrlslwi r4, r31, 28, 24
/* 00005AEC 00005BB0  4B FF A5 15 */	bl animPoseSetMaterialFlagOn
/* 00005AF0 00005BB4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005AF4 00005BB8  38 60 00 02 */	li r3, 0x2
/* 00005AF8 00005BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005AFC 00005BC0  7C 08 03 A6 */	mtlr r0
/* 00005B00 00005BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 00005B04 00005BC8  4E 80 00 20 */	blr
.endfn anim_tevcallback_mobj

# .text:0x60 | 0x5B08 | size: 0x70
.fn anim_tevcallback, local
/* 00005B08 00005BCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005B0C 00005BD0  7C 08 02 A6 */	mflr r0
/* 00005B10 00005BD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005B14 00005BD8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00005B18 00005BDC  7C 7D 1B 78 */	mr r29, r3
/* 00005B1C 00005BE0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005B20 00005BE4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005B24 00005BE8  4B FF A4 DD */	bl evtGetValue
/* 00005B28 00005BEC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005B2C 00005BF0  7C 7E 1B 78 */	mr r30, r3
/* 00005B30 00005BF4  7F A3 EB 78 */	mr r3, r29
/* 00005B34 00005BF8  4B FF A4 CD */	bl evtGetValue
/* 00005B38 00005BFC  7C 7F 1B 78 */	mr r31, r3
/* 00005B3C 00005C00  7F C3 F3 78 */	mr r3, r30
/* 00005B40 00005C04  4B FF A4 C1 */	bl npcNameToPtr_NoAssert
/* 00005B44 00005C08  28 03 00 00 */	cmplwi r3, 0x0
/* 00005B48 00005C0C  40 82 00 0C */	bne .L_00005B54
/* 00005B4C 00005C10  38 60 00 02 */	li r3, 0x2
/* 00005B50 00005C14  48 00 00 14 */	b .L_00005B64
.L_00005B54:
/* 00005B54 00005C18  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00005B58 00005C1C  57 E4 C1 0E */	clrlslwi r4, r31, 28, 24
/* 00005B5C 00005C20  4B FF A4 A5 */	bl animPoseSetMaterialFlagOn
/* 00005B60 00005C24  38 60 00 02 */	li r3, 0x2
.L_00005B64:
/* 00005B64 00005C28  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005B68 00005C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005B6C 00005C30  7C 08 03 A6 */	mtlr r0
/* 00005B70 00005C34  38 21 00 20 */	addi r1, r1, 0x20
/* 00005B74 00005C38  4E 80 00 20 */	blr
.endfn anim_tevcallback

# .text:0xD0 | 0x5B78 | size: 0xC4
.fn yami_view, local
/* 00005B78 00005C3C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00005B7C 00005C40  7C 08 02 A6 */	mflr r0
/* 00005B80 00005C44  90 01 00 74 */	stw r0, 0x74(r1)
/* 00005B84 00005C48  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 00005B88 00005C4C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005B8C 00005C50  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005B90 00005C54  4B FF A4 71 */	bl evtGetFloat
/* 00005B94 00005C58  3C 60 00 00 */	lis r3, float_100_bom_00007eb4@ha
/* 00005B98 00005C5C  3C A0 00 00 */	lis r5, vec3_bom_00007d10@ha
/* 00005B9C 00005C60  38 A5 00 00 */	addi r5, r5, vec3_bom_00007d10@l
/* 00005BA0 00005C64  C0 03 00 00 */	lfs f0, float_100_bom_00007eb4@l(r3)
/* 00005BA4 00005C68  3C 80 00 00 */	lis r4, vec3_bom_00007cf8@ha
/* 00005BA8 00005C6C  3C 60 00 00 */	lis r3, vec3_bom_00007d04@ha
/* 00005BAC 00005C70  38 C3 00 00 */	addi r6, r3, vec3_bom_00007d04@l
/* 00005BB0 00005C74  EC 00 08 2A */	fadds f0, f0, f1
/* 00005BB4 00005C78  39 04 00 00 */	addi r8, r4, vec3_bom_00007cf8@l
/* 00005BB8 00005C7C  80 85 00 08 */	lwz r4, 0x8(r5)
/* 00005BBC 00005C80  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00005BC0 00005C84  38 61 00 2C */	addi r3, r1, 0x2c
/* 00005BC4 00005C88  90 81 00 10 */	stw r4, 0x10(r1)
/* 00005BC8 00005C8C  83 E5 00 00 */	lwz r31, 0x0(r5)
/* 00005BCC 00005C90  38 81 00 20 */	addi r4, r1, 0x20
/* 00005BD0 00005C94  90 01 00 28 */	stw r0, 0x28(r1)
/* 00005BD4 00005C98  81 85 00 04 */	lwz r12, 0x4(r5)
/* 00005BD8 00005C9C  38 A1 00 14 */	addi r5, r1, 0x14
/* 00005BDC 00005CA0  81 66 00 00 */	lwz r11, 0x0(r6)
/* 00005BE0 00005CA4  81 46 00 04 */	lwz r10, 0x4(r6)
/* 00005BE4 00005CA8  81 26 00 08 */	lwz r9, 0x8(r6)
/* 00005BE8 00005CAC  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005BEC 00005CB0  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00005BF0 00005CB4  80 08 00 04 */	lwz r0, 0x4(r8)
/* 00005BF4 00005CB8  93 E1 00 08 */	stw r31, 0x8(r1)
/* 00005BF8 00005CBC  91 81 00 0C */	stw r12, 0xc(r1)
/* 00005BFC 00005CC0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00005C00 00005CC4  91 61 00 14 */	stw r11, 0x14(r1)
/* 00005C04 00005CC8  91 41 00 18 */	stw r10, 0x18(r1)
/* 00005C08 00005CCC  91 21 00 1C */	stw r9, 0x1c(r1)
/* 00005C0C 00005CD0  90 E1 00 20 */	stw r7, 0x20(r1)
/* 00005C10 00005CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005C14 00005CD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 00005C18 00005CDC  4B FF A3 E9 */	bl C_MTXLookAt
/* 00005C1C 00005CE0  38 61 00 2C */	addi r3, r1, 0x2c
/* 00005C20 00005CE4  4B FF A3 E1 */	bl envSetYamiView
/* 00005C24 00005CE8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00005C28 00005CEC  38 60 00 02 */	li r3, 0x2
/* 00005C2C 00005CF0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 00005C30 00005CF4  7C 08 03 A6 */	mtlr r0
/* 00005C34 00005CF8  38 21 00 70 */	addi r1, r1, 0x70
/* 00005C38 00005CFC  4E 80 00 20 */	blr
.endfn yami_view

# 0x00000F38..0x00001C58 | size: 0xD20
.rodata
.balign 8

# .rodata:0x0 | 0xF38 | size: 0xB
.obj str_S_ie1_door_bom_00007198, local
	.string "S_ie1_door"
.endobj str_S_ie1_door_bom_00007198

# .rodata:0xB | 0xF43 | size: 0x1
.obj gap_03_00000F43_rodata, global
.hidden gap_03_00000F43_rodata
	.byte 0x00
.endobj gap_03_00000F43_rodata

# .rodata:0xC | 0xF44 | size: 0xA
.obj str_S_ie1_kai_bom_000071a4, local
	.string "S_ie1_kai"
.endobj str_S_ie1_kai_bom_000071a4

# .rodata:0x16 | 0xF4E | size: 0x2
.obj gap_03_00000F4E_rodata, global
.hidden gap_03_00000F4E_rodata
	.2byte 0x0000
.endobj gap_03_00000F4E_rodata

# .rodata:0x18 | 0xF50 | size: 0x7
.obj str_宿店員_bom_000071b0, local
	.4byte 0x8F689358
	.byte 0x88, 0xF5, 0x00
.endobj str_宿店員_bom_000071b0

# .rodata:0x1F | 0xF57 | size: 0x1
.obj gap_03_00000F57_rodata, global
.hidden gap_03_00000F57_rodata
	.byte 0x00
.endobj gap_03_00000F57_rodata

# .rodata:0x20 | 0xF58 | size: 0xC
.obj str_A_ie1_door1_bom_000071b8, local
	.string "A_ie1_door1"
.endobj str_A_ie1_door1_bom_000071b8

# .rodata:0x2C | 0xF64 | size: 0xE
.obj str_A_ie1_door1_u_bom_000071c4, local
	.string "A_ie1_door1_u"
.endobj str_A_ie1_door1_u_bom_000071c4

# .rodata:0x3A | 0xF72 | size: 0x2
.obj gap_03_00000F72_rodata, global
.hidden gap_03_00000F72_rodata
	.2byte 0x0000
.endobj gap_03_00000F72_rodata

# .rodata:0x3C | 0xF74 | size: 0xB
.obj str_S_ie1_soto_bom_000071d4, local
	.string "S_ie1_soto"
.endobj str_S_ie1_soto_bom_000071d4

# .rodata:0x47 | 0xF7F | size: 0x1
.obj gap_03_00000F7F_rodata, global
.hidden gap_03_00000F7F_rodata
	.byte 0x00
.endobj gap_03_00000F7F_rodata

# .rodata:0x48 | 0xF80 | size: 0xB
.obj str_S_ie1_naka_bom_000071e0, local
	.string "S_ie1_naka"
.endobj str_S_ie1_naka_bom_000071e0

# .rodata:0x53 | 0xF8B | size: 0x1
.obj gap_03_00000F8B_rodata, global
.hidden gap_03_00000F8B_rodata
	.byte 0x00
.endobj gap_03_00000F8B_rodata

# .rodata:0x54 | 0xF8C | size: 0xB
.obj str_S_ie2_door_bom_000071ec, local
	.string "S_ie2_door"
.endobj str_S_ie2_door_bom_000071ec

# .rodata:0x5F | 0xF97 | size: 0x1
.obj gap_03_00000F97_rodata, global
.hidden gap_03_00000F97_rodata
	.byte 0x00
.endobj gap_03_00000F97_rodata

# .rodata:0x60 | 0xF98 | size: 0xA
.obj str_S_ie2_kai_bom_000071f8, local
	.string "S_ie2_kai"
.endobj str_S_ie2_kai_bom_000071f8

# .rodata:0x6A | 0xFA2 | size: 0x2
.obj gap_03_00000FA2_rodata, global
.hidden gap_03_00000FA2_rodata
	.2byte 0x0000
.endobj gap_03_00000FA2_rodata

# .rodata:0x6C | 0xFA4 | size: 0x5
.obj str_店員_bom_00007204, local
	.4byte 0x935888F5
	.byte 0x00
.endobj str_店員_bom_00007204

# .rodata:0x71 | 0xFA9 | size: 0x3
.obj gap_03_00000FA9_rodata, global
.hidden gap_03_00000FA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000FA9_rodata

# .rodata:0x74 | 0xFAC | size: 0xD
.obj str_A_ie2_door2_bom_0000720c, local
	.string "A__ie2_door2"
.endobj str_A_ie2_door2_bom_0000720c

# .rodata:0x81 | 0xFB9 | size: 0x3
.obj gap_03_00000FB9_rodata, global
.hidden gap_03_00000FB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000FB9_rodata

# .rodata:0x84 | 0xFBC | size: 0xF
.obj str_A_ie2_door2_u_bom_0000721c, local
	.string "A__ie2_door2_u"
.endobj str_A_ie2_door2_u_bom_0000721c

# .rodata:0x93 | 0xFCB | size: 0x1
.obj gap_03_00000FCB_rodata, global
.hidden gap_03_00000FCB_rodata
	.byte 0x00
.endobj gap_03_00000FCB_rodata

# .rodata:0x94 | 0xFCC | size: 0xB
.obj str_S_ie2_soto_bom_0000722c, local
	.string "S_ie2_soto"
.endobj str_S_ie2_soto_bom_0000722c

# .rodata:0x9F | 0xFD7 | size: 0x1
.obj gap_03_00000FD7_rodata, global
.hidden gap_03_00000FD7_rodata
	.byte 0x00
.endobj gap_03_00000FD7_rodata

# .rodata:0xA0 | 0xFD8 | size: 0xB
.obj str_S_ie2_naka_bom_00007238, local
	.string "S_ie2_naka"
.endobj str_S_ie2_naka_bom_00007238

# .rodata:0xAB | 0xFE3 | size: 0x1
.obj gap_03_00000FE3_rodata, global
.hidden gap_03_00000FE3_rodata
	.byte 0x00
.endobj gap_03_00000FE3_rodata

# .rodata:0xAC | 0xFE4 | size: 0xB
.obj str_S_ie3_door_bom_00007244, local
	.string "S_ie3_door"
.endobj str_S_ie3_door_bom_00007244

# .rodata:0xB7 | 0xFEF | size: 0x1
.obj gap_03_00000FEF_rodata, global
.hidden gap_03_00000FEF_rodata
	.byte 0x00
.endobj gap_03_00000FEF_rodata

# .rodata:0xB8 | 0xFF0 | size: 0xA
.obj str_S_ie3_kai_bom_00007250, local
	.string "S_ie3_kai"
.endobj str_S_ie3_kai_bom_00007250

# .rodata:0xC2 | 0xFFA | size: 0x2
.obj gap_03_00000FFA_rodata, global
.hidden gap_03_00000FFA_rodata
	.2byte 0x0000
.endobj gap_03_00000FFA_rodata

# .rodata:0xC4 | 0xFFC | size: 0x9
.obj str_ホワイト_bom_0000725c, local
	.4byte 0x837A838F
	.4byte 0x83438367
	.byte 0x00
.endobj str_ホワイト_bom_0000725c

# .rodata:0xCD | 0x1005 | size: 0x3
.obj gap_03_00001005_rodata, global
.hidden gap_03_00001005_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001005_rodata

# .rodata:0xD0 | 0x1008 | size: 0xA
.obj str_ボムヘイG_bom_00007268, local
	.4byte 0x837B8380
	.4byte 0x83778343
	.2byte 0x4700
.endobj str_ボムヘイG_bom_00007268

# .rodata:0xDA | 0x1012 | size: 0x2
.obj gap_03_00001012_rodata, global
.hidden gap_03_00001012_rodata
	.2byte 0x0000
.endobj gap_03_00001012_rodata

# .rodata:0xDC | 0x1014 | size: 0x8
.obj str_item_00_bom_00007274, local
	.string "item_00"
.endobj str_item_00_bom_00007274

# .rodata:0xE4 | 0x101C | size: 0xE
.obj str_A_ie3_door3_u_bom_0000727c, local
	.string "A_ie3_door3_u"
.endobj str_A_ie3_door3_u_bom_0000727c

# .rodata:0xF2 | 0x102A | size: 0x2
.obj gap_03_0000102A_rodata, global
.hidden gap_03_0000102A_rodata
	.2byte 0x0000
.endobj gap_03_0000102A_rodata

# .rodata:0xF4 | 0x102C | size: 0xC
.obj str_A_ie3_door3_bom_0000728c, local
	.string "A_ie3_door3"
.endobj str_A_ie3_door3_bom_0000728c

# .rodata:0x100 | 0x1038 | size: 0xB
.obj str_S_ie3_soto_bom_00007298, local
	.string "S_ie3_soto"
.endobj str_S_ie3_soto_bom_00007298

# .rodata:0x10B | 0x1043 | size: 0x1
.obj gap_03_00001043_rodata, global
.hidden gap_03_00001043_rodata
	.byte 0x00
.endobj gap_03_00001043_rodata

# .rodata:0x10C | 0x1044 | size: 0xB
.obj str_S_ie3_naka_bom_000072a4, local
	.string "S_ie3_naka"
.endobj str_S_ie3_naka_bom_000072a4

# .rodata:0x117 | 0x104F | size: 0x1
.obj gap_03_0000104F_rodata, global
.hidden gap_03_0000104F_rodata
	.byte 0x00
.endobj gap_03_0000104F_rodata

# .rodata:0x118 | 0x1050 | size: 0x7
.obj str_w_bero_bom_000072b0, local
	.string "w_bero"
.endobj str_w_bero_bom_000072b0

# .rodata:0x11F | 0x1057 | size: 0x1
.obj gap_03_00001057_rodata, global
.hidden gap_03_00001057_rodata
	.byte 0x00
.endobj gap_03_00001057_rodata

# .rodata:0x120 | 0x1058 | size: 0x7
.obj str_bom_01_bom_000072b8, local
	.string "bom_01"
.endobj str_bom_01_bom_000072b8

# .rodata:0x127 | 0x105F | size: 0x1
.obj gap_03_0000105F_rodata, global
.hidden gap_03_0000105F_rodata
	.byte 0x00
.endobj gap_03_0000105F_rodata

# .rodata:0x128 | 0x1060 | size: 0x7
.obj str_e_bero_bom_000072c0, local
	.string "e_bero"
.endobj str_e_bero_bom_000072c0

# .rodata:0x12F | 0x1067 | size: 0x1
.obj gap_03_00001067_rodata, global
.hidden gap_03_00001067_rodata
	.byte 0x00
.endobj gap_03_00001067_rodata

# .rodata:0x130 | 0x1068 | size: 0x8
.obj str_PKR_Y_1_bom_000072c8, local
	.string "PKR_Y_1"
.endobj str_PKR_Y_1_bom_000072c8

# .rodata:0x138 | 0x1070 | size: 0x8
.obj str_PNK_Y_1_bom_000072d0, local
	.string "PNK_Y_1"
.endobj str_PNK_Y_1_bom_000072d0

# .rodata:0x140 | 0x1078 | size: 0x4
.obj str_Y_1_bom_000072d8, local
	.string "Y_1"
.endobj str_Y_1_bom_000072d8

# .rodata:0x144 | 0x107C | size: 0x8
.obj str_PYS_Y_1_bom_000072dc, local
	.string "PYS_Y_1"
.endobj str_PYS_Y_1_bom_000072dc

# .rodata:0x14C | 0x1084 | size: 0x8
.obj str_PWD_Y_1_bom_000072e4, local
	.string "PWD_Y_1"
.endobj str_PWD_Y_1_bom_000072e4

# .rodata:0x154 | 0x108C | size: 0x8
.obj str_PTR_Y_1_bom_000072ec, local
	.string "PTR_Y_1"
.endobj str_PTR_Y_1_bom_000072ec

# .rodata:0x15C | 0x1094 | size: 0x8
.obj str_PCH_Y_1_bom_000072f4, local
	.string "PCH_Y_1"
.endobj str_PCH_Y_1_bom_000072f4

# .rodata:0x164 | 0x109C | size: 0x3
.obj str_me_bom_000072fc, local
	.string "me"
.endobj str_me_bom_000072fc

# .rodata:0x167 | 0x109F | size: 0x1
.obj gap_03_0000109F_rodata, global
.hidden gap_03_0000109F_rodata
	.byte 0x00
.endobj gap_03_0000109F_rodata

# .rodata:0x168 | 0x10A0 | size: 0x6
.obj str_mario_bom_00007300, local
	.string "mario"
.endobj str_mario_bom_00007300

# .rodata:0x16E | 0x10A6 | size: 0x2
.obj gap_03_000010A6_rodata, global
.hidden gap_03_000010A6_rodata
	.2byte 0x0000
.endobj gap_03_000010A6_rodata

# .rodata:0x170 | 0x10A8 | size: 0xC
.obj str_stg7_bom_60_bom_00007308, local
	.string "stg7_bom_60"
.endobj str_stg7_bom_60_bom_00007308

# .rodata:0x17C | 0x10B4 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_bom_00007314, local
	.string "SFX_VOICE_MARIO_HAND_UP1_1"
.endobj str_SFX_VOICE_MARIO_HAND_bom_00007314

# .rodata:0x197 | 0x10CF | size: 0x1
.obj gap_03_000010CF_rodata, global
.hidden gap_03_000010CF_rodata
	.byte 0x00
.endobj gap_03_000010CF_rodata

# .rodata:0x198 | 0x10D0 | size: 0x6
.obj str_M_N_2_bom_00007330, local
	.string "M_N_2"
.endobj str_M_N_2_bom_00007330

# .rodata:0x19E | 0x10D6 | size: 0x2
.obj gap_03_000010D6_rodata, global
.hidden gap_03_000010D6_rodata
	.2byte 0x0000
.endobj gap_03_000010D6_rodata

# .rodata:0x1A0 | 0x10D8 | size: 0x6
.obj str_M_S_1_bom_00007338, local
	.string "M_S_1"
.endobj str_M_S_1_bom_00007338

# .rodata:0x1A6 | 0x10DE | size: 0x2
.obj gap_03_000010DE_rodata, global
.hidden gap_03_000010DE_rodata
	.2byte 0x0000
.endobj gap_03_000010DE_rodata

# .rodata:0x1A8 | 0x10E0 | size: 0xE
.obj str_stg7_bom_60_2_bom_00007340, local
	.string "stg7_bom_60_2"
.endobj str_stg7_bom_60_2_bom_00007340

# .rodata:0x1B6 | 0x10EE | size: 0x2
.obj gap_03_000010EE_rodata, global
.hidden gap_03_000010EE_rodata
	.2byte 0x0000
.endobj gap_03_000010EE_rodata

# .rodata:0x1B8 | 0x10F0 | size: 0xC
.obj str_stg7_bom_61_bom_00007350, local
	.string "stg7_bom_61"
.endobj str_stg7_bom_61_bom_00007350

# .rodata:0x1C4 | 0x10FC | size: 0xC
.obj str_stg7_bom_62_bom_0000735c, local
	.string "stg7_bom_62"
.endobj str_stg7_bom_62_bom_0000735c

# .rodata:0x1D0 | 0x1108 | size: 0xF
.obj str_stg7_bom_41_01_bom_00007368, local
	.string "stg7_bom_41_01"
.endobj str_stg7_bom_41_01_bom_00007368

# .rodata:0x1DF | 0x1117 | size: 0x1
.obj gap_03_00001117_rodata, global
.hidden gap_03_00001117_rodata
	.byte 0x00
.endobj gap_03_00001117_rodata

# .rodata:0x1E0 | 0x1118 | size: 0xC
.obj str_stg7_bom_39_bom_00007378, local
	.string "stg7_bom_39"
.endobj str_stg7_bom_39_bom_00007378

# .rodata:0x1EC | 0x1124 | size: 0xC
.obj str_stg7_bom_41_bom_00007384, local
	.string "stg7_bom_41"
.endobj str_stg7_bom_41_bom_00007384

# .rodata:0x1F8 | 0x1130 | size: 0x4
.obj str_N_1_bom_00007390, local
	.string "N_1"
.endobj str_N_1_bom_00007390

# .rodata:0x1FC | 0x1134 | size: 0x6
.obj str_M_I_2_bom_00007394, local
	.string "M_I_2"
.endobj str_M_I_2_bom_00007394

# .rodata:0x202 | 0x113A | size: 0x2
.obj gap_03_0000113A_rodata, global
.hidden gap_03_0000113A_rodata
	.2byte 0x0000
.endobj gap_03_0000113A_rodata

# .rodata:0x204 | 0x113C | size: 0xC
.obj str_stg7_bom_40_bom_0000739c, local
	.string "stg7_bom_40"
.endobj str_stg7_bom_40_bom_0000739c

# .rodata:0x210 | 0x1148 | size: 0xF
.obj str_stg7_bom_40_02_bom_000073a8, local
	.string "stg7_bom_40_02"
.endobj str_stg7_bom_40_02_bom_000073a8

# .rodata:0x21F | 0x1157 | size: 0x1
.obj gap_03_00001157_rodata, global
.hidden gap_03_00001157_rodata
	.byte 0x00
.endobj gap_03_00001157_rodata

# .rodata:0x220 | 0x1158 | size: 0xF
.obj str_stg7_bom_20_00_bom_000073b8, local
	.string "stg7_bom_20_00"
.endobj str_stg7_bom_20_00_bom_000073b8

# .rodata:0x22F | 0x1167 | size: 0x1
.obj gap_03_00001167_rodata, global
.hidden gap_03_00001167_rodata
	.byte 0x00
.endobj gap_03_00001167_rodata

# .rodata:0x230 | 0x1168 | size: 0xC
.obj str_stg7_bom_20_bom_000073c8, local
	.string "stg7_bom_20"
.endobj str_stg7_bom_20_bom_000073c8

# .rodata:0x23C | 0x1174 | size: 0xC
.obj str_stg7_bom_21_bom_000073d4, local
	.string "stg7_bom_21"
.endobj str_stg7_bom_21_bom_000073d4

# .rodata:0x248 | 0x1180 | size: 0xF
.obj str_stg7_bom_21_01_bom_000073e0, local
	.string "stg7_bom_21_01"
.endobj str_stg7_bom_21_01_bom_000073e0

# .rodata:0x257 | 0x118F | size: 0x1
.obj gap_03_0000118F_rodata, global
.hidden gap_03_0000118F_rodata
	.byte 0x00
.endobj gap_03_0000118F_rodata

# .rodata:0x258 | 0x1190 | size: 0xC
.obj str_stg7_bom_22_bom_000073f0, local
	.string "stg7_bom_22"
.endobj str_stg7_bom_22_bom_000073f0

# .rodata:0x264 | 0x119C | size: 0xC
.obj str_stg7_bom_23_bom_000073fc, local
	.string "stg7_bom_23"
.endobj str_stg7_bom_23_bom_000073fc

# .rodata:0x270 | 0x11A8 | size: 0xC
.obj str_stg7_bom_24_bom_00007408, local
	.string "stg7_bom_24"
.endobj str_stg7_bom_24_bom_00007408

# .rodata:0x27C | 0x11B4 | size: 0x6
.obj str_party_bom_00007414, local
	.string "party"
.endobj str_party_bom_00007414

# .rodata:0x282 | 0x11BA | size: 0x2
.obj gap_03_000011BA_rodata, global
.hidden gap_03_000011BA_rodata
	.2byte 0x0000
.endobj gap_03_000011BA_rodata

# .rodata:0x284 | 0x11BC | size: 0xC
.obj str_stg7_bom_25_bom_0000741c, local
	.string "stg7_bom_25"
.endobj str_stg7_bom_25_bom_0000741c

# .rodata:0x290 | 0x11C8 | size: 0xC
.obj str_stg7_bom_26_bom_00007428, local
	.string "stg7_bom_26"
.endobj str_stg7_bom_26_bom_00007428

# .rodata:0x29C | 0x11D4 | size: 0xC
.obj str_stg7_bom_27_bom_00007434, local
	.string "stg7_bom_27"
.endobj str_stg7_bom_27_bom_00007434

# .rodata:0x2A8 | 0x11E0 | size: 0xC
.obj str_stg7_bom_28_bom_00007440, local
	.string "stg7_bom_28"
.endobj str_stg7_bom_28_bom_00007440

# .rodata:0x2B4 | 0x11EC | size: 0xC
.obj str_stg7_bom_29_bom_0000744c, local
	.string "stg7_bom_29"
.endobj str_stg7_bom_29_bom_0000744c

# .rodata:0x2C0 | 0x11F8 | size: 0xC
.obj str_stg7_bom_30_bom_00007458, local
	.string "stg7_bom_30"
.endobj str_stg7_bom_30_bom_00007458

# .rodata:0x2CC | 0x1204 | size: 0xC
.obj str_stg7_bom_31_bom_00007464, local
	.string "stg7_bom_31"
.endobj str_stg7_bom_31_bom_00007464

# .rodata:0x2D8 | 0x1210 | size: 0xC
.obj str_stg7_bom_32_bom_00007470, local
	.string "stg7_bom_32"
.endobj str_stg7_bom_32_bom_00007470

# .rodata:0x2E4 | 0x121C | size: 0xF
.obj str_stg7_bom_32_02_bom_0000747c, local
	.string "stg7_bom_32_02"
.endobj str_stg7_bom_32_02_bom_0000747c

# .rodata:0x2F3 | 0x122B | size: 0x1
.obj gap_03_0000122B_rodata, global
.hidden gap_03_0000122B_rodata
	.byte 0x00
.endobj gap_03_0000122B_rodata

# .rodata:0x2F4 | 0x122C | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_bom_0000748c, local
	.string "SFX_VOICE_MARIO_NOD1_2"
.endobj str_SFX_VOICE_MARIO_NOD1_bom_0000748c

# .rodata:0x30B | 0x1243 | size: 0x1
.obj gap_03_00001243_rodata, global
.hidden gap_03_00001243_rodata
	.byte 0x00
.endobj gap_03_00001243_rodata

# .rodata:0x30C | 0x1244 | size: 0xC
.obj str_stg7_bom_33_bom_000074a4, local
	.string "stg7_bom_33"
.endobj str_stg7_bom_33_bom_000074a4

# .rodata:0x318 | 0x1250 | size: 0xC
.obj str_stg7_bom_34_bom_000074b0, local
	.string "stg7_bom_34"
.endobj str_stg7_bom_34_bom_000074b0

# .rodata:0x324 | 0x125C | size: 0xF
.obj str_stg7_bom_34_yn_bom_000074bc, local
	.string "stg7_bom_34_yn"
.endobj str_stg7_bom_34_yn_bom_000074bc

# .rodata:0x333 | 0x126B | size: 0x1
.obj gap_03_0000126B_rodata, global
.hidden gap_03_0000126B_rodata
	.byte 0x00
.endobj gap_03_0000126B_rodata

# .rodata:0x334 | 0x126C | size: 0xC
.obj str_stg7_bom_38_bom_000074cc, local
	.string "stg7_bom_38"
.endobj str_stg7_bom_38_bom_000074cc

# .rodata:0x340 | 0x1278 | size: 0xC
.obj str_stg7_bom_37_bom_000074d8, local
	.string "stg7_bom_37"
.endobj str_stg7_bom_37_bom_000074d8

# .rodata:0x34C | 0x1284 | size: 0xF
.obj str_stg7_bom_38_01_bom_000074e4, local
	.string "stg7_bom_38_01"
.endobj str_stg7_bom_38_01_bom_000074e4

# .rodata:0x35B | 0x1293 | size: 0x1
.obj gap_03_00001293_rodata, global
.hidden gap_03_00001293_rodata
	.byte 0x00
.endobj gap_03_00001293_rodata

# .rodata:0x35C | 0x1294 | size: 0xF
.obj str_stg7_bom_38_02_bom_000074f4, local
	.string "stg7_bom_38_02"
.endobj str_stg7_bom_38_02_bom_000074f4

# .rodata:0x36B | 0x12A3 | size: 0x1
.obj gap_03_000012A3_rodata, global
.hidden gap_03_000012A3_rodata
	.byte 0x00
.endobj gap_03_000012A3_rodata

# .rodata:0x36C | 0x12A4 | size: 0xC
.obj str_irai_30_001_bom_00007504, local
	.string "irai_30_001"
.endobj str_irai_30_001_bom_00007504

# .rodata:0x378 | 0x12B0 | size: 0xC
.obj str_irai_30_002_bom_00007510, local
	.string "irai_30_002"
.endobj str_irai_30_002_bom_00007510

# .rodata:0x384 | 0x12BC | size: 0xC
.obj str_irai_30_003_bom_0000751c, local
	.string "irai_30_003"
.endobj str_irai_30_003_bom_0000751c

# .rodata:0x390 | 0x12C8 | size: 0xC
.obj str_irai_30_004_bom_00007528, local
	.string "irai_30_004"
.endobj str_irai_30_004_bom_00007528

# .rodata:0x39C | 0x12D4 | size: 0xE
.obj str_irai_30_003_1_bom_00007534, local
	.string "irai_30_003_1"
.endobj str_irai_30_003_1_bom_00007534

# .rodata:0x3AA | 0x12E2 | size: 0x2
.obj gap_03_000012E2_rodata, global
.hidden gap_03_000012E2_rodata
	.2byte 0x0000
.endobj gap_03_000012E2_rodata

# .rodata:0x3AC | 0x12E4 | size: 0x3
.obj str_sr_bom_00007544, local
	.string "sr"
.endobj str_sr_bom_00007544

# .rodata:0x3AF | 0x12E7 | size: 0x1
.obj gap_03_000012E7_rodata, global
.hidden gap_03_000012E7_rodata
	.byte 0x00
.endobj gap_03_000012E7_rodata

# .rodata:0x3B0 | 0x12E8 | size: 0xE
.obj str_irai_30_005_1_bom_00007548, local
	.string "irai_30_005_1"
.endobj str_irai_30_005_1_bom_00007548

# .rodata:0x3BE | 0x12F6 | size: 0x2
.obj gap_03_000012F6_rodata, global
.hidden gap_03_000012F6_rodata
	.2byte 0x0000
.endobj gap_03_000012F6_rodata

# .rodata:0x3C0 | 0x12F8 | size: 0x7
.obj str_iri_30_bom_00007558, local
	.string "iri_30"
.endobj str_iri_30_bom_00007558

# .rodata:0x3C7 | 0x12FF | size: 0x1
.obj gap_03_000012FF_rodata, global
.hidden gap_03_000012FF_rodata
	.byte 0x00
.endobj gap_03_000012FF_rodata

# .rodata:0x3C8 | 0x1300 | size: 0xC
.obj str_irai_30_006_bom_00007560, local
	.string "irai_30_006"
.endobj str_irai_30_006_bom_00007560

# .rodata:0x3D4 | 0x130C | size: 0x13
.obj str_sys_request_finish_bom_0000756c, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_bom_0000756c

# .rodata:0x3E7 | 0x131F | size: 0x1
.obj gap_03_0000131F_rodata, global
.hidden gap_03_0000131F_rodata
	.byte 0x00
.endobj gap_03_0000131F_rodata

# .rodata:0x3E8 | 0x1320 | size: 0xF
.obj str_stg7_bom_10_00_bom_00007580, local
	.string "stg7_bom_10_00"
.endobj str_stg7_bom_10_00_bom_00007580

# .rodata:0x3F7 | 0x132F | size: 0x1
.obj gap_03_0000132F_rodata, global
.hidden gap_03_0000132F_rodata
	.byte 0x00
.endobj gap_03_0000132F_rodata

# .rodata:0x3F8 | 0x1330 | size: 0xC
.obj str_stg7_bom_10_bom_00007590, local
	.string "stg7_bom_10"
.endobj str_stg7_bom_10_bom_00007590

# .rodata:0x404 | 0x133C | size: 0xE
.obj str_stg7_bom_10_1_bom_0000759c, local
	.string "stg7_bom_10_1"
.endobj str_stg7_bom_10_1_bom_0000759c

# .rodata:0x412 | 0x134A | size: 0x2
.obj gap_03_0000134A_rodata, global
.hidden gap_03_0000134A_rodata
	.2byte 0x0000
.endobj gap_03_0000134A_rodata

# .rodata:0x414 | 0x134C | size: 0xC
.obj str_stg7_bom_11_bom_000075ac, local
	.string "stg7_bom_11"
.endobj str_stg7_bom_11_bom_000075ac

# .rodata:0x420 | 0x1358 | size: 0xE
.obj str_stg7_bom_11_1_bom_000075b8, local
	.string "stg7_bom_11_1"
.endobj str_stg7_bom_11_1_bom_000075b8

# .rodata:0x42E | 0x1366 | size: 0x2
.obj gap_03_00001366_rodata, global
.hidden gap_03_00001366_rodata
	.2byte 0x0000
.endobj gap_03_00001366_rodata

# .rodata:0x430 | 0x1368 | size: 0xF
.obj str_stg7_bom_12_00_bom_000075c8, local
	.string "stg7_bom_12_00"
.endobj str_stg7_bom_12_00_bom_000075c8

# .rodata:0x43F | 0x1377 | size: 0x1
.obj gap_03_00001377_rodata, global
.hidden gap_03_00001377_rodata
	.byte 0x00
.endobj gap_03_00001377_rodata

# .rodata:0x440 | 0x1378 | size: 0xC
.obj str_stg7_bom_12_bom_000075d8, local
	.string "stg7_bom_12"
.endobj str_stg7_bom_12_bom_000075d8

# .rodata:0x44C | 0x1384 | size: 0xE
.obj str_stg7_bom_12_1_bom_000075e4, local
	.string "stg7_bom_12_1"
.endobj str_stg7_bom_12_1_bom_000075e4

# .rodata:0x45A | 0x1392 | size: 0x2
.obj gap_03_00001392_rodata, global
.hidden gap_03_00001392_rodata
	.2byte 0x0000
.endobj gap_03_00001392_rodata

# .rodata:0x45C | 0x1394 | size: 0xC
.obj str_stg7_bom_13_bom_000075f4, local
	.string "stg7_bom_13"
.endobj str_stg7_bom_13_bom_000075f4

# .rodata:0x468 | 0x13A0 | size: 0xE
.obj str_stg7_bom_13_1_bom_00007600, local
	.string "stg7_bom_13_1"
.endobj str_stg7_bom_13_1_bom_00007600

# .rodata:0x476 | 0x13AE | size: 0x2
.obj gap_03_000013AE_rodata, global
.hidden gap_03_000013AE_rodata
	.2byte 0x0000
.endobj gap_03_000013AE_rodata

# .rodata:0x478 | 0x13B0 | size: 0xB
.obj str_irai_25_00_bom_00007610, local
	.string "irai_25_00"
.endobj str_irai_25_00_bom_00007610

# .rodata:0x483 | 0x13BB | size: 0x1
.obj gap_03_000013BB_rodata, global
.hidden gap_03_000013BB_rodata
	.byte 0x00
.endobj gap_03_000013BB_rodata

# .rodata:0x484 | 0x13BC | size: 0xB
.obj str_irai_25_01_bom_0000761c, local
	.string "irai_25_01"
.endobj str_irai_25_01_bom_0000761c

# .rodata:0x48F | 0x13C7 | size: 0x1
.obj gap_03_000013C7_rodata, global
.hidden gap_03_000013C7_rodata
	.byte 0x00
.endobj gap_03_000013C7_rodata

# .rodata:0x490 | 0x13C8 | size: 0xF
.obj str_stg7_bom_14_00_bom_00007628, local
	.string "stg7_bom_14_00"
.endobj str_stg7_bom_14_00_bom_00007628

# .rodata:0x49F | 0x13D7 | size: 0x1
.obj gap_03_000013D7_rodata, global
.hidden gap_03_000013D7_rodata
	.byte 0x00
.endobj gap_03_000013D7_rodata

# .rodata:0x4A0 | 0x13D8 | size: 0xC
.obj str_stg7_bom_14_bom_00007638, local
	.string "stg7_bom_14"
.endobj str_stg7_bom_14_bom_00007638

# .rodata:0x4AC | 0x13E4 | size: 0xE
.obj str_stg7_bom_14_1_bom_00007644, local
	.string "stg7_bom_14_1"
.endobj str_stg7_bom_14_1_bom_00007644

# .rodata:0x4BA | 0x13F2 | size: 0x2
.obj gap_03_000013F2_rodata, global
.hidden gap_03_000013F2_rodata
	.2byte 0x0000
.endobj gap_03_000013F2_rodata

# .rodata:0x4BC | 0x13F4 | size: 0xC
.obj str_stg7_bom_15_bom_00007654, local
	.string "stg7_bom_15"
.endobj str_stg7_bom_15_bom_00007654

# .rodata:0x4C8 | 0x1400 | size: 0xE
.obj str_stg7_bom_15_1_bom_00007660, local
	.string "stg7_bom_15_1"
.endobj str_stg7_bom_15_1_bom_00007660

# .rodata:0x4D6 | 0x140E | size: 0x2
.obj gap_03_0000140E_rodata, global
.hidden gap_03_0000140E_rodata
	.2byte 0x0000
.endobj gap_03_0000140E_rodata

# .rodata:0x4D8 | 0x1410 | size: 0xB
.obj str_irai_26_01_bom_00007670, local
	.string "irai_26_01"
.endobj str_irai_26_01_bom_00007670

# .rodata:0x4E3 | 0x141B | size: 0x1
.obj gap_03_0000141B_rodata, global
.hidden gap_03_0000141B_rodata
	.byte 0x00
.endobj gap_03_0000141B_rodata

# .rodata:0x4E4 | 0x141C | size: 0xD
.obj str_irai_26_01_s_bom_0000767c, local
	.string "irai_26_01_s"
.endobj str_irai_26_01_s_bom_0000767c

# .rodata:0x4F1 | 0x1429 | size: 0x3
.obj gap_03_00001429_rodata, global
.hidden gap_03_00001429_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001429_rodata

# .rodata:0x4F4 | 0x142C | size: 0xB
.obj str_irai_26_02_bom_0000768c, local
	.string "irai_26_02"
.endobj str_irai_26_02_bom_0000768c

# .rodata:0x4FF | 0x1437 | size: 0x1
.obj gap_03_00001437_rodata, global
.hidden gap_03_00001437_rodata
	.byte 0x00
.endobj gap_03_00001437_rodata

# .rodata:0x500 | 0x1438 | size: 0xD
.obj str_irai_26_02_s_bom_00007698, local
	.string "irai_26_02_s"
.endobj str_irai_26_02_s_bom_00007698

# .rodata:0x50D | 0x1445 | size: 0x3
.obj gap_03_00001445_rodata, global
.hidden gap_03_00001445_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001445_rodata

# .rodata:0x510 | 0x1448 | size: 0xB
.obj str_irai_26_03_bom_000076a8, local
	.string "irai_26_03"
.endobj str_irai_26_03_bom_000076a8

# .rodata:0x51B | 0x1453 | size: 0x1
.obj gap_03_00001453_rodata, global
.hidden gap_03_00001453_rodata
	.byte 0x00
.endobj gap_03_00001453_rodata

# .rodata:0x51C | 0x1454 | size: 0xD
.obj str_irai_26_03_s_bom_000076b4, local
	.string "irai_26_03_s"
.endobj str_irai_26_03_s_bom_000076b4

# .rodata:0x529 | 0x1461 | size: 0x3
.obj gap_03_00001461_rodata, global
.hidden gap_03_00001461_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001461_rodata

# .rodata:0x52C | 0x1464 | size: 0xB
.obj str_irai_26_04_bom_000076c4, local
	.string "irai_26_04"
.endobj str_irai_26_04_bom_000076c4

# .rodata:0x537 | 0x146F | size: 0x1
.obj gap_03_0000146F_rodata, global
.hidden gap_03_0000146F_rodata
	.byte 0x00
.endobj gap_03_0000146F_rodata

# .rodata:0x538 | 0x1470 | size: 0xB
.obj str_irai_26_05_bom_000076d0, local
	.string "irai_26_05"
.endobj str_irai_26_05_bom_000076d0

# .rodata:0x543 | 0x147B | size: 0x1
.obj gap_03_0000147B_rodata, global
.hidden gap_03_0000147B_rodata
	.byte 0x00
.endobj gap_03_0000147B_rodata

# .rodata:0x544 | 0x147C | size: 0xB
.obj str_irai_26_00_bom_000076dc, local
	.string "irai_26_00"
.endobj str_irai_26_00_bom_000076dc

# .rodata:0x54F | 0x1487 | size: 0x1
.obj gap_03_00001487_rodata, global
.hidden gap_03_00001487_rodata
	.byte 0x00
.endobj gap_03_00001487_rodata

# .rodata:0x550 | 0x1488 | size: 0xF
.obj str_stg7_bom_16_00_bom_000076e8, local
	.string "stg7_bom_16_00"
.endobj str_stg7_bom_16_00_bom_000076e8

# .rodata:0x55F | 0x1497 | size: 0x1
.obj gap_03_00001497_rodata, global
.hidden gap_03_00001497_rodata
	.byte 0x00
.endobj gap_03_00001497_rodata

# .rodata:0x560 | 0x1498 | size: 0xC
.obj str_stg7_bom_16_bom_000076f8, local
	.string "stg7_bom_16"
.endobj str_stg7_bom_16_bom_000076f8

# .rodata:0x56C | 0x14A4 | size: 0xE
.obj str_stg7_bom_16_1_bom_00007704, local
	.string "stg7_bom_16_1"
.endobj str_stg7_bom_16_1_bom_00007704

# .rodata:0x57A | 0x14B2 | size: 0x2
.obj gap_03_000014B2_rodata, global
.hidden gap_03_000014B2_rodata
	.2byte 0x0000
.endobj gap_03_000014B2_rodata

# .rodata:0x57C | 0x14B4 | size: 0xC
.obj str_stg7_bom_17_bom_00007714, local
	.string "stg7_bom_17"
.endobj str_stg7_bom_17_bom_00007714

# .rodata:0x588 | 0x14C0 | size: 0xE
.obj str_stg7_bom_17_1_bom_00007720, local
	.string "stg7_bom_17_1"
.endobj str_stg7_bom_17_1_bom_00007720

# .rodata:0x596 | 0x14CE | size: 0x2
.obj gap_03_000014CE_rodata, global
.hidden gap_03_000014CE_rodata
	.2byte 0x0000
.endobj gap_03_000014CE_rodata

# .rodata:0x598 | 0x14D0 | size: 0xF
.obj str_stg7_bom_18_00_bom_00007730, local
	.string "stg7_bom_18_00"
.endobj str_stg7_bom_18_00_bom_00007730

# .rodata:0x5A7 | 0x14DF | size: 0x1
.obj gap_03_000014DF_rodata, global
.hidden gap_03_000014DF_rodata
	.byte 0x00
.endobj gap_03_000014DF_rodata

# .rodata:0x5A8 | 0x14E0 | size: 0xC
.obj str_stg7_bom_18_bom_00007740, local
	.string "stg7_bom_18"
.endobj str_stg7_bom_18_bom_00007740

# .rodata:0x5B4 | 0x14EC | size: 0xE
.obj str_stg7_bom_18_1_bom_0000774c, local
	.string "stg7_bom_18_1"
.endobj str_stg7_bom_18_1_bom_0000774c

# .rodata:0x5C2 | 0x14FA | size: 0x2
.obj gap_03_000014FA_rodata, global
.hidden gap_03_000014FA_rodata
	.2byte 0x0000
.endobj gap_03_000014FA_rodata

# .rodata:0x5C4 | 0x14FC | size: 0xC
.obj str_stg7_bom_19_bom_0000775c, local
	.string "stg7_bom_19"
.endobj str_stg7_bom_19_bom_0000775c

# .rodata:0x5D0 | 0x1508 | size: 0xE
.obj str_stg7_bom_19_1_bom_00007768, local
	.string "stg7_bom_19_1"
.endobj str_stg7_bom_19_1_bom_00007768

# .rodata:0x5DE | 0x1516 | size: 0x2
.obj gap_03_00001516_rodata, global
.hidden gap_03_00001516_rodata
	.2byte 0x0000
.endobj gap_03_00001516_rodata

# .rodata:0x5E0 | 0x1518 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__bom_00007778, local
	.string "SFX_VOICE_MARIO_FLD_JUMP1"
.endobj str_SFX_VOICE_MARIO_FLD__bom_00007778

# .rodata:0x5FA | 0x1532 | size: 0x2
.obj gap_03_00001532_rodata, global
.hidden gap_03_00001532_rodata
	.2byte 0x0000
.endobj gap_03_00001532_rodata

# .rodata:0x5FC | 0x1534 | size: 0x5
.obj str_nice_bom_00007794, local
	.string "nice"
.endobj str_nice_bom_00007794

# .rodata:0x601 | 0x1539 | size: 0x3
.obj gap_03_00001539_rodata, global
.hidden gap_03_00001539_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001539_rodata

# .rodata:0x604 | 0x153C | size: 0xB
.obj str_small_star_bom_0000779c, local
	.string "small_star"
.endobj str_small_star_bom_0000779c

# .rodata:0x60F | 0x1547 | size: 0x1
.obj gap_03_00001547_rodata, global
.hidden gap_03_00001547_rodata
	.byte 0x00
.endobj gap_03_00001547_rodata

# .rodata:0x610 | 0x1548 | size: 0x18
.obj str_SFX_STG7_WHITE_DAMAG_bom_000077a8, local
	.string "SFX_STG7_WHITE_DAMAGED1"
.endobj str_SFX_STG7_WHITE_DAMAG_bom_000077a8

# .rodata:0x628 | 0x1560 | size: 0x15
.obj str_SFX_STG7_WHITE_NICE1_bom_000077c0, local
	.string "SFX_STG7_WHITE_NICE1"
.endobj str_SFX_STG7_WHITE_NICE1_bom_000077c0

# .rodata:0x63D | 0x1575 | size: 0x3
.obj gap_03_00001575_rodata, global
.hidden gap_03_00001575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001575_rodata

# .rodata:0x640 | 0x1578 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__bom_000077d8, local
	.string "SFX_VOICE_MARIO_FLD_JUMP4"
.endobj str_SFX_VOICE_MARIO_FLD__bom_000077d8

# .rodata:0x65A | 0x1592 | size: 0x2
.obj gap_03_00001592_rodata, global
.hidden gap_03_00001592_rodata
	.2byte 0x0000
.endobj gap_03_00001592_rodata

# .rodata:0x65C | 0x1594 | size: 0x15
.obj str_SFX_STG7_WHITE_GOOD1_bom_000077f4, local
	.string "SFX_STG7_WHITE_GOOD1"
.endobj str_SFX_STG7_WHITE_GOOD1_bom_000077f4

# .rodata:0x671 | 0x15A9 | size: 0x3
.obj gap_03_000015A9_rodata, global
.hidden gap_03_000015A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015A9_rodata

# .rodata:0x674 | 0x15AC | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__bom_0000780c, local
	.string "SFX_VOICE_MARIO_FLD_JUMP2"
.endobj str_SFX_VOICE_MARIO_FLD__bom_0000780c

# .rodata:0x68E | 0x15C6 | size: 0x2
.obj gap_03_000015C6_rodata, global
.hidden gap_03_000015C6_rodata
	.2byte 0x0000
.endobj gap_03_000015C6_rodata

# .rodata:0x690 | 0x15C8 | size: 0xB
.obj str_irai_25_19_bom_00007828, local
	.string "irai_25_19"
.endobj str_irai_25_19_bom_00007828

# .rodata:0x69B | 0x15D3 | size: 0x1
.obj gap_03_000015D3_rodata, global
.hidden gap_03_000015D3_rodata
	.byte 0x00
.endobj gap_03_000015D3_rodata

# .rodata:0x69C | 0x15D4 | size: 0xB
.obj str_irai_25_18_bom_00007834, local
	.string "irai_25_18"
.endobj str_irai_25_18_bom_00007834

# .rodata:0x6A7 | 0x15DF | size: 0x1
.obj gap_03_000015DF_rodata, global
.hidden gap_03_000015DF_rodata
	.byte 0x00
.endobj gap_03_000015DF_rodata

# .rodata:0x6A8 | 0x15E0 | size: 0xB
.obj str_irai_25_02_bom_00007840, local
	.string "irai_25_02"
.endobj str_irai_25_02_bom_00007840

# .rodata:0x6B3 | 0x15EB | size: 0x1
.obj gap_03_000015EB_rodata, global
.hidden gap_03_000015EB_rodata
	.byte 0x00
.endobj gap_03_000015EB_rodata

# .rodata:0x6B4 | 0x15EC | size: 0xE
.obj str_irai_25_yesno_bom_0000784c, local
	.string "irai_25_yesno"
.endobj str_irai_25_yesno_bom_0000784c

# .rodata:0x6C2 | 0x15FA | size: 0x2
.obj gap_03_000015FA_rodata, global
.hidden gap_03_000015FA_rodata
	.2byte 0x0000
.endobj gap_03_000015FA_rodata

# .rodata:0x6C4 | 0x15FC | size: 0xB
.obj str_irai_25_03_bom_0000785c, local
	.string "irai_25_03"
.endobj str_irai_25_03_bom_0000785c

# .rodata:0x6CF | 0x1607 | size: 0x1
.obj gap_03_00001607_rodata, global
.hidden gap_03_00001607_rodata
	.byte 0x00
.endobj gap_03_00001607_rodata

# .rodata:0x6D0 | 0x1608 | size: 0xB
.obj str_irai_25_04_bom_00007868, local
	.string "irai_25_04"
.endobj str_irai_25_04_bom_00007868

# .rodata:0x6DB | 0x1613 | size: 0x1
.obj gap_03_00001613_rodata, global
.hidden gap_03_00001613_rodata
	.byte 0x00
.endobj gap_03_00001613_rodata

# .rodata:0x6DC | 0x1614 | size: 0xB
.obj str_irai_25_05_bom_00007874, local
	.string "irai_25_05"
.endobj str_irai_25_05_bom_00007874

# .rodata:0x6E7 | 0x161F | size: 0x1
.obj gap_03_0000161F_rodata, global
.hidden gap_03_0000161F_rodata
	.byte 0x00
.endobj gap_03_0000161F_rodata

# .rodata:0x6E8 | 0x1620 | size: 0xB
.obj str_irai_25_06_bom_00007880, local
	.string "irai_25_06"
.endobj str_irai_25_06_bom_00007880

# .rodata:0x6F3 | 0x162B | size: 0x1
.obj gap_03_0000162B_rodata, global
.hidden gap_03_0000162B_rodata
	.byte 0x00
.endobj gap_03_0000162B_rodata

# .rodata:0x6F4 | 0x162C | size: 0xB
.obj str_irai_25_07_bom_0000788c, local
	.string "irai_25_07"
.endobj str_irai_25_07_bom_0000788c

# .rodata:0x6FF | 0x1637 | size: 0x1
.obj gap_03_00001637_rodata, global
.hidden gap_03_00001637_rodata
	.byte 0x00
.endobj gap_03_00001637_rodata

# .rodata:0x700 | 0x1638 | size: 0xB
.obj str_irai_25_08_bom_00007898, local
	.string "irai_25_08"
.endobj str_irai_25_08_bom_00007898

# .rodata:0x70B | 0x1643 | size: 0x1
.obj gap_03_00001643_rodata, global
.hidden gap_03_00001643_rodata
	.byte 0x00
.endobj gap_03_00001643_rodata

# .rodata:0x70C | 0x1644 | size: 0xB
.obj str_irai_25_09_bom_000078a4, local
	.string "irai_25_09"
.endobj str_irai_25_09_bom_000078a4

# .rodata:0x717 | 0x164F | size: 0x1
.obj gap_03_0000164F_rodata, global
.hidden gap_03_0000164F_rodata
	.byte 0x00
.endobj gap_03_0000164F_rodata

# .rodata:0x718 | 0x1650 | size: 0xB
.obj str_irai_25_10_bom_000078b0, local
	.string "irai_25_10"
.endobj str_irai_25_10_bom_000078b0

# .rodata:0x723 | 0x165B | size: 0x1
.obj gap_03_0000165B_rodata, global
.hidden gap_03_0000165B_rodata
	.byte 0x00
.endobj gap_03_0000165B_rodata

# .rodata:0x724 | 0x165C | size: 0xB
.obj str_irai_25_11_bom_000078bc, local
	.string "irai_25_11"
.endobj str_irai_25_11_bom_000078bc

# .rodata:0x72F | 0x1667 | size: 0x1
.obj gap_03_00001667_rodata, global
.hidden gap_03_00001667_rodata
	.byte 0x00
.endobj gap_03_00001667_rodata

# .rodata:0x730 | 0x1668 | size: 0xB
.obj str_irai_25_12_bom_000078c8, local
	.string "irai_25_12"
.endobj str_irai_25_12_bom_000078c8

# .rodata:0x73B | 0x1673 | size: 0x1
.obj gap_03_00001673_rodata, global
.hidden gap_03_00001673_rodata
	.byte 0x00
.endobj gap_03_00001673_rodata

# .rodata:0x73C | 0x1674 | size: 0xB
.obj str_irai_25_13_bom_000078d4, local
	.string "irai_25_13"
.endobj str_irai_25_13_bom_000078d4

# .rodata:0x747 | 0x167F | size: 0x1
.obj gap_03_0000167F_rodata, global
.hidden gap_03_0000167F_rodata
	.byte 0x00
.endobj gap_03_0000167F_rodata

# .rodata:0x748 | 0x1680 | size: 0xB
.obj str_irai_25_14_bom_000078e0, local
	.string "irai_25_14"
.endobj str_irai_25_14_bom_000078e0

# .rodata:0x753 | 0x168B | size: 0x1
.obj gap_03_0000168B_rodata, global
.hidden gap_03_0000168B_rodata
	.byte 0x00
.endobj gap_03_0000168B_rodata

# .rodata:0x754 | 0x168C | size: 0x4
.obj str_N_2_bom_000078ec, local
	.string "N_2"
.endobj str_N_2_bom_000078ec

# .rodata:0x758 | 0x1690 | size: 0x16
.obj str_SFX_STG7_WHITE_ROUND_bom_000078f0, local
	.string "SFX_STG7_WHITE_ROUND1"
.endobj str_SFX_STG7_WHITE_ROUND_bom_000078f0

# .rodata:0x76E | 0x16A6 | size: 0x2
.obj gap_03_000016A6_rodata, global
.hidden gap_03_000016A6_rodata
	.2byte 0x0000
.endobj gap_03_000016A6_rodata

# .rodata:0x770 | 0x16A8 | size: 0x4
.obj str_O_1_bom_00007908, local
	.string "O_1"
.endobj str_O_1_bom_00007908

# .rodata:0x774 | 0x16AC | size: 0x4
.obj str_O_2_bom_0000790c, local
	.string "O_2"
.endobj str_O_2_bom_0000790c

# .rodata:0x778 | 0x16B0 | size: 0xB
.obj str_irai_25_15_bom_00007910, local
	.string "irai_25_15"
.endobj str_irai_25_15_bom_00007910

# .rodata:0x783 | 0x16BB | size: 0x1
.obj gap_03_000016BB_rodata, global
.hidden gap_03_000016BB_rodata
	.byte 0x00
.endobj gap_03_000016BB_rodata

# .rodata:0x784 | 0x16BC | size: 0xB
.obj str_irai_25_16_bom_0000791c, local
	.string "irai_25_16"
.endobj str_irai_25_16_bom_0000791c

# .rodata:0x78F | 0x16C7 | size: 0x1
.obj gap_03_000016C7_rodata, global
.hidden gap_03_000016C7_rodata
	.byte 0x00
.endobj gap_03_000016C7_rodata

# .rodata:0x790 | 0x16C8 | size: 0xB
.obj str_irai_25_17_bom_00007928, local
	.string "irai_25_17"
.endobj str_irai_25_17_bom_00007928

# .rodata:0x79B | 0x16D3 | size: 0x1
.obj gap_03_000016D3_rodata, global
.hidden gap_03_000016D3_rodata
	.byte 0x00
.endobj gap_03_000016D3_rodata

# .rodata:0x79C | 0x16D4 | size: 0xC
.obj str_stg7_bom_43_bom_00007934, local
	.string "stg7_bom_43"
.endobj str_stg7_bom_43_bom_00007934

# .rodata:0x7A8 | 0x16E0 | size: 0xF
.obj str_stg7_bom_43_yn_bom_00007940, local
	.string "stg7_bom_43_yn"
.endobj str_stg7_bom_43_yn_bom_00007940

# .rodata:0x7B7 | 0x16EF | size: 0x1
.obj gap_03_000016EF_rodata, global
.hidden gap_03_000016EF_rodata
	.byte 0x00
.endobj gap_03_000016EF_rodata

# .rodata:0x7B8 | 0x16F0 | size: 0xC
.obj str_stg7_bom_44_bom_00007950, local
	.string "stg7_bom_44"
.endobj str_stg7_bom_44_bom_00007950

# .rodata:0x7C4 | 0x16FC | size: 0xF
.obj str_stg7_bom_44_yn_bom_0000795c, local
	.string "stg7_bom_44_yn"
.endobj str_stg7_bom_44_yn_bom_0000795c

# .rodata:0x7D3 | 0x170B | size: 0x1
.obj gap_03_0000170B_rodata, global
.hidden gap_03_0000170B_rodata
	.byte 0x00
.endobj gap_03_0000170B_rodata

# .rodata:0x7D4 | 0x170C | size: 0xC
.obj str_stg7_bom_45_bom_0000796c, local
	.string "stg7_bom_45"
.endobj str_stg7_bom_45_bom_0000796c

# .rodata:0x7E0 | 0x1718 | size: 0xF
.obj str_stg7_bom_45_yn_bom_00007978, local
	.string "stg7_bom_45_yn"
.endobj str_stg7_bom_45_yn_bom_00007978

# .rodata:0x7EF | 0x1727 | size: 0x1
.obj gap_03_00001727_rodata, global
.hidden gap_03_00001727_rodata
	.byte 0x00
.endobj gap_03_00001727_rodata

# .rodata:0x7F0 | 0x1728 | size: 0xC
.obj str_stg7_bom_46_bom_00007988, local
	.string "stg7_bom_46"
.endobj str_stg7_bom_46_bom_00007988

# .rodata:0x7FC | 0x1734 | size: 0xF
.obj str_stg7_bom_46_yn_bom_00007994, local
	.string "stg7_bom_46_yn"
.endobj str_stg7_bom_46_yn_bom_00007994

# .rodata:0x80B | 0x1743 | size: 0x1
.obj gap_03_00001743_rodata, global
.hidden gap_03_00001743_rodata
	.byte 0x00
.endobj gap_03_00001743_rodata

# .rodata:0x80C | 0x1744 | size: 0xC
.obj str_stg7_bom_47_bom_000079a4, local
	.string "stg7_bom_47"
.endobj str_stg7_bom_47_bom_000079a4

# .rodata:0x818 | 0x1750 | size: 0xF
.obj str_stg7_bom_47_yn_bom_000079b0, local
	.string "stg7_bom_47_yn"
.endobj str_stg7_bom_47_yn_bom_000079b0

# .rodata:0x827 | 0x175F | size: 0x1
.obj gap_03_0000175F_rodata, global
.hidden gap_03_0000175F_rodata
	.byte 0x00
.endobj gap_03_0000175F_rodata

# .rodata:0x828 | 0x1760 | size: 0xC
.obj str_stg7_bom_48_bom_000079c0, local
	.string "stg7_bom_48"
.endobj str_stg7_bom_48_bom_000079c0

# .rodata:0x834 | 0x176C | size: 0xF
.obj str_stg7_bom_48_yn_bom_000079cc, local
	.string "stg7_bom_48_yn"
.endobj str_stg7_bom_48_yn_bom_000079cc

# .rodata:0x843 | 0x177B | size: 0x1
.obj gap_03_0000177B_rodata, global
.hidden gap_03_0000177B_rodata
	.byte 0x00
.endobj gap_03_0000177B_rodata

# .rodata:0x844 | 0x177C | size: 0xC
.obj str_stg7_bom_49_bom_000079dc, local
	.string "stg7_bom_49"
.endobj str_stg7_bom_49_bom_000079dc

# .rodata:0x850 | 0x1788 | size: 0xF
.obj str_stg7_bom_49_yn_bom_000079e8, local
	.string "stg7_bom_49_yn"
.endobj str_stg7_bom_49_yn_bom_000079e8

# .rodata:0x85F | 0x1797 | size: 0x1
.obj gap_03_00001797_rodata, global
.hidden gap_03_00001797_rodata
	.byte 0x00
.endobj gap_03_00001797_rodata

# .rodata:0x860 | 0x1798 | size: 0xC
.obj str_stg7_bom_50_bom_000079f8, local
	.string "stg7_bom_50"
.endobj str_stg7_bom_50_bom_000079f8

# .rodata:0x86C | 0x17A4 | size: 0xF
.obj str_stg7_bom_50_yn_bom_00007a04, local
	.string "stg7_bom_50_yn"
.endobj str_stg7_bom_50_yn_bom_00007a04

# .rodata:0x87B | 0x17B3 | size: 0x1
.obj gap_03_000017B3_rodata, global
.hidden gap_03_000017B3_rodata
	.byte 0x00
.endobj gap_03_000017B3_rodata

# .rodata:0x87C | 0x17B4 | size: 0xC
.obj str_stg7_bom_51_bom_00007a14, local
	.string "stg7_bom_51"
.endobj str_stg7_bom_51_bom_00007a14

# .rodata:0x888 | 0x17C0 | size: 0xF
.obj str_stg7_bom_51_yn_bom_00007a20, local
	.string "stg7_bom_51_yn"
.endobj str_stg7_bom_51_yn_bom_00007a20

# .rodata:0x897 | 0x17CF | size: 0x1
.obj gap_03_000017CF_rodata, global
.hidden gap_03_000017CF_rodata
	.byte 0x00
.endobj gap_03_000017CF_rodata

# .rodata:0x898 | 0x17D0 | size: 0xC
.obj str_stg7_bom_52_bom_00007a30, local
	.string "stg7_bom_52"
.endobj str_stg7_bom_52_bom_00007a30

# .rodata:0x8A4 | 0x17DC | size: 0xF
.obj str_stg7_bom_52_yn_bom_00007a3c, local
	.string "stg7_bom_52_yn"
.endobj str_stg7_bom_52_yn_bom_00007a3c

# .rodata:0x8B3 | 0x17EB | size: 0x1
.obj gap_03_000017EB_rodata, global
.hidden gap_03_000017EB_rodata
	.byte 0x00
.endobj gap_03_000017EB_rodata

# .rodata:0x8B4 | 0x17EC | size: 0xC
.obj str_stg7_bom_53_bom_00007a4c, local
	.string "stg7_bom_53"
.endobj str_stg7_bom_53_bom_00007a4c

# .rodata:0x8C0 | 0x17F8 | size: 0xF
.obj str_stg7_bom_53_yn_bom_00007a58, local
	.string "stg7_bom_53_yn"
.endobj str_stg7_bom_53_yn_bom_00007a58

# .rodata:0x8CF | 0x1807 | size: 0x1
.obj gap_03_00001807_rodata, global
.hidden gap_03_00001807_rodata
	.byte 0x00
.endobj gap_03_00001807_rodata

# .rodata:0x8D0 | 0x1808 | size: 0xC
.obj str_stg7_bom_54_bom_00007a68, local
	.string "stg7_bom_54"
.endobj str_stg7_bom_54_bom_00007a68

# .rodata:0x8DC | 0x1814 | size: 0xC
.obj str_stg7_bom_55_bom_00007a74, local
	.string "stg7_bom_55"
.endobj str_stg7_bom_55_bom_00007a74

# .rodata:0x8E8 | 0x1820 | size: 0xC
.obj str_stg7_bom_56_bom_00007a80, local
	.string "stg7_bom_56"
.endobj str_stg7_bom_56_bom_00007a80

# .rodata:0x8F4 | 0x182C | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_bom_00007a8c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_bom_00007a8c

# .rodata:0x90F | 0x1847 | size: 0x1
.obj gap_03_00001847_rodata, global
.hidden gap_03_00001847_rodata
	.byte 0x00
.endobj gap_03_00001847_rodata

# .rodata:0x910 | 0x1848 | size: 0xC
.obj str_stg7_bom_57_bom_00007aa8, local
	.string "stg7_bom_57"
.endobj str_stg7_bom_57_bom_00007aa8

# .rodata:0x91C | 0x1854 | size: 0x7
.obj str_M_N_5B_bom_00007ab4, local
	.string "M_N_5B"
.endobj str_M_N_5B_bom_00007ab4

# .rodata:0x923 | 0x185B | size: 0x1
.obj gap_03_0000185B_rodata, global
.hidden gap_03_0000185B_rodata
	.byte 0x00
.endobj gap_03_0000185B_rodata

# .rodata:0x924 | 0x185C | size: 0xC
.obj str_stg7_bom_58_bom_00007abc, local
	.string "stg7_bom_58"
.endobj str_stg7_bom_58_bom_00007abc

# .rodata:0x930 | 0x1868 | size: 0xC
.obj str_stg7_bom_59_bom_00007ac8, local
	.string "stg7_bom_59"
.endobj str_stg7_bom_59_bom_00007ac8

# .rodata:0x93C | 0x1874 | size: 0xF
.obj str_stg7_bom_19_01_bom_00007ad4, local
	.string "stg7_bom_19_01"
.endobj str_stg7_bom_19_01_bom_00007ad4

# .rodata:0x94B | 0x1883 | size: 0x1
.obj gap_03_00001883_rodata, global
.hidden gap_03_00001883_rodata
	.byte 0x00
.endobj gap_03_00001883_rodata

# .rodata:0x94C | 0x1884 | size: 0xF
.obj str_stg7_bom_19_02_bom_00007ae4, local
	.string "stg7_bom_19_02"
.endobj str_stg7_bom_19_02_bom_00007ae4

# .rodata:0x95B | 0x1893 | size: 0x1
.obj gap_03_00001893_rodata, global
.hidden gap_03_00001893_rodata
	.byte 0x00
.endobj gap_03_00001893_rodata

# .rodata:0x95C | 0x1894 | size: 0xF
.obj str_stg7_bom_19_03_bom_00007af4, local
	.string "stg7_bom_19_03"
.endobj str_stg7_bom_19_03_bom_00007af4

# .rodata:0x96B | 0x18A3 | size: 0x1
.obj gap_03_000018A3_rodata, global
.hidden gap_03_000018A3_rodata
	.byte 0x00
.endobj gap_03_000018A3_rodata

# .rodata:0x96C | 0x18A4 | size: 0x9
.obj str_キザ野郎_bom_00007b04, local
	.4byte 0x834C8355
	.4byte 0x96EC9859
	.byte 0x00
.endobj str_キザ野郎_bom_00007b04

# .rodata:0x975 | 0x18AD | size: 0x3
.obj gap_03_000018AD_rodata, global
.hidden gap_03_000018AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000018AD_rodata

# .rodata:0x978 | 0x18B0 | size: 0x7
.obj str_c_kiza_bom_00007b10, local
	.string "c_kiza"
.endobj str_c_kiza_bom_00007b10

# .rodata:0x97F | 0x18B7 | size: 0x1
.obj gap_03_000018B7_rodata, global
.hidden gap_03_000018B7_rodata
	.byte 0x00
.endobj gap_03_000018B7_rodata

# .rodata:0x980 | 0x18B8 | size: 0x5
.obj str_村長_bom_00007b18, local
	.4byte 0x91BA92B7
	.byte 0x00
.endobj str_村長_bom_00007b18

# .rodata:0x985 | 0x18BD | size: 0x3
.obj gap_03_000018BD_rodata, global
.hidden gap_03_000018BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000018BD_rodata

# .rodata:0x988 | 0x18C0 | size: 0xA
.obj str_ボムヘイE_bom_00007b20, local
	.4byte 0x837B8380
	.4byte 0x83778343
	.2byte 0x4500
.endobj str_ボムヘイE_bom_00007b20

# .rodata:0x992 | 0x18CA | size: 0x2
.obj gap_03_000018CA_rodata, global
.hidden gap_03_000018CA_rodata
	.2byte 0x0000
.endobj gap_03_000018CA_rodata

# .rodata:0x994 | 0x18CC | size: 0xA
.obj str_ボムヘイF_bom_00007b2c, local
	.4byte 0x837B8380
	.4byte 0x83778343
	.2byte 0x4600
.endobj str_ボムヘイF_bom_00007b2c

# .rodata:0x99E | 0x18D6 | size: 0x2
.obj gap_03_000018D6_rodata, global
.hidden gap_03_000018D6_rodata
	.2byte 0x0000
.endobj gap_03_000018D6_rodata

# .rodata:0x9A0 | 0x18D8 | size: 0xA
.obj str_ボムヘイH_bom_00007b38, local
	.4byte 0x837B8380
	.4byte 0x83778343
	.2byte 0x4800
.endobj str_ボムヘイH_bom_00007b38

# .rodata:0x9AA | 0x18E2 | size: 0x2
.obj gap_03_000018E2_rodata, global
.hidden gap_03_000018E2_rodata
	.2byte 0x0000
.endobj gap_03_000018E2_rodata

# .rodata:0x9AC | 0x18E4 | size: 0xA
.obj str_ボムヘイI_bom_00007b44, local
	.4byte 0x837B8380
	.4byte 0x83778343
	.2byte 0x4900
.endobj str_ボムヘイI_bom_00007b44

# .rodata:0x9B6 | 0x18EE | size: 0x2
.obj gap_03_000018EE_rodata, global
.hidden gap_03_000018EE_rodata
	.2byte 0x0000
.endobj gap_03_000018EE_rodata

# .rodata:0x9B8 | 0x18F0 | size: 0xA
.obj str_S_item_01_bom_00007b50, local
	.string "S_item_01"
.endobj str_S_item_01_bom_00007b50

# .rodata:0x9C2 | 0x18FA | size: 0x2
.obj gap_03_000018FA_rodata, global
.hidden gap_03_000018FA_rodata
	.2byte 0x0000
.endobj gap_03_000018FA_rodata

# .rodata:0x9C4 | 0x18FC | size: 0xA
.obj str_A_item_01_bom_00007b5c, local
	.string "A_item_01"
.endobj str_A_item_01_bom_00007b5c

# .rodata:0x9CE | 0x1906 | size: 0x2
.obj gap_03_00001906_rodata, global
.hidden gap_03_00001906_rodata
	.2byte 0x0000
.endobj gap_03_00001906_rodata

# .rodata:0x9D0 | 0x1908 | size: 0xA
.obj str_S_item_02_bom_00007b68, local
	.string "S_item_02"
.endobj str_S_item_02_bom_00007b68

# .rodata:0x9DA | 0x1912 | size: 0x2
.obj gap_03_00001912_rodata, global
.hidden gap_03_00001912_rodata
	.2byte 0x0000
.endobj gap_03_00001912_rodata

# .rodata:0x9DC | 0x1914 | size: 0xA
.obj str_A_item_02_bom_00007b74, local
	.string "A_item_02"
.endobj str_A_item_02_bom_00007b74

# .rodata:0x9E6 | 0x191E | size: 0x2
.obj gap_03_0000191E_rodata, global
.hidden gap_03_0000191E_rodata
	.2byte 0x0000
.endobj gap_03_0000191E_rodata

# .rodata:0x9E8 | 0x1920 | size: 0xA
.obj str_S_item_03_bom_00007b80, local
	.string "S_item_03"
.endobj str_S_item_03_bom_00007b80

# .rodata:0x9F2 | 0x192A | size: 0x2
.obj gap_03_0000192A_rodata, global
.hidden gap_03_0000192A_rodata
	.2byte 0x0000
.endobj gap_03_0000192A_rodata

# .rodata:0x9F4 | 0x192C | size: 0xA
.obj str_A_item_03_bom_00007b8c, local
	.string "A_item_03"
.endobj str_A_item_03_bom_00007b8c

# .rodata:0x9FE | 0x1936 | size: 0x2
.obj gap_03_00001936_rodata, global
.hidden gap_03_00001936_rodata
	.2byte 0x0000
.endobj gap_03_00001936_rodata

# .rodata:0xA00 | 0x1938 | size: 0xA
.obj str_S_item_04_bom_00007b98, local
	.string "S_item_04"
.endobj str_S_item_04_bom_00007b98

# .rodata:0xA0A | 0x1942 | size: 0x2
.obj gap_03_00001942_rodata, global
.hidden gap_03_00001942_rodata
	.2byte 0x0000
.endobj gap_03_00001942_rodata

# .rodata:0xA0C | 0x1944 | size: 0xA
.obj str_A_item_04_bom_00007ba4, local
	.string "A_item_04"
.endobj str_A_item_04_bom_00007ba4

# .rodata:0xA16 | 0x194E | size: 0x2
.obj gap_03_0000194E_rodata, global
.hidden gap_03_0000194E_rodata
	.2byte 0x0000
.endobj gap_03_0000194E_rodata

# .rodata:0xA18 | 0x1950 | size: 0xA
.obj str_S_item_05_bom_00007bb0, local
	.string "S_item_05"
.endobj str_S_item_05_bom_00007bb0

# .rodata:0xA22 | 0x195A | size: 0x2
.obj gap_03_0000195A_rodata, global
.hidden gap_03_0000195A_rodata
	.2byte 0x0000
.endobj gap_03_0000195A_rodata

# .rodata:0xA24 | 0x195C | size: 0xA
.obj str_A_item_05_bom_00007bbc, local
	.string "A_item_05"
.endobj str_A_item_05_bom_00007bbc

# .rodata:0xA2E | 0x1966 | size: 0x2
.obj gap_03_00001966_rodata, global
.hidden gap_03_00001966_rodata
	.2byte 0x0000
.endobj gap_03_00001966_rodata

# .rodata:0xA30 | 0x1968 | size: 0xA
.obj str_S_item_06_bom_00007bc8, local
	.string "S_item_06"
.endobj str_S_item_06_bom_00007bc8

# .rodata:0xA3A | 0x1972 | size: 0x2
.obj gap_03_00001972_rodata, global
.hidden gap_03_00001972_rodata
	.2byte 0x0000
.endobj gap_03_00001972_rodata

# .rodata:0xA3C | 0x1974 | size: 0xA
.obj str_A_item_06_bom_00007bd4, local
	.string "A_item_06"
.endobj str_A_item_06_bom_00007bd4

# .rodata:0xA46 | 0x197E | size: 0x2
.obj gap_03_0000197E_rodata, global
.hidden gap_03_0000197E_rodata
	.2byte 0x0000
.endobj gap_03_0000197E_rodata

# .rodata:0xA48 | 0x1980 | size: 0x8
.obj str_shop_00_bom_00007be0, local
	.string "shop_00"
.endobj str_shop_00_bom_00007be0

# .rodata:0xA50 | 0x1988 | size: 0x8
.obj str_shop_01_bom_00007be8, local
	.string "shop_01"
.endobj str_shop_01_bom_00007be8

# .rodata:0xA58 | 0x1990 | size: 0x8
.obj str_shop_02_bom_00007bf0, local
	.string "shop_02"
.endobj str_shop_02_bom_00007bf0

# .rodata:0xA60 | 0x1998 | size: 0x8
.obj str_shop_03_bom_00007bf8, local
	.string "shop_03"
.endobj str_shop_03_bom_00007bf8

# .rodata:0xA68 | 0x19A0 | size: 0x8
.obj str_shop_04_bom_00007c00, local
	.string "shop_04"
.endobj str_shop_04_bom_00007c00

# .rodata:0xA70 | 0x19A8 | size: 0x8
.obj str_shop_05_bom_00007c08, local
	.string "shop_05"
.endobj str_shop_05_bom_00007c08

# .rodata:0xA78 | 0x19B0 | size: 0x8
.obj str_shop_06_bom_00007c10, local
	.string "shop_06"
.endobj str_shop_06_bom_00007c10

# .rodata:0xA80 | 0x19B8 | size: 0x8
.obj str_shop_07_bom_00007c18, local
	.string "shop_07"
.endobj str_shop_07_bom_00007c18

# .rodata:0xA88 | 0x19C0 | size: 0x8
.obj str_shop_08_bom_00007c20, local
	.string "shop_08"
.endobj str_shop_08_bom_00007c20

# .rodata:0xA90 | 0x19C8 | size: 0x8
.obj str_shop_09_bom_00007c28, local
	.string "shop_09"
.endobj str_shop_09_bom_00007c28

# .rodata:0xA98 | 0x19D0 | size: 0x8
.obj str_shop_10_bom_00007c30, local
	.string "shop_10"
.endobj str_shop_10_bom_00007c30

# .rodata:0xAA0 | 0x19D8 | size: 0x8
.obj str_shop_11_bom_00007c38, local
	.string "shop_11"
.endobj str_shop_11_bom_00007c38

# .rodata:0xAA8 | 0x19E0 | size: 0x8
.obj str_shop_12_bom_00007c40, local
	.string "shop_12"
.endobj str_shop_12_bom_00007c40

# .rodata:0xAB0 | 0x19E8 | size: 0x8
.obj str_shop_13_bom_00007c48, local
	.string "shop_13"
.endobj str_shop_13_bom_00007c48

# .rodata:0xAB8 | 0x19F0 | size: 0x8
.obj str_shop_14_bom_00007c50, local
	.string "shop_14"
.endobj str_shop_14_bom_00007c50

# .rodata:0xAC0 | 0x19F8 | size: 0x8
.obj str_shop_15_bom_00007c58, local
	.string "shop_15"
.endobj str_shop_15_bom_00007c58

# .rodata:0xAC8 | 0x1A00 | size: 0x8
.obj str_shop_16_bom_00007c60, local
	.string "shop_16"
.endobj str_shop_16_bom_00007c60

# .rodata:0xAD0 | 0x1A08 | size: 0x8
.obj str_shop_17_bom_00007c68, local
	.string "shop_17"
.endobj str_shop_17_bom_00007c68

# .rodata:0xAD8 | 0x1A10 | size: 0x8
.obj str_shop_18_bom_00007c70, local
	.string "shop_18"
.endobj str_shop_18_bom_00007c70

# .rodata:0xAE0 | 0x1A18 | size: 0x8
.obj str_shop_19_bom_00007c78, local
	.string "shop_19"
.endobj str_shop_19_bom_00007c78

# .rodata:0xAE8 | 0x1A20 | size: 0x8
.obj str_shop_20_bom_00007c80, local
	.string "shop_20"
.endobj str_shop_20_bom_00007c80

# .rodata:0xAF0 | 0x1A28 | size: 0x8
.obj str_shop_21_bom_00007c88, local
	.string "shop_21"
.endobj str_shop_21_bom_00007c88

# .rodata:0xAF8 | 0x1A30 | size: 0x8
.obj str_shop_22_bom_00007c90, local
	.string "shop_22"
.endobj str_shop_22_bom_00007c90

# .rodata:0xB00 | 0x1A38 | size: 0x8
.obj str_shop_23_bom_00007c98, local
	.string "shop_23"
.endobj str_shop_23_bom_00007c98

# .rodata:0xB08 | 0x1A40 | size: 0x8
.obj str_shop_24_bom_00007ca0, local
	.string "shop_24"
.endobj str_shop_24_bom_00007ca0

# .rodata:0xB10 | 0x1A48 | size: 0x8
.obj str_shop_25_bom_00007ca8, local
	.string "shop_25"
.endobj str_shop_25_bom_00007ca8

# .rodata:0xB18 | 0x1A50 | size: 0x8
.obj str_shop_26_bom_00007cb0, local
	.string "shop_26"
.endobj str_shop_26_bom_00007cb0

# .rodata:0xB20 | 0x1A58 | size: 0x8
.obj str_shop_27_bom_00007cb8, local
	.string "shop_27"
.endobj str_shop_27_bom_00007cb8

# .rodata:0xB28 | 0x1A60 | size: 0x8
.obj str_shop_28_bom_00007cc0, local
	.string "shop_28"
.endobj str_shop_28_bom_00007cc0

# .rodata:0xB30 | 0x1A68 | size: 0x8
.obj str_shop_29_bom_00007cc8, local
	.string "shop_29"
.endobj str_shop_29_bom_00007cc8

# .rodata:0xB38 | 0x1A70 | size: 0x8
.obj str_shop_30_bom_00007cd0, local
	.string "shop_30"
.endobj str_shop_30_bom_00007cd0

# .rodata:0xB40 | 0x1A78 | size: 0x8
.obj str_shop_31_bom_00007cd8, local
	.string "shop_31"
.endobj str_shop_31_bom_00007cd8

# .rodata:0xB48 | 0x1A80 | size: 0x8
.obj str_shop_32_bom_00007ce0, local
	.string "shop_32"
.endobj str_shop_32_bom_00007ce0

# .rodata:0xB50 | 0x1A88 | size: 0x8
.obj str_shop_33_bom_00007ce8, local
	.string "shop_33"
.endobj str_shop_33_bom_00007ce8

# .rodata:0xB58 | 0x1A90 | size: 0x8
.obj str_shop_34_bom_00007cf0, local
	.string "shop_34"
.endobj str_shop_34_bom_00007cf0

# .rodata:0xB60 | 0x1A98 | size: 0xC
.obj vec3_bom_00007cf8, local
	.4byte 0x00000000
	.4byte 0x42C80000
	.4byte 0x00000000
.endobj vec3_bom_00007cf8

# .rodata:0xB6C | 0x1AA4 | size: 0xC
.obj vec3_bom_00007d04, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_bom_00007d04

# .rodata:0xB78 | 0x1AB0 | size: 0xC
.obj vec3_bom_00007d10, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_bom_00007d10

# .rodata:0xB84 | 0x1ABC | size: 0x8
.obj str_S_bom02_bom_00007d1c, local
	.string "S_bom02"
.endobj str_S_bom02_bom_00007d1c

# .rodata:0xB8C | 0x1AC4 | size: 0x10
.obj str_SFX_STG8_QUAKE1_bom_00007d24, local
	.string "SFX_STG8_QUAKE1"
.endobj str_SFX_STG8_QUAKE1_bom_00007d24

# .rodata:0xB9C | 0x1AD4 | size: 0xD
.obj str_stg8_dark_08_bom_00007d34, local
	.string "stg8_dark_08"
.endobj str_stg8_dark_08_bom_00007d34

# .rodata:0xBA9 | 0x1AE1 | size: 0x3
.obj gap_03_00001AE1_rodata, global
.hidden gap_03_00001AE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AE1_rodata

# .rodata:0xBAC | 0x1AE4 | size: 0x7
.obj str_las_26_bom_00007d44, local
	.string "las_26"
.endobj str_las_26_bom_00007d44

# .rodata:0xBB3 | 0x1AEB | size: 0x1
.obj gap_03_00001AEB_rodata, global
.hidden gap_03_00001AEB_rodata
	.byte 0x00
.endobj gap_03_00001AEB_rodata

# .rodata:0xBB4 | 0x1AEC | size: 0xC
.obj str_sekai_yami2_bom_00007d4c, local
	.string "sekai_yami2"
.endobj str_sekai_yami2_bom_00007d4c

# .rodata:0xBC0 | 0x1AF8 | size: 0xA
.obj str_mobj_save_bom_00007d58, local
	.string "mobj_save"
.endobj str_mobj_save_bom_00007d58

# .rodata:0xBCA | 0x1B02 | size: 0x2
.obj gap_03_00001B02_rodata, global
.hidden gap_03_00001B02_rodata
	.2byte 0x0000
.endobj gap_03_00001B02_rodata

# .rodata:0xBCC | 0x1B04 | size: 0x10
.obj str_stg8_las_148_63_bom_00007d64, local
	.string "stg8_las_148_63"
.endobj str_stg8_las_148_63_bom_00007d64

# .rodata:0xBDC | 0x1B14 | size: 0x10
.obj str_stg8_las_148_64_bom_00007d74, local
	.string "stg8_las_148_64"
.endobj str_stg8_las_148_64_bom_00007d74

# .rodata:0xBEC | 0x1B24 | size: 0xC
.obj str_minnnanokoe_bom_00007d84, local
	.string "minnnanokoe"
.endobj str_minnnanokoe_bom_00007d84

# .rodata:0xBF8 | 0x1B30 | size: 0x8
.obj str_yado_00_bom_00007d90, local
	.string "yado_00"
.endobj str_yado_00_bom_00007d90

# .rodata:0xC00 | 0x1B38 | size: 0x8
.obj str_yado_01_bom_00007d98, local
	.string "yado_01"
.endobj str_yado_01_bom_00007d98

# .rodata:0xC08 | 0x1B40 | size: 0x8
.obj str_yado_02_bom_00007da0, local
	.string "yado_02"
.endobj str_yado_02_bom_00007da0

# .rodata:0xC10 | 0x1B48 | size: 0x8
.obj str_yado_03_bom_00007da8, local
	.string "yado_03"
.endobj str_yado_03_bom_00007da8

# .rodata:0xC18 | 0x1B50 | size: 0x8
.obj str_yado_04_bom_00007db0, local
	.string "yado_04"
.endobj str_yado_04_bom_00007db0

# .rodata:0xC20 | 0x1B58 | size: 0x8
.obj str_yado_05_bom_00007db8, local
	.string "yado_05"
.endobj str_yado_05_bom_00007db8

# .rodata:0xC28 | 0x1B60 | size: 0x8
.obj str_yado_06_bom_00007dc0, local
	.string "yado_06"
.endobj str_yado_06_bom_00007dc0

# .rodata:0xC30 | 0x1B68 | size: 0x8
.obj str_yado_07_bom_00007dc8, local
	.string "yado_07"
.endobj str_yado_07_bom_00007dc8

# .rodata:0xC38 | 0x1B70 | size: 0x8
.obj str_yado_08_bom_00007dd0, local
	.string "yado_08"
.endobj str_yado_08_bom_00007dd0

# .rodata:0xC40 | 0x1B78 | size: 0x8
.obj str_yado_09_bom_00007dd8, local
	.string "yado_09"
.endobj str_yado_09_bom_00007dd8

# .rodata:0xC48 | 0x1B80 | size: 0x8
.obj str_yado_10_bom_00007de0, local
	.string "yado_10"
.endobj str_yado_10_bom_00007de0

# .rodata:0xC50 | 0x1B88 | size: 0x8
.obj str_yado_11_bom_00007de8, local
	.string "yado_11"
.endobj str_yado_11_bom_00007de8

# .rodata:0xC58 | 0x1B90 | size: 0x8
.obj str_yado_12_bom_00007df0, local
	.string "yado_12"
.endobj str_yado_12_bom_00007df0

# .rodata:0xC60 | 0x1B98 | size: 0x8
.obj str_yado_13_bom_00007df8, local
	.string "yado_13"
.endobj str_yado_13_bom_00007df8

# .rodata:0xC68 | 0x1BA0 | size: 0x14
.obj str_BGM_EVT_STG8_VOICE1_bom_00007e00, local
	.string "BGM_EVT_STG8_VOICE1"
.endobj str_BGM_EVT_STG8_VOICE1_bom_00007e00

# .rodata:0xC7C | 0x1BB4 | size: 0xE
.obj str_BGM_STG7_BOM1_bom_00007e14, local
	.string "BGM_STG7_BOM1"
.endobj str_BGM_STG7_BOM1_bom_00007e14

# .rodata:0xC8A | 0x1BC2 | size: 0x2
.obj gap_03_00001BC2_rodata, global
.hidden gap_03_00001BC2_rodata
	.2byte 0x0000
.endobj gap_03_00001BC2_rodata

# .rodata:0xC8C | 0x1BC4 | size: 0xE
.obj str_ENV_STG7_BOM3_bom_00007e24, local
	.string "ENV_STG7_BOM3"
.endobj str_ENV_STG7_BOM3_bom_00007e24

# .rodata:0xC9A | 0x1BD2 | size: 0x2
.obj gap_03_00001BD2_rodata, global
.hidden gap_03_00001BD2_rodata
	.2byte 0x0000
.endobj gap_03_00001BD2_rodata

# .rodata:0xC9C | 0x1BD4 | size: 0xE
.obj str_group3713047r_bom_00007e34, local
	.string "group3713047r"
.endobj str_group3713047r_bom_00007e34

# .rodata:0xCAA | 0x1BE2 | size: 0x2
.obj gap_03_00001BE2_rodata, global
.hidden gap_03_00001BE2_rodata
	.2byte 0x0000
.endobj gap_03_00001BE2_rodata

# .rodata:0xCAC | 0x1BE4 | size: 0xE
.obj str_group3713048r_bom_00007e44, local
	.string "group3713048r"
.endobj str_group3713048r_bom_00007e44

# .rodata:0xCBA | 0x1BF2 | size: 0x2
.obj gap_03_00001BF2_rodata, global
.hidden gap_03_00001BF2_rodata
	.2byte 0x0000
.endobj gap_03_00001BF2_rodata

# .rodata:0xCBC | 0x1BF4 | size: 0xE
.obj str_group3713049r_bom_00007e54, local
	.string "group3713049r"
.endobj str_group3713049r_bom_00007e54

# .rodata:0xCCA | 0x1C02 | size: 0x2
.obj gap_03_00001C02_rodata, global
.hidden gap_03_00001C02_rodata
	.2byte 0x0000
.endobj gap_03_00001C02_rodata

# .rodata:0xCCC | 0x1C04 | size: 0x7
.obj str_pblk01_bom_00007e64, local
	.string "pblk01"
.endobj str_pblk01_bom_00007e64

# .rodata:0xCD3 | 0x1C0B | size: 0x1
.obj gap_03_00001C0B_rodata, global
.hidden gap_03_00001C0B_rodata
	.byte 0x00
.endobj gap_03_00001C0B_rodata

# .rodata:0xCD4 | 0x1C0C | size: 0x9
.obj str_kururin1_bom_00007e6c, local
	.string "kururin1"
.endobj str_kururin1_bom_00007e6c

# .rodata:0xCDD | 0x1C15 | size: 0x3
.obj gap_03_00001C15_rodata, global
.hidden gap_03_00001C15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C15_rodata

# .rodata:0xCE0 | 0x1C18 | size: 0xA
.obj str_S_wakuaaa_bom_00007e78, local
	.string "S_wakuaaa"
.endobj str_S_wakuaaa_bom_00007e78

# .rodata:0xCEA | 0x1C22 | size: 0x2
.obj gap_03_00001C22_rodata, global
.hidden gap_03_00001C22_rodata
	.2byte 0x0000
.endobj gap_03_00001C22_rodata

# .rodata:0xCEC | 0x1C24 | size: 0x8
.obj str_item_01_bom_00007e84, local
	.string "item_01"
.endobj str_item_01_bom_00007e84

# .rodata:0xCF4 | 0x1C2C | size: 0x5
.obj str_yuge_bom_00007e8c, local
	.string "yuge"
.endobj str_yuge_bom_00007e8c

# .rodata:0xCF9 | 0x1C31 | size: 0x3
.obj gap_03_00001C31_rodata, global
.hidden gap_03_00001C31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C31_rodata

# .rodata:0xCFC | 0x1C34 | size: 0x8
.obj str_A_w_bed_bom_00007e94, local
	.string "A_w_bed"
.endobj str_A_w_bed_bom_00007e94

# .rodata:0xD04 | 0x1C3C | size: 0x4
.obj str_hi1_bom_00007e9c, local
	.string "hi1"
.endobj str_hi1_bom_00007e9c

# .rodata:0xD08 | 0x1C40 | size: 0x4
.obj str_hi2_bom_00007ea0, local
	.string "hi2"
.endobj str_hi2_bom_00007ea0

# .rodata:0xD0C | 0x1C44 | size: 0x4
.obj str_hi3_bom_00007ea4, local
	.string "hi3"
.endobj str_hi3_bom_00007ea4

# .rodata:0xD10 | 0x1C48 | size: 0x4
.obj str_hi4_bom_00007ea8, local
	.string "hi4"
.endobj str_hi4_bom_00007ea8

# .rodata:0xD14 | 0x1C4C | size: 0x4
.obj str_hi5_bom_00007eac, local
	.string "hi5"
.endobj str_hi5_bom_00007eac

# .rodata:0xD18 | 0x1C50 | size: 0x4
.obj str_hi6_bom_00007eb0, local
	.string "hi6"
.endobj str_hi6_bom_00007eb0

# .rodata:0xD1C | 0x1C54 | size: 0x4
.obj float_100_bom_00007eb4, local
	.float 100
.endobj float_100_bom_00007eb4

# 0x00005750..0x00009C08 | size: 0x44B8
.data
.balign 8

# .data:0x0 | 0x5750 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5758 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x575C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5760 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5764 | size: 0x4
.obj gap_04_00005764_data, global
.hidden gap_04_00005764_data
	.4byte 0x00000000
.endobj gap_04_00005764_data

# .data:0x18 | 0x5768 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5770 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5774 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5778 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5780 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5784 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5788 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x578C | size: 0x4
.obj gap_04_0000578C_data, global
.hidden gap_04_0000578C_data
	.4byte 0x00000000
.endobj gap_04_0000578C_data

# .data:0x40 | 0x5790 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5798 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x579C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x57A0 | size: 0x30
.obj evt_ie1_door_1, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie1_door_bom_00007198
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie1_door_1

# .data:0x80 | 0x57D0 | size: 0x30
.obj evt_ie1_wall, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A77D6
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie1_kai_bom_000071a4
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie1_wall

# .data:0xB0 | 0x5800 | size: 0x8
.obj ie1_npc, local
	.4byte str_宿店員_bom_000071b0
	.4byte 0x00000000
.endobj ie1_npc

# .data:0xB8 | 0x5808 | size: 0x30
.obj evt_ie1_door_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie1_door_open

# .data:0xE8 | 0x5838 | size: 0x38
.obj evt_ie1_door_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie1_door_close

# .data:0x120 | 0x5870 | size: 0x48
.obj ie1_door, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte str_S_ie1_door_bom_00007198
	.4byte str_A_ie1_door1_bom_000071b8
	.4byte str_A_ie1_door1_u_bom_000071c4
	.4byte str_S_ie1_soto_bom_000071d4
	.4byte 0x00000000
	.4byte str_S_ie1_naka_bom_000071e0
	.4byte 0x00000000
	.4byte evt_ie1_door_1
	.4byte 0x00000000
	.4byte evt_ie1_wall
	.4byte ie1_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_ie1_door_open
	.4byte evt_ie1_door_close
.endobj ie1_door

# .data:0x168 | 0x58B8 | size: 0x30
.obj evt_ie2_door_1, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie2_door_bom_000071ec
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie2_door_1

# .data:0x198 | 0x58E8 | size: 0x30
.obj evt_ie2_wall, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie2_kai_bom_000071f8
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie2_wall

# .data:0x1C8 | 0x5918 | size: 0x8
.obj ie2_npc, local
	.4byte str_店員_bom_00007204
	.4byte 0x00000000
.endobj ie2_npc

# .data:0x1D0 | 0x5920 | size: 0x30
.obj evt_ie2_door_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie2_door_open

# .data:0x200 | 0x5950 | size: 0x38
.obj evt_ie2_door_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie2_door_close

# .data:0x238 | 0x5988 | size: 0x48
.obj ie2_door, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte str_S_ie2_door_bom_000071ec
	.4byte str_A_ie2_door2_bom_0000720c
	.4byte str_A_ie2_door2_u_bom_0000721c
	.4byte str_S_ie2_soto_bom_0000722c
	.4byte 0x00000000
	.4byte str_S_ie2_naka_bom_00007238
	.4byte 0x00000000
	.4byte evt_ie2_door_1
	.4byte 0x00000000
	.4byte evt_ie2_wall
	.4byte ie2_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte evt_ie2_door_open
	.4byte evt_ie2_door_close
.endobj ie2_door

# .data:0x280 | 0x59D0 | size: 0x30
.obj evt_ie3_door_1, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie3_door_bom_00007244
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie3_door_1

# .data:0x2B0 | 0x5A00 | size: 0x30
.obj evt_ie3_door_2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie3_door_bom_00007244
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie3_door_2

# .data:0x2E0 | 0x5A30 | size: 0x30
.obj evt_ie3_wall, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie3_kai_bom_00007250
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie3_wall

# .data:0x310 | 0x5A60 | size: 0xC
.obj ie3_npc, local
	.4byte str_ホワイト_bom_0000725c
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x00000000
.endobj ie3_npc

# .data:0x31C | 0x5A6C | size: 0x30
.obj evt_ie3_door_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie3_door_open

# .data:0x34C | 0x5A9C | size: 0x38
.obj evt_ie3_door_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ie3_door_close

# .data:0x384 | 0x5AD4 | size: 0x8
.obj ie3_item, local
	.4byte str_item_00_bom_00007274
	.4byte 0x00000000
.endobj ie3_item

# .data:0x38C | 0x5ADC | size: 0x48
.obj ie3_door, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte str_S_ie3_door_bom_00007244
	.4byte str_A_ie3_door3_u_bom_0000727c
	.4byte str_A_ie3_door3_bom_0000728c
	.4byte str_S_ie3_soto_bom_00007298
	.4byte 0x00000000
	.4byte str_S_ie3_naka_bom_000072a4
	.4byte 0x00000000
	.4byte evt_ie3_door_1
	.4byte evt_ie3_door_2
	.4byte evt_ie3_wall
	.4byte ie3_npc
	.4byte 0x00000000
	.4byte ie3_item
	.4byte evt_ie3_door_open
	.4byte evt_ie3_door_close
.endobj ie3_door

# .data:0x3D4 | 0x5B24 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_bom_000072b0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_bom_01_bom_000072b8
	.4byte str_e_bero_bom_000072c0
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

# .data:0x44C | 0x5B9C | size: 0xD0
.obj evt_kime_pose, local
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
	.4byte str_PKR_Y_1_bom_000072c8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_Y_1_bom_000072d0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_Y_1_bom_000072d8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_Y_1_bom_000072dc
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_Y_1_bom_000072e4
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_Y_1_bom_000072ec
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_Y_1_bom_000072f4
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kime_pose

# .data:0x51C | 0x5C6C | size: 0x2F8
.obj evt_taihou, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000008C
	.4byte 0x00000064
	.4byte 0x00000251
	.4byte 0x0000008C
	.4byte 0x00000028
	.4byte 0x000000F8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000000E1
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000000A0
	.4byte 0x000000FA
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_bom_000072fc
	.4byte str_mario_bom_00007300
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_60_bom_00007308
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_bom_00007314
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_bom_00007330
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte evt_kime_pose
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0003005B
	.4byte evt_party_set_breed_pose
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_bom_60_2_bom_00007340
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_61_bom_00007350
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x00000098
	.4byte 0x00000320
	.4byte 0x00000032
	.4byte 0x00000039
	.4byte 0x00000104
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_bom_000072fc
	.4byte 0x00020010
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_bom_000072fc
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_bom_000072fc
	.4byte 0xFFFFFFD3
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_me_bom_000072fc
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_bom_000072fc
	.4byte str_mario_bom_00007300
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_62_bom_0000735c
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_bom_000072fc
	.4byte 0xFFFFFF74
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_bom_000072fc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00020010
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000164
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_taihou

# .data:0x814 | 0x5F64 | size: 0x2F8
.obj urotuku_white, local
	.4byte 0x00020018
	.4byte 0xF8406AB0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_41_01_bom_00007368
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000078
	.4byte 0x00000061
	.4byte 0x000002BC
	.4byte 0x00000078
	.4byte 0x00000041
	.4byte 0x000000FB
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_39_bom_00007378
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_bom_00007330
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000E6
	.4byte 0x0000001E
	.4byte 0xFFFFFF83
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
	.4byte evt_ie3_door_1
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_ie3_door_1
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00020610
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000C8
	.4byte 0xFFFFFFAB
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_41_bom_00007384
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_ie3_door_1
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000E6
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_ie3_door_1
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000017C
	.4byte 0x0000002D
	.4byte 0xFFFFFF6A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_N_1_bom_00007390
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_bom_40_bom_0000739c
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_bom_40_02_bom_000073a8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF8406AB0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj urotuku_white

# .data:0xB0C | 0x625C | size: 0x34
.obj init_soncho, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_bom_000072fc
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000109
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_soncho

# .data:0xB40 | 0x6290 | size: 0x694
.obj talk_soncho, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_20_00_bom_000073b8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000162
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xF8406AAE
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406AAE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_20_bom_000073c8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_21_bom_000073d4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_21_01_bom_000073e0
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0000012C
	.4byte 0xF24B6A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_bom_22_bom_000073f0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_23_bom_000073fc
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000118
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0x00000046
	.4byte 0x00000104
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_bom_000072fc
	.4byte str_mario_bom_00007300
	.4byte 0x00020018
	.4byte 0xF8406AAE
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406AAE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_20_bom_000073c8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_21_bom_000073d4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_21_01_bom_000073e0
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0000012C
	.4byte 0xF24B6A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_24_bom_00007408
	.4byte 0x00000000
	.4byte str_party_bom_00007414
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005A
	.4byte 0x00000069
	.4byte 0x00000263
	.4byte 0x0000005A
	.4byte 0x0000002D
	.4byte 0x0000010A
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_25_bom_0000741c
	.4byte 0x00000000
	.4byte str_party_bom_00007414
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_26_bom_00007428
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_27_bom_00007434
	.4byte 0x00000000
	.4byte str_party_bom_00007414
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_bom_000072fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_bom_000072fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0xF24ACA80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_28_bom_00007440
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_29_bom_0000744c
	.4byte 0x00000000
	.4byte str_party_bom_00007414
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_30_bom_00007458
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_31_bom_00007464
	.4byte 0x00000000
	.4byte str_party_bom_00007414
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_32_bom_00007470
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_32_02_bom_0000747c
	.4byte 0x00000000
	.4byte str_party_bom_00007414
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
	.4byte str_SFX_VOICE_MARIO_NOD1_bom_0000748c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_bom_00007330
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_33_bom_000074a4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000162
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000163
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406AA4
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_34_bom_000074b0
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_34_yn_bom_000074bc
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_bom_38_bom_000074cc
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_bom_37_bom_000074d8
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_38_01_bom_000074e4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406AA4
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA8
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_38_02_bom_000074f4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte urotuku_white
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0001005E
	.4byte evt_taihou
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_soncho

# .data:0x11D4 | 0x6924 | size: 0x8
.obj init_murabito_e, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_murabito_e

# .data:0x11DC | 0x692C | size: 0x464
.obj talk_murabito_e, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001E
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_30_001_bom_00007504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_30_002_bom_00007510
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_30_003_bom_0000751c
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_30_002_bom_00007510
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000AF
	.4byte 0x0000002D
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000091
	.4byte 0x0000002D
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_me_bom_000072fc
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_bom_000072fc
	.4byte str_mario_bom_00007300
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_me_bom_000072fc
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_30_004_bom_00007528
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_30_003_1_bom_00007534
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_sr_bom_00007544
	.4byte 0x000000C9
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_sr_bom_00007544
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_sr_bom_00007544
	.4byte 0x00020032
	.4byte 0xF8406AB2
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_30_005_1_bom_00007548
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_bom_000072fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_bom_000072fc
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_bom_000072fc
	.4byte 0x00000032
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_30_bom_00007558
	.4byte 0x000000C9
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000023
	.4byte 0x00000010
	.4byte 0xF8406AB2
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_bom_000072fc
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_30_006_bom_00007560
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709C
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_bom_0000756c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_10_00_bom_00007580
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_10_bom_00007590
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000165
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_10_1_bom_0000759c
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_11_bom_000075ac
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_11_1_bom_000075b8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_murabito_e

# .data:0x1640 | 0x6D90 | size: 0x8
.obj init_murabito_f, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_murabito_f

# .data:0x1648 | 0x6D98 | size: 0xB0
.obj talk_murabito_f, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_12_00_bom_000075c8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_12_bom_000075d8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000165
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_12_1_bom_000075e4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_13_bom_000075f4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_13_1_bom_00007600
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_murabito_f

# .data:0x16F8 | 0x6E48 | size: 0x44
.obj init_murabito_g, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_bom_000072fc
	.4byte 0x0000010E
	.4byte 0x0000001E
	.4byte 0xFFFFFF4C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_bom_000072fc
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_murabito_g

# .data:0x173C | 0x6E8C | size: 0x144
.obj talk_murabito_g, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000019
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840709F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_00_bom_00007610
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84070A1
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84070A2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_01_bom_0000761c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_14_00_bom_00007628
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_14_bom_00007638
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000165
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_14_1_bom_00007644
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_15_bom_00007654
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_15_1_bom_00007660
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_murabito_g

# .data:0x1880 | 0x6FD0 | size: 0x8
.obj init_murabito_h, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_murabito_h

# .data:0x1888 | 0x6FD8 | size: 0x8
.obj iri_26_item_tbl, local
	.4byte 0x000000E5
	.4byte 0xFFFFFFFF
.endobj iri_26_item_tbl

# .data:0x1890 | 0x6FE0 | size: 0x25C
.obj talk_murabito_h, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001A
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x000000E5
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_26_01_bom_00007670
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_26_01_s_bom_0000767c
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_26_02_bom_0000768c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_26_02_s_bom_00007698
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_26_03_bom_000076a8
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_26_03_s_bom_000076b4
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_26_04_bom_000076c4
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_26_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x000000E5
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_bom_000072fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_bom_000072fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000096
	.4byte 0x00000005
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_26_05_bom_000076d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte evt_sub_save_playtime
	.4byte 0xF5DE0735
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407098
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_bom_0000756c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_26_00_bom_000076dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_16_00_bom_000076e8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_16_bom_000076f8
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000165
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_16_1_bom_00007704
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_17_bom_00007714
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_17_1_bom_00007720
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_murabito_h

# .data:0x1AEC | 0x723C | size: 0x8
.obj init_murabito_i, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_murabito_i

# .data:0x1AF4 | 0x7244 | size: 0xB0
.obj talk_murabito_i, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_18_00_bom_00007730
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_18_bom_00007740
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000165
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_18_1_bom_0000774c
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_19_bom_0000775c
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_19_1_bom_00007768
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_murabito_i

# .data:0x1BA4 | 0x72F4 | size: 0x20
.obj init_tenin, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_bom_000072fc
	.4byte 0x0000007D
	.4byte 0x0000001E
	.4byte 0xFFFFFE3E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_tenin

# .data:0x1BC4 | 0x7314 | size: 0x8
.obj talk_tenin, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_tenin

# .data:0x1BCC | 0x731C | size: 0x14C
.obj init_white, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000019
	.4byte 0x00020018
	.4byte 0xF84070A1
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84070A3
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000017C
	.4byte 0x0000002D
	.4byte 0xFFFFFF6A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000010E
	.4byte 0x00020018
	.4byte 0xF84070A2
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_bom_000072fc
	.4byte 0x00000600
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_N_1_bom_00007390
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406AA8
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406AA4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000017C
	.4byte 0x0000002D
	.4byte 0xFFFFFF6A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_N_1_bom_00007390
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_white

# .data:0x1D18 | 0x7468 | size: 0x32C
.obj mario_jump, local
	.4byte 0x0001005B
	.4byte evt_mario_cam_keep_on
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__bom_00007778
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0xFFFFFC18
	.4byte 0x0000006B
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_nice_bom_00007794
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_small_star_bom_0000779c
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WHITE_DAMAG_bom_000077a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WHITE_NICE1_bom_000077c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00000064
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__bom_000077d8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0xFFFFFC18
	.4byte 0x0000006B
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_nice_bom_00007794
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_small_star_bom_0000779c
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WHITE_DAMAG_bom_000077a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WHITE_GOOD1_bom_000077f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00000064
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__bom_0000780c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x0000014F
	.4byte 0x0000001E
	.4byte 0xFFFFFF7E
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte evt_mario_cam_keep_off
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_jump

# .data:0x2044 | 0x7794 | size: 0x8
.obj iri_25_item_tbl, local
	.4byte 0x0000006D
	.4byte 0xFFFFFFFF
.endobj iri_25_item_tbl

# .data:0x204C | 0x779C | size: 0x1D4
.obj talk_white, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000019
	.4byte 0x00020018
	.4byte 0xF84070A1
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84070A3
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84070A2
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_19_bom_00007828
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_25_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_18_bom_00007834
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x0000006D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xF84070A3
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000F5
	.4byte 0x0000001E
	.4byte 0xFFFFFF92
	.4byte 0x000001F4
	.4byte 0x00000050
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000AA
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_white

# .data:0x2220 | 0x7970 | size: 0x5AC
.obj iri_25_white_bed, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_02_bom_00007840
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000014A
	.4byte 0xFFFFFF88
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_03_bom_0000785c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_04_bom_00007868
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_05_bom_00007874
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_06_bom_00007880
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_07_bom_0000788c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_08_bom_00007898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_09_bom_000078a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_10_bom_000078b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_11_bom_000078bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_12_bom_000078c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_irai_25_yesno_bom_0000784c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x00010004
	.4byte 0x00000065
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_25_13_bom_000078d4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000065
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_14_bom_000078e0
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_N_2_bom_000078ec
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WHITE_ROUND_bom_000078f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_O_1_bom_00007908
	.4byte 0x0001000A
	.4byte 0x0000076C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_O_2_bom_0000790c
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_15_bom_00007910
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_16_bom_0000791c
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_bom_00007330
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_bom_00007338
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_17_bom_00007928
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001005E
	.4byte talk_white
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000006
	.4byte talk_white
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xF84070A2
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_25_white_bed

# .data:0x27CC | 0x7F1C | size: 0x7E4
.obj evt_white_bed, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_43_bom_00007934
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_43_yn_bom_00007940
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dir
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0002001D
	.4byte 0xFE363C86
	.4byte 0x00000050
	.4byte 0x0002001C
	.4byte 0xFE363C86
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000178
	.4byte 0xFFFFFF91
	.4byte 0x0000003C
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000014A
	.4byte 0xFFFFFF88
	.4byte 0x0000003C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_44_bom_00007950
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_44_yn_bom_0000795c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_45_bom_0000796c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_45_yn_bom_00007978
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_46_bom_00007988
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_46_yn_bom_00007994
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_47_bom_000079a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_47_yn_bom_000079b0
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_48_bom_000079c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_48_yn_bom_000079cc
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_49_bom_000079dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_49_yn_bom_000079e8
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_50_bom_000079f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_50_yn_bom_00007a04
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_51_bom_00007a14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_51_yn_bom_00007a20
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_52_bom_00007a30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_52_yn_bom_00007a3c
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_53_bom_00007a4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_bom_53_yn_bom_00007a58
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte mario_jump
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_bom_54_bom_00007a68
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_55_bom_00007a74
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_N_2_bom_000078ec
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_WHITE_ROUND_bom_000078f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_O_1_bom_00007908
	.4byte 0x0001000A
	.4byte 0x0000076C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ホワイト_bom_0000725c
	.4byte str_O_2_bom_0000790c
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_56_bom_00007a80
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
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
	.4byte str_SFX_VOICE_MARIO_HAND_bom_00007a8c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_57_bom_00007aa8
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_bom_00007ab4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_58_bom_00007abc
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_bom_00007394
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_59_bom_00007ac8
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000F5
	.4byte 0x0000001E
	.4byte 0xFFFFFF92
	.4byte 0x000001F4
	.4byte 0x00000050
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x000000AA
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406AA4
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406AA4
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000163
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_white_bed

# .data:0x2FB0 | 0x8700 | size: 0x70
.obj kiza_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000162
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_19_01_bom_00007ad4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00010026
	.4byte 0x00000164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_19_02_bom_00007ae4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_bom_19_03_bom_00007af4
	.4byte 0x00000000
	.4byte str_me_bom_000072fc
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kiza_talk

# .data:0x3020 | 0x8770 | size: 0x78
.obj kiza_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_キザ野郎_bom_00007b04
	.4byte str_c_kiza_bom_00007b10
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_キザ野郎_bom_00007b04
	.4byte str_キザ野郎_bom_00007b04
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キザ野郎_bom_00007b04
	.4byte 0xFFFFFF42
	.4byte 0x00000005
	.4byte 0xFFFFFF7E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キザ野郎_bom_00007b04
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キザ野郎_bom_00007b04
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_キザ野郎_bom_00007b04
	.4byte 0x00000006
	.4byte kiza_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kiza_entry

# .data:0x3098 | 0x87E8 | size: 0x33C
.obj npcEnt, local
	.4byte str_村長_bom_00007b18
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_soncho
	.4byte 0x00000000
	.4byte talk_soncho
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_murabito_e
	.4byte 0x00000000
	.4byte talk_murabito_e
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_murabito_f
	.4byte 0x00000000
	.4byte talk_murabito_f
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_murabito_g
	.4byte 0x00000000
	.4byte talk_murabito_g
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ボムヘイH_bom_00007b38
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_murabito_h
	.4byte 0x00000000
	.4byte talk_murabito_h
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ボムヘイI_bom_00007b44
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_murabito_i
	.4byte 0x00000000
	.4byte talk_murabito_i
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_店員_bom_00007204
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_tenin
	.4byte 0x00000000
	.4byte talk_tenin
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ホワイト_bom_0000725c
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte init_white
	.4byte 0x00000000
	.4byte talk_white
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x33D4 | 0x8B24 | size: 0x30
.obj obj_list, local
	.4byte str_S_item_01_bom_00007b50
	.4byte str_A_item_01_bom_00007b5c
	.4byte str_S_item_02_bom_00007b68
	.4byte str_A_item_02_bom_00007b74
	.4byte str_S_item_03_bom_00007b80
	.4byte str_A_item_03_bom_00007b8c
	.4byte str_S_item_04_bom_00007b98
	.4byte str_A_item_04_bom_00007ba4
	.4byte str_S_item_05_bom_00007bb0
	.4byte str_A_item_05_bom_00007bbc
	.4byte str_S_item_06_bom_00007bc8
	.4byte str_A_item_06_bom_00007bd4
.endobj obj_list

# .data:0x3404 | 0x8B54 | size: 0x30
.obj goods_list, local
	.4byte 0x00000082
	.4byte 0x0000001E
	.4byte 0x00000083
	.4byte 0x00000006
	.4byte 0x00000089
	.4byte 0x0000000F
	.4byte 0x0000008C
	.4byte 0x0000000C
	.4byte 0x0000009B
	.4byte 0x00000014
	.4byte 0x00000095
	.4byte 0x0000000F
.endobj goods_list

# .data:0x3434 | 0x8B84 | size: 0x68
.obj trade_list, local
	.4byte 0x00000082
	.4byte 0x000F0000
	.4byte 0x00000083
	.4byte 0x00030000
	.4byte 0x00000089
	.4byte 0x00070000
	.4byte 0x0000008C
	.4byte 0x00060000
	.4byte 0x0000009B
	.4byte 0x000A0000
	.4byte 0x00000095
	.4byte 0x00070000
	.4byte 0x00000084
	.4byte 0x00080000
	.4byte 0x000000AD
	.4byte 0x000E0000
	.4byte 0x000000E0
	.4byte 0x003C0000
	.4byte 0x000000C0
	.4byte 0x00140000
	.4byte 0x000000DC
	.4byte 0x000F0000
	.4byte 0x000000E4
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj trade_list

# .data:0x349C | 0x8BEC | size: 0x98
.obj shopper_data, local
	.4byte str_店員_bom_00007204
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_shop_00_bom_00007be0
	.4byte str_shop_01_bom_00007be8
	.4byte str_shop_02_bom_00007bf0
	.4byte str_shop_03_bom_00007bf8
	.4byte str_shop_04_bom_00007c00
	.4byte str_shop_05_bom_00007c08
	.4byte str_shop_06_bom_00007c10
	.4byte str_shop_07_bom_00007c18
	.4byte str_shop_08_bom_00007c20
	.4byte str_shop_09_bom_00007c28
	.4byte str_shop_10_bom_00007c30
	.4byte str_shop_11_bom_00007c38
	.4byte str_shop_12_bom_00007c40
	.4byte str_shop_13_bom_00007c48
	.4byte str_shop_14_bom_00007c50
	.4byte str_shop_15_bom_00007c58
	.4byte str_shop_16_bom_00007c60
	.4byte str_shop_17_bom_00007c68
	.4byte str_shop_18_bom_00007c70
	.4byte str_shop_19_bom_00007c78
	.4byte str_shop_20_bom_00007c80
	.4byte str_shop_21_bom_00007c88
	.4byte str_shop_22_bom_00007c90
	.4byte str_shop_23_bom_00007c98
	.4byte str_shop_24_bom_00007ca0
	.4byte str_shop_25_bom_00007ca8
	.4byte str_shop_26_bom_00007cb0
	.4byte str_shop_27_bom_00007cb8
	.4byte str_shop_28_bom_00007cc0
	.4byte str_shop_29_bom_00007cc8
	.4byte str_shop_30_bom_00007cd0
	.4byte str_shop_31_bom_00007cd8
	.4byte str_shop_32_bom_00007ce0
	.4byte str_shop_33_bom_00007ce8
	.4byte str_shop_34_bom_00007cf0
.endobj shopper_data

# .data:0x3534 | 0x8C84 | size: 0x72C
.obj sekai_yami_evt, local
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
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村長_bom_00007b18
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x000000AF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_bom_00007b18
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0xFFFFFF5B
	.4byte 0x00000000
	.4byte 0x00000127
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x00000075
	.4byte 0x00000000
	.4byte 0x000000FB
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_bom02_bom_00007d1c
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_bom02_bom_00007d1c
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_村長_bom_00007b18
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFFFFFCE0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE2
	.4byte 0x00000058
	.4byte 0x000002D3
	.4byte 0xFFFFFFE2
	.4byte 0x00000037
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_QUAKE1_bom_00007d24
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x0000000A
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x000000BE
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x0000000A
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0xFFFFFF60
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0xFFFFFFC2
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x0000002C
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x00000083
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x0000002C
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0xFFFFFFC2
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0xFFFFFF5B
	.4byte 0x00000127
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ボムヘイF_bom_00007b2c
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x0000001A
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0xFFFFFFAD
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0xFFFFFF4C
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0xFFFFFFAD
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x0000001A
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x00000075
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ボムヘイG_bom_00007268
	.4byte 0x0000006D
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A87
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7D80
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_村長_bom_00007b18
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_村長_bom_00007b18
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_村長_bom_00007b18
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_村長_bom_00007b18
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE2
	.4byte 0x00000037
	.4byte 0x000001D9
	.4byte 0xFFFFFFE2
	.4byte 0x00000023
	.4byte 0x00000018
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_dark_08_bom_00007d34
	.4byte 0x00000000
	.4byte str_村長_bom_00007b18
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_las_26_bom_00007d44
	.4byte str_sekai_yami2_bom_00007d4c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_evt

# .data:0x3C60 | 0x93B0 | size: 0x2DC
.obj minnnanokoe_evt, local
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
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_村長_bom_00007b18
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_bom_00007b18
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_村長_bom_00007b18
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_bom02_bom_00007d1c
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_bom02_bom_00007d1c
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_村長_bom_00007b18
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback_mobj
	.4byte str_mobj_save_bom_00007d58
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFFFFFCE0
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x000000DA
	.4byte 0x00000401
	.4byte 0x00000032
	.4byte 0x00000046
	.4byte 0x000000BC
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_村長_bom_00007b18
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000001E
	.4byte 0x0000005C
	.4byte 0x000001E4
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0x000000BC
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x000007D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_63_bom_00007d64
	.4byte 0x00000000
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_村長_bom_00007b18
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_64_bom_00007d74
	.4byte 0x00000000
	.4byte str_村長_bom_00007b18
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ボムヘイE_bom_00007b20
	.4byte 0xFFFFFE3E
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_村長_bom_00007b18
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_bom_01_bom_000072b8
	.4byte str_minnnanokoe_bom_00007d84
	.4byte 0x00000002
	.4byte 0x00000001
.endobj minnnanokoe_evt

# .data:0x3F3C | 0x968C | size: 0x98
.obj kino_dt, local
	.4byte 0x000000C6
	.4byte 0xC3D48000
	.4byte 0x42480000
	.4byte 0xC3480000
	.4byte 0x0000000F
	.4byte 0xC38E8000
	.4byte 0x42380000
	.4byte 0xC35F0000
	.4byte 0xC3888000
	.4byte 0x41F00000
	.4byte 0xC3310000
	.4byte 0xC3DE8000
	.4byte 0x43810000
	.4byte 0x42B00000
	.4byte 0xC3AA8000
	.4byte 0x42B80000
	.4byte 0xC33F0000
	.4byte 0xC1C80000
	.4byte 0xC3A00000
	.4byte 0x41F00000
	.4byte 0xC2E60000
	.4byte str_宿店員_bom_000071b0
	.4byte str_yado_00_bom_00007d90
	.4byte str_yado_01_bom_00007d98
	.4byte str_yado_02_bom_00007da0
	.4byte str_yado_03_bom_00007da8
	.4byte str_yado_04_bom_00007db0
	.4byte str_yado_05_bom_00007db8
	.4byte str_yado_06_bom_00007dc0
	.4byte str_yado_07_bom_00007dc8
	.4byte str_yado_08_bom_00007dd0
	.4byte str_yado_09_bom_00007dd8
	.4byte str_yado_10_bom_00007de0
	.4byte str_yado_11_bom_00007de8
	.4byte str_yado_12_bom_00007df0
	.4byte str_yado_13_bom_00007df8
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kino_dt

# .data:0x3FD4 | 0x9724 | size: 0x4E0
.obj bom_02_init_evt_3_data_9724, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami2_bom_00007d4c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_bom_00007d84
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_VOICE1_bom_00007e00
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_BOM1_bom_00007e14
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_BOM3_bom_00007e24
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_bom_snowfall_3_data_E0
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000160
	.4byte 0x00000165
	.4byte 0x0001005E
	.4byte kiza_entry
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_shop_setup
	.4byte obj_list
	.4byte goods_list
	.4byte shopper_data
	.4byte trade_list
	.4byte 0x0002005B
	.4byte evt_kinopio_setup
	.4byte kino_dt
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ie1_door
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ie2_door
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ie3_door
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_group3713047r_bom_00007e34
	.4byte 0x0001005C
	.4byte evt_bom_01_karakara_3_data_BC0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_group3713048r_bom_00007e44
	.4byte 0x0001005C
	.4byte evt_bom_01_karakara_3_data_BC0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_group3713049r_bom_00007e54
	.4byte 0x0001005C
	.4byte evt_bom_01_karakara_3_data_BC0
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk01_bom_00007e64
	.4byte 0x000001A9
	.4byte 0x00000000
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0xF840713D
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_bom_00007e6c
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte str_S_wakuaaa_bom_00007e78
	.4byte 0x0000007D
	.4byte 0xF840719D
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_bom_00007274
	.4byte 0x0000007D
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0xFFFFFF58
	.4byte 0x00000010
	.4byte 0xF840719C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_bom_00007e84
	.4byte 0x000000A4
	.4byte 0xFFFFFF24
	.4byte 0x00000005
	.4byte 0xFFFFFF8D
	.4byte 0x00000010
	.4byte 0xF8406AB4
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_bom_00007d58
	.4byte 0xFFFFFED4
	.4byte 0x00000041
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami2_bom_00007d4c
	.4byte 0x0001005C
	.4byte sekai_yami_evt
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_bom_00007d84
	.4byte 0x0001005C
	.4byte minnnanokoe_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_nice_bom_00007794
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_nice_bom_00007794
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_yuge_bom_00007e8c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA8
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406AA4
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_w_bed_bom_00007e94
	.4byte 0x00000000
	.4byte evt_white_bed
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_map_replace_mapobj
	.4byte str_hi1_bom_00007e9c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replace_mapobj
	.4byte str_hi2_bom_00007ea0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replace_mapobj
	.4byte str_hi3_bom_00007ea4
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replace_mapobj
	.4byte str_hi4_bom_00007ea8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replace_mapobj
	.4byte str_hi5_bom_00007eac
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replace_mapobj
	.4byte str_hi6_bom_00007eb0
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000019
	.4byte 0x00020018
	.4byte 0xF84070A1
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84070A3
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84070A2
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_w_bed_bom_00007e94
	.4byte 0x00000000
	.4byte iri_25_white_bed
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840709C
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_30_bom_00007558
	.4byte 0x000000C9
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000023
	.4byte 0x00000010
	.4byte 0xF8406AB2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ie1_naka_bom_000071e0
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ie2_naka_bom_00007238
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ie3_naka_bom_000072a4
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bom_02_init_evt_3_data_9724

# .data:0x44B4 | 0x9C04 | size: 0x4
.obj gap_04_00009C04_data, global
.hidden gap_04_00009C04_data
	.4byte 0x00000000
.endobj gap_04_00009C04_data
