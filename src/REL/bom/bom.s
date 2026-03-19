.include "macros.inc"
.file "bom.o"

# 0x00000000..0x00000440 | size: 0x440
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x4
.fn _unresolved, global
/* 00000000 000000C4  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x4 | size: 0x4C
.fn _epilog, global
/* 00000004 000000C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000008 000000CC  7C 08 02 A6 */	mflr r0
/* 0000000C 000000D0  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000010 000000D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000014 000000D8  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000018 000000DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000001C 000000E0  7C 1F 03 78 */	mr r31, r0
/* 00000020 000000E4  48 00 00 10 */	b .L_00000030
.L_00000024:
/* 00000024 000000E8  7D 89 03 A6 */	mtctr r12
/* 00000028 000000EC  4E 80 04 21 */	bctrl
/* 0000002C 000000F0  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000030:
/* 00000030 000000F4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000034 000000F8  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000038 000000FC  40 82 FF EC */	bne .L_00000024
/* 0000003C 00000100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000040 00000104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000044 00000108  7C 08 03 A6 */	mtlr r0
/* 00000048 0000010C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000004C 00000110  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x50 | 0x50 | size: 0xE4
.fn _prolog, global
/* 00000050 00000114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000054 00000118  7C 08 02 A6 */	mflr r0
/* 00000058 0000011C  3C 60 00 00 */	lis r3, _ctors@ha
/* 0000005C 00000120  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000060 00000124  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00000064 00000128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000068 0000012C  7C 1F 03 78 */	mr r31, r0
/* 0000006C 00000130  48 00 00 10 */	b .L_0000007C
.L_00000070:
/* 00000070 00000134  7D 89 03 A6 */	mtctr r12
/* 00000074 00000138  4E 80 04 21 */	bctrl
/* 00000078 0000013C  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000007C:
/* 0000007C 00000140  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000080 00000144  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000084 00000148  40 82 FF EC */	bne .L_00000070
/* 00000088 0000014C  3C 60 00 00 */	lis r3, str_bom_00_bom_00006260@ha
/* 0000008C 00000150  3C 80 00 00 */	lis r4, bom_00_init_evt_3_data_62C@ha
/* 00000090 00000154  38 63 00 00 */	addi r3, r3, str_bom_00_bom_00006260@l
/* 00000094 00000158  38 84 00 00 */	addi r4, r4, bom_00_init_evt_3_data_62C@l
/* 00000098 0000015C  4B FF FF 69 */	bl relSetEvtAddr
/* 0000009C 00000160  3C 60 00 00 */	lis r3, str_bom_01_bom_00006268@ha
/* 000000A0 00000164  3C 80 00 00 */	lis r4, bom_01_init_evt_3_data_545C@ha
/* 000000A4 00000168  38 63 00 00 */	addi r3, r3, str_bom_01_bom_00006268@l
/* 000000A8 0000016C  38 84 00 00 */	addi r4, r4, bom_01_init_evt_3_data_545C@l
/* 000000AC 00000170  4B FF FF 55 */	bl relSetEvtAddr
/* 000000B0 00000174  3C 60 00 00 */	lis r3, str_bom_02_bom_00006270@ha
/* 000000B4 00000178  3C 80 00 00 */	lis r4, bom_02_init_evt_3_data_9724@ha
/* 000000B8 0000017C  38 63 00 00 */	addi r3, r3, str_bom_02_bom_00006270@l
/* 000000BC 00000180  38 84 00 00 */	addi r4, r4, bom_02_init_evt_3_data_9724@l
/* 000000C0 00000184  4B FF FF 41 */	bl relSetEvtAddr
/* 000000C4 00000188  3C 60 00 00 */	lis r3, str_bom_03_bom_00006278@ha
/* 000000C8 0000018C  3C 80 00 00 */	lis r4, bom_03_init_evt_3_data_9FC8@ha
/* 000000CC 00000190  38 63 00 00 */	addi r3, r3, str_bom_03_bom_00006278@l
/* 000000D0 00000194  38 84 00 00 */	addi r4, r4, bom_03_init_evt_3_data_9FC8@l
/* 000000D4 00000198  4B FF FF 2D */	bl relSetEvtAddr
/* 000000D8 0000019C  3C 60 00 00 */	lis r3, str_bom_04_bom_00006280@ha
/* 000000DC 000001A0  3C 80 00 00 */	lis r4, bom_04_init_evt_3_data_9D88@ha
/* 000000E0 000001A4  38 63 00 00 */	addi r3, r3, str_bom_04_bom_00006280@l
/* 000000E4 000001A8  38 84 00 00 */	addi r4, r4, bom_04_init_evt_3_data_9D88@l
/* 000000E8 000001AC  4B FF FF 19 */	bl relSetEvtAddr
/* 000000EC 000001B0  3C 60 00 00 */	lis r3, str_bom_bom_00006288@ha
/* 000000F0 000001B4  3C 80 00 00 */	lis r4, btlsetup_bom_tbl_3_data_AA48@ha
/* 000000F4 000001B8  3C A0 00 00 */	lis r5, btl_bom_setup_no_tbl_3_data_AC68@ha
/* 000000F8 000001BC  38 63 00 00 */	addi r3, r3, str_bom_bom_00006288@l
/* 000000FC 000001C0  38 84 00 00 */	addi r4, r4, btlsetup_bom_tbl_3_data_AA48@l
/* 00000100 000001C4  38 A5 00 00 */	addi r5, r5, btl_bom_setup_no_tbl_3_data_AC68@l
/* 00000104 000001C8  4B FF FE FD */	bl relSetBtlAddr
/* 00000108 000001CC  3C 60 00 00 */	lis r3, evt_bress@ha
/* 0000010C 000001D0  38 80 00 00 */	li r4, 0x0
/* 00000110 000001D4  38 63 00 00 */	addi r3, r3, evt_bress@l
/* 00000114 000001D8  38 A0 00 00 */	li r5, 0x0
/* 00000118 000001DC  38 C0 00 00 */	li r6, 0x0
/* 0000011C 000001E0  4B FF FE E5 */	bl evtEntryType
/* 00000120 000001E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000124 000001E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000128 000001EC  7C 08 03 A6 */	mtlr r0
/* 0000012C 000001F0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000130 000001F4  4E 80 00 20 */	blr
.endfn _prolog

