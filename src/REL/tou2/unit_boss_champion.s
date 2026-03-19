.include "macros.inc"
.file "unit_boss_champion.o"

# 0x000026EC..0x00002A1C | size: 0x330
.text
.balign 4

# .text:0x0 | 0x26EC | size: 0x48
.fn unk_tou2_000027b0, local
/* 000026EC 000027B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000026F0 000027B4  7C 08 02 A6 */	mflr r0
/* 000026F4 000027B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 000026F8 000027BC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000026FC 000027C0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002700 000027C4  48 00 29 15 */	bl evtGetValue
/* 00002704 000027C8  28 03 00 00 */	cmplwi r3, 0x0
/* 00002708 000027CC  41 82 00 18 */	beq .L_00002720
/* 0000270C 000027D0  48 00 29 09 */	bl effFallCheckHit
/* 00002710 000027D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00002714 000027D8  40 82 00 0C */	bne .L_00002720
/* 00002718 000027DC  38 60 00 00 */	li r3, 0x0
/* 0000271C 000027E0  48 00 00 08 */	b .L_00002724
.L_00002720:
/* 00002720 000027E4  38 60 00 02 */	li r3, 0x2
.L_00002724:
/* 00002724 000027E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002728 000027EC  7C 08 03 A6 */	mtlr r0
/* 0000272C 000027F0  38 21 00 10 */	addi r1, r1, 0x10
/* 00002730 000027F4  4E 80 00 20 */	blr
.endfn unk_tou2_000027b0

# .text:0x48 | 0x2734 | size: 0x108
.fn unk_tou2_000027f8, local
/* 00002734 000027F8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00002738 000027FC  7C 08 02 A6 */	mflr r0
/* 0000273C 00002800  90 01 00 54 */	stw r0, 0x54(r1)
/* 00002740 00002804  39 61 00 50 */	addi r11, r1, 0x50
/* 00002744 00002808  48 00 28 D1 */	bl _savefpr_26
/* 00002748 0000280C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000274C 00002810  7C 7C 1B 78 */	mr r28, r3
/* 00002750 00002814  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002754 00002818  83 DF 00 00 */	lwz r30, 0x0(r31)
/* 00002758 0000281C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000275C 00002820  48 00 28 B9 */	bl evtGetValue
/* 00002760 00002824  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00002764 00002828  7C 7D 1B 78 */	mr r29, r3
/* 00002768 0000282C  7F 83 E3 78 */	mr r3, r28
/* 0000276C 00002830  48 00 28 A9 */	bl evtGetFloat
/* 00002770 00002834  FF E0 08 90 */	fmr f31, f1
/* 00002774 00002838  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00002778 0000283C  7F 83 E3 78 */	mr r3, r28
/* 0000277C 00002840  48 00 28 99 */	bl evtGetFloat
/* 00002780 00002844  FF C0 08 90 */	fmr f30, f1
/* 00002784 00002848  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002788 0000284C  7F 83 E3 78 */	mr r3, r28
/* 0000278C 00002850  48 00 28 89 */	bl evtGetFloat
/* 00002790 00002854  FF A0 08 90 */	fmr f29, f1
/* 00002794 00002858  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00002798 0000285C  7F 83 E3 78 */	mr r3, r28
/* 0000279C 00002860  48 00 28 79 */	bl evtGetFloat
/* 000027A0 00002864  FF 80 08 90 */	fmr f28, f1
/* 000027A4 00002868  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 000027A8 0000286C  7F 83 E3 78 */	mr r3, r28
/* 000027AC 00002870  48 00 28 69 */	bl evtGetFloat
/* 000027B0 00002874  FF 60 08 90 */	fmr f27, f1
/* 000027B4 00002878  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 000027B8 0000287C  7F 83 E3 78 */	mr r3, r28
/* 000027BC 00002880  48 00 28 59 */	bl evtGetFloat
/* 000027C0 00002884  FF 40 08 90 */	fmr f26, f1
/* 000027C4 00002888  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 000027C8 0000288C  7F 83 E3 78 */	mr r3, r28
/* 000027CC 00002890  48 00 28 49 */	bl evtGetValue
/* 000027D0 00002894  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 000027D4 00002898  7C 7F 1B 78 */	mr r31, r3
/* 000027D8 0000289C  7F 83 E3 78 */	mr r3, r28
/* 000027DC 000028A0  48 00 28 39 */	bl evtGetValue
/* 000027E0 000028A4  FC 20 F8 90 */	fmr f1, f31
/* 000027E4 000028A8  7C 65 1B 78 */	mr r5, r3
/* 000027E8 000028AC  FC 40 F0 90 */	fmr f2, f30
/* 000027EC 000028B0  7F A3 EB 78 */	mr r3, r29
/* 000027F0 000028B4  FC 60 E8 90 */	fmr f3, f29
/* 000027F4 000028B8  7F E4 FB 78 */	mr r4, r31
/* 000027F8 000028BC  FC 80 E0 90 */	fmr f4, f28
/* 000027FC 000028C0  FC A0 D8 90 */	fmr f5, f27
/* 00002800 000028C4  FC C0 D0 90 */	fmr f6, f26
/* 00002804 000028C8  48 00 28 11 */	bl effFallEntry
/* 00002808 000028CC  7C 60 1B 78 */	mr r0, r3
/* 0000280C 000028D0  7F 83 E3 78 */	mr r3, r28
/* 00002810 000028D4  7C 05 03 78 */	mr r5, r0
/* 00002814 000028D8  7F C4 F3 78 */	mr r4, r30
/* 00002818 000028DC  48 00 27 FD */	bl evtSetValue
/* 0000281C 000028E0  38 60 00 02 */	li r3, 0x2
/* 00002820 000028E4  39 61 00 50 */	addi r11, r1, 0x50
/* 00002824 000028E8  48 00 27 F1 */	bl _restfpr_26
/* 00002828 000028EC  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000282C 000028F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00002830 000028F4  7C 08 03 A6 */	mtlr r0
/* 00002834 000028F8  38 21 00 50 */	addi r1, r1, 0x50
/* 00002838 000028FC  4E 80 00 20 */	blr
.endfn unk_tou2_000027f8

# .text:0x150 | 0x283C | size: 0x24
.fn check_ceil, local
/* 0000283C 00002900  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002840 00002904  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00002844 00002908  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002848 0000290C  3C 84 00 02 */	addis r4, r4, 0x2
/* 0000284C 00002910  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 00002850 00002914  54 00 06 B4 */	rlwinm r0, r0, 0, 26, 26
/* 00002854 00002918  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 00002858 0000291C  38 60 00 02 */	li r3, 0x2
/* 0000285C 00002920  4E 80 00 20 */	blr
.endfn check_ceil

