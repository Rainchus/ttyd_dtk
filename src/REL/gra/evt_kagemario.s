.include "macros.inc"
.file "evt_kagemario.o"

# 0x0000071C..0x00000B28 | size: 0x40C
.text
.balign 4

# .text:0x0 | 0x71C | size: 0x40
.fn test, local
/* 0000071C 000007E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000720 000007E4  7C 08 02 A6 */	mflr r0
/* 00000724 000007E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000728 000007EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000072C 000007F0  3B E0 00 00 */	li r31, 0x0
/* 00000730 000007F4  4B FF FD E1 */	bl marioGetPtr
/* 00000734 000007F8  9B E3 02 47 */	stb r31, 0x247(r3)
/* 00000738 000007FC  3B E0 00 00 */	li r31, 0x0
/* 0000073C 00000800  4B FF FD D5 */	bl marioGetPtr
/* 00000740 00000804  9B E3 02 48 */	stb r31, 0x248(r3)
/* 00000744 00000808  38 60 00 02 */	li r3, 0x2
/* 00000748 0000080C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000074C 00000810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000750 00000814  7C 08 03 A6 */	mtlr r0
/* 00000754 00000818  38 21 00 10 */	addi r1, r1, 0x10
/* 00000758 0000081C  4E 80 00 20 */	blr
.endfn test

# .text:0x40 | 0x75C | size: 0xC4
.fn evt_kagemario_change, local
/* 0000075C 00000820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000760 00000824  7C 08 02 A6 */	mflr r0
/* 00000764 00000828  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000768 0000082C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000076C 00000830  80 63 00 18 */	lwz r3, 0x18(r3)
/* 00000770 00000834  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00000774 00000838  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000778 0000083C  40 82 00 44 */	bne .L_000007BC
/* 0000077C 00000840  3B C0 00 00 */	li r30, 0x0
/* 00000780 00000844  7F DF F3 78 */	mr r31, r30
.L_00000784:
/* 00000784 00000848  4B FF FD 8D */	bl marioGetPtr
/* 00000788 0000084C  38 1F 02 2C */	addi r0, r31, 0x22c
/* 0000078C 00000850  3C 80 0A 00 */	lis r4, 0xa00
/* 00000790 00000854  7C 63 00 2E */	lwzx r3, r3, r0
/* 00000794 00000858  4B FF FD 7D */	bl animPoseSetMaterialFlagOff
/* 00000798 0000085C  3B DE 00 01 */	addi r30, r30, 0x1
/* 0000079C 00000860  3B FF 00 04 */	addi r31, r31, 0x4
/* 000007A0 00000864  2C 1E 00 03 */	cmpwi r30, 0x3
/* 000007A4 00000868  41 80 FF E0 */	blt .L_00000784
/* 000007A8 0000086C  4B FF FD 69 */	bl marioGetPtr
/* 000007AC 00000870  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000007B0 00000874  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 000007B4 00000878  90 03 00 00 */	stw r0, 0x0(r3)
/* 000007B8 0000087C  48 00 00 50 */	b .L_00000808
.L_000007BC:
/* 000007BC 00000880  3C 80 00 00 */	lis r4, callback@ha
/* 000007C0 00000884  38 60 00 0A */	li r3, 0xa
/* 000007C4 00000888  38 84 00 00 */	addi r4, r4, callback@l
/* 000007C8 0000088C  4B FF FD 49 */	bl mapSetTevCallback
/* 000007CC 00000890  3B C0 00 00 */	li r30, 0x0
/* 000007D0 00000894  3B E0 00 00 */	li r31, 0x0
.L_000007D4:
/* 000007D4 00000898  4B FF FD 3D */	bl marioGetPtr
/* 000007D8 0000089C  38 1F 02 2C */	addi r0, r31, 0x22c
/* 000007DC 000008A0  3C 80 0A 00 */	lis r4, 0xa00
/* 000007E0 000008A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 000007E4 000008A8  4B FF FD 2D */	bl animPoseSetMaterialFlagOn
/* 000007E8 000008AC  3B DE 00 01 */	addi r30, r30, 0x1
/* 000007EC 000008B0  3B FF 00 04 */	addi r31, r31, 0x4
/* 000007F0 000008B4  2C 1E 00 03 */	cmpwi r30, 0x3
/* 000007F4 000008B8  41 80 FF E0 */	blt .L_000007D4
/* 000007F8 000008BC  4B FF FD 19 */	bl marioGetPtr
/* 000007FC 000008C0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00000800 000008C4  64 00 40 00 */	oris r0, r0, 0x4000
/* 00000804 000008C8  90 03 00 00 */	stw r0, 0x0(r3)
.L_00000808:
/* 00000808 000008CC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000080C 000008D0  38 60 00 02 */	li r3, 0x2
/* 00000810 000008D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000814 000008D8  7C 08 03 A6 */	mtlr r0
/* 00000818 000008DC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000081C 000008E0  4E 80 00 20 */	blr
.endfn evt_kagemario_change

