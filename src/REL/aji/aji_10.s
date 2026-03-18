.include "macros.inc"
.file "aji_10.o"

# 0x00002664..0x00002E7C | size: 0x818
.text
.balign 4

# .text:0x0 | 0x2664 | size: 0x38
.fn peach_evt_toumei, local
/* 00002664 00002728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002668 0000272C  7C 08 02 A6 */	mflr r0
/* 0000266C 00002730  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002670 00002734  48 00 3B CD */	bl marioGetPtr
/* 00002674 00002738  3C 80 00 00 */	lis r4, zero_aji_00013c3c@ha
/* 00002678 0000273C  C0 04 00 00 */	lfs f0, zero_aji_00013c3c@l(r4)
/* 0000267C 00002740  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 00002680 00002744  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 00002684 00002748  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 00002688 0000274C  38 60 00 02 */	li r3, 0x2
/* 0000268C 00002750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002690 00002754  7C 08 03 A6 */	mtlr r0
/* 00002694 00002758  38 21 00 10 */	addi r1, r1, 0x10
/* 00002698 0000275C  4E 80 00 20 */	blr
.endfn peach_evt_toumei

# .text:0x38 | 0x269C | size: 0xEC
.fn viewport, local
/* 0000269C 00002760  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000026A0 00002764  7C 08 02 A6 */	mflr r0
/* 000026A4 00002768  90 01 00 54 */	stw r0, 0x54(r1)
/* 000026A8 0000276C  39 61 00 50 */	addi r11, r1, 0x50
/* 000026AC 00002770  48 00 3B 91 */	bl _savefpr_28
/* 000026B0 00002774  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 000026B4 00002778  7C 7E 1B 78 */	mr r30, r3
/* 000026B8 0000277C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000026BC 00002780  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000026C0 00002784  48 00 3B 7D */	bl evtGetFloat
/* 000026C4 00002788  FF 80 08 90 */	fmr f28, f1
/* 000026C8 0000278C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000026CC 00002790  7F C3 F3 78 */	mr r3, r30
/* 000026D0 00002794  48 00 3B 6D */	bl evtGetFloat
/* 000026D4 00002798  FF A0 08 90 */	fmr f29, f1
/* 000026D8 0000279C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000026DC 000027A0  7F C3 F3 78 */	mr r3, r30
/* 000026E0 000027A4  48 00 3B 5D */	bl evtGetFloat
/* 000026E4 000027A8  FF C0 08 90 */	fmr f30, f1
/* 000026E8 000027AC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000026EC 000027B0  7F C3 F3 78 */	mr r3, r30
/* 000026F0 000027B4  48 00 3B 4D */	bl evtGetFloat
/* 000026F4 000027B8  FF E0 08 90 */	fmr f31, f1
/* 000026F8 000027BC  38 60 00 04 */	li r3, 0x4
/* 000026FC 000027C0  48 00 3B 41 */	bl camGetPtr
/* 00002700 000027C4  FC 00 E0 1E */	fctiwz f0, f28
/* 00002704 000027C8  D3 83 00 FC */	stfs f28, 0xfc(r3)
/* 00002708 000027CC  FC 40 E8 1E */	fctiwz f2, f29
/* 0000270C 000027D0  FC 20 F0 1E */	fctiwz f1, f30
/* 00002710 000027D4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002714 000027D8  FC 00 F8 1E */	fctiwz f0, f31
/* 00002718 000027DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0000271C 000027E0  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 00002720 000027E4  B0 03 00 F4 */	sth r0, 0xf4(r3)
/* 00002724 000027E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002728 000027EC  D3 A3 01 00 */	stfs f29, 0x100(r3)
/* 0000272C 000027F0  B0 03 00 F6 */	sth r0, 0xf6(r3)
/* 00002730 000027F4  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 00002734 000027F8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 00002738 000027FC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 0000273C 00002800  D3 C3 01 04 */	stfs f30, 0x104(r3)
/* 00002740 00002804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002744 00002808  B0 83 00 F8 */	sth r4, 0xf8(r3)
/* 00002748 0000280C  D3 E3 01 08 */	stfs f31, 0x108(r3)
/* 0000274C 00002810  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 00002750 00002814  38 60 00 08 */	li r3, 0x8
/* 00002754 00002818  48 00 3A E9 */	bl camGetPtr
/* 00002758 0000281C  D3 83 00 FC */	stfs f28, 0xfc(r3)
/* 0000275C 00002820  D3 A3 01 00 */	stfs f29, 0x100(r3)
/* 00002760 00002824  D3 C3 01 04 */	stfs f30, 0x104(r3)
/* 00002764 00002828  D3 E3 01 08 */	stfs f31, 0x108(r3)
/* 00002768 0000282C  38 60 00 02 */	li r3, 0x2
/* 0000276C 00002830  39 61 00 50 */	addi r11, r1, 0x50
/* 00002770 00002834  48 00 3A CD */	bl _restfpr_28
/* 00002774 00002838  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00002778 0000283C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 0000277C 00002840  7C 08 03 A6 */	mtlr r0
/* 00002780 00002844  38 21 00 50 */	addi r1, r1, 0x50
/* 00002784 00002848  4E 80 00 20 */	blr
.endfn viewport

# .text:0x124 | 0x2788 | size: 0x44
.fn peach_set_pose, local
/* 00002788 0000284C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000278C 00002850  7C 08 02 A6 */	mflr r0
/* 00002790 00002854  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002794 00002858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00002798 0000285C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000279C 00002860  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000027A0 00002864  48 00 3A 9D */	bl evtGetValue
/* 000027A4 00002868  7C 7F 1B 78 */	mr r31, r3
/* 000027A8 0000286C  48 00 3A 95 */	bl marioGetPtr
/* 000027AC 00002870  7F E3 FB 78 */	mr r3, r31
/* 000027B0 00002874  48 00 3A 8D */	bl marioChgPose
/* 000027B4 00002878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000027B8 0000287C  38 60 00 02 */	li r3, 0x2
/* 000027BC 00002880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000027C0 00002884  7C 08 03 A6 */	mtlr r0
/* 000027C4 00002888  38 21 00 10 */	addi r1, r1, 0x10
/* 000027C8 0000288C  4E 80 00 20 */	blr
.endfn peach_set_pose

# .text:0x168 | 0x27CC | size: 0x238
.fn monitor_cap_tev, local
/* 000027CC 00002890  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 000027D0 00002894  7C 08 02 A6 */	mflr r0
/* 000027D4 00002898  3C 80 00 00 */	lis r4, monitor_wp@ha
/* 000027D8 0000289C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 000027DC 000028A0  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 000027E0 000028A4  7C 7F 1B 78 */	mr r31, r3
/* 000027E4 000028A8  38 64 00 00 */	addi r3, r4, monitor_wp@l
/* 000027E8 000028AC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000027EC 000028B0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000027F0 000028B4  2C 00 00 00 */	cmpwi r0, 0x0
/* 000027F4 000028B8  41 82 01 FC */	beq .L_000029F0
/* 000027F8 000028BC  80 83 00 00 */	lwz r4, 0x0(r3)
/* 000027FC 000028C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 00002800 000028C4  38 A0 01 30 */	li r5, 0x130
/* 00002804 000028C8  38 C0 00 F0 */	li r6, 0xf0
/* 00002808 000028CC  38 E0 00 04 */	li r7, 0x4
/* 0000280C 000028D0  39 00 00 00 */	li r8, 0x0
/* 00002810 000028D4  39 20 00 00 */	li r9, 0x0
/* 00002814 000028D8  39 40 00 00 */	li r10, 0x0
/* 00002818 000028DC  48 00 3A 25 */	bl GXInitTexObj
/* 0000281C 000028E0  3C 80 00 00 */	lis r4, zero_aji_00013c3c@ha
/* 00002820 000028E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 00002824 000028E8  38 A4 00 00 */	addi r5, r4, zero_aji_00013c3c@l
/* 00002828 000028EC  38 80 00 00 */	li r4, 0x0
/* 0000282C 000028F0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002830 000028F4  38 A0 00 00 */	li r5, 0x0
/* 00002834 000028F8  38 C0 00 00 */	li r6, 0x0
/* 00002838 000028FC  38 E0 00 00 */	li r7, 0x0
/* 0000283C 00002900  FC 40 08 90 */	fmr f2, f1
/* 00002840 00002904  39 00 00 00 */	li r8, 0x0
/* 00002844 00002908  FC 60 08 90 */	fmr f3, f1
/* 00002848 0000290C  48 00 39 F5 */	bl GXInitTexObjLOD
/* 0000284C 00002910  38 61 00 2C */	addi r3, r1, 0x2c
/* 00002850 00002914  38 80 00 00 */	li r4, 0x0
/* 00002854 00002918  48 00 39 E9 */	bl GXLoadTexObj
/* 00002858 0000291C  38 60 00 00 */	li r3, 0x0
/* 0000285C 00002920  38 80 00 00 */	li r4, 0x0
/* 00002860 00002924  38 A0 00 00 */	li r5, 0x0
/* 00002864 00002928  38 C0 00 04 */	li r6, 0x4
/* 00002868 0000292C  48 00 39 D5 */	bl GXSetTevOrder
/* 0000286C 00002930  38 60 00 00 */	li r3, 0x0
/* 00002870 00002934  38 80 00 00 */	li r4, 0x0
/* 00002874 00002938  38 A0 00 00 */	li r5, 0x0
/* 00002878 0000293C  38 C0 00 00 */	li r6, 0x0
/* 0000287C 00002940  38 E0 00 01 */	li r7, 0x1
/* 00002880 00002944  39 00 00 00 */	li r8, 0x0
/* 00002884 00002948  48 00 39 B9 */	bl GXSetTevColorOp
/* 00002888 0000294C  38 60 00 00 */	li r3, 0x0
/* 0000288C 00002950  38 80 00 00 */	li r4, 0x0
/* 00002890 00002954  38 A0 00 00 */	li r5, 0x0
/* 00002894 00002958  38 C0 00 00 */	li r6, 0x0
/* 00002898 0000295C  38 E0 00 01 */	li r7, 0x1
/* 0000289C 00002960  39 00 00 00 */	li r8, 0x0
/* 000028A0 00002964  48 00 39 9D */	bl GXSetTevAlphaOp
/* 000028A4 00002968  38 60 00 00 */	li r3, 0x0
/* 000028A8 0000296C  38 80 00 0F */	li r4, 0xf
/* 000028AC 00002970  38 A0 00 0D */	li r5, 0xd
/* 000028B0 00002974  38 C0 00 0A */	li r6, 0xa
/* 000028B4 00002978  38 E0 00 08 */	li r7, 0x8
/* 000028B8 0000297C  48 00 39 85 */	bl GXSetTevColorIn
/* 000028BC 00002980  38 60 00 00 */	li r3, 0x0
/* 000028C0 00002984  38 80 00 07 */	li r4, 0x7
/* 000028C4 00002988  38 A0 00 07 */	li r5, 0x7
/* 000028C8 0000298C  38 C0 00 07 */	li r6, 0x7
/* 000028CC 00002990  38 E0 00 05 */	li r7, 0x5
/* 000028D0 00002994  48 00 39 6D */	bl GXSetTevAlphaIn
/* 000028D4 00002998  3C 60 00 00 */	lis r3, str_monitor_1_aji_000133e8@ha
/* 000028D8 0000299C  38 81 00 14 */	addi r4, r1, 0x14
/* 000028DC 000029A0  38 63 00 00 */	addi r3, r3, str_monitor_1_aji_000133e8@l
/* 000028E0 000029A4  48 00 39 5D */	bl mapObjGetPos
/* 000028E4 000029A8  3C 60 00 00 */	lis r3, float_70_aji_00013c40@ha
/* 000028E8 000029AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000028EC 000029B0  38 A3 00 00 */	addi r5, r3, float_70_aji_00013c40@l
/* 000028F0 000029B4  81 41 00 14 */	lwz r10, 0x14(r1)
/* 000028F4 000029B8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 000028F8 000029BC  3C 60 00 00 */	lis r3, float_600_aji_00013c44@ha
/* 000028FC 000029C0  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00002900 000029C4  38 83 00 00 */	addi r4, r3, float_600_aji_00013c44@l
/* 00002904 000029C8  90 01 00 28 */	stw r0, 0x28(r1)
/* 00002908 000029CC  3C 60 00 00 */	lis r3, float_0p5_aji_00013c50@ha
/* 0000290C 000029D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 00002910 000029D4  C0 63 00 00 */	lfs f3, float_0p5_aji_00013c50@l(r3)
/* 00002914 000029D8  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00002918 000029DC  3C 60 00 00 */	lis r3, vec3_aji_0001338c@ha
/* 0000291C 000029E0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 00002920 000029E4  39 03 00 00 */	addi r8, r3, vec3_aji_0001338c@l
/* 00002924 000029E8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 00002928 000029EC  EC 01 00 2A */	fadds f0, f1, f0
/* 0000292C 000029F0  3C 80 00 00 */	lis r4, float_25_aji_00013c48@ha
/* 00002930 000029F4  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00002934 000029F8  81 21 00 18 */	lwz r9, 0x18(r1)
/* 00002938 000029FC  38 A4 00 00 */	addi r5, r4, float_25_aji_00013c48@l
/* 0000293C 00002A00  3C 60 00 00 */	lis r3, float_1p2667_aji_00013c4c@ha
/* 00002940 00002A04  38 83 00 00 */	addi r4, r3, float_1p2667_aji_00013c4c@l
/* 00002944 00002A08  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 00002948 00002A0C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 0000294C 00002A10  FC 80 18 90 */	fmr f4, f3
/* 00002950 00002A14  FC A0 18 90 */	fmr f5, f3
/* 00002954 00002A18  91 41 00 20 */	stw r10, 0x20(r1)
/* 00002958 00002A1C  FC C0 18 90 */	fmr f6, f3
/* 0000295C 00002A20  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002960 00002A24  91 21 00 24 */	stw r9, 0x24(r1)
/* 00002964 00002A28  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00002968 00002A2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 0000296C 00002A30  38 61 00 7C */	addi r3, r1, 0x7c
/* 00002970 00002A34  90 E1 00 08 */	stw r7, 0x8(r1)
/* 00002974 00002A38  90 C1 00 0C */	stw r6, 0xc(r1)
/* 00002978 00002A3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000297C 00002A40  48 00 38 C1 */	bl C_MTXLightPerspective
/* 00002980 00002A44  38 61 00 4C */	addi r3, r1, 0x4c
/* 00002984 00002A48  38 81 00 20 */	addi r4, r1, 0x20
/* 00002988 00002A4C  38 A1 00 08 */	addi r5, r1, 0x8
/* 0000298C 00002A50  38 C1 00 14 */	addi r6, r1, 0x14
/* 00002990 00002A54  48 00 38 AD */	bl C_MTXLookAt
/* 00002994 00002A58  38 61 00 7C */	addi r3, r1, 0x7c
/* 00002998 00002A5C  38 81 00 4C */	addi r4, r1, 0x4c
/* 0000299C 00002A60  7C 65 1B 78 */	mr r5, r3
/* 000029A0 00002A64  48 00 38 9D */	bl PSMTXConcat
/* 000029A4 00002A68  38 61 00 7C */	addi r3, r1, 0x7c
/* 000029A8 00002A6C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000029AC 00002A70  7C 65 1B 78 */	mr r5, r3
/* 000029B0 00002A74  48 00 38 8D */	bl PSMTXConcat
/* 000029B4 00002A78  38 61 00 7C */	addi r3, r1, 0x7c
/* 000029B8 00002A7C  38 80 00 1E */	li r4, 0x1e
/* 000029BC 00002A80  38 A0 00 00 */	li r5, 0x0
/* 000029C0 00002A84  48 00 38 7D */	bl GXLoadTexMtxImm
/* 000029C4 00002A88  38 60 00 00 */	li r3, 0x0
/* 000029C8 00002A8C  38 80 00 00 */	li r4, 0x0
/* 000029CC 00002A90  38 A0 00 00 */	li r5, 0x0
/* 000029D0 00002A94  38 C0 00 1E */	li r6, 0x1e
/* 000029D4 00002A98  38 E0 00 00 */	li r7, 0x0
/* 000029D8 00002A9C  39 00 00 7D */	li r8, 0x7d
/* 000029DC 00002AA0  48 00 38 61 */	bl GXSetTexCoordGen2
/* 000029E0 00002AA4  38 00 00 01 */	li r0, 0x1
/* 000029E4 00002AA8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 000029E8 00002AAC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 000029EC 00002AB0  90 1F 00 10 */	stw r0, 0x10(r31)
.L_000029F0:
/* 000029F0 00002AB4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 000029F4 00002AB8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 000029F8 00002ABC  7C 08 03 A6 */	mtlr r0
/* 000029FC 00002AC0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 00002A00 00002AC4  4E 80 00 20 */	blr
.endfn monitor_cap_tev