# .text:0x174 | 0x2860 | size: 0xC8
.fn down_ceil, local
/* 00002860 00002924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002864 00002928  7C 08 02 A6 */	mflr r0
/* 00002868 0000292C  3C C0 00 00 */	lis r6, _battleWorkPointer@ha
/* 0000286C 00002930  3C A0 00 00 */	lis r5, str_if_body_tou2_0000bc20@ha
/* 00002870 00002934  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002874 00002938  38 C6 00 00 */	addi r6, r6, _battleWorkPointer@l
/* 00002878 0000293C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000287C 00002940  7C 7F 1B 78 */	mr r31, r3
/* 00002880 00002944  38 65 00 00 */	addi r3, r5, str_if_body_tou2_0000bc20@l
/* 00002884 00002948  7C 9E 23 78 */	mr r30, r4
/* 00002888 0000294C  80 C6 00 00 */	lwz r6, 0x0(r6)
/* 0000288C 00002950  3F 86 00 02 */	addis r28, r6, 0x2
/* 00002890 00002954  48 00 27 85 */	bl BattleSearchObjectPtr
/* 00002894 00002958  3C 80 00 00 */	lis r4, str_if_wire_tou2_0000bc28@ha
/* 00002898 0000295C  7C 7D 1B 78 */	mr r29, r3
/* 0000289C 00002960  38 64 00 00 */	addi r3, r4, str_if_wire_tou2_0000bc28@l
/* 000028A0 00002964  48 00 27 75 */	bl BattleSearchObjectPtr
/* 000028A4 00002968  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000028A8 0000296C  7C 7E 1B 78 */	mr r30, r3
/* 000028AC 00002970  41 82 00 18 */	beq .L_000028C4
/* 000028B0 00002974  38 00 00 78 */	li r0, 0x78
/* 000028B4 00002978  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000028B8 0000297C  88 1C 80 F8 */	lbz r0, -0x7f08(r28)
/* 000028BC 00002980  54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 000028C0 00002984  98 1C 80 F8 */	stb r0, -0x7f08(r28)
.L_000028C4:
/* 000028C4 00002988  3C 80 00 00 */	lis r4, float_250_tou2_0000bc30@ha
/* 000028C8 0000298C  3C 60 00 00 */	lis r3, float_130_tou2_0000bc34@ha
/* 000028CC 00002990  C0 43 00 00 */	lfs f2, float_130_tou2_0000bc34@l(r3)
/* 000028D0 00002994  38 60 00 04 */	li r3, 0x4
/* 000028D4 00002998  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 000028D8 0000299C  38 A0 00 78 */	li r5, 0x78
/* 000028DC 000029A0  C0 24 00 00 */	lfs f1, float_250_tou2_0000bc30@l(r4)
/* 000028E0 000029A4  20 80 00 78 */	subfic r4, r0, 0x78
/* 000028E4 000029A8  48 00 27 31 */	bl intplGetValue
/* 000028E8 000029AC  D0 3E 00 08 */	stfs f1, 0x8(r30)
/* 000028EC 000029B0  D0 3D 00 08 */	stfs f1, 0x8(r29)
/* 000028F0 000029B4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 000028F4 000029B8  38 03 FF FF */	subi r0, r3, 0x1
/* 000028F8 000029BC  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000028FC 000029C0  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00002900 000029C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002904 000029C8  40 80 00 0C */	bge .L_00002910
/* 00002908 000029CC  38 60 00 02 */	li r3, 0x2
/* 0000290C 000029D0  48 00 00 08 */	b .L_00002914
.L_00002910:
/* 00002910 000029D4  38 60 00 00 */	li r3, 0x0
.L_00002914:
/* 00002914 000029D8  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00002918 000029DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000291C 000029E0  7C 08 03 A6 */	mtlr r0
/* 00002920 000029E4  38 21 00 20 */	addi r1, r1, 0x20
/* 00002924 000029E8  4E 80 00 20 */	blr
.endfn down_ceil

# .text:0x23C | 0x2928 | size: 0x98
.fn init_ceil, local
/* 00002928 000029EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000292C 000029F0  7C 08 02 A6 */	mflr r0
/* 00002930 000029F4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002934 000029F8  3C 60 00 00 */	lis r3, str_if_body_tou2_0000bc20@ha
/* 00002938 000029FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000293C 00002A00  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00002940 00002A04  38 63 00 00 */	addi r3, r3, str_if_body_tou2_0000bc20@l
/* 00002944 00002A08  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00002948 00002A0C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000294C 00002A10  3F C4 00 02 */	addis r30, r4, 0x2
/* 00002950 00002A14  48 00 26 C5 */	bl BattleSearchObjectPtr
/* 00002954 00002A18  3C 80 00 00 */	lis r4, str_if_wire_tou2_0000bc28@ha
/* 00002958 00002A1C  7C 7F 1B 78 */	mr r31, r3
/* 0000295C 00002A20  38 64 00 00 */	addi r3, r4, str_if_wire_tou2_0000bc28@l
/* 00002960 00002A24  48 00 26 B5 */	bl BattleSearchObjectPtr
/* 00002964 00002A28  3C 80 00 00 */	lis r4, vec3_tou2_0000b8b0@ha
/* 00002968 00002A2C  38 A4 00 00 */	addi r5, r4, vec3_tou2_0000b8b0@l
/* 0000296C 00002A30  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002970 00002A34  80 05 00 04 */	lwz r0, 0x4(r5)
/* 00002974 00002A38  90 83 00 04 */	stw r4, 0x4(r3)
/* 00002978 00002A3C  90 03 00 08 */	stw r0, 0x8(r3)
/* 0000297C 00002A40  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00002980 00002A44  90 03 00 0C */	stw r0, 0xc(r3)
/* 00002984 00002A48  80 83 00 04 */	lwz r4, 0x4(r3)
/* 00002988 00002A4C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 0000298C 00002A50  90 9F 00 04 */	stw r4, 0x4(r31)
/* 00002990 00002A54  90 1F 00 08 */	stw r0, 0x8(r31)
/* 00002994 00002A58  80 03 00 0C */	lwz r0, 0xc(r3)
/* 00002998 00002A5C  38 60 00 02 */	li r3, 0x2
/* 0000299C 00002A60  90 1F 00 0C */	stw r0, 0xc(r31)
/* 000029A0 00002A64  88 1E 80 F8 */	lbz r0, -0x7f08(r30)
/* 000029A4 00002A68  60 00 00 20 */	ori r0, r0, 0x20
/* 000029A8 00002A6C  98 1E 80 F8 */	stb r0, -0x7f08(r30)
/* 000029AC 00002A70  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000029B0 00002A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000029B4 00002A78  7C 08 03 A6 */	mtlr r0
/* 000029B8 00002A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 000029BC 00002A80  4E 80 00 20 */	blr
.endfn init_ceil

# .text:0x2D4 | 0x29C0 | size: 0x5C
.fn ceil_exist, local
/* 000029C0 00002A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000029C4 00002A88  7C 08 02 A6 */	mflr r0
/* 000029C8 00002A8C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000029CC 00002A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 000029D0 00002A94  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 000029D4 00002A98  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000029D8 00002A9C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000029DC 00002AA0  3C 84 00 02 */	addis r4, r4, 0x2
/* 000029E0 00002AA4  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 000029E4 00002AA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 000029E8 00002AAC  41 82 00 14 */	beq .L_000029FC
/* 000029EC 00002AB0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000029F0 00002AB4  38 A0 00 00 */	li r5, 0x0
/* 000029F4 00002AB8  48 00 26 21 */	bl evtSetValue
/* 000029F8 00002ABC  48 00 00 10 */	b .L_00002A08
.L_000029FC:
/* 000029FC 00002AC0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002A00 00002AC4  38 A0 00 01 */	li r5, 0x1
/* 00002A04 00002AC8  48 00 26 11 */	bl evtSetValue
.L_00002A08:
/* 00002A08 00002ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002A0C 00002AD0  38 60 00 02 */	li r3, 0x2
/* 00002A10 00002AD4  7C 08 03 A6 */	mtlr r0
/* 00002A14 00002AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 00002A18 00002ADC  4E 80 00 20 */	blr
.endfn ceil_exist