# .text:0x104 | 0x820 | size: 0xE4
.fn evt_kagemario_init_10_text_820, global
/* 00000820 000008E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000824 000008E8  7C 08 02 A6 */	mflr r0
/* 00000828 000008EC  38 60 00 00 */	li r3, 0x0
/* 0000082C 000008F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000830 000008F4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000834 000008F8  4B FF FC DD */	bl swByteGet
/* 00000838 000008FC  2C 03 00 C9 */	cmpwi r3, 0xc9
/* 0000083C 00000900  41 80 00 74 */	blt .L_000008B0
/* 00000840 00000904  2C 03 00 D4 */	cmpwi r3, 0xd4
/* 00000844 00000908  40 80 00 6C */	bge .L_000008B0
/* 00000848 0000090C  3C 80 00 00 */	lis r4, callback@ha
/* 0000084C 00000910  38 60 00 0A */	li r3, 0xa
/* 00000850 00000914  38 84 00 00 */	addi r4, r4, callback@l
/* 00000854 00000918  4B FF FC BD */	bl mapSetTevCallback
/* 00000858 0000091C  3B C0 00 00 */	li r30, 0x0
/* 0000085C 00000920  7F DF F3 78 */	mr r31, r30
.L_00000860:
/* 00000860 00000924  4B FF FC B1 */	bl marioGetPtr
/* 00000864 00000928  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00000868 0000092C  3C 80 0A 00 */	lis r4, 0xa00
/* 0000086C 00000930  7C 63 00 2E */	lwzx r3, r3, r0
/* 00000870 00000934  4B FF FC A1 */	bl animPoseSetMaterialFlagOn
/* 00000874 00000938  3B DE 00 01 */	addi r30, r30, 0x1
/* 00000878 0000093C  3B FF 00 04 */	addi r31, r31, 0x4
/* 0000087C 00000940  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00000880 00000944  41 80 FF E0 */	blt .L_00000860
/* 00000884 00000948  4B FF FC 8D */	bl marioGetPtr
/* 00000888 0000094C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 0000088C 00000950  3C 80 00 00 */	lis r4, evt_check@ha
/* 00000890 00000954  38 04 00 00 */	addi r0, r4, evt_check@l
/* 00000894 00000958  38 80 00 00 */	li r4, 0x0
/* 00000898 0000095C  64 A6 40 00 */	oris r6, r5, 0x4000
/* 0000089C 00000960  38 A0 00 00 */	li r5, 0x0
/* 000008A0 00000964  90 C3 00 00 */	stw r6, 0x0(r3)
/* 000008A4 00000968  7C 03 03 78 */	mr r3, r0
/* 000008A8 0000096C  4B FF FC 69 */	bl evtEntry
/* 000008AC 00000970  48 00 00 40 */	b .L_000008EC
.L_000008B0:
/* 000008B0 00000974  3B C0 00 00 */	li r30, 0x0
/* 000008B4 00000978  3B E0 00 00 */	li r31, 0x0
.L_000008B8:
/* 000008B8 0000097C  4B FF FC 59 */	bl marioGetPtr
/* 000008BC 00000980  38 1F 02 2C */	addi r0, r31, 0x22c
/* 000008C0 00000984  3C 80 0A 00 */	lis r4, 0xa00
/* 000008C4 00000988  7C 63 00 2E */	lwzx r3, r3, r0
/* 000008C8 0000098C  4B FF FC 49 */	bl animPoseSetMaterialFlagOff
/* 000008CC 00000990  3B DE 00 01 */	addi r30, r30, 0x1
/* 000008D0 00000994  3B FF 00 04 */	addi r31, r31, 0x4
/* 000008D4 00000998  2C 1E 00 03 */	cmpwi r30, 0x3
/* 000008D8 0000099C  41 80 FF E0 */	blt .L_000008B8
/* 000008DC 000009A0  4B FF FC 35 */	bl marioGetPtr
/* 000008E0 000009A4  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000008E4 000009A8  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 000008E8 000009AC  90 03 00 00 */	stw r0, 0x0(r3)
.L_000008EC:
/* 000008EC 000009B0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000008F0 000009B4  38 60 00 02 */	li r3, 0x2
/* 000008F4 000009B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000008F8 000009BC  7C 08 03 A6 */	mtlr r0
/* 000008FC 000009C0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000900 000009C4  4E 80 00 20 */	blr
.endfn evt_kagemario_init_10_text_820

