.include "macros.inc"
.file "win_00.o"

# 0x00000000..0x000002B4 | size: 0x2B4
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x4C
.fn item_check_necklace_exist, local
/* 00000000 000000C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  3C 60 00 00 */	lis r3, str_necklace_win_000038a8@ha
/* 0000000C 000000D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000010 000000D4  38 63 00 00 */	addi r3, r3, str_necklace_win_000038a8@l
/* 00000014 000000D8  48 00 0D 75 */	bl itemNameToPtr
/* 00000018 000000DC  28 03 00 00 */	cmplwi r3, 0x0
/* 0000001C 000000E0  41 82 00 1C */	beq .L_00000038
/* 00000020 000000E4  38 80 00 01 */	li r4, 0x1
/* 00000024 000000E8  48 00 0D 65 */	bl itemFlag
/* 00000028 000000EC  54 60 04 3F */	clrlwi. r0, r3, 16
/* 0000002C 000000F0  41 82 00 0C */	beq .L_00000038
/* 00000030 000000F4  38 60 00 00 */	li r3, 0x0
/* 00000034 000000F8  48 00 00 08 */	b .L_0000003C
.L_00000038:
/* 00000038 000000FC  38 60 00 02 */	li r3, 0x2
.L_0000003C:
/* 0000003C 00000100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000040 00000104  7C 08 03 A6 */	mtlr r0
/* 00000044 00000108  38 21 00 10 */	addi r1, r1, 0x10
/* 00000048 0000010C  4E 80 00 20 */	blr
.endfn item_check_necklace_exist

# .text:0x4C | 0x4C | size: 0x238
.fn win_item_move_3d_position, local
/* 0000004C 00000110  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 00000050 00000114  7C 08 02 A6 */	mflr r0
/* 00000054 00000118  90 01 00 84 */	stw r0, 0x84(r1)
/* 00000058 0000011C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 0000005C 00000120  F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 00000060 00000124  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 00000064 00000128  F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 00000068 0000012C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 0000006C 00000130  F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 00000070 00000134  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 00000074 00000138  F3 81 00 48 */	psq_st f28, 0x48(r1), 0, qr0
/* 00000078 0000013C  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 0000007C 00000140  7C 7A 1B 78 */	mr r26, r3
/* 00000080 00000144  7C 9B 23 78 */	mr r27, r4
/* 00000084 00000148  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000088 0000014C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000008C 00000150  48 00 0C FD */	bl evtGetValue
/* 00000090 00000154  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000094 00000158  7C 7E 1B 78 */	mr r30, r3
/* 00000098 0000015C  7F 43 D3 78 */	mr r3, r26
/* 0000009C 00000160  48 00 0C ED */	bl evtGetValue
/* 000000A0 00000164  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000000A4 00000168  3C 00 43 30 */	lis r0, 0x4330
/* 000000A8 0000016C  3C 80 00 00 */	lis r4, double_to_int_win_00003f28@ha
/* 000000AC 00000170  90 61 00 0C */	stw r3, 0xc(r1)
/* 000000B0 00000174  38 A4 00 00 */	addi r5, r4, double_to_int_win_00003f28@l
/* 000000B4 00000178  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000000B8 0000017C  90 01 00 08 */	stw r0, 0x8(r1)
/* 000000BC 00000180  7F 43 D3 78 */	mr r3, r26
/* 000000C0 00000184  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 000000C4 00000188  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000000C8 0000018C  EF C0 08 28 */	fsubs f30, f0, f1
/* 000000CC 00000190  48 00 0C BD */	bl evtGetValue
/* 000000D0 00000194  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000000D4 00000198  3C 00 43 30 */	lis r0, 0x4330
/* 000000D8 0000019C  3C 80 00 00 */	lis r4, double_to_int_win_00003f28@ha
/* 000000DC 000001A0  90 61 00 14 */	stw r3, 0x14(r1)
/* 000000E0 000001A4  38 A4 00 00 */	addi r5, r4, double_to_int_win_00003f28@l
/* 000000E4 000001A8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000000E8 000001AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 000000EC 000001B0  7F 43 D3 78 */	mr r3, r26
/* 000000F0 000001B4  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 000000F4 000001B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000000F8 000001BC  EF A0 08 28 */	fsubs f29, f0, f1
/* 000000FC 000001C0  48 00 0C 8D */	bl evtGetValue
/* 00000100 000001C4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00000104 000001C8  3C 00 43 30 */	lis r0, 0x4330
/* 00000108 000001CC  3C 80 00 00 */	lis r4, double_to_int_win_00003f28@ha
/* 0000010C 000001D0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00000110 000001D4  38 A4 00 00 */	addi r5, r4, double_to_int_win_00003f28@l
/* 00000114 000001D8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000118 000001DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000011C 000001E0  7F 43 D3 78 */	mr r3, r26
/* 00000120 000001E4  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00000124 000001E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00000128 000001EC  EF 80 08 28 */	fsubs f28, f0, f1
/* 0000012C 000001F0  48 00 0C 5D */	bl evtGetValue
/* 00000130 000001F4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00000134 000001F8  7C 7D 1B 78 */	mr r29, r3
/* 00000138 000001FC  7F 43 D3 78 */	mr r3, r26
/* 0000013C 00000200  48 00 0C 4D */	bl evtGetValue
/* 00000140 00000204  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00000144 00000208  7C 7C 1B 78 */	mr r28, r3
/* 00000148 0000020C  7F 43 D3 78 */	mr r3, r26
/* 0000014C 00000210  48 00 0C 3D */	bl evtGetFloat
/* 00000150 00000214  FF E0 08 90 */	fmr f31, f1
/* 00000154 00000218  7F C3 F3 78 */	mr r3, r30
/* 00000158 0000021C  48 00 0C 31 */	bl itemNameToPtr
/* 0000015C 00000220  2C 1B 00 00 */	cmpwi r27, 0x0
/* 00000160 00000224  7C 7F 1B 78 */	mr r31, r3
/* 00000164 00000228  41 82 00 40 */	beq .L_000001A4
/* 00000168 0000022C  28 1F 00 00 */	cmplwi r31, 0x0
/* 0000016C 00000230  40 82 00 0C */	bne .L_00000178
/* 00000170 00000234  38 60 00 02 */	li r3, 0x2
/* 00000174 00000238  48 00 00 DC */	b .L_00000250
.L_00000178:
/* 00000178 0000023C  3C 60 00 00 */	lis r3, gp@ha
/* 0000017C 00000240  38 63 00 00 */	addi r3, r3, gp@l
/* 00000180 00000244  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000184 00000248  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 00000188 0000024C  90 1A 00 78 */	stw r0, 0x78(r26)
/* 0000018C 00000250  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 00000190 00000254  D0 1A 00 7C */	stfs f0, 0x7c(r26)
/* 00000194 00000258  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 00000198 0000025C  D0 1A 00 80 */	stfs f0, 0x80(r26)
/* 0000019C 00000260  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 000001A0 00000264  D0 1A 00 84 */	stfs f0, 0x84(r26)
.L_000001A4:
/* 000001A4 00000268  3C 60 80 00 */	lis r3, 0x8000
/* 000001A8 0000026C  3C 80 00 00 */	lis r4, gp@ha
/* 000001AC 00000270  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 000001B0 00000274  38 84 00 00 */	addi r4, r4, gp@l
/* 000001B4 00000278  38 00 03 E8 */	li r0, 0x3e8
/* 000001B8 0000027C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000001BC 00000280  54 63 F0 BE */	srwi r3, r3, 2
/* 000001C0 00000284  80 BA 00 78 */	lwz r5, 0x78(r26)
/* 000001C4 00000288  7C 03 03 96 */	divwu r0, r3, r0
/* 000001C8 0000028C  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 000001CC 00000290  7C 65 18 50 */	subf r3, r5, r3
/* 000001D0 00000294  7C 83 03 96 */	divwu r4, r3, r0
/* 000001D4 00000298  7C 04 E8 00 */	cmpw r4, r29
/* 000001D8 0000029C  40 80 00 64 */	bge .L_0000023C
/* 000001DC 000002A0  FC 40 F0 90 */	fmr f2, f30
/* 000001E0 000002A4  C0 3A 00 7C */	lfs f1, 0x7c(r26)
/* 000001E4 000002A8  7F 83 E3 78 */	mr r3, r28
/* 000001E8 000002AC  7C 9B 23 78 */	mr r27, r4
/* 000001EC 000002B0  7F A5 EB 78 */	mr r5, r29
/* 000001F0 000002B4  48 00 0B 99 */	bl intplGetValue
/* 000001F4 000002B8  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 000001F8 000002BC  FC 40 E8 90 */	fmr f2, f29
/* 000001FC 000002C0  7F 83 E3 78 */	mr r3, r28
/* 00000200 000002C4  7F 64 DB 78 */	mr r4, r27
/* 00000204 000002C8  C0 3A 00 80 */	lfs f1, 0x80(r26)
/* 00000208 000002CC  7F A5 EB 78 */	mr r5, r29
/* 0000020C 000002D0  48 00 0B 7D */	bl intplGetValue
/* 00000210 000002D4  EC 1F 08 2A */	fadds f0, f31, f1
/* 00000214 000002D8  7F 83 E3 78 */	mr r3, r28
/* 00000218 000002DC  FC 40 E0 90 */	fmr f2, f28
/* 0000021C 000002E0  7F 64 DB 78 */	mr r4, r27
/* 00000220 000002E4  7F A5 EB 78 */	mr r5, r29
/* 00000224 000002E8  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 00000228 000002EC  C0 3A 00 84 */	lfs f1, 0x84(r26)
/* 0000022C 000002F0  48 00 0B 5D */	bl intplGetValue
/* 00000230 000002F4  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 00000234 000002F8  38 60 00 00 */	li r3, 0x0
/* 00000238 000002FC  48 00 00 18 */	b .L_00000250
.L_0000023C:
/* 0000023C 00000300  EC 1D F8 2A */	fadds f0, f29, f31
/* 00000240 00000304  D3 DF 00 3C */	stfs f30, 0x3c(r31)
/* 00000244 00000308  38 60 00 02 */	li r3, 0x2
/* 00000248 0000030C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 0000024C 00000310  D3 9F 00 44 */	stfs f28, 0x44(r31)
.L_00000250:
/* 00000250 00000314  E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 00000254 00000318  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 00000258 0000031C  E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 0000025C 00000320  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 00000260 00000324  E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 00000264 00000328  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 00000268 0000032C  E3 81 00 48 */	psq_l f28, 0x48(r1), 0, qr0
/* 0000026C 00000330  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 00000270 00000334  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 00000274 00000338  80 01 00 84 */	lwz r0, 0x84(r1)
/* 00000278 0000033C  7C 08 03 A6 */	mtlr r0
/* 0000027C 00000340  38 21 00 80 */	addi r1, r1, 0x80
/* 00000280 00000344  4E 80 00 20 */	blr
.endfn win_item_move_3d_position

