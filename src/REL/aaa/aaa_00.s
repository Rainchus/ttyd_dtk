.include "macros.inc"
.file "aaa_00.c"

# 0x000000B4..0x00000390 | size: 0x2DC
.text
.balign 4

# .text:0x0 | 0xB4 | size: 0x40
.fn mapdelete_1_text_B4, global
/* 000000B4 00000178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000000B8 0000017C  7C 08 02 A6 */	mflr r0
/* 000000BC 00000180  3C 60 00 00 */	lis r3, wp@ha
/* 000000C0 00000184  90 01 00 14 */	stw r0, 0x14(r1)
/* 000000C4 00000188  38 63 00 00 */	addi r3, r3, wp@l
/* 000000C8 0000018C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000000CC 00000190  28 03 00 00 */	cmplwi r3, 0x0
/* 000000D0 00000194  41 82 00 14 */	beq .L_000000E4
/* 000000D4 00000198  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000000D8 0000019C  28 03 00 00 */	cmplwi r3, 0x0
/* 000000DC 000001A0  41 82 00 08 */	beq .L_000000E4
/* 000000E0 000001A4  4B FF FF 21 */	bl fileFree
.L_000000E4:
/* 000000E4 000001A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000000E8 000001AC  7C 08 03 A6 */	mtlr r0
/* 000000EC 000001B0  38 21 00 10 */	addi r1, r1, 0x10
/* 000000F0 000001B4  4E 80 00 20 */	blr
.endfn mapdelete_1_text_B4

# .text:0x40 | 0xF4 | size: 0x104
.fn mapdraw, local
/* 000000F4 000001B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000000F8 000001BC  7C 08 02 A6 */	mflr r0
/* 000000FC 000001C0  2C 04 00 00 */	cmpwi r4, 0x0
/* 00000100 000001C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000104 000001C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000108 000001CC  7C 7F 1B 78 */	mr r31, r3
/* 0000010C 000001D0  41 82 00 68 */	beq .L_00000174
/* 00000110 000001D4  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00000114 000001D8  38 80 00 08 */	li r4, 0x8
/* 00000118 000001DC  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000011C 000001E0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000120 000001E4  4B FF FE E1 */	bl _mapAlloc
/* 00000124 000001E8  3C A0 00 00 */	lis r5, wp@ha
/* 00000128 000001EC  38 80 00 00 */	li r4, 0x0
/* 0000012C 000001F0  38 C5 00 00 */	addi r6, r5, wp@l
/* 00000130 000001F4  38 A0 00 08 */	li r5, 0x8
/* 00000134 000001F8  90 66 00 00 */	stw r3, 0x0(r6)
/* 00000138 000001FC  4B FF FE C9 */	bl memset
/* 0000013C 00000200  4B FF FE C5 */	bl getMarioStDvdRoot
/* 00000140 00000204  3C 80 00 00 */	lis r4, str_PCTs_mariost_tpl_aaa_0000099c@ha
/* 00000144 00000208  7C 65 1B 78 */	mr r5, r3
/* 00000148 0000020C  38 84 00 00 */	addi r4, r4, str_PCTs_mariost_tpl_aaa_0000099c@l
/* 0000014C 00000210  38 60 00 04 */	li r3, 0x4
/* 00000150 00000214  4C C6 31 82 */	crclr cr1eq
/* 00000154 00000218  4B FF FE AD */	bl fileAllocf
/* 00000158 0000021C  3C 80 00 00 */	lis r4, wp@ha
/* 0000015C 00000220  38 00 00 00 */	li r0, 0x0
/* 00000160 00000224  38 A4 00 00 */	addi r5, r4, wp@l
/* 00000164 00000228  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00000168 0000022C  90 64 00 00 */	stw r3, 0x0(r4)
/* 0000016C 00000230  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00000170 00000234  90 03 00 04 */	stw r0, 0x4(r3)
.L_00000174:
/* 00000174 00000238  3C 60 00 00 */	lis r3, wp@ha
/* 00000178 0000023C  38 A3 00 00 */	addi r5, r3, wp@l
/* 0000017C 00000240  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00000180 00000244  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00000184 00000248  38 03 00 02 */	addi r0, r3, 0x2
/* 00000188 0000024C  90 04 00 04 */	stw r0, 0x4(r4)
/* 0000018C 00000250  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00000190 00000254  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00000194 00000258  2C 00 00 FF */	cmpwi r0, 0xff
/* 00000198 0000025C  40 81 00 20 */	ble .L_000001B8
/* 0000019C 00000260  38 00 00 FF */	li r0, 0xff
/* 000001A0 00000264  3C 80 FA A3 */	lis r4, 0xfaa3
/* 000001A4 00000268  90 03 00 04 */	stw r0, 0x4(r3)
/* 000001A8 0000026C  7F E3 FB 78 */	mr r3, r31
/* 000001AC 00000270  38 84 B5 80 */	subi r4, r4, 0x4a80
/* 000001B0 00000274  38 A0 00 01 */	li r5, 0x1
/* 000001B4 00000278  4B FF FE 4D */	bl evtSetValue
.L_000001B8:
/* 000001B8 0000027C  3C 80 00 00 */	lis r4, float_1000_aaa_000009ac@ha
/* 000001BC 00000280  3C 60 00 00 */	lis r3, wp@ha
/* 000001C0 00000284  38 A4 00 00 */	addi r5, r4, float_1000_aaa_000009ac@l
/* 000001C4 00000288  80 C3 00 00 */	lwz r6, wp@l(r3)
/* 000001C8 0000028C  3C 80 00 00 */	lis r4, draw@ha
/* 000001CC 00000290  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000001D0 00000294  38 A4 00 00 */	addi r5, r4, draw@l
/* 000001D4 00000298  38 60 00 04 */	li r3, 0x4
/* 000001D8 0000029C  38 80 00 07 */	li r4, 0x7
/* 000001DC 000002A0  4B FF FE 25 */	bl dispEntry
/* 000001E0 000002A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000001E4 000002A8  38 60 00 00 */	li r3, 0x0
/* 000001E8 000002AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000001EC 000002B0  7C 08 03 A6 */	mtlr r0
/* 000001F0 000002B4  38 21 00 10 */	addi r1, r1, 0x10
/* 000001F4 000002B8  4E 80 00 20 */	blr
.endfn mapdraw