# .text:0x3A0 | 0x2A04 | size: 0x44
.fn monitor_cap_evt, local
/* 00002A04 00002AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002A08 00002ACC  7C 08 02 A6 */	mflr r0
/* 00002A0C 00002AD0  3C 60 00 00 */	lis r3, float_1000_aji_00013c54@ha
/* 00002A10 00002AD4  3C 80 00 00 */	lis r4, monitor_cap_capture@ha
/* 00002A14 00002AD8  38 C3 00 00 */	addi r6, r3, float_1000_aji_00013c54@l
/* 00002A18 00002ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002A1C 00002AE0  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00002A20 00002AE4  38 A4 00 00 */	addi r5, r4, monitor_cap_capture@l
/* 00002A24 00002AE8  38 60 00 04 */	li r3, 0x4
/* 00002A28 00002AEC  38 80 00 00 */	li r4, 0x0
/* 00002A2C 00002AF0  38 C0 00 00 */	li r6, 0x0
/* 00002A30 00002AF4  48 00 38 0D */	bl dispEntry
/* 00002A34 00002AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002A38 00002AFC  38 60 00 00 */	li r3, 0x0
/* 00002A3C 00002B00  7C 08 03 A6 */	mtlr r0
/* 00002A40 00002B04  38 21 00 10 */	addi r1, r1, 0x10
/* 00002A44 00002B08  4E 80 00 20 */	blr
.endfn monitor_cap_evt

# .text:0x3E4 | 0x2A48 | size: 0x35C
.fn monitor_cap_capture, local
/* 00002A48 00002B0C  94 21 FC 50 */	stwu r1, -0x3b0(r1)
/* 00002A4C 00002B10  7C 08 02 A6 */	mflr r0
/* 00002A50 00002B14  90 01 03 B4 */	stw r0, 0x3b4(r1)
/* 00002A54 00002B18  BF 81 03 A0 */	stmw r28, 0x3a0(r1)
/* 00002A58 00002B1C  48 00 37 E5 */	bl camGetCurPtr
/* 00002A5C 00002B20  38 00 00 4C */	li r0, 0x4c
/* 00002A60 00002B24  38 A1 01 34 */	addi r5, r1, 0x134
/* 00002A64 00002B28  38 83 FF FC */	subi r4, r3, 0x4
/* 00002A68 00002B2C  7C 09 03 A6 */	mtctr r0
.L_00002A6C:
/* 00002A6C 00002B30  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00002A70 00002B34  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00002A74 00002B38  90 65 00 04 */	stw r3, 0x4(r5)
/* 00002A78 00002B3C  94 05 00 08 */	stwu r0, 0x8(r5)
/* 00002A7C 00002B40  42 00 FF F0 */	bdnz .L_00002A6C
/* 00002A80 00002B44  38 61 00 7C */	addi r3, r1, 0x7c
/* 00002A84 00002B48  48 00 37 B9 */	bl GXGetViewportv
/* 00002A88 00002B4C  38 61 00 60 */	addi r3, r1, 0x60
/* 00002A8C 00002B50  48 00 37 B1 */	bl GXGetProjectionv
/* 00002A90 00002B54  38 61 00 14 */	addi r3, r1, 0x14
/* 00002A94 00002B58  38 81 00 10 */	addi r4, r1, 0x10
/* 00002A98 00002B5C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00002A9C 00002B60  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002AA0 00002B64  48 00 37 9D */	bl GXGetScissor
/* 00002AA4 00002B68  3C 60 00 00 */	lis r3, zero_aji_00013c3c@ha
/* 00002AA8 00002B6C  3C A0 00 00 */	lis r5, float_608_aji_00013c58@ha
/* 00002AAC 00002B70  C0 23 00 00 */	lfs f1, zero_aji_00013c3c@l(r3)
/* 00002AB0 00002B74  3C 80 00 00 */	lis r4, float_480_aji_00013c5c@ha
/* 00002AB4 00002B78  3C 60 00 00 */	lis r3, float_1_aji_00013c60@ha
/* 00002AB8 00002B7C  C0 65 00 00 */	lfs f3, float_608_aji_00013c58@l(r5)
/* 00002ABC 00002B80  FC 40 08 90 */	fmr f2, f1
/* 00002AC0 00002B84  C0 84 00 00 */	lfs f4, float_480_aji_00013c5c@l(r4)
/* 00002AC4 00002B88  FC A0 08 90 */	fmr f5, f1
/* 00002AC8 00002B8C  C0 C3 00 00 */	lfs f6, float_1_aji_00013c60@l(r3)
/* 00002ACC 00002B90  48 00 37 71 */	bl GXSetViewport
/* 00002AD0 00002B94  38 60 00 01 */	li r3, 0x1
/* 00002AD4 00002B98  38 80 00 01 */	li r4, 0x1
/* 00002AD8 00002B9C  38 A0 02 5E */	li r5, 0x25e
/* 00002ADC 00002BA0  38 C0 01 DE */	li r6, 0x1de
/* 00002AE0 00002BA4  48 00 37 5D */	bl GXSetScissor
/* 00002AE4 00002BA8  3C C0 00 00 */	lis r6, float_60_aji_00013c64@ha
/* 00002AE8 00002BAC  3C A0 00 00 */	lis r5, float_1p2667_aji_00013c4c@ha
/* 00002AEC 00002BB0  3C 80 00 00 */	lis r4, float_1_aji_00013c60@ha
/* 00002AF0 00002BB4  3C 60 00 00 */	lis r3, float_1000_aji_00013c54@ha
/* 00002AF4 00002BB8  38 E6 00 00 */	addi r7, r6, float_60_aji_00013c64@l
/* 00002AF8 00002BBC  38 C5 00 00 */	addi r6, r5, float_1p2667_aji_00013c4c@l
/* 00002AFC 00002BC0  38 A4 00 00 */	addi r5, r4, float_1_aji_00013c60@l
/* 00002B00 00002BC4  38 83 00 00 */	addi r4, r3, float_1000_aji_00013c54@l
/* 00002B04 00002BC8  C0 27 00 00 */	lfs f1, 0x0(r7)
/* 00002B08 00002BCC  38 61 00 F4 */	addi r3, r1, 0xf4
/* 00002B0C 00002BD0  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 00002B10 00002BD4  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00002B14 00002BD8  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00002B18 00002BDC  48 00 37 25 */	bl C_MTXPerspective
/* 00002B1C 00002BE0  38 61 00 F4 */	addi r3, r1, 0xf4
/* 00002B20 00002BE4  38 80 00 00 */	li r4, 0x0
/* 00002B24 00002BE8  48 00 37 19 */	bl GXSetProjection
/* 00002B28 00002BEC  3C 60 00 00 */	lis r3, monitor_wp@ha
/* 00002B2C 00002BF0  38 63 00 00 */	addi r3, r3, monitor_wp@l
/* 00002B30 00002BF4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002B34 00002BF8  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00002B38 00002BFC  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002B3C 00002C00  41 82 00 88 */	beq .L_00002BC4
/* 00002B40 00002C04  3C 60 00 00 */	lis r3, str_カンブー_aji_00013404@ha
/* 00002B44 00002C08  38 63 00 00 */	addi r3, r3, str_カンブー_aji_00013404@l
/* 00002B48 00002C0C  48 00 36 F5 */	bl npcNameToPtr
/* 00002B4C 00002C10  3C 80 00 00 */	lis r4, vec3_aji_0001335c@ha
/* 00002B50 00002C14  3C A0 00 00 */	lis r5, vec3_aji_00013350@ha
/* 00002B54 00002C18  38 C4 00 00 */	addi r6, r4, vec3_aji_0001335c@l
/* 00002B58 00002C1C  85 85 00 00 */	lwzu r12, vec3_aji_00013350@l(r5)
/* 00002B5C 00002C20  3C 80 00 00 */	lis r4, vec3_aji_00013344@ha
/* 00002B60 00002C24  83 C6 00 00 */	lwz r30, 0x0(r6)
/* 00002B64 00002C28  39 24 00 00 */	addi r9, r4, vec3_aji_00013344@l
/* 00002B68 00002C2C  83 A6 00 04 */	lwz r29, 0x4(r6)
/* 00002B6C 00002C30  83 86 00 08 */	lwz r28, 0x8(r6)
/* 00002B70 00002C34  7C 7F 1B 78 */	mr r31, r3
/* 00002B74 00002C38  81 65 00 04 */	lwz r11, 0x4(r5)
/* 00002B78 00002C3C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 00002B7C 00002C40  81 45 00 08 */	lwz r10, 0x8(r5)
/* 00002B80 00002C44  38 81 00 54 */	addi r4, r1, 0x54
/* 00002B84 00002C48  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00002B88 00002C4C  38 A1 00 48 */	addi r5, r1, 0x48
/* 00002B8C 00002C50  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 00002B90 00002C54  38 C1 00 3C */	addi r6, r1, 0x3c
/* 00002B94 00002C58  80 09 00 08 */	lwz r0, 0x8(r9)
/* 00002B98 00002C5C  93 C1 00 3C */	stw r30, 0x3c(r1)
/* 00002B9C 00002C60  93 A1 00 40 */	stw r29, 0x40(r1)
/* 00002BA0 00002C64  93 81 00 44 */	stw r28, 0x44(r1)
/* 00002BA4 00002C68  91 81 00 48 */	stw r12, 0x48(r1)
/* 00002BA8 00002C6C  91 61 00 4C */	stw r11, 0x4c(r1)
/* 00002BAC 00002C70  91 41 00 50 */	stw r10, 0x50(r1)
/* 00002BB0 00002C74  91 01 00 54 */	stw r8, 0x54(r1)
/* 00002BB4 00002C78  90 E1 00 58 */	stw r7, 0x58(r1)
/* 00002BB8 00002C7C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 00002BBC 00002C80  48 00 36 81 */	bl C_MTXLookAt
/* 00002BC0 00002C84  48 00 00 84 */	b .L_00002C44
.L_00002BC4:
/* 00002BC4 00002C88  3C 60 00 00 */	lis r3, str_手下１_aji_000134f4@ha
/* 00002BC8 00002C8C  38 63 00 00 */	addi r3, r3, str_手下１_aji_000134f4@l
/* 00002BCC 00002C90  48 00 36 71 */	bl npcNameToPtr
/* 00002BD0 00002C94  3C 80 00 00 */	lis r4, vec3_aji_00013380@ha
/* 00002BD4 00002C98  3C A0 00 00 */	lis r5, vec3_aji_00013374@ha
/* 00002BD8 00002C9C  38 C4 00 00 */	addi r6, r4, vec3_aji_00013380@l
/* 00002BDC 00002CA0  85 85 00 00 */	lwzu r12, vec3_aji_00013374@l(r5)
/* 00002BE0 00002CA4  3C 80 00 00 */	lis r4, vec3_aji_00013368@ha
/* 00002BE4 00002CA8  83 86 00 00 */	lwz r28, 0x0(r6)
/* 00002BE8 00002CAC  39 24 00 00 */	addi r9, r4, vec3_aji_00013368@l
/* 00002BEC 00002CB0  83 A6 00 04 */	lwz r29, 0x4(r6)
/* 00002BF0 00002CB4  83 C6 00 08 */	lwz r30, 0x8(r6)
/* 00002BF4 00002CB8  7C 7F 1B 78 */	mr r31, r3
/* 00002BF8 00002CBC  81 65 00 04 */	lwz r11, 0x4(r5)
/* 00002BFC 00002CC0  38 61 00 C4 */	addi r3, r1, 0xc4
/* 00002C00 00002CC4  81 45 00 08 */	lwz r10, 0x8(r5)
/* 00002C04 00002CC8  38 81 00 30 */	addi r4, r1, 0x30
/* 00002C08 00002CCC  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00002C0C 00002CD0  38 A1 00 24 */	addi r5, r1, 0x24
/* 00002C10 00002CD4  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 00002C14 00002CD8  38 C1 00 18 */	addi r6, r1, 0x18
/* 00002C18 00002CDC  80 09 00 08 */	lwz r0, 0x8(r9)
/* 00002C1C 00002CE0  93 81 00 18 */	stw r28, 0x18(r1)
/* 00002C20 00002CE4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 00002C24 00002CE8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 00002C28 00002CEC  91 81 00 24 */	stw r12, 0x24(r1)
/* 00002C2C 00002CF0  91 61 00 28 */	stw r11, 0x28(r1)
/* 00002C30 00002CF4  91 41 00 2C */	stw r10, 0x2c(r1)
/* 00002C34 00002CF8  91 01 00 30 */	stw r8, 0x30(r1)
/* 00002C38 00002CFC  90 E1 00 34 */	stw r7, 0x34(r1)
/* 00002C3C 00002D00  90 01 00 38 */	stw r0, 0x38(r1)
/* 00002C40 00002D04  48 00 35 FD */	bl C_MTXLookAt
.L_00002C44:
/* 00002C44 00002D08  48 00 35 F9 */	bl camGetCurPtr
/* 00002C48 00002D0C  7C 64 1B 78 */	mr r4, r3
/* 00002C4C 00002D10  38 61 00 C4 */	addi r3, r1, 0xc4
/* 00002C50 00002D14  38 84 01 1C */	addi r4, r4, 0x11c
/* 00002C54 00002D18  48 00 35 E9 */	bl PSMTXCopy
/* 00002C58 00002D1C  38 61 00 94 */	addi r3, r1, 0x94
/* 00002C5C 00002D20  48 00 35 E1 */	bl PSMTXIdentity
/* 00002C60 00002D24  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002C64 00002D28  48 00 35 D9 */	bl animPosePeraOff
/* 00002C68 00002D2C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002C6C 00002D30  48 00 35 D1 */	bl animPoseMain
/* 00002C70 00002D34  3C 60 00 00 */	lis r3, zero_aji_00013c3c@ha
/* 00002C74 00002D38  3C 80 00 00 */	lis r4, float_1_aji_00013c60@ha
/* 00002C78 00002D3C  38 A3 00 00 */	addi r5, r3, zero_aji_00013c3c@l
/* 00002C7C 00002D40  C0 44 00 00 */	lfs f2, float_1_aji_00013c60@l(r4)
/* 00002C80 00002D44  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002C84 00002D48  38 81 00 94 */	addi r4, r1, 0x94
/* 00002C88 00002D4C  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002C8C 00002D50  38 A0 00 01 */	li r5, 0x1
/* 00002C90 00002D54  48 00 35 AD */	bl animPoseDrawMtx
/* 00002C94 00002D58  3C 60 00 00 */	lis r3, zero_aji_00013c3c@ha
/* 00002C98 00002D5C  3C 80 00 00 */	lis r4, float_1_aji_00013c60@ha
/* 00002C9C 00002D60  38 A3 00 00 */	addi r5, r3, zero_aji_00013c3c@l
/* 00002CA0 00002D64  C0 44 00 00 */	lfs f2, float_1_aji_00013c60@l(r4)
/* 00002CA4 00002D68  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002CA8 00002D6C  38 81 00 94 */	addi r4, r1, 0x94
/* 00002CAC 00002D70  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002CB0 00002D74  38 A0 00 02 */	li r5, 0x2
/* 00002CB4 00002D78  48 00 35 89 */	bl animPoseDrawMtx
/* 00002CB8 00002D7C  3C 60 00 00 */	lis r3, zero_aji_00013c3c@ha
/* 00002CBC 00002D80  3C 80 00 00 */	lis r4, float_1_aji_00013c60@ha
/* 00002CC0 00002D84  38 A3 00 00 */	addi r5, r3, zero_aji_00013c3c@l
/* 00002CC4 00002D88  C0 44 00 00 */	lfs f2, float_1_aji_00013c60@l(r4)
/* 00002CC8 00002D8C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002CCC 00002D90  38 81 00 94 */	addi r4, r1, 0x94
/* 00002CD0 00002D94  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002CD4 00002D98  38 A0 00 03 */	li r5, 0x3
/* 00002CD8 00002D9C  48 00 35 65 */	bl animPoseDrawMtx
/* 00002CDC 00002DA0  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00002CE0 00002DA4  48 00 35 5D */	bl animPosePeraOn
/* 00002CE4 00002DA8  48 00 35 59 */	bl camGetCurPtr
/* 00002CE8 00002DAC  7C 64 1B 78 */	mr r4, r3
/* 00002CEC 00002DB0  38 61 02 54 */	addi r3, r1, 0x254
/* 00002CF0 00002DB4  38 84 01 1C */	addi r4, r4, 0x11c
/* 00002CF4 00002DB8  48 00 35 49 */	bl PSMTXCopy
/* 00002CF8 00002DBC  38 60 00 00 */	li r3, 0x0
/* 00002CFC 00002DC0  38 80 00 00 */	li r4, 0x0
/* 00002D00 00002DC4  38 A0 02 60 */	li r5, 0x260
/* 00002D04 00002DC8  38 C0 01 E0 */	li r6, 0x1e0
/* 00002D08 00002DCC  48 00 35 35 */	bl GXSetTexCopySrc
/* 00002D0C 00002DD0  38 60 01 30 */	li r3, 0x130
/* 00002D10 00002DD4  38 80 00 F0 */	li r4, 0xf0
/* 00002D14 00002DD8  38 A0 00 04 */	li r5, 0x4
/* 00002D18 00002DDC  38 C0 00 01 */	li r6, 0x1
/* 00002D1C 00002DE0  48 00 35 21 */	bl GXSetTexCopyDst
/* 00002D20 00002DE4  3C 60 00 00 */	lis r3, monitor_wp@ha
/* 00002D24 00002DE8  38 80 00 01 */	li r4, 0x1
/* 00002D28 00002DEC  38 63 00 00 */	addi r3, r3, monitor_wp@l
/* 00002D2C 00002DF0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002D30 00002DF4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002D34 00002DF8  48 00 35 09 */	bl GXCopyTex
/* 00002D38 00002DFC  48 00 35 05 */	bl GXInvalidateTexAll
/* 00002D3C 00002E00  48 00 35 01 */	bl GXPixModeSync
/* 00002D40 00002E04  48 00 34 FD */	bl GXTexModeSync
/* 00002D44 00002E08  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 00002D48 00002E0C  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 00002D4C 00002E10  C0 61 00 84 */	lfs f3, 0x84(r1)
/* 00002D50 00002E14  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 00002D54 00002E18  C0 A1 00 8C */	lfs f5, 0x8c(r1)
/* 00002D58 00002E1C  C0 C1 00 90 */	lfs f6, 0x90(r1)
/* 00002D5C 00002E20  48 00 34 E1 */	bl GXSetViewport
/* 00002D60 00002E24  38 61 00 60 */	addi r3, r1, 0x60
/* 00002D64 00002E28  48 00 34 D9 */	bl GXSetProjectionv
/* 00002D68 00002E2C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 00002D6C 00002E30  80 81 00 10 */	lwz r4, 0x10(r1)
/* 00002D70 00002E34  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002D74 00002E38  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 00002D78 00002E3C  48 00 34 C5 */	bl GXSetScissor
/* 00002D7C 00002E40  3C 60 00 00 */	lis r3, monitor_wp@ha
/* 00002D80 00002E44  38 00 00 01 */	li r0, 0x1
/* 00002D84 00002E48  38 63 00 00 */	addi r3, r3, monitor_wp@l
/* 00002D88 00002E4C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002D8C 00002E50  90 03 00 04 */	stw r0, 0x4(r3)
/* 00002D90 00002E54  BB 81 03 A0 */	lmw r28, 0x3a0(r1)
/* 00002D94 00002E58  80 01 03 B4 */	lwz r0, 0x3b4(r1)
/* 00002D98 00002E5C  7C 08 03 A6 */	mtlr r0
/* 00002D9C 00002E60  38 21 03 B0 */	addi r1, r1, 0x3b0
/* 00002DA0 00002E64  4E 80 00 20 */	blr
.endfn monitor_cap_capture