# .text:0x1E8 | 0x904 | size: 0x44
.fn check, local
/* 00000904 000009C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000908 000009CC  7C 08 02 A6 */	mflr r0
/* 0000090C 000009D0  38 60 00 00 */	li r3, 0x0
/* 00000910 000009D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000914 000009D8  4B FF FB FD */	bl partyGetPtr
/* 00000918 000009DC  28 03 00 00 */	cmplwi r3, 0x0
/* 0000091C 000009E0  41 82 00 18 */	beq .L_00000934
/* 00000920 000009E4  38 60 00 00 */	li r3, 0x0
/* 00000924 000009E8  4B FF FB ED */	bl partyGetPtr
/* 00000928 000009EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000092C 000009F0  3C 80 0A 00 */	lis r4, 0xa00
/* 00000930 000009F4  4B FF FB E1 */	bl animPoseSetMaterialFlagOff
.L_00000934:
/* 00000934 000009F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000938 000009FC  38 60 00 00 */	li r3, 0x0
/* 0000093C 00000A00  7C 08 03 A6 */	mtlr r0
/* 00000940 00000A04  38 21 00 10 */	addi r1, r1, 0x10
/* 00000944 00000A08  4E 80 00 20 */	blr
.endfn check

# .text:0x22C | 0x948 | size: 0xBC
.fn color_change_evt, local
/* 00000948 00000A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000094C 00000A10  7C 08 02 A6 */	mflr r0
/* 00000950 00000A14  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000954 00000A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000958 00000A1C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000095C 00000A20  40 82 00 44 */	bne .L_000009A0
/* 00000960 00000A24  3B C0 00 00 */	li r30, 0x0
/* 00000964 00000A28  3B E0 00 00 */	li r31, 0x0
.L_00000968:
/* 00000968 00000A2C  4B FF FB A9 */	bl marioGetPtr
/* 0000096C 00000A30  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00000970 00000A34  3C 80 0A 00 */	lis r4, 0xa00
/* 00000974 00000A38  7C 63 00 2E */	lwzx r3, r3, r0
/* 00000978 00000A3C  4B FF FB 99 */	bl animPoseSetMaterialFlagOff
/* 0000097C 00000A40  3B DE 00 01 */	addi r30, r30, 0x1
/* 00000980 00000A44  3B FF 00 04 */	addi r31, r31, 0x4
/* 00000984 00000A48  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00000988 00000A4C  41 80 FF E0 */	blt .L_00000968
/* 0000098C 00000A50  4B FF FB 85 */	bl marioGetPtr
/* 00000990 00000A54  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00000994 00000A58  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 00000998 00000A5C  90 03 00 00 */	stw r0, 0x0(r3)
/* 0000099C 00000A60  48 00 00 50 */	b .L_000009EC
.L_000009A0:
/* 000009A0 00000A64  3C 80 00 00 */	lis r4, callback@ha
/* 000009A4 00000A68  38 60 00 0A */	li r3, 0xa
/* 000009A8 00000A6C  38 84 00 00 */	addi r4, r4, callback@l
/* 000009AC 00000A70  4B FF FB 65 */	bl mapSetTevCallback
/* 000009B0 00000A74  3B C0 00 00 */	li r30, 0x0
/* 000009B4 00000A78  3B E0 00 00 */	li r31, 0x0
.L_000009B8:
/* 000009B8 00000A7C  4B FF FB 59 */	bl marioGetPtr
/* 000009BC 00000A80  38 1F 02 2C */	addi r0, r31, 0x22c
/* 000009C0 00000A84  3C 80 0A 00 */	lis r4, 0xa00
/* 000009C4 00000A88  7C 63 00 2E */	lwzx r3, r3, r0
/* 000009C8 00000A8C  4B FF FB 49 */	bl animPoseSetMaterialFlagOn
/* 000009CC 00000A90  3B DE 00 01 */	addi r30, r30, 0x1
/* 000009D0 00000A94  3B FF 00 04 */	addi r31, r31, 0x4
/* 000009D4 00000A98  2C 1E 00 03 */	cmpwi r30, 0x3
/* 000009D8 00000A9C  41 80 FF E0 */	blt .L_000009B8
/* 000009DC 00000AA0  4B FF FB 35 */	bl marioGetPtr
/* 000009E0 00000AA4  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000009E4 00000AA8  64 00 40 00 */	oris r0, r0, 0x4000
/* 000009E8 00000AAC  90 03 00 00 */	stw r0, 0x0(r3)
.L_000009EC:
/* 000009EC 00000AB0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000009F0 00000AB4  38 60 00 00 */	li r3, 0x0
/* 000009F4 00000AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000009F8 00000ABC  7C 08 03 A6 */	mtlr r0
/* 000009FC 00000AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000A00 00000AC4  4E 80 00 20 */	blr
.endfn color_change_evt