# 0x000020A0..0x000024F8 | size: 0x458
.rodata
.balign 8

# .rodata:0x0 | 0x20A0 | size: 0x10
.obj str_btl_un_champion_tou2_0000b7e0, local
	.string "btl_un_champion"
.endobj str_btl_un_champion_tou2_0000b7e0

# .rodata:0x10 | 0x20B0 | size: 0x17
.obj str_SFX_BOSS_BLED_DAMAGE_tou2_0000b7f0, local
	.string "SFX_BOSS_BLED_DAMAGED1"
.endobj str_SFX_BOSS_BLED_DAMAGE_tou2_0000b7f0

# .rodata:0x27 | 0x20C7 | size: 0x1
.obj gap_03_000020C7_rodata, global
.hidden gap_03_000020C7_rodata
	.byte 0x00
.endobj gap_03_000020C7_rodata

# .rodata:0x28 | 0x20C8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000b808, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000b808

# .rodata:0x3D | 0x20DD | size: 0x3
.obj gap_03_000020DD_rodata, global
.hidden gap_03_000020DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020DD_rodata

# .rodata:0x40 | 0x20E0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000b820, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000b820

# .rodata:0x54 | 0x20F4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000b834, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000b834

# .rodata:0x6D | 0x210D | size: 0x3
.obj gap_03_0000210D_rodata, global
.hidden gap_03_0000210D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000210D_rodata

# .rodata:0x70 | 0x2110 | size: 0x4
.obj str_N_1_tou2_0000b850, local
	.string "N_1"
.endobj str_N_1_tou2_0000b850

# .rodata:0x74 | 0x2114 | size: 0x4
.obj str_Y_1_tou2_0000b854, local
	.string "Y_1"
.endobj str_Y_1_tou2_0000b854

# .rodata:0x78 | 0x2118 | size: 0x4
.obj str_K_1_tou2_0000b858, local
	.string "K_1"
.endobj str_K_1_tou2_0000b858

# .rodata:0x7C | 0x211C | size: 0x4
.obj str_X_1_tou2_0000b85c, local
	.string "X_1"
.endobj str_X_1_tou2_0000b85c

# .rodata:0x80 | 0x2120 | size: 0x4
.obj str_S_1_tou2_0000b860, local
	.string "S_1"
.endobj str_S_1_tou2_0000b860

# .rodata:0x84 | 0x2124 | size: 0x4
.obj str_Q_1_tou2_0000b864, local
	.string "Q_1"
.endobj str_Q_1_tou2_0000b864

# .rodata:0x88 | 0x2128 | size: 0x4
.obj str_D_1_tou2_0000b868, local
	.string "D_1"
.endobj str_D_1_tou2_0000b868

# .rodata:0x8C | 0x212C | size: 0x4
.obj str_Z_6_tou2_0000b86c, local
	.string "Z_6"
.endobj str_Z_6_tou2_0000b86c

# .rodata:0x90 | 0x2130 | size: 0x4
.obj str_R_1_tou2_0000b870, local
	.string "R_1"
.endobj str_R_1_tou2_0000b870

# .rodata:0x94 | 0x2134 | size: 0x4
.obj str_W_1_tou2_0000b874, local
	.string "W_1"
.endobj str_W_1_tou2_0000b874

# .rodata:0x98 | 0x2138 | size: 0x4
.obj str_T_1_tou2_0000b878, local
	.string "T_1"
.endobj str_T_1_tou2_0000b878

# .rodata:0x9C | 0x213C | size: 0x4
.obj str_N_2_tou2_0000b87c, local
	.string "N_2"
.endobj str_N_2_tou2_0000b87c

# .rodata:0xA0 | 0x2140 | size: 0x4
.obj str_Y_2_tou2_0000b880, local
	.string "Y_2"
.endobj str_Y_2_tou2_0000b880

# .rodata:0xA4 | 0x2144 | size: 0x4
.obj str_K_2_tou2_0000b884, local
	.string "K_2"
.endobj str_K_2_tou2_0000b884

# .rodata:0xA8 | 0x2148 | size: 0x4
.obj str_X_2_tou2_0000b888, local
	.string "X_2"
.endobj str_X_2_tou2_0000b888

# .rodata:0xAC | 0x214C | size: 0x4
.obj str_S_8_tou2_0000b88c, local
	.string "S_8"
.endobj str_S_8_tou2_0000b88c

# .rodata:0xB0 | 0x2150 | size: 0x4
.obj str_Q_2_tou2_0000b890, local
	.string "Q_2"
.endobj str_Q_2_tou2_0000b890

# .rodata:0xB4 | 0x2154 | size: 0x4
.obj str_D_2_tou2_0000b894, local
	.string "D_2"
.endobj str_D_2_tou2_0000b894

# .rodata:0xB8 | 0x2158 | size: 0x4
.obj str_Z_8_tou2_0000b898, local
	.string "Z_8"
.endobj str_Z_8_tou2_0000b898

# .rodata:0xBC | 0x215C | size: 0x4
.obj str_W_2_tou2_0000b89c, local
	.string "W_2"
.endobj str_W_2_tou2_0000b89c

# .rodata:0xC0 | 0x2160 | size: 0x4
.obj str_T_8_tou2_0000b8a0, local
	.string "T_8"
.endobj str_T_8_tou2_0000b8a0

# .rodata:0xC4 | 0x2164 | size: 0x9
.obj str_c_bred_h_tou2_0000b8a4, local
	.string "c_bred_h"
.endobj str_c_bred_h_tou2_0000b8a4

# .rodata:0xCD | 0x216D | size: 0x3
.obj gap_03_0000216D_rodata, global
.hidden gap_03_0000216D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000216D_rodata

# .rodata:0xD0 | 0x2170 | size: 0xC
.obj vec3_tou2_0000b8b0, local
	.4byte 0x00000000
	.4byte 0x437A0000
	.4byte 0x00000000
.endobj vec3_tou2_0000b8b0

# .rodata:0xDC | 0x217C | size: 0x5
.obj str_J_1A_tou2_0000b8bc, local
	.string "J_1A"
.endobj str_J_1A_tou2_0000b8bc

# .rodata:0xE1 | 0x2181 | size: 0x3
.obj gap_03_00002181_rodata, global
.hidden gap_03_00002181_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002181_rodata

# .rodata:0xE4 | 0x2184 | size: 0x5
.obj str_J_1D_tou2_0000b8c4, local
	.string "J_1D"
.endobj str_J_1D_tou2_0000b8c4

# .rodata:0xE9 | 0x2189 | size: 0x3
.obj gap_03_00002189_rodata, global
.hidden gap_03_00002189_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002189_rodata

# .rodata:0xEC | 0x218C | size: 0x14
.obj str_SFX_BOSS_BLED_JUMP1_tou2_0000b8cc, local
	.string "SFX_BOSS_BLED_JUMP1"
.endobj str_SFX_BOSS_BLED_JUMP1_tou2_0000b8cc

