.include "macros.inc"
.file "unit_heavy_bom.o"

# 0x0000210C..0x0000226C | size: 0x160
.text
.balign 4

# .text:0x0 | 0x210C | size: 0xE0
.fn _fire_point_callback, local
/* 0000210C 000021D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002110 000021D4  7C 08 02 A6 */	mflr r0
/* 00002114 000021D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002118 000021DC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000211C 000021E0  83 E3 04 EC */	lwz r31, 0x4ec(r3)
/* 00002120 000021E4  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 00002124 000021E8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002128 000021EC  41 82 00 B0 */	beq .L_000021D8
/* 0000212C 000021F0  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 00002130 000021F4  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00002134 000021F8  2C 00 00 02 */	cmpwi r0, 0x2
/* 00002138 000021FC  41 82 00 3C */	beq .L_00002174
/* 0000213C 00002200  40 80 00 48 */	bge .L_00002184
/* 00002140 00002204  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002144 00002208  41 82 00 10 */	beq .L_00002154
/* 00002148 0000220C  40 80 00 1C */	bge .L_00002164
/* 0000214C 00002210  48 00 00 38 */	b .L_00002184
/* 00002150 00002214  48 00 00 34 */	b .L_00002184
.L_00002154:
/* 00002154 00002218  3C A0 00 00 */	lis r5, str_locator11_dou_000063d8@ha
/* 00002158 0000221C  38 05 00 00 */	addi r0, r5, str_locator11_dou_000063d8@l
/* 0000215C 00002220  7C 1E 03 78 */	mr r30, r0
/* 00002160 00002224  48 00 00 30 */	b .L_00002190
.L_00002164:
/* 00002164 00002228  3C A0 00 00 */	lis r5, str_locator10_dou_000063e4@ha
/* 00002168 0000222C  38 05 00 00 */	addi r0, r5, str_locator10_dou_000063e4@l
/* 0000216C 00002230  7C 1E 03 78 */	mr r30, r0
/* 00002170 00002234  48 00 00 20 */	b .L_00002190
.L_00002174:
/* 00002174 00002238  3C A0 00 00 */	lis r5, str_locator9_dou_000063f0@ha
/* 00002178 0000223C  38 05 00 00 */	addi r0, r5, str_locator9_dou_000063f0@l
/* 0000217C 00002240  7C 1E 03 78 */	mr r30, r0
/* 00002180 00002244  48 00 00 10 */	b .L_00002190
.L_00002184:
/* 00002184 00002248  3C A0 00 00 */	lis r5, str_locator8_dou_000063fc@ha
/* 00002188 0000224C  38 05 00 00 */	addi r0, r5, str_locator8_dou_000063fc@l
/* 0000218C 00002250  7C 1E 03 78 */	mr r30, r0
.L_00002190:
/* 00002190 00002254  4B FF DE DD */	bl animPoseGetGroupName
/* 00002194 00002258  7C 64 1B 78 */	mr r4, r3
/* 00002198 0000225C  7F C3 F3 78 */	mr r3, r30
/* 0000219C 00002260  4B FF DE D1 */	bl strcmp
/* 000021A0 00002264  2C 03 00 00 */	cmpwi r3, 0x0
/* 000021A4 00002268  40 82 00 34 */	bne .L_000021D8
/* 000021A8 0000226C  7F E3 FB 78 */	mr r3, r31
/* 000021AC 00002270  38 80 00 02 */	li r4, 0x2
/* 000021B0 00002274  4B FF DE BD */	bl BtlUnit_GetPartsPtr
/* 000021B4 00002278  83 C3 01 C0 */	lwz r30, 0x1c0(r3)
/* 000021B8 0000227C  3C 60 00 00 */	lis r3, str_pPlaneShape3_dou_00006408@ha
/* 000021BC 00002280  38 83 00 00 */	addi r4, r3, str_pPlaneShape3_dou_00006408@l
/* 000021C0 00002284  7F C3 F3 78 */	mr r3, r30
/* 000021C4 00002288  4B FF DE A9 */	bl animPoseGetShapeIdx
/* 000021C8 0000228C  7C 60 1B 78 */	mr r0, r3
/* 000021CC 00002290  7F C3 F3 78 */	mr r3, r30
/* 000021D0 00002294  7C 04 03 78 */	mr r4, r0
/* 000021D4 00002298  4B FF DE 99 */	bl animPoseDrawShape
.L_000021D8:
/* 000021D8 0000229C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000021DC 000022A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000021E0 000022A4  7C 08 03 A6 */	mtlr r0
/* 000021E4 000022A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000021E8 000022AC  4E 80 00 20 */	blr
.endfn _fire_point_callback

# .text:0xE0 | 0x21EC | size: 0x80
.fn _set_draw_callback, local
/* 000021EC 000022B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000021F0 000022B4  7C 08 02 A6 */	mflr r0
/* 000021F4 000022B8  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 000021F8 000022BC  38 80 FF FE */	li r4, -0x2
/* 000021FC 000022C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002200 000022C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00002204 000022C8  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 00002208 000022CC  4B FF DE 65 */	bl BattleTransID
/* 0000220C 000022D0  7C 60 1B 78 */	mr r0, r3
/* 00002210 000022D4  7F E3 FB 78 */	mr r3, r31
/* 00002214 000022D8  7C 04 03 78 */	mr r4, r0
/* 00002218 000022DC  4B FF DE 55 */	bl BattleGetUnitPtr
/* 0000221C 000022E0  38 80 00 01 */	li r4, 0x1
/* 00002220 000022E4  7C 7F 1B 78 */	mr r31, r3
/* 00002224 000022E8  4B FF DE 49 */	bl BtlUnit_GetPartsPtr
/* 00002228 000022EC  3C 80 00 00 */	lis r4, _fire_point_callback@ha
/* 0000222C 000022F0  7C 65 1B 78 */	mr r5, r3
/* 00002230 000022F4  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00002234 000022F8  38 84 00 00 */	addi r4, r4, _fire_point_callback@l
/* 00002238 000022FC  4B FF DE 35 */	bl animPoseSetDispCallBack
/* 0000223C 00002300  7F E3 FB 78 */	mr r3, r31
/* 00002240 00002304  38 80 00 02 */	li r4, 0x2
/* 00002244 00002308  4B FF DE 29 */	bl BtlUnit_GetPartsPtr
/* 00002248 0000230C  80 03 01 AC */	lwz r0, 0x1ac(r3)
/* 0000224C 00002310  64 00 01 00 */	oris r0, r0, 0x100
/* 00002250 00002314  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 00002254 00002318  38 60 00 02 */	li r3, 0x2
/* 00002258 0000231C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000225C 00002320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002260 00002324  7C 08 03 A6 */	mtlr r0
/* 00002264 00002328  38 21 00 10 */	addi r1, r1, 0x10
/* 00002268 0000232C  4E 80 00 20 */	blr
.endfn _set_draw_callback