# .text:0x740 | 0x2DA4 | size: 0x3C
.fn monitor_kanbu_flag_onoff, local
/* 00002DA4 00002E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002DA8 00002E6C  7C 08 02 A6 */	mflr r0
/* 00002DAC 00002E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002DB0 00002E74  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00002DB4 00002E78  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002DB8 00002E7C  48 00 34 85 */	bl evtGetValue
/* 00002DBC 00002E80  3C 80 00 00 */	lis r4, monitor_wp@ha
/* 00002DC0 00002E84  38 84 00 00 */	addi r4, r4, monitor_wp@l
/* 00002DC4 00002E88  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002DC8 00002E8C  90 64 00 08 */	stw r3, 0x8(r4)
/* 00002DCC 00002E90  38 60 00 02 */	li r3, 0x2
/* 00002DD0 00002E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002DD4 00002E98  7C 08 03 A6 */	mtlr r0
/* 00002DD8 00002E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 00002DDC 00002EA0  4E 80 00 20 */	blr
.endfn monitor_kanbu_flag_onoff

# .text:0x77C | 0x2DE0 | size: 0x9C
.fn monitor_cap_init, local
/* 00002DE0 00002EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002DE4 00002EA8  7C 08 02 A6 */	mflr r0
/* 00002DE8 00002EAC  38 60 02 60 */	li r3, 0x260
/* 00002DEC 00002EB0  38 80 01 E0 */	li r4, 0x1e0
/* 00002DF0 00002EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002DF4 00002EB8  38 A0 00 00 */	li r5, 0x0
/* 00002DF8 00002EBC  38 C0 00 00 */	li r6, 0x0
/* 00002DFC 00002EC0  38 E0 00 00 */	li r7, 0x0
/* 00002E00 00002EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00002E04 00002EC8  48 00 34 39 */	bl GXGetTexBufferSize
/* 00002E08 00002ECC  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00002E0C 00002ED0  7C 60 1B 78 */	mr r0, r3
/* 00002E10 00002ED4  38 64 00 00 */	addi r3, r4, mapalloc_base_ptr@l
/* 00002E14 00002ED8  38 80 00 0C */	li r4, 0xc
/* 00002E18 00002EDC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002E1C 00002EE0  7C 1F 03 78 */	mr r31, r0
/* 00002E20 00002EE4  48 00 34 1D */	bl _mapAlloc
/* 00002E24 00002EE8  3C 80 00 00 */	lis r4, monitor_wp@ha
/* 00002E28 00002EEC  3C A0 00 00 */	lis r5, mapalloc_base_ptr@ha
/* 00002E2C 00002EF0  38 C4 00 00 */	addi r6, r4, monitor_wp@l
/* 00002E30 00002EF4  90 66 00 00 */	stw r3, 0x0(r6)
/* 00002E34 00002EF8  7F E4 FB 78 */	mr r4, r31
/* 00002E38 00002EFC  80 65 00 00 */	lwz r3, mapalloc_base_ptr@l(r5)
/* 00002E3C 00002F00  48 00 34 01 */	bl _mapAlloc
/* 00002E40 00002F04  3C 80 00 00 */	lis r4, monitor_wp@ha
/* 00002E44 00002F08  38 00 00 00 */	li r0, 0x0
/* 00002E48 00002F0C  38 A4 00 00 */	addi r5, r4, monitor_wp@l
/* 00002E4C 00002F10  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002E50 00002F14  90 64 00 00 */	stw r3, 0x0(r4)
/* 00002E54 00002F18  38 60 00 02 */	li r3, 0x2
/* 00002E58 00002F1C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002E5C 00002F20  90 04 00 04 */	stw r0, 0x4(r4)
/* 00002E60 00002F24  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00002E64 00002F28  90 04 00 08 */	stw r0, 0x8(r4)
/* 00002E68 00002F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00002E6C 00002F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002E70 00002F34  7C 08 03 A6 */	mtlr r0
/* 00002E74 00002F38  38 21 00 10 */	addi r1, r1, 0x10
/* 00002E78 00002F3C  4E 80 00 20 */	blr
.endfn monitor_cap_init

# 0x00002478..0x00002E00 | size: 0x988
.rodata
.balign 8

# .rodata:0x0 | 0x2478 | size: 0x9
.obj str_door_w_A_aji_000132e0, local
	.string "door_w_A"
.endobj str_door_w_A_aji_000132e0

# .rodata:0x9 | 0x2481 | size: 0x3
.obj gap_03_00002481_rodata, global
.hidden gap_03_00002481_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002481_rodata

# .rodata:0xC | 0x2484 | size: 0x9
.obj str_door_w_B_aji_000132ec, local
	.string "door_w_B"
.endobj str_door_w_B_aji_000132ec

# .rodata:0x15 | 0x248D | size: 0x3
.obj gap_03_0000248D_rodata, global
.hidden gap_03_0000248D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000248D_rodata

# .rodata:0x18 | 0x2490 | size: 0x9
.obj str_door_e_A_aji_000132f8, local
	.string "door_e_A"
.endobj str_door_e_A_aji_000132f8

# .rodata:0x21 | 0x2499 | size: 0x3
.obj gap_03_00002499_rodata, global
.hidden gap_03_00002499_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002499_rodata

# .rodata:0x24 | 0x249C | size: 0x9
.obj str_door_e_B_aji_00013304, local
	.string "door_e_B"
.endobj str_door_e_B_aji_00013304

# .rodata:0x2D | 0x24A5 | size: 0x3
.obj gap_03_000024A5_rodata, global
.hidden gap_03_000024A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024A5_rodata

# .rodata:0x30 | 0x24A8 | size: 0x7
.obj str_w_bero_aji_00013310, local
	.string "w_bero"
.endobj str_w_bero_aji_00013310

# .rodata:0x37 | 0x24AF | size: 0x1
.obj gap_03_000024AF_rodata, global
.hidden gap_03_000024AF_rodata
	.byte 0x00
.endobj gap_03_000024AF_rodata

# .rodata:0x38 | 0x24B0 | size: 0x7
.obj str_aji_01_aji_00013318, local
	.string "aji_01"
.endobj str_aji_01_aji_00013318

# .rodata:0x3F | 0x24B7 | size: 0x1
.obj gap_03_000024B7_rodata, global
.hidden gap_03_000024B7_rodata
	.byte 0x00
.endobj gap_03_000024B7_rodata

# .rodata:0x40 | 0x24B8 | size: 0x8
.obj str_e_bero3_aji_00013320, local
	.string "e_bero3"
.endobj str_e_bero3_aji_00013320

# .rodata:0x48 | 0x24C0 | size: 0x7
.obj str_e_bero_aji_00013328, local
	.string "e_bero"
.endobj str_e_bero_aji_00013328

# .rodata:0x4F | 0x24C7 | size: 0x1
.obj gap_03_000024C7_rodata, global
.hidden gap_03_000024C7_rodata
	.byte 0x00
.endobj gap_03_000024C7_rodata

# .rodata:0x50 | 0x24C8 | size: 0x7
.obj str_aji_11_aji_00013330, local
	.string "aji_11"
.endobj str_aji_11_aji_00013330

# .rodata:0x57 | 0x24CF | size: 0x1
.obj gap_03_000024CF_rodata, global
.hidden gap_03_000024CF_rodata
	.byte 0x00
.endobj gap_03_000024CF_rodata

# .rodata:0x58 | 0x24D0 | size: 0x7
.obj str_みはり_aji_00013338, local
	.4byte 0x82DD82CD
	.byte 0x82, 0xE8, 0x00
.endobj str_みはり_aji_00013338

# .rodata:0x5F | 0x24D7 | size: 0x1
.obj gap_03_000024D7_rodata, global
.hidden gap_03_000024D7_rodata
	.byte 0x00
.endobj gap_03_000024D7_rodata

# .rodata:0x60 | 0x24D8 | size: 0x1
.obj zero_aji_00013340, local
	.byte 0x00
.endobj zero_aji_00013340

# .rodata:0x61 | 0x24D9 | size: 0x3
.obj gap_03_000024D9_rodata, global
.hidden gap_03_000024D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024D9_rodata

# .rodata:0x64 | 0x24DC | size: 0xC
.obj vec3_aji_00013344, local
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x42380000
.endobj vec3_aji_00013344

# .rodata:0x70 | 0x24E8 | size: 0xC
.obj vec3_aji_00013350, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_aji_00013350

# .rodata:0x7C | 0x24F4 | size: 0xC
.obj vec3_aji_0001335c, local
	.4byte 0x00000000
	.4byte 0x40400000
	.4byte 0x00000000
.endobj vec3_aji_0001335c

# .rodata:0x88 | 0x2500 | size: 0xC
.obj vec3_aji_00013368, local
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x41F00000
.endobj vec3_aji_00013368

# .rodata:0x94 | 0x250C | size: 0xC
.obj vec3_aji_00013374, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_aji_00013374

# .rodata:0xA0 | 0x2518 | size: 0xC
.obj vec3_aji_00013380, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_aji_00013380

# .rodata:0xAC | 0x2524 | size: 0xC
.obj vec3_aji_0001338c, local
	.4byte 0x00000000
	.4byte 0xBF800000
	.4byte 0x00000000
.endobj vec3_aji_0001338c

# .rodata:0xB8 | 0x2530 | size: 0x8
.obj str_monitor_aji_00013398, local
	.string "monitor"
.endobj str_monitor_aji_00013398

# .rodata:0xC0 | 0x2538 | size: 0x17
.obj str_SFX_PEACH_SCREEN_OPE_aji_000133a0, local
	.string "SFX_PEACH_SCREEN_OPEN1"
.endobj str_SFX_PEACH_SCREEN_OPE_aji_000133a0

# .rodata:0xD7 | 0x254F | size: 0x1
.obj gap_03_0000254F_rodata, global
.hidden gap_03_0000254F_rodata
	.byte 0x00
.endobj gap_03_0000254F_rodata

# .rodata:0xD8 | 0x2550 | size: 0xB
.obj str_monitore_1_aji_000133b8, local
	.string "monitore_1"
.endobj str_monitore_1_aji_000133b8

# .rodata:0xE3 | 0x255B | size: 0x1
.obj gap_03_0000255B_rodata, global
.hidden gap_03_0000255B_rodata
	.byte 0x00
.endobj gap_03_0000255B_rodata

# .rodata:0xE4 | 0x255C | size: 0xB
.obj str_monitore_2_aji_000133c4, local
	.string "monitore_2"
.endobj str_monitore_2_aji_000133c4

