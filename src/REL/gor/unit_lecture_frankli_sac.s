.include "macros.inc"
.file "unit_lecture_frankli_sac.o"

# 0x000118C0..0x00012254 | size: 0x994
.text
.balign 4

# .text:0x0 | 0x118C0 | size: 0x390
.fn spot_square_disp, local
/* 000118C0 0001198C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 000118C4 00011990  7C 08 02 A6 */	mflr r0
/* 000118C8 00011994  90 01 00 84 */	stw r0, 0x84(r1)
/* 000118CC 00011998  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 000118D0 0001199C  F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 000118D4 000119A0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 000118D8 000119A4  F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 000118DC 000119A8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 000118E0 000119AC  F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 000118E4 000119B0  BF C1 00 48 */	stmw r30, 0x48(r1)
/* 000118E8 000119B4  38 60 00 00 */	li r3, 0x0
/* 000118EC 000119B8  4B FE EB B9 */	bl GXSetCullMode
/* 000118F0 000119BC  4B FE EB B5 */	bl GXClearVtxDesc
/* 000118F4 000119C0  38 60 00 09 */	li r3, 0x9
/* 000118F8 000119C4  38 80 00 01 */	li r4, 0x1
/* 000118FC 000119C8  4B FE EB A9 */	bl GXSetVtxDesc
/* 00011900 000119CC  38 60 00 00 */	li r3, 0x0
/* 00011904 000119D0  38 80 00 09 */	li r4, 0x9
/* 00011908 000119D4  38 A0 00 01 */	li r5, 0x1
/* 0001190C 000119D8  38 C0 00 04 */	li r6, 0x4
/* 00011910 000119DC  38 E0 00 00 */	li r7, 0x0
/* 00011914 000119E0  4B FE EB 91 */	bl GXSetVtxAttrFmt
/* 00011918 000119E4  38 60 00 01 */	li r3, 0x1
/* 0001191C 000119E8  4B FE EB 89 */	bl GXSetNumChans
/* 00011920 000119EC  38 60 00 04 */	li r3, 0x4
/* 00011924 000119F0  38 80 00 00 */	li r4, 0x0
/* 00011928 000119F4  38 A0 00 00 */	li r5, 0x0
/* 0001192C 000119F8  38 C0 00 00 */	li r6, 0x0
/* 00011930 000119FC  38 E0 00 00 */	li r7, 0x0
/* 00011934 00011A00  39 00 00 02 */	li r8, 0x2
/* 00011938 00011A04  39 20 00 02 */	li r9, 0x2
/* 0001193C 00011A08  4B FE EB 69 */	bl GXSetChanCtrl
/* 00011940 00011A0C  3C 80 00 00 */	lis r4, zero_gor_0001f9e8@ha
/* 00011944 00011A10  3C 60 00 00 */	lis r3, dark@ha
/* 00011948 00011A14  38 A4 00 00 */	addi r5, r4, zero_gor_0001f9e8@l
/* 0001194C 00011A18  88 03 00 00 */	lbz r0, dark@l(r3)
/* 00011950 00011A1C  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00011954 00011A20  38 81 00 0C */	addi r4, r1, 0xc
/* 00011958 00011A24  38 60 00 04 */	li r3, 0x4
/* 0001195C 00011A28  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00011960 00011A2C  98 01 00 0B */	stb r0, 0xb(r1)
/* 00011964 00011A30  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00011968 00011A34  90 01 00 0C */	stw r0, 0xc(r1)
/* 0001196C 00011A38  4B FE EB 39 */	bl GXSetChanMatColor
/* 00011970 00011A3C  38 60 00 00 */	li r3, 0x0
/* 00011974 00011A40  4B FE EB 31 */	bl GXSetNumTexGens
/* 00011978 00011A44  38 60 00 01 */	li r3, 0x1
/* 0001197C 00011A48  4B FE EB 29 */	bl GXSetNumTevStages
/* 00011980 00011A4C  38 60 00 00 */	li r3, 0x0
/* 00011984 00011A50  38 80 00 00 */	li r4, 0x0
/* 00011988 00011A54  38 A0 00 00 */	li r5, 0x0
/* 0001198C 00011A58  38 C0 00 00 */	li r6, 0x0
/* 00011990 00011A5C  38 E0 00 01 */	li r7, 0x1
/* 00011994 00011A60  39 00 00 00 */	li r8, 0x0
/* 00011998 00011A64  4B FE EB 0D */	bl GXSetTevColorOp
/* 0001199C 00011A68  38 60 00 00 */	li r3, 0x0
/* 000119A0 00011A6C  38 80 00 00 */	li r4, 0x0
/* 000119A4 00011A70  38 A0 00 00 */	li r5, 0x0
/* 000119A8 00011A74  38 C0 00 00 */	li r6, 0x0
/* 000119AC 00011A78  38 E0 00 01 */	li r7, 0x1
/* 000119B0 00011A7C  39 00 00 00 */	li r8, 0x0
/* 000119B4 00011A80  4B FE EA F1 */	bl GXSetTevAlphaOp
/* 000119B8 00011A84  38 60 00 00 */	li r3, 0x0
/* 000119BC 00011A88  38 80 00 FF */	li r4, 0xff
/* 000119C0 00011A8C  38 A0 00 FF */	li r5, 0xff
/* 000119C4 00011A90  38 C0 00 04 */	li r6, 0x4
/* 000119C8 00011A94  4B FE EA DD */	bl GXSetTevOrder
/* 000119CC 00011A98  38 60 00 00 */	li r3, 0x0
/* 000119D0 00011A9C  38 80 00 04 */	li r4, 0x4
/* 000119D4 00011AA0  4B FE EA D1 */	bl GXSetTevOp
/* 000119D8 00011AA4  38 60 00 08 */	li r3, 0x8
/* 000119DC 00011AA8  4B FE EA C9 */	bl camGetPtr
/* 000119E0 00011AAC  7C 7E 1B 78 */	mr r30, r3
/* 000119E4 00011AB0  38 61 00 10 */	addi r3, r1, 0x10
/* 000119E8 00011AB4  4B FE EA BD */	bl PSMTXIdentity
/* 000119EC 00011AB8  38 81 00 10 */	addi r4, r1, 0x10
/* 000119F0 00011ABC  38 7E 01 1C */	addi r3, r30, 0x11c
/* 000119F4 00011AC0  7C 85 23 78 */	mr r5, r4
/* 000119F8 00011AC4  4B FE EA AD */	bl PSMTXConcat
/* 000119FC 00011AC8  38 61 00 10 */	addi r3, r1, 0x10
/* 00011A00 00011ACC  38 80 00 00 */	li r4, 0x0
/* 00011A04 00011AD0  4B FE EA A1 */	bl GXLoadPosMtxImm
/* 00011A08 00011AD4  3C 80 00 00 */	lis r4, point@ha
/* 00011A0C 00011AD8  38 60 00 80 */	li r3, 0x80
/* 00011A10 00011ADC  3B E4 00 00 */	addi r31, r4, point@l
/* 00011A14 00011AE0  38 80 00 00 */	li r4, 0x0
/* 00011A18 00011AE4  C3 FF 00 04 */	lfs f31, 0x4(r31)
/* 00011A1C 00011AE8  38 A0 00 04 */	li r5, 0x4
/* 00011A20 00011AEC  4B FE EA 85 */	bl GXBegin
/* 00011A24 00011AF0  3C 80 00 00 */	lis r4, float_neg320_gor_0001fb1c@ha
/* 00011A28 00011AF4  3C 60 00 00 */	lis r3, float_240_gor_0001fb20@ha
/* 00011A2C 00011AF8  39 44 00 00 */	addi r10, r4, float_neg320_gor_0001fb1c@l
/* 00011A30 00011AFC  3C A0 00 00 */	lis r5, zero_gor_0001fb24@ha
/* 00011A34 00011B00  C0 0A 00 00 */	lfs f0, 0x0(r10)
/* 00011A38 00011B04  3D 20 CC 01 */	lis r9, 0xcc01
/* 00011A3C 00011B08  39 03 00 00 */	addi r8, r3, float_240_gor_0001fb20@l
/* 00011A40 00011B0C  3C 80 00 00 */	lis r4, float_320_gor_0001fb28@ha
/* 00011A44 00011B10  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A48 00011B14  3C 60 00 00 */	lis r3, point@ha
/* 00011A4C 00011B18  C0 08 00 00 */	lfs f0, 0x0(r8)
/* 00011A50 00011B1C  38 E5 00 00 */	addi r7, r5, zero_gor_0001fb24@l
/* 00011A54 00011B20  38 C4 00 00 */	addi r6, r4, float_320_gor_0001fb28@l
/* 00011A58 00011B24  3B C3 00 00 */	addi r30, r3, point@l
/* 00011A5C 00011B28  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A60 00011B2C  38 60 00 80 */	li r3, 0x80
/* 00011A64 00011B30  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011A68 00011B34  38 80 00 00 */	li r4, 0x0
/* 00011A6C 00011B38  38 A0 00 04 */	li r5, 0x4
/* 00011A70 00011B3C  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A74 00011B40  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00011A78 00011B44  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A7C 00011B48  C0 08 00 00 */	lfs f0, 0x0(r8)
/* 00011A80 00011B4C  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A84 00011B50  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011A88 00011B54  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A8C 00011B58  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00011A90 00011B5C  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011A94 00011B60  D3 E9 80 00 */	stfs f31, -0x8000(r9)
/* 00011A98 00011B64  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011A9C 00011B68  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011AA0 00011B6C  C0 0A 00 00 */	lfs f0, 0x0(r10)
/* 00011AA4 00011B70  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011AA8 00011B74  D3 E9 80 00 */	stfs f31, -0x8000(r9)
/* 00011AAC 00011B78  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011AB0 00011B7C  D0 09 80 00 */	stfs f0, -0x8000(r9)
/* 00011AB4 00011B80  C3 BE 00 0C */	lfs f29, 0xc(r30)
/* 00011AB8 00011B84  C3 DE 00 00 */	lfs f30, 0x0(r30)
/* 00011ABC 00011B88  C3 FF 00 04 */	lfs f31, 0x4(r31)
/* 00011AC0 00011B8C  4B FE E9 E5 */	bl GXBegin
/* 00011AC4 00011B90  3C 60 00 00 */	lis r3, float_neg320_gor_0001fb1c@ha
/* 00011AC8 00011B94  3C 80 00 00 */	lis r4, zero_gor_0001fb24@ha
/* 00011ACC 00011B98  39 23 00 00 */	addi r9, r3, float_neg320_gor_0001fb1c@l
/* 00011AD0 00011B9C  3C 60 00 00 */	lis r3, point@ha
/* 00011AD4 00011BA0  C0 09 00 00 */	lfs f0, 0x0(r9)
/* 00011AD8 00011BA4  3D 00 CC 01 */	lis r8, 0xcc01
/* 00011ADC 00011BA8  38 E4 00 00 */	addi r7, r4, zero_gor_0001fb24@l
/* 00011AE0 00011BAC  38 C3 00 00 */	addi r6, r3, point@l
/* 00011AE4 00011BB0  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011AE8 00011BB4  38 60 00 80 */	li r3, 0x80
/* 00011AEC 00011BB8  38 80 00 00 */	li r4, 0x0
/* 00011AF0 00011BBC  38 A0 00 04 */	li r5, 0x4
/* 00011AF4 00011BC0  D3 E8 80 00 */	stfs f31, -0x8000(r8)
/* 00011AF8 00011BC4  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011AFC 00011BC8  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B00 00011BCC  D3 C8 80 00 */	stfs f30, -0x8000(r8)
/* 00011B04 00011BD0  D3 E8 80 00 */	stfs f31, -0x8000(r8)
/* 00011B08 00011BD4  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011B0C 00011BD8  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B10 00011BDC  D3 C8 80 00 */	stfs f30, -0x8000(r8)
/* 00011B14 00011BE0  D3 A8 80 00 */	stfs f29, -0x8000(r8)
/* 00011B18 00011BE4  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011B1C 00011BE8  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B20 00011BEC  C0 09 00 00 */	lfs f0, 0x0(r9)
/* 00011B24 00011BF0  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B28 00011BF4  D3 A8 80 00 */	stfs f29, -0x8000(r8)
/* 00011B2C 00011BF8  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011B30 00011BFC  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B34 00011C00  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 00011B38 00011C04  C3 DF 00 04 */	lfs f30, 0x4(r31)
/* 00011B3C 00011C08  C3 A6 00 08 */	lfs f29, 0x8(r6)
/* 00011B40 00011C0C  4B FE E9 65 */	bl GXBegin
/* 00011B44 00011C10  3D 00 CC 01 */	lis r8, 0xcc01
/* 00011B48 00011C14  3C 60 00 00 */	lis r3, zero_gor_0001fb24@ha
/* 00011B4C 00011C18  D3 A8 80 00 */	stfs f29, -0x8000(r8)
/* 00011B50 00011C1C  3C 80 00 00 */	lis r4, float_320_gor_0001fb28@ha
/* 00011B54 00011C20  38 E3 00 00 */	addi r7, r3, zero_gor_0001fb24@l
/* 00011B58 00011C24  38 60 00 80 */	li r3, 0x80
/* 00011B5C 00011C28  D3 C8 80 00 */	stfs f30, -0x8000(r8)
/* 00011B60 00011C2C  38 C4 00 00 */	addi r6, r4, float_320_gor_0001fb28@l
/* 00011B64 00011C30  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011B68 00011C34  38 80 00 00 */	li r4, 0x0
/* 00011B6C 00011C38  38 A0 00 04 */	li r5, 0x4
/* 00011B70 00011C3C  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B74 00011C40  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00011B78 00011C44  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B7C 00011C48  D3 C8 80 00 */	stfs f30, -0x8000(r8)
/* 00011B80 00011C4C  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011B84 00011C50  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B88 00011C54  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00011B8C 00011C58  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B90 00011C5C  D3 E8 80 00 */	stfs f31, -0x8000(r8)
/* 00011B94 00011C60  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011B98 00011C64  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011B9C 00011C68  D3 A8 80 00 */	stfs f29, -0x8000(r8)
/* 00011BA0 00011C6C  D3 E8 80 00 */	stfs f31, -0x8000(r8)
/* 00011BA4 00011C70  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011BA8 00011C74  D0 08 80 00 */	stfs f0, -0x8000(r8)
/* 00011BAC 00011C78  C3 BE 00 0C */	lfs f29, 0xc(r30)
/* 00011BB0 00011C7C  4B FE E8 F5 */	bl GXBegin
/* 00011BB4 00011C80  3C 60 00 00 */	lis r3, float_neg320_gor_0001fb1c@ha
/* 00011BB8 00011C84  3C C0 CC 01 */	lis r6, 0xcc01
/* 00011BBC 00011C88  38 E3 00 00 */	addi r7, r3, float_neg320_gor_0001fb1c@l
/* 00011BC0 00011C8C  3C A0 00 00 */	lis r5, zero_gor_0001fb24@ha
/* 00011BC4 00011C90  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011BC8 00011C94  3C 80 00 00 */	lis r4, float_320_gor_0001fb28@ha
/* 00011BCC 00011C98  3C 60 00 00 */	lis r3, float_neg240_gor_0001fb2c@ha
/* 00011BD0 00011C9C  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011BD4 00011CA0  D3 A6 80 00 */	stfs f29, -0x8000(r6)
/* 00011BD8 00011CA4  C4 05 00 00 */	lfsu f0, zero_gor_0001fb24@l(r5)
/* 00011BDC 00011CA8  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011BE0 00011CAC  C4 04 00 00 */	lfsu f0, float_320_gor_0001fb28@l(r4)
/* 00011BE4 00011CB0  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011BE8 00011CB4  D3 A6 80 00 */	stfs f29, -0x8000(r6)
/* 00011BEC 00011CB8  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00011BF0 00011CBC  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011BF4 00011CC0  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00011BF8 00011CC4  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011BFC 00011CC8  C4 03 00 00 */	lfsu f0, float_neg240_gor_0001fb2c@l(r3)
/* 00011C00 00011CCC  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011C04 00011CD0  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00011C08 00011CD4  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011C0C 00011CD8  C0 07 00 00 */	lfs f0, 0x0(r7)
/* 00011C10 00011CDC  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011C14 00011CE0  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 00011C18 00011CE4  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011C1C 00011CE8  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00011C20 00011CEC  D0 06 80 00 */	stfs f0, -0x8000(r6)
/* 00011C24 00011CF0  E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 00011C28 00011CF4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 00011C2C 00011CF8  E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 00011C30 00011CFC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 00011C34 00011D00  E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 00011C38 00011D04  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 00011C3C 00011D08  BB C1 00 48 */	lmw r30, 0x48(r1)
/* 00011C40 00011D0C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 00011C44 00011D10  7C 08 03 A6 */	mtlr r0
/* 00011C48 00011D14  38 21 00 80 */	addi r1, r1, 0x80
/* 00011C4C 00011D18  4E 80 00 20 */	blr
.endfn spot_square_disp