# 0x00002520..0x00002788 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x2520 | size: 0x11
.obj str_btl_un_heavy_bom_dou_000061b0, local
	.string "btl_un_heavy_bom"
.endobj str_btl_un_heavy_bom_dou_000061b0

# .rodata:0x11 | 0x2531 | size: 0x3
.obj gap_03_00002531_rodata, global
.hidden gap_03_00002531_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002531_rodata

# .rodata:0x14 | 0x2534 | size: 0x18
.obj str_SFX_ENM_HEAVYB_DAMAG_dou_000061c4, local
	.string "SFX_ENM_HEAVYB_DAMAGED1"
.endobj str_SFX_ENM_HEAVYB_DAMAG_dou_000061c4

# .rodata:0x2C | 0x254C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_dou_000061dc, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_dou_000061dc

# .rodata:0x41 | 0x2561 | size: 0x3
.obj gap_03_00002561_rodata, global
.hidden gap_03_00002561_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002561_rodata

# .rodata:0x44 | 0x2564 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_dou_000061f4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_dou_000061f4

# .rodata:0x58 | 0x2578 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_dou_00006208, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_dou_00006208

# .rodata:0x71 | 0x2591 | size: 0x3
.obj gap_03_00002591_rodata, global
.hidden gap_03_00002591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002591_rodata

# .rodata:0x74 | 0x2594 | size: 0x4
.obj str_N_1_dou_00006224, local
	.string "N_1"
.endobj str_N_1_dou_00006224

# .rodata:0x78 | 0x2598 | size: 0x4
.obj str_Y_1_dou_00006228, local
	.string "Y_1"
.endobj str_Y_1_dou_00006228

# .rodata:0x7C | 0x259C | size: 0x4
.obj str_K_1_dou_0000622c, local
	.string "K_1"
.endobj str_K_1_dou_0000622c

# .rodata:0x80 | 0x25A0 | size: 0x4
.obj str_X_1_dou_00006230, local
	.string "X_1"
.endobj str_X_1_dou_00006230

# .rodata:0x84 | 0x25A4 | size: 0x4
.obj str_Z_1_dou_00006234, local
	.string "Z_1"
.endobj str_Z_1_dou_00006234

# .rodata:0x88 | 0x25A8 | size: 0x4
.obj str_S_1_dou_00006238, local
	.string "S_1"
.endobj str_S_1_dou_00006238

# .rodata:0x8C | 0x25AC | size: 0x4
.obj str_D_1_dou_0000623c, local
	.string "D_1"
.endobj str_D_1_dou_0000623c

# .rodata:0x90 | 0x25B0 | size: 0x4
.obj str_N_2_dou_00006240, local
	.string "N_2"
.endobj str_N_2_dou_00006240

# .rodata:0x94 | 0x25B4 | size: 0x4
.obj str_Y_2_dou_00006244, local
	.string "Y_2"
.endobj str_Y_2_dou_00006244

# .rodata:0x98 | 0x25B8 | size: 0x4
.obj str_K_2_dou_00006248, local
	.string "K_2"
.endobj str_K_2_dou_00006248

# .rodata:0x9C | 0x25BC | size: 0x4
.obj str_X_2_dou_0000624c, local
	.string "X_2"
.endobj str_X_2_dou_0000624c

# .rodata:0xA0 | 0x25C0 | size: 0x5
.obj str_Z_2B_dou_00006250, local
	.string "Z_2B"
.endobj str_Z_2B_dou_00006250

# .rodata:0xA5 | 0x25C5 | size: 0x3
.obj gap_03_000025C5_rodata, global
.hidden gap_03_000025C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025C5_rodata

# .rodata:0xA8 | 0x25C8 | size: 0x5
.obj str_S_2B_dou_00006258, local
	.string "S_2B"
.endobj str_S_2B_dou_00006258

# .rodata:0xAD | 0x25CD | size: 0x3
.obj gap_03_000025CD_rodata, global
.hidden gap_03_000025CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025CD_rodata

# .rodata:0xB0 | 0x25D0 | size: 0x4
.obj str_D_2_dou_00006260, local
	.string "D_2"
.endobj str_D_2_dou_00006260

# .rodata:0xB4 | 0x25D4 | size: 0x5
.obj str_Z_2A_dou_00006264, local
	.string "Z_2A"
.endobj str_Z_2A_dou_00006264

# .rodata:0xB9 | 0x25D9 | size: 0x3
.obj gap_03_000025D9_rodata, global
.hidden gap_03_000025D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025D9_rodata

# .rodata:0xBC | 0x25DC | size: 0x5
.obj str_S_2A_dou_0000626c, local
	.string "S_2A"
.endobj str_S_2A_dou_0000626c

# .rodata:0xC1 | 0x25E1 | size: 0x3
.obj gap_03_000025E1_rodata, global
.hidden gap_03_000025E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025E1_rodata