# .text:0x144 | 0x1F8 | size: 0x198
.fn draw, local
/* 000001F8 000002BC  94 21 FD 30 */	stwu r1, -0x2d0(r1)
/* 000001FC 000002C0  7C 08 02 A6 */	mflr r0
/* 00000200 000002C4  90 01 02 D4 */	stw r0, 0x2d4(r1)
/* 00000204 000002C8  38 61 00 44 */	addi r3, r1, 0x44
/* 00000208 000002CC  93 E1 02 CC */	stw r31, 0x2cc(r1)
/* 0000020C 000002D0  4B FF FD F5 */	bl GXGetViewportv
/* 00000210 000002D4  38 61 00 28 */	addi r3, r1, 0x28
/* 00000214 000002D8  4B FF FD ED */	bl GXGetProjectionv
/* 00000218 000002DC  38 60 00 08 */	li r3, 0x8
/* 0000021C 000002E0  4B FF FD E5 */	bl camGetPtr
/* 00000220 000002E4  7C 7F 1B 78 */	mr r31, r3
/* 00000224 000002E8  38 60 00 08 */	li r3, 0x8
/* 00000228 000002EC  4B FF FD D9 */	bl camGetPtr
/* 0000022C 000002F0  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 00000230 000002F4  38 63 01 5C */	addi r3, r3, 0x15c
/* 00000234 000002F8  4B FF FD CD */	bl GXSetProjection
/* 00000238 000002FC  4B FF FD C9 */	bl camGetCurPtr
/* 0000023C 00000300  38 00 00 4C */	li r0, 0x4c
/* 00000240 00000304  38 A1 00 5C */	addi r5, r1, 0x5c
/* 00000244 00000308  38 83 FF FC */	subi r4, r3, 0x4
/* 00000248 0000030C  7C 09 03 A6 */	mtctr r0
.L_0000024C:
/* 0000024C 00000310  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00000250 00000314  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00000254 00000318  90 65 00 04 */	stw r3, 0x4(r5)
/* 00000258 0000031C  94 05 00 08 */	stwu r0, 0x8(r5)
/* 0000025C 00000320  42 00 FF F0 */	bdnz .L_0000024C
/* 00000260 00000324  38 60 00 08 */	li r3, 0x8
/* 00000264 00000328  4B FF FD 9D */	bl camGetPtr
/* 00000268 0000032C  7C 7F 1B 78 */	mr r31, r3
/* 0000026C 00000330  4B FF FD 95 */	bl camGetCurPtr
/* 00000270 00000334  38 00 00 4C */	li r0, 0x4c
/* 00000274 00000338  38 A3 FF FC */	subi r5, r3, 0x4
/* 00000278 0000033C  38 9F FF FC */	subi r4, r31, 0x4
/* 0000027C 00000340  7C 09 03 A6 */	mtctr r0
.L_00000280:
/* 00000280 00000344  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00000284 00000348  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00000288 0000034C  90 65 00 04 */	stw r3, 0x4(r5)
/* 0000028C 00000350  94 05 00 08 */	stwu r0, 0x8(r5)
/* 00000290 00000354  42 00 FF F0 */	bdnz .L_00000280
/* 00000294 00000358  3C 60 00 00 */	lis r3, wp@ha
/* 00000298 0000035C  38 63 00 00 */	addi r3, r3, wp@l
/* 0000029C 00000360  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000002A0 00000364  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000002A4 00000368  80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 000002A8 0000036C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000002AC 00000370  4B FF FD 55 */	bl winTexInit
/* 000002B0 00000374  3C 60 00 00 */	lis r3, dat_aaa_000005e8@ha
/* 000002B4 00000378  3C 80 00 00 */	lis r4, wp@ha
/* 000002B8 0000037C  38 A3 00 00 */	addi r5, r3, dat_aaa_000005e8@l
/* 000002BC 00000380  38 C1 00 0C */	addi r6, r1, 0xc
/* 000002C0 00000384  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000002C4 00000388  38 84 00 00 */	addi r4, r4, wp@l
/* 000002C8 0000038C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000002CC 00000390  3C 60 00 00 */	lis r3, vec3_aaa_000005dc@ha
/* 000002D0 00000394  90 01 00 08 */	stw r0, 0x8(r1)
/* 000002D4 00000398  38 E3 00 00 */	addi r7, r3, vec3_aaa_000005dc@l
/* 000002D8 0000039C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 000002DC 000003A0  3C 60 00 00 */	lis r3, vec3_aaa_000005d0@ha
/* 000002E0 000003A4  39 23 00 00 */	addi r9, r3, vec3_aaa_000005d0@l
/* 000002E4 000003A8  81 87 00 00 */	lwz r12, 0x0(r7)
/* 000002E8 000003AC  98 01 00 0B */	stb r0, 0xb(r1)
/* 000002EC 000003B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 000002F0 000003B4  81 67 00 04 */	lwz r11, 0x4(r7)
/* 000002F4 000003B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 000002F8 000003BC  81 47 00 08 */	lwz r10, 0x8(r7)
/* 000002FC 000003C0  38 60 00 03 */	li r3, 0x3
/* 00000300 000003C4  83 E1 00 08 */	lwz r31, 0x8(r1)
/* 00000304 000003C8  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00000308 000003CC  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 0000030C 000003D0  80 09 00 08 */	lwz r0, 0x8(r9)
/* 00000310 000003D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000314 000003D8  91 81 00 10 */	stw r12, 0x10(r1)
/* 00000318 000003DC  91 61 00 14 */	stw r11, 0x14(r1)
/* 0000031C 000003E0  91 41 00 18 */	stw r10, 0x18(r1)
/* 00000320 000003E4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 00000324 000003E8  90 E1 00 20 */	stw r7, 0x20(r1)
/* 00000328 000003EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000032C 000003F0  4B FF FC D5 */	bl winTexSet
/* 00000330 000003F4  4B FF FC D1 */	bl camGetCurPtr
/* 00000334 000003F8  38 00 00 4C */	li r0, 0x4c
/* 00000338 000003FC  38 A3 FF FC */	subi r5, r3, 0x4
/* 0000033C 00000400  38 81 00 5C */	addi r4, r1, 0x5c
/* 00000340 00000404  7C 09 03 A6 */	mtctr r0
.L_00000344:
/* 00000344 00000408  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00000348 0000040C  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 0000034C 00000410  90 65 00 04 */	stw r3, 0x4(r5)
/* 00000350 00000414  94 05 00 08 */	stwu r0, 0x8(r5)
/* 00000354 00000418  42 00 FF F0 */	bdnz .L_00000344
/* 00000358 0000041C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 0000035C 00000420  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 00000360 00000424  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 00000364 00000428  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 00000368 0000042C  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 0000036C 00000430  C0 C1 00 58 */	lfs f6, 0x58(r1)
/* 00000370 00000434  4B FF FC 91 */	bl GXSetViewport
/* 00000374 00000438  38 61 00 28 */	addi r3, r1, 0x28
/* 00000378 0000043C  4B FF FC 89 */	bl GXSetProjectionv
/* 0000037C 00000440  80 01 02 D4 */	lwz r0, 0x2d4(r1)
/* 00000380 00000444  83 E1 02 CC */	lwz r31, 0x2cc(r1)
/* 00000384 00000448  7C 08 03 A6 */	mtlr r0
/* 00000388 0000044C  38 21 02 D0 */	addi r1, r1, 0x2d0
/* 0000038C 00000450  4E 80 00 20 */	blr
.endfn draw

# 0x00000008..0x00000550 | size: 0x548
.rodata
.balign 8

# .rodata:0x0 | 0x8 | size: 0x9
.obj str_パレッタ_aaa_00000468, local
	# パレッタ
	.byte 0x83, 0x70, 0x83, 0x8C, 0x83, 0x62, 0x83, 0x5E, 0x00
.endobj str_パレッタ_aaa_00000468

# .rodata:0x9 | 0x11 | size: 0x3
.obj gap_03_00000011_rodata, global
.hidden gap_03_00000011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000011_rodata

# .rodata:0xC | 0x14 | size: 0x9
.obj str_ルイージ_aaa_00000474, local
	# ルイージ
	.byte 0x83, 0x8B, 0x83, 0x43, 0x81, 0x5B, 0x83, 0x57, 0x00
.endobj str_ルイージ_aaa_00000474

# .rodata:0x15 | 0x1D | size: 0x3
.obj gap_03_0000001D_rodata, global
.hidden gap_03_0000001D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000001D_rodata

# .rodata:0x18 | 0x20 | size: 0xA
.obj str_S_ie_door_aaa_00000480, local
	.string "S_ie_door"
.endobj str_S_ie_door_aaa_00000480

# .rodata:0x22 | 0x2A | size: 0x2
.obj gap_03_0000002A_rodata, global
.hidden gap_03_0000002A_rodata
	.2byte 0x0000
.endobj gap_03_0000002A_rodata

# .rodata:0x24 | 0x2C | size: 0xD
.obj str_S_ie_kaiten2_aaa_0000048c, local
	.string "S_ie_kaiten2"
.endobj str_S_ie_kaiten2_aaa_0000048c

# .rodata:0x31 | 0x39 | size: 0x3
.obj gap_03_00000039_rodata, global
.hidden gap_03_00000039_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000039_rodata

# .rodata:0x34 | 0x3C | size: 0xD
.obj str_S_ie_kaiten1_aaa_0000049c, local
	.string "S_ie_kaiten1"
.endobj str_S_ie_kaiten1_aaa_0000049c

# .rodata:0x41 | 0x49 | size: 0x3
.obj gap_03_00000049_rodata, global
.hidden gap_03_00000049_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000049_rodata

# .rodata:0x44 | 0x4C | size: 0xA
.obj str_A_ie_door_aaa_000004ac, local
	.string "A_ie_door"
.endobj str_A_ie_door_aaa_000004ac

# .rodata:0x4E | 0x56 | size: 0x2
.obj gap_03_00000056_rodata, global
.hidden gap_03_00000056_rodata
	.2byte 0x0000
.endobj gap_03_00000056_rodata

# .rodata:0x50 | 0x58 | size: 0xC
.obj str_A_ie_door_u_aaa_000004b8, local
	.string "A_ie_door_u"
.endobj str_A_ie_door_u_aaa_000004b8

# .rodata:0x5C | 0x64 | size: 0xA
.obj str_S_ie_soto_aaa_000004c4, local
	.string "S_ie_soto"
.endobj str_S_ie_soto_aaa_000004c4

# .rodata:0x66 | 0x6E | size: 0x2
.obj gap_03_0000006E_rodata, global
.hidden gap_03_0000006E_rodata
	.2byte 0x0000
.endobj gap_03_0000006E_rodata

# .rodata:0x68 | 0x70 | size: 0xA
.obj str_A_ie_soto_aaa_000004d0, local
	.string "A_ie_soto"
.endobj str_A_ie_soto_aaa_000004d0

# .rodata:0x72 | 0x7A | size: 0x2
.obj gap_03_0000007A_rodata, global
.hidden gap_03_0000007A_rodata
	.2byte 0x0000
.endobj gap_03_0000007A_rodata

# .rodata:0x74 | 0x7C | size: 0x7
.obj str_S_naka_aaa_000004dc, local
	.string "S_naka"
.endobj str_S_naka_aaa_000004dc

# .rodata:0x7B | 0x83 | size: 0x1
.obj gap_03_00000083_rodata, global
.hidden gap_03_00000083_rodata
	.byte 0x00
.endobj gap_03_00000083_rodata

# .rodata:0x7C | 0x84 | size: 0x8
.obj str_A_naka1_aaa_000004e4, local
	.string "A_naka1"
.endobj str_A_naka1_aaa_000004e4

# .rodata:0x84 | 0x8C | size: 0x15
.obj str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec, local
	.string "BGM_EVT_MARIO_HOUSE1"
.endobj str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec

# .rodata:0x99 | 0xA1 | size: 0x3
.obj gap_03_000000A1_rodata, global
.hidden gap_03_000000A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000A1_rodata

# .rodata:0x9C | 0xA4 | size: 0xD
.obj str_ENV_OPN_AAA1_aaa_00000504, local
	.string "ENV_OPN_AAA1"
.endobj str_ENV_OPN_AAA1_aaa_00000504

# .rodata:0xA9 | 0xB1 | size: 0x3
.obj gap_03_000000B1_rodata, global
.hidden gap_03_000000B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000B1_rodata

# .rodata:0xAC | 0xB4 | size: 0x8
.obj str_sai_ki2_aaa_00000514, local
	.string "sai_ki2"
.endobj str_sai_ki2_aaa_00000514

# .rodata:0xB4 | 0xBC | size: 0x8
.obj str_sai_ki1_aaa_0000051c, local
	.string "sai_ki1"
.endobj str_sai_ki1_aaa_0000051c

# .rodata:0xBC | 0xC4 | size: 0x1A
.obj str_SFX_EVT_OPN_PARETTA__aaa_00000524, local
	.string "SFX_EVT_OPN_PARETTA_MOVE1"
.endobj str_SFX_EVT_OPN_PARETTA__aaa_00000524

# .rodata:0xD6 | 0xDE | size: 0x2
.obj gap_03_000000DE_rodata, global
.hidden gap_03_000000DE_rodata
	.2byte 0x0000
.endobj gap_03_000000DE_rodata

# .rodata:0xD8 | 0xE0 | size: 0x9
.obj str_S_posuto_aaa_00000540, local
	.string "S_posuto"
.endobj str_S_posuto_aaa_00000540

# .rodata:0xE1 | 0xE9 | size: 0x3
.obj gap_03_000000E9_rodata, global
.hidden gap_03_000000E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000E9_rodata

# .rodata:0xE4 | 0xEC | size: 0x14
.obj str_SFX_EVT_POST_SHAKE1_aaa_0000054c, local
	.string "SFX_EVT_POST_SHAKE1"
.endobj str_SFX_EVT_POST_SHAKE1_aaa_0000054c

# .rodata:0xF8 | 0x100 | size: 0x7
.obj str_pro_00_aaa_00000560, local
	.string "pro_00"
.endobj str_pro_00_aaa_00000560

# .rodata:0xFF | 0x107 | size: 0x1
.obj gap_03_00000107_rodata, global
.hidden gap_03_00000107_rodata
	.byte 0x00
.endobj gap_03_00000107_rodata

# .rodata:0x100 | 0x108 | size: 0xF
.obj str_SFX_DOOR_OPEN1_aaa_00000568, local
	.string "SFX_DOOR_OPEN1"
.endobj str_SFX_DOOR_OPEN1_aaa_00000568

# .rodata:0x10F | 0x117 | size: 0x1
.obj gap_03_00000117_rodata, global
.hidden gap_03_00000117_rodata
	.byte 0x00
.endobj gap_03_00000117_rodata

# .rodata:0x110 | 0x118 | size: 0xF
.obj str_SFX_DOOR_SHUT1_aaa_00000578, local
	.string "SFX_DOOR_SHUT1"
.endobj str_SFX_DOOR_SHUT1_aaa_00000578

# .rodata:0x11F | 0x127 | size: 0x1
.obj gap_03_00000127_rodata, global
.hidden gap_03_00000127_rodata
	.byte 0x00
.endobj gap_03_00000127_rodata

# .rodata:0x120 | 0x128 | size: 0x4
.obj str_L_5_aaa_00000588, local
	.string "L_5"
.endobj str_L_5_aaa_00000588

# .rodata:0x124 | 0x12C | size: 0x5
.obj str_L_11_aaa_0000058c, local
	.string "L_11"
.endobj str_L_11_aaa_0000058c

# .rodata:0x129 | 0x131 | size: 0x3
.obj gap_03_00000131_rodata, global
.hidden gap_03_00000131_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000131_rodata

# .rodata:0x12C | 0x134 | size: 0x4
.obj str_L_6_aaa_00000594, local
	.string "L_6"
.endobj str_L_6_aaa_00000594

# .rodata:0x130 | 0x138 | size: 0x9
.obj str_S_aaa_00_aaa_00000598, local
	.string "S_aaa_00"
.endobj str_S_aaa_00_aaa_00000598

# .rodata:0x139 | 0x141 | size: 0x3
.obj gap_03_00000141_rodata, global
.hidden gap_03_00000141_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000141_rodata

# .rodata:0x13C | 0x144 | size: 0x4
.obj str_L_7_aaa_000005a4, local
	.string "L_7"
.endobj str_L_7_aaa_000005a4

# .rodata:0x140 | 0x148 | size: 0x7
.obj str_pro_01_aaa_000005a8, local
	.string "pro_01"
.endobj str_pro_01_aaa_000005a8

# .rodata:0x147 | 0x14F | size: 0x1
.obj gap_03_0000014F_rodata, global
.hidden gap_03_0000014F_rodata
	.byte 0x00
.endobj gap_03_0000014F_rodata

# .rodata:0x148 | 0x150 | size: 0x7
.obj str_pro_02_aaa_000005b0, local
	.string "pro_02"
.endobj str_pro_02_aaa_000005b0

# .rodata:0x14F | 0x157 | size: 0x1
.obj gap_03_00000157_rodata, global
.hidden gap_03_00000157_rodata
	.byte 0x00
.endobj gap_03_00000157_rodata

# .rodata:0x150 | 0x158 | size: 0x4
.obj str_L_8_aaa_000005b8, local
	.string "L_8"
.endobj str_L_8_aaa_000005b8

# .rodata:0x154 | 0x15C | size: 0x4
.obj str_L_9_aaa_000005bc, local
	.string "L_9"
.endobj str_L_9_aaa_000005bc

# .rodata:0x158 | 0x160 | size: 0x7
.obj str_pro_03_aaa_000005c0, local
	.string "pro_03"
.endobj str_pro_03_aaa_000005c0

# .rodata:0x15F | 0x167 | size: 0x1
.obj gap_03_00000167_rodata, global
.hidden gap_03_00000167_rodata
	.byte 0x00
.endobj gap_03_00000167_rodata

# .rodata:0x160 | 0x168 | size: 0x7
.obj str_gor_10_aaa_000005c8, local
	.string "gor_10"
.endobj str_gor_10_aaa_000005c8

# .rodata:0x167 | 0x16F | size: 0x1
.obj gap_03_0000016F_rodata, global
.hidden gap_03_0000016F_rodata
	.byte 0x00
.endobj gap_03_0000016F_rodata

# .rodata:0x168 | 0x170 | size: 0xC
.obj vec3_aaa_000005d0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_aaa_000005d0

# .rodata:0x174 | 0x17C | size: 0xC
.obj vec3_aaa_000005dc, local
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
.endobj vec3_aaa_000005dc

# .rodata:0x180 | 0x188 | size: 0x4
.obj dat_aaa_000005e8, local
	.4byte 0xFFFFFF00
.endobj dat_aaa_000005e8

# .rodata:0x184 | 0x18C | size: 0x7
.obj str_pro_05_aaa_000005ec, local
	.string "pro_05"
.endobj str_pro_05_aaa_000005ec

# .rodata:0x18B | 0x193 | size: 0x1
.obj gap_03_00000193_rodata, global
.hidden gap_03_00000193_rodata
	.byte 0x00
.endobj gap_03_00000193_rodata

# .rodata:0x18C | 0x194 | size: 0x4
.obj str_I_1_aaa_000005f4, local
	.string "I_1"
.endobj str_I_1_aaa_000005f4

# .rodata:0x190 | 0x198 | size: 0x4
.obj str_map_aaa_000005f8, local
	.string "map"
.endobj str_map_aaa_000005f8

# .rodata:0x194 | 0x19C | size: 0x4
.obj str_S_1_aaa_000005fc, local
	.string "S_1"
.endobj str_S_1_aaa_000005fc

# .rodata:0x198 | 0x1A0 | size: 0x6
.obj str_M_L_3_aaa_00000600, local
	.string "M_L_3"
.endobj str_M_L_3_aaa_00000600

# .rodata:0x19E | 0x1A6 | size: 0x2
.obj gap_03_000001A6_rodata, global
.hidden gap_03_000001A6_rodata
	.2byte 0x0000
.endobj gap_03_000001A6_rodata

# .rodata:0x1A0 | 0x1A8 | size: 0x7
.obj str_muj_20_aaa_00000608, local
	.string "muj_20"
.endobj str_muj_20_aaa_00000608

# .rodata:0x1A7 | 0x1AF | size: 0x1
.obj gap_03_000001AF_rodata, global
.hidden gap_03_000001AF_rodata
	.byte 0x00
.endobj gap_03_000001AF_rodata

# .rodata:0x1A8 | 0x1B0 | size: 0x9
.obj str_prologue_aaa_00000610, local
	.string "prologue"
.endobj str_prologue_aaa_00000610

# .rodata:0x1B1 | 0x1B9 | size: 0x3
.obj gap_03_000001B9_rodata, global
.hidden gap_03_000001B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001B9_rodata