# .text:0x390 | 0x11C50 | size: 0xC4
.fn Quads2D, local
/* 00011C50 00011D1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00011C54 00011D20  7C 08 02 A6 */	mflr r0
/* 00011C58 00011D24  90 01 00 54 */	stw r0, 0x54(r1)
/* 00011C5C 00011D28  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00011C60 00011D2C  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00011C64 00011D30  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00011C68 00011D34  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00011C6C 00011D38  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00011C70 00011D3C  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00011C74 00011D40  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 00011C78 00011D44  F3 81 00 18 */	psq_st f28, 0x18(r1), 0, qr0
/* 00011C7C 00011D48  FF 80 08 90 */	fmr f28, f1
/* 00011C80 00011D4C  38 60 00 80 */	li r3, 0x80
/* 00011C84 00011D50  FF A0 10 90 */	fmr f29, f2
/* 00011C88 00011D54  38 80 00 00 */	li r4, 0x0
/* 00011C8C 00011D58  FF C0 18 90 */	fmr f30, f3
/* 00011C90 00011D5C  38 A0 00 04 */	li r5, 0x4
/* 00011C94 00011D60  FF E0 20 90 */	fmr f31, f4
/* 00011C98 00011D64  4B FE E8 0D */	bl GXBegin
/* 00011C9C 00011D68  3C 80 CC 01 */	lis r4, 0xcc01
/* 00011CA0 00011D6C  3C 60 00 00 */	lis r3, zero_gor_0001fb24@ha
/* 00011CA4 00011D70  D3 84 80 00 */	stfs f28, -0x8000(r4)
/* 00011CA8 00011D74  D3 A4 80 00 */	stfs f29, -0x8000(r4)
/* 00011CAC 00011D78  C4 03 00 00 */	lfsu f0, zero_gor_0001fb24@l(r3)
/* 00011CB0 00011D7C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 00011CB4 00011D80  D3 C4 80 00 */	stfs f30, -0x8000(r4)
/* 00011CB8 00011D84  D3 A4 80 00 */	stfs f29, -0x8000(r4)
/* 00011CBC 00011D88  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 00011CC0 00011D8C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 00011CC4 00011D90  D3 C4 80 00 */	stfs f30, -0x8000(r4)
/* 00011CC8 00011D94  D3 E4 80 00 */	stfs f31, -0x8000(r4)
/* 00011CCC 00011D98  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 00011CD0 00011D9C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 00011CD4 00011DA0  D3 84 80 00 */	stfs f28, -0x8000(r4)
/* 00011CD8 00011DA4  D3 E4 80 00 */	stfs f31, -0x8000(r4)
/* 00011CDC 00011DA8  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 00011CE0 00011DAC  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 00011CE4 00011DB0  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00011CE8 00011DB4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00011CEC 00011DB8  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00011CF0 00011DBC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00011CF4 00011DC0  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00011CF8 00011DC4  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00011CFC 00011DC8  E3 81 00 18 */	psq_l f28, 0x18(r1), 0, qr0
/* 00011D00 00011DCC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00011D04 00011DD0  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 00011D08 00011DD4  7C 08 03 A6 */	mtlr r0
/* 00011D0C 00011DD8  38 21 00 50 */	addi r1, r1, 0x50
/* 00011D10 00011DDC  4E 80 00 20 */	blr
.endfn Quads2D