# .rodata:0xEF | 0x2567 | size: 0x1
.obj gap_03_00002567_rodata, global
.hidden gap_03_00002567_rodata
	.byte 0x00
.endobj gap_03_00002567_rodata

# .rodata:0xF0 | 0x2568 | size: 0x17
.obj str_SFX_PEACH_SCREEN_SHU_aji_000133d0, local
	.string "SFX_PEACH_SCREEN_SHUT1"
.endobj str_SFX_PEACH_SCREEN_SHU_aji_000133d0

# .rodata:0x107 | 0x257F | size: 0x1
.obj gap_03_0000257F_rodata, global
.hidden gap_03_0000257F_rodata
	.byte 0x00
.endobj gap_03_0000257F_rodata

# .rodata:0x108 | 0x2580 | size: 0xA
.obj str_monitor_1_aji_000133e8, local
	.string "monitor_1"
.endobj str_monitor_1_aji_000133e8

# .rodata:0x112 | 0x258A | size: 0x2
.obj gap_03_0000258A_rodata, global
.hidden gap_03_0000258A_rodata
	.2byte 0x0000
.endobj gap_03_0000258A_rodata

# .rodata:0x114 | 0x258C | size: 0x7
.obj str_手下３_aji_000133f4, local
	.4byte 0x8EE889BA
	.byte 0x82, 0x52, 0x00
.endobj str_手下３_aji_000133f4

# .rodata:0x11B | 0x2593 | size: 0x1
.obj gap_03_00002593_rodata, global
.hidden gap_03_00002593_rodata
	.byte 0x00
.endobj gap_03_00002593_rodata

# .rodata:0x11C | 0x2594 | size: 0x7
.obj str_手下２_aji_000133fc, local
	.4byte 0x8EE889BA
	.byte 0x82, 0x51, 0x00
.endobj str_手下２_aji_000133fc

# .rodata:0x123 | 0x259B | size: 0x1
.obj gap_03_0000259B_rodata, global
.hidden gap_03_0000259B_rodata
	.byte 0x00
.endobj gap_03_0000259B_rodata

# .rodata:0x124 | 0x259C | size: 0x9
.obj str_カンブー_aji_00013404, local
	.4byte 0x834A8393
	.4byte 0x8375815B
	.byte 0x00
.endobj str_カンブー_aji_00013404

# .rodata:0x12D | 0x25A5 | size: 0x3
.obj gap_03_000025A5_rodata, global
.hidden gap_03_000025A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025A5_rodata

# .rodata:0x130 | 0x25A8 | size: 0xB
.obj str_シュリョー_aji_00013410, local
	.4byte 0x83568385
	.4byte 0x838A8387
	.byte 0x81, 0x5B, 0x00
.endobj str_シュリョー_aji_00013410

# .rodata:0x13B | 0x25B3 | size: 0x1
.obj gap_03_000025B3_rodata, global
.hidden gap_03_000025B3_rodata
	.byte 0x00
.endobj gap_03_000025B3_rodata

# .rodata:0x13C | 0x25B4 | size: 0xB
.obj str_マジョリン_aji_0001341c, local
	.4byte 0x837D8357
	.4byte 0x8387838A
	.byte 0x83, 0x93, 0x00
.endobj str_マジョリン_aji_0001341c

# .rodata:0x147 | 0x25BF | size: 0x1
.obj gap_03_000025BF_rodata, global
.hidden gap_03_000025BF_rodata
	.byte 0x00
.endobj gap_03_000025BF_rodata

# .rodata:0x148 | 0x25C0 | size: 0x9
.obj str_マリリン_aji_00013428, local
	.4byte 0x837D838A
	.4byte 0x838A8393
	.byte 0x00
.endobj str_マリリン_aji_00013428

# .rodata:0x151 | 0x25C9 | size: 0x3
.obj gap_03_000025C9_rodata, global
.hidden gap_03_000025C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025C9_rodata

# .rodata:0x154 | 0x25CC | size: 0x9
.obj str_ビビアン_aji_00013434, local
	.4byte 0x83728372
	.4byte 0x83418393
	.byte 0x00
.endobj str_ビビアン_aji_00013434

# .rodata:0x15D | 0x25D5 | size: 0x3
.obj gap_03_000025D5_rodata, global
.hidden gap_03_000025D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025D5_rodata

# .rodata:0x160 | 0x25D8 | size: 0x4
.obj str_P_1_aji_00013440, local
	.string "P_1"
.endobj str_P_1_aji_00013440

# .rodata:0x164 | 0x25DC | size: 0x16
.obj str_SFX_PEACH_3RD_BATTEN_aji_00013444, local
	.string "SFX_PEACH_3RD_BATTEN1"
.endobj str_SFX_PEACH_3RD_BATTEN_aji_00013444

# .rodata:0x17A | 0x25F2 | size: 0x2
.obj gap_03_000025F2_rodata, global
.hidden gap_03_000025F2_rodata
	.2byte 0x0000
.endobj gap_03_000025F2_rodata

# .rodata:0x17C | 0x25F4 | size: 0x4
.obj str_S_1_aji_0001345c, local
	.string "S_1"
.endobj str_S_1_aji_0001345c

# .rodata:0x180 | 0x25F8 | size: 0x10
.obj str_peach_aji_00_01_aji_00013460, local
	.string "peach_aji_00_01"
.endobj str_peach_aji_00_01_aji_00013460

# .rodata:0x190 | 0x2608 | size: 0x18
.obj str_SFX_PEACH_PIC_BIRIBI_aji_00013470, local
	.string "SFX_PEACH_PIC_BIRIBIRI1"
.endobj str_SFX_PEACH_PIC_BIRIBI_aji_00013470

# .rodata:0x1A8 | 0x2620 | size: 0x13
.obj str_pokopi_thunder_n64_aji_00013488, local
	.string "pokopi_thunder_n64"
.endobj str_pokopi_thunder_n64_aji_00013488

# .rodata:0x1BB | 0x2633 | size: 0x1
.obj gap_03_00002633_rodata, global
.hidden gap_03_00002633_rodata
	.byte 0x00
.endobj gap_03_00002633_rodata

# .rodata:0x1BC | 0x2634 | size: 0xD
.obj str_peach_aji_00_aji_0001349c, local
	.string "peach_aji_00"
.endobj str_peach_aji_00_aji_0001349c

# .rodata:0x1C9 | 0x2641 | size: 0x3
.obj gap_03_00002641_rodata, global
.hidden gap_03_00002641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002641_rodata

# .rodata:0x1CC | 0x2644 | size: 0xD
.obj str_peach_aji_01_aji_000134ac, local
	.string "peach_aji_01"
.endobj str_peach_aji_01_aji_000134ac

# .rodata:0x1D9 | 0x2651 | size: 0x3
.obj gap_03_00002651_rodata, global
.hidden gap_03_00002651_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002651_rodata

# .rodata:0x1DC | 0x2654 | size: 0xD
.obj str_peach_aji_02_aji_000134bc, local
	.string "peach_aji_02"
.endobj str_peach_aji_02_aji_000134bc

# .rodata:0x1E9 | 0x2661 | size: 0x3
.obj gap_03_00002661_rodata, global
.hidden gap_03_00002661_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002661_rodata

# .rodata:0x1EC | 0x2664 | size: 0x6
.obj str_mario_aji_000134cc, local
	.string "mario"
.endobj str_mario_aji_000134cc

# .rodata:0x1F2 | 0x266A | size: 0x2
.obj gap_03_0000266A_rodata, global
.hidden gap_03_0000266A_rodata
	.2byte 0x0000
.endobj gap_03_0000266A_rodata

# .rodata:0x1F4 | 0x266C | size: 0xD
.obj str_peach_aji_03_aji_000134d4, local
	.string "peach_aji_03"
.endobj str_peach_aji_03_aji_000134d4

# .rodata:0x201 | 0x2679 | size: 0x3
.obj gap_03_00002679_rodata, global
.hidden gap_03_00002679_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002679_rodata

# .rodata:0x204 | 0x267C | size: 0xD
.obj str_peach_aji_04_aji_000134e4, local
	.string "peach_aji_04"
.endobj str_peach_aji_04_aji_000134e4

# .rodata:0x211 | 0x2689 | size: 0x3
.obj gap_03_00002689_rodata, global
.hidden gap_03_00002689_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002689_rodata

# .rodata:0x214 | 0x268C | size: 0x7
.obj str_手下１_aji_000134f4, local
	.4byte 0x8EE889BA
	.byte 0x82, 0x50, 0x00
.endobj str_手下１_aji_000134f4

# .rodata:0x21B | 0x2693 | size: 0x1
.obj gap_03_00002693_rodata, global
.hidden gap_03_00002693_rodata
	.byte 0x00
.endobj gap_03_00002693_rodata

# .rodata:0x21C | 0x2694 | size: 0xD
.obj str_peach_aji_05_aji_000134fc, local
	.string "peach_aji_05"
.endobj str_peach_aji_05_aji_000134fc

# .rodata:0x229 | 0x26A1 | size: 0x3
.obj gap_03_000026A1_rodata, global
.hidden gap_03_000026A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026A1_rodata

# .rodata:0x22C | 0x26A4 | size: 0xD
.obj str_peach_aji_06_aji_0001350c, local
	.string "peach_aji_06"
.endobj str_peach_aji_06_aji_0001350c

# .rodata:0x239 | 0x26B1 | size: 0x3
.obj gap_03_000026B1_rodata, global
.hidden gap_03_000026B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026B1_rodata

# .rodata:0x23C | 0x26B4 | size: 0xD
.obj str_peach_aji_07_aji_0001351c, local
	.string "peach_aji_07"
.endobj str_peach_aji_07_aji_0001351c

# .rodata:0x249 | 0x26C1 | size: 0x3
.obj gap_03_000026C1_rodata, global
.hidden gap_03_000026C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026C1_rodata

# .rodata:0x24C | 0x26C4 | size: 0xD
.obj str_peach_aji_08_aji_0001352c, local
	.string "peach_aji_08"
.endobj str_peach_aji_08_aji_0001352c

# .rodata:0x259 | 0x26D1 | size: 0x3
.obj gap_03_000026D1_rodata, global
.hidden gap_03_000026D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026D1_rodata

# .rodata:0x25C | 0x26D4 | size: 0xD
.obj str_peach_aji_09_aji_0001353c, local
	.string "peach_aji_09"
.endobj str_peach_aji_09_aji_0001353c

# .rodata:0x269 | 0x26E1 | size: 0x3
.obj gap_03_000026E1_rodata, global
.hidden gap_03_000026E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026E1_rodata

# .rodata:0x26C | 0x26E4 | size: 0xD
.obj str_peach_aji_10_aji_0001354c, local
	.string "peach_aji_10"
.endobj str_peach_aji_10_aji_0001354c

# .rodata:0x279 | 0x26F1 | size: 0x3
.obj gap_03_000026F1_rodata, global
.hidden gap_03_000026F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026F1_rodata

# .rodata:0x27C | 0x26F4 | size: 0xD
.obj str_peach_aji_11_aji_0001355c, local
	.string "peach_aji_11"
.endobj str_peach_aji_11_aji_0001355c

# .rodata:0x289 | 0x2701 | size: 0x3
.obj gap_03_00002701_rodata, global
.hidden gap_03_00002701_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002701_rodata

# .rodata:0x28C | 0x2704 | size: 0x17
.obj str_SFX_VOICE_PEACH_SAD2_aji_0001356c, local
	.string "SFX_VOICE_PEACH_SAD2_1"
.endobj str_SFX_VOICE_PEACH_SAD2_aji_0001356c

# .rodata:0x2A3 | 0x271B | size: 0x1
.obj gap_03_0000271B_rodata, global
.hidden gap_03_0000271B_rodata
	.byte 0x00
.endobj gap_03_0000271B_rodata

# .rodata:0x2A4 | 0x271C | size: 0x6
.obj str_P_B_2_aji_00013584, local
	.string "P_B_2"
.endobj str_P_B_2_aji_00013584

# .rodata:0x2AA | 0x2722 | size: 0x2
.obj gap_03_00002722_rodata, global
.hidden gap_03_00002722_rodata
	.2byte 0x0000
.endobj gap_03_00002722_rodata

# .rodata:0x2AC | 0x2724 | size: 0x6
.obj str_P_T_7_aji_0001358c, local
	.string "P_T_7"
.endobj str_P_T_7_aji_0001358c

# .rodata:0x2B2 | 0x272A | size: 0x2
.obj gap_03_0000272A_rodata, global
.hidden gap_03_0000272A_rodata
	.2byte 0x0000
.endobj gap_03_0000272A_rodata

# .rodata:0x2B4 | 0x272C | size: 0xD
.obj str_peach_aji_12_aji_00013594, local
	.string "peach_aji_12"
.endobj str_peach_aji_12_aji_00013594

# .rodata:0x2C1 | 0x2739 | size: 0x3
.obj gap_03_00002739_rodata, global
.hidden gap_03_00002739_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002739_rodata

# .rodata:0x2C4 | 0x273C | size: 0x6
.obj str_P_C_1_aji_000135a4, local
	.string "P_C_1"
.endobj str_P_C_1_aji_000135a4

# .rodata:0x2CA | 0x2742 | size: 0x2
.obj gap_03_00002742_rodata, global
.hidden gap_03_00002742_rodata
	.2byte 0x0000
.endobj gap_03_00002742_rodata

# .rodata:0x2CC | 0x2744 | size: 0xD
.obj str_peach_aji_13_aji_000135ac, local
	.string "peach_aji_13"
.endobj str_peach_aji_13_aji_000135ac

# .rodata:0x2D9 | 0x2751 | size: 0x3
.obj gap_03_00002751_rodata, global
.hidden gap_03_00002751_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002751_rodata

# .rodata:0x2DC | 0x2754 | size: 0xD
.obj str_peach_aji_14_aji_000135bc, local
	.string "peach_aji_14"
.endobj str_peach_aji_14_aji_000135bc

# .rodata:0x2E9 | 0x2761 | size: 0x3
.obj gap_03_00002761_rodata, global
.hidden gap_03_00002761_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002761_rodata

# .rodata:0x2EC | 0x2764 | size: 0xD
.obj str_peach_aji_15_aji_000135cc, local
	.string "peach_aji_15"
.endobj str_peach_aji_15_aji_000135cc

# .rodata:0x2F9 | 0x2771 | size: 0x3
.obj gap_03_00002771_rodata, global
.hidden gap_03_00002771_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002771_rodata

# .rodata:0x2FC | 0x2774 | size: 0xD
.obj str_peach_aji_16_aji_000135dc, local
	.string "peach_aji_16"
.endobj str_peach_aji_16_aji_000135dc

# .rodata:0x309 | 0x2781 | size: 0x3
.obj gap_03_00002781_rodata, global
.hidden gap_03_00002781_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002781_rodata

# .rodata:0x30C | 0x2784 | size: 0x6
.obj str_P_S_1_aji_000135ec, local
	.string "P_S_1"
.endobj str_P_S_1_aji_000135ec

# .rodata:0x312 | 0x278A | size: 0x2
.obj gap_03_0000278A_rodata, global
.hidden gap_03_0000278A_rodata
	.2byte 0x0000
.endobj gap_03_0000278A_rodata

# .rodata:0x314 | 0x278C | size: 0xD
.obj str_peach_aji_17_aji_000135f4, local
	.string "peach_aji_17"
.endobj str_peach_aji_17_aji_000135f4

# .rodata:0x321 | 0x2799 | size: 0x3
.obj gap_03_00002799_rodata, global
.hidden gap_03_00002799_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002799_rodata

# .rodata:0x324 | 0x279C | size: 0x10
.obj str_peach_aji_17_01_aji_00013604, local
	.string "peach_aji_17_01"
.endobj str_peach_aji_17_01_aji_00013604