# .rodata:0x100 | 0x21A0 | size: 0x1D
.obj str_SFX_BOSS_BLED_GRASP__tou2_0000b8e0, local
	.string "SFX_BOSS_BLED_GRASP_CAILING1"
.endobj str_SFX_BOSS_BLED_GRASP__tou2_0000b8e0

# .rodata:0x11D | 0x21BD | size: 0x3
.obj gap_03_000021BD_rodata, global
.hidden gap_03_000021BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021BD_rodata

# .rodata:0x120 | 0x21C0 | size: 0x17
.obj str_SFX_BOSS_BLED_LANDIN_tou2_0000b900, local
	.string "SFX_BOSS_BLED_LANDING1"
.endobj str_SFX_BOSS_BLED_LANDIN_tou2_0000b900

# .rodata:0x137 | 0x21D7 | size: 0x1
.obj gap_03_000021D7_rodata, global
.hidden gap_03_000021D7_rodata
	.byte 0x00
.endobj gap_03_000021D7_rodata

# .rodata:0x138 | 0x21D8 | size: 0x15
.obj str_SFX_BOSS_BLED_MOVE1L_tou2_0000b918, local
	.string "SFX_BOSS_BLED_MOVE1L"
.endobj str_SFX_BOSS_BLED_MOVE1L_tou2_0000b918

# .rodata:0x14D | 0x21ED | size: 0x3
.obj gap_03_000021ED_rodata, global
.hidden gap_03_000021ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021ED_rodata

# .rodata:0x150 | 0x21F0 | size: 0x15
.obj str_SFX_BOSS_BLED_MOVE1R_tou2_0000b930, local
	.string "SFX_BOSS_BLED_MOVE1R"
.endobj str_SFX_BOSS_BLED_MOVE1R_tou2_0000b930

# .rodata:0x165 | 0x2205 | size: 0x3
.obj gap_03_00002205_rodata, global
.hidden gap_03_00002205_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002205_rodata

# .rodata:0x168 | 0x2208 | size: 0x4
.obj str_S_6_tou2_0000b948, local
	.string "S_6"
.endobj str_S_6_tou2_0000b948

# .rodata:0x16C | 0x220C | size: 0x4
.obj str_T_6_tou2_0000b94c, local
	.string "T_6"
.endobj str_T_6_tou2_0000b94c

# .rodata:0x170 | 0x2210 | size: 0xD
.obj str_stg3_tou_432_tou2_0000b950, local
	.string "stg3_tou_432"
.endobj str_stg3_tou_432_tou2_0000b950

# .rodata:0x17D | 0x221D | size: 0x3
.obj gap_03_0000221D_rodata, global
.hidden gap_03_0000221D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000221D_rodata

# .rodata:0x180 | 0x2220 | size: 0xD
.obj str_stg3_tou_433_tou2_0000b960, local
	.string "stg3_tou_433"
.endobj str_stg3_tou_433_tou2_0000b960

# .rodata:0x18D | 0x222D | size: 0x3
.obj gap_03_0000222D_rodata, global
.hidden gap_03_0000222D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000222D_rodata

# .rodata:0x190 | 0x2230 | size: 0xD
.obj str_stg3_tou_434_tou2_0000b970, local
	.string "stg3_tou_434"
.endobj str_stg3_tou_434_tou2_0000b970

# .rodata:0x19D | 0x223D | size: 0x3
.obj gap_03_0000223D_rodata, global
.hidden gap_03_0000223D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000223D_rodata

# .rodata:0x1A0 | 0x2240 | size: 0xD
.obj str_stg3_tou_435_tou2_0000b980, local
	.string "stg3_tou_435"
.endobj str_stg3_tou_435_tou2_0000b980

# .rodata:0x1AD | 0x224D | size: 0x3
.obj gap_03_0000224D_rodata, global
.hidden gap_03_0000224D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000224D_rodata

# .rodata:0x1B0 | 0x2250 | size: 0x10
.obj str_stg3_tou_435_01_tou2_0000b990, local
	.string "stg3_tou_435_01"
.endobj str_stg3_tou_435_01_tou2_0000b990

# .rodata:0x1C0 | 0x2260 | size: 0x10
.obj str_stg3_tou_435_02_tou2_0000b9a0, local
	.string "stg3_tou_435_02"
.endobj str_stg3_tou_435_02_tou2_0000b9a0

# .rodata:0x1D0 | 0x2270 | size: 0xD
.obj str_stg3_tou_436_tou2_0000b9b0, local
	.string "stg3_tou_436"
.endobj str_stg3_tou_436_tou2_0000b9b0

# .rodata:0x1DD | 0x227D | size: 0x3
.obj gap_03_0000227D_rodata, global
.hidden gap_03_0000227D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000227D_rodata

# .rodata:0x1E0 | 0x2280 | size: 0x10
.obj str_stg3_tou_436_01_tou2_0000b9c0, local
	.string "stg3_tou_436_01"
.endobj str_stg3_tou_436_01_tou2_0000b9c0

# .rodata:0x1F0 | 0x2290 | size: 0x15
.obj str_チャンピオン_再挑戦_tou2_0000b9d0, local
	.4byte 0x83608383
	.4byte 0x83938373
	.4byte 0x83498393
	.4byte 0x81408DC4
	.4byte 0x92A790ED
	.byte 0x00
.endobj str_チャンピオン_再挑戦_tou2_0000b9d0

# .rodata:0x205 | 0x22A5 | size: 0x3
.obj gap_03_000022A5_rodata, global
.hidden gap_03_000022A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022A5_rodata

# .rodata:0x208 | 0x22A8 | size: 0x10
.obj str_stg3_tou_re_116_tou2_0000b9e8, local
	.string "stg3_tou_re_116"
.endobj str_stg3_tou_re_116_tou2_0000b9e8

# .rodata:0x218 | 0x22B8 | size: 0x10
.obj str_stg3_tou_re_123_tou2_0000b9f8, local
	.string "stg3_tou_re_123"
.endobj str_stg3_tou_re_123_tou2_0000b9f8

# .rodata:0x228 | 0x22C8 | size: 0x10
.obj str_stg3_tou_re_124_tou2_0000ba08, local
	.string "stg3_tou_re_124"
.endobj str_stg3_tou_re_124_tou2_0000ba08

# .rodata:0x238 | 0x22D8 | size: 0x10
.obj str_stg3_tou_re_131_tou2_0000ba18, local
	.string "stg3_tou_re_131"
.endobj str_stg3_tou_re_131_tou2_0000ba18

# .rodata:0x248 | 0x22E8 | size: 0x4
.obj str_D_3_tou2_0000ba28, local
	.string "D_3"
.endobj str_D_3_tou2_0000ba28

# .rodata:0x24C | 0x22EC | size: 0x13
.obj str_SFX_BOSS_BLED_DIE1_tou2_0000ba2c, local
	.string "SFX_BOSS_BLED_DIE1"
.endobj str_SFX_BOSS_BLED_DIE1_tou2_0000ba2c

# .rodata:0x25F | 0x22FF | size: 0x1
.obj gap_03_000022FF_rodata, global
.hidden gap_03_000022FF_rodata
	.byte 0x00
.endobj gap_03_000022FF_rodata