# .text:0x454 | 0x11D14 | size: 0x1B8
.fn spot_square, local
/* 00011D14 00011DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00011D18 00011DE4  7C 08 02 A6 */	mflr r0
/* 00011D1C 00011DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00011D20 00011DEC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00011D24 00011DF0  7C 9F 23 78 */	mr r31, r4
/* 00011D28 00011DF4  7C 7D 1B 78 */	mr r29, r3
/* 00011D2C 00011DF8  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00011D30 00011DFC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00011D34 00011E00  4B FE E7 71 */	bl evtGetFloat
/* 00011D38 00011E04  3C 80 00 00 */	lis r4, point@ha
/* 00011D3C 00011E08  7F A3 EB 78 */	mr r3, r29
/* 00011D40 00011E0C  D0 24 00 00 */	stfs f1, point@l(r4)
/* 00011D44 00011E10  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00011D48 00011E14  4B FE E7 5D */	bl evtGetFloat
/* 00011D4C 00011E18  3C 80 00 00 */	lis r4, point@ha
/* 00011D50 00011E1C  7F A3 EB 78 */	mr r3, r29
/* 00011D54 00011E20  38 84 00 00 */	addi r4, r4, point@l
/* 00011D58 00011E24  D0 24 00 04 */	stfs f1, 0x4(r4)
/* 00011D5C 00011E28  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00011D60 00011E2C  4B FE E7 45 */	bl evtGetFloat
/* 00011D64 00011E30  3C 80 00 00 */	lis r4, point@ha
/* 00011D68 00011E34  7F A3 EB 78 */	mr r3, r29
/* 00011D6C 00011E38  38 84 00 00 */	addi r4, r4, point@l
/* 00011D70 00011E3C  D0 24 00 08 */	stfs f1, 0x8(r4)
/* 00011D74 00011E40  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00011D78 00011E44  4B FE E7 2D */	bl evtGetFloat
/* 00011D7C 00011E48  3C 80 00 00 */	lis r4, point@ha
/* 00011D80 00011E4C  7F A3 EB 78 */	mr r3, r29
/* 00011D84 00011E50  38 84 00 00 */	addi r4, r4, point@l
/* 00011D88 00011E54  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 00011D8C 00011E58  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 00011D90 00011E5C  4B FE E7 15 */	bl evtGetValue
/* 00011D94 00011E60  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 00011D98 00011E64  7C 7E 1B 78 */	mr r30, r3
/* 00011D9C 00011E68  7F A3 EB 78 */	mr r3, r29
/* 00011DA0 00011E6C  4B FE E7 05 */	bl evtGetValue
/* 00011DA4 00011E70  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00011DA8 00011E74  7C 7F 1B 78 */	mr r31, r3
/* 00011DAC 00011E78  41 82 00 18 */	beq .L_00011DC4
/* 00011DB0 00011E7C  3C 80 00 00 */	lis r4, dark@ha
/* 00011DB4 00011E80  38 00 00 00 */	li r0, 0x0
/* 00011DB8 00011E84  3C 60 00 00 */	lis r3, darkCount@ha
/* 00011DBC 00011E88  98 04 00 00 */	stb r0, dark@l(r4)
/* 00011DC0 00011E8C  90 03 00 00 */	stw r0, darkCount@l(r3)
.L_00011DC4:
/* 00011DC4 00011E90  3C 60 00 00 */	lis r3, darkCount@ha
/* 00011DC8 00011E94  38 A3 00 00 */	addi r5, r3, darkCount@l
/* 00011DCC 00011E98  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00011DD0 00011E9C  34 83 00 01 */	addic. r4, r3, 0x1
/* 00011DD4 00011EA0  90 85 00 00 */	stw r4, 0x0(r5)
/* 00011DD8 00011EA4  41 80 00 3C */	blt .L_00011E14
/* 00011DDC 00011EA8  7C 04 F0 00 */	cmpw r4, r30
/* 00011DE0 00011EAC  41 81 00 34 */	bgt .L_00011E14
/* 00011DE4 00011EB0  3C A0 00 00 */	lis r5, zero_gor_0001fb24@ha
/* 00011DE8 00011EB4  3C 60 00 00 */	lis r3, float_192_gor_0001fb30@ha
/* 00011DEC 00011EB8  C0 25 00 00 */	lfs f1, zero_gor_0001fb24@l(r5)
/* 00011DF0 00011EBC  7F C5 F3 78 */	mr r5, r30
/* 00011DF4 00011EC0  C0 43 00 00 */	lfs f2, float_192_gor_0001fb30@l(r3)
/* 00011DF8 00011EC4  38 60 00 00 */	li r3, 0x0
/* 00011DFC 00011EC8  4B FE E6 A9 */	bl intplGetValue
/* 00011E00 00011ECC  FC 00 08 1E */	fctiwz f0, f1
/* 00011E04 00011ED0  3C 60 00 00 */	lis r3, dark@ha
/* 00011E08 00011ED4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00011E0C 00011ED8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00011E10 00011EDC  98 03 00 00 */	stb r0, dark@l(r3)
.L_00011E14:
/* 00011E14 00011EE0  3C 60 00 00 */	lis r3, darkCount@ha
/* 00011E18 00011EE4  7C FE FA 14 */	add r7, r30, r31
/* 00011E1C 00011EE8  80 C3 00 00 */	lwz r6, darkCount@l(r3)
/* 00011E20 00011EEC  7C 06 38 00 */	cmpw r6, r7
/* 00011E24 00011EF0  41 80 00 48 */	blt .L_00011E6C
/* 00011E28 00011EF4  57 C0 08 3C */	slwi r0, r30, 1
/* 00011E2C 00011EF8  7C 1F 02 14 */	add r0, r31, r0
/* 00011E30 00011EFC  7C 06 00 00 */	cmpw r6, r0
/* 00011E34 00011F00  41 81 00 38 */	bgt .L_00011E6C
/* 00011E38 00011F04  3C 80 00 00 */	lis r4, float_192_gor_0001fb30@ha
/* 00011E3C 00011F08  3C 60 00 00 */	lis r3, zero_gor_0001fb24@ha
/* 00011E40 00011F0C  C0 24 00 00 */	lfs f1, float_192_gor_0001fb30@l(r4)
/* 00011E44 00011F10  7F C5 F3 78 */	mr r5, r30
/* 00011E48 00011F14  C0 43 00 00 */	lfs f2, zero_gor_0001fb24@l(r3)
/* 00011E4C 00011F18  7C 87 30 50 */	subf r4, r7, r6
/* 00011E50 00011F1C  38 60 00 00 */	li r3, 0x0
/* 00011E54 00011F20  4B FE E6 51 */	bl intplGetValue
/* 00011E58 00011F24  FC 00 08 1E */	fctiwz f0, f1
/* 00011E5C 00011F28  3C 60 00 00 */	lis r3, dark@ha
/* 00011E60 00011F2C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00011E64 00011F30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00011E68 00011F34  98 03 00 00 */	stb r0, dark@l(r3)
.L_00011E6C:
/* 00011E6C 00011F38  3C 60 00 00 */	lis r3, float_500_gor_0001fb34@ha
/* 00011E70 00011F3C  3C 80 00 00 */	lis r4, spot_square_disp@ha
/* 00011E74 00011F40  38 C3 00 00 */	addi r6, r3, float_500_gor_0001fb34@l
/* 00011E78 00011F44  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00011E7C 00011F48  38 A4 00 00 */	addi r5, r4, spot_square_disp@l
/* 00011E80 00011F4C  38 60 00 08 */	li r3, 0x8
/* 00011E84 00011F50  38 80 00 02 */	li r4, 0x2
/* 00011E88 00011F54  38 C0 00 00 */	li r6, 0x0
/* 00011E8C 00011F58  4B FE E6 19 */	bl dispEntry
/* 00011E90 00011F5C  3C 80 00 00 */	lis r4, darkCount@ha
/* 00011E94 00011F60  57 C3 08 3C */	slwi r3, r30, 1
/* 00011E98 00011F64  80 A4 00 00 */	lwz r5, darkCount@l(r4)
/* 00011E9C 00011F68  7C 7F 1A 14 */	add r3, r31, r3
/* 00011EA0 00011F6C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 00011EA4 00011F70  38 00 00 02 */	li r0, 0x2
/* 00011EA8 00011F74  7C 63 28 50 */	subf r3, r3, r5
/* 00011EAC 00011F78  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00011EB0 00011F7C  7C 63 20 14 */	addc r3, r3, r4
/* 00011EB4 00011F80  7C 63 19 10 */	subfe r3, r3, r3
/* 00011EB8 00011F84  7C 03 18 38 */	and r3, r0, r3
/* 00011EBC 00011F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00011EC0 00011F8C  7C 08 03 A6 */	mtlr r0
/* 00011EC4 00011F90  38 21 00 20 */	addi r1, r1, 0x20
/* 00011EC8 00011F94  4E 80 00 20 */	blr
.endfn spot_square