# .rodata:0x334 | 0x27AC | size: 0xD
.obj str_peach_aji_18_aji_00013614, local
	.string "peach_aji_18"
.endobj str_peach_aji_18_aji_00013614

# .rodata:0x341 | 0x27B9 | size: 0x3
.obj gap_03_000027B9_rodata, global
.hidden gap_03_000027B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027B9_rodata

# .rodata:0x344 | 0x27BC | size: 0xD
.obj str_peach_aji_19_aji_00013624, local
	.string "peach_aji_19"
.endobj str_peach_aji_19_aji_00013624

# .rodata:0x351 | 0x27C9 | size: 0x3
.obj gap_03_000027C9_rodata, global
.hidden gap_03_000027C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027C9_rodata

# .rodata:0x354 | 0x27CC | size: 0xD
.obj str_peach_aji_20_aji_00013634, local
	.string "peach_aji_20"
.endobj str_peach_aji_20_aji_00013634

# .rodata:0x361 | 0x27D9 | size: 0x3
.obj gap_03_000027D9_rodata, global
.hidden gap_03_000027D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027D9_rodata

# .rodata:0x364 | 0x27DC | size: 0xD
.obj str_peach_aji_21_aji_00013644, local
	.string "peach_aji_21"
.endobj str_peach_aji_21_aji_00013644

# .rodata:0x371 | 0x27E9 | size: 0x3
.obj gap_03_000027E9_rodata, global
.hidden gap_03_000027E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027E9_rodata

# .rodata:0x374 | 0x27EC | size: 0xD
.obj str_peach_aji_22_aji_00013654, local
	.string "peach_aji_22"
.endobj str_peach_aji_22_aji_00013654

# .rodata:0x381 | 0x27F9 | size: 0x3
.obj gap_03_000027F9_rodata, global
.hidden gap_03_000027F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027F9_rodata

# .rodata:0x384 | 0x27FC | size: 0xD
.obj str_peach_aji_23_aji_00013664, local
	.string "peach_aji_23"
.endobj str_peach_aji_23_aji_00013664

# .rodata:0x391 | 0x2809 | size: 0x3
.obj gap_03_00002809_rodata, global
.hidden gap_03_00002809_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002809_rodata

# .rodata:0x394 | 0x280C | size: 0xD
.obj str_peach_aji_24_aji_00013674, local
	.string "peach_aji_24"
.endobj str_peach_aji_24_aji_00013674

# .rodata:0x3A1 | 0x2819 | size: 0x3
.obj gap_03_00002819_rodata, global
.hidden gap_03_00002819_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002819_rodata

# .rodata:0x3A4 | 0x281C | size: 0xD
.obj str_peach_aji_25_aji_00013684, local
	.string "peach_aji_25"
.endobj str_peach_aji_25_aji_00013684

# .rodata:0x3B1 | 0x2829 | size: 0x3
.obj gap_03_00002829_rodata, global
.hidden gap_03_00002829_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002829_rodata

# .rodata:0x3B4 | 0x282C | size: 0x10
.obj str_peach_aji_25_01_aji_00013694, local
	.string "peach_aji_25_01"
.endobj str_peach_aji_25_01_aji_00013694

# .rodata:0x3C4 | 0x283C | size: 0xD
.obj str_peach_aji_26_aji_000136a4, local
	.string "peach_aji_26"
.endobj str_peach_aji_26_aji_000136a4

# .rodata:0x3D1 | 0x2849 | size: 0x3
.obj gap_03_00002849_rodata, global
.hidden gap_03_00002849_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002849_rodata

# .rodata:0x3D4 | 0x284C | size: 0xD
.obj str_peach_aji_27_aji_000136b4, local
	.string "peach_aji_27"
.endobj str_peach_aji_27_aji_000136b4

# .rodata:0x3E1 | 0x2859 | size: 0x3
.obj gap_03_00002859_rodata, global
.hidden gap_03_00002859_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002859_rodata

# .rodata:0x3E4 | 0x285C | size: 0xD
.obj str_peach_aji_28_aji_000136c4, local
	.string "peach_aji_28"
.endobj str_peach_aji_28_aji_000136c4

# .rodata:0x3F1 | 0x2869 | size: 0x3
.obj gap_03_00002869_rodata, global
.hidden gap_03_00002869_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002869_rodata

# .rodata:0x3F4 | 0x286C | size: 0xD
.obj str_peach_aji_29_aji_000136d4, local
	.string "peach_aji_29"
.endobj str_peach_aji_29_aji_000136d4

# .rodata:0x401 | 0x2879 | size: 0x3
.obj gap_03_00002879_rodata, global
.hidden gap_03_00002879_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002879_rodata

# .rodata:0x404 | 0x287C | size: 0xD
.obj str_peach_aji_30_aji_000136e4, local
	.string "peach_aji_30"
.endobj str_peach_aji_30_aji_000136e4

# .rodata:0x411 | 0x2889 | size: 0x3
.obj gap_03_00002889_rodata, global
.hidden gap_03_00002889_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002889_rodata

# .rodata:0x414 | 0x288C | size: 0xD
.obj str_peach_aji_31_aji_000136f4, local
	.string "peach_aji_31"
.endobj str_peach_aji_31_aji_000136f4

# .rodata:0x421 | 0x2899 | size: 0x3
.obj gap_03_00002899_rodata, global
.hidden gap_03_00002899_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002899_rodata

# .rodata:0x424 | 0x289C | size: 0xD
.obj str_peach_aji_32_aji_00013704, local
	.string "peach_aji_32"
.endobj str_peach_aji_32_aji_00013704

# .rodata:0x431 | 0x28A9 | size: 0x3
.obj gap_03_000028A9_rodata, global
.hidden gap_03_000028A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028A9_rodata

# .rodata:0x434 | 0x28AC | size: 0x9
.obj str_PTR_A1_1_aji_00013714, local
	.string "PTR_A1_1"
.endobj str_PTR_A1_1_aji_00013714

# .rodata:0x43D | 0x28B5 | size: 0x3
.obj gap_03_000028B5_rodata, global
.hidden gap_03_000028B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028B5_rodata

# .rodata:0x440 | 0x28B8 | size: 0xD
.obj str_peach_aji_33_aji_00013720, local
	.string "peach_aji_33"
.endobj str_peach_aji_33_aji_00013720

# .rodata:0x44D | 0x28C5 | size: 0x3
.obj gap_03_000028C5_rodata, global
.hidden gap_03_000028C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028C5_rodata

# .rodata:0x450 | 0x28C8 | size: 0xF
.obj str_peach_evt_stg1_aji_00013730, local
	.string "peach_evt_stg1"
.endobj str_peach_evt_stg1_aji_00013730

# .rodata:0x45F | 0x28D7 | size: 0x1
.obj gap_03_000028D7_rodata, global
.hidden gap_03_000028D7_rodata
	.byte 0x00
.endobj gap_03_000028D7_rodata

# .rodata:0x460 | 0x28D8 | size: 0x7
.obj str_研究員_aji_00013740, local
	.4byte 0x8CA48B86
	.byte 0x88, 0xF5, 0x00
.endobj str_研究員_aji_00013740

# .rodata:0x467 | 0x28DF | size: 0x1
.obj gap_03_000028DF_rodata, global
.hidden gap_03_000028DF_rodata
	.byte 0x00
.endobj gap_03_000028DF_rodata

# .rodata:0x468 | 0x28E0 | size: 0x10
.obj str_peach_aji_72_01_aji_00013748, local
	.string "peach_aji_72_01"
.endobj str_peach_aji_72_01_aji_00013748

# .rodata:0x478 | 0x28F0 | size: 0x10
.obj str_peach_aji_72_02_aji_00013758, local
	.string "peach_aji_72_02"
.endobj str_peach_aji_72_02_aji_00013758

# .rodata:0x488 | 0x2900 | size: 0x10
.obj str_peach_aji_72_03_aji_00013768, local
	.string "peach_aji_72_03"
.endobj str_peach_aji_72_03_aji_00013768

# .rodata:0x498 | 0x2910 | size: 0x10
.obj str_peach_aji_72_04_aji_00013778, local
	.string "peach_aji_72_04"
.endobj str_peach_aji_72_04_aji_00013778

# .rodata:0x4A8 | 0x2920 | size: 0x10
.obj str_peach_aji_72_05_aji_00013788, local
	.string "peach_aji_72_05"
.endobj str_peach_aji_72_05_aji_00013788

# .rodata:0x4B8 | 0x2930 | size: 0x10
.obj str_peach_aji_72_06_aji_00013798, local
	.string "peach_aji_72_06"
.endobj str_peach_aji_72_06_aji_00013798

# .rodata:0x4C8 | 0x2940 | size: 0x10
.obj str_peach_aji_72_07_aji_000137a8, local
	.string "peach_aji_72_07"
.endobj str_peach_aji_72_07_aji_000137a8

# .rodata:0x4D8 | 0x2950 | size: 0x10
.obj str_peach_aji_72_08_aji_000137b8, local
	.string "peach_aji_72_08"
.endobj str_peach_aji_72_08_aji_000137b8

# .rodata:0x4E8 | 0x2960 | size: 0x10
.obj str_peach_aji_72_09_aji_000137c8, local
	.string "peach_aji_72_09"
.endobj str_peach_aji_72_09_aji_000137c8

# .rodata:0x4F8 | 0x2970 | size: 0x10
.obj str_peach_aji_72_10_aji_000137d8, local
	.string "peach_aji_72_10"
.endobj str_peach_aji_72_10_aji_000137d8

# .rodata:0x508 | 0x2980 | size: 0x10
.obj str_peach_aji_72_11_aji_000137e8, local
	.string "peach_aji_72_11"
.endobj str_peach_aji_72_11_aji_000137e8

# .rodata:0x518 | 0x2990 | size: 0x10
.obj str_peach_aji_72_12_aji_000137f8, local
	.string "peach_aji_72_12"
.endobj str_peach_aji_72_12_aji_000137f8

# .rodata:0x528 | 0x29A0 | size: 0x10
.obj str_peach_aji_72_13_aji_00013808, local
	.string "peach_aji_72_13"
.endobj str_peach_aji_72_13_aji_00013808

# .rodata:0x538 | 0x29B0 | size: 0x10
.obj str_peach_aji_72_14_aji_00013818, local
	.string "peach_aji_72_14"
.endobj str_peach_aji_72_14_aji_00013818

# .rodata:0x548 | 0x29C0 | size: 0x7
.obj str_aji_16_aji_00013828, local
	.string "aji_16"
.endobj str_aji_16_aji_00013828

# .rodata:0x54F | 0x29C7 | size: 0x1
.obj gap_03_000029C7_rodata, global
.hidden gap_03_000029C7_rodata
	.byte 0x00
.endobj gap_03_000029C7_rodata

# .rodata:0x550 | 0x29C8 | size: 0xE
.obj str_peach_aji_103_aji_00013830, local
	.string "peach_aji_103"
.endobj str_peach_aji_103_aji_00013830

# .rodata:0x55E | 0x29D6 | size: 0x2
.obj gap_03_000029D6_rodata, global
.hidden gap_03_000029D6_rodata
	.2byte 0x0000
.endobj gap_03_000029D6_rodata

# .rodata:0x560 | 0x29D8 | size: 0xE
.obj str_peach_aji_104_aji_00013840, local
	.string "peach_aji_104"
.endobj str_peach_aji_104_aji_00013840

# .rodata:0x56E | 0x29E6 | size: 0x2
.obj gap_03_000029E6_rodata, global
.hidden gap_03_000029E6_rodata
	.2byte 0x0000
.endobj gap_03_000029E6_rodata

# .rodata:0x570 | 0x29E8 | size: 0xE
.obj str_peach_aji_105_aji_00013850, local
	.string "peach_aji_105"
.endobj str_peach_aji_105_aji_00013850

# .rodata:0x57E | 0x29F6 | size: 0x2
.obj gap_03_000029F6_rodata, global
.hidden gap_03_000029F6_rodata
	.2byte 0x0000
.endobj gap_03_000029F6_rodata

# .rodata:0x580 | 0x29F8 | size: 0xE
.obj str_peach_aji_106_aji_00013860, local
	.string "peach_aji_106"
.endobj str_peach_aji_106_aji_00013860

# .rodata:0x58E | 0x2A06 | size: 0x2
.obj gap_03_00002A06_rodata, global
.hidden gap_03_00002A06_rodata
	.2byte 0x0000
.endobj gap_03_00002A06_rodata

# .rodata:0x590 | 0x2A08 | size: 0xE
.obj str_peach_aji_107_aji_00013870, local
	.string "peach_aji_107"
.endobj str_peach_aji_107_aji_00013870

# .rodata:0x59E | 0x2A16 | size: 0x2
.obj gap_03_00002A16_rodata, global
.hidden gap_03_00002A16_rodata
	.2byte 0x0000
.endobj gap_03_00002A16_rodata

# .rodata:0x5A0 | 0x2A18 | size: 0xE
.obj str_peach_aji_108_aji_00013880, local
	.string "peach_aji_108"
.endobj str_peach_aji_108_aji_00013880

# .rodata:0x5AE | 0x2A26 | size: 0x2
.obj gap_03_00002A26_rodata, global
.hidden gap_03_00002A26_rodata
	.2byte 0x0000
.endobj gap_03_00002A26_rodata

# .rodata:0x5B0 | 0x2A28 | size: 0xE
.obj str_peach_aji_109_aji_00013890, local
	.string "peach_aji_109"
.endobj str_peach_aji_109_aji_00013890

# .rodata:0x5BE | 0x2A36 | size: 0x2
.obj gap_03_00002A36_rodata, global
.hidden gap_03_00002A36_rodata
	.2byte 0x0000
.endobj gap_03_00002A36_rodata

# .rodata:0x5C0 | 0x2A38 | size: 0xE
.obj str_peach_aji_110_aji_000138a0, local
	.string "peach_aji_110"
.endobj str_peach_aji_110_aji_000138a0

# .rodata:0x5CE | 0x2A46 | size: 0x2
.obj gap_03_00002A46_rodata, global
.hidden gap_03_00002A46_rodata
	.2byte 0x0000
.endobj gap_03_00002A46_rodata

# .rodata:0x5D0 | 0x2A48 | size: 0xE
.obj str_peach_aji_111_aji_000138b0, local
	.string "peach_aji_111"
.endobj str_peach_aji_111_aji_000138b0

# .rodata:0x5DE | 0x2A56 | size: 0x2
.obj gap_03_00002A56_rodata, global
.hidden gap_03_00002A56_rodata
	.2byte 0x0000
.endobj gap_03_00002A56_rodata

# .rodata:0x5E0 | 0x2A58 | size: 0xF
.obj str_peach_evt_stg3_aji_000138c0, local
	.string "peach_evt_stg3"
.endobj str_peach_evt_stg3_aji_000138c0

# .rodata:0x5EF | 0x2A67 | size: 0x1
.obj gap_03_00002A67_rodata, global
.hidden gap_03_00002A67_rodata
	.byte 0x00
.endobj gap_03_00002A67_rodata

# .rodata:0x5F0 | 0x2A68 | size: 0xE
.obj str_peach_aji_141_aji_000138d0, local
	.string "peach_aji_141"
.endobj str_peach_aji_141_aji_000138d0

# .rodata:0x5FE | 0x2A76 | size: 0x2
.obj gap_03_00002A76_rodata, global
.hidden gap_03_00002A76_rodata
	.2byte 0x0000
.endobj gap_03_00002A76_rodata

# .rodata:0x600 | 0x2A78 | size: 0xE
.obj str_peach_aji_142_aji_000138e0, local
	.string "peach_aji_142"
.endobj str_peach_aji_142_aji_000138e0

# .rodata:0x60E | 0x2A86 | size: 0x2
.obj gap_03_00002A86_rodata, global
.hidden gap_03_00002A86_rodata
	.2byte 0x0000