# .text:0x284 | 0x284 | size: 0x30
.fn mariowalk_wait, local
/* 00000284 00000348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000288 0000034C  7C 08 02 A6 */	mflr r0
/* 0000028C 00000350  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000290 00000354  48 00 0A F9 */	bl marioGetPtr
/* 00000294 00000358  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00000298 0000035C  54 00 06 B4 */	rlwinm r0, r0, 0, 26, 26
/* 0000029C 00000360  7C 00 00 34 */	cntlzw r0, r0
/* 000002A0 00000364  54 03 D9 7E */	srwi r3, r0, 5
/* 000002A4 00000368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000002A8 0000036C  7C 08 03 A6 */	mtlr r0
/* 000002AC 00000370  38 21 00 10 */	addi r1, r1, 0x10
/* 000002B0 00000374  4E 80 00 20 */	blr
.endfn mariowalk_wait

# 0x00000000..0x000007E8 | size: 0x7E8
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x3
.obj str_me_win_00003748, local
	.string "me"
.endobj str_me_win_00003748

# .rodata:0x3 | 0x3 | size: 0x1
.obj gap_03_00000003_rodata, global
.hidden gap_03_00000003_rodata
	.byte 0x00
.endobj gap_03_00000003_rodata

# .rodata:0x4 | 0x4 | size: 0x8
.obj str_PTR_S_3_win_0000374c, local
	.string "PTR_S_3"
.endobj str_PTR_S_3_win_0000374c

# .rodata:0xC | 0xC | size: 0x8
.obj str_PTR_T_3_win_00003754, local
	.string "PTR_T_3"
.endobj str_PTR_T_3_win_00003754

# .rodata:0x14 | 0x14 | size: 0x10
.obj str_stg2_win_e01_18_win_0000375c, local
	.string "stg2_win_e01_18"
.endobj str_stg2_win_e01_18_win_0000375c

# .rodata:0x24 | 0x24 | size: 0x10
.obj str_stg2_win_e01_17_win_0000376c, local
	.string "stg2_win_e01_17"
.endobj str_stg2_win_e01_17_win_0000376c

# .rodata:0x34 | 0x34 | size: 0x10
.obj str_stg2_win_e01_16_win_0000377c, local
	.string "stg2_win_e01_16"
.endobj str_stg2_win_e01_16_win_0000377c

# .rodata:0x44 | 0x44 | size: 0xC
.obj str_irai_28_001_win_0000378c, local
	.string "irai_28_001"
.endobj str_irai_28_001_win_0000378c

# .rodata:0x50 | 0x50 | size: 0xC
.obj str_irai_28_002_win_00003798, local
	.string "irai_28_002"
.endobj str_irai_28_002_win_00003798

# .rodata:0x5C | 0x5C | size: 0xF
.obj str_stg2_win_00_01_win_000037a4, local
	.string "stg2_win_00_01"
.endobj str_stg2_win_00_01_win_000037a4

# .rodata:0x6B | 0x6B | size: 0x1
.obj gap_03_0000006B_rodata, global
.hidden gap_03_0000006B_rodata
	.byte 0x00
.endobj gap_03_0000006B_rodata

# .rodata:0x6C | 0x6C | size: 0x9
.obj str_キザ野郎_win_000037b4, local
	.4byte 0x834C8355
	.4byte 0x96EC9859
	.byte 0x00
.endobj str_キザ野郎_win_000037b4

# .rodata:0x75 | 0x75 | size: 0x3
.obj gap_03_00000075_rodata, global
.hidden gap_03_00000075_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000075_rodata

# .rodata:0x78 | 0x78 | size: 0x7
.obj str_c_kiza_win_000037c0, local
	.string "c_kiza"
.endobj str_c_kiza_win_000037c0

# .rodata:0x7F | 0x7F | size: 0x1
.obj gap_03_0000007F_rodata, global
.hidden gap_03_0000007F_rodata
	.byte 0x00
.endobj gap_03_0000007F_rodata

# .rodata:0x80 | 0x80 | size: 0x9
.obj str_ビビアン_win_000037c8, local
	.4byte 0x83728372
	.4byte 0x83418393
	.byte 0x00
.endobj str_ビビアン_win_000037c8

# .rodata:0x89 | 0x89 | size: 0x3
.obj gap_03_00000089_rodata, global
.hidden gap_03_00000089_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000089_rodata

# .rodata:0x8C | 0x8C | size: 0x9
.obj str_マリリン_win_000037d4, local
	.4byte 0x837D838A
	.4byte 0x838A8393
	.byte 0x00
.endobj str_マリリン_win_000037d4

# .rodata:0x95 | 0x95 | size: 0x3
.obj gap_03_00000095_rodata, global
.hidden gap_03_00000095_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000095_rodata

# .rodata:0x98 | 0x98 | size: 0xB
.obj str_マジョリン_win_000037e0, local
	.4byte 0x837D8357
	.4byte 0x8387838A
	.byte 0x83, 0x93, 0x00
.endobj str_マジョリン_win_000037e0

# .rodata:0xA3 | 0xA3 | size: 0x1
.obj gap_03_000000A3_rodata, global
.hidden gap_03_000000A3_rodata
	.byte 0x00
.endobj gap_03_000000A3_rodata

# .rodata:0xA4 | 0xA4 | size: 0x9
.obj str_ファビオ_win_000037ec, local
	.4byte 0x83748340
	.4byte 0x83728349
	.byte 0x00
.endobj str_ファビオ_win_000037ec

# .rodata:0xAD | 0xAD | size: 0x3
.obj gap_03_000000AD_rodata, global
.hidden gap_03_000000AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000AD_rodata

# .rodata:0xB0 | 0xB0 | size: 0x7
.obj str_w_bero_win_000037f8, local
	.string "w_bero"
.endobj str_w_bero_win_000037f8

# .rodata:0xB7 | 0xB7 | size: 0x1
.obj gap_03_000000B7_rodata, global
.hidden gap_03_000000B7_rodata
	.byte 0x00
.endobj gap_03_000000B7_rodata

# .rodata:0xB8 | 0xB8 | size: 0x7
.obj str_win_06_win_00003800, local
	.string "win_06"
.endobj str_win_06_win_00003800

# .rodata:0xBF | 0xBF | size: 0x1
.obj gap_03_000000BF_rodata, global
.hidden gap_03_000000BF_rodata
	.byte 0x00
.endobj gap_03_000000BF_rodata

# .rodata:0xC0 | 0xC0 | size: 0x7
.obj str_e_bero_win_00003808, local
	.string "e_bero"
.endobj str_e_bero_win_00003808

# .rodata:0xC7 | 0xC7 | size: 0x1
.obj gap_03_000000C7_rodata, global
.hidden gap_03_000000C7_rodata
	.byte 0x00
.endobj gap_03_000000C7_rodata

# .rodata:0xC8 | 0xC8 | size: 0x7
.obj str_win_01_win_00003810, local
	.string "win_01"
.endobj str_win_01_win_00003810

# .rodata:0xCF | 0xCF | size: 0x1
.obj gap_03_000000CF_rodata, global
.hidden gap_03_000000CF_rodata
	.byte 0x00
.endobj gap_03_000000CF_rodata

# .rodata:0xD0 | 0xD0 | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_win_00003818, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_win_00003818

# .rodata:0xE6 | 0xE6 | size: 0x2
.obj gap_03_000000E6_rodata, global
.hidden gap_03_000000E6_rodata
	.2byte 0x0000
.endobj gap_03_000000E6_rodata

# .rodata:0xE8 | 0xE8 | size: 0x1
.obj zero_win_00003830, local
	.byte 0x00
.endobj zero_win_00003830

# .rodata:0xE9 | 0xE9 | size: 0x3
.obj gap_03_000000E9_rodata, global
.hidden gap_03_000000E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000E9_rodata

# .rodata:0xEC | 0xEC | size: 0xF
.obj str_BGM_EVT_WITCH1_win_00003834, local
	.string "BGM_EVT_WITCH1"
.endobj str_BGM_EVT_WITCH1_win_00003834

# .rodata:0xFB | 0xFB | size: 0x1
.obj gap_03_000000FB_rodata, global
.hidden gap_03_000000FB_rodata
	.byte 0x00
.endobj gap_03_000000FB_rodata

# .rodata:0xFC | 0xFC | size: 0x10
.obj str_stg2_win_e01_00_win_00003844, local
	.string "stg2_win_e01_00"
.endobj str_stg2_win_e01_00_win_00003844

# .rodata:0x10C | 0x10C | size: 0x10
.obj str_stg2_win_e01_01_win_00003854, local
	.string "stg2_win_e01_01"
.endobj str_stg2_win_e01_01_win_00003854

# .rodata:0x11C | 0x11C | size: 0x10
.obj str_stg2_win_e01_02_win_00003864, local
	.string "stg2_win_e01_02"
.endobj str_stg2_win_e01_02_win_00003864

# .rodata:0x12C | 0x12C | size: 0x13
.obj str_stg2_win_e01_02_01_win_00003874, local
	.string "stg2_win_e01_02_01"