# .text:0x2E8 | 0xA04 | size: 0x124
.fn callback, local
/* 00000A04 00000AC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000A08 00000ACC  7C 08 02 A6 */	mflr r0
/* 00000A0C 00000AD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000A10 00000AD4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 00000A14 00000AD8  7C 7B 1B 78 */	mr r27, r3
/* 00000A18 00000ADC  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 00000A1C 00000AE0  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 00000A20 00000AE4  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 00000A24 00000AE8  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000A28 00000AEC  4B FF FA E9 */	bl marioGetPtr
/* 00000A2C 00000AF0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00000A30 00000AF4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 00000A34 00000AF8  41 82 00 24 */	beq .L_00000A58
/* 00000A38 00000AFC  3C 60 00 00 */	lis r3, dat_gra_00001f28@ha
/* 00000A3C 00000B00  38 81 00 0C */	addi r4, r1, 0xc
/* 00000A40 00000B04  38 A3 00 00 */	addi r5, r3, dat_gra_00001f28@l
/* 00000A44 00000B08  38 60 00 01 */	li r3, 0x1
/* 00000A48 00000B0C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00000A4C 00000B10  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000A50 00000B14  4B FF FA C1 */	bl GXSetTevColor
/* 00000A54 00000B18  48 00 00 20 */	b .L_00000A74
.L_00000A58:
/* 00000A58 00000B1C  3C 60 00 00 */	lis r3, dat_gra_00001f2c@ha
/* 00000A5C 00000B20  38 81 00 08 */	addi r4, r1, 0x8
/* 00000A60 00000B24  38 A3 00 00 */	addi r5, r3, dat_gra_00001f2c@l
/* 00000A64 00000B28  38 60 00 01 */	li r3, 0x1
/* 00000A68 00000B2C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00000A6C 00000B30  90 01 00 08 */	stw r0, 0x8(r1)
/* 00000A70 00000B34  4B FF FA A1 */	bl GXSetTevColor
.L_00000A74:
/* 00000A74 00000B38  7F E3 FB 78 */	mr r3, r31
/* 00000A78 00000B3C  38 80 00 FF */	li r4, 0xff
/* 00000A7C 00000B40  38 A0 00 FF */	li r5, 0xff
/* 00000A80 00000B44  38 C0 00 FF */	li r6, 0xff
/* 00000A84 00000B48  4B FF FA 8D */	bl GXSetTevOrder
/* 00000A88 00000B4C  7F E3 FB 78 */	mr r3, r31
/* 00000A8C 00000B50  38 80 00 00 */	li r4, 0x0
/* 00000A90 00000B54  38 A0 00 00 */	li r5, 0x0
/* 00000A94 00000B58  38 C0 00 00 */	li r6, 0x0
/* 00000A98 00000B5C  38 E0 00 01 */	li r7, 0x1
/* 00000A9C 00000B60  39 00 00 00 */	li r8, 0x0
/* 00000AA0 00000B64  4B FF FA 71 */	bl GXSetTevColorOp
/* 00000AA4 00000B68  7F E3 FB 78 */	mr r3, r31
/* 00000AA8 00000B6C  38 80 00 00 */	li r4, 0x0
/* 00000AAC 00000B70  38 A0 00 00 */	li r5, 0x0
/* 00000AB0 00000B74  38 C0 00 00 */	li r6, 0x0
/* 00000AB4 00000B78  38 E0 00 01 */	li r7, 0x1
/* 00000AB8 00000B7C  39 00 00 00 */	li r8, 0x0
/* 00000ABC 00000B80  4B FF FA 55 */	bl GXSetTevAlphaOp
/* 00000AC0 00000B84  7F E3 FB 78 */	mr r3, r31
/* 00000AC4 00000B88  38 80 00 0F */	li r4, 0xf
/* 00000AC8 00000B8C  38 A0 00 0F */	li r5, 0xf
/* 00000ACC 00000B90  38 C0 00 0F */	li r6, 0xf
/* 00000AD0 00000B94  38 E0 00 02 */	li r7, 0x2
/* 00000AD4 00000B98  4B FF FA 3D */	bl GXSetTevColorIn
/* 00000AD8 00000B9C  7F E3 FB 78 */	mr r3, r31
/* 00000ADC 00000BA0  38 80 00 07 */	li r4, 0x7
/* 00000AE0 00000BA4  38 A0 00 07 */	li r5, 0x7
/* 00000AE4 00000BA8  38 C0 00 07 */	li r6, 0x7
/* 00000AE8 00000BAC  38 E0 00 00 */	li r7, 0x0
/* 00000AEC 00000BB0  4B FF FA 25 */	bl GXSetTevAlphaIn
/* 00000AF0 00000BB4  7F E3 FB 78 */	mr r3, r31
/* 00000AF4 00000BB8  38 80 00 00 */	li r4, 0x0
/* 00000AF8 00000BBC  38 A0 00 00 */	li r5, 0x0
/* 00000AFC 00000BC0  4B FF FA 15 */	bl GXSetTevSwapMode
/* 00000B00 00000BC4  38 1F 00 01 */	addi r0, r31, 0x1
/* 00000B04 00000BC8  90 1B 00 0C */	stw r0, 0xc(r27)
/* 00000B08 00000BCC  93 BB 00 14 */	stw r29, 0x14(r27)
/* 00000B0C 00000BD0  93 9B 00 18 */	stw r28, 0x18(r27)
/* 00000B10 00000BD4  93 DB 00 10 */	stw r30, 0x10(r27)
/* 00000B14 00000BD8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 00000B18 00000BDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000B1C 00000BE0  7C 08 03 A6 */	mtlr r0
/* 00000B20 00000BE4  38 21 00 30 */	addi r1, r1, 0x30
/* 00000B24 00000BE8  4E 80 00 20 */	blr
.endfn callback