# .rodata:0x1B4 | 0x1BC | size: 0xD
.obj str_ENV_END_AAA1_aaa_0000061c, local
	.string "ENV_END_AAA1"
.endobj str_ENV_END_AAA1_aaa_0000061c

# .rodata:0x1C1 | 0x1C9 | size: 0x3
.obj gap_03_000001C9_rodata, global
.hidden gap_03_000001C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001C9_rodata

# .rodata:0x1C4 | 0x1CC | size: 0x6
.obj str_M_S_5_aaa_0000062c, local
	.string "M_S_5"
.endobj str_M_S_5_aaa_0000062c

# .rodata:0x1CA | 0x1D2 | size: 0x2
.obj gap_03_000001D2_rodata, global
.hidden gap_03_000001D2_rodata
	.2byte 0x0000
.endobj gap_03_000001D2_rodata

# .rodata:0x1CC | 0x1D4 | size: 0x4
.obj str_S_2_aaa_00000634, local
	.string "S_2"
.endobj str_S_2_aaa_00000634

# .rodata:0x1D0 | 0x1D8 | size: 0x6
.obj str_ep_31_aaa_00000638, local
	.string "ep_31"
.endobj str_ep_31_aaa_00000638

# .rodata:0x1D6 | 0x1DE | size: 0x2
.obj gap_03_000001DE_rodata, global
.hidden gap_03_000001DE_rodata
	.2byte 0x0000
.endobj gap_03_000001DE_rodata

# .rodata:0x1D8 | 0x1E0 | size: 0x4
.obj str_T_2_aaa_00000640, local
	.string "T_2"
.endobj str_T_2_aaa_00000640

# .rodata:0x1DC | 0x1E4 | size: 0x6
.obj str_ep_32_aaa_00000644, local
	.string "ep_32"
.endobj str_ep_32_aaa_00000644

# .rodata:0x1E2 | 0x1EA | size: 0x2
.obj gap_03_000001EA_rodata, global
.hidden gap_03_000001EA_rodata
	.2byte 0x0000
.endobj gap_03_000001EA_rodata

# .rodata:0x1E4 | 0x1EC | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_aaa_0000064c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_2"
.endobj str_SFX_VOICE_MARIO_HAND_aaa_0000064c

# .rodata:0x1FF | 0x207 | size: 0x1
.obj gap_03_00000207_rodata, global
.hidden gap_03_00000207_rodata
	.byte 0x00
.endobj gap_03_00000207_rodata

# .rodata:0x200 | 0x208 | size: 0x7
.obj str_M_N_11_aaa_00000668, local
	.string "M_N_11"
.endobj str_M_N_11_aaa_00000668

# .rodata:0x207 | 0x20F | size: 0x1
.obj gap_03_0000020F_rodata, global
.hidden gap_03_0000020F_rodata
	.byte 0x00
.endobj gap_03_0000020F_rodata

# .rodata:0x208 | 0x210 | size: 0x6
.obj str_ep_33_aaa_00000670, local
	.string "ep_33"
.endobj str_ep_33_aaa_00000670

# .rodata:0x20E | 0x216 | size: 0x2
.obj gap_03_00000216_rodata, global
.hidden gap_03_00000216_rodata
	.2byte 0x0000
.endobj gap_03_00000216_rodata

# .rodata:0x210 | 0x218 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_aaa_00000678, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_aaa_00000678

# .rodata:0x228 | 0x230 | size: 0x17
.obj str_BGM_FF_MAIL_RECEPTIO_aaa_00000690, local
	.string "BGM_FF_MAIL_RECEPTION3"
.endobj str_BGM_FF_MAIL_RECEPTIO_aaa_00000690

# .rodata:0x23F | 0x247 | size: 0x1
.obj gap_03_00000247_rodata, global
.hidden gap_03_00000247_rodata
	.byte 0x00
.endobj gap_03_00000247_rodata

# .rodata:0x240 | 0x248 | size: 0x14
.obj str_SFX_MAIL_RECEPTION1_aaa_000006a8, local
	.string "SFX_MAIL_RECEPTION1"
.endobj str_SFX_MAIL_RECEPTION1_aaa_000006a8

# .rodata:0x254 | 0x25C | size: 0x6
.obj str_ep_34_aaa_000006bc, local
	.string "ep_34"
.endobj str_ep_34_aaa_000006bc

# .rodata:0x25A | 0x262 | size: 0x2
.obj gap_03_00000262_rodata, global
.hidden gap_03_00000262_rodata
	.2byte 0x0000
.endobj gap_03_00000262_rodata

# .rodata:0x25C | 0x264 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__aaa_000006c4, local
	.string "SFX_VOICE_MARIO_FLD_JUMP3"
.endobj str_SFX_VOICE_MARIO_FLD__aaa_000006c4

# .rodata:0x276 | 0x27E | size: 0x2
.obj gap_03_0000027E_rodata, global
.hidden gap_03_0000027E_rodata
	.2byte 0x0000
.endobj gap_03_0000027E_rodata

# .rodata:0x278 | 0x280 | size: 0x13
.obj str_SFX_MARIO_LANDING3_aaa_000006e0, local
	.string "SFX_MARIO_LANDING3"
.endobj str_SFX_MARIO_LANDING3_aaa_000006e0

# .rodata:0x28B | 0x293 | size: 0x1
.obj gap_03_00000293_rodata, global
.hidden gap_03_00000293_rodata
	.byte 0x00
.endobj gap_03_00000293_rodata

# .rodata:0x28C | 0x294 | size: 0x6
.obj str_M_N_9_aaa_000006f4, local
	.string "M_N_9"
.endobj str_M_N_9_aaa_000006f4

# .rodata:0x292 | 0x29A | size: 0x2
.obj gap_03_0000029A_rodata, global
.hidden gap_03_0000029A_rodata
	.2byte 0x0000
.endobj gap_03_0000029A_rodata

# .rodata:0x294 | 0x29C | size: 0x14
.obj str_SFX_MAIL_RECEPTION2_aaa_000006fc, local
	.string "SFX_MAIL_RECEPTION2"
.endobj str_SFX_MAIL_RECEPTION2_aaa_000006fc

# .rodata:0x2A8 | 0x2B0 | size: 0x7
.obj str_M_N_10_aaa_00000710, local
	.string "M_N_10"
.endobj str_M_N_10_aaa_00000710

# .rodata:0x2AF | 0x2B7 | size: 0x1
.obj gap_03_000002B7_rodata, global
.hidden gap_03_000002B7_rodata
	.byte 0x00
.endobj gap_03_000002B7_rodata

# .rodata:0x2B0 | 0x2B8 | size: 0x6
.obj str_ep_35_aaa_00000718, local
	.string "ep_35"
.endobj str_ep_35_aaa_00000718

# .rodata:0x2B6 | 0x2BE | size: 0x2
.obj gap_03_000002BE_rodata, global
.hidden gap_03_000002BE_rodata
	.2byte 0x0000
.endobj gap_03_000002BE_rodata

# .rodata:0x2B8 | 0x2C0 | size: 0x7
.obj str_gor_02_aaa_00000720, local
	.string "gor_02"
.endobj str_gor_02_aaa_00000720

# .rodata:0x2BF | 0x2C7 | size: 0x1
.obj gap_03_000002C7_rodata, global
.hidden gap_03_000002C7_rodata
	.byte 0x00
.endobj gap_03_000002C7_rodata

# .rodata:0x2C0 | 0x2C8 | size: 0x1
.obj zero_aaa_00000728, local
	.byte 0x00
.endobj zero_aaa_00000728

# .rodata:0x2C1 | 0x2C9 | size: 0x3
.obj gap_03_000002C9_rodata, global
.hidden gap_03_000002C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002C9_rodata

# .rodata:0x2C4 | 0x2CC | size: 0x9
.obj str_ピーチ姫_aaa_0000072c, local
	# ピーチ姫
	.byte 0x83, 0x73, 0x81, 0x5B, 0x83, 0x60, 0x95, 0x50, 0x00
.endobj str_ピーチ姫_aaa_0000072c

# .rodata:0x2CD | 0x2D5 | size: 0x3
.obj gap_03_000002D5_rodata, global
.hidden gap_03_000002D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002D5_rodata

# .rodata:0x2D0 | 0x2D8 | size: 0x8
.obj str_c_peach_aaa_00000738, local
	.string "c_peach"
.endobj str_c_peach_aaa_00000738

# .rodata:0x2D8 | 0x2E0 | size: 0x11
.obj str_ピーチ姫（普通）_aaa_00000740, local
	# ピーチ姫（普通）
	.byte 0x83, 0x73, 0x81, 0x5B, 0x83, 0x60, 0x95, 0x50, 0x81, 0x69, 0x95, 0x81, 0x92, 0xCA, 0x81, 0x6A, 0x00
.endobj str_ピーチ姫（普通）_aaa_00000740

# .rodata:0x2E9 | 0x2F1 | size: 0x3
.obj gap_03_000002F1_rodata, global
.hidden gap_03_000002F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002F1_rodata