# .rodata:0xC4 | 0x25E4 | size: 0x4
.obj str_N_3_dou_00006274, local
	.string "N_3"
.endobj str_N_3_dou_00006274

# .rodata:0xC8 | 0x25E8 | size: 0x4
.obj str_Y_3_dou_00006278, local
	.string "Y_3"
.endobj str_Y_3_dou_00006278

# .rodata:0xCC | 0x25EC | size: 0x4
.obj str_K_3_dou_0000627c, local
	.string "K_3"
.endobj str_K_3_dou_0000627c

# .rodata:0xD0 | 0x25F0 | size: 0x4
.obj str_X_3_dou_00006280, local
	.string "X_3"
.endobj str_X_3_dou_00006280

# .rodata:0xD4 | 0x25F4 | size: 0x5
.obj str_Z_3B_dou_00006284, local
	.string "Z_3B"
.endobj str_Z_3B_dou_00006284

# .rodata:0xD9 | 0x25F9 | size: 0x3
.obj gap_03_000025F9_rodata, global
.hidden gap_03_000025F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025F9_rodata

# .rodata:0xDC | 0x25FC | size: 0x5
.obj str_S_3B_dou_0000628c, local
	.string "S_3B"
.endobj str_S_3B_dou_0000628c

# .rodata:0xE1 | 0x2601 | size: 0x3
.obj gap_03_00002601_rodata, global
.hidden gap_03_00002601_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002601_rodata

# .rodata:0xE4 | 0x2604 | size: 0x4
.obj str_D_3_dou_00006294, local
	.string "D_3"
.endobj str_D_3_dou_00006294

# .rodata:0xE8 | 0x2608 | size: 0x5
.obj str_Z_3A_dou_00006298, local
	.string "Z_3A"
.endobj str_Z_3A_dou_00006298

# .rodata:0xED | 0x260D | size: 0x3
.obj gap_03_0000260D_rodata, global
.hidden gap_03_0000260D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000260D_rodata

# .rodata:0xF0 | 0x2610 | size: 0x5
.obj str_S_3A_dou_000062a0, local
	.string "S_3A"
.endobj str_S_3A_dou_000062a0

# .rodata:0xF5 | 0x2615 | size: 0x3
.obj gap_03_00002615_rodata, global
.hidden gap_03_00002615_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002615_rodata

# .rodata:0xF8 | 0x2618 | size: 0x4
.obj str_N_4_dou_000062a8, local
	.string "N_4"
.endobj str_N_4_dou_000062a8

# .rodata:0xFC | 0x261C | size: 0x4
.obj str_Y_4_dou_000062ac, local
	.string "Y_4"
.endobj str_Y_4_dou_000062ac

# .rodata:0x100 | 0x2620 | size: 0x4
.obj str_K_4_dou_000062b0, local
	.string "K_4"
.endobj str_K_4_dou_000062b0

# .rodata:0x104 | 0x2624 | size: 0x4
.obj str_X_4_dou_000062b4, local
	.string "X_4"
.endobj str_X_4_dou_000062b4

# .rodata:0x108 | 0x2628 | size: 0x5
.obj str_Z_4A_dou_000062b8, local
	.string "Z_4A"
.endobj str_Z_4A_dou_000062b8

# .rodata:0x10D | 0x262D | size: 0x3
.obj gap_03_0000262D_rodata, global
.hidden gap_03_0000262D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000262D_rodata

# .rodata:0x110 | 0x2630 | size: 0x5
.obj str_S_4A_dou_000062c0, local
	.string "S_4A"
.endobj str_S_4A_dou_000062c0

# .rodata:0x115 | 0x2635 | size: 0x3
.obj gap_03_00002635_rodata, global
.hidden gap_03_00002635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002635_rodata

# .rodata:0x118 | 0x2638 | size: 0x4
.obj str_D_4_dou_000062c8, local
	.string "D_4"
.endobj str_D_4_dou_000062c8

# .rodata:0x11C | 0x263C | size: 0x5
.obj str_Z_4B_dou_000062cc, local
	.string "Z_4B"
.endobj str_Z_4B_dou_000062cc

# .rodata:0x121 | 0x2641 | size: 0x3
.obj gap_03_00002641_rodata, global
.hidden gap_03_00002641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002641_rodata

# .rodata:0x124 | 0x2644 | size: 0x5
.obj str_S_4B_dou_000062d4, local
	.string "S_4B"
.endobj str_S_4B_dou_000062d4

# .rodata:0x129 | 0x2649 | size: 0x3
.obj gap_03_00002649_rodata, global
.hidden gap_03_00002649_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002649_rodata

# .rodata:0x12C | 0x264C | size: 0x4
.obj str_B_4_dou_000062dc, local
	.string "B_4"
.endobj str_B_4_dou_000062dc

# .rodata:0x130 | 0x2650 | size: 0x4
.obj str_B_1_dou_000062e0, local
	.string "B_1"
.endobj str_B_1_dou_000062e0

# .rodata:0x134 | 0x2654 | size: 0x4
.obj str_B_7_dou_000062e4, local
	.string "B_7"
.endobj str_B_7_dou_000062e4

# .rodata:0x138 | 0x2658 | size: 0x5
.obj str_B_10_dou_000062e8, local
	.string "B_10"
.endobj str_B_10_dou_000062e8

# .rodata:0x13D | 0x265D | size: 0x3
.obj gap_03_0000265D_rodata, global
.hidden gap_03_0000265D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000265D_rodata

# .rodata:0x140 | 0x2660 | size: 0x4
.obj str_B_5_dou_000062f0, local
	.string "B_5"
.endobj str_B_5_dou_000062f0

# .rodata:0x144 | 0x2664 | size: 0x4
.obj str_B_2_dou_000062f4, local
	.string "B_2"
.endobj str_B_2_dou_000062f4

# .rodata:0x148 | 0x2668 | size: 0x4
.obj str_B_8_dou_000062f8, local
	.string "B_8"