.endobj str_stg2_win_e01_02_01_win_00003874

# .rodata:0x13F | 0x13F | size: 0x1
.obj gap_03_0000013F_rodata, global
.hidden gap_03_0000013F_rodata
	.byte 0x00
.endobj gap_03_0000013F_rodata

# .rodata:0x140 | 0x140 | size: 0x8
.obj str_PTR_U_1_win_00003888, local
	.string "PTR_U_1"
.endobj str_PTR_U_1_win_00003888

# .rodata:0x148 | 0x148 | size: 0x18
.obj str_SFX_STG2_VIVI_NECKLA_win_00003890, local
	.string "SFX_STG2_VIVI_NECKLACE1"
.endobj str_SFX_STG2_VIVI_NECKLA_win_00003890

# .rodata:0x160 | 0x160 | size: 0x9
.obj str_necklace_win_000038a8, local
	.string "necklace"
.endobj str_necklace_win_000038a8

# .rodata:0x169 | 0x169 | size: 0x3
.obj gap_03_00000169_rodata, global
.hidden gap_03_00000169_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000169_rodata

# .rodata:0x16C | 0x16C | size: 0x8
.obj str_PTR_S_5_win_000038b4, local
	.string "PTR_S_5"
.endobj str_PTR_S_5_win_000038b4

# .rodata:0x174 | 0x174 | size: 0x8
.obj str_PTR_T_6_win_000038bc, local
	.string "PTR_T_6"
.endobj str_PTR_T_6_win_000038bc

# .rodata:0x17C | 0x17C | size: 0x10
.obj str_stg2_win_e01_03_win_000038c4, local
	.string "stg2_win_e01_03"
.endobj str_stg2_win_e01_03_win_000038c4

# .rodata:0x18C | 0x18C | size: 0x8
.obj str_PTR_S_1_win_000038d4, local
	.string "PTR_S_1"
.endobj str_PTR_S_1_win_000038d4

# .rodata:0x194 | 0x194 | size: 0x10
.obj str_stg2_win_e01_04_win_000038dc, local
	.string "stg2_win_e01_04"
.endobj str_stg2_win_e01_04_win_000038dc

# .rodata:0x1A4 | 0x1A4 | size: 0x8
.obj str_PTR_H_1_win_000038ec, local
	.string "PTR_H_1"
.endobj str_PTR_H_1_win_000038ec

# .rodata:0x1AC | 0x1AC | size: 0x8
.obj str_PTR_T_2_win_000038f4, local
	.string "PTR_T_2"
.endobj str_PTR_T_2_win_000038f4

# .rodata:0x1B4 | 0x1B4 | size: 0x10
.obj str_stg2_win_e01_06_win_000038fc, local
	.string "stg2_win_e01_06"
.endobj str_stg2_win_e01_06_win_000038fc

# .rodata:0x1C4 | 0x1C4 | size: 0x10
.obj str_stg2_win_e01_07_win_0000390c, local
	.string "stg2_win_e01_07"
.endobj str_stg2_win_e01_07_win_0000390c

# .rodata:0x1D4 | 0x1D4 | size: 0x10
.obj str_stg2_win_e01_08_win_0000391c, local
	.string "stg2_win_e01_08"
.endobj str_stg2_win_e01_08_win_0000391c

# .rodata:0x1E4 | 0x1E4 | size: 0x1A
.obj str_SFX_VOICE_MARIO_QUES_win_0000392c, local
	.string "SFX_VOICE_MARIO_QUESTION1"
.endobj str_SFX_VOICE_MARIO_QUES_win_0000392c

# .rodata:0x1FE | 0x1FE | size: 0x2
.obj gap_03_000001FE_rodata, global
.hidden gap_03_000001FE_rodata
	.2byte 0x0000
.endobj gap_03_000001FE_rodata

# .rodata:0x200 | 0x200 | size: 0x10
.obj str_stg2_win_e01_09_win_00003948, local
	.string "stg2_win_e01_09"
.endobj str_stg2_win_e01_09_win_00003948

# .rodata:0x210 | 0x210 | size: 0x10
.obj str_stg2_win_e01_10_win_00003958, local
	.string "stg2_win_e01_10"
.endobj str_stg2_win_e01_10_win_00003958

# .rodata:0x220 | 0x220 | size: 0x10
.obj str_stg2_win_e01_11_win_00003968, local
	.string "stg2_win_e01_11"
.endobj str_stg2_win_e01_11_win_00003968

# .rodata:0x230 | 0x230 | size: 0x10
.obj str_stg2_win_e01_12_win_00003978, local
	.string "stg2_win_e01_12"
.endobj str_stg2_win_e01_12_win_00003978

# .rodata:0x240 | 0x240 | size: 0x10
.obj str_stg2_win_e01_13_win_00003988, local
	.string "stg2_win_e01_13"
.endobj str_stg2_win_e01_13_win_00003988

# .rodata:0x250 | 0x250 | size: 0x8
.obj str_MJR_I_1_win_00003998, local
	.string "MJR_I_1"
.endobj str_MJR_I_1_win_00003998

# .rodata:0x258 | 0x258 | size: 0x1E
.obj str_SFX_STG2_MAJO_NECKLA_win_000039a0, local
	.string "SFX_STG2_MAJO_NECKLACE_STEAL2"
.endobj str_SFX_STG2_MAJO_NECKLA_win_000039a0

# .rodata:0x276 | 0x276 | size: 0x2
.obj gap_03_00000276_rodata, global
.hidden gap_03_00000276_rodata
	.2byte 0x0000
.endobj gap_03_00000276_rodata

# .rodata:0x278 | 0x278 | size: 0x1E
.obj str_SFX_STG2_MAJO_NECKLA_win_000039c0, local
	.string "SFX_STG2_MAJO_NECKLACE_STEAL1"
.endobj str_SFX_STG2_MAJO_NECKLA_win_000039c0

# .rodata:0x296 | 0x296 | size: 0x2
.obj gap_03_00000296_rodata, global
.hidden gap_03_00000296_rodata
	.2byte 0x0000
.endobj gap_03_00000296_rodata

# .rodata:0x298 | 0x298 | size: 0xD
.obj str_stardust_n64_win_000039e0, local
	.string "stardust_n64"
.endobj str_stardust_n64_win_000039e0

# .rodata:0x2A5 | 0x2A5 | size: 0x3
.obj gap_03_000002A5_rodata, global
.hidden gap_03_000002A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002A5_rodata

# .rodata:0x2A8 | 0x2A8 | size: 0x8
.obj str_MJR_S_1_win_000039f0, local
	.string "MJR_S_1"
.endobj str_MJR_S_1_win_000039f0

# .rodata:0x2B0 | 0x2B0 | size: 0x8
.obj str_PTR_S_4_win_000039f8, local
	.string "PTR_S_4"
.endobj str_PTR_S_4_win_000039f8

# .rodata:0x2B8 | 0x2B8 | size: 0x13
.obj str_stg2_win_e01_13_01_win_00003a00, local
	.string "stg2_win_e01_13_01"
.endobj str_stg2_win_e01_13_01_win_00003a00

# .rodata:0x2CB | 0x2CB | size: 0x1
.obj gap_03_000002CB_rodata, global
.hidden gap_03_000002CB_rodata
	.byte 0x00
.endobj gap_03_000002CB_rodata

# .rodata:0x2CC | 0x2CC | size: 0x10
.obj str_stg2_win_e01_14_win_00003a14, local
	.string "stg2_win_e01_14"
.endobj str_stg2_win_e01_14_win_00003a14

# .rodata:0x2DC | 0x2DC | size: 0x8
.obj str_picture_win_00003a24, local
	.string "picture"
.endobj str_picture_win_00003a24

# .rodata:0x2E4 | 0x2E4 | size: 0x8
.obj str_PTR_T_5_win_00003a2c, local
	.string "PTR_T_5"
.endobj str_PTR_T_5_win_00003a2c

# .rodata:0x2EC | 0x2EC | size: 0x10
.obj str_stg2_win_e06_00_win_00003a34, local
	.string "stg2_win_e06_00"
.endobj str_stg2_win_e06_00_win_00003a34

# .rodata:0x2FC | 0x2FC | size: 0x10
.obj str_stg2_win_e06_01_win_00003a44, local
	.string "stg2_win_e06_01"
.endobj str_stg2_win_e06_01_win_00003a44

# .rodata:0x30C | 0x30C | size: 0x10
.obj str_stg2_win_e06_02_win_00003a54, local
	.string "stg2_win_e06_02"
.endobj str_stg2_win_e06_02_win_00003a54

# .rodata:0x31C | 0x31C | size: 0x10
.obj str_stg2_win_e06_03_win_00003a64, local
	.string "stg2_win_e06_03"
.endobj str_stg2_win_e06_03_win_00003a64

# .rodata:0x32C | 0x32C | size: 0x10
.obj str_stg2_win_e06_04_win_00003a74, local
	.string "stg2_win_e06_04"
.endobj str_stg2_win_e06_04_win_00003a74

# .rodata:0x33C | 0x33C | size: 0x10
.obj str_stg2_win_e06_05_win_00003a84, local
	.string "stg2_win_e06_05"
.endobj str_stg2_win_e06_05_win_00003a84

# .rodata:0x34C | 0x34C | size: 0x10
.obj str_stg2_win_e06_06_win_00003a94, local
	.string "stg2_win_e06_06"
.endobj str_stg2_win_e06_06_win_00003a94

# .rodata:0x35C | 0x35C | size: 0x10
.obj str_stg2_win_e06_07_win_00003aa4, local
	.string "stg2_win_e06_07"
.endobj str_stg2_win_e06_07_win_00003aa4

# .rodata:0x36C | 0x36C | size: 0x10
.obj str_stg2_win_e06_08_win_00003ab4, local
	.string "stg2_win_e06_08"
.endobj str_stg2_win_e06_08_win_00003ab4

# .rodata:0x37C | 0x37C | size: 0x10
.obj str_stg2_win_e06_09_win_00003ac4, local
	.string "stg2_win_e06_09"