.endobj gap_03_00002A86_rodata

# .rodata:0x610 | 0x2A88 | size: 0xE
.obj str_peach_aji_143_aji_000138f0, local
	.string "peach_aji_143"
.endobj str_peach_aji_143_aji_000138f0

# .rodata:0x61E | 0x2A96 | size: 0x2
.obj gap_03_00002A96_rodata, global
.hidden gap_03_00002A96_rodata
	.2byte 0x0000
.endobj gap_03_00002A96_rodata

# .rodata:0x620 | 0x2A98 | size: 0xE
.obj str_peach_aji_144_aji_00013900, local
	.string "peach_aji_144"
.endobj str_peach_aji_144_aji_00013900

# .rodata:0x62E | 0x2AA6 | size: 0x2
.obj gap_03_00002AA6_rodata, global
.hidden gap_03_00002AA6_rodata
	.2byte 0x0000
.endobj gap_03_00002AA6_rodata

# .rodata:0x630 | 0x2AA8 | size: 0xE
.obj str_peach_aji_145_aji_00013910, local
	.string "peach_aji_145"
.endobj str_peach_aji_145_aji_00013910

# .rodata:0x63E | 0x2AB6 | size: 0x2
.obj gap_03_00002AB6_rodata, global
.hidden gap_03_00002AB6_rodata
	.2byte 0x0000
.endobj gap_03_00002AB6_rodata

# .rodata:0x640 | 0x2AB8 | size: 0xE
.obj str_peach_aji_146_aji_00013920, local
	.string "peach_aji_146"
.endobj str_peach_aji_146_aji_00013920

# .rodata:0x64E | 0x2AC6 | size: 0x2
.obj gap_03_00002AC6_rodata, global
.hidden gap_03_00002AC6_rodata
	.2byte 0x0000
.endobj gap_03_00002AC6_rodata

# .rodata:0x650 | 0x2AC8 | size: 0xE
.obj str_peach_aji_147_aji_00013930, local
	.string "peach_aji_147"
.endobj str_peach_aji_147_aji_00013930

# .rodata:0x65E | 0x2AD6 | size: 0x2
.obj gap_03_00002AD6_rodata, global
.hidden gap_03_00002AD6_rodata
	.2byte 0x0000
.endobj gap_03_00002AD6_rodata

# .rodata:0x660 | 0x2AD8 | size: 0xE
.obj str_peach_aji_148_aji_00013940, local
	.string "peach_aji_148"
.endobj str_peach_aji_148_aji_00013940

# .rodata:0x66E | 0x2AE6 | size: 0x2
.obj gap_03_00002AE6_rodata, global
.hidden gap_03_00002AE6_rodata
	.2byte 0x0000
.endobj gap_03_00002AE6_rodata

# .rodata:0x670 | 0x2AE8 | size: 0xE
.obj str_peach_aji_149_aji_00013950, local
	.string "peach_aji_149"
.endobj str_peach_aji_149_aji_00013950

# .rodata:0x67E | 0x2AF6 | size: 0x2
.obj gap_03_00002AF6_rodata, global
.hidden gap_03_00002AF6_rodata
	.2byte 0x0000
.endobj gap_03_00002AF6_rodata

# .rodata:0x680 | 0x2AF8 | size: 0xE
.obj str_peach_aji_150_aji_00013960, local
	.string "peach_aji_150"
.endobj str_peach_aji_150_aji_00013960

# .rodata:0x68E | 0x2B06 | size: 0x2
.obj gap_03_00002B06_rodata, global
.hidden gap_03_00002B06_rodata
	.2byte 0x0000
.endobj gap_03_00002B06_rodata

# .rodata:0x690 | 0x2B08 | size: 0xE
.obj str_peach_aji_151_aji_00013970, local
	.string "peach_aji_151"
.endobj str_peach_aji_151_aji_00013970

# .rodata:0x69E | 0x2B16 | size: 0x2
.obj gap_03_00002B16_rodata, global
.hidden gap_03_00002B16_rodata
	.2byte 0x0000
.endobj gap_03_00002B16_rodata

# .rodata:0x6A0 | 0x2B18 | size: 0x7
.obj str_aji_09_aji_00013980, local
	.string "aji_09"
.endobj str_aji_09_aji_00013980

# .rodata:0x6A7 | 0x2B1F | size: 0x1
.obj gap_03_00002B1F_rodata, global
.hidden gap_03_00002B1F_rodata
	.byte 0x00
.endobj gap_03_00002B1F_rodata

# .rodata:0x6A8 | 0x2B20 | size: 0x7
.obj str_s_bero_aji_00013988, local
	.string "s_bero"
.endobj str_s_bero_aji_00013988

# .rodata:0x6AF | 0x2B27 | size: 0x1
.obj gap_03_00002B27_rodata, global
.hidden gap_03_00002B27_rodata
	.byte 0x00
.endobj gap_03_00002B27_rodata

# .rodata:0x6B0 | 0x2B28 | size: 0x14
.obj str_peach_aji_166_00_01_aji_00013990, local
	.string "peach_aji_166_00_01"
.endobj str_peach_aji_166_00_01_aji_00013990

# .rodata:0x6C4 | 0x2B3C | size: 0x14
.obj str_peach_aji_166_00_02_aji_000139a4, local
	.string "peach_aji_166_00_02"
.endobj str_peach_aji_166_00_02_aji_000139a4

# .rodata:0x6D8 | 0x2B50 | size: 0x14
.obj str_peach_aji_166_00_03_aji_000139b8, local
	.string "peach_aji_166_00_03"
.endobj str_peach_aji_166_00_03_aji_000139b8

# .rodata:0x6EC | 0x2B64 | size: 0x14
.obj str_peach_aji_166_00_04_aji_000139cc, local
	.string "peach_aji_166_00_04"
.endobj str_peach_aji_166_00_04_aji_000139cc

# .rodata:0x700 | 0x2B78 | size: 0x14
.obj str_peach_aji_166_00_05_aji_000139e0, local
	.string "peach_aji_166_00_05"
.endobj str_peach_aji_166_00_05_aji_000139e0

# .rodata:0x714 | 0x2B8C | size: 0x14
.obj str_peach_aji_166_00_06_aji_000139f4, local
	.string "peach_aji_166_00_06"
.endobj str_peach_aji_166_00_06_aji_000139f4

# .rodata:0x728 | 0x2BA0 | size: 0x14
.obj str_peach_aji_166_00_07_aji_00013a08, local
	.string "peach_aji_166_00_07"
.endobj str_peach_aji_166_00_07_aji_00013a08

# .rodata:0x73C | 0x2BB4 | size: 0x7
.obj str_aji_17_aji_00013a1c, local
	.string "aji_17"
.endobj str_aji_17_aji_00013a1c

# .rodata:0x743 | 0x2BBB | size: 0x1
.obj gap_03_00002BBB_rodata, global
.hidden gap_03_00002BBB_rodata
	.byte 0x00
.endobj gap_03_00002BBB_rodata

# .rodata:0x744 | 0x2BBC | size: 0xE
.obj str_peach_aji_196_aji_00013a24, local
	.string "peach_aji_196"
.endobj str_peach_aji_196_aji_00013a24

# .rodata:0x752 | 0x2BCA | size: 0x2
.obj gap_03_00002BCA_rodata, global
.hidden gap_03_00002BCA_rodata
	.2byte 0x0000
.endobj gap_03_00002BCA_rodata

# .rodata:0x754 | 0x2BCC | size: 0xE
.obj str_peach_aji_197_aji_00013a34, local
	.string "peach_aji_197"
.endobj str_peach_aji_197_aji_00013a34

# .rodata:0x762 | 0x2BDA | size: 0x2
.obj gap_03_00002BDA_rodata, global
.hidden gap_03_00002BDA_rodata
	.2byte 0x0000
.endobj gap_03_00002BDA_rodata

# .rodata:0x764 | 0x2BDC | size: 0xE
.obj str_peach_aji_198_aji_00013a44, local
	.string "peach_aji_198"
.endobj str_peach_aji_198_aji_00013a44

# .rodata:0x772 | 0x2BEA | size: 0x2
.obj gap_03_00002BEA_rodata, global
.hidden gap_03_00002BEA_rodata
	.2byte 0x0000
.endobj gap_03_00002BEA_rodata

# .rodata:0x774 | 0x2BEC | size: 0xE
.obj str_peach_aji_199_aji_00013a54, local
	.string "peach_aji_199"
.endobj str_peach_aji_199_aji_00013a54

# .rodata:0x782 | 0x2BFA | size: 0x2
.obj gap_03_00002BFA_rodata, global
.hidden gap_03_00002BFA_rodata
	.2byte 0x0000
.endobj gap_03_00002BFA_rodata

# .rodata:0x784 | 0x2BFC | size: 0xE
.obj str_peach_aji_200_aji_00013a64, local
	.string "peach_aji_200"
.endobj str_peach_aji_200_aji_00013a64

# .rodata:0x792 | 0x2C0A | size: 0x2
.obj gap_03_00002C0A_rodata, global
.hidden gap_03_00002C0A_rodata
	.2byte 0x0000
.endobj gap_03_00002C0A_rodata

# .rodata:0x794 | 0x2C0C | size: 0xE
.obj str_peach_aji_201_aji_00013a74, local
	.string "peach_aji_201"
.endobj str_peach_aji_201_aji_00013a74

# .rodata:0x7A2 | 0x2C1A | size: 0x2
.obj gap_03_00002C1A_rodata, global
.hidden gap_03_00002C1A_rodata
	.2byte 0x0000
.endobj gap_03_00002C1A_rodata

# .rodata:0x7A4 | 0x2C1C | size: 0xE
.obj str_peach_aji_202_aji_00013a84, local
	.string "peach_aji_202"
.endobj str_peach_aji_202_aji_00013a84

# .rodata:0x7B2 | 0x2C2A | size: 0x2
.obj gap_03_00002C2A_rodata, global
.hidden gap_03_00002C2A_rodata
	.2byte 0x0000
.endobj gap_03_00002C2A_rodata

# .rodata:0x7B4 | 0x2C2C | size: 0xE
.obj str_peach_aji_203_aji_00013a94, local
	.string "peach_aji_203"
.endobj str_peach_aji_203_aji_00013a94

# .rodata:0x7C2 | 0x2C3A | size: 0x2
.obj gap_03_00002C3A_rodata, global
.hidden gap_03_00002C3A_rodata
	.2byte 0x0000
.endobj gap_03_00002C3A_rodata

# .rodata:0x7C4 | 0x2C3C | size: 0xE
.obj str_peach_aji_204_aji_00013aa4, local
	.string "peach_aji_204"
.endobj str_peach_aji_204_aji_00013aa4

# .rodata:0x7D2 | 0x2C4A | size: 0x2
.obj gap_03_00002C4A_rodata, global
.hidden gap_03_00002C4A_rodata
	.2byte 0x0000
.endobj gap_03_00002C4A_rodata

# .rodata:0x7D4 | 0x2C4C | size: 0xE
.obj str_peach_aji_205_aji_00013ab4, local
	.string "peach_aji_205"
.endobj str_peach_aji_205_aji_00013ab4

# .rodata:0x7E2 | 0x2C5A | size: 0x2
.obj gap_03_00002C5A_rodata, global
.hidden gap_03_00002C5A_rodata
	.2byte 0x0000
.endobj gap_03_00002C5A_rodata

# .rodata:0x7E4 | 0x2C5C | size: 0xE
.obj str_peach_aji_269_aji_00013ac4, local
	.string "peach_aji_269"
.endobj str_peach_aji_269_aji_00013ac4

# .rodata:0x7F2 | 0x2C6A | size: 0x2
.obj gap_03_00002C6A_rodata, global
.hidden gap_03_00002C6A_rodata
	.2byte 0x0000
.endobj gap_03_00002C6A_rodata

# .rodata:0x7F4 | 0x2C6C | size: 0xE
.obj str_peach_aji_270_aji_00013ad4, local
	.string "peach_aji_270"
.endobj str_peach_aji_270_aji_00013ad4

# .rodata:0x802 | 0x2C7A | size: 0x2
.obj gap_03_00002C7A_rodata, global
.hidden gap_03_00002C7A_rodata
	.2byte 0x0000
.endobj gap_03_00002C7A_rodata

# .rodata:0x804 | 0x2C7C | size: 0xE
.obj str_peach_aji_271_aji_00013ae4, local
	.string "peach_aji_271"
.endobj str_peach_aji_271_aji_00013ae4

# .rodata:0x812 | 0x2C8A | size: 0x2
.obj gap_03_00002C8A_rodata, global
.hidden gap_03_00002C8A_rodata
	.2byte 0x0000
.endobj gap_03_00002C8A_rodata

# .rodata:0x814 | 0x2C8C | size: 0xE
.obj str_peach_aji_272_aji_00013af4, local
	.string "peach_aji_272"
.endobj str_peach_aji_272_aji_00013af4

# .rodata:0x822 | 0x2C9A | size: 0x2
.obj gap_03_00002C9A_rodata, global
.hidden gap_03_00002C9A_rodata
	.2byte 0x0000
.endobj gap_03_00002C9A_rodata

# .rodata:0x824 | 0x2C9C | size: 0xE
.obj str_peach_aji_273_aji_00013b04, local
	.string "peach_aji_273"
.endobj str_peach_aji_273_aji_00013b04

# .rodata:0x832 | 0x2CAA | size: 0x2
.obj gap_03_00002CAA_rodata, global
.hidden gap_03_00002CAA_rodata
	.2byte 0x0000
.endobj gap_03_00002CAA_rodata

# .rodata:0x834 | 0x2CAC | size: 0xE
.obj str_peach_aji_274_aji_00013b14, local
	.string "peach_aji_274"
.endobj str_peach_aji_274_aji_00013b14

# .rodata:0x842 | 0x2CBA | size: 0x2
.obj gap_03_00002CBA_rodata, global
.hidden gap_03_00002CBA_rodata
	.2byte 0x0000
.endobj gap_03_00002CBA_rodata

# .rodata:0x844 | 0x2CBC | size: 0xE
.obj str_peach_aji_275_aji_00013b24, local
	.string "peach_aji_275"
.endobj str_peach_aji_275_aji_00013b24

# .rodata:0x852 | 0x2CCA | size: 0x2
.obj gap_03_00002CCA_rodata, global
.hidden gap_03_00002CCA_rodata
	.2byte 0x0000
.endobj gap_03_00002CCA_rodata

# .rodata:0x854 | 0x2CCC | size: 0xE
.obj str_peach_aji_276_aji_00013b34, local
	.string "peach_aji_276"
.endobj str_peach_aji_276_aji_00013b34

# .rodata:0x862 | 0x2CDA | size: 0x2
.obj gap_03_00002CDA_rodata, global
.hidden gap_03_00002CDA_rodata
	.2byte 0x0000
.endobj gap_03_00002CDA_rodata

# .rodata:0x864 | 0x2CDC | size: 0xE
.obj str_peach_aji_277_aji_00013b44, local
	.string "peach_aji_277"
.endobj str_peach_aji_277_aji_00013b44

# .rodata:0x872 | 0x2CEA | size: 0x2
.obj gap_03_00002CEA_rodata, global
.hidden gap_03_00002CEA_rodata
	.2byte 0x0000
.endobj gap_03_00002CEA_rodata

# .rodata:0x874 | 0x2CEC | size: 0xE
.obj str_peach_aji_278_aji_00013b54, local
	.string "peach_aji_278"
.endobj str_peach_aji_278_aji_00013b54

# .rodata:0x882 | 0x2CFA | size: 0x2
.obj gap_03_00002CFA_rodata, global
.hidden gap_03_00002CFA_rodata
	.2byte 0x0000