.endobj str_B_8_dou_000062f8

# .rodata:0x14C | 0x266C | size: 0x5
.obj str_B_11_dou_000062fc, local
	.string "B_11"
.endobj str_B_11_dou_000062fc

# .rodata:0x151 | 0x2671 | size: 0x3
.obj gap_03_00002671_rodata, global
.hidden gap_03_00002671_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002671_rodata

# .rodata:0x154 | 0x2674 | size: 0x4
.obj str_B_6_dou_00006304, local
	.string "B_6"
.endobj str_B_6_dou_00006304

# .rodata:0x158 | 0x2678 | size: 0x4
.obj str_B_3_dou_00006308, local
	.string "B_3"
.endobj str_B_3_dou_00006308

# .rodata:0x15C | 0x267C | size: 0x4
.obj str_B_9_dou_0000630c, local
	.string "B_9"
.endobj str_B_9_dou_0000630c

# .rodata:0x160 | 0x2680 | size: 0x5
.obj str_B_12_dou_00006310, local
	.string "B_12"
.endobj str_B_12_dou_00006310

# .rodata:0x165 | 0x2685 | size: 0x3
.obj gap_03_00002685_rodata, global
.hidden gap_03_00002685_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002685_rodata

# .rodata:0x168 | 0x2688 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT3_dou_00006318, local
	.string "SFX_ENM_HEAVYB_WAIT3"
.endobj str_SFX_ENM_HEAVYB_WAIT3_dou_00006318

# .rodata:0x17D | 0x269D | size: 0x3
.obj gap_03_0000269D_rodata, global
.hidden gap_03_0000269D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000269D_rodata

# .rodata:0x180 | 0x26A0 | size: 0x8
.obj str_c_heavy_dou_00006330, local
	.string "c_heavy"
.endobj str_c_heavy_dou_00006330

# .rodata:0x188 | 0x26A8 | size: 0xB
.obj str_ヘビーボム_dou_00006338, local
	.4byte 0x83778372
	.4byte 0x815B837B
	.byte 0x83, 0x80, 0x00
.endobj str_ヘビーボム_dou_00006338

# .rodata:0x193 | 0x26B3 | size: 0x1
.obj gap_03_000026B3_rodata, global
.hidden gap_03_000026B3_rodata
	.byte 0x00
.endobj gap_03_000026B3_rodata

# .rodata:0x194 | 0x26B4 | size: 0x4
.obj str_F_1_dou_00006344, local
	.string "F_1"
.endobj str_F_1_dou_00006344

# .rodata:0x198 | 0x26B8 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT2_dou_00006348, local
	.string "SFX_ENM_HEAVYB_WAIT2"
.endobj str_SFX_ENM_HEAVYB_WAIT2_dou_00006348

# .rodata:0x1AD | 0x26CD | size: 0x3
.obj gap_03_000026CD_rodata, global
.hidden gap_03_000026CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026CD_rodata

# .rodata:0x1B0 | 0x26D0 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_dou_00006360, local
	.string "SFX_ENM_HEAVYB_ATTACK1"
.endobj str_SFX_ENM_HEAVYB_ATTAC_dou_00006360

# .rodata:0x1C7 | 0x26E7 | size: 0x1
.obj gap_03_000026E7_rodata, global
.hidden gap_03_000026E7_rodata
	.byte 0x00
.endobj gap_03_000026E7_rodata

# .rodata:0x1C8 | 0x26E8 | size: 0x4
.obj str_G_1_dou_00006378, local
	.string "G_1"
.endobj str_G_1_dou_00006378

# .rodata:0x1CC | 0x26EC | size: 0x4
.obj str_G_2_dou_0000637c, local
	.string "G_2"
.endobj str_G_2_dou_0000637c

# .rodata:0x1D0 | 0x26F0 | size: 0x4
.obj str_G_3_dou_00006380, local
	.string "G_3"
.endobj str_G_3_dou_00006380

# .rodata:0x1D4 | 0x26F4 | size: 0x4
.obj str_G_4_dou_00006384, local
	.string "G_4"
.endobj str_G_4_dou_00006384

# .rodata:0x1D8 | 0x26F8 | size: 0x15
.obj str_SFX_ENM_HEAVYB_WAIT1_dou_00006388, local
	.string "SFX_ENM_HEAVYB_WAIT1"
.endobj str_SFX_ENM_HEAVYB_WAIT1_dou_00006388

# .rodata:0x1ED | 0x270D | size: 0x3
.obj gap_03_0000270D_rodata, global
.hidden gap_03_0000270D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000270D_rodata

# .rodata:0x1F0 | 0x2710 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_dou_000063a0, local
	.string "SFX_ENM_HEAVYB_ATTACK2"
.endobj str_SFX_ENM_HEAVYB_ATTAC_dou_000063a0

# .rodata:0x207 | 0x2727 | size: 0x1
.obj gap_03_00002727_rodata, global
.hidden gap_03_00002727_rodata
	.byte 0x00
.endobj gap_03_00002727_rodata

# .rodata:0x208 | 0x2728 | size: 0x17
.obj str_SFX_ENM_HEAVYB_ATTAC_dou_000063b8, local
	.string "SFX_ENM_HEAVYB_ATTACK3"
.endobj str_SFX_ENM_HEAVYB_ATTAC_dou_000063b8

# .rodata:0x21F | 0x273F | size: 0x1
.obj gap_03_0000273F_rodata, global
.hidden gap_03_0000273F_rodata
	.byte 0x00
.endobj gap_03_0000273F_rodata

# .rodata:0x220 | 0x2740 | size: 0x5
.obj str_bomb_dou_000063d0, local
	.string "bomb"
.endobj str_bomb_dou_000063d0

# .rodata:0x225 | 0x2745 | size: 0x3
.obj gap_03_00002745_rodata, global
.hidden gap_03_00002745_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002745_rodata