# .rodata:0x260 | 0x2300 | size: 0x5
.obj str_T_10_tou2_0000ba40, local
	.string "T_10"
.endobj str_T_10_tou2_0000ba40

# .rodata:0x265 | 0x2305 | size: 0x3
.obj gap_03_00002305_rodata, global
.hidden gap_03_00002305_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002305_rodata

# .rodata:0x268 | 0x2308 | size: 0x5
.obj str_S_10_tou2_0000ba48, local
	.string "S_10"
.endobj str_S_10_tou2_0000ba48

# .rodata:0x26D | 0x230D | size: 0x3
.obj gap_03_0000230D_rodata, global
.hidden gap_03_0000230D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000230D_rodata

# .rodata:0x270 | 0x2310 | size: 0x10
.obj str_stg3_tou_436_06_tou2_0000ba50, local
	.string "stg3_tou_436_06"
.endobj str_stg3_tou_436_06_tou2_0000ba50

# .rodata:0x280 | 0x2320 | size: 0x10
.obj str_stg3_tou_436_02_tou2_0000ba60, local
	.string "stg3_tou_436_02"
.endobj str_stg3_tou_436_02_tou2_0000ba60

# .rodata:0x290 | 0x2330 | size: 0x4
.obj str_S_2_tou2_0000ba70, local
	.string "S_2"
.endobj str_S_2_tou2_0000ba70

# .rodata:0x294 | 0x2334 | size: 0x4
.obj str_T_2_tou2_0000ba74, local
	.string "T_2"
.endobj str_T_2_tou2_0000ba74

# .rodata:0x298 | 0x2338 | size: 0x10
.obj str_stg3_tou_436_03_tou2_0000ba78, local
	.string "stg3_tou_436_03"
.endobj str_stg3_tou_436_03_tou2_0000ba78

# .rodata:0x2A8 | 0x2348 | size: 0x10
.obj str_stg3_tou_436_04_tou2_0000ba88, local
	.string "stg3_tou_436_04"
.endobj str_stg3_tou_436_04_tou2_0000ba88

# .rodata:0x2B8 | 0x2358 | size: 0x5
.obj str_A_3B_tou2_0000ba98, local
	.string "A_3B"
.endobj str_A_3B_tou2_0000ba98

# .rodata:0x2BD | 0x235D | size: 0x3
.obj gap_03_0000235D_rodata, global
.hidden gap_03_0000235D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000235D_rodata

# .rodata:0x2C0 | 0x2360 | size: 0x5
.obj str_A_3C_tou2_0000baa0, local
	.string "A_3C"
.endobj str_A_3C_tou2_0000baa0

# .rodata:0x2C5 | 0x2365 | size: 0x3
.obj gap_03_00002365_rodata, global
.hidden gap_03_00002365_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002365_rodata

# .rodata:0x2C8 | 0x2368 | size: 0x1C
.obj str_SFX_BOSS_BLED_MOVE_C_tou2_0000baa8, local
	.string "SFX_BOSS_BLED_MOVE_CAILING1"
.endobj str_SFX_BOSS_BLED_MOVE_C_tou2_0000baa8

# .rodata:0x2E4 | 0x2384 | size: 0x10
.obj str_stg3_tou_436_05_tou2_0000bac4, local
	.string "stg3_tou_436_05"
.endobj str_stg3_tou_436_05_tou2_0000bac4

# .rodata:0x2F4 | 0x2394 | size: 0x5
.obj str_A_2A_tou2_0000bad4, local
	.string "A_2A"
.endobj str_A_2A_tou2_0000bad4

# .rodata:0x2F9 | 0x2399 | size: 0x3
.obj gap_03_00002399_rodata, global
.hidden gap_03_00002399_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002399_rodata

# .rodata:0x2FC | 0x239C | size: 0x19
.obj str_SFX_BOSS_BLED_DROP_K_tou2_0000badc, local
	.string "SFX_BOSS_BLED_DROP_KICK1"
.endobj str_SFX_BOSS_BLED_DROP_K_tou2_0000badc

# .rodata:0x315 | 0x23B5 | size: 0x3
.obj gap_03_000023B5_rodata, global
.hidden gap_03_000023B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023B5_rodata

# .rodata:0x318 | 0x23B8 | size: 0x5
.obj str_A_2B_tou2_0000baf8, local
	.string "A_2B"
.endobj str_A_2B_tou2_0000baf8

# .rodata:0x31D | 0x23BD | size: 0x3
.obj gap_03_000023BD_rodata, global
.hidden gap_03_000023BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023BD_rodata

# .rodata:0x320 | 0x23C0 | size: 0x1A
.obj str_SFX_BOSS_BLED_CHOP_R_tou2_0000bb00, local
	.string "SFX_BOSS_BLED_CHOP_ROUND1"
.endobj str_SFX_BOSS_BLED_CHOP_R_tou2_0000bb00

# .rodata:0x33A | 0x23DA | size: 0x2
.obj gap_03_000023DA_rodata, global
.hidden gap_03_000023DA_rodata
	.2byte 0x0000
.endobj gap_03_000023DA_rodata

# .rodata:0x33C | 0x23DC | size: 0x5
.obj str_J_1B_tou2_0000bb1c, local
	.string "J_1B"
.endobj str_J_1B_tou2_0000bb1c

# .rodata:0x341 | 0x23E1 | size: 0x3
.obj gap_03_000023E1_rodata, global
.hidden gap_03_000023E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023E1_rodata

# .rodata:0x344 | 0x23E4 | size: 0x5
.obj str_J_1C_tou2_0000bb24, local
	.string "J_1C"
.endobj str_J_1C_tou2_0000bb24

# .rodata:0x349 | 0x23E9 | size: 0x3
.obj gap_03_000023E9_rodata, global
.hidden gap_03_000023E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023E9_rodata

# .rodata:0x34C | 0x23EC | size: 0x5
.obj str_J_1F_tou2_0000bb2c, local
	.string "J_1F"
.endobj str_J_1F_tou2_0000bb2c

# .rodata:0x351 | 0x23F1 | size: 0x3
.obj gap_03_000023F1_rodata, global
.hidden gap_03_000023F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023F1_rodata

# .rodata:0x354 | 0x23F4 | size: 0x1C
.obj str_SFX_BOSS_BLED_CHOP_L_tou2_0000bb34, local
	.string "SFX_BOSS_BLED_CHOP_LANDING1"
.endobj str_SFX_BOSS_BLED_CHOP_L_tou2_0000bb34

# .rodata:0x370 | 0x2410 | size: 0x5
.obj str_A_1A_tou2_0000bb50, local
	.string "A_1A"
.endobj str_A_1A_tou2_0000bb50

# .rodata:0x375 | 0x2415 | size: 0x3
.obj gap_03_00002415_rodata, global
.hidden gap_03_00002415_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002415_rodata

# .rodata:0x378 | 0x2418 | size: 0x5
.obj str_A_1B_tou2_0000bb58, local
	.string "A_1B"
.endobj str_A_1B_tou2_0000bb58

# .rodata:0x37D | 0x241D | size: 0x3
.obj gap_03_0000241D_rodata, global
.hidden gap_03_0000241D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000241D_rodata

# .rodata:0x380 | 0x2420 | size: 0x18
.obj str_SFX_BOSS_BLED_CHOP_F_tou2_0000bb60, local
	.string "SFX_BOSS_BLED_CHOP_FLY1"