# .text:0x134 | 0x134 | size: 0x30C
.fn bress, local
/* 00000134 000001F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000138 000001FC  7C 08 02 A6 */	mflr r0
/* 0000013C 00000200  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000140 00000204  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00000144 00000208  7C 7A 1B 78 */	mr r26, r3
/* 00000148 0000020C  7C 9B 23 78 */	mr r27, r4
/* 0000014C 00000210  4B FF FE B5 */	bl marioGetPtr
/* 00000150 00000214  7C 7C 1B 78 */	mr r28, r3
/* 00000154 00000218  38 60 00 00 */	li r3, 0x0
/* 00000158 0000021C  4B FF FE A9 */	bl partyGetPtr
/* 0000015C 00000220  7C 7D 1B 78 */	mr r29, r3
/* 00000160 00000224  38 60 00 01 */	li r3, 0x1
/* 00000164 00000228  4B FF FE 9D */	bl partyGetPtr
/* 00000168 0000022C  7C 7E 1B 78 */	mr r30, r3
/* 0000016C 00000230  4B FF FE 95 */	bl npcGetWorkPtr
/* 00000170 00000234  2C 1B 00 00 */	cmpwi r27, 0x0
/* 00000174 00000238  7C 7F 1B 78 */	mr r31, r3
/* 00000178 0000023C  41 82 00 40 */	beq .L_000001B8
/* 0000017C 00000240  38 00 00 1E */	li r0, 0x1e
/* 00000180 00000244  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00000184 00000248  90 1A 00 78 */	stw r0, 0x78(r26)
/* 00000188 0000024C  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000018C 00000250  90 1A 00 7C */	stw r0, 0x7c(r26)
/* 00000190 00000254  90 1A 00 80 */	stw r0, 0x80(r26)
/* 00000194 00000258  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 00000198 0000025C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000019C 00000260  54 04 10 3A */	slwi r4, r0, 2
/* 000001A0 00000264  4B FF FE 61 */	bl _mapAlloc
/* 000001A4 00000268  90 7A 00 84 */	stw r3, 0x84(r26)
/* 000001A8 0000026C  38 80 00 00 */	li r4, 0x0
/* 000001AC 00000270  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 000001B0 00000274  54 05 10 3A */	slwi r5, r0, 2
/* 000001B4 00000278  4B FF FE 4D */	bl memset
.L_000001B8:
/* 000001B8 0000027C  80 7A 00 78 */	lwz r3, 0x78(r26)
/* 000001BC 00000280  83 7A 00 84 */	lwz r27, 0x84(r26)
/* 000001C0 00000284  2C 03 00 00 */	cmpwi r3, 0x0
/* 000001C4 00000288  41 82 00 0C */	beq .L_000001D0
/* 000001C8 0000028C  38 03 FF FF */	subi r0, r3, 0x1
/* 000001CC 00000290  90 1A 00 78 */	stw r0, 0x78(r26)
.L_000001D0:
/* 000001D0 00000294  80 7A 00 7C */	lwz r3, 0x7c(r26)
/* 000001D4 00000298  2C 03 00 00 */	cmpwi r3, 0x0
/* 000001D8 0000029C  41 82 00 0C */	beq .L_000001E4
/* 000001DC 000002A0  38 03 FF FF */	subi r0, r3, 0x1
/* 000001E0 000002A4  90 1A 00 7C */	stw r0, 0x7c(r26)
.L_000001E4:
/* 000001E4 000002A8  80 7A 00 80 */	lwz r3, 0x80(r26)
/* 000001E8 000002AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 000001EC 000002B0  41 82 00 0C */	beq .L_000001F8
/* 000001F0 000002B4  38 03 FF FF */	subi r0, r3, 0x1
/* 000001F4 000002B8  90 1A 00 80 */	stw r0, 0x80(r26)
.L_000001F8:
/* 000001F8 000002BC  38 A0 00 00 */	li r5, 0x0
/* 000001FC 000002C0  38 60 00 00 */	li r3, 0x0
/* 00000200 000002C4  48 00 00 20 */	b .L_00000220
.L_00000204:
/* 00000204 000002C8  7C 9B 18 2E */	lwzx r4, r27, r3
/* 00000208 000002CC  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000020C 000002D0  41 82 00 0C */	beq .L_00000218
/* 00000210 000002D4  38 04 FF FF */	subi r0, r4, 0x1
/* 00000214 000002D8  7C 1B 19 2E */	stwx r0, r27, r3
.L_00000218:
/* 00000218 000002DC  38 A5 00 01 */	addi r5, r5, 0x1
/* 0000021C 000002E0  38 63 00 04 */	addi r3, r3, 0x4
.L_00000220:
/* 00000220 000002E4  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 00000224 000002E8  7C 05 00 00 */	cmpw r5, r0
/* 00000228 000002EC  41 80 FF DC */	blt .L_00000204
/* 0000022C 000002F0  28 1C 00 00 */	cmplwi r28, 0x0
/* 00000230 000002F4  41 82 00 90 */	beq .L_000002C0
/* 00000234 000002F8  80 1A 00 78 */	lwz r0, 0x78(r26)
/* 00000238 000002FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000023C 00000300  40 82 00 84 */	bne .L_000002C0
/* 00000240 00000304  38 60 00 04 */	li r3, 0x4
/* 00000244 00000308  4B FF FD BD */	bl marioChkSts
/* 00000248 0000030C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000024C 00000310  40 82 00 74 */	bne .L_000002C0
/* 00000250 00000314  38 60 00 10 */	li r3, 0x10
/* 00000254 00000318  4B FF FD AD */	bl marioChkSts
/* 00000258 0000031C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000025C 00000320  40 82 00 64 */	bne .L_000002C0
/* 00000260 00000324  38 60 00 08 */	li r3, 0x8
/* 00000264 00000328  4B FF FD 9D */	bl marioChkSts
/* 00000268 0000032C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000026C 00000330  40 82 00 54 */	bne .L_000002C0
/* 00000270 00000334  4B FF FD 91 */	bl vivianGetStatus
/* 00000274 00000338  2C 03 00 02 */	cmpwi r3, 0x2
/* 00000278 0000033C  41 82 00 48 */	beq .L_000002C0
/* 0000027C 00000340  3C 80 00 00 */	lis r4, float_24_bom_0000628c@ha
/* 00000280 00000344  3C 60 00 00 */	lis r3, float_270_bom_00006290@ha
/* 00000284 00000348  C0 44 00 00 */	lfs f2, float_24_bom_0000628c@l(r4)
/* 00000288 0000034C  38 80 00 1E */	li r4, 0x1e
/* 0000028C 00000350  C0 3C 00 90 */	lfs f1, 0x90(r28)
/* 00000290 00000354  C0 63 00 00 */	lfs f3, float_270_bom_00006290@l(r3)
/* 00000294 00000358  38 60 00 04 */	li r3, 0x4
/* 00000298 0000035C  C0 1C 01 AC */	lfs f0, 0x1ac(r28)
/* 0000029C 00000360  EC 42 08 2A */	fadds f2, f2, f1
/* 000002A0 00000364  C0 3C 00 8C */	lfs f1, 0x8c(r28)
/* 000002A4 00000368  EC 83 00 28 */	fsubs f4, f3, f0
/* 000002A8 0000036C  C0 7C 00 94 */	lfs f3, 0x94(r28)
/* 000002AC 00000370  4B FF FD 55 */	bl effMistEntry
/* 000002B0 00000374  38 60 00 3C */	li r3, 0x3c
/* 000002B4 00000378  4B FF FD 4D */	bl irand
/* 000002B8 0000037C  38 03 00 3C */	addi r0, r3, 0x3c
/* 000002BC 00000380  90 1A 00 78 */	stw r0, 0x78(r26)
.L_000002C0:
/* 000002C0 00000384  28 1D 00 00 */	cmplwi r29, 0x0
/* 000002C4 00000388  41 82 00 A4 */	beq .L_00000368
/* 000002C8 0000038C  80 1A 00 7C */	lwz r0, 0x7c(r26)
/* 000002CC 00000390  2C 00 00 00 */	cmpwi r0, 0x0
/* 000002D0 00000394  40 82 00 98 */	bne .L_00000368
/* 000002D4 00000398  38 60 00 04 */	li r3, 0x4
/* 000002D8 0000039C  4B FF FD 29 */	bl marioChkSts
/* 000002DC 000003A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 000002E0 000003A4  40 82 00 88 */	bne .L_00000368
/* 000002E4 000003A8  38 60 00 10 */	li r3, 0x10
/* 000002E8 000003AC  4B FF FD 19 */	bl marioChkSts
/* 000002EC 000003B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 000002F0 000003B4  40 82 00 78 */	bne .L_00000368
/* 000002F4 000003B8  38 60 00 08 */	li r3, 0x8
/* 000002F8 000003BC  4B FF FD 09 */	bl marioChkSts
/* 000002FC 000003C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000300 000003C4  40 82 00 68 */	bne .L_00000368
/* 00000304 000003C8  4B FF FC FD */	bl vivianGetStatus
/* 00000308 000003CC  2C 03 00 02 */	cmpwi r3, 0x2
/* 0000030C 000003D0  41 82 00 5C */	beq .L_00000368
/* 00000310 000003D4  88 1D 00 31 */	lbz r0, 0x31(r29)
/* 00000314 000003D8  3C 80 00 00 */	lis r4, offset$519@ha
/* 00000318 000003DC  3C 60 00 00 */	lis r3, float_270_bom_00006290@ha
/* 0000031C 000003E0  C0 5D 00 5C */	lfs f2, 0x5c(r29)
/* 00000320 000003E4  7C 00 07 74 */	extsb r0, r0
/* 00000324 000003E8  38 A4 00 00 */	addi r5, r4, offset$519@l
/* 00000328 000003EC  54 00 10 3A */	slwi r0, r0, 2
/* 0000032C 000003F0  38 83 00 00 */	addi r4, r3, float_270_bom_00006290@l
/* 00000330 000003F4  7C 25 04 2E */	lfsx f1, r5, r0
/* 00000334 000003F8  38 60 00 04 */	li r3, 0x4
/* 00000338 000003FC  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 0000033C 00000400  38 80 00 1E */	li r4, 0x1e
/* 00000340 00000404  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 00000344 00000408  EC 42 08 2A */	fadds f2, f2, f1
/* 00000348 0000040C  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 0000034C 00000410  EC 83 00 28 */	fsubs f4, f3, f0
/* 00000350 00000414  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 00000354 00000418  4B FF FC AD */	bl effMistEntry
/* 00000358 0000041C  38 60 00 3C */	li r3, 0x3c
/* 0000035C 00000420  4B FF FC A5 */	bl irand
/* 00000360 00000424  38 03 00 3C */	addi r0, r3, 0x3c
/* 00000364 00000428  90 1A 00 7C */	stw r0, 0x7c(r26)
.L_00000368:
/* 00000368 0000042C  28 1E 00 00 */	cmplwi r30, 0x0
/* 0000036C 00000430  41 82 00 20 */	beq .L_0000038C
/* 00000370 00000434  80 1A 00 80 */	lwz r0, 0x80(r26)
/* 00000374 00000438  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000378 0000043C  40 82 00 14 */	bne .L_0000038C
/* 0000037C 00000440  38 60 00 3C */	li r3, 0x3c
/* 00000380 00000444  4B FF FC 81 */	bl irand
/* 00000384 00000448  38 03 00 3C */	addi r0, r3, 0x3c
/* 00000388 0000044C  90 1A 00 80 */	stw r0, 0x80(r26)
.L_0000038C:
/* 0000038C 00000450  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 00000390 00000454  3B 80 00 00 */	li r28, 0x0
/* 00000394 00000458  3B 40 00 00 */	li r26, 0x0
/* 00000398 0000045C  48 00 00 84 */	b .L_0000041C
.L_0000039C:
/* 0000039C 00000460  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 000003A0 00000464  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000003A4 00000468  41 82 00 6C */	beq .L_00000410
/* 000003A8 0000046C  7C 1B D0 2E */	lwzx r0, r27, r26
/* 000003AC 00000470  2C 00 00 00 */	cmpwi r0, 0x0
/* 000003B0 00000474  40 82 00 60 */	bne .L_00000410
/* 000003B4 00000478  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 000003B8 0000047C  4B FF FC 49 */	bl animPoseGetAnimPosePtr
/* 000003BC 00000480  3C A0 00 00 */	lis r5, float_0p5_bom_00006294@ha
/* 000003C0 00000484  3C 80 00 00 */	lis r4, float_270_bom_00006290@ha
/* 000003C4 00000488  7C 66 1B 78 */	mr r6, r3
/* 000003C8 0000048C  C0 9D 01 50 */	lfs f4, 0x150(r29)
/* 000003CC 00000490  38 65 00 00 */	addi r3, r5, float_0p5_bom_00006294@l
/* 000003D0 00000494  38 A4 00 00 */	addi r5, r4, float_270_bom_00006290@l
/* 000003D4 00000498  C0 43 00 00 */	lfs f2, 0x0(r3)
/* 000003D8 0000049C  38 60 00 04 */	li r3, 0x4
/* 000003DC 000004A0  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 000003E0 000004A4  38 80 00 1E */	li r4, 0x1e
/* 000003E4 000004A8  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 000003E8 000004AC  C0 06 00 7C */	lfs f0, 0x7c(r6)
/* 000003EC 000004B0  EC 44 08 BA */	fmadds f2, f4, f2, f1
/* 000003F0 000004B4  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 000003F4 000004B8  EC 83 00 28 */	fsubs f4, f3, f0
/* 000003F8 000004BC  C0 7D 00 94 */	lfs f3, 0x94(r29)
/* 000003FC 000004C0  4B FF FC 05 */	bl effMistEntry
/* 00000400 000004C4  38 60 00 3C */	li r3, 0x3c
/* 00000404 000004C8  4B FF FB FD */	bl irand
/* 00000408 000004CC  38 03 00 3C */	addi r0, r3, 0x3c
/* 0000040C 000004D0  7C 1B D1 2E */	stwx r0, r27, r26
.L_00000410:
/* 00000410 000004D4  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00000414 000004D8  3B 5A 00 04 */	addi r26, r26, 0x4
/* 00000418 000004DC  3B BD 03 40 */	addi r29, r29, 0x340
.L_0000041C:
/* 0000041C 000004E0  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 00000420 000004E4  7C 1C 00 00 */	cmpw r28, r0
/* 00000424 000004E8  41 80 FF 78 */	blt .L_0000039C
/* 00000428 000004EC  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 0000042C 000004F0  38 60 00 00 */	li r3, 0x0
/* 00000430 000004F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000434 000004F8  7C 08 03 A6 */	mtlr r0
/* 00000438 000004FC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000043C 00000500  4E 80 00 20 */	blr
.endfn bress