# 0x00000A68..0x00000A70 | size: 0x8
.rodata
.balign 8

# .rodata:0x0 | 0xA68 | size: 0x4
.obj dat_gra_00001f28, local
	.4byte 0x000000FF
.endobj dat_gra_00001f28

# .rodata:0x4 | 0xA6C | size: 0x4
.obj dat_gra_00001f2c, local
	.4byte 0x4D0952FF
.endobj dat_gra_00001f2c

# 0x00004FC8..0x000050D0 | size: 0x108
.data
.balign 8

# .data:0x0 | 0x4FC8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4FD0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4FD4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4FD8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4FDC | size: 0x4
.obj gap_04_00004FDC_data, global
.hidden gap_04_00004FDC_data
	.4byte 0x00000000
.endobj gap_04_00004FDC_data

# .data:0x18 | 0x4FE0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4FE8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4FEC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4FF0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4FF8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4FFC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5000 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5004 | size: 0x4
.obj gap_04_00005004_data, global
.hidden gap_04_00005004_data
	.4byte 0x00000000
.endobj gap_04_00005004_data

# .data:0x40 | 0x5008 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5010 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5014 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5018 | size: 0x10
.obj evt_check, local
	.4byte 0x0001005B
	.4byte check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_check

# .data:0x60 | 0x5028 | size: 0xA8
.obj evt_usu_kagemario_party_kill_10_data_5028, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000C9
	.4byte 0x000000CD
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_clear_party
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte test
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_usu_kagemario_party_kill_10_data_5028