.endobj str_SFX_BOSS_BLED_CHOP_F_tou2_0000bb60

# .rodata:0x398 | 0x2438 | size: 0x5
.obj str_A_1C_tou2_0000bb78, local
	.string "A_1C"
.endobj str_A_1C_tou2_0000bb78

# .rodata:0x39D | 0x243D | size: 0x3
.obj gap_03_0000243D_rodata, global
.hidden gap_03_0000243D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000243D_rodata

# .rodata:0x3A0 | 0x2440 | size: 0x4
.obj str_B_1_tou2_0000bb80, local
	.string "B_1"
.endobj str_B_1_tou2_0000bb80

# .rodata:0x3A4 | 0x2444 | size: 0x5
.obj str_A_3A_tou2_0000bb84, local
	.string "A_3A"
.endobj str_A_3A_tou2_0000bb84

# .rodata:0x3A9 | 0x2449 | size: 0x3
.obj gap_03_00002449_rodata, global
.hidden gap_03_00002449_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002449_rodata

# .rodata:0x3AC | 0x244C | size: 0x19
.obj str_SFX_BOSS_BLED_FUMI_F_tou2_0000bb8c, local
	.string "SFX_BOSS_BLED_FUMI_FALL1"
.endobj str_SFX_BOSS_BLED_FUMI_F_tou2_0000bb8c

# .rodata:0x3C5 | 0x2465 | size: 0x3
.obj gap_03_00002465_rodata, global
.hidden gap_03_00002465_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002465_rodata

# .rodata:0x3C8 | 0x2468 | size: 0x1B
.obj str_SFX_BOSS_BLED_FUMI_S_tou2_0000bba8, local
	.string "SFX_BOSS_BLED_FUMI_STEPON1"
.endobj str_SFX_BOSS_BLED_FUMI_S_tou2_0000bba8

# .rodata:0x3E3 | 0x2483 | size: 0x1
.obj gap_03_00002483_rodata, global
.hidden gap_03_00002483_rodata
	.byte 0x00
.endobj gap_03_00002483_rodata

# .rodata:0x3E4 | 0x2484 | size: 0x1
.obj zero_tou2_0000bbc4, local
	.byte 0x00
.endobj zero_tou2_0000bbc4

# .rodata:0x3E5 | 0x2485 | size: 0x3
.obj gap_03_00002485_rodata, global
.hidden gap_03_00002485_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002485_rodata

# .rodata:0x3E8 | 0x2488 | size: 0xC
.obj str_kemuri_test_tou2_0000bbc8, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0000bbc8

# .rodata:0x3F4 | 0x2494 | size: 0x4
.obj str_A_4_tou2_0000bbd4, local
	.string "A_4"
.endobj str_A_4_tou2_0000bbd4

# .rodata:0x3F8 | 0x2498 | size: 0x1D
.obj str_SFX_BOSS_BLED_SHAKE__tou2_0000bbd8, local
	.string "SFX_BOSS_BLED_SHAKE_CAILING1"
.endobj str_SFX_BOSS_BLED_SHAKE__tou2_0000bbd8

# .rodata:0x415 | 0x24B5 | size: 0x3
.obj gap_03_000024B5_rodata, global
.hidden gap_03_000024B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024B5_rodata

# .rodata:0x418 | 0x24B8 | size: 0x13
.obj str_SFX_BOSS_BLED_EAT1_tou2_0000bbf8, local
	.string "SFX_BOSS_BLED_EAT1"
.endobj str_SFX_BOSS_BLED_EAT1_tou2_0000bbf8

# .rodata:0x42B | 0x24CB | size: 0x1
.obj gap_03_000024CB_rodata, global
.hidden gap_03_000024CB_rodata
	.byte 0x00
.endobj gap_03_000024CB_rodata

# .rodata:0x42C | 0x24CC | size: 0x4
.obj str_B_2_tou2_0000bc0c, local
	.string "B_2"
.endobj str_B_2_tou2_0000bc0c

# .rodata:0x430 | 0x24D0 | size: 0x4
.obj str_E_2_tou2_0000bc10, local
	.string "E_2"
.endobj str_E_2_tou2_0000bc10

# .rodata:0x434 | 0x24D4 | size: 0x9
.obj str_recovery_tou2_0000bc14, local
	.string "recovery"
.endobj str_recovery_tou2_0000bc14

# .rodata:0x43D | 0x24DD | size: 0x3
.obj gap_03_000024DD_rodata, global
.hidden gap_03_000024DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024DD_rodata

# .rodata:0x440 | 0x24E0 | size: 0x8
.obj str_if_body_tou2_0000bc20, local
	.string "if_body"
.endobj str_if_body_tou2_0000bc20

# .rodata:0x448 | 0x24E8 | size: 0x8
.obj str_if_wire_tou2_0000bc28, local
	.string "if_wire"
.endobj str_if_wire_tou2_0000bc28

# .rodata:0x450 | 0x24F0 | size: 0x4
.obj float_250_tou2_0000bc30, local
	.float 250
.endobj float_250_tou2_0000bc30

# .rodata:0x454 | 0x24F4 | size: 0x4
.obj float_130_tou2_0000bc34, local
	.float 130
.endobj float_130_tou2_0000bc34

# 0x000127B0..0x00016558 | size: 0x3DA8
.data
.balign 8

# .data:0x0 | 0x127B0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x127B8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x127BC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x127C0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x127C4 | size: 0x4
.obj gap_04_000127C4_data, global
.hidden gap_04_000127C4_data
	.4byte 0x00000000
.endobj gap_04_000127C4_data

# .data:0x18 | 0x127C8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x127D0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x127D4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x127D8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x127E0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x127E4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x127E8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x127EC | size: 0x4
.obj gap_04_000127EC_data, global
.hidden gap_04_000127EC_data
	.4byte 0x00000000
.endobj gap_04_000127EC_data

# .data:0x40 | 0x127F0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x127F8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x127FC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x12800 | size: 0xC4
.obj unit_boss_champion_26_data_12800, global
	.4byte 0x00000040
	.4byte str_btl_un_champion_tou2_0000b7e0
	.4byte 0x00280000
	.4byte 0x01012200
	.4byte 0x00640032
	.4byte 0x00070032
	.4byte 0x00400003
	.4byte 0x00400000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x42100000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x42400000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x42800000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_BLED_DAMAGE_tou2_0000b7f0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000b808
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000b820
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000b834
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_champion_26_data_12800

# .data:0x114 | 0x128C4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x128C9 | size: 0x3
.obj gap_04_000128C9_data, global
.hidden gap_04_000128C9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000128C9_data

# .data:0x11C | 0x128CC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x128D1 | size: 0x3
.obj gap_04_000128D1_data, global
.hidden gap_04_000128D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000128D1_data

# .data:0x124 | 0x128D4 | size: 0x16
.obj regist, local
	.4byte 0x3C323C64
	.4byte 0x3C646428
	.4byte 0x00556455
	.4byte 0x645A3C00
	.4byte 0x00644664
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x128EA | size: 0x2
.obj gap_04_000128EA_data, global
.hidden gap_04_000128EA_data
	.2byte 0x0000
.endobj gap_04_000128EA_data