.endobj str_stg2_win_e06_09_win_00003ac4

# .rodata:0x38C | 0x38C | size: 0x10
.obj str_stg2_win_e06_10_win_00003ad4, local
	.string "stg2_win_e06_10"
.endobj str_stg2_win_e06_10_win_00003ad4

# .rodata:0x39C | 0x39C | size: 0x10
.obj str_stg2_win_e06_11_win_00003ae4, local
	.string "stg2_win_e06_11"
.endobj str_stg2_win_e06_11_win_00003ae4

# .rodata:0x3AC | 0x3AC | size: 0x10
.obj str_stg2_win_e06_12_win_00003af4, local
	.string "stg2_win_e06_12"
.endobj str_stg2_win_e06_12_win_00003af4

# .rodata:0x3BC | 0x3BC | size: 0x7
.obj str_win_03_win_00003b04, local
	.string "win_03"
.endobj str_win_03_win_00003b04

# .rodata:0x3C3 | 0x3C3 | size: 0x1
.obj gap_03_000003C3_rodata, global
.hidden gap_03_000003C3_rodata
	.byte 0x00
.endobj gap_03_000003C3_rodata

# .rodata:0x3C4 | 0x3C4 | size: 0x7
.obj str_n_bero_win_00003b0c, local
	.string "n_bero"
.endobj str_n_bero_win_00003b0c

# .rodata:0x3CB | 0x3CB | size: 0x1
.obj gap_03_000003CB_rodata, global
.hidden gap_03_000003CB_rodata
	.byte 0x00
.endobj gap_03_000003CB_rodata

# .rodata:0x3CC | 0x3CC | size: 0x10
.obj str_stg2_win_e07_00_win_00003b14, local
	.string "stg2_win_e07_00"
.endobj str_stg2_win_e07_00_win_00003b14

# .rodata:0x3DC | 0x3DC | size: 0x10
.obj str_stg2_win_e07_01_win_00003b24, local
	.string "stg2_win_e07_01"
.endobj str_stg2_win_e07_01_win_00003b24

# .rodata:0x3EC | 0x3EC | size: 0x10
.obj str_stg2_win_e07_02_win_00003b34, local
	.string "stg2_win_e07_02"
.endobj str_stg2_win_e07_02_win_00003b34

# .rodata:0x3FC | 0x3FC | size: 0x8
.obj str_PTR_T_1_win_00003b44, local
	.string "PTR_T_1"
.endobj str_PTR_T_1_win_00003b44

# .rodata:0x404 | 0x404 | size: 0x13
.obj str_stg2_win_e07_02_01_win_00003b4c, local
	.string "stg2_win_e07_02_01"
.endobj str_stg2_win_e07_02_01_win_00003b4c

# .rodata:0x417 | 0x417 | size: 0x1
.obj gap_03_00000417_rodata, global
.hidden gap_03_00000417_rodata
	.byte 0x00
.endobj gap_03_00000417_rodata

# .rodata:0x418 | 0x418 | size: 0x13
.obj str_stg2_win_e07_02_02_win_00003b60, local
	.string "stg2_win_e07_02_02"
.endobj str_stg2_win_e07_02_02_win_00003b60

# .rodata:0x42B | 0x42B | size: 0x1
.obj gap_03_0000042B_rodata, global
.hidden gap_03_0000042B_rodata
	.byte 0x00
.endobj gap_03_0000042B_rodata

# .rodata:0x42C | 0x42C | size: 0x13
.obj str_stg2_win_e07_02_03_win_00003b74, local
	.string "stg2_win_e07_02_03"
.endobj str_stg2_win_e07_02_03_win_00003b74

# .rodata:0x43F | 0x43F | size: 0x1
.obj gap_03_0000043F_rodata, global
.hidden gap_03_0000043F_rodata
	.byte 0x00
.endobj gap_03_0000043F_rodata

# .rodata:0x440 | 0x440 | size: 0x6
.obj str_M_I_Y_win_00003b88, local
	.string "M_I_Y"
.endobj str_M_I_Y_win_00003b88

# .rodata:0x446 | 0x446 | size: 0x2
.obj gap_03_00000446_rodata, global
.hidden gap_03_00000446_rodata
	.2byte 0x0000
.endobj gap_03_00000446_rodata

# .rodata:0x448 | 0x448 | size: 0x13
.obj str_stg2_win_e07_02_04_win_00003b90, local
	.string "stg2_win_e07_02_04"
.endobj str_stg2_win_e07_02_04_win_00003b90

# .rodata:0x45B | 0x45B | size: 0x1
.obj gap_03_0000045B_rodata, global
.hidden gap_03_0000045B_rodata
	.byte 0x00
.endobj gap_03_0000045B_rodata

# .rodata:0x45C | 0x45C | size: 0x13
.obj str_stg2_win_e07_02_05_win_00003ba4, local
	.string "stg2_win_e07_02_05"
.endobj str_stg2_win_e07_02_05_win_00003ba4

# .rodata:0x46F | 0x46F | size: 0x1
.obj gap_03_0000046F_rodata, global
.hidden gap_03_0000046F_rodata
	.byte 0x00
.endobj gap_03_0000046F_rodata

# .rodata:0x470 | 0x470 | size: 0x6
.obj str_M_I_N_win_00003bb8, local
	.string "M_I_N"
.endobj str_M_I_N_win_00003bb8

# .rodata:0x476 | 0x476 | size: 0x2
.obj gap_03_00000476_rodata, global
.hidden gap_03_00000476_rodata
	.2byte 0x0000
.endobj gap_03_00000476_rodata

# .rodata:0x478 | 0x478 | size: 0x13
.obj str_stg2_win_e07_02_06_win_00003bc0, local
	.string "stg2_win_e07_02_06"
.endobj str_stg2_win_e07_02_06_win_00003bc0

# .rodata:0x48B | 0x48B | size: 0x1
.obj gap_03_0000048B_rodata, global
.hidden gap_03_0000048B_rodata
	.byte 0x00
.endobj gap_03_0000048B_rodata

# .rodata:0x48C | 0x48C | size: 0x13
.obj str_stg2_win_e07_02_07_win_00003bd4, local
	.string "stg2_win_e07_02_07"
.endobj str_stg2_win_e07_02_07_win_00003bd4

# .rodata:0x49F | 0x49F | size: 0x1
.obj gap_03_0000049F_rodata, global
.hidden gap_03_0000049F_rodata
	.byte 0x00
.endobj gap_03_0000049F_rodata

# .rodata:0x4A0 | 0x4A0 | size: 0x13
.obj str_stg2_win_e07_02_08_win_00003be8, local
	.string "stg2_win_e07_02_08"
.endobj str_stg2_win_e07_02_08_win_00003be8

# .rodata:0x4B3 | 0x4B3 | size: 0x1
.obj gap_03_000004B3_rodata, global
.hidden gap_03_000004B3_rodata
	.byte 0x00
.endobj gap_03_000004B3_rodata

# .rodata:0x4B4 | 0x4B4 | size: 0x13
.obj str_stg2_win_e07_02_09_win_00003bfc, local
	.string "stg2_win_e07_02_09"
.endobj str_stg2_win_e07_02_09_win_00003bfc

# .rodata:0x4C7 | 0x4C7 | size: 0x1
.obj gap_03_000004C7_rodata, global
.hidden gap_03_000004C7_rodata
	.byte 0x00
.endobj gap_03_000004C7_rodata

# .rodata:0x4C8 | 0x4C8 | size: 0x8
.obj str_PTR_B_1_win_00003c10, local
	.string "PTR_B_1"
.endobj str_PTR_B_1_win_00003c10

# .rodata:0x4D0 | 0x4D0 | size: 0x8
.obj str_PTR_B_2_win_00003c18, local
	.string "PTR_B_2"
.endobj str_PTR_B_2_win_00003c18

# .rodata:0x4D8 | 0x4D8 | size: 0x8
.obj str_PTR_T_4_win_00003c20, local
	.string "PTR_T_4"
.endobj str_PTR_T_4_win_00003c20

# .rodata:0x4E0 | 0x4E0 | size: 0x13
.obj str_stg2_win_e07_02_10_win_00003c28, local
	.string "stg2_win_e07_02_10"
.endobj str_stg2_win_e07_02_10_win_00003c28

# .rodata:0x4F3 | 0x4F3 | size: 0x1
.obj gap_03_000004F3_rodata, global
.hidden gap_03_000004F3_rodata
	.byte 0x00
.endobj gap_03_000004F3_rodata

# .rodata:0x4F4 | 0x4F4 | size: 0x10
.obj str_stg2_win_e07_06_win_00003c3c, local
	.string "stg2_win_e07_06"
.endobj str_stg2_win_e07_06_win_00003c3c

# .rodata:0x504 | 0x504 | size: 0x10
.obj str_stg2_win_e07_08_win_00003c4c, local
	.string "stg2_win_e07_08"
.endobj str_stg2_win_e07_08_win_00003c4c

# .rodata:0x514 | 0x514 | size: 0x10
.obj str_stg2_win_e07_07_win_00003c5c, local
	.string "stg2_win_e07_07"
.endobj str_stg2_win_e07_07_win_00003c5c

# .rodata:0x524 | 0x524 | size: 0x8
.obj str_PTR_R_3_win_00003c6c, local
	.string "PTR_R_3"
.endobj str_PTR_R_3_win_00003c6c

# .rodata:0x52C | 0x52C | size: 0x10
.obj str_stg2_win_e08_03_win_00003c74, local
	.string "stg2_win_e08_03"
.endobj str_stg2_win_e08_03_win_00003c74

# .rodata:0x53C | 0x53C | size: 0x9
.obj str_extparty_win_00003c84, local
	.string "extparty"
.endobj str_extparty_win_00003c84

# .rodata:0x545 | 0x545 | size: 0x3
.obj gap_03_00000545_rodata, global
.hidden gap_03_00000545_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000545_rodata

# .rodata:0x548 | 0x548 | size: 0x7
.obj str_ダミー_win_00003c90, local
	.4byte 0x835F837E
	.byte 0x81, 0x5B, 0x00