# .text:0x60C | 0x11ECC | size: 0x28
.fn blinkAP, local
/* 00011ECC 00011F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011ED0 00011F9C  7C 08 02 A6 */	mflr r0
/* 00011ED4 00011FA0  38 60 00 A0 */	li r3, 0xa0
/* 00011ED8 00011FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011EDC 00011FA8  4B FE E5 C9 */	bl statusAPBlink
/* 00011EE0 00011FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011EE4 00011FB0  38 60 00 02 */	li r3, 0x2
/* 00011EE8 00011FB4  7C 08 03 A6 */	mtlr r0
/* 00011EEC 00011FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 00011EF0 00011FBC  4E 80 00 20 */	blr
.endfn blinkAP

# .text:0x634 | 0x11EF4 | size: 0x24
.fn aud_attack_end, local
/* 00011EF4 00011FC0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00011EF8 00011FC4  38 60 00 02 */	li r3, 0x2
/* 00011EFC 00011FC8  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00011F00 00011FCC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00011F04 00011FD0  3C 84 00 02 */	addis r4, r4, 0x2
/* 00011F08 00011FD4  80 04 90 90 */	lwz r0, -0x6f70(r4)
/* 00011F0C 00011FD8  60 00 00 01 */	ori r0, r0, 0x1
/* 00011F10 00011FDC  90 04 90 90 */	stw r0, -0x6f70(r4)
/* 00011F14 00011FE0  4E 80 00 20 */	blr
.endfn aud_attack_end

# .text:0x658 | 0x11F18 | size: 0x2C
.fn aud_attack_init, local
/* 00011F18 00011FE4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00011F1C 00011FE8  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00011F20 00011FEC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00011F24 00011FF0  3C 84 00 02 */	addis r4, r4, 0x2
/* 00011F28 00011FF4  80 04 90 90 */	lwz r0, -0x6f70(r4)
/* 00011F2C 00011FF8  60 00 00 01 */	ori r0, r0, 0x1
/* 00011F30 00011FFC  90 04 90 90 */	stw r0, -0x6f70(r4)
/* 00011F34 00012000  80 03 01 78 */	lwz r0, 0x178(r3)
/* 00011F38 00012004  38 60 00 02 */	li r3, 0x2
/* 00011F3C 00012008  90 04 90 94 */	stw r0, -0x6f6c(r4)
/* 00011F40 0001200C  4E 80 00 20 */	blr
.endfn aud_attack_init

# .text:0x684 | 0x11F44 | size: 0x80
.fn hammer_on, local
/* 00011F44 00012010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011F48 00012014  7C 08 02 A6 */	mflr r0
/* 00011F4C 00012018  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011F50 0001201C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00011F54 00012020  4B FE E5 51 */	bl BattleAudienceBaseGetPtr
/* 00011F58 00012024  7C 7E 1B 78 */	mr r30, r3
/* 00011F5C 00012028  38 60 00 30 */	li r3, 0x30
/* 00011F60 0001202C  4B FE E5 45 */	bl BattleAudienceGetPtr
/* 00011F64 00012030  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 00011F68 00012034  7C 7F 1B 78 */	mr r31, r3
/* 00011F6C 00012038  38 60 00 30 */	li r3, 0x30
/* 00011F70 0001203C  38 80 00 EF */	li r4, 0xef
/* 00011F74 00012040  54 00 03 98 */	rlwinm r0, r0, 0, 14, 12
/* 00011F78 00012044  38 A0 00 01 */	li r5, 0x1
/* 00011F7C 00012048  90 1E 00 00 */	stw r0, 0x0(r30)
/* 00011F80 0001204C  4B FE E5 25 */	bl BattleAudienceItemOn
/* 00011F84 00012050  2C 03 00 01 */	cmpwi r3, 0x1
/* 00011F88 00012054  40 82 00 24 */	bne .L_00011FAC
/* 00011F8C 00012058  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00011F90 0001205C  38 60 00 02 */	li r3, 0x2
/* 00011F94 00012060  54 00 05 EA */	rlwinm r0, r0, 0, 23, 21
/* 00011F98 00012064  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00011F9C 00012068  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 00011FA0 0001206C  64 00 00 04 */	oris r0, r0, 0x4
/* 00011FA4 00012070  90 1E 00 00 */	stw r0, 0x0(r30)
/* 00011FA8 00012074  48 00 00 08 */	b .L_00011FB0
.L_00011FAC:
/* 00011FAC 00012078  38 60 00 00 */	li r3, 0x0
.L_00011FB0:
/* 00011FB0 0001207C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00011FB4 00012080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011FB8 00012084  7C 08 03 A6 */	mtlr r0
/* 00011FBC 00012088  38 21 00 10 */	addi r1, r1, 0x10
/* 00011FC0 0001208C  4E 80 00 20 */	blr
.endfn hammer_on