# .data:0x13C | 0x128EC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_0000b850
	.4byte 0x00000002
	.4byte str_Y_1_tou2_0000b854
	.4byte 0x00000009
	.4byte str_Y_1_tou2_0000b854
	.4byte 0x00000005
	.4byte str_K_1_tou2_0000b858
	.4byte 0x00000004
	.4byte str_X_1_tou2_0000b85c
	.4byte 0x00000003
	.4byte str_K_1_tou2_0000b858
	.4byte 0x0000001C
	.4byte str_S_1_tou2_0000b860
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_0000b864
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_0000b864
	.4byte 0x0000001F
	.4byte str_D_1_tou2_0000b868
	.4byte 0x00000027
	.4byte str_D_1_tou2_0000b868
	.4byte 0x00000032
	.4byte str_Z_6_tou2_0000b86c
	.4byte 0x0000002A
	.4byte str_R_1_tou2_0000b870
	.4byte 0x00000028
	.4byte str_W_1_tou2_0000b874
	.4byte 0x00000038
	.4byte str_X_1_tou2_0000b85c
	.4byte 0x00000039
	.4byte str_X_1_tou2_0000b85c
	.4byte 0x00000041
	.4byte str_T_1_tou2_0000b878
	.4byte 0x00000045
	.4byte str_S_1_tou2_0000b860
.endobj pose_table

# .data:0x1CC | 0x1297C | size: 0x90
.obj pose_table_roof, local
	.4byte 0x00000001
	.4byte str_N_2_tou2_0000b87c
	.4byte 0x00000002
	.4byte str_Y_2_tou2_0000b880
	.4byte 0x00000009
	.4byte str_Y_2_tou2_0000b880
	.4byte 0x00000005
	.4byte str_K_2_tou2_0000b884
	.4byte 0x00000004
	.4byte str_X_2_tou2_0000b888
	.4byte 0x00000003
	.4byte str_K_2_tou2_0000b884
	.4byte 0x0000001C
	.4byte str_S_8_tou2_0000b88c
	.4byte 0x0000001D
	.4byte str_Q_2_tou2_0000b890
	.4byte 0x0000001E
	.4byte str_Q_2_tou2_0000b890
	.4byte 0x0000001F
	.4byte str_D_2_tou2_0000b894
	.4byte 0x00000027
	.4byte str_D_2_tou2_0000b894
	.4byte 0x00000032
	.4byte str_Z_8_tou2_0000b898
	.4byte 0x0000002A
	.4byte str_W_2_tou2_0000b89c
	.4byte 0x00000028
	.4byte str_W_2_tou2_0000b89c
	.4byte 0x00000038
	.4byte str_X_2_tou2_0000b888
	.4byte 0x00000039
	.4byte str_X_2_tou2_0000b888
	.4byte 0x00000041
	.4byte str_T_8_tou2_0000b8a0
	.4byte 0x00000045
	.4byte str_S_8_tou2_0000b88c
.endobj pose_table_roof

# .data:0x25C | 0x12A0C | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x26C | 0x12A1C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_champion_tou2_0000b7e0
	.4byte str_c_bred_h_tou2_0000b8a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x425C0000
	.4byte 0x00000000
	.4byte 0x00230046
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2B8 | 0x12A68 | size: 0xC0
.obj weapon_champion_drop_kick_attack, local
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
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_champion_drop_kick_attack

# .data:0x378 | 0x12B28 | size: 0xC0
.obj weapon_champion_screw_attack, local
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
	.4byte 0x02101260
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_champion_screw_attack

# .data:0x438 | 0x12BE8 | size: 0xC0
.obj weapon_champion_flying_chop_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_champion_flying_chop_attack

# .data:0x4F8 | 0x12CA8 | size: 0xC0
.obj weapon_champion_foot_stamp_attack, local
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_champion_foot_stamp_attack

# .data:0x5B8 | 0x12D68 | size: 0xC0
.obj weapon_champion_healing, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
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
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000000
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
.endobj weapon_champion_healing

# .data:0x678 | 0x12E28 | size: 0xC0
.obj weapon_champion_roof_shake_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
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
.endobj weapon_champion_roof_shake_attack

# .data:0x738 | 0x12EE8 | size: 0xC0
.obj weapon_champion_roof_shake_last_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x001B0302
	.4byte 0x00000000
	.4byte 0x00020087
	.4byte 0x000007FF
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
	.4byte 0x00191964
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_champion_roof_shake_last_attack

# .data:0x7F8 | 0x12FA8 | size: 0x19C
.obj to_ceiling, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1D_tou2_0000b8c4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_8_tou2_0000b88c
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_JUMP1_tou2_0000b8cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_GRASP__tou2_0000b8e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_roof
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000030
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetCutBaseOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFDA
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFD4
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj to_ceiling

# .data:0x994 | 0x13144 | size: 0x17C
.obj to_floor, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_2_tou2_0000b894
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000030
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetCutBaseOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj to_floor