# .rodata:0x228 | 0x2748 | size: 0xA
.obj str_locator11_dou_000063d8, local
	.string "locator11"
.endobj str_locator11_dou_000063d8

# .rodata:0x232 | 0x2752 | size: 0x2
.obj gap_03_00002752_rodata, global
.hidden gap_03_00002752_rodata
	.2byte 0x0000
.endobj gap_03_00002752_rodata

# .rodata:0x234 | 0x2754 | size: 0xA
.obj str_locator10_dou_000063e4, local
	.string "locator10"
.endobj str_locator10_dou_000063e4

# .rodata:0x23E | 0x275E | size: 0x2
.obj gap_03_0000275E_rodata, global
.hidden gap_03_0000275E_rodata
	.2byte 0x0000
.endobj gap_03_0000275E_rodata

# .rodata:0x240 | 0x2760 | size: 0x9
.obj str_locator9_dou_000063f0, local
	.string "locator9"
.endobj str_locator9_dou_000063f0

# .rodata:0x249 | 0x2769 | size: 0x3
.obj gap_03_00002769_rodata, global
.hidden gap_03_00002769_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002769_rodata

# .rodata:0x24C | 0x276C | size: 0x9
.obj str_locator8_dou_000063fc, local
	.string "locator8"
.endobj str_locator8_dou_000063fc

# .rodata:0x255 | 0x2775 | size: 0x3
.obj gap_03_00002775_rodata, global
.hidden gap_03_00002775_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002775_rodata

# .rodata:0x258 | 0x2778 | size: 0xD
.obj str_pPlaneShape3_dou_00006408, local
	.string "pPlaneShape3"
.endobj str_pPlaneShape3_dou_00006408

# .rodata:0x265 | 0x2785 | size: 0x3
.obj gap_03_00002785_rodata, global
.hidden gap_03_00002785_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002785_rodata

# 0x000159C8..0x000170F0 | size: 0x1728
.data
.balign 8

# .data:0x0 | 0x159C8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x159D0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x159D4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x159D8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x159DC | size: 0x4
.obj gap_04_000159DC_data, global
.hidden gap_04_000159DC_data
	.4byte 0x00000000
.endobj gap_04_000159DC_data

# .data:0x18 | 0x159E0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x159E8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x159EC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x159F0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x159F8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x159FC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x15A00 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x15A04 | size: 0x4
.obj gap_04_00015A04_data, global
.hidden gap_04_00015A04_data
	.4byte 0x00000000
.endobj gap_04_00015A04_data

# .data:0x40 | 0x15A08 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x15A10 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x15A14 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x15A18 | size: 0xC4
.obj unit_heavy_bom_5_data_15A18, global
	.4byte 0x0000005C
	.4byte str_btl_un_heavy_bom_dou_000061b0
	.4byte 0x00060000
	.4byte 0x01011600
	.4byte 0x04460028
	.4byte 0x270F0036
	.4byte 0x00460007
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D80000
	.4byte 0x42360000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x42580000
	.4byte 0x428C0000
	.4byte 0x00000002
	.4byte 0x64000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_DAMAG_dou_000061c4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_dou_000061dc
	.4byte str_SFX_BTL_DAMAGE_ICE1_dou_000061f4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_dou_00006208
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_heavy_bom_5_data_15A18

# .data:0x114 | 0x15ADC | size: 0xC0
.obj weapon_heavy_bomb_super_explosion, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101020
	.4byte 0x20000000
	.4byte 0x03000302
	.4byte 0x00000000
	.4byte 0x00022087
	.4byte 0x000007FF
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
	.4byte 0x00323264
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_super_explosion

# .data:0x1D4 | 0x15B9C | size: 0xC0
.obj weapon_heavy_bomb_guard, local
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
	.4byte 0x02004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640303
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_guard

# .data:0x294 | 0x15C5C | size: 0xC0
.obj weapon_heavy_bomb_guard_2, local
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
	.4byte 0x02004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00006403
	.4byte 0x03000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_heavy_bomb_guard_2

# .data:0x354 | 0x15D1C | size: 0xC0
.obj weapon_heavy_bomb_guard_3, local
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
	.4byte 0x02004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
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
.endobj weapon_heavy_bomb_guard_3

# .data:0x414 | 0x15DDC | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x419 | 0x15DE1 | size: 0x3
.obj gap_04_00015DE1_data, global
.hidden gap_04_00015DE1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00015DE1_data

# .data:0x41C | 0x15DE4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x421 | 0x15DE9 | size: 0x3
.obj gap_04_00015DE9_data, global
.hidden gap_04_00015DE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00015DE9_data

# .data:0x424 | 0x15DEC | size: 0x16
.obj regist, local
	.4byte 0x5A4B4600
	.4byte 0x46966464
	.4byte 0x64506450
	.4byte 0x645F4650
	.4byte 0x14644664
	.2byte 0x645F
.endobj regist

# .data:0x43A | 0x15E02 | size: 0x2
.obj gap_04_00015E02_data, global
.hidden gap_04_00015E02_data
	.2byte 0x0000
.endobj gap_04_00015E02_data

# .data:0x43C | 0x15E04 | size: 0x80
.obj pose_table_3, local
	.4byte 0x00000001
	.4byte str_N_1_dou_00006224
	.4byte 0x00000009
	.4byte str_Y_1_dou_00006228
	.4byte 0x00000002
	.4byte str_Y_1_dou_00006228
	.4byte 0x00000003
	.4byte str_K_1_dou_0000622c
	.4byte 0x00000004
	.4byte str_X_1_dou_00006230
	.4byte 0x00000005
	.4byte str_K_1_dou_0000622c
	.4byte 0x00000009
	.4byte str_Z_1_dou_00006234
	.4byte 0x0000001C
	.4byte str_S_1_dou_00006238
	.4byte 0x0000001D
	.4byte str_D_1_dou_0000623c
	.4byte 0x00000023
	.4byte str_S_1_dou_00006238
	.4byte 0x0000001F
	.4byte str_S_1_dou_00006238
	.4byte 0x00000027
	.4byte str_D_1_dou_0000623c
	.4byte 0x00000038
	.4byte str_X_1_dou_00006230
	.4byte 0x00000039
	.4byte str_X_1_dou_00006230
	.4byte 0x00000041
	.4byte str_S_1_dou_00006238
	.4byte 0x00000045
	.4byte str_S_1_dou_00006238