# .text:0x704 | 0x11FC4 | size: 0x28
.fn aud_dec, local
/* 00011FC4 00012090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011FC8 00012094  7C 08 02 A6 */	mflr r0
/* 00011FCC 00012098  38 60 FF FB */	li r3, -0x5
/* 00011FD0 0001209C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011FD4 000120A0  4B FE E4 D1 */	bl BattleAudienceAddAudienceNum
/* 00011FD8 000120A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011FDC 000120A8  38 60 00 02 */	li r3, 0x2
/* 00011FE0 000120AC  7C 08 03 A6 */	mtlr r0
/* 00011FE4 000120B0  38 21 00 10 */	addi r1, r1, 0x10
/* 00011FE8 000120B4  4E 80 00 20 */	blr
.endfn aud_dec

# .text:0x72C | 0x11FEC | size: 0x28
.fn aud_inc, local
/* 00011FEC 000120B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011FF0 000120BC  7C 08 02 A6 */	mflr r0
/* 00011FF4 000120C0  38 60 00 05 */	li r3, 0x5
/* 00011FF8 000120C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011FFC 000120C8  4B FE E4 A9 */	bl BattleAudienceAddAudienceNum
/* 00012000 000120CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00012004 000120D0  38 60 00 02 */	li r3, 0x2
/* 00012008 000120D4  7C 08 03 A6 */	mtlr r0
/* 0001200C 000120D8  38 21 00 10 */	addi r1, r1, 0x10
/* 00012010 000120DC  4E 80 00 20 */	blr
.endfn aud_inc

# .text:0x754 | 0x12014 | size: 0x24
.fn aud_joy, local
/* 00012014 000120E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00012018 000120E4  7C 08 02 A6 */	mflr r0
/* 0001201C 000120E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00012020 000120EC  4B FE E4 85 */	bl BattleAudienceJoySACLecture
/* 00012024 000120F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00012028 000120F4  38 60 00 02 */	li r3, 0x2
/* 0001202C 000120F8  7C 08 03 A6 */	mtlr r0
/* 00012030 000120FC  38 21 00 10 */	addi r1, r1, 0x10
/* 00012034 00012100  4E 80 00 20 */	blr
.endfn aud_joy

# .text:0x778 | 0x12038 | size: 0x3C
.fn get_ac_result, local
/* 00012038 00012104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001203C 00012108  7C 08 02 A6 */	mflr r0
/* 00012040 0001210C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00012044 00012110  90 01 00 14 */	stw r0, 0x14(r1)
/* 00012048 00012114  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 0001204C 00012118  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 00012050 0001211C  3C A5 00 02 */	addis r5, r5, 0x2
/* 00012054 00012120  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00012058 00012124  88 A5 90 74 */	lbz r5, -0x6f8c(r5)
/* 0001205C 00012128  4B FE E4 49 */	bl evtSetValue
/* 00012060 0001212C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00012064 00012130  38 60 00 02 */	li r3, 0x2
/* 00012068 00012134  7C 08 03 A6 */	mtlr r0
/* 0001206C 00012138  38 21 00 10 */	addi r1, r1, 0x10
/* 00012070 0001213C  4E 80 00 20 */	blr
.endfn get_ac_result

# .text:0x7B4 | 0x12074 | size: 0x38
.fn get_actkind, local
/* 00012074 00012140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00012078 00012144  7C 08 02 A6 */	mflr r0
/* 0001207C 00012148  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00012080 0001214C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00012084 00012150  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 00012088 00012154  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0001208C 00012158  80 A5 1C 5C */	lwz r5, 0x1c5c(r5)
/* 00012090 0001215C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00012094 00012160  4B FE E4 11 */	bl evtSetValue
/* 00012098 00012164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001209C 00012168  38 60 00 02 */	li r3, 0x2
/* 000120A0 0001216C  7C 08 03 A6 */	mtlr r0
/* 000120A4 00012170  38 21 00 10 */	addi r1, r1, 0x10
/* 000120A8 00012174  4E 80 00 20 */	blr
.endfn get_actkind

# .text:0x7EC | 0x120AC | size: 0xF8
.fn lecture_init, local
/* 000120AC 00012178  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000120B0 0001217C  7C 08 02 A6 */	mflr r0
/* 000120B4 00012180  90 01 00 54 */	stw r0, 0x54(r1)
/* 000120B8 00012184  BF 81 00 40 */	stmw r28, 0x40(r1)
/* 000120BC 00012188  4B FE E3 E9 */	bl BattleBreakSlotGetPtr
/* 000120C0 0001218C  7C 7E 1B 78 */	mr r30, r3
/* 000120C4 00012190  4B FE E3 E1 */	bl BattleAudienceBaseGetPtr
/* 000120C8 00012194  3C 80 00 00 */	lis r4, dat_gor_0001f9bc@ha
/* 000120CC 00012198  38 00 00 05 */	li r0, 0x5
/* 000120D0 0001219C  38 84 00 00 */	addi r4, r4, dat_gor_0001f9bc@l
/* 000120D4 000121A0  38 C1 00 04 */	addi r6, r1, 0x4
/* 000120D8 000121A4  38 A4 FF FC */	subi r5, r4, 0x4
/* 000120DC 000121A8  7C 09 03 A6 */	mtctr r0
.L_000120E0:
/* 000120E0 000121AC  80 85 00 04 */	lwz r4, 0x4(r5)
/* 000120E4 000121B0  84 05 00 08 */	lwzu r0, 0x8(r5)
/* 000120E8 000121B4  90 86 00 04 */	stw r4, 0x4(r6)
/* 000120EC 000121B8  94 06 00 08 */	stwu r0, 0x8(r6)
/* 000120F0 000121BC  42 00 FF F0 */	bdnz .L_000120E0
/* 000120F4 000121C0  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000120F8 000121C4  3B 80 00 00 */	li r28, 0x0
/* 000120FC 000121C8  90 06 00 04 */	stw r0, 0x4(r6)
/* 00012100 000121CC  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 00012104 000121D0  60 00 00 01 */	ori r0, r0, 0x1
/* 00012108 000121D4  90 1E 00 00 */	stw r0, 0x0(r30)
/* 0001210C 000121D8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00012110 000121DC  64 00 00 04 */	oris r0, r0, 0x4
/* 00012114 000121E0  90 03 00 00 */	stw r0, 0x0(r3)
.L_00012118:
/* 00012118 000121E4  7F 83 E3 78 */	mr r3, r28
/* 0001211C 000121E8  4B FE E3 89 */	bl BattleAudience_Delete
/* 00012120 000121EC  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00012124 000121F0  2C 1C 00 C8 */	cmpwi r28, 0xc8
/* 00012128 000121F4  41 80 FF F0 */	blt .L_00012118
/* 0001212C 000121F8  3B 80 00 00 */	li r28, 0x0
/* 00012130 000121FC  3B C1 00 08 */	addi r30, r1, 0x8
/* 00012134 00012200  7F 9F E3 78 */	mr r31, r28
.L_00012138:
/* 00012138 00012204  7F BE F8 2E */	lwzx r29, r30, r31
/* 0001213C 00012208  2C 1D 00 30 */	cmpwi r29, 0x30
/* 00012140 0001220C  41 82 00 18 */	beq .L_00012158
/* 00012144 00012210  7F A3 EB 78 */	mr r3, r29
/* 00012148 00012214  38 80 00 00 */	li r4, 0x0
/* 0001214C 00012218  38 A0 00 00 */	li r5, 0x0
/* 00012150 0001221C  4B FE E3 55 */	bl BattleAudience_Entry
/* 00012154 00012220  48 00 00 28 */	b .L_0001217C
.L_00012158:
/* 00012158 00012224  7F A3 EB 78 */	mr r3, r29
/* 0001215C 00012228  38 80 00 03 */	li r4, 0x3
/* 00012160 0001222C  38 A0 00 00 */	li r5, 0x0
/* 00012164 00012230  4B FE E3 41 */	bl BattleAudience_Entry
/* 00012168 00012234  7F A3 EB 78 */	mr r3, r29
/* 0001216C 00012238  4B FE E3 39 */	bl BattleAudienceGetPtr
/* 00012170 0001223C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00012174 00012240  60 00 02 00 */	ori r0, r0, 0x200
/* 00012178 00012244  90 03 00 00 */	stw r0, 0x0(r3)
.L_0001217C:
/* 0001217C 00012248  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00012180 0001224C  3B FF 00 04 */	addi r31, r31, 0x4
/* 00012184 00012250  2C 1C 00 0B */	cmpwi r28, 0xb
/* 00012188 00012254  41 80 FF B0 */	blt .L_00012138
/* 0001218C 00012258  BB 81 00 40 */	lmw r28, 0x40(r1)
/* 00012190 0001225C  38 60 00 02 */	li r3, 0x2
/* 00012194 00012260  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00012198 00012264  7C 08 03 A6 */	mtlr r0
/* 0001219C 00012268  38 21 00 50 */	addi r1, r1, 0x50
/* 000121A0 0001226C  4E 80 00 20 */	blr
.endfn lecture_init