# .rodata:0x2EC | 0x2F4 | size: 0x9
.obj str_キノじい_aaa_00000754, local
	# キノじい
	.byte 0x83, 0x4C, 0x83, 0x6D, 0x82, 0xB6, 0x82, 0xA2, 0x00
.endobj str_キノじい_aaa_00000754

# .rodata:0x2F5 | 0x2FD | size: 0x3
.obj gap_03_000002FD_rodata, global
.hidden gap_03_000002FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002FD_rodata

# .rodata:0x2F8 | 0x300 | size: 0xA
.obj str_c_kino_ji_aaa_00000760, local
	.string "c_kino_ji"
.endobj str_c_kino_ji_aaa_00000760

# .rodata:0x302 | 0x30A | size: 0x2
.obj gap_03_0000030A_rodata, global
.hidden gap_03_0000030A_rodata
	.2byte 0x0000
.endobj gap_03_0000030A_rodata

# .rodata:0x304 | 0x30C | size: 0x6
.obj str_ep_47_aaa_0000076c, local
	.string "ep_47"
.endobj str_ep_47_aaa_0000076c

# .rodata:0x30A | 0x312 | size: 0x2
.obj gap_03_00000312_rodata, global
.hidden gap_03_00000312_rodata
	.2byte 0x0000
.endobj gap_03_00000312_rodata

# .rodata:0x30C | 0x314 | size: 0x15
.obj str_BGM_EVT_MARIO_HOUSE2_aaa_00000774, local
	.string "BGM_EVT_MARIO_HOUSE2"
.endobj str_BGM_EVT_MARIO_HOUSE2_aaa_00000774

# .rodata:0x321 | 0x329 | size: 0x3
.obj gap_03_00000329_rodata, global
.hidden gap_03_00000329_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000329_rodata

# .rodata:0x324 | 0x32C | size: 0x6
.obj str_M_S_1_aaa_0000078c, local
	.string "M_S_1"
.endobj str_M_S_1_aaa_0000078c

# .rodata:0x32A | 0x332 | size: 0x2
.obj gap_03_00000332_rodata, global
.hidden gap_03_00000332_rodata
	.2byte 0x0000
.endobj gap_03_00000332_rodata

# .rodata:0x32C | 0x334 | size: 0x6
.obj str_ep_48_aaa_00000794, local
	.string "ep_48"
.endobj str_ep_48_aaa_00000794

# .rodata:0x332 | 0x33A | size: 0x2
.obj gap_03_0000033A_rodata, global
.hidden gap_03_0000033A_rodata
	.2byte 0x0000
.endobj gap_03_0000033A_rodata

# .rodata:0x334 | 0x33C | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_aaa_0000079c, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_aaa_0000079c

# .rodata:0x34B | 0x353 | size: 0x1
.obj gap_03_00000353_rodata, global
.hidden gap_03_00000353_rodata
	.byte 0x00
.endobj gap_03_00000353_rodata

# .rodata:0x34C | 0x354 | size: 0x6
.obj str_M_N_2_aaa_000007b4, local
	.string "M_N_2"
.endobj str_M_N_2_aaa_000007b4

# .rodata:0x352 | 0x35A | size: 0x2
.obj gap_03_0000035A_rodata, global
.hidden gap_03_0000035A_rodata
	.2byte 0x0000
.endobj gap_03_0000035A_rodata

# .rodata:0x354 | 0x35C | size: 0x20
.obj str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc, local
	.string "SFX_EVT_EPILOGUE_KINOJII_KNOCK1"
.endobj str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc

# .rodata:0x374 | 0x37C | size: 0x6
.obj str_ep_49_aaa_000007dc, local
	.string "ep_49"
.endobj str_ep_49_aaa_000007dc

# .rodata:0x37A | 0x382 | size: 0x2
.obj gap_03_00000382_rodata, global
.hidden gap_03_00000382_rodata
	.2byte 0x0000
.endobj gap_03_00000382_rodata

# .rodata:0x37C | 0x384 | size: 0x6
.obj str_ep_50_aaa_000007e4, local
	.string "ep_50"
.endobj str_ep_50_aaa_000007e4

# .rodata:0x382 | 0x38A | size: 0x2
.obj gap_03_0000038A_rodata, global
.hidden gap_03_0000038A_rodata
	.2byte 0x0000
.endobj gap_03_0000038A_rodata

# .rodata:0x384 | 0x38C | size: 0x6
.obj str_ep_51_aaa_000007ec, local
	.string "ep_51"
.endobj str_ep_51_aaa_000007ec

# .rodata:0x38A | 0x392 | size: 0x2
.obj gap_03_00000392_rodata, global
.hidden gap_03_00000392_rodata
	.2byte 0x0000
.endobj gap_03_00000392_rodata

# .rodata:0x38C | 0x394 | size: 0x6
.obj str_ep_52_aaa_000007f4, local
	.string "ep_52"
.endobj str_ep_52_aaa_000007f4

# .rodata:0x392 | 0x39A | size: 0x2
.obj gap_03_0000039A_rodata, global
.hidden gap_03_0000039A_rodata
	.2byte 0x0000
.endobj gap_03_0000039A_rodata

# .rodata:0x394 | 0x39C | size: 0x6
.obj str_P_S_5_aaa_000007fc, local
	.string "P_S_5"
.endobj str_P_S_5_aaa_000007fc

# .rodata:0x39A | 0x3A2 | size: 0x2
.obj gap_03_000003A2_rodata, global
.hidden gap_03_000003A2_rodata
	.2byte 0x0000
.endobj gap_03_000003A2_rodata

# .rodata:0x39C | 0x3A4 | size: 0x6
.obj str_P_T_5_aaa_00000804, local
	.string "P_T_5"
.endobj str_P_T_5_aaa_00000804

# .rodata:0x3A2 | 0x3AA | size: 0x2
.obj gap_03_000003AA_rodata, global
.hidden gap_03_000003AA_rodata
	.2byte 0x0000
.endobj gap_03_000003AA_rodata

# .rodata:0x3A4 | 0x3AC | size: 0x6
.obj str_ep_53_aaa_0000080c, local
	.string "ep_53"
.endobj str_ep_53_aaa_0000080c

# .rodata:0x3AA | 0x3B2 | size: 0x2
.obj gap_03_000003B2_rodata, global
.hidden gap_03_000003B2_rodata
	.2byte 0x0000
.endobj gap_03_000003B2_rodata

# .rodata:0x3AC | 0x3B4 | size: 0x6
.obj str_P_S_7_aaa_00000814, local
	.string "P_S_7"
.endobj str_P_S_7_aaa_00000814

# .rodata:0x3B2 | 0x3BA | size: 0x2
.obj gap_03_000003BA_rodata, global
.hidden gap_03_000003BA_rodata
	.2byte 0x0000
.endobj gap_03_000003BA_rodata

# .rodata:0x3B4 | 0x3BC | size: 0x7
.obj str_P_T_13_aaa_0000081c, local
	.string "P_T_13"
.endobj str_P_T_13_aaa_0000081c

# .rodata:0x3BB | 0x3C3 | size: 0x1
.obj gap_03_000003C3_rodata, global
.hidden gap_03_000003C3_rodata
	.byte 0x00
.endobj gap_03_000003C3_rodata

# .rodata:0x3BC | 0x3C4 | size: 0x6
.obj str_ep_54_aaa_00000824, local
	.string "ep_54"
.endobj str_ep_54_aaa_00000824

# .rodata:0x3C2 | 0x3CA | size: 0x2
.obj gap_03_000003CA_rodata, global
.hidden gap_03_000003CA_rodata
	.2byte 0x0000
.endobj gap_03_000003CA_rodata

# .rodata:0x3C4 | 0x3CC | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_aaa_0000082c, local
	.string "SFX_VOICE_MARIO_SURPRISED2"
.endobj str_SFX_VOICE_MARIO_SURP_aaa_0000082c

# .rodata:0x3DF | 0x3E7 | size: 0x1
.obj gap_03_000003E7_rodata, global
.hidden gap_03_000003E7_rodata
	.byte 0x00
.endobj gap_03_000003E7_rodata

# .rodata:0x3E0 | 0x3E8 | size: 0x7
.obj str_M_N_5B_aaa_00000848, local
	.string "M_N_5B"
.endobj str_M_N_5B_aaa_00000848

# .rodata:0x3E7 | 0x3EF | size: 0x1
.obj gap_03_000003EF_rodata, global
.hidden gap_03_000003EF_rodata
	.byte 0x00
.endobj gap_03_000003EF_rodata

# .rodata:0x3E8 | 0x3F0 | size: 0x6
.obj str_M_I_G_aaa_00000850, local
	.string "M_I_G"
.endobj str_M_I_G_aaa_00000850

# .rodata:0x3EE | 0x3F6 | size: 0x2
.obj gap_03_000003F6_rodata, global
.hidden gap_03_000003F6_rodata
	.2byte 0x0000
.endobj gap_03_000003F6_rodata

# .rodata:0x3F0 | 0x3F8 | size: 0xC
.obj str_BGM_ENDING4_aaa_00000858, local
	.string "BGM_ENDING4"
.endobj str_BGM_ENDING4_aaa_00000858