# 0x00000000..0x00000038 | size: 0x38
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_bom_00_bom_00006260, local
	.string "bom_00"
.endobj str_bom_00_bom_00006260

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_bom_01_bom_00006268, local
	.string "bom_01"
.endobj str_bom_01_bom_00006268

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# .rodata:0x10 | 0x10 | size: 0x7
.obj str_bom_02_bom_00006270, local
	.string "bom_02"
.endobj str_bom_02_bom_00006270

# .rodata:0x17 | 0x17 | size: 0x1
.obj gap_03_00000017_rodata, global
.hidden gap_03_00000017_rodata
	.byte 0x00
.endobj gap_03_00000017_rodata

# .rodata:0x18 | 0x18 | size: 0x7
.obj str_bom_03_bom_00006278, local
	.string "bom_03"
.endobj str_bom_03_bom_00006278

# .rodata:0x1F | 0x1F | size: 0x1
.obj gap_03_0000001F_rodata, global
.hidden gap_03_0000001F_rodata
	.byte 0x00
.endobj gap_03_0000001F_rodata

# .rodata:0x20 | 0x20 | size: 0x7
.obj str_bom_04_bom_00006280, local
	.string "bom_04"
.endobj str_bom_04_bom_00006280

# .rodata:0x27 | 0x27 | size: 0x1
.obj gap_03_00000027_rodata, global
.hidden gap_03_00000027_rodata
	.byte 0x00
.endobj gap_03_00000027_rodata

# .rodata:0x28 | 0x28 | size: 0x4
.obj str_bom_bom_00006288, local
	.string "bom"
.endobj str_bom_bom_00006288

# .rodata:0x2C | 0x2C | size: 0x4
.obj float_24_bom_0000628c, local
	.float 24
.endobj float_24_bom_0000628c

# .rodata:0x30 | 0x30 | size: 0x4
.obj float_270_bom_00006290, local
	.float 270
.endobj float_270_bom_00006290

# .rodata:0x34 | 0x34 | size: 0x4
.obj float_0p5_bom_00006294, local
	.float 0.5
.endobj float_0p5_bom_00006294

# 0x00000000..0x00000090 | size: 0x90
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

# .data:0x60 | 0x60 | size: 0x20
.obj offset$519, local
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41C00000
	.4byte 0x41200000
	.4byte 0x41700000
	.4byte 0x41A00000
	.4byte 0x41A00000
	.4byte 0x41200000
.endobj offset$519

# .data:0x80 | 0x80 | size: 0x10
.obj evt_bress, local
	.4byte 0x0001005B
	.4byte bress
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_bress