# .text:0x8E4 | 0x121A4 | size: 0x40
.fn _battle_set_lecture_unit_id, local
/* 000121A4 00012270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000121A8 00012274  7C 08 02 A6 */	mflr r0
/* 000121AC 00012278  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000121B0 0001227C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000121B4 00012280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000121B8 00012284  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000121BC 00012288  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 000121C0 0001228C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000121C4 00012290  4B FE E2 E1 */	bl evtGetValue
/* 000121C8 00012294  90 7F 04 24 */	stw r3, 0x424(r31)
/* 000121CC 00012298  38 60 00 02 */	li r3, 0x2
/* 000121D0 0001229C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000121D4 000122A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000121D8 000122A4  7C 08 03 A6 */	mtlr r0
/* 000121DC 000122A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000121E0 000122AC  4E 80 00 20 */	blr
.endfn _battle_set_lecture_unit_id

# .text:0x924 | 0x121E4 | size: 0x70
.fn _set_actend_event, local
/* 000121E4 000122B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000121E8 000122B4  7C 08 02 A6 */	mflr r0
/* 000121EC 000122B8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000121F0 000122BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 000121F4 000122C0  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 000121F8 000122C4  7C 7C 1B 78 */	mr r28, r3
/* 000121FC 000122C8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00012200 000122CC  83 C4 00 00 */	lwz r30, _battleWorkPointer@l(r4)
/* 00012204 000122D0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00012208 000122D4  4B FE E2 9D */	bl evtGetValue
/* 0001220C 000122D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00012210 000122DC  7C 7D 1B 78 */	mr r29, r3
/* 00012214 000122E0  7F 83 E3 78 */	mr r3, r28
/* 00012218 000122E4  4B FE E2 8D */	bl evtGetValue
/* 0001221C 000122E8  7C 7F 1B 78 */	mr r31, r3
/* 00012220 000122EC  7F 83 E3 78 */	mr r3, r28
/* 00012224 000122F0  7F A4 EB 78 */	mr r4, r29
/* 00012228 000122F4  4B FE E2 7D */	bl BattleTransID
/* 0001222C 000122F8  7C 64 1B 78 */	mr r4, r3
/* 00012230 000122FC  7F C3 F3 78 */	mr r3, r30
/* 00012234 00012300  4B FE E2 71 */	bl BattleGetUnitPtr
/* 00012238 00012304  93 E3 02 C8 */	stw r31, 0x2c8(r3)
/* 0001223C 00012308  38 60 00 02 */	li r3, 0x2
/* 00012240 0001230C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00012244 00012310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00012248 00012314  7C 08 03 A6 */	mtlr r0
/* 0001224C 00012318  38 21 00 20 */	addi r1, r1, 0x20
/* 00012250 0001231C  4E 80 00 20 */	blr
.endfn _set_actend_event

# 0x0000BE20..0x0000C038 | size: 0x218
.rodata
.balign 8

# .rodata:0x0 | 0xBE20 | size: 0xF
.obj str_btl_un_frankli_gor_0001f920, local
	.string "btl_un_frankli"
.endobj str_btl_un_frankli_gor_0001f920

# .rodata:0xF | 0xBE2F | size: 0x1
.obj gap_03_0000BE2F_rodata, global
.hidden gap_03_0000BE2F_rodata
	.byte 0x00
.endobj gap_03_0000BE2F_rodata

# .rodata:0x10 | 0xBE30 | size: 0x16
.obj str_SFX_ENM_KURI_DAMAGED_gor_0001f930, local
	.string "SFX_ENM_KURI_DAMAGED1"
.endobj str_SFX_ENM_KURI_DAMAGED_gor_0001f930

# .rodata:0x26 | 0xBE46 | size: 0x2
.obj gap_03_0000BE46_rodata, global
.hidden gap_03_0000BE46_rodata
	.2byte 0x0000
.endobj gap_03_0000BE46_rodata

# .rodata:0x28 | 0xBE48 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gor_0001f948, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gor_0001f948

# .rodata:0x3D | 0xBE5D | size: 0x3
.obj gap_03_0000BE5D_rodata, global
.hidden gap_03_0000BE5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BE5D_rodata

# .rodata:0x40 | 0xBE60 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gor_0001f960, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gor_0001f960

# .rodata:0x54 | 0xBE74 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gor_0001f974, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gor_0001f974

# .rodata:0x6D | 0xBE8D | size: 0x3
.obj gap_03_0000BE8D_rodata, global
.hidden gap_03_0000BE8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BE8D_rodata

# .rodata:0x70 | 0xBE90 | size: 0x4
.obj str_D_1_gor_0001f990, local
	.string "D_1"
.endobj str_D_1_gor_0001f990

# .rodata:0x74 | 0xBE94 | size: 0x4
.obj str_S_1_gor_0001f994, local
	.string "S_1"
.endobj str_S_1_gor_0001f994

# .rodata:0x78 | 0xBE98 | size: 0x4
.obj str_D_2_gor_0001f998, local
	.string "D_2"
.endobj str_D_2_gor_0001f998

# .rodata:0x7C | 0xBE9C | size: 0x9
.obj str_c_kuri_h_gor_0001f99c, local
	.string "c_kuri_h"
.endobj str_c_kuri_h_gor_0001f99c

# .rodata:0x85 | 0xBEA5 | size: 0x3
.obj gap_03_0000BEA5_rodata, global
.hidden gap_03_0000BEA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BEA5_rodata

# .rodata:0x88 | 0xBEA8 | size: 0x4
.obj str_T_1_gor_0001f9a8, local
	.string "T_1"
.endobj str_T_1_gor_0001f9a8

# .rodata:0x8C | 0xBEAC | size: 0xF
.obj str_mac_0_b_t3_000_gor_0001f9ac, local
	.string "mac_0_b_t3_000"
.endobj str_mac_0_b_t3_000_gor_0001f9ac

# .rodata:0x9B | 0xBEBB | size: 0x1
.obj gap_03_0000BEBB_rodata, global
.hidden gap_03_0000BEBB_rodata
	.byte 0x00
.endobj gap_03_0000BEBB_rodata

# .rodata:0x9C | 0xBEBC | size: 0x2C
.obj dat_gor_0001f9bc, local
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x00000030
.endobj dat_gor_0001f9bc

# .rodata:0xC8 | 0xBEE8 | size: 0x4
.obj zero_gor_0001f9e8, local
	.4byte 0x00000000
.endobj zero_gor_0001f9e8

# .rodata:0xCC | 0xBEEC | size: 0xF
.obj str_mac_0_b_t3_001_gor_0001f9ec, local
	.string "mac_0_b_t3_001"
.endobj str_mac_0_b_t3_001_gor_0001f9ec

# .rodata:0xDB | 0xBEFB | size: 0x1
.obj gap_03_0000BEFB_rodata, global
.hidden gap_03_0000BEFB_rodata
	.byte 0x00