# .rodata:0x3FC | 0x404 | size: 0x6
.obj str_M_I_N_aaa_00000864, local
	.string "M_I_N"
.endobj str_M_I_N_aaa_00000864

# .rodata:0x402 | 0x40A | size: 0x2
.obj gap_03_0000040A_rodata, global
.hidden gap_03_0000040A_rodata
	.2byte 0x0000
.endobj gap_03_0000040A_rodata

# .rodata:0x404 | 0x40C | size: 0x7
.obj str_end_00_aaa_0000086c, local
	.string "end_00"
.endobj str_end_00_aaa_0000086c

# .rodata:0x40B | 0x413 | size: 0x1
.obj gap_03_00000413_rodata, global
.hidden gap_03_00000413_rodata
	.byte 0x00
.endobj gap_03_00000413_rodata

# .rodata:0x40C | 0x414 | size: 0x7
.obj str_A_ki_1_aaa_00000874, local
	.string "A_ki_1"
.endobj str_A_ki_1_aaa_00000874

# .rodata:0x413 | 0x41B | size: 0x1
.obj gap_03_0000041B_rodata, global
.hidden gap_03_0000041B_rodata
	.byte 0x00
.endobj gap_03_0000041B_rodata

# .rodata:0x414 | 0x41C | size: 0x7
.obj str_S_ki_1_aaa_0000087c, local
	.string "S_ki_1"
.endobj str_S_ki_1_aaa_0000087c

# .rodata:0x41B | 0x423 | size: 0x1
.obj gap_03_00000423_rodata, global
.hidden gap_03_00000423_rodata
	.byte 0x00
.endobj gap_03_00000423_rodata

# .rodata:0x41C | 0x424 | size: 0x7
.obj str_S_ha_1_aaa_00000884, local
	.string "S_ha_1"
.endobj str_S_ha_1_aaa_00000884

# .rodata:0x423 | 0x42B | size: 0x1
.obj gap_03_0000042B_rodata, global
.hidden gap_03_0000042B_rodata
	.byte 0x00
.endobj gap_03_0000042B_rodata

# .rodata:0x424 | 0x42C | size: 0xA
.obj str_A_kusa_01_aaa_0000088c, local
	.string "A_kusa_01"
.endobj str_A_kusa_01_aaa_0000088c

# .rodata:0x42E | 0x436 | size: 0x2
.obj gap_03_00000436_rodata, global
.hidden gap_03_00000436_rodata
	.2byte 0x0000
.endobj gap_03_00000436_rodata

# .rodata:0x430 | 0x438 | size: 0xA
.obj str_S_kusa_01_aaa_00000898, local
	.string "S_kusa_01"
.endobj str_S_kusa_01_aaa_00000898

# .rodata:0x43A | 0x442 | size: 0x2
.obj gap_03_00000442_rodata, global
.hidden gap_03_00000442_rodata
	.2byte 0x0000
.endobj gap_03_00000442_rodata

# .rodata:0x43C | 0x444 | size: 0xA
.obj str_A_kusa_02_aaa_000008a4, local
	.string "A_kusa_02"
.endobj str_A_kusa_02_aaa_000008a4

# .rodata:0x446 | 0x44E | size: 0x2
.obj gap_03_0000044E_rodata, global
.hidden gap_03_0000044E_rodata
	.2byte 0x0000
.endobj gap_03_0000044E_rodata

# .rodata:0x448 | 0x450 | size: 0xA
.obj str_S_kusa_02_aaa_000008b0, local
	.string "S_kusa_02"
.endobj str_S_kusa_02_aaa_000008b0

# .rodata:0x452 | 0x45A | size: 0x2
.obj gap_03_0000045A_rodata, global
.hidden gap_03_0000045A_rodata
	.2byte 0x0000
.endobj gap_03_0000045A_rodata

# .rodata:0x454 | 0x45C | size: 0xA
.obj str_A_kusa_03_aaa_000008bc, local
	.string "A_kusa_03"
.endobj str_A_kusa_03_aaa_000008bc

# .rodata:0x45E | 0x466 | size: 0x2
.obj gap_03_00000466_rodata, global
.hidden gap_03_00000466_rodata
	.2byte 0x0000
.endobj gap_03_00000466_rodata

# .rodata:0x460 | 0x468 | size: 0xA
.obj str_S_kusa_03_aaa_000008c8, local
	.string "S_kusa_03"
.endobj str_S_kusa_03_aaa_000008c8

# .rodata:0x46A | 0x472 | size: 0x2
.obj gap_03_00000472_rodata, global
.hidden gap_03_00000472_rodata
	.2byte 0x0000
.endobj gap_03_00000472_rodata

# .rodata:0x46C | 0x474 | size: 0xA
.obj str_A_kusa_04_aaa_000008d4, local
	.string "A_kusa_04"
.endobj str_A_kusa_04_aaa_000008d4

# .rodata:0x476 | 0x47E | size: 0x2
.obj gap_03_0000047E_rodata, global
.hidden gap_03_0000047E_rodata
	.2byte 0x0000
.endobj gap_03_0000047E_rodata

# .rodata:0x478 | 0x480 | size: 0xA
.obj str_S_kusa_04_aaa_000008e0, local
	.string "S_kusa_04"
.endobj str_S_kusa_04_aaa_000008e0

# .rodata:0x482 | 0x48A | size: 0x2
.obj gap_03_0000048A_rodata, global
.hidden gap_03_0000048A_rodata
	.2byte 0x0000
.endobj gap_03_0000048A_rodata

# .rodata:0x484 | 0x48C | size: 0xA
.obj str_A_kusa_05_aaa_000008ec, local
	.string "A_kusa_05"
.endobj str_A_kusa_05_aaa_000008ec

# .rodata:0x48E | 0x496 | size: 0x2
.obj gap_03_00000496_rodata, global
.hidden gap_03_00000496_rodata
	.2byte 0x0000
.endobj gap_03_00000496_rodata

# .rodata:0x490 | 0x498 | size: 0xA
.obj str_S_kusa_05_aaa_000008f8, local
	.string "S_kusa_05"
.endobj str_S_kusa_05_aaa_000008f8

# .rodata:0x49A | 0x4A2 | size: 0x2
.obj gap_03_000004A2_rodata, global
.hidden gap_03_000004A2_rodata
	.2byte 0x0000
.endobj gap_03_000004A2_rodata

# .rodata:0x49C | 0x4A4 | size: 0xA
.obj str_A_kusa_06_aaa_00000904, local
	.string "A_kusa_06"
.endobj str_A_kusa_06_aaa_00000904

# .rodata:0x4A6 | 0x4AE | size: 0x2
.obj gap_03_000004AE_rodata, global
.hidden gap_03_000004AE_rodata
	.2byte 0x0000
.endobj gap_03_000004AE_rodata

# .rodata:0x4A8 | 0x4B0 | size: 0xA
.obj str_S_kusa_06_aaa_00000910, local
	.string "S_kusa_06"
.endobj str_S_kusa_06_aaa_00000910

# .rodata:0x4B2 | 0x4BA | size: 0x2
.obj gap_03_000004BA_rodata, global
.hidden gap_03_000004BA_rodata
	.2byte 0x0000
.endobj gap_03_000004BA_rodata

# .rodata:0x4B4 | 0x4BC | size: 0xA
.obj str_A_kusa_07_aaa_0000091c, local
	.string "A_kusa_07"
.endobj str_A_kusa_07_aaa_0000091c

# .rodata:0x4BE | 0x4C6 | size: 0x2
.obj gap_03_000004C6_rodata, global
.hidden gap_03_000004C6_rodata
	.2byte 0x0000
.endobj gap_03_000004C6_rodata

# .rodata:0x4C0 | 0x4C8 | size: 0xA
.obj str_S_kusa_07_aaa_00000928, local
	.string "S_kusa_07"
.endobj str_S_kusa_07_aaa_00000928

# .rodata:0x4CA | 0x4D2 | size: 0x2
.obj gap_03_000004D2_rodata, global
.hidden gap_03_000004D2_rodata
	.2byte 0x0000
.endobj gap_03_000004D2_rodata

# .rodata:0x4CC | 0x4D4 | size: 0xA
.obj str_A_kusa_08_aaa_00000934, local
	.string "A_kusa_08"
.endobj str_A_kusa_08_aaa_00000934

# .rodata:0x4D6 | 0x4DE | size: 0x2
.obj gap_03_000004DE_rodata, global
.hidden gap_03_000004DE_rodata
	.2byte 0x0000
.endobj gap_03_000004DE_rodata

# .rodata:0x4D8 | 0x4E0 | size: 0xA
.obj str_S_kusa_08_aaa_00000940, local
	.string "S_kusa_08"
.endobj str_S_kusa_08_aaa_00000940

# .rodata:0x4E2 | 0x4EA | size: 0x2
.obj gap_03_000004EA_rodata, global
.hidden gap_03_000004EA_rodata
	.2byte 0x0000
.endobj gap_03_000004EA_rodata

# .rodata:0x4E4 | 0x4EC | size: 0xA
.obj str_A_kusa_09_aaa_0000094c, local
	.string "A_kusa_09"