.endobj gap_03_00002CFA_rodata

# .rodata:0x884 | 0x2CFC | size: 0xE
.obj str_peach_aji_279_aji_00013b64, local
	.string "peach_aji_279"
.endobj str_peach_aji_279_aji_00013b64

# .rodata:0x892 | 0x2D0A | size: 0x2
.obj gap_03_00002D0A_rodata, global
.hidden gap_03_00002D0A_rodata
	.2byte 0x0000
.endobj gap_03_00002D0A_rodata

# .rodata:0x894 | 0x2D0C | size: 0xF
.obj str_peach_evt_stg6_aji_00013b74, local
	.string "peach_evt_stg6"
.endobj str_peach_evt_stg6_aji_00013b74

# .rodata:0x8A3 | 0x2D1B | size: 0x1
.obj gap_03_00002D1B_rodata, global
.hidden gap_03_00002D1B_rodata
	.byte 0x00
.endobj gap_03_00002D1B_rodata

# .rodata:0x8A4 | 0x2D1C | size: 0x11
.obj str_akari_charge_n64_aji_00013b84, local
	.string "akari_charge_n64"
.endobj str_akari_charge_n64_aji_00013b84

# .rodata:0x8B5 | 0x2D2D | size: 0x3
.obj gap_03_00002D2D_rodata, global
.hidden gap_03_00002D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D2D_rodata

# .rodata:0x8B8 | 0x2D30 | size: 0x3
.obj str_me_aji_00013b98, local
	.string "me"
.endobj str_me_aji_00013b98

# .rodata:0x8BB | 0x2D33 | size: 0x1
.obj gap_03_00002D33_rodata, global
.hidden gap_03_00002D33_rodata
	.byte 0x00
.endobj gap_03_00002D33_rodata

# .rodata:0x8BC | 0x2D34 | size: 0xE
.obj str_BGM_STG7_DUN1_aji_00013b9c, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_aji_00013b9c

# .rodata:0x8CA | 0x2D42 | size: 0x2
.obj gap_03_00002D42_rodata, global
.hidden gap_03_00002D42_rodata
	.2byte 0x0000
.endobj gap_03_00002D42_rodata

# .rodata:0x8CC | 0x2D44 | size: 0xE
.obj str_ENV_STG7_AJI5_aji_00013bac, local
	.string "ENV_STG7_AJI5"
.endobj str_ENV_STG7_AJI5_aji_00013bac

# .rodata:0x8DA | 0x2D52 | size: 0x2
.obj gap_03_00002D52_rodata, global
.hidden gap_03_00002D52_rodata
	.2byte 0x0000
.endobj gap_03_00002D52_rodata

# .rodata:0x8DC | 0x2D54 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00013bbc, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00013bbc

# .rodata:0x8EA | 0x2D62 | size: 0x2
.obj gap_03_00002D62_rodata, global
.hidden gap_03_00002D62_rodata
	.2byte 0x0000
.endobj gap_03_00002D62_rodata

# .rodata:0x8EC | 0x2D64 | size: 0xA
.obj str_npc_setup_aji_00013bcc, local
	.string "npc setup"
.endobj str_npc_setup_aji_00013bcc

# .rodata:0x8F6 | 0x2D6E | size: 0x2
.obj gap_03_00002D6E_rodata, global
.hidden gap_03_00002D6E_rodata
	.2byte 0x0000
.endobj gap_03_00002D6E_rodata

# .rodata:0x8F8 | 0x2D70 | size: 0x13
.obj str_バリアーンカスタム_aji_00013bd8, local
	.4byte 0x836F838A
	.4byte 0x8341815B
	.4byte 0x8393834A
	.4byte 0x8358835E
	.byte 0x83, 0x80, 0x00
.endobj str_バリアーンカスタム_aji_00013bd8

# .rodata:0x90B | 0x2D83 | size: 0x1
.obj gap_03_00002D83_rodata, global
.hidden gap_03_00002D83_rodata
	.byte 0x00
.endobj gap_03_00002D83_rodata

# .rodata:0x90C | 0x2D84 | size: 0x9
.obj str_c_zako_m_aji_00013bec, local
	.string "c_zako_m"
.endobj str_c_zako_m_aji_00013bec

# .rodata:0x915 | 0x2D8D | size: 0x3
.obj gap_03_00002D8D_rodata, global
.hidden gap_03_00002D8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D8D_rodata

# .rodata:0x918 | 0x2D90 | size: 0xF
.obj str_第三勢力研究員_aji_00013bf8, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x8CA48B86
	.byte 0x88, 0xF5, 0x00
.endobj str_第三勢力研究員_aji_00013bf8

# .rodata:0x927 | 0x2D9F | size: 0x1
.obj gap_03_00002D9F_rodata, global
.hidden gap_03_00002D9F_rodata
	.byte 0x00
.endobj gap_03_00002D9F_rodata

# .rodata:0x928 | 0x2DA0 | size: 0xA
.obj str_c_baria_c_aji_00013c08, local
	.string "c_baria_c"
.endobj str_c_baria_c_aji_00013c08

# .rodata:0x932 | 0x2DAA | size: 0x2
.obj gap_03_00002DAA_rodata, global
.hidden gap_03_00002DAA_rodata
	.2byte 0x0000
.endobj gap_03_00002DAA_rodata

# .rodata:0x934 | 0x2DAC | size: 0x5
.obj str_comp_aji_00013c14, local
	.string "comp"
.endobj str_comp_aji_00013c14

# .rodata:0x939 | 0x2DB1 | size: 0x3
.obj gap_03_00002DB1_rodata, global
.hidden gap_03_00002DB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002DB1_rodata

# .rodata:0x93C | 0x2DB4 | size: 0x5
.obj str_kabe_aji_00013c1c, local
	.string "kabe"
.endobj str_kabe_aji_00013c1c

# .rodata:0x941 | 0x2DB9 | size: 0x3
.obj gap_03_00002DB9_rodata, global
.hidden gap_03_00002DB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002DB9_rodata

# .rodata:0x944 | 0x2DBC | size: 0x7
.obj str_sikaku_aji_00013c24, local
	.string "sikaku"
.endobj str_sikaku_aji_00013c24

# .rodata:0x94B | 0x2DC3 | size: 0x1
.obj gap_03_00002DC3_rodata, global
.hidden gap_03_00002DC3_rodata
	.byte 0x00
.endobj gap_03_00002DC3_rodata

# .rodata:0x94C | 0x2DC4 | size: 0x8
.obj str_mozaiku_aji_00013c2c, local
	.string "mozaiku"
.endobj str_mozaiku_aji_00013c2c

# .rodata:0x954 | 0x2DCC | size: 0x5
.obj str_moji_aji_00013c34, local
	.string "moji"
.endobj str_moji_aji_00013c34
	.byte 0x00, 0x00, 0x00

# .rodata:0x95C | 0x2DD4 | size: 0x4
.obj zero_aji_00013c3c, local
	.float 0
.endobj zero_aji_00013c3c

# .rodata:0x960 | 0x2DD8 | size: 0x4
.obj float_70_aji_00013c40, local
	.float 70
.endobj float_70_aji_00013c40

# .rodata:0x964 | 0x2DDC | size: 0x4
.obj float_600_aji_00013c44, local
	.float 600
.endobj float_600_aji_00013c44

# .rodata:0x968 | 0x2DE0 | size: 0x4
.obj float_25_aji_00013c48, local
	.float 25
.endobj float_25_aji_00013c48

# .rodata:0x96C | 0x2DE4 | size: 0x4
.obj float_1p2667_aji_00013c4c, local
	.float 1.2666667
.endobj float_1p2667_aji_00013c4c

# .rodata:0x970 | 0x2DE8 | size: 0x4
.obj float_0p5_aji_00013c50, local
	.float 0.5
.endobj float_0p5_aji_00013c50

# .rodata:0x974 | 0x2DEC | size: 0x4
.obj float_1000_aji_00013c54, local
	.float 1000
.endobj float_1000_aji_00013c54

# .rodata:0x978 | 0x2DF0 | size: 0x4
.obj float_608_aji_00013c58, local
	.float 608
.endobj float_608_aji_00013c58

# .rodata:0x97C | 0x2DF4 | size: 0x4
.obj float_480_aji_00013c5c, local
	.float 480
.endobj float_480_aji_00013c5c

# .rodata:0x980 | 0x2DF8 | size: 0x4
.obj float_1_aji_00013c60, local
	.float 1
.endobj float_1_aji_00013c60

# .rodata:0x984 | 0x2DFC | size: 0x4
.obj float_60_aji_00013c64, local
	.float 60
.endobj float_60_aji_00013c64

# 0x00013DB8..0x00017DE0 | size: 0x4028
.data
.balign 8

# .data:0x0 | 0x13DB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13DC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x13DC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13DC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x13DCC | size: 0x4
.obj gap_04_00013DCC_data, global
.hidden gap_04_00013DCC_data
	.4byte 0x00000000
.endobj gap_04_00013DCC_data

# .data:0x18 | 0x13DD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13DD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x13DDC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13DE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13DE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x13DEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13DF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x13DF4 | size: 0x4
.obj gap_04_00013DF4_data, global
.hidden gap_04_00013DF4_data
	.4byte 0x00000000
.endobj gap_04_00013DF4_data

# .data:0x40 | 0x13DF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x13E00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x13E04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x13E08 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_A_aji_000132e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_B_aji_000132ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x13E60 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_A_aji_000132e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_w_B_aji_000132ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x13EB8 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_e_A_aji_000132f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_e_B_aji_00013304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x13F10 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_e_A_aji_000132f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_door_e_B_aji_00013304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x13F68 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00013310
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00013318
	.4byte str_e_bero3_aji_00013320
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_11_aji_00013330
	.4byte str_w_bero_aji_00013310
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x264 | 0x1401C | size: 0x78
.obj bero_peach_evt, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_みはり_aji_00013338
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_aji_00013340
	.4byte str_みはり_aji_00013338
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_peach_evt

# .data:0x2DC | 0x14094 | size: 0x78
.obj bero_peach_data, local
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_peach_evt
	.4byte str_aji_11_aji_00013330
	.4byte str_w_bero_aji_00013310
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_peach_data

# .data:0x354 | 0x1410C | size: 0x84
.obj monitor_on, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_monitor_aji_00013398
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_aji_00013398
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_SCREEN_OPE_aji_000133a0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_monitore_1_aji_000133b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_monitore_1_aji_000133b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00000001
.endobj monitor_on

# .data:0x3D8 | 0x14190 | size: 0x94
.obj monitor_off, local
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_monitore_2_aji_000133c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_monitore_2_aji_000133c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_aji_00013398
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x000A005B
	.4byte evt_snd_sfxon_3d_ex
	.4byte str_SFX_PEACH_SCREEN_SHU_aji_000133d0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C81
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_aji_00013398
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj monitor_off

# .data:0x46C | 0x14224 | size: 0xA4
.obj monitor_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_aji_00013398
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte monitor_cap_init
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000105
	.4byte 0x0002005B
	.4byte monitor_kanbu_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte monitor_kanbu_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte monitor_cap_evt
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte monitor_cap_tev
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_monitor_1_aji_000133e8
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_monitor_1_aji_000133e8
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj monitor_init

# .data:0x510 | 0x142C8 | size: 0x160C
.obj peach_evt_stg1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_fade_tec_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte viewport
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下３_aji_000133f4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カンブー_aji_00013404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_カンブー_aji_00013404
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_aji_00013428
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ビビアン_aji_00013434
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFE3E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_aji_00013428
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_aji_00013434
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEC0
	.4byte 0x0000007B
	.4byte 0x000001AF
	.4byte 0xFFFFFEC0
	.4byte 0x0000002D
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x0000012F
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000260
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte viewport
	.4byte 0xFE363C80
	.4byte 0x000000F0
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x000000EF
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000001E0
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte viewport
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000260
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte viewport
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0001000A
	.4byte 0x000001F4
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
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte w_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte w_door_close
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFFFFFEC5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEA7
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFE89
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000006D6
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_P_1_aji_00013440
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下３_aji_000133f4
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_S_1_aji_0001345c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下３_aji_000133f4
	.4byte str_S_1_aji_0001345c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFED1
	.4byte 0x00000000
	.4byte 0x00000054
	.4byte 0x0001005B
	.4byte evt_mario_wait_move_end
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF5B
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFF3D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000DAC
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000007B
	.4byte 0x000001AF
	.4byte 0x0000003C
	.4byte 0x0000002D
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000006A4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_カンブー_aji_00013404
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下３_aji_000133f4
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000AF0
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下３_aji_000133f4
	.4byte 0x0000005A
	.4byte 0xFFFFFFCE
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000001E
	.4byte 0xFFFFFFCE
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_00_01_aji_00013460
	.4byte 0x00000000
	.4byte str_手下３_aji_000133f4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x00000050
	.4byte 0x000000E9
	.4byte 0x0000003C
	.4byte 0x00000025
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_PEACH_PIC_BIRIBI_aji_00013470
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00013340
	.4byte str_pokopi_thunder_n64_aji_00013488
	.4byte 0x0000000B
	.4byte 0x0000001E
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000050
	.4byte 0xFFFFFF88
	.4byte 0x00000078
	.4byte 0xF24A8680
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000E6
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00013340
	.4byte str_pokopi_thunder_n64_aji_00013488
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000078
	.4byte 0xF24A8680
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000E6
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00013340
	.4byte str_pokopi_thunder_n64_aji_00013488
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x0000004B
	.4byte 0x00000078
	.4byte 0x0000006E
	.4byte 0x00000037
	.4byte 0x00000078
	.4byte 0xF24A8680
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002DA
	.4byte 0x0003005B
	.4byte evt_fade_tec_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_00_aji_0001349c
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_01_aji_000134ac
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x0000003C
	.4byte 0x0000002B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_02_aji_000134bc
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_03_aji_000134d4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_04_aji_000134e4
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000007D
	.4byte 0x000000E2
	.4byte 0x00000240
	.4byte 0x0000007D
	.4byte 0x0000006E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte monitor_on
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下１_aji_000134f4
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_1_aji_000133e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_snd_sfx_dist
	.4byte 0xFE363C83
	.4byte 0x00000007
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下１_aji_000134f4
	.4byte str_S_1_aji_0001345c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_1_aji_000133e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_05_aji_000134fc
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_06_aji_0001350c
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_1_aji_000133e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_07_aji_0001351c
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000A0
	.4byte 0x000000B5
	.4byte 0x0000017B
	.4byte 0x000000A0
	.4byte 0x00000067
	.4byte 0xFFFFFFF3
	.4byte 0x000002BC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_08_aji_0001352c
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_1_aji_000133e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_09_aji_0001353c
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_10_aji_0001354c
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000BE
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_11_aji_0001355c
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x00000055
	.4byte 0x000000E9
	.4byte 0x0000003C
	.4byte 0x0000002A
	.4byte 0xFFFFFFF3
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_SAD2_aji_0001356c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000134cc
	.4byte str_P_B_2_aji_00013584
	.4byte str_P_T_7_aji_0001358c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_12_aji_00013594
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_C_1_aji_000135a4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000082
	.4byte 0x000000A2
	.4byte 0x000001AD
	.4byte 0x00000082
	.4byte 0x0000004B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_13_aji_000135ac
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_14_aji_000135bc
	.4byte 0x00000000
	.4byte str_手下３_aji_000133f4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下３_aji_000133f4
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_15_aji_000135cc
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_16_aji_000135dc
	.4byte 0x00000000
	.4byte str_手下３_aji_000133f4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_P_1_aji_00013440
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下３_aji_000133f4
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下３_aji_000133f4
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_S_1_aji_0001345c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下３_aji_000133f4
	.4byte str_S_1_aji_0001345c
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_000135ec
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下３_aji_000133f4
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_手下３_aji_000133f4
	.4byte 0x00000080
	.4byte 0x0001005E
	.4byte monitor_off
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_17_aji_000135f4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000077
	.4byte 0x000000B7
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_17_01_aji_00013604
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_18_aji_00013614
	.4byte 0x00000000
	.4byte str_カンブー_aji_00013404
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カンブー_aji_00013404
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_カンブー_aji_00013404
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_カンブー_aji_00013404
	.4byte 0x00000080
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000C8
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_19_aji_00013624
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_20_aji_00013634
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000082
	.4byte 0x000000A2
	.4byte 0x000001AD
	.4byte 0x00000082
	.4byte 0x0000004B
	.4byte 0xFFFFFFF3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_S_1_aji_0001345c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_21_aji_00013644
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_22_aji_00013654
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_aji_00013340
	.4byte str_手下２_aji_000133fc
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
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_23_aji_00013664
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_24_aji_00013674
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_25_aji_00013684
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_S_1_aji_0001345c
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_手下２_aji_000133fc
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_25_01_aji_00013694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x00000028
	.4byte 0x0000002B
	.4byte 0xFFFFFFF3
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_npc_majo_disp_on
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_npc_majo_disp_on
	.4byte str_マリリン_aji_00013428
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_npc_majo_disp_on
	.4byte str_ビビアン_aji_00013434
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_26_aji_000136a4
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_27_aji_000136b4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x00000028
	.4byte 0x0000002B
	.4byte 0xFFFFFFF3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_28_aji_000136c4
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000082
	.4byte 0x000000A2
	.4byte 0x000001AD
	.4byte 0x00000082
	.4byte 0x0000004B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_29_aji_000136d4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x00000028
	.4byte 0x0000002B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_30_aji_000136e4
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_31_aji_000136f4
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_32_aji_00013704
	.4byte 0x00000000
	.4byte str_マリリン_aji_00013428
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_マリリン_aji_00013428
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_aji_00013434
	.4byte str_PTR_A1_1_aji_00013714
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_33_aji_00013720
	.4byte 0x00000000
	.4byte str_ビビアン_aji_00013434
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_ビビアン_aji_00013434
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_fade_tec_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_01_aji_00013318
	.4byte str_peach_evt_stg1_aji_00013730
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1