.endobj pose_table_3

# .data:0x4BC | 0x15E84 | size: 0x80
.obj pose_table_3_fire, local
	.4byte 0x00000001
	.4byte str_N_1_dou_00006224
	.4byte 0x00000009
	.4byte str_Y_1_dou_00006228
	.4byte 0x00000002
	.4byte str_Y_1_dou_00006228
	.4byte 0x00000003
	.4byte str_K_1_dou_0000622c
	.4byte 0x00000004
	.4byte str_X_1_dou_00006230
	.4byte 0x00000005
	.4byte str_K_1_dou_0000622c
	.4byte 0x00000009
	.4byte str_Z_1_dou_00006234
	.4byte 0x0000001C
	.4byte str_S_1_dou_00006238
	.4byte 0x0000001D
	.4byte str_D_1_dou_0000623c
	.4byte 0x00000023
	.4byte str_S_1_dou_00006238
	.4byte 0x0000001F
	.4byte str_S_1_dou_00006238
	.4byte 0x00000027
	.4byte str_D_1_dou_0000623c
	.4byte 0x00000038
	.4byte str_X_1_dou_00006230
	.4byte 0x00000039
	.4byte str_X_1_dou_00006230
	.4byte 0x00000041
	.4byte str_S_1_dou_00006238
	.4byte 0x00000045
	.4byte str_S_1_dou_00006238
.endobj pose_table_3_fire

# .data:0x53C | 0x15F04 | size: 0x80
.obj pose_table_2, local
	.4byte 0x00000001
	.4byte str_N_2_dou_00006240
	.4byte 0x00000009
	.4byte str_Y_2_dou_00006244
	.4byte 0x00000002
	.4byte str_Y_2_dou_00006244
	.4byte 0x00000003
	.4byte str_K_2_dou_00006248
	.4byte 0x00000004
	.4byte str_X_2_dou_0000624c
	.4byte 0x00000005
	.4byte str_K_2_dou_00006248
	.4byte 0x00000009
	.4byte str_Z_2B_dou_00006250
	.4byte 0x0000001C
	.4byte str_S_2B_dou_00006258
	.4byte 0x0000001D
	.4byte str_D_2_dou_00006260
	.4byte 0x00000023
	.4byte str_S_2B_dou_00006258
	.4byte 0x0000001F
	.4byte str_S_2B_dou_00006258
	.4byte 0x00000027
	.4byte str_D_2_dou_00006260
	.4byte 0x00000038
	.4byte str_X_2_dou_0000624c
	.4byte 0x00000039
	.4byte str_X_2_dou_0000624c
	.4byte 0x00000041
	.4byte str_S_2B_dou_00006258
	.4byte 0x00000045
	.4byte str_S_2B_dou_00006258
.endobj pose_table_2

# .data:0x5BC | 0x15F84 | size: 0x80
.obj pose_table_2_fire, local
	.4byte 0x00000001
	.4byte str_N_2_dou_00006240
	.4byte 0x00000009
	.4byte str_Y_2_dou_00006244
	.4byte 0x00000002
	.4byte str_Y_2_dou_00006244
	.4byte 0x00000003
	.4byte str_K_2_dou_00006248
	.4byte 0x00000004
	.4byte str_X_2_dou_0000624c
	.4byte 0x00000005
	.4byte str_K_2_dou_00006248
	.4byte 0x00000009
	.4byte str_Z_2A_dou_00006264
	.4byte 0x0000001C
	.4byte str_S_2A_dou_0000626c
	.4byte 0x0000001D
	.4byte str_D_2_dou_00006260
	.4byte 0x00000023
	.4byte str_S_2A_dou_0000626c
	.4byte 0x0000001F
	.4byte str_S_2A_dou_0000626c
	.4byte 0x00000027
	.4byte str_D_2_dou_00006260
	.4byte 0x00000038
	.4byte str_X_2_dou_0000624c
	.4byte 0x00000039
	.4byte str_X_2_dou_0000624c
	.4byte 0x00000041
	.4byte str_S_2A_dou_0000626c
	.4byte 0x00000045
	.4byte str_S_2A_dou_0000626c
.endobj pose_table_2_fire

# .data:0x63C | 0x16004 | size: 0x80
.obj pose_table_1, local
	.4byte 0x00000001
	.4byte str_N_3_dou_00006274
	.4byte 0x00000009
	.4byte str_Y_3_dou_00006278
	.4byte 0x00000002
	.4byte str_Y_3_dou_00006278
	.4byte 0x00000003
	.4byte str_K_3_dou_0000627c
	.4byte 0x00000004
	.4byte str_X_3_dou_00006280
	.4byte 0x00000005
	.4byte str_K_3_dou_0000627c
	.4byte 0x00000009
	.4byte str_Z_3B_dou_00006284
	.4byte 0x0000001C
	.4byte str_S_3B_dou_0000628c
	.4byte 0x0000001D
	.4byte str_D_3_dou_00006294
	.4byte 0x00000023
	.4byte str_S_3B_dou_0000628c
	.4byte 0x0000001F
	.4byte str_S_3B_dou_0000628c
	.4byte 0x00000027
	.4byte str_D_3_dou_00006294
	.4byte 0x00000038
	.4byte str_X_3_dou_00006280
	.4byte 0x00000039
	.4byte str_X_3_dou_00006280
	.4byte 0x00000041
	.4byte str_S_3B_dou_0000628c
	.4byte 0x00000045
	.4byte str_S_3B_dou_0000628c