# .data:0xB10 | 0x132C0 | size: 0xD0
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
	.4byte 0x0001005B
	.4byte init_ceil
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_MOVE1L_tou2_0000b918
	.4byte str_SFX_BOSS_BLED_MOVE1R_tou2_0000b930
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_MOVE1L_tou2_0000b918
	.4byte str_SFX_BOSS_BLED_MOVE1R_tou2_0000b930
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xBE0 | 0x13390 | size: 0x588
.obj entry_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x00020018
	.4byte 0xF8406551
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_6_tou2_0000b948
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_6_tou2_0000b94c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_S_6_tou2_0000b948
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00020032
	.4byte 0xF8406551
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF9A
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_432_tou2_0000b950
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000051
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0x00000051
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_433_tou2_0000b960
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_434_tou2_0000b970
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000051
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0x00000051
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_435_tou2_0000b980
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF91
	.4byte 0x00000043
	.4byte 0x00000113
	.4byte 0xFFFFFF91
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_435_01_tou2_0000b990
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000004A
	.4byte 0x00000043
	.4byte 0x00000113
	.4byte 0x0000004A
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_435_02_tou2_0000b9a0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000020
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_0000b860
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF9A
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_436_tou2_0000b9b0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000051
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0x00000051
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_436_01_tou2_0000b9c0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF8406552
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_チャンピオン_再挑戦_tou2_0000b9d0
	.4byte 0x00010073
	.4byte 0xF8406553
	.4byte 0x00020018
	.4byte 0xF8406547
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_0000b860
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF9A
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_re_116_tou2_0000b9e8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000051
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0x00000051
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_re_123_tou2_0000b9f8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000020
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_0000b860
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF9A
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_re_124_tou2_0000ba08
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000051
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0x00000051
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_re_131_tou2_0000ba18
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_0000b860
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x1168 | 0x13918 | size: 0x12C
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x00000017
	.4byte 0x0001002B
	.4byte 0x00000018
	.4byte 0x0001002B
	.4byte 0x00000019
	.4byte 0x0001002B
	.4byte 0x0000001A
	.4byte 0x0001002B
	.4byte 0x0000001B
	.4byte 0x0003005B
	.4byte btlevtcmd_GetTotalDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte to_floor
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x1294 | 0x13A44 | size: 0x20
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte to_floor
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x12B4 | 0x13A64 | size: 0x168
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte to_floor
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_3_tou2_0000ba28
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_BLED_DIE1_tou2_0000ba2c
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000051
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0x00000051
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_10_tou2_0000ba40
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_S_10_tou2_0000ba48
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_436_06_tou2_0000ba50
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x141C | 0x13BCC | size: 0x708
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
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000043
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00010073
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406552
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406552
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x0000004E
	.4byte 0x00000142
	.4byte 0x00000049
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_436_02_tou2_0000ba60
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x0000004E
	.4byte 0x00000142
	.4byte 0x00000049
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_2_tou2_0000ba70
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x00000052
	.4byte 0x0000017B
	.4byte 0x00000049
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_2_tou2_0000ba74
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_S_2_tou2_0000ba70
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_436_03_tou2_0000ba78
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000022
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00010073
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x00020018
	.4byte 0xF8406553
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406553
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x0000004E
	.4byte 0x00000142
	.4byte 0x00000049
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_436_04_tou2_0000ba88
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_tou2_0000ba98
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3C_tou2_0000baa0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_JUMP1_tou2_0000b8cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000000D
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_tou2_0000ba98
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_BLED_MOVE_C_tou2_0000baa8
	.4byte 0xFE363C8F
	.4byte 0x0001005B
	.4byte down_ceil
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte ceil_fall_ready_event
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00010073
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x00020018
	.4byte 0xF8406554
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406554
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x0000004E
	.4byte 0x00000142
	.4byte 0x00000049
	.4byte 0x00000039
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000049
	.4byte 0x0000008A
	.4byte 0x00000142
	.4byte 0x00000049
	.4byte 0x00000075
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_436_05_tou2_0000bac4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1B24 | 0x142D4 | size: 0x374
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
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_drop_kick_attack
	.4byte 0x0001005E
	.4byte drop_kick_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_screw_attack
	.4byte 0x0001005E
	.4byte screw_attack_event
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_flying_chop_attack
	.4byte 0x0001005E
	.4byte flying_chop_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00000014
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_drop_kick_attack
	.4byte 0x0001005E
	.4byte drop_kick_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_screw_attack
	.4byte 0x0001005E
	.4byte screw_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_flying_chop_attack
	.4byte 0x0001005E
	.4byte flying_chop_attack_event
	.4byte 0x00000031
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte to_ceiling
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_roof_shake_attack
	.4byte 0x0001005E
	.4byte roof_shake_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte check_ceil
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x00000014
	.4byte 0xFE363C82
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_drop_kick_attack
	.4byte 0x0001005E
	.4byte drop_kick_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_screw_attack
	.4byte 0x0001005E
	.4byte screw_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_flying_chop_attack
	.4byte 0x0001005E
	.4byte flying_chop_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte to_ceiling
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_roof_shake_attack
	.4byte 0x0001005E
	.4byte roof_shake_attack_event
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_foot_stamp_attack
	.4byte 0x0001005E
	.4byte foot_stamp_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_healing
	.4byte 0x0001005E
	.4byte healing_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_champion_roof_shake_attack
	.4byte 0x0001005E
	.4byte roof_shake_attack_event
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1E98 | 0x14648 | size: 0x4AC
.obj drop_kick_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte str_R_1_tou2_0000b870
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
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
	.4byte str_A_2A_tou2_0000bad4
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7A8A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_DROP_K_tou2_0000badc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_tou2_0000baf8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_CHOP_R_tou2_0000bb00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000bb1c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8680
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1C_tou2_0000bb24
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj drop_kick_attack_event

# .data:0x2344 | 0x14AF4 | size: 0x49C
.obj screw_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1F_tou2_0000bb2c
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8E80
	.4byte 0xF24A7C19
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_CHOP_R_tou2_0000bb00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00010004
	.4byte 0x00000062
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
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8080
	.4byte 0xF24A7D4C
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
	.4byte 0x00000062
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_CHOP_R_tou2_0000bb00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000bb1c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8680
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1C_tou2_0000bb24
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj screw_attack_event

# .data:0x27E0 | 0x14F90 | size: 0x518
.obj flying_chop_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000bb1c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B19
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000052
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000050
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000008C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_CHOP_R_tou2_0000bb00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_CHOP_L_tou2_0000bb34
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_tou2_0000bb50
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_tou2_0000bb58
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24AA280
	.4byte 0xF24A7A8A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_CHOP_F_tou2_0000bb60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_tou2_0000bb78
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x00000096
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
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000bb1c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8680
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1C_tou2_0000bb24
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj flying_chop_attack_event

# .data:0x2CF8 | 0x154A8 | size: 0x74C
.obj foot_stamp_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_W_2_tou2_0000b89c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8280
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
	.4byte str_B_1_tou2_0000bb80
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_tou2_0000bb84
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_FUMI_F_tou2_0000bb8c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000030
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetCutBaseOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_FUMI_S_tou2_0000bba8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_tou2_0000ba98
	.4byte 0x0001000A
	.4byte 0x0000012C
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
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_tou2_0000ba98
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3C_tou2_0000baa0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_FUMI_S_tou2_0000bba8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_tou2_0000ba98
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3C_tou2_0000baa0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000023
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_FUMI_S_tou2_0000bba8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_tou2_0000ba98
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000bbc4
	.4byte str_kemuri_test_tou2_0000bbc8
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
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000bb1c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8680
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b8bc
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1C_tou2_0000bb24
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_LANDIN_tou2_0000b900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj foot_stamp_attack_event

# .data:0x3444 | 0x15BF4 | size: 0x344
.obj healing_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4_tou2_0000bbd4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_SHAKE__tou2_0000bbd8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000012
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0xFFFFFFE2
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000050
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_BtlIconEntryItemId
	.4byte 0x00000094
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFC2
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_BtlIconSetPosition
	.4byte 0xFE363C88
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_BtlIconDelete
	.4byte 0xFE363C88
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_8_tou2_0000b88c
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_EAT1_tou2_0000bbf8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_2_tou2_0000bc0c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_2_tou2_0000bc10
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000bbc4
	.4byte str_recovery_tou2_0000bc14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj healing_event

# .data:0x3788 | 0x15F38 | size: 0x608
.obj roof_shake_attack_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8D
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4_tou2_0000bbd4
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_BLED_SHAKE__tou2_0000bbd8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x000B005B
	.4byte unk_tou2_000027f8
	.4byte 0xFE363C8E
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000003C
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x000B005B
	.4byte unk_tou2_000027f8
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000003C
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x000B005B
	.4byte unk_tou2_000027f8
	.4byte 0xFE363C8E
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000003C
	.4byte 0x00000031
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte unk_tou2_000027b0
	.4byte 0xFE363C8E
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
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte unk_tou2_000027b0
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte unk_tou2_000027b0
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x0000002A
	.4byte 0x0002005B
	.4byte unk_tou2_000027b0
	.4byte 0xFE363C8E
	.4byte 0x00000031
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8D
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x0000005C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000005D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8D
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C8F
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPartsWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000005C
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x00010004
	.4byte 0x0000005D
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetGuardKouraId
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte weapon_champion_roof_shake_last_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte weapon_champion_roof_shake_last_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFC
	.4byte 0x00000001
	.4byte weapon_champion_roof_shake_last_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj roof_shake_attack_event

# .data:0x3D90 | 0x16540 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