# .data:0x1B1C | 0x158D4 | size: 0x73C
.obj peach_evt_stg2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_研究員_aji_00013740
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_研究員_aji_00013740
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_研究員_aji_00013740
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_研究員_aji_00013740
	.4byte 0x00008000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_01_aji_00013748
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005A
	.4byte 0x0000011B
	.4byte 0x0000003C
	.4byte 0x00000026
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_02_aji_00013758
	.4byte 0x00000000
	.4byte str_研究員_aji_00013740
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEA2
	.4byte 0x0000005A
	.4byte 0x0000011B
	.4byte 0xFFFFFEA2
	.4byte 0x00000026
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte w_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
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
	.4byte w_door_close
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_S_1_aji_0001345c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_03_aji_00013768
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFEFC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_研究員_aji_00013740
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000087
	.4byte 0x000000AA
	.4byte 0x000001DE
	.4byte 0x00000087
	.4byte 0x00000054
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_04_aji_00013778
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_05_aji_00013788
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_06_aji_00013798
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_07_aji_000137a8
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_08_aji_000137b8
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005A
	.4byte 0x0000011B
	.4byte 0x0000003C
	.4byte 0x00000026
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_09_aji_000137c8
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_10_aji_000137d8
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000087
	.4byte 0x000000AA
	.4byte 0x000001DE
	.4byte 0x00000087
	.4byte 0x00000054
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_11_aji_000137e8
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下２_aji_000133fc
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下２_aji_000133fc
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下２_aji_000133fc
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_12_aji_000137f8
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_13_aji_00013808
	.4byte 0x00000000
	.4byte str_研究員_aji_00013740
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_研究員_aji_00013740
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_研究員_aji_00013740
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_研究員_aji_00013740
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_研究員_aji_00013740
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_72_14_aji_00013818
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_16_aji_00013828
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg2

# .data:0x2258 | 0x16010 | size: 0x3EC
.obj peach_evt_stg3, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_aji_00013428
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_aji_00013428
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マリリン_aji_00013428
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ビビアン_aji_00013434
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_aji_00013434
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ビビアン_aji_00013434
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マリリン_aji_00013428
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ビビアン_aji_00013434
	.4byte 0x00008000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_103_aji_00013830
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x00000028
	.4byte 0x0000002B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_104_aji_00013840
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_105_aji_00013850
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_106_aji_00013860
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000078
	.4byte 0x000000AC
	.4byte 0x000001DE
	.4byte 0x00000078
	.4byte 0x0000004B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_107_aji_00013870
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_108_aji_00013880
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000005F
	.4byte 0x0000011B
	.4byte 0x00000028
	.4byte 0x0000002B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_109_aji_00013890
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_110_aji_000138a0
	.4byte 0x00000000
	.4byte str_マリリン_aji_00013428
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_マリリン_aji_00013428
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_aji_00013434
	.4byte str_PTR_A1_1_aji_00013714
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_111_aji_000138b0
	.4byte 0x00000000
	.4byte str_ビビアン_aji_00013434
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_ビビアン_aji_00013434
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_16_aji_00013828
	.4byte str_peach_evt_stg3_aji_000138c0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg3

# .data:0x2644 | 0x163FC | size: 0x120
.obj peach_move, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000023
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF1
	.4byte 0x00000046
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFF7E
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF7E
	.4byte 0xFE363C82
	.4byte 0x00000046
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_move

# .data:0x2764 | 0x1651C | size: 0x228
.obj peach_evt_stg3_syuryo_talk, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_シュリョー_aji_00013410
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte peach_move
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_シュリョー_aji_00013410
	.4byte str_mario_aji_000134cc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_141_aji_000138d0
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_142_aji_000138e0
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF83
	.4byte 0x00000074
	.4byte 0x00000176
	.4byte 0xFFFFFF83
	.4byte 0x00000039
	.4byte 0xFFFFFFEE
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_143_aji_000138f0
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_144_aji_00013900
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_145_aji_00013910
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_146_aji_00013920
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_147_aji_00013930
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_148_aji_00013940
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_149_aji_00013950
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_150_aji_00013960
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_151_aji_00013970
	.4byte 0x00000000
	.4byte str_mario_aji_000134cc
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000A8
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_09_aji_00013980
	.4byte str_s_bero_aji_00013988
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg3_syuryo_talk

# .data:0x298C | 0x16744 | size: 0x3AC
.obj peach_evt_stg4, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_研究員_aji_00013740
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_研究員_aji_00013740
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_研究員_aji_00013740
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_研究員_aji_00013740
	.4byte 0x00008000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_01_aji_00013990
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005A
	.4byte 0x0000011B
	.4byte 0x0000003C
	.4byte 0x00000026
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_02_aji_000139a4
	.4byte 0x00000000
	.4byte str_研究員_aji_00013740
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_03_aji_000139b8
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000087
	.4byte 0x000000AA
	.4byte 0x000001DE
	.4byte 0x00000087
	.4byte 0x00000054
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_04_aji_000139cc
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_05_aji_000139e0
	.4byte 0x00000000
	.4byte str_研究員_aji_00013740
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_研究員_aji_00013740
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_研究員_aji_00013740
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_研究員_aji_00013740
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_研究員_aji_00013740
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_研究員_aji_00013740
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_06_aji_000139f4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_166_00_07_aji_00013a08
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_17_aji_00013a1c
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg4

# .data:0x2D38 | 0x16AF0 | size: 0x464
.obj peach_evt_stg5, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFFFFFE89
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_monitor_aji_00013398
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_monitore_1_aji_000133b8
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_196_aji_00013a24
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000A5
	.4byte 0x0000004D
	.4byte 0x000001E1
	.4byte 0x000000A5
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_1_aji_000133e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_197_aji_00013a34
	.4byte 0x00000000
	.4byte str_カンブー_aji_00013404
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_198_aji_00013a44
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_monitor_1_aji_000133e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_199_aji_00013a54
	.4byte 0x00000000
	.4byte str_カンブー_aji_00013404
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_200_aji_00013a64
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001005E
	.4byte monitor_off
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_201_aji_00013a74
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000A5
	.4byte 0x000000AA
	.4byte 0x00000212
	.4byte 0x000000A5
	.4byte 0x00000055
	.4byte 0xFFFFFFF3
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000134f4
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_202_aji_00013a84
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_203_aji_00013a94
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_204_aji_00013aa4
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_手下１_aji_000134f4
	.4byte str_P_1_aji_00013440
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_3RD_BATTEN_aji_00013444
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下１_aji_000134f4
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_手下１_aji_000134f4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000CA
	.4byte 0x000000BD
	.4byte 0x000000EA
	.4byte 0x000000CA
	.4byte 0x00000050
	.4byte 0xFFFFFFF3
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_205_aji_00013ab4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_17_aji_00013a1c
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg5

# .data:0x319C | 0x16F54 | size: 0x574
.obj peach_evt_stg6, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_aji_00013410
	.4byte 0x000000D2
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_手下１_aji_000134f4
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_手下１_aji_000134f4
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x00008000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_269_aji_00013ac4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005A
	.4byte 0x0000011B
	.4byte 0x0000003C
	.4byte 0x00000026
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_270_aji_00013ad4
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000087
	.4byte 0x000000AA
	.4byte 0x000001DE
	.4byte 0x00000087
	.4byte 0x00000054
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_271_aji_00013ae4
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_272_aji_00013af4
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000C8
	.4byte 0x00000082
	.4byte 0x0000011B
	.4byte 0x000000C8
	.4byte 0x0000004E
	.4byte 0xFFFFFFF3
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_273_aji_00013b04
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000087
	.4byte 0x000000AA
	.4byte 0x000001DE
	.4byte 0x00000087
	.4byte 0x00000054
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_274_aji_00013b14
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_275_aji_00013b24
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BE
	.4byte 0x00000096
	.4byte 0x00000162
	.4byte 0x000000BE
	.4byte 0x0000004B
	.4byte 0xFFFFFFF3
	.4byte 0x000004B0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000134f4
	.4byte 0x00000073
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BF680
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_手下１_aji_000134f4
	.4byte 0x40000020
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x40000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000134f4
	.4byte 0x00000091
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0xF24BF680
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_手下１_aji_000134f4
	.4byte 0x40000000
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_手下１_aji_000134f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000134f4
	.4byte 0x000000A5
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0xF24BF680
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_276_aji_00013b34
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_手下１_aji_000134f4
	.4byte 0x000000A0
	.4byte 0xFFFFFFFB
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_277_aji_00013b44
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_278_aji_00013b54
	.4byte 0x00000000
	.4byte str_手下１_aji_000134f4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_279_aji_00013b64
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000111
	.4byte 0x000003CC
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0xFFFFFFF3
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_16_aji_00013828
	.4byte str_peach_evt_stg6_aji_00013b74
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg6

# .data:0x3710 | 0x174C8 | size: 0x90
.obj eff_test, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_fade_tec_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00013340
	.4byte str_akari_charge_n64_aji_00013b84
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x0000005F
	.4byte 0x000000C8
	.4byte 0xF24A8480
	.4byte 0x00000030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_fade_tec_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj eff_test

# .data:0x37A0 | 0x17558 | size: 0x24
.obj teshita1_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00013b98
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita1_init

# .data:0x37C4 | 0x1757C | size: 0x24
.obj teshita2_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00013b98
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita2_init

# .data:0x37E8 | 0x175A0 | size: 0x24
.obj teshita3_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00013b98
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj teshita3_init

# .data:0x380C | 0x175C4 | size: 0x24
.obj kanbu_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_aji_00013b98
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kanbu_init

# .data:0x3830 | 0x175E8 | size: 0x60
.obj syuryo_init, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_aji_00013b98
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_aji_00013b98
	.4byte 0x00000006
	.4byte peach_evt_stg3_syuryo_talk
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_aji_00013b98
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj syuryo_init

# .data:0x3890 | 0x17648 | size: 0x33C
.obj npcEnt, local
	.4byte str_手下１_aji_000134f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte teshita1_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_手下２_aji_000133fc
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte teshita2_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_手下３_aji_000133f4
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte teshita3_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カンブー_aji_00013404
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte kanbu_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_シュリョー_aji_00013410
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte syuryo_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マジョリン_aji_0001341c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マリリン_aji_00013428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ビビアン_aji_00013434
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x3BCC | 0x17984 | size: 0x45C
.obj aji_10_init_evt_2_data_17984, global
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000160
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_aji_00013b9c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI5_aji_00013bac
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00013bbc
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI5_aji_00013bac
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_monitor_aji_00013398
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000160
	.4byte 0x00010071
	.4byte str_npc_setup_aji_00013bcc
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_バリアーンカスタム_aji_00013bd8
	.4byte 0x0002005B
	.4byte evt_shuryolight_init_2_text_B914
	.4byte str_シュリョー_aji_00013410
	.4byte 0x0004005B
	.4byte evt_shuryolight_run_evt_2_text_B5DC
	.4byte shuryolight_pow_normal_2_data_370A8
	.4byte shuryolight_head_normal_2_data_371D4
	.4byte shuryolight_tue_normal_2_data_372D4
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x00000038
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte monitor_init
	.4byte 0x0001005C
	.4byte peach_evt_stg1
	.4byte 0x00010024
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_研究員_aji_00013740
	.4byte str_c_zako_m_aji_00013bec
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_研究員_aji_00013740
	.4byte str_第三勢力研究員_aji_00013bf8
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_研究員_aji_00013740
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_研究員_aji_00013740
	.4byte 0x00000600
	.4byte 0x0001005C
	.4byte peach_evt_stg2
	.4byte 0x00010024
	.4byte 0x000000A4
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte peach_evt_stg3
	.4byte 0x00010024
	.4byte 0x000000A7
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x000000D6
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_研究員_aji_00013740
	.4byte str_c_zako_m_aji_00013bec
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_研究員_aji_00013740
	.4byte str_第三勢力研究員_aji_00013bf8
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_研究員_aji_00013740
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_研究員_aji_00013740
	.4byte 0x00000600
	.4byte 0x0001005C
	.4byte peach_evt_stg4
	.4byte 0x00010024
	.4byte 0x00000105
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte monitor_init
	.4byte 0x0001005C
	.4byte peach_evt_stg5
	.4byte 0x0002002F
	.4byte 0x00000107
	.4byte 0x00000108
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte peach_evt_toumei
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_みはり_aji_00013338
	.4byte str_c_baria_c_aji_00013c08
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_みはり_aji_00013338
	.4byte str_バリアーンカスタム_aji_00013bd8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_みはり_aji_00013338
	.4byte 0x00000172
	.4byte 0x0000003C
	.4byte 0xFFFFFFBF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_みはり_aji_00013338
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_みはり_aji_00013338
	.4byte 0x00000600
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_aji_00013328
	.4byte bero_peach_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0000006D
	.4byte 0x00010024
	.4byte 0x00000153
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte peach_evt_stg6
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_comp_aji_00013c14
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kabe_aji_00013c1c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sikaku_aji_00013c24
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mozaiku_aji_00013c2c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_moji_aji_00013c34
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_バリアーンカスタム_aji_00013bd8
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF8406BE3
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BE3
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406BEC
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_peach_transform_gundan_on
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A7
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000107
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000108
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00013328
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_10_init_evt_2_data_17984

# 0x00000130..0x00000138 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x130 | size: 0x4
.obj monitor_wp, local
	.skip 0x4
.endobj monitor_wp

# .bss:0x4 | 0x134 | size: 0x4
.obj gap_05_00000134_bss, global
.hidden gap_05_00000134_bss
	.skip 0x4
.endobj gap_05_00000134_bss