.endobj pose_table_1

# .data:0x6BC | 0x16084 | size: 0x80
.obj pose_table_1_fire, local
	.4byte 0x00000001
	.4byte str_N_3_dou_00006274
	.4byte 0x00000009
	.4byte str_Y_3_dou_00006278
	.4byte 0x00000002
	.4byte str_Y_3_dou_00006278
	.4byte 0x00000003
	.4byte str_K_3_dou_0000627c
	.4byte 0x00000004
	.4byte str_X_3_dou_00006280
	.4byte 0x00000005
	.4byte str_K_3_dou_0000627c
	.4byte 0x00000009
	.4byte str_Z_3A_dou_00006298
	.4byte 0x0000001C
	.4byte str_S_3A_dou_000062a0
	.4byte 0x0000001D
	.4byte str_D_3_dou_00006294
	.4byte 0x00000023
	.4byte str_S_3A_dou_000062a0
	.4byte 0x0000001F
	.4byte str_S_3A_dou_000062a0
	.4byte 0x00000027
	.4byte str_D_3_dou_00006294
	.4byte 0x00000038
	.4byte str_X_3_dou_00006280
	.4byte 0x00000039
	.4byte str_X_3_dou_00006280
	.4byte 0x00000041
	.4byte str_S_3A_dou_000062a0
	.4byte 0x00000045
	.4byte str_S_3A_dou_000062a0
.endobj pose_table_1_fire

# .data:0x73C | 0x16104 | size: 0x80
.obj pose_table_0_fire, local
	.4byte 0x00000001
	.4byte str_N_4_dou_000062a8
	.4byte 0x00000009
	.4byte str_Y_4_dou_000062ac
	.4byte 0x00000002
	.4byte str_Y_4_dou_000062ac
	.4byte 0x00000003
	.4byte str_K_4_dou_000062b0
	.4byte 0x00000004
	.4byte str_X_4_dou_000062b4
	.4byte 0x00000005
	.4byte str_K_4_dou_000062b0
	.4byte 0x00000009
	.4byte str_Z_4A_dou_000062b8
	.4byte 0x0000001C
	.4byte str_S_4A_dou_000062c0
	.4byte 0x0000001D
	.4byte str_D_4_dou_000062c8
	.4byte 0x00000023
	.4byte str_S_4A_dou_000062c0
	.4byte 0x0000001F
	.4byte str_S_4A_dou_000062c0
	.4byte 0x00000027
	.4byte str_D_4_dou_000062c8
	.4byte 0x00000038
	.4byte str_X_4_dou_000062b4
	.4byte 0x00000039
	.4byte str_X_4_dou_000062b4
	.4byte 0x00000041
	.4byte str_S_4A_dou_000062c0
	.4byte 0x00000045
	.4byte str_S_4A_dou_000062c0
.endobj pose_table_0_fire

# .data:0x7BC | 0x16184 | size: 0x80
.obj pose_table_0, local
	.4byte 0x00000001
	.4byte str_N_4_dou_000062a8
	.4byte 0x00000009
	.4byte str_Y_4_dou_000062ac
	.4byte 0x00000002
	.4byte str_Y_4_dou_000062ac
	.4byte 0x00000003
	.4byte str_K_4_dou_000062b0
	.4byte 0x00000004
	.4byte str_X_4_dou_000062b4
	.4byte 0x00000005
	.4byte str_K_4_dou_000062b0
	.4byte 0x00000009
	.4byte str_Z_4B_dou_000062cc
	.4byte 0x0000001C
	.4byte str_S_4B_dou_000062d4
	.4byte 0x0000001D
	.4byte str_D_4_dou_000062c8
	.4byte 0x00000023
	.4byte str_S_4B_dou_000062d4
	.4byte 0x0000001F
	.4byte str_S_4B_dou_000062d4
	.4byte 0x00000027
	.4byte str_D_4_dou_000062c8
	.4byte 0x00000038
	.4byte str_X_4_dou_000062b4
	.4byte 0x00000039
	.4byte str_X_4_dou_000062b4
	.4byte 0x00000041
	.4byte str_S_4B_dou_000062d4
	.4byte 0x00000045
	.4byte str_S_4B_dou_000062d4
.endobj pose_table_0

# .data:0x83C | 0x16204 | size: 0x68
.obj pose_table_3_to_2, local
	.4byte 0x00000001
	.4byte str_B_4_dou_000062dc
	.4byte 0x00000009
	.4byte str_B_1_dou_000062e0
	.4byte 0x00000002
	.4byte str_B_1_dou_000062e0
	.4byte 0x00000003
	.4byte str_B_7_dou_000062e4
	.4byte 0x00000004
	.4byte str_B_10_dou_000062e8
	.4byte 0x00000005
	.4byte str_B_7_dou_000062e4
	.4byte 0x0000001C
	.4byte str_B_1_dou_000062e0
	.4byte 0x0000001F
	.4byte str_B_1_dou_000062e0
	.4byte 0x00000027
	.4byte str_B_1_dou_000062e0
	.4byte 0x00000038
	.4byte str_B_10_dou_000062e8
	.4byte 0x00000039
	.4byte str_B_10_dou_000062e8
	.4byte 0x00000041
	.4byte str_B_1_dou_000062e0
	.4byte 0x00000045
	.4byte str_B_1_dou_000062e0
.endobj pose_table_3_to_2