.endobj str_ダミー_win_00003c90

# .rodata:0x54F | 0x54F | size: 0x1
.obj gap_03_0000054F_rodata, global
.hidden gap_03_0000054F_rodata
	.byte 0x00
.endobj gap_03_0000054F_rodata

# .rodata:0x550 | 0x550 | size: 0x10
.obj str_stg2_win_e08_02_win_00003c98, local
	.string "stg2_win_e08_02"
.endobj str_stg2_win_e08_02_win_00003c98

# .rodata:0x560 | 0x560 | size: 0x10
.obj str_stg2_win_e08_01_win_00003ca8, local
	.string "stg2_win_e08_01"
.endobj str_stg2_win_e08_01_win_00003ca8

# .rodata:0x570 | 0x570 | size: 0xB
.obj str_c_majyorin_win_00003cb8, local
	.string "c_majyorin"
.endobj str_c_majyorin_win_00003cb8

# .rodata:0x57B | 0x57B | size: 0x1
.obj gap_03_0000057B_rodata, global
.hidden gap_03_0000057B_rodata
	.byte 0x00
.endobj gap_03_0000057B_rodata

# .rodata:0x57C | 0x57C | size: 0x13
.obj str_SFX_GURUGURU_MARK1_win_00003cc4, local
	.string "SFX_GURUGURU_MARK1"
.endobj str_SFX_GURUGURU_MARK1_win_00003cc4

# .rodata:0x58F | 0x58F | size: 0x1
.obj gap_03_0000058F_rodata, global
.hidden gap_03_0000058F_rodata
	.byte 0x00
.endobj gap_03_0000058F_rodata

# .rodata:0x590 | 0x590 | size: 0xB
.obj str_effmaririn_win_00003cd8, local
	.string "effmaririn"
.endobj str_effmaririn_win_00003cd8

# .rodata:0x59B | 0x59B | size: 0x1
.obj gap_03_0000059B_rodata, global
.hidden gap_03_0000059B_rodata
	.byte 0x00
.endobj gap_03_0000059B_rodata

# .rodata:0x59C | 0x59C | size: 0xA
.obj str_effvivian_win_00003ce4, local
	.string "effvivian"
.endobj str_effvivian_win_00003ce4

# .rodata:0x5A6 | 0x5A6 | size: 0x2
.obj gap_03_000005A6_rodata, global
.hidden gap_03_000005A6_rodata
	.2byte 0x0000
.endobj gap_03_000005A6_rodata

# .rodata:0x5A8 | 0x5A8 | size: 0x10
.obj str_stg2_win_e08_00_win_00003cf0, local
	.string "stg2_win_e08_00"
.endobj str_stg2_win_e08_00_win_00003cf0

# .rodata:0x5B8 | 0x5B8 | size: 0x19
.obj str_SFX_STG2_SISTERS_ESC_win_00003d00, local
	.string "SFX_STG2_SISTERS_ESCAPE1"
.endobj str_SFX_STG2_SISTERS_ESC_win_00003d00

# .rodata:0x5D1 | 0x5D1 | size: 0x3
.obj gap_03_000005D1_rodata, global
.hidden gap_03_000005D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005D1_rodata

# .rodata:0x5D4 | 0x5D4 | size: 0x19
.obj str_SFX_STG2_SISTERS_ESC_win_00003d1c, local
	.string "SFX_STG2_SISTERS_ESCAPE2"
.endobj str_SFX_STG2_SISTERS_ESC_win_00003d1c

# .rodata:0x5ED | 0x5ED | size: 0x3
.obj gap_03_000005ED_rodata, global
.hidden gap_03_000005ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005ED_rodata

# .rodata:0x5F0 | 0x5F0 | size: 0x8
.obj str_PTR_F_1_win_00003d38, local
	.string "PTR_F_1"
.endobj str_PTR_F_1_win_00003d38

# .rodata:0x5F8 | 0x5F8 | size: 0xE
.obj str_BGM_STG2_WIN1_win_00003d40, local
	.string "BGM_STG2_WIN1"
.endobj str_BGM_STG2_WIN1_win_00003d40

# .rodata:0x606 | 0x606 | size: 0x2
.obj gap_03_00000606_rodata, global
.hidden gap_03_00000606_rodata
	.2byte 0x0000
.endobj gap_03_00000606_rodata

# .rodata:0x608 | 0x608 | size: 0xA
.obj str_item_ki01_win_00003d50, local
	.string "item_ki01"
.endobj str_item_ki01_win_00003d50

# .rodata:0x612 | 0x612 | size: 0x2
.obj gap_03_00000612_rodata, global
.hidden gap_03_00000612_rodata
	.2byte 0x0000
.endobj gap_03_00000612_rodata

# .rodata:0x614 | 0x614 | size: 0xA
.obj str_A_tree_01_win_00003d5c, local
	.string "A_tree_01"
.endobj str_A_tree_01_win_00003d5c

# .rodata:0x61E | 0x61E | size: 0x2
.obj gap_03_0000061E_rodata, global
.hidden gap_03_0000061E_rodata
	.2byte 0x0000
.endobj gap_03_0000061E_rodata

# .rodata:0x620 | 0x620 | size: 0xE
.obj str_S_tree_mki_01_win_00003d68, local
	.string "S_tree_mki_01"
.endobj str_S_tree_mki_01_win_00003d68

# .rodata:0x62E | 0x62E | size: 0x2
.obj gap_03_0000062E_rodata, global
.hidden gap_03_0000062E_rodata
	.2byte 0x0000
.endobj gap_03_0000062E_rodata

# .rodata:0x630 | 0x630 | size: 0xC
.obj str_S_tree_ha01_win_00003d78, local
	.string "S_tree_ha01"
.endobj str_S_tree_ha01_win_00003d78

# .rodata:0x63C | 0x63C | size: 0xA
.obj str_A_tree_02_win_00003d84, local
	.string "A_tree_02"
.endobj str_A_tree_02_win_00003d84

# .rodata:0x646 | 0x646 | size: 0x2
.obj gap_03_00000646_rodata, global
.hidden gap_03_00000646_rodata
	.2byte 0x0000
.endobj gap_03_00000646_rodata

# .rodata:0x648 | 0x648 | size: 0xE
.obj str_S_tree_mki_02_win_00003d90, local
	.string "S_tree_mki_02"
.endobj str_S_tree_mki_02_win_00003d90

# .rodata:0x656 | 0x656 | size: 0x2
.obj gap_03_00000656_rodata, global
.hidden gap_03_00000656_rodata
	.2byte 0x0000
.endobj gap_03_00000656_rodata

# .rodata:0x658 | 0x658 | size: 0xC
.obj str_S_tree_ha02_win_00003da0, local
	.string "S_tree_ha02"
.endobj str_S_tree_ha02_win_00003da0

# .rodata:0x664 | 0x664 | size: 0xA
.obj str_A_tree_03_win_00003dac, local
	.string "A_tree_03"
.endobj str_A_tree_03_win_00003dac

# .rodata:0x66E | 0x66E | size: 0x2
.obj gap_03_0000066E_rodata, global
.hidden gap_03_0000066E_rodata
	.2byte 0x0000
.endobj gap_03_0000066E_rodata

# .rodata:0x670 | 0x670 | size: 0xE
.obj str_S_tree_mki_03_win_00003db8, local
	.string "S_tree_mki_03"
.endobj str_S_tree_mki_03_win_00003db8

# .rodata:0x67E | 0x67E | size: 0x2
.obj gap_03_0000067E_rodata, global
.hidden gap_03_0000067E_rodata
	.2byte 0x0000
.endobj gap_03_0000067E_rodata

# .rodata:0x680 | 0x680 | size: 0xC
.obj str_S_tree_ha03_win_00003dc8, local
	.string "S_tree_ha03"
.endobj str_S_tree_ha03_win_00003dc8

# .rodata:0x68C | 0x68C | size: 0xA
.obj str_A_tree_04_win_00003dd4, local
	.string "A_tree_04"
.endobj str_A_tree_04_win_00003dd4

# .rodata:0x696 | 0x696 | size: 0x2
.obj gap_03_00000696_rodata, global
.hidden gap_03_00000696_rodata
	.2byte 0x0000
.endobj gap_03_00000696_rodata

# .rodata:0x698 | 0x698 | size: 0xE
.obj str_S_tree_mki_04_win_00003de0, local
	.string "S_tree_mki_04"
.endobj str_S_tree_mki_04_win_00003de0

# .rodata:0x6A6 | 0x6A6 | size: 0x2
.obj gap_03_000006A6_rodata, global
.hidden gap_03_000006A6_rodata
	.2byte 0x0000
.endobj gap_03_000006A6_rodata

# .rodata:0x6A8 | 0x6A8 | size: 0xC
.obj str_S_tree_ha04_win_00003df0, local
	.string "S_tree_ha04"
.endobj str_S_tree_ha04_win_00003df0

# .rodata:0x6B4 | 0x6B4 | size: 0xA
.obj str_A_tree_05_win_00003dfc, local
	.string "A_tree_05"
.endobj str_A_tree_05_win_00003dfc

# .rodata:0x6BE | 0x6BE | size: 0x2
.obj gap_03_000006BE_rodata, global
.hidden gap_03_000006BE_rodata
	.2byte 0x0000
.endobj gap_03_000006BE_rodata

# .rodata:0x6C0 | 0x6C0 | size: 0xE
.obj str_S_tree_mki_05_win_00003e08, local
	.string "S_tree_mki_05"
.endobj str_S_tree_mki_05_win_00003e08

# .rodata:0x6CE | 0x6CE | size: 0x2
.obj gap_03_000006CE_rodata, global
.hidden gap_03_000006CE_rodata
	.2byte 0x0000
.endobj gap_03_000006CE_rodata

# .rodata:0x6D0 | 0x6D0 | size: 0xC
.obj str_S_tree_ha05_win_00003e18, local
	.string "S_tree_ha05"