.endobj str_A_kusa_09_aaa_0000094c

# .rodata:0x4EE | 0x4F6 | size: 0x2
.obj gap_03_000004F6_rodata, global
.hidden gap_03_000004F6_rodata
	.2byte 0x0000
.endobj gap_03_000004F6_rodata

# .rodata:0x4F0 | 0x4F8 | size: 0xA
.obj str_S_kusa_09_aaa_00000958, local
	.string "S_kusa_09"
.endobj str_S_kusa_09_aaa_00000958

# .rodata:0x4FA | 0x502 | size: 0x2
.obj gap_03_00000502_rodata, global
.hidden gap_03_00000502_rodata
	.2byte 0x0000
.endobj gap_03_00000502_rodata

# .rodata:0x4FC | 0x504 | size: 0xA
.obj str_A_kusa_10_aaa_00000964, local
	.string "A_kusa_10"
.endobj str_A_kusa_10_aaa_00000964

# .rodata:0x506 | 0x50E | size: 0x2
.obj gap_03_0000050E_rodata, global
.hidden gap_03_0000050E_rodata
	.2byte 0x0000
.endobj gap_03_0000050E_rodata

# .rodata:0x508 | 0x510 | size: 0xA
.obj str_S_kusa_10_aaa_00000970, local
	.string "S_kusa_10"
.endobj str_S_kusa_10_aaa_00000970

# .rodata:0x512 | 0x51A | size: 0x2
.obj gap_03_0000051A_rodata, global
.hidden gap_03_0000051A_rodata
	.2byte 0x0000
.endobj gap_03_0000051A_rodata

# .rodata:0x514 | 0x51C | size: 0x8
.obj str_dokan_1_aaa_0000097c, local
	.string "dokan_1"
.endobj str_dokan_1_aaa_0000097c

# .rodata:0x51C | 0x524 | size: 0xA
.obj str_prologue2_aaa_00000984, local
	.string "prologue2"
.endobj str_prologue2_aaa_00000984

# .rodata:0x526 | 0x52E | size: 0x2
.obj gap_03_0000052E_rodata, global
.hidden gap_03_0000052E_rodata
	.2byte 0x0000
.endobj gap_03_0000052E_rodata

# .rodata:0x528 | 0x530 | size: 0xA
.obj str_epilogue2_aaa_00000990, local
	.string "epilogue2"
.endobj str_epilogue2_aaa_00000990

# .rodata:0x532 | 0x53A | size: 0x2
.obj gap_03_0000053A_rodata, global
.hidden gap_03_0000053A_rodata
	.2byte 0x0000
.endobj gap_03_0000053A_rodata

# .rodata:0x534 | 0x53C | size: 0xF
.obj str_PCTs_mariost_tpl_aaa_0000099c, local
	.string "%s/mariost.tpl"
.endobj str_PCTs_mariost_tpl_aaa_0000099c
	.byte 0x00

# .rodata:0x544 | 0x54C | size: 0x4
.obj float_1000_aaa_000009ac, local
	.float 1000
.endobj float_1000_aaa_000009ac

# 0x00000060..0x00002210 | size: 0x21B0
.data
.balign 8

# .data:0x0 | 0x60 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x68 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x70 | size: 0x8
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
	.4byte 0x00000000
.endobj __local_3PIO2$385

# .data:0x18 | 0x78 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x80 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x84 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x88 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x90 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x94 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x98 | size: 0x8
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
	.4byte 0x00000000
.endobj __local_3PIO2$368

# .data:0x40 | 0xA0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xB0 | size: 0x114
.obj npcEnt, local
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x164 | 0x1C4 | size: 0x3C
.obj evt_door, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7848
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door

# .data:0x1A0 | 0x200 | size: 0x30
.obj evt_door2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door2

# .data:0x1D0 | 0x230 | size: 0x58
.obj evt_wall, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7D80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie_kaiten2_aaa_0000048c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_ie_kaiten1_aaa_0000049c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wall

# .data:0x228 | 0x288 | size: 0x8
.obj ie_npc, local
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000000
.endobj ie_npc

# .data:0x230 | 0x290 | size: 0x30
.obj door_1_open, local
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
.endobj door_1_open

# .data:0x260 | 0x2C0 | size: 0x38
.obj door_1_close, local
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
.endobj door_1_close

# .data:0x298 | 0x2F8 | size: 0x48
.obj door_1, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte str_S_ie_door_aaa_00000480
	.4byte str_A_ie_door_aaa_000004ac
	.4byte str_A_ie_door_u_aaa_000004b8
	.4byte str_S_ie_soto_aaa_000004c4
	.4byte str_A_ie_soto_aaa_000004d0
	.4byte str_S_naka_aaa_000004dc
	.4byte str_A_naka1_aaa_000004e4
	.4byte evt_door
	.4byte 0x00000000
	.4byte evt_wall
	.4byte ie_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte door_1_open
	.4byte door_1_close
.endobj door_1

# .data:0x2E0 | 0x340 | size: 0xB24
.obj evt_prologue, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_MARIO_HOUSE1_aaa_000004ec
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_OPN_AAA1_aaa_00000504
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_camid
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF6A
	.4byte 0x0000001E
	.4byte 0xFFFFFEB6
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x0000001E
	.4byte 0xFFFFFEB6
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000091
	.4byte 0x0000007A
	.4byte 0x00000374
	.4byte 0x00000091
	.4byte 0x0000006C
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF6A
	.4byte 0x0000001E
	.4byte 0xFFFFFEB6
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x0000001E
	.4byte 0xFFFFFEB6
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x00000FA0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_sai_ki2_aaa_00000514
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_sai_ki1_aaa_0000051c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000091
	.4byte 0x0000007A
	.4byte 0x000002CD
	.4byte 0x00000091
	.4byte 0x0000006C
	.4byte 0xFFFFFF4C
	.4byte 0x00001388
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x000001F4
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_パレッタ_aaa_00000468
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_OPN_PARETTA__aaa_00000524
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_パレッタ_aaa_00000468
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_OPN_PARETTA__aaa_00000524
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00020018
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000011
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_パレッタ_aaa_00000468
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_OPN_PARETTA__aaa_00000524
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x000000D2
	.4byte 0x00000019
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0xF24A0280
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_posuto_aaa_00000540
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_POST_SHAKE1_aaa_0000054c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_posuto_aaa_00000540
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_posuto_aaa_00000540
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_pro_00_aaa_00000560
	.4byte 0x00000000
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_パレッタ_aaa_00000468
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0xF24A0280
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000014
	.4byte 0x0000001E
	.4byte 0xFFFFFF6A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_naka_aaa_000004dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN1_aaa_00000568
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_door
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000003F
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT1_aaa_00000578
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_door
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x000000C3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x000000E1
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_posuto_aaa_00000540
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_POST_SHAKE1_aaa_0000054c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_posuto_aaa_00000540
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_posuto_aaa_00000540
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000154
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_11_aaa_0000058c
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x000000C3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000003F
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00020010
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN1_aaa_00000568
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_door
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_6_aaa_00000594
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000019
	.4byte 0xFFFFFF65
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEA7
	.4byte 0x0000009A
	.4byte 0x00000060
	.4byte 0xFFFFFFE0
	.4byte 0x0000004B
	.4byte 0xFFFFFF27
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_aaa_00_aaa_00000598
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_naka_aaa_000004dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
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
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT1_aaa_00000578
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_door
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte str_L_7_aaa_000005a4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_pro_01_aaa_000005a8
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE88
	.4byte 0x0000009A
	.4byte 0x00000041
	.4byte 0xFFFFFFC1
	.4byte 0x0000004B
	.4byte 0xFFFFFF09
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_6_aaa_00000594
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000017
	.4byte 0xFFFFFF64
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF65
	.4byte 0x0000001E
	.4byte 0xFFFFFEC0
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF83
	.4byte 0xFFFFFEDE
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFECA
	.4byte 0xF24BBA80
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_6_aaa_00000594
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFFFFFFCC
	.4byte 0xFFFFFEED
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_5_aaa_00000588
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_pro_02_aaa_000005b0
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_8_aaa_000005b8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_8_aaa_000005b8
	.4byte str_L_9_aaa_000005bc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_pro_03_aaa_000005c0
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_camid
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x00000011
	.4byte 0x00000320
	.4byte 0x00000010
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_10_aaa_000005c8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_prologue

# .data:0xE04 | 0xE64 | size: 0x310
.obj evt_prologue2, local
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_aaa_00_aaa_00000598
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_naka_aaa_000004dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFAB
	.4byte 0x0000001E
	.4byte 0xFFFFFECA
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_8_aaa_000005b8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ルイージ_aaa_00000474
	.4byte str_L_8_aaa_000005b8
	.4byte str_L_9_aaa_000005bc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFFFFFFCC
	.4byte 0x0000001E
	.4byte 0xFFFFFEED
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE88
	.4byte 0x0000009A
	.4byte 0x00000041
	.4byte 0xFFFFFFC1
	.4byte 0x0000004B
	.4byte 0xFFFFFF09
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_camid
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_pro_05_aaa_000005ec
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_I_1_aaa_000005f4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE7
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFD
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_map_aaa_000005f8
	.4byte 0x00000060
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_set_scale
	.4byte str_map_aaa_000005f8
	.4byte 0xF24A7CB3
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_map_aaa_000005f8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_S_1_aaa_000005fc
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_L_3_aaa_00000600
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte mapdraw
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_muj_20_aaa_00000608
	.4byte str_prologue_aaa_00000610
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_prologue2