# .data:0x8A4 | 0x1626C | size: 0x68
.obj pose_table_2_to_1, local
	.4byte 0x00000001
	.4byte str_B_5_dou_000062f0
	.4byte 0x00000009
	.4byte str_B_2_dou_000062f4
	.4byte 0x00000002
	.4byte str_B_2_dou_000062f4
	.4byte 0x00000003
	.4byte str_B_8_dou_000062f8
	.4byte 0x00000004
	.4byte str_B_11_dou_000062fc
	.4byte 0x00000005
	.4byte str_B_8_dou_000062f8
	.4byte 0x0000001C
	.4byte str_B_2_dou_000062f4
	.4byte 0x0000001F
	.4byte str_B_2_dou_000062f4
	.4byte 0x00000027
	.4byte str_B_2_dou_000062f4
	.4byte 0x00000038
	.4byte str_B_11_dou_000062fc
	.4byte 0x00000039
	.4byte str_B_11_dou_000062fc
	.4byte 0x00000041
	.4byte str_B_2_dou_000062f4
	.4byte 0x00000045
	.4byte str_B_2_dou_000062f4
.endobj pose_table_2_to_1

# .data:0x90C | 0x162D4 | size: 0x68
.obj pose_table_1_to_0, local
	.4byte 0x00000001
	.4byte str_B_6_dou_00006304
	.4byte 0x00000009
	.4byte str_B_3_dou_00006308
	.4byte 0x00000002
	.4byte str_B_3_dou_00006308
	.4byte 0x00000003
	.4byte str_B_9_dou_0000630c
	.4byte 0x00000004
	.4byte str_B_12_dou_00006310
	.4byte 0x00000005
	.4byte str_B_9_dou_0000630c
	.4byte 0x0000001C
	.4byte str_B_3_dou_00006308
	.4byte 0x0000001F
	.4byte str_B_3_dou_00006308
	.4byte 0x00000027
	.4byte str_B_3_dou_00006308
	.4byte 0x00000038
	.4byte str_B_12_dou_00006310
	.4byte 0x00000039
	.4byte str_B_12_dou_00006310
	.4byte 0x00000041
	.4byte str_B_3_dou_00006308
	.4byte 0x00000045
	.4byte str_B_3_dou_00006308
.endobj pose_table_1_to_0

# .data:0x974 | 0x1633C | size: 0x18
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000034
	.4byte explosion_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x98C | 0x16354 | size: 0xB4
.obj pose_sound_timing_table, local
	.4byte str_S_3A_dou_000062a0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_3A_dou_000062a0
	.4byte 0x3E888889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_3A_dou_000062a0
	.4byte 0x3F088889
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_3A_dou_000062a0
	.4byte 0x3F4CCCCD
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_4A_dou_000062c0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_4A_dou_000062c0
	.4byte 0x3E2AAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_4A_dou_000062c0
	.4byte 0x3EAAAAAB
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte str_S_4A_dou_000062c0
	.4byte 0x3F000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HEAVYB_WAIT3_dou_00006318
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0xA40 | 0x16408 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_heavy_bom_dou_000061b0
	.4byte str_c_heavy_dou_00006330
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42820000
	.4byte 0x00000000
	.4byte 0x00410046
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_3
	.4byte 0x00000002
	.4byte str_ヘビーボム_dou_00006338
	.4byte str_c_heavy_dou_00006330
	.4byte 0x00000000
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02010000
	.4byte 0x00000000
	.4byte pose_table_3
.endobj parts

# .data:0xAD8 | 0x164A0 | size: 0xE4
.obj init_event, local
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_F_1_dou_00006344
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0001005B
	.4byte _set_draw_callback
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xBBC | 0x16584 | size: 0x1D8
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_2
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_1
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_0
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x0000001B
	.4byte 0x0001002B
	.4byte 0x00000018
	.4byte 0x0001002B
	.4byte 0x00000019
	.4byte 0x0001002B
	.4byte 0x00000034
	.4byte 0x0001002B
	.4byte 0x0000002E
	.4byte 0x0001002B
	.4byte 0x00000032
	.4byte 0x0001002B
	.4byte 0x00000036
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001D
	.4byte 0x0001005E
	.4byte dead_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xD94 | 0x1675C | size: 0x1F8
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_K_4_dou_000062b0
	.4byte 0x0003005B
	.4byte btlevtcmd_AfterReactionEntry
	.4byte 0xFFFFFFFE
	.4byte 0x00000034
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT2_dou_00006348
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_3_to_2
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_2_to_1
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_1_to_0
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_2_fire
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_1_fire
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_0_fire
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xF8C | 0x16954 | size: 0x2BC
.obj attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_dou_00006360
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_1_dou_00006378
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_dou_0000637c
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_dou_00006380
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_dou_00006384
	.4byte 0x00000031
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_WAIT1_dou_00006388
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_dou_000063a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_1_dou_00006378
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_2_dou_0000637c
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_3_dou_00006380
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_G_4_dou_00006384
	.4byte 0x00000031
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_heavy_bomb_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_heavy_bomb_guard_2
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_heavy_bomb_guard_3
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1248 | 0x16C10 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1260 | 0x16C28 | size: 0xD0
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x0000001B
	.4byte 0x0001002B
	.4byte 0x00000018
	.4byte 0x0001002B
	.4byte 0x00000019
	.4byte 0x0001002B
	.4byte 0x00000034
	.4byte 0x0001002B
	.4byte 0x0000002E
	.4byte 0x0001002B
	.4byte 0x00000032
	.4byte 0x0001002B
	.4byte 0x00000036
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_AfterReactionEntry
	.4byte 0xFFFFFFFE
	.4byte 0x00000034
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x1330 | 0x16CF8 | size: 0x3F8
.obj explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HEAVYB_ATTAC_dou_000063b8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte btlevtcmd_StageDispellFog
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000004
	.4byte 0xFFFFFFD8
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000004
	.4byte 0x00000028
	.4byte 0x0000005A
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000004
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000004
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000004
	.4byte 0xFFFFFF9C
	.4byte 0x0000003C
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000007D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_bomb_dou_000063d0
	.4byte 0x00000004
	.4byte 0x00000064
	.4byte 0x0000003C
	.4byte 0x00000014
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_heavy_bomb_super_explosion
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
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_heavy_bomb_super_explosion
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
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_heavy_bomb_super_explosion
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
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
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj explosion_event