.endobj str_S_tree_ha05_win_00003e18

# .rodata:0x6DC | 0x6DC | size: 0xA
.obj str_A_tree_06_win_00003e24, local
	.string "A_tree_06"
.endobj str_A_tree_06_win_00003e24

# .rodata:0x6E6 | 0x6E6 | size: 0x2
.obj gap_03_000006E6_rodata, global
.hidden gap_03_000006E6_rodata
	.2byte 0x0000
.endobj gap_03_000006E6_rodata

# .rodata:0x6E8 | 0x6E8 | size: 0xE
.obj str_S_tree_mki_06_win_00003e30, local
	.string "S_tree_mki_06"
.endobj str_S_tree_mki_06_win_00003e30

# .rodata:0x6F6 | 0x6F6 | size: 0x2
.obj gap_03_000006F6_rodata, global
.hidden gap_03_000006F6_rodata
	.2byte 0x0000
.endobj gap_03_000006F6_rodata

# .rodata:0x6F8 | 0x6F8 | size: 0xC
.obj str_S_tree_ha06_win_00003e40, local
	.string "S_tree_ha06"
.endobj str_S_tree_ha06_win_00003e40

# .rodata:0x704 | 0x704 | size: 0xA
.obj str_A_tree_07_win_00003e4c, local
	.string "A_tree_07"
.endobj str_A_tree_07_win_00003e4c

# .rodata:0x70E | 0x70E | size: 0x2
.obj gap_03_0000070E_rodata, global
.hidden gap_03_0000070E_rodata
	.2byte 0x0000
.endobj gap_03_0000070E_rodata

# .rodata:0x710 | 0x710 | size: 0xE
.obj str_S_tree_mki_07_win_00003e58, local
	.string "S_tree_mki_07"
.endobj str_S_tree_mki_07_win_00003e58

# .rodata:0x71E | 0x71E | size: 0x2
.obj gap_03_0000071E_rodata, global
.hidden gap_03_0000071E_rodata
	.2byte 0x0000
.endobj gap_03_0000071E_rodata

# .rodata:0x720 | 0x720 | size: 0xC
.obj str_S_tree_ha07_win_00003e68, local
	.string "S_tree_ha07"
.endobj str_S_tree_ha07_win_00003e68

# .rodata:0x72C | 0x72C | size: 0xA
.obj str_A_tree_08_win_00003e74, local
	.string "A_tree_08"
.endobj str_A_tree_08_win_00003e74

# .rodata:0x736 | 0x736 | size: 0x2
.obj gap_03_00000736_rodata, global
.hidden gap_03_00000736_rodata
	.2byte 0x0000
.endobj gap_03_00000736_rodata

# .rodata:0x738 | 0x738 | size: 0xE
.obj str_S_tree_mki_08_win_00003e80, local
	.string "S_tree_mki_08"
.endobj str_S_tree_mki_08_win_00003e80

# .rodata:0x746 | 0x746 | size: 0x2
.obj gap_03_00000746_rodata, global
.hidden gap_03_00000746_rodata
	.2byte 0x0000
.endobj gap_03_00000746_rodata

# .rodata:0x748 | 0x748 | size: 0xC
.obj str_S_tree_ha08_win_00003e90, local
	.string "S_tree_ha08"
.endobj str_S_tree_ha08_win_00003e90

# .rodata:0x754 | 0x754 | size: 0xA
.obj str_A_tree_09_win_00003e9c, local
	.string "A_tree_09"
.endobj str_A_tree_09_win_00003e9c

# .rodata:0x75E | 0x75E | size: 0x2
.obj gap_03_0000075E_rodata, global
.hidden gap_03_0000075E_rodata
	.2byte 0x0000
.endobj gap_03_0000075E_rodata

# .rodata:0x760 | 0x760 | size: 0xE
.obj str_S_tree_mki_09_win_00003ea8, local
	.string "S_tree_mki_09"
.endobj str_S_tree_mki_09_win_00003ea8

# .rodata:0x76E | 0x76E | size: 0x2
.obj gap_03_0000076E_rodata, global
.hidden gap_03_0000076E_rodata
	.2byte 0x0000
.endobj gap_03_0000076E_rodata

# .rodata:0x770 | 0x770 | size: 0xC
.obj str_S_tree_ha09_win_00003eb8, local
	.string "S_tree_ha09"
.endobj str_S_tree_ha09_win_00003eb8

# .rodata:0x77C | 0x77C | size: 0xC
.obj str_irai_28_003_win_00003ec4, local
	.string "irai_28_003"
.endobj str_irai_28_003_win_00003ec4

# .rodata:0x788 | 0x788 | size: 0xC
.obj str_irai_28_005_win_00003ed0, local
	.string "irai_28_005"
.endobj str_irai_28_005_win_00003ed0

# .rodata:0x794 | 0x794 | size: 0x13
.obj str_sys_request_finish_win_00003edc, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_win_00003edc

# .rodata:0x7A7 | 0x7A7 | size: 0x1
.obj gap_03_000007A7_rodata, global
.hidden gap_03_000007A7_rodata
	.byte 0x00
.endobj gap_03_000007A7_rodata

# .rodata:0x7A8 | 0x7A8 | size: 0xB
.obj str_パックン１_win_00003ef0, local
	.4byte 0x83708362
	.4byte 0x834E8393
	.byte 0x82, 0x50, 0x00
.endobj str_パックン１_win_00003ef0

# .rodata:0x7B3 | 0x7B3 | size: 0x1
.obj gap_03_000007B3_rodata, global
.hidden gap_03_000007B3_rodata
	.byte 0x00
.endobj gap_03_000007B3_rodata

# .rodata:0x7B4 | 0x7B4 | size: 0xB
.obj str_シンエモン_win_00003efc, local
	.4byte 0x83568393
	.4byte 0x83478382
	.byte 0x83, 0x93, 0x00
.endobj str_シンエモン_win_00003efc

# .rodata:0x7BF | 0x7BF | size: 0x1
.obj gap_03_000007BF_rodata, global
.hidden gap_03_000007BF_rodata
	.byte 0x00
.endobj gap_03_000007BF_rodata

# .rodata:0x7C0 | 0x7C0 | size: 0xB
.obj str_パックン２_win_00003f08, local
	.4byte 0x83708362
	.4byte 0x834E8393
	.byte 0x82, 0x51, 0x00
.endobj str_パックン２_win_00003f08

# .rodata:0x7CB | 0x7CB | size: 0x1
.obj gap_03_000007CB_rodata, global
.hidden gap_03_000007CB_rodata
	.byte 0x00
.endobj gap_03_000007CB_rodata

# .rodata:0x7CC | 0x7CC | size: 0xE
.obj str_ENV_STG2_WIN1_win_00003f14, local
	.string "ENV_STG2_WIN1"
.endobj str_ENV_STG2_WIN1_win_00003f14

# .rodata:0x7DA | 0x7DA | size: 0x2
.obj gap_03_000007DA_rodata, global
.hidden gap_03_000007DA_rodata
	.2byte 0x0000
.endobj gap_03_000007DA_rodata

# .rodata:0x7DC | 0x7DC | size: 0x2
.obj str_i_win_00003f24, local
	.string "i"
.endobj str_i_win_00003f24
	.2byte 0x0000

# .rodata:0x7E0 | 0x7E0 | size: 0x8
.obj double_to_int_win_00003f28, local
	.double 4503601774854144
.endobj double_to_int_win_00003f28

# 0x00000000..0x00003678 | size: 0x3678
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14 | size: 0x4
.obj gap_04_00000014_data, global
.hidden gap_04_00000014_data
	.4byte 0x00000000
.endobj gap_04_00000014_data

# .data:0x18 | 0x18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3C | size: 0x4
.obj gap_04_0000003C_data, global
.hidden gap_04_0000003C_data
	.4byte 0x00000000
.endobj gap_04_0000003C_data

# .data:0x40 | 0x40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50 | size: 0x8
.obj _three$localstatic4$sqrtf, local
	.4byte 0x40080000
	.4byte 0x00000000
.endobj _three$localstatic4$sqrtf

# .data:0x58 | 0x58 | size: 0x8
.obj _half$localstatic3$sqrtf, local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj _half$localstatic3$sqrtf

# .data:0x60 | 0x60 | size: 0x94
.obj vivian_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x10000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000048
	.4byte 0x00000053
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_win_00003748
	.4byte 0xFFFFFDE9
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_npc_set_force_regl_anim
	.4byte str_me_win_00003748
	.4byte str_PTR_S_3_win_0000374c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_me_win_00003748
	.4byte str_PTR_S_3_win_0000374c
	.4byte str_PTR_T_3_win_00003754
	.4byte 0x0002002F
	.4byte 0x00000054
	.4byte 0x00000055
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_win_00003748
	.4byte 0xFFFFFDE9
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj vivian_init

# .data:0xF4 | 0xF4 | size: 0x20
.obj vivian_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_18_win_0000375c
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x00000002
	.4byte 0x00000001
.endobj vivian_talk

# .data:0x114 | 0x114 | size: 0x4C
.obj maririn_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x10000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000048
	.4byte 0x00000055
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_win_00003748
	.4byte 0xFFFFFE11
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj maririn_init

# .data:0x160 | 0x160 | size: 0x20
.obj maririn_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_17_win_0000376c
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x00000002
	.4byte 0x00000001
.endobj maririn_talk

# .data:0x180 | 0x180 | size: 0x4C
.obj majorin_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x10000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000048
	.4byte 0x00000055
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_win_00003748
	.4byte 0xFFFFFE39
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majorin_init

# .data:0x1CC | 0x1CC | size: 0x20
.obj majorin_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_16_win_0000377c
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majorin_talk

# .data:0x1EC | 0x1EC | size: 0x54
.obj fabio_init, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_win_00003748
	.4byte 0xFFFFFE39
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_win_00003748
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_win_00003748
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fabio_init

# .data:0x240 | 0x240 | size: 0x68
.obj fabio_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001C
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_28_001_win_0000378c
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_28_002_win_00003798
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fabio_talk