.endobj gap_03_0000BEFB_rodata

# .rodata:0xDC | 0xBEFC | size: 0xF
.obj str_mac_0_b_t3_003_gor_0001f9fc, local
	.string "mac_0_b_t3_003"
.endobj str_mac_0_b_t3_003_gor_0001f9fc

# .rodata:0xEB | 0xBF0B | size: 0x1
.obj gap_03_0000BF0B_rodata, global
.hidden gap_03_0000BF0B_rodata
	.byte 0x00
.endobj gap_03_0000BF0B_rodata

# .rodata:0xEC | 0xBF0C | size: 0xF
.obj str_mac_0_b_t3_004_gor_0001fa0c, local
	.string "mac_0_b_t3_004"
.endobj str_mac_0_b_t3_004_gor_0001fa0c

# .rodata:0xFB | 0xBF1B | size: 0x1
.obj gap_03_0000BF1B_rodata, global
.hidden gap_03_0000BF1B_rodata
	.byte 0x00
.endobj gap_03_0000BF1B_rodata

# .rodata:0xFC | 0xBF1C | size: 0xF
.obj str_mac_0_b_t3_005_gor_0001fa1c, local
	.string "mac_0_b_t3_005"
.endobj str_mac_0_b_t3_005_gor_0001fa1c

# .rodata:0x10B | 0xBF2B | size: 0x1
.obj gap_03_0000BF2B_rodata, global
.hidden gap_03_0000BF2B_rodata
	.byte 0x00
.endobj gap_03_0000BF2B_rodata

# .rodata:0x10C | 0xBF2C | size: 0xF
.obj str_mac_0_b_t3_006_gor_0001fa2c, local
	.string "mac_0_b_t3_006"
.endobj str_mac_0_b_t3_006_gor_0001fa2c

# .rodata:0x11B | 0xBF3B | size: 0x1
.obj gap_03_0000BF3B_rodata, global
.hidden gap_03_0000BF3B_rodata
	.byte 0x00
.endobj gap_03_0000BF3B_rodata

# .rodata:0x11C | 0xBF3C | size: 0xF
.obj str_mac_0_b_t3_007_gor_0001fa3c, local
	.string "mac_0_b_t3_007"
.endobj str_mac_0_b_t3_007_gor_0001fa3c

# .rodata:0x12B | 0xBF4B | size: 0x1
.obj gap_03_0000BF4B_rodata, global
.hidden gap_03_0000BF4B_rodata
	.byte 0x00
.endobj gap_03_0000BF4B_rodata

# .rodata:0x12C | 0xBF4C | size: 0xF
.obj str_mac_0_b_t3_013_gor_0001fa4c, local
	.string "mac_0_b_t3_013"
.endobj str_mac_0_b_t3_013_gor_0001fa4c

# .rodata:0x13B | 0xBF5B | size: 0x1
.obj gap_03_0000BF5B_rodata, global
.hidden gap_03_0000BF5B_rodata
	.byte 0x00
.endobj gap_03_0000BF5B_rodata

# .rodata:0x13C | 0xBF5C | size: 0xF
.obj str_mac_0_b_t3_014_gor_0001fa5c, local
	.string "mac_0_b_t3_014"
.endobj str_mac_0_b_t3_014_gor_0001fa5c

# .rodata:0x14B | 0xBF6B | size: 0x1
.obj gap_03_0000BF6B_rodata, global
.hidden gap_03_0000BF6B_rodata
	.byte 0x00
.endobj gap_03_0000BF6B_rodata

# .rodata:0x14C | 0xBF6C | size: 0x11
.obj str_mac_0_b_t3_014_1_gor_0001fa6c, local
	.string "mac_0_b_t3_014_1"
.endobj str_mac_0_b_t3_014_1_gor_0001fa6c

# .rodata:0x15D | 0xBF7D | size: 0x3
.obj gap_03_0000BF7D_rodata, global
.hidden gap_03_0000BF7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BF7D_rodata

# .rodata:0x160 | 0xBF80 | size: 0x11
.obj str_mac_0_b_t3_014_2_gor_0001fa80, local
	.string "mac_0_b_t3_014_2"
.endobj str_mac_0_b_t3_014_2_gor_0001fa80

# .rodata:0x171 | 0xBF91 | size: 0x3
.obj gap_03_0000BF91_rodata, global
.hidden gap_03_0000BF91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BF91_rodata

# .rodata:0x174 | 0xBF94 | size: 0x11
.obj str_mac_0_b_t3_014_3_gor_0001fa94, local
	.string "mac_0_b_t3_014_3"
.endobj str_mac_0_b_t3_014_3_gor_0001fa94

# .rodata:0x185 | 0xBFA5 | size: 0x3
.obj gap_03_0000BFA5_rodata, global
.hidden gap_03_0000BFA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BFA5_rodata

# .rodata:0x188 | 0xBFA8 | size: 0xF
.obj str_mac_0_b_t3_008_gor_0001faa8, local
	.string "mac_0_b_t3_008"
.endobj str_mac_0_b_t3_008_gor_0001faa8

# .rodata:0x197 | 0xBFB7 | size: 0x1
.obj gap_03_0000BFB7_rodata, global
.hidden gap_03_0000BFB7_rodata
	.byte 0x00
.endobj gap_03_0000BFB7_rodata

# .rodata:0x198 | 0xBFB8 | size: 0xF
.obj str_mac_0_b_t3_009_gor_0001fab8, local
	.string "mac_0_b_t3_009"
.endobj str_mac_0_b_t3_009_gor_0001fab8

# .rodata:0x1A7 | 0xBFC7 | size: 0x1
.obj gap_03_0000BFC7_rodata, global
.hidden gap_03_0000BFC7_rodata
	.byte 0x00
.endobj gap_03_0000BFC7_rodata

# .rodata:0x1A8 | 0xBFC8 | size: 0xF
.obj str_mac_0_b_t3_010_gor_0001fac8, local
	.string "mac_0_b_t3_010"
.endobj str_mac_0_b_t3_010_gor_0001fac8

# .rodata:0x1B7 | 0xBFD7 | size: 0x1
.obj gap_03_0000BFD7_rodata, global
.hidden gap_03_0000BFD7_rodata
	.byte 0x00
.endobj gap_03_0000BFD7_rodata

# .rodata:0x1B8 | 0xBFD8 | size: 0x11
.obj str_mac_0_b_t3_014_4_gor_0001fad8, local
	.string "mac_0_b_t3_014_4"
.endobj str_mac_0_b_t3_014_4_gor_0001fad8

# .rodata:0x1C9 | 0xBFE9 | size: 0x3
.obj gap_03_0000BFE9_rodata, global
.hidden gap_03_0000BFE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BFE9_rodata

# .rodata:0x1CC | 0xBFEC | size: 0xF
.obj str_mac_0_b_t3_015_gor_0001faec, local
	.string "mac_0_b_t3_015"
.endobj str_mac_0_b_t3_015_gor_0001faec

# .rodata:0x1DB | 0xBFFB | size: 0x1
.obj gap_03_0000BFFB_rodata, global
.hidden gap_03_0000BFFB_rodata
	.byte 0x00
.endobj gap_03_0000BFFB_rodata

# .rodata:0x1DC | 0xBFFC | size: 0xF
.obj str_mac_0_b_t3_011_gor_0001fafc, local
	.string "mac_0_b_t3_011"
.endobj str_mac_0_b_t3_011_gor_0001fafc

# .rodata:0x1EB | 0xC00B | size: 0x1
.obj gap_03_0000C00B_rodata, global
.hidden gap_03_0000C00B_rodata
	.byte 0x00
.endobj gap_03_0000C00B_rodata

# .rodata:0x1EC | 0xC00C | size: 0xF
.obj str_mac_0_b_t3_012_gor_0001fb0c, local
	.string "mac_0_b_t3_012"
.endobj str_mac_0_b_t3_012_gor_0001fb0c
	.byte 0x00

# .rodata:0x1FC | 0xC01C | size: 0x4
.obj float_neg320_gor_0001fb1c, local
	.float -320
.endobj float_neg320_gor_0001fb1c

# .rodata:0x200 | 0xC020 | size: 0x4
.obj float_240_gor_0001fb20, local
	.float 240
.endobj float_240_gor_0001fb20

# .rodata:0x204 | 0xC024 | size: 0x4
.obj zero_gor_0001fb24, local
	.float 0