# .data:0x1114 | 0x1174 | size: 0x520
.obj epilogue_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_END_AAA1_aaa_0000061c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF82
	.4byte 0x00000028
	.4byte 0xFFFFFF20
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFFFFFFD4
	.4byte 0x00000028
	.4byte 0xFFFFFF5D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_5_aaa_0000062c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ルイージ_aaa_00000474
	.4byte str_S_2_aaa_00000634
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_31_aaa_00000638
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0001005E
	.4byte evt_door_open_quick
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE98
	.4byte 0x0000009A
	.4byte 0x00000050
	.4byte 0xFFFFFFD2
	.4byte 0x00000051
	.4byte 0xFFFFFF18
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_fade_in
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ルイージ_aaa_00000474
	.4byte str_S_2_aaa_00000634
	.4byte str_T_2_aaa_00000640
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_32_aaa_00000644
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_aaa_0000064c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_11_aaa_00000668
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_33_aaa_00000670
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
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
	.4byte str_SFX_VOICE_MARIO_FIND_aaa_00000678
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_balloon_bikkuri
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_MAIL_RECEPTIO_aaa_00000690
	.4byte 0x0002005D
	.4byte evt_sub_mail_vibration
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION1_aaa_000006a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_34_aaa_000006bc
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__aaa_000006c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFFFFFF80
	.4byte 0x0000001E
	.4byte 0xFFFFFF3C
	.4byte 0x00000190
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_LANDING3_aaa_000006e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFECD
	.4byte 0x00000075
	.4byte 0x00000009
	.4byte 0xFFFFFFC6
	.4byte 0x0000003A
	.4byte 0xFFFFFF0C
	.4byte 0x000004B0
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFFFFFFBC
	.4byte 0x0000001E
	.4byte 0xFFFFFF6B
	.4byte 0x00000190
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFFFFFF95
	.4byte 0xFFFFFF5A
	.4byte 0x00000320
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_9_aaa_000006f4
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
	.4byte str_SFX_MAIL_RECEPTION2_aaa_000006fc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_aaa_00000710
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_35_aaa_00000718
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000384
	.4byte 0x00000009
	.4byte 0x00000384
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_02_aaa_00000720
	.4byte zero_aaa_00000728
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x1634 | 0x1694 | size: 0x110
.obj epilogue_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte str_c_peach_aaa_00000738
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte str_ピーチ姫（普通）_aaa_00000740
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x40000620
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x00001000
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_キノじい_aaa_00000754
	.4byte str_c_kino_ji_aaa_00000760
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_キノじい_aaa_00000754
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノじい_aaa_00000754
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キノじい_aaa_00000754
	.4byte 0x40000620
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_キノじい_aaa_00000754
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_キノじい_aaa_00000754
	.4byte 0x00001000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_npc_entry

# .data:0x1744 | 0x17A4 | size: 0x7D0
.obj epilogue_evt2, local
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_END_AAA1_aaa_0000061c
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF80
	.4byte 0x0000001E
	.4byte 0xFFFFFF3C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ルイージ_aaa_00000474
	.4byte 0xFFFFFF95
	.4byte 0x0000001E
	.4byte 0xFFFFFF5A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_aaa_00000710
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0001005E
	.4byte evt_door_open_quick
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFECD
	.4byte 0x00000075
	.4byte 0x00000009
	.4byte 0xFFFFFFC6
	.4byte 0x0000003A
	.4byte 0xFFFFFF0C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_47_aaa_0000076c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_MARIO_HOUSE2_aaa_00000774
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE89
	.4byte 0x0000009A
	.4byte 0x00000042
	.4byte 0xFFFFFFC2
	.4byte 0x00000051
	.4byte 0xFFFFFF08
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_aaa_0000078c
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_48_aaa_00000794
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_aaa_0000079c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_aaa_000007b4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_aaa_0000078c
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ie_door_aaa_00000480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_EPILOGUE_KIN_aaa_000007bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_aaa_00000728
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000024
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_49_aaa_000007dc
	.4byte 0x00000000
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0000003C
	.4byte 0x0000001E
	.4byte 0xFFFFFF92
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0000004E
	.4byte 0x0000001E
	.4byte 0xFFFFFFA7
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEA7
	.4byte 0x0000009A
	.4byte 0x00000060
	.4byte 0xFFFFFFE1
	.4byte 0x00000051
	.4byte 0xFFFFFF27
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_50_aaa_000007e4
	.4byte 0x00000000
	.4byte str_キノじい_aaa_00000754
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0001005C
	.4byte door_open_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte evt_door
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0000000A
	.4byte 0xFFFFFF33
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0000000A
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_51_aaa_000007ec
	.4byte 0x00000000
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_52_aaa_000007f4
	.4byte 0x00000000
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEFD
	.4byte 0x00000089
	.4byte 0x0000002C
	.4byte 0xFFFFFFF1
	.4byte 0x0000004C
	.4byte 0xFFFFFF38
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte str_P_S_5_aaa_000007fc
	.4byte str_P_T_5_aaa_00000804
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_53_aaa_0000080c
	.4byte 0x00000000
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte str_P_S_7_aaa_00000814
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE6A
	.4byte 0x000000B3
	.4byte 0x0000007E
	.4byte 0xFFFFFFD1
	.4byte 0x0000005A
	.4byte 0xFFFFFF18
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte str_P_S_7_aaa_00000814
	.4byte str_P_T_13_aaa_0000081c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_54_aaa_00000824
	.4byte 0x00000000
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_aaa_0000082c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_aaa_00000848
	.4byte 0x0001000A
	.4byte 0x00000226
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ルイージ_aaa_00000474
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_aaa_00000850
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノじい_aaa_00000754
	.4byte 0x00000014
	.4byte 0xFFFFFF6F
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノじい_aaa_00000754
	.4byte 0x0000004E
	.4byte 0xFFFFFFA7
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノじい_aaa_00000754
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x00000014
	.4byte 0xFFFFFF6F
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x0000004E
	.4byte 0xFFFFFFA7
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピーチ姫_aaa_0000072c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_ENDING4_aaa_00000858
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEFC
	.4byte 0x0000005A
	.4byte 0xFFFFFFC2
	.4byte 0xFFFFFFBC
	.4byte 0x0000002A
	.4byte 0xFFFFFF03
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_aaa_00000864
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_fade_set_spot_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000004
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000193
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_end_00_aaa_0000086c
	.4byte zero_aaa_00000728
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt2

# .data:0x1F14 | 0x1F74 | size: 0x30
.obj ki_data, local
	.4byte 0x00000006
	.4byte str_A_ki_1_aaa_00000874
	.4byte str_S_ki_1_aaa_0000087c
	.4byte str_S_ha_1_aaa_00000884
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ki_data

# .data:0x1F44 | 0x1FA4 | size: 0xB0
.obj kusa_data, local
	.4byte 0x00000000
	.4byte str_A_kusa_01_aaa_0000088c
	.4byte str_S_kusa_01_aaa_00000898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_02_aaa_000008a4
	.4byte str_S_kusa_02_aaa_000008b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_03_aaa_000008bc
	.4byte str_S_kusa_03_aaa_000008c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_04_aaa_000008d4
	.4byte str_S_kusa_04_aaa_000008e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_05_aaa_000008ec
	.4byte str_S_kusa_05_aaa_000008f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_06_aaa_00000904
	.4byte str_S_kusa_06_aaa_00000910
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_07_aaa_0000091c
	.4byte str_S_kusa_07_aaa_00000928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_08_aaa_00000934
	.4byte str_S_kusa_08_aaa_00000940
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_09_aaa_0000094c
	.4byte str_S_kusa_09_aaa_00000958
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_kusa_10_aaa_00000964
	.4byte str_S_kusa_10_aaa_00000970
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kusa_data

# .data:0x1FF4 | 0x2054 | size: 0x78
.obj bero_entry_data, local
	.4byte str_dokan_1_aaa_0000097c
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_aaa_0000097c
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

# .data:0x206C | 0x20CC | size: 0x144
.obj aaa_00_init_evt_1_data_20CC, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sai_ki1_aaa_0000051c
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sai_ki2_aaa_00000514
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_prologue_aaa_00000610
	.4byte 0x0001005C
	.4byte evt_prologue
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_prologue2_aaa_00000984
	.4byte 0x0001005C
	.4byte evt_prologue2
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_epilogue2_aaa_00000990
	.4byte 0x0001005E
	.4byte epilogue_npc_entry
	.4byte 0x0001005C
	.4byte epilogue_evt2
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ki_data
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kusa_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aaa_00_init_evt_1_data_20CC

# 0x00000000..0x00000004 | size: 0x4
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x4
.obj wp, local
	.skip 0x4
.endobj wp