# .data:0x2A8 | 0x2A8 | size: 0x4C
.obj kizayarou_regl, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_win_00003748
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_win_00003748
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_win_00003748
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_regl

# .data:0x2F4 | 0x2F4 | size: 0x20
.obj kizayarou_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_00_01_win_000037a4
	.4byte 0x00000000
	.4byte str_me_win_00003748
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_talk

# .data:0x314 | 0x314 | size: 0x98
.obj kizayarou_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_キザ野郎_win_000037b4
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte 0xFE363C80
	.4byte str_c_kiza_win_000037c0
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte 0xFE363C80
	.4byte str_キザ野郎_win_000037b4
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte kizayarou_talk
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte kizayarou_regl
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C80
	.4byte 0xFFFFFE3E
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C80
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kizayarou_init

# .data:0x3AC | 0x3AC | size: 0x1CC
.obj npcEnt, local
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000200
	.4byte 0x00000000
	.4byte vivian_init
	.4byte 0x00000000
	.4byte vivian_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte maririn_init
	.4byte 0x00000000
	.4byte maririn_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte majorin_init
	.4byte 0x00000000
	.4byte majorin_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ファビオ_win_000037ec
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte fabio_init
	.4byte 0x00000000
	.4byte fabio_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x578 | 0x578 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_win_000037f8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_06_win_00003800
	.4byte str_e_bero_win_00003808
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_win_00003808
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_01_win_00003810
	.4byte str_w_bero_win_000037f8
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

# .data:0x62C | 0x62C | size: 0xDC0
.obj witchtrio_momeru, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFFFFFDE9
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFFFFFE11
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFFFFFE39
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ビビアン_win_000037c8
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マリリン_win_000037d4
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マジョリン_win_000037e0
	.4byte 0x40000020
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFD07
	.4byte 0xFFFFFFDD
	.4byte 0xF24C5A80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFCEF
	.4byte 0x00000012
	.4byte 0xF24C5A80
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFD23
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_win_00003818
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_win_00003830
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_win_00003830
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000004
	.4byte zero_win_00003830
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF242B480
	.4byte 0x00000073
	.4byte 0xF24F91B3
	.4byte 0xF242B480
	.4byte 0x0000002D
	.4byte 0xFFFFFFBC
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_WITCH1_win_00003834
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_00_win_00003844
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_01_win_00003854
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_02_win_00003864
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE2F
	.4byte 0x00000055
	.4byte 0x000000E3
	.4byte 0xFFFFFE2F
	.4byte 0x00000025
	.4byte 0xFFFFFFBC
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_02_01_win_00003874
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDF8
	.4byte 0x00000055
	.4byte 0x000000E3
	.4byte 0xFFFFFDF8
	.4byte 0x00000025
	.4byte 0xFFFFFFBC
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_U_1_win_00003888
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_VIVI_NECKLA_win_00003890
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000011
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000B
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_necklace_win_000038a8
	.4byte 0x0000003F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_necklace_win_000038a8
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_5_win_000038b4
	.4byte str_PTR_T_6_win_000038bc
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_03_win_000038c4
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF242B480
	.4byte 0x00000073
	.4byte 0xF24F91B3
	.4byte 0xF242B480
	.4byte 0x0000002D
	.4byte 0xFFFFFFBC
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000038a8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_1_win_000038d4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_04_win_000038dc
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_H_1_win_000038ec
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_H_1_win_000038ec
	.4byte str_PTR_T_2_win_000038f4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_06_win_000038fc
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_07_win_0000390c
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_08_win_0000391c
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_マリリン_win_000037d4
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
	.4byte evt_cam3d_evt_set_rel
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000189
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xF24A274D
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_win_0000392c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_win_00003830
	.4byte 0x00000000
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF242B480
	.4byte 0x00000064
	.4byte 0xF24E0819
	.4byte 0xF242B480
	.4byte 0xF24B38E6
	.4byte 0xFFFFFFBC
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_09_win_00003948
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE2F
	.4byte 0x00000055
	.4byte 0x000000E3
	.4byte 0xFFFFFE2F
	.4byte 0x00000025
	.4byte 0xFFFFFFBC
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_10_win_00003958
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF242B480
	.4byte 0x00000073
	.4byte 0xF24F91B3
	.4byte 0xF242B480
	.4byte 0x0000002D
	.4byte 0xFFFFFFBC
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_11_win_00003968
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_12_win_00003978
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_13_win_00003988
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マジョリン_win_000037e0
	.4byte str_MJR_I_1_win_00003998
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_MAJO_NECKLA_win_000039a0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_H_1_win_000038ec
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_MAJO_NECKLA_win_000039c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFB
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000C
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000038a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_win_00003830
	.4byte str_stardust_n64_win_000039e0
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000177
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F8A
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000177
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F8A
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0008005B
	.4byte win_item_move_3d_position
	.4byte str_necklace_win_000038a8
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000002EE
	.4byte 0x00000000
	.4byte 0xFD050F8A
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マジョリン_win_000037e0
	.4byte str_MJR_S_1_win_000039f0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_4_win_000039f8
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000038a8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_13_01_win_00003a00
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_3_win_0000374c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_3_win_0000374c
	.4byte str_PTR_T_3_win_00003754
	.4byte 0x0003005B
	.4byte evt_npc_set_force_regl_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_3_win_0000374c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e01_14_win_00003a14
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x40000020
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000048
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj witchtrio_momeru

# .data:0x13EC | 0x13EC | size: 0x64
.obj majorin_have_picture, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_picture_win_00003a24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majorin_have_picture

# .data:0x1450 | 0x1450 | size: 0x854
.obj witchtrio_picture, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0x000000A5
	.4byte 0x00000246
	.4byte 0xFFFFFE11
	.4byte 0x0000002D
	.4byte 0xFFFFFF94
	.4byte 0x00000000
	.4byte 0x0000000B
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
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFFFFFDE9
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFFFFFE11
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFFFFFE39
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ビビアン_win_000037c8
	.4byte 0x44000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マリリン_win_000037d4
	.4byte 0x44000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マジョリン_win_000037e0
	.4byte 0x44000020
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_WITCH1_win_00003834
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_4_win_000039f8
	.4byte str_PTR_T_5_win_00003a2c
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_00_win_00003a34
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE34
	.4byte 0x0000005A
	.4byte 0x000000ED
	.4byte 0xFFFFFE34
	.4byte 0x0000001E
	.4byte 0xFFFFFF94
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_01_win_00003a44
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0x0000005A
	.4byte 0x000000ED
	.4byte 0xFFFFFE11
	.4byte 0x0000001E
	.4byte 0xFFFFFF94
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_02_win_00003a54
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_picture_win_00003a24
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_picture_win_00003a24
	.4byte 0x00000002
	.4byte 0x0002005D
	.4byte majorin_have_picture
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マジョリン_win_000037e0
	.4byte str_MJR_I_1_win_00003998
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マジョリン_win_000037e0
	.4byte str_MJR_S_1_win_000039f0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_picture_win_00003a24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_マリリン_win_000037d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_マジョリン_win_000037e0
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
	.4byte str_stg2_win_e06_03_win_00003a64
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0000006D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_04_win_00003a74
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_picture_win_00003a24
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_05_win_00003a84
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDF3
	.4byte 0x0000005A
	.4byte 0x000000ED
	.4byte 0xFFFFFDF3
	.4byte 0x0000001E
	.4byte 0xFFFFFF94
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_06_win_00003a94
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE34
	.4byte 0x0000005A
	.4byte 0x000000ED
	.4byte 0xFFFFFE34
	.4byte 0x0000001E
	.4byte 0xFFFFFF94
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_07_win_00003aa4
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0x0000005A
	.4byte 0x000000ED
	.4byte 0xFFFFFE11
	.4byte 0x0000001E
	.4byte 0xFFFFFF94
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_08_win_00003ab4
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_09_win_00003ac4
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_3_win_0000374c
	.4byte str_PTR_T_3_win_00003754
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_10_win_00003ad4
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_11_win_00003ae4
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e06_12_win_00003af4
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0x000000A5
	.4byte 0x00000246
	.4byte 0xFFFFFE11
	.4byte 0x0000002D
	.4byte 0xFFFFFF94
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000054
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_win_03_win_00003b04
	.4byte str_n_bero_win_00003b0c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj witchtrio_picture