.endobj zero_gor_0001fb24

# .rodata:0x208 | 0xC028 | size: 0x4
.obj float_320_gor_0001fb28, local
	.float 320
.endobj float_320_gor_0001fb28

# .rodata:0x20C | 0xC02C | size: 0x4
.obj float_neg240_gor_0001fb2c, local
	.float -240
.endobj float_neg240_gor_0001fb2c

# .rodata:0x210 | 0xC030 | size: 0x4
.obj float_192_gor_0001fb30, local
	.float 192
.endobj float_192_gor_0001fb30

# .rodata:0x214 | 0xC034 | size: 0x4
.obj float_500_gor_0001fb34, local
	.float 500
.endobj float_500_gor_0001fb34

# 0x0004A438..0x0004B2D8 | size: 0xEA0
.data
.balign 8

# .data:0x0 | 0x4A438 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4A440 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4A444 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4A448 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4A44C | size: 0x4
.obj gap_04_0004A44C_data, global
.hidden gap_04_0004A44C_data
	.4byte 0x00000000
.endobj gap_04_0004A44C_data

# .data:0x18 | 0x4A450 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4A458 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4A45C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4A460 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4A468 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4A46C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4A470 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4A474 | size: 0x4
.obj gap_04_0004A474_data, global
.hidden gap_04_0004A474_data
	.4byte 0x00000000
.endobj gap_04_0004A474_data

# .data:0x40 | 0x4A478 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4A480 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4A484 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4A488 | size: 0xC4
.obj unit_lecture_frankli_sac_9_data_4A488, global
	.4byte 0x000000B3
	.4byte str_btl_un_frankli_gor_0001f920
	.4byte 0x000A0000
	.4byte 0x01010100
	.4byte 0x00000064
	.4byte 0x0009001C
	.4byte 0x00180005
	.4byte 0x00190000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x4179999A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KURI_DAMAGED_gor_0001f930
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gor_0001f948
	.4byte str_SFX_BTL_DAMAGE_ICE1_gor_0001f960
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gor_0001f974
	.4byte 0x02000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_lecture_frankli_sac_9_data_4A488

# .data:0x114 | 0x4A54C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x4A551 | size: 0x3
.obj gap_04_0004A551_data, global
.hidden gap_04_0004A551_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004A551_data

# .data:0x11C | 0x4A554 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x4A559 | size: 0x3
.obj gap_04_0004A559_data, global
.hidden gap_04_0004A559_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004A559_data

# .data:0x124 | 0x4A55C | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x4A572 | size: 0x2
.obj gap_04_0004A572_data, global
.hidden gap_04_0004A572_data
	.2byte 0x0000
.endobj gap_04_0004A572_data

# .data:0x13C | 0x4A574 | size: 0x28
.obj pose_table, local
	.4byte 0x0000001B
	.4byte str_D_1_gor_0001f990
	.4byte 0x0000001C
	.4byte str_S_1_gor_0001f994
	.4byte 0x0000001F
	.4byte str_D_2_gor_0001f998
	.4byte 0x00000027
	.4byte str_D_2_gor_0001f998
	.4byte 0x00000045
	.4byte str_S_1_gor_0001f994
.endobj pose_table

# .data:0x164 | 0x4A59C | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x16C | 0x4A5A4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_frankli_gor_0001f920
	.4byte str_c_kuri_h_gor_0001f99c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00880009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1B8 | 0x4A5F0 | size: 0x50
.obj _test_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFA
	.4byte str_T_1_gor_0001f9a8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFA
	.4byte str_S_1_gor_0001f994
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_000_gor_0001f9ac
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte _set_actend_event
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _test_event

# .data:0x208 | 0x4A640 | size: 0x50
.obj stop_wait_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_wait_event

# .data:0x258 | 0x4A690 | size: 0xF4
.obj init_event, local
	.4byte 0x0001005B
	.4byte lecture_init
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00001000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte _battle_set_lecture_unit_id
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte _set_actend_event
	.4byte 0xFFFFFFFD
	.4byte actend_event
	.4byte 0x0003005B
	.4byte _set_actend_event
	.4byte 0xFFFFFFFC
	.4byte actend_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x34C | 0x4A784 | size: 0x1A4
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte stop_wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_1_gor_0001f9a8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_S_1_gor_0001f994
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_000_gor_0001f9ac
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte blinkAP
	.4byte 0x0007005B
	.4byte spot_square
	.4byte 0xFFFFFF97
	.4byte 0x000000AC
	.4byte 0x000000CE
	.4byte 0x00000080
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x0000005E
	.4byte 0x00000140
	.4byte 0x0000005C
	.4byte 0x0000002C
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_001_gor_0001f9ec
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x04000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x4F0 | 0x4A928 | size: 0x868
.obj actend_event, local
	.4byte 0x0001005E
	.4byte stop_wait_event
	.4byte 0x0002005B
	.4byte get_actkind
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte stop_wait_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x0000005E
	.4byte 0x00000140
	.4byte 0x0000005C
	.4byte 0x0000002C
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_003_gor_0001f9fc
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte blinkAP
	.4byte 0x0007005B
	.4byte spot_square
	.4byte 0xFFFFFF97
	.4byte 0x000000AC
	.4byte 0x000000CE
	.4byte 0x00000080
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x0000005E
	.4byte 0x00000140
	.4byte 0x0000005C
	.4byte 0x0000002C
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_004_gor_0001fa0c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0000024E
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000003C
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0001005B
	.4byte aud_joy
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte aud_joy
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x0000005E
	.4byte 0x00000140
	.4byte 0x0000005C
	.4byte 0x0000002C
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_005_gor_0001fa1c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000000
	.4byte 0x04000000
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x10000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000009
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte stop_wait_event
	.4byte 0x0002005B
	.4byte get_ac_result
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_006_gor_0001fa2c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte blinkAP
	.4byte 0x0007005B
	.4byte spot_square
	.4byte 0xFFFFFF97
	.4byte 0x000000AC
	.4byte 0x000000CE
	.4byte 0x00000080
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte aud_inc
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_007_gor_0001fa3c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte spot_square
	.4byte 0xFFFFFED9
	.4byte 0xFFFFFF6F
	.4byte 0xFFFFFF51
	.4byte 0xFFFFFF29
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_013_gor_0001fa4c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x0000005E
	.4byte 0x00000140
	.4byte 0x0000005C
	.4byte 0x0000002C
	.4byte 0x0000000D
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_014_gor_0001fa5c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0001005B
	.4byte hammer_on
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_014_1_gor_0001fa6c
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0000001D
	.4byte 0x000001F3
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFFD
	.4byte 0x00000005
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_014_2_gor_0001fa80
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_014_3_gor_0001fa94
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte aud_attack_init
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000000
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00800000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_008_gor_0001faa8
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte aud_dec
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_009_gor_0001fab8
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_010_gor_0001fac8
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001005B
	.4byte aud_attack_end
	.4byte 0x0001005E
	.4byte stop_wait_event
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_014_4_gor_0001fad8
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005C
	.4byte 0x0000005E
	.4byte 0x00000140
	.4byte 0x0000005C
	.4byte 0x0000002C
	.4byte 0x0000000D
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_015_gor_0001faec
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj actend_event

# .data:0xD58 | 0x4B190 | size: 0x12C
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
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte get_ac_result
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_011_gor_0001fafc
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte spot_square
	.4byte 0x000000C6
	.4byte 0x000000A9
	.4byte 0x00000126
	.4byte 0x00000075
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t3_012_gor_0001fb0c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xE84 | 0x4B2BC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0xE9C | 0x4B2D4 | size: 0x4
.obj gap_04_0004B2D4_data, global
.hidden gap_04_0004B2D4_data
	.4byte 0x00000000
.endobj gap_04_0004B2D4_data

# 0x00000150..0x00000168 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x150 | size: 0x10
.obj point, local
	.skip 0x10
.endobj point

# .bss:0x10 | 0x160 | size: 0x4
.obj darkCount, local
	.skip 0x4
.endobj darkCount

# .bss:0x14 | 0x164 | size: 0x1
.obj dark, local
	.skip 0x1
.endobj dark

# .bss:0x15 | 0x165 | size: 0x3
.obj gap_05_00000165_bss, global
.hidden gap_05_00000165_bss
	.skip 0x3
.endobj gap_05_00000165_bss