# .data:0x1CA4 | 0x1CA4 | size: 0x8A8
.obj mario_vs_witchtrio, local
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ビビアン_win_000037c8
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マリリン_win_000037d4
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マジョリン_win_000037e0
	.4byte 0x40000060
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFEBB
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_マジョリン_win_000037e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_マリリン_win_000037d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_win_00003830
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0x0000005D
	.4byte 0x000000FC
	.4byte 0xFFFFFE11
	.4byte 0x0000002D
	.4byte 0xFFFFFFED
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_WITCH1_win_00003834
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_00_win_00003b14
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEBB
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEEB
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFECD
	.4byte 0xF24BD419
	.4byte 0xF24E034C
	.4byte 0xFFFFFECD
	.4byte 0xF24B2280
	.4byte 0xF24A2E80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e07_01_win_00003b24
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE70
	.4byte 0x0000009B
	.4byte 0x0000023C
	.4byte 0xFFFFFE70
	.4byte 0x00000032
	.4byte 0xFFFFFFED
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_win_00003b34
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_1_win_000038d4
	.4byte str_PTR_T_1_win_00003b44
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e07_02_01_win_00003b4c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE3D
	.4byte 0xF24BDCE6
	.4byte 0xF24EC280
	.4byte 0xFFFFFE3D
	.4byte 0xF24B0880
	.4byte 0xF24A2E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_02_win_00003b60
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0xF24C1EE6
	.4byte 0xF24EC619
	.4byte 0xFFFFFE11
	.4byte 0xF24B4D4C
	.4byte 0xF24A2D4D
	.4byte 0x000000C8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_03_win_00003b74
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDF0
	.4byte 0xF24BF880
	.4byte 0xF24EC619
	.4byte 0xFFFFFDF0
	.4byte 0xF24B2480
	.4byte 0xF24A2D4D
	.4byte 0x000000C8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_win_00003b88
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_04_win_00003b90
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFECD
	.4byte 0xF24BD419
	.4byte 0xF24E034C
	.4byte 0xFFFFFECD
	.4byte 0xF24B2280
	.4byte 0xF24A2E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg2_win_e07_02_05_win_00003ba4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000010E
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
	.4byte str_SFX_VOICE_MARIO_FIND_win_00003818
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_win_00003bb8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_06_win_00003bc0
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_H_1_win_000038ec
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE11
	.4byte 0x00000067
	.4byte 0x00000114
	.4byte 0xFFFFFE11
	.4byte 0x00000032
	.4byte 0xFFFFFFED
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_07_win_00003bd4
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_3_win_0000374c
	.4byte str_PTR_T_3_win_00003754
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_08_win_00003be8
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_09_win_00003bfc
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_B_1_win_00003c10
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_B_2_win_00003c18
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_B_2_win_00003c18
	.4byte str_PTR_T_4_win_00003c20
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_02_10_win_00003c28
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_06_win_00003c3c
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_08_win_00003c4c
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e07_07_win_00003c5c
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_win_00003b88
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001006C
	.4byte 0xFE363C8B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001006C
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000400
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_R_3_win_00003c6c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE89
	.4byte 0x00000090
	.4byte 0x00000215
	.4byte 0xFFFFFE89
	.4byte 0x00000028
	.4byte 0xFFFFFFC6
	.4byte 0x000002EE
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_マジョリン_win_000037e0
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001005F
	.4byte 0xFE363C8B
	.4byte 0x0001005F
	.4byte 0xFE363C8C
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000055
	.4byte 0x0001005C
	.4byte witchtrio_lose
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_vs_witchtrio

# .data:0x254C | 0x254C | size: 0x1CC
.obj get_necklace, local
	.4byte 0x0001005B
	.4byte item_check_necklace_exist
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001D
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e08_03_win_00003c74
	.4byte 0x00000000
	.4byte str_extparty_win_00003c84
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj get_necklace

# .data:0x2718 | 0x2718 | size: 0x4C
.obj witchtrio_lose_item, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ダミー_win_00003c90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000038a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj witchtrio_lose_item

# .data:0x2764 | 0x2764 | size: 0x20
.obj witchtrio_mess_vivi, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e08_02_win_00003c98
	.4byte 0x00000000
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj witchtrio_mess_vivi

# .data:0x2784 | 0x2784 | size: 0x20
.obj witchtrio_mess_mari, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e08_01_win_00003ca8
	.4byte 0x00000000
	.4byte str_マリリン_win_000037d4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj witchtrio_mess_mari

# .data:0x27A4 | 0x27A4 | size: 0x8CC
.obj witchtrio_lose, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFFFFFE4A
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFFFFFE57
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFFFFFE7D
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ビビアン_win_000037c8
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マリリン_win_000037d4
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マジョリン_win_000037e0
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFEB1
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEE1
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFECA
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ダミー_win_00003c90
	.4byte str_c_majyorin_win_00003cb8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_win_00003c90
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ダミー_win_00003c90
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ダミー_win_00003c90
	.4byte 0x00000080
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_4_win_000039f8
	.4byte str_PTR_T_4_win_00003c20
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_WITCH1_win_00003834
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE89
	.4byte 0x00000090
	.4byte 0x00000215
	.4byte 0xFFFFFE89
	.4byte 0x00000028
	.4byte 0xFFFFFFC6
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_necklace_win_000038a8
	.4byte 0x0000003F
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xF84065F3
	.4byte get_necklace
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_necklace_win_000038a8
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_GURUGURU_MARK1_win_00003cc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_effmaririn_win_00003cd8
	.4byte str_マリリン_win_000037d4
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_GURUGURU_MARK1_win_00003cc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_effvivian_win_00003ce4
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e08_00_win_00003cf0
	.4byte 0x00000000
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_win_000037e0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SISTERS_ESC_win_00003d00
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_win_000037e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFE97
	.4byte 0x00020036
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0x00000007
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8D
	.4byte 0x00000009
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_win_00003c90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005D
	.4byte witchtrio_lose_item
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_win_00003c90
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000271
	.4byte 0xF24AF280
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_win_00003c90
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000FA
	.4byte 0xF24AB680
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ダミー_win_00003c90
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000FA
	.4byte 0xF24A9880
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ダミー_win_00003c90
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_off
	.4byte str_necklace_win_000038a8
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_necklace_win_000038a8
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_effmaririn_win_00003cd8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0001005C
	.4byte witchtrio_mess_mari
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マリリン_win_000037d4
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SISTERS_ESC_win_00003d00
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マリリン_win_000037d4
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_win_000037d4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001A9
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_effvivian_win_00003ce4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0001005C
	.4byte witchtrio_mess_vivi
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SISTERS_ESC_win_00003d00
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE7
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SISTERS_ESC_win_00003d1c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_F_1_win_00003d38
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ビビアン_win_000037c8
	.4byte str_PTR_S_4_win_000039f8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ビビアン_win_000037c8
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SISTERS_ESC_win_00003d00
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ビビアン_win_000037c8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_00003d40
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000056
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj witchtrio_lose

# .data:0x3070 | 0x3070 | size: 0x50
.obj ki_data_evt_01, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_ki01_win_00003d50
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_ki01_win_00003d50
	.4byte 0x0000008A
	.4byte 0xFFFFFD4A
	.4byte 0x0000006F
	.4byte 0xFFFFFF7E
	.4byte 0x0000000E
	.4byte 0xF84065FD
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ki_data_evt_01

# .data:0x30C0 | 0x30C0 | size: 0xF0
.obj tree_access_data, local
	.4byte 0x00000004
	.4byte str_A_tree_01_win_00003d5c
	.4byte str_S_tree_mki_01_win_00003d68
	.4byte str_S_tree_ha01_win_00003d78
	.4byte 0x00000000
	.4byte ki_data_evt_01
	.4byte 0x00000004
	.4byte str_A_tree_02_win_00003d84
	.4byte str_S_tree_mki_02_win_00003d90
	.4byte str_S_tree_ha02_win_00003da0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_03_win_00003dac
	.4byte str_S_tree_mki_03_win_00003db8
	.4byte str_S_tree_ha03_win_00003dc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_04_win_00003dd4
	.4byte str_S_tree_mki_04_win_00003de0
	.4byte str_S_tree_ha04_win_00003df0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_05_win_00003dfc
	.4byte str_S_tree_mki_05_win_00003e08
	.4byte str_S_tree_ha05_win_00003e18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_06_win_00003e24
	.4byte str_S_tree_mki_06_win_00003e30
	.4byte str_S_tree_ha06_win_00003e40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_07_win_00003e4c
	.4byte str_S_tree_mki_07_win_00003e58
	.4byte str_S_tree_ha07_win_00003e68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_08_win_00003e74
	.4byte str_S_tree_mki_08_win_00003e80
	.4byte str_S_tree_ha08_win_00003e90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_09_win_00003e9c
	.4byte str_S_tree_mki_09_win_00003ea8
	.4byte str_S_tree_ha09_win_00003eb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_access_data

# .data:0x31B0 | 0x31B0 | size: 0x250
.obj iri_28_enemy_all_dead, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x0000012C
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0xFFFFFFBA
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFBA
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ファビオ_win_000037ec
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_28_003_win_00003ec4
	.4byte 0x00000000
	.4byte str_ファビオ_win_000037ec
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_28_005_win_00003ed0
	.4byte 0x00000000
	.4byte str_ファビオ_win_000037ec
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ファビオ_win_000037ec
	.4byte 0x40000020
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0x0000030C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0x000003B6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ファビオ_win_000037ec
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_win_00003edc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_28_enemy_all_dead

# .data:0x3400 | 0x3400 | size: 0x34
.obj iri_28_enemy_dead, local
	.4byte 0x0001005E
	.4byte enemy_common_dead_event
	.4byte 0x00020035
	.4byte 0xF5DE073D
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE073D
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte iri_28_enemy_all_dead
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_28_enemy_dead

# .data:0x3434 | 0x3434 | size: 0xF0
.obj iri_28_init, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001C
	.4byte 0x00020032
	.4byte 0xF5DE073D
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_パックン１_win_00003ef0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_パックン１_win_00003ef0
	.4byte 0x00000008
	.4byte iri_28_enemy_dead
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xF5DE073D
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_シンエモン_win_00003efc
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_シンエモン_win_00003efc
	.4byte 0x00000008
	.4byte iri_28_enemy_dead
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xF5DE073D
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_パックン２_win_00003f08
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_パックン２_win_00003f08
	.4byte 0x00000008
	.4byte iri_28_enemy_dead
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xF5DE073D
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iri_28_init

# .data:0x3524 | 0x3524 | size: 0x154
.obj win_00_init_evt_28_data_3524, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_00003d40
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN1_win_00003f14
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020018
	.4byte 0xF84065F3
	.4byte 0x00000001
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000070
	.4byte 0x0001005E
	.4byte kizayarou_init
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_access_data
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000047
	.4byte 0x0001005C
	.4byte witchtrio_momeru
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000053
	.4byte 0x0001005C
	.4byte witchtrio_picture
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000054
	.4byte 0x0001005C
	.4byte mario_vs_witchtrio
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000055
	.4byte 0x0001005C
	.4byte witchtrio_lose
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000056
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_necklace_win_000038a8
	.4byte 0x0000003F
	.4byte 0xFFFFFE97
	.4byte 0x00000000
	.4byte 0xFFFFFFEA
	.4byte 0x00000010
	.4byte 0xF84065F3
	.4byte get_necklace
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_i_win_00003f24
	.4byte 0x0000009A
	.4byte 0x00000181
	.4byte 0x00000000
	.4byte 0xFFFFFF8D
	.4byte 0x00000000
	.4byte 0xF84065F4
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte iri_28_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_00_init_evt_28_data_3524
