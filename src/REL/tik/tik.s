.include "macros.inc"
.file "tik.o"

# 0x00000000..0x000003B8 | size: 0x3B8
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x148
.fn evt_tik_villager_urouro_check_func, local
/* 00000000 000000C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 0000000C 000000D0  39 61 00 70 */	addi r11, r1, 0x70
/* 00000010 000000D4  48 00 01 39 */	bl _savefpr_28
/* 00000014 000000D8  BF 81 00 40 */	stmw r28, 0x40(r1)
/* 00000018 000000DC  7C 7D 1B 78 */	mr r29, r3
/* 0000001C 000000E0  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000020 000000E4  83 FC 00 00 */	lwz r31, 0x0(r28)
/* 00000024 000000E8  83 DC 00 04 */	lwz r30, 0x4(r28)
/* 00000028 000000EC  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 0000002C 000000F0  48 00 01 1D */	bl evtGetFloat
/* 00000030 000000F4  FF A0 08 90 */	fmr f29, f1
/* 00000034 000000F8  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00000038 000000FC  7F A3 EB 78 */	mr r3, r29
/* 0000003C 00000100  48 00 01 0D */	bl evtGetFloat
/* 00000040 00000104  FF 80 08 90 */	fmr f28, f1
/* 00000044 00000108  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 00000048 0000010C  7F A3 EB 78 */	mr r3, r29
/* 0000004C 00000110  48 00 00 FD */	bl evtGetFloat
/* 00000050 00000114  FF C0 08 90 */	fmr f30, f1
/* 00000054 00000118  7F A3 EB 78 */	mr r3, r29
/* 00000058 0000011C  7F E4 FB 78 */	mr r4, r31
/* 0000005C 00000120  48 00 00 ED */	bl evtGetFloat
/* 00000060 00000124  FF E0 08 90 */	fmr f31, f1
/* 00000064 00000128  7F A3 EB 78 */	mr r3, r29
/* 00000068 0000012C  7F C4 F3 78 */	mr r4, r30
/* 0000006C 00000130  48 00 00 DD */	bl evtGetFloat
/* 00000070 00000134  3C 60 00 00 */	lis r3, vec3_tik_00007e68@ha
/* 00000074 00000138  3C 80 00 00 */	lis r4, vec3_tik_00007e74@ha
/* 00000078 0000013C  39 23 00 00 */	addi r9, r3, vec3_tik_00007e68@l
/* 0000007C 00000140  38 61 00 20 */	addi r3, r1, 0x20
/* 00000080 00000144  38 C4 00 00 */	addi r6, r4, vec3_tik_00007e74@l
/* 00000084 00000148  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00000088 0000014C  80 E9 00 08 */	lwz r7, 0x8(r9)
/* 0000008C 00000150  38 81 00 2C */	addi r4, r1, 0x2c
/* 00000090 00000154  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00000094 00000158  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00000098 0000015C  91 01 00 14 */	stw r8, 0x14(r1)
/* 0000009C 00000160  81 29 00 04 */	lwz r9, 0x4(r9)
/* 000000A0 00000164  80 C6 00 04 */	lwz r6, 0x4(r6)
/* 000000A4 00000168  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 000000A8 0000016C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 000000AC 00000170  90 01 00 10 */	stw r0, 0x10(r1)
/* 000000B0 00000174  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 000000B4 00000178  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 000000B8 0000017C  81 01 00 14 */	lwz r8, 0x14(r1)
/* 000000BC 00000180  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 000000C0 00000184  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 000000C4 00000188  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 000000C8 0000018C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000000CC 00000190  80 01 00 10 */	lwz r0, 0x10(r1)
/* 000000D0 00000194  91 21 00 18 */	stw r9, 0x18(r1)
/* 000000D4 00000198  91 01 00 2C */	stw r8, 0x2c(r1)
/* 000000D8 0000019C  91 21 00 30 */	stw r9, 0x30(r1)
/* 000000DC 000001A0  90 E1 00 34 */	stw r7, 0x34(r1)
/* 000000E0 000001A4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 000000E4 000001A8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 000000E8 000001AC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 000000EC 000001B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 000000F0 000001B4  48 00 00 59 */	bl PSVECDistance
/* 000000F4 000001B8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 000000F8 000001BC  4C 40 13 82 */	cror eq, lt, eq
/* 000000FC 000001C0  40 82 00 0C */	bne .L_00000108
/* 00000100 000001C4  38 60 00 02 */	li r3, 0x2
/* 00000104 000001C8  48 00 00 28 */	b .L_0000012C
.L_00000108:
/* 00000108 000001CC  FC 20 E8 90 */	fmr f1, f29
/* 0000010C 000001D0  7F A3 EB 78 */	mr r3, r29
/* 00000110 000001D4  7F E4 FB 78 */	mr r4, r31
/* 00000114 000001D8  48 00 00 35 */	bl evtSetFloat
/* 00000118 000001DC  FC 20 E0 90 */	fmr f1, f28
/* 0000011C 000001E0  7F A3 EB 78 */	mr r3, r29
/* 00000120 000001E4  7F C4 F3 78 */	mr r4, r30
/* 00000124 000001E8  48 00 00 25 */	bl evtSetFloat
/* 00000128 000001EC  38 60 00 02 */	li r3, 0x2
.L_0000012C:
/* 0000012C 000001F0  39 61 00 70 */	addi r11, r1, 0x70
/* 00000130 000001F4  48 00 00 19 */	bl _restfpr_28
/* 00000134 000001F8  BB 81 00 40 */	lmw r28, 0x40(r1)
/* 00000138 000001FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000013C 00000200  7C 08 03 A6 */	mtlr r0
/* 00000140 00000204  38 21 00 70 */	addi r1, r1, 0x70
/* 00000144 00000208  4E 80 00 20 */	blr
.endfn evt_tik_villager_urouro_check_func

# .text:0x148 | 0x148 | size: 0x4
.fn _unresolved, global
/* 00000148 0000020C  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x14C | 0x14C | size: 0x4C
.fn _epilog, global
/* 0000014C 00000210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000150 00000214  7C 08 02 A6 */	mflr r0
/* 00000154 00000218  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000158 0000021C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000015C 00000220  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000160 00000224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000164 00000228  7C 1F 03 78 */	mr r31, r0
/* 00000168 0000022C  48 00 00 10 */	b .L_00000178
.L_0000016C:
/* 0000016C 00000230  7D 89 03 A6 */	mtctr r12
/* 00000170 00000234  4E 80 04 21 */	bctrl
/* 00000174 00000238  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000178:
/* 00000178 0000023C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 0000017C 00000240  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000180 00000244  40 82 FF EC */	bne .L_0000016C
/* 00000184 00000248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000188 0000024C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000018C 00000250  7C 08 03 A6 */	mtlr r0
/* 00000190 00000254  38 21 00 10 */	addi r1, r1, 0x10
/* 00000194 00000258  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x198 | 0x198 | size: 0x220
.fn _prolog, global
/* 00000198 0000025C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000019C 00000260  7C 08 02 A6 */	mflr r0
/* 000001A0 00000264  3C 60 00 00 */	lis r3, _ctors@ha
/* 000001A4 00000268  90 01 00 14 */	stw r0, 0x14(r1)
/* 000001A8 0000026C  38 03 00 00 */	addi r0, r3, _ctors@l
/* 000001AC 00000270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000001B0 00000274  7C 1F 03 78 */	mr r31, r0
/* 000001B4 00000278  48 00 00 10 */	b .L_000001C4
.L_000001B8:
/* 000001B8 0000027C  7D 89 03 A6 */	mtctr r12
/* 000001BC 00000280  4E 80 04 21 */	bctrl
/* 000001C0 00000284  3B FF 00 04 */	addi r31, r31, 0x4
.L_000001C4:
/* 000001C4 00000288  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000001C8 0000028C  28 0C 00 00 */	cmplwi r12, 0x0
/* 000001CC 00000290  40 82 FF EC */	bne .L_000001B8
/* 000001D0 00000294  3C 60 00 00 */	lis r3, str_tik_00_tik_00007e84@ha
/* 000001D4 00000298  3C 80 00 00 */	lis r4, tik_00_init_evt_24_data_58C8@ha
/* 000001D8 0000029C  38 63 00 00 */	addi r3, r3, str_tik_00_tik_00007e84@l
/* 000001DC 000002A0  38 84 00 00 */	addi r4, r4, tik_00_init_evt_24_data_58C8@l
/* 000001E0 000002A4  4B FF FF 69 */	bl relSetEvtAddr
/* 000001E4 000002A8  3C 60 00 00 */	lis r3, str_tik_01_tik_00007e8c@ha
/* 000001E8 000002AC  3C 80 00 00 */	lis r4, tik_01_init_evt_24_data_7068@ha
/* 000001EC 000002B0  38 63 00 00 */	addi r3, r3, str_tik_01_tik_00007e8c@l
/* 000001F0 000002B4  38 84 00 00 */	addi r4, r4, tik_01_init_evt_24_data_7068@l
/* 000001F4 000002B8  4B FF FF 55 */	bl relSetEvtAddr
/* 000001F8 000002BC  3C 60 00 00 */	lis r3, str_tik_02_tik_00007e94@ha
/* 000001FC 000002C0  3C 80 00 00 */	lis r4, tik_02_init_evt_24_data_8B00@ha
/* 00000200 000002C4  38 63 00 00 */	addi r3, r3, str_tik_02_tik_00007e94@l
/* 00000204 000002C8  38 84 00 00 */	addi r4, r4, tik_02_init_evt_24_data_8B00@l
/* 00000208 000002CC  4B FF FF 41 */	bl relSetEvtAddr
/* 0000020C 000002D0  3C 60 00 00 */	lis r3, str_tik_03_tik_00007e9c@ha
/* 00000210 000002D4  3C 80 00 00 */	lis r4, tik_03_init_evt_24_data_A258@ha
/* 00000214 000002D8  38 63 00 00 */	addi r3, r3, str_tik_03_tik_00007e9c@l
/* 00000218 000002DC  38 84 00 00 */	addi r4, r4, tik_03_init_evt_24_data_A258@l
/* 0000021C 000002E0  4B FF FF 2D */	bl relSetEvtAddr
/* 00000220 000002E4  3C 60 00 00 */	lis r3, str_tik_04_tik_00007ea4@ha
/* 00000224 000002E8  3C 80 00 00 */	lis r4, tik_04_init_evt_24_data_AE58@ha
/* 00000228 000002EC  38 63 00 00 */	addi r3, r3, str_tik_04_tik_00007ea4@l
/* 0000022C 000002F0  38 84 00 00 */	addi r4, r4, tik_04_init_evt_24_data_AE58@l
/* 00000230 000002F4  4B FF FF 19 */	bl relSetEvtAddr
/* 00000234 000002F8  3C 60 00 00 */	lis r3, str_tik_05_tik_00007eac@ha
/* 00000238 000002FC  3C 80 00 00 */	lis r4, tik_05_init_evt_24_data_112C0@ha
/* 0000023C 00000300  38 63 00 00 */	addi r3, r3, str_tik_05_tik_00007eac@l
/* 00000240 00000304  38 84 00 00 */	addi r4, r4, tik_05_init_evt_24_data_112C0@l
/* 00000244 00000308  4B FF FF 05 */	bl relSetEvtAddr
/* 00000248 0000030C  3C 60 00 00 */	lis r3, str_tik_06_tik_00007eb4@ha
/* 0000024C 00000310  3C 80 00 00 */	lis r4, tik_06_init_evt_24_data_120A0@ha
/* 00000250 00000314  38 63 00 00 */	addi r3, r3, str_tik_06_tik_00007eb4@l
/* 00000254 00000318  38 84 00 00 */	addi r4, r4, tik_06_init_evt_24_data_120A0@l
/* 00000258 0000031C  4B FF FE F1 */	bl relSetEvtAddr
/* 0000025C 00000320  3C 60 00 00 */	lis r3, str_tik_07_tik_00007ebc@ha
/* 00000260 00000324  3C 80 00 00 */	lis r4, tik_07_init_evt_24_data_12948@ha
/* 00000264 00000328  38 63 00 00 */	addi r3, r3, str_tik_07_tik_00007ebc@l
/* 00000268 0000032C  38 84 00 00 */	addi r4, r4, tik_07_init_evt_24_data_12948@l
/* 0000026C 00000330  4B FF FE DD */	bl relSetEvtAddr
/* 00000270 00000334  3C 60 00 00 */	lis r3, str_tik_08_tik_00007ec4@ha
/* 00000274 00000338  3C 80 00 00 */	lis r4, tik_08_init_evt_24_data_130FC@ha
/* 00000278 0000033C  38 63 00 00 */	addi r3, r3, str_tik_08_tik_00007ec4@l
/* 0000027C 00000340  38 84 00 00 */	addi r4, r4, tik_08_init_evt_24_data_130FC@l
/* 00000280 00000344  4B FF FE C9 */	bl relSetEvtAddr
/* 00000284 00000348  3C 60 00 00 */	lis r3, str_tik_09_tik_00007ecc@ha
/* 00000288 0000034C  3C 80 00 00 */	lis r4, tik_09_init_evt_24_data_133E0@ha
/* 0000028C 00000350  38 63 00 00 */	addi r3, r3, str_tik_09_tik_00007ecc@l
/* 00000290 00000354  38 84 00 00 */	addi r4, r4, tik_09_init_evt_24_data_133E0@l
/* 00000294 00000358  4B FF FE B5 */	bl relSetEvtAddr
/* 00000298 0000035C  3C 60 00 00 */	lis r3, str_tik_10_tik_00007ed4@ha
/* 0000029C 00000360  3C 80 00 00 */	lis r4, tik_10_init_evt_24_data_13638@ha
/* 000002A0 00000364  38 63 00 00 */	addi r3, r3, str_tik_10_tik_00007ed4@l
/* 000002A4 00000368  38 84 00 00 */	addi r4, r4, tik_10_init_evt_24_data_13638@l
/* 000002A8 0000036C  4B FF FE A1 */	bl relSetEvtAddr
/* 000002AC 00000370  3C 60 00 00 */	lis r3, str_tik_11_tik_00007edc@ha
/* 000002B0 00000374  3C 80 00 00 */	lis r4, tik_11_init_evt_24_data_15554@ha
/* 000002B4 00000378  38 63 00 00 */	addi r3, r3, str_tik_11_tik_00007edc@l
/* 000002B8 0000037C  38 84 00 00 */	addi r4, r4, tik_11_init_evt_24_data_15554@l
/* 000002BC 00000380  4B FF FE 8D */	bl relSetEvtAddr
/* 000002C0 00000384  3C 60 00 00 */	lis r3, str_tik_12_tik_00007ee4@ha
/* 000002C4 00000388  3C 80 00 00 */	lis r4, tik_12_init_evt_24_data_16774@ha
/* 000002C8 0000038C  38 63 00 00 */	addi r3, r3, str_tik_12_tik_00007ee4@l
/* 000002CC 00000390  38 84 00 00 */	addi r4, r4, tik_12_init_evt_24_data_16774@l
/* 000002D0 00000394  4B FF FE 79 */	bl relSetEvtAddr
/* 000002D4 00000398  3C 60 00 00 */	lis r3, str_tik_13_tik_00007eec@ha
/* 000002D8 0000039C  3C 80 00 00 */	lis r4, tik_13_init_evt_24_data_137B0@ha
/* 000002DC 000003A0  38 63 00 00 */	addi r3, r3, str_tik_13_tik_00007eec@l
/* 000002E0 000003A4  38 84 00 00 */	addi r4, r4, tik_13_init_evt_24_data_137B0@l
/* 000002E4 000003A8  4B FF FE 65 */	bl relSetEvtAddr
/* 000002E8 000003AC  3C 60 00 00 */	lis r3, str_tik_14_tik_00007ef4@ha
/* 000002EC 000003B0  3C 80 00 00 */	lis r4, tik_14_init_evt_24_data_1B474@ha
/* 000002F0 000003B4  38 63 00 00 */	addi r3, r3, str_tik_14_tik_00007ef4@l
/* 000002F4 000003B8  38 84 00 00 */	addi r4, r4, tik_14_init_evt_24_data_1B474@l
/* 000002F8 000003BC  4B FF FE 51 */	bl relSetEvtAddr
/* 000002FC 000003C0  3C 60 00 00 */	lis r3, str_tik_15_tik_00007efc@ha
/* 00000300 000003C4  3C 80 00 00 */	lis r4, tik_15_init_evt_24_data_1DF6C@ha
/* 00000304 000003C8  38 63 00 00 */	addi r3, r3, str_tik_15_tik_00007efc@l
/* 00000308 000003CC  38 84 00 00 */	addi r4, r4, tik_15_init_evt_24_data_1DF6C@l
/* 0000030C 000003D0  4B FF FE 3D */	bl relSetEvtAddr
/* 00000310 000003D4  3C 60 00 00 */	lis r3, str_tik_16_tik_00007f04@ha
/* 00000314 000003D8  3C 80 00 00 */	lis r4, tik_16_init_evt_24_data_1E644@ha
/* 00000318 000003DC  38 63 00 00 */	addi r3, r3, str_tik_16_tik_00007f04@l
/* 0000031C 000003E0  38 84 00 00 */	addi r4, r4, tik_16_init_evt_24_data_1E644@l
/* 00000320 000003E4  4B FF FE 29 */	bl relSetEvtAddr
/* 00000324 000003E8  3C 60 00 00 */	lis r3, str_tik_17_tik_00007f0c@ha
/* 00000328 000003EC  3C 80 00 00 */	lis r4, tik_17_init_evt_24_data_1EE04@ha
/* 0000032C 000003F0  38 63 00 00 */	addi r3, r3, str_tik_17_tik_00007f0c@l
/* 00000330 000003F4  38 84 00 00 */	addi r4, r4, tik_17_init_evt_24_data_1EE04@l
/* 00000334 000003F8  4B FF FE 15 */	bl relSetEvtAddr
/* 00000338 000003FC  3C 60 00 00 */	lis r3, str_tik_18_tik_00007f14@ha
/* 0000033C 00000400  3C 80 00 00 */	lis r4, tik_18_init_evt_24_data_1F238@ha
/* 00000340 00000404  38 63 00 00 */	addi r3, r3, str_tik_18_tik_00007f14@l
/* 00000344 00000408  38 84 00 00 */	addi r4, r4, tik_18_init_evt_24_data_1F238@l
/* 00000348 0000040C  4B FF FE 01 */	bl relSetEvtAddr
/* 0000034C 00000410  3C 60 00 00 */	lis r3, str_tik_19_tik_00007f1c@ha
/* 00000350 00000414  3C 80 00 00 */	lis r4, tik_19_init_evt_24_data_1FFD8@ha
/* 00000354 00000418  38 63 00 00 */	addi r3, r3, str_tik_19_tik_00007f1c@l
/* 00000358 0000041C  38 84 00 00 */	addi r4, r4, tik_19_init_evt_24_data_1FFD8@l
/* 0000035C 00000420  4B FF FD ED */	bl relSetEvtAddr
/* 00000360 00000424  3C 60 00 00 */	lis r3, str_tik_20_tik_00007f24@ha
/* 00000364 00000428  3C 80 00 00 */	lis r4, tik_20_init_evt_24_data_201E0@ha
/* 00000368 0000042C  38 63 00 00 */	addi r3, r3, str_tik_20_tik_00007f24@l
/* 0000036C 00000430  38 84 00 00 */	addi r4, r4, tik_20_init_evt_24_data_201E0@l
/* 00000370 00000434  4B FF FD D9 */	bl relSetEvtAddr
/* 00000374 00000438  3C 60 00 00 */	lis r3, str_tik_21_tik_00007f2c@ha
/* 00000378 0000043C  3C 80 00 00 */	lis r4, tik_21_init_evt_24_data_1DC1C@ha
/* 0000037C 00000440  38 63 00 00 */	addi r3, r3, str_tik_21_tik_00007f2c@l
/* 00000380 00000444  38 84 00 00 */	addi r4, r4, tik_21_init_evt_24_data_1DC1C@l
/* 00000384 00000448  4B FF FD C5 */	bl relSetEvtAddr
/* 00000388 0000044C  3C 60 00 00 */	lis r3, str_tik_tik_00007f34@ha
/* 0000038C 00000450  3C 80 00 00 */	lis r4, btlsetup_tik_tbl_24_data_1A910@ha
/* 00000390 00000454  3C A0 00 00 */	lis r5, btl_tik_setup_no_tbl_24_data_1B108@ha
/* 00000394 00000458  38 63 00 00 */	addi r3, r3, str_tik_tik_00007f34@l
/* 00000398 0000045C  38 84 00 00 */	addi r4, r4, btlsetup_tik_tbl_24_data_1A910@l
/* 0000039C 00000460  38 A5 00 00 */	addi r5, r5, btl_tik_setup_no_tbl_24_data_1B108@l
/* 000003A0 00000464  4B FF FD A9 */	bl relSetBtlAddr
/* 000003A4 00000468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000003A8 0000046C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000003AC 00000470  7C 08 03 A6 */	mtlr r0
/* 000003B0 00000474  38 21 00 10 */	addi r1, r1, 0x10
/* 000003B4 00000478  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000000..0x000000D0 | size: 0xD0
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0xC
.obj vec3_tik_00007e68, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tik_00007e68

# .rodata:0xC | 0xC | size: 0xC
.obj vec3_tik_00007e74, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tik_00007e74

# .rodata:0x18 | 0x18 | size: 0x3
.obj str_me_tik_00007e80, local
	.string "me"
.endobj str_me_tik_00007e80

# .rodata:0x1B | 0x1B | size: 0x1
.obj gap_03_0000001B_rodata, global
.hidden gap_03_0000001B_rodata
	.byte 0x00
.endobj gap_03_0000001B_rodata

# .rodata:0x1C | 0x1C | size: 0x7
.obj str_tik_00_tik_00007e84, local
	.string "tik_00"
.endobj str_tik_00_tik_00007e84

# .rodata:0x23 | 0x23 | size: 0x1
.obj gap_03_00000023_rodata, global
.hidden gap_03_00000023_rodata
	.byte 0x00
.endobj gap_03_00000023_rodata

# .rodata:0x24 | 0x24 | size: 0x7
.obj str_tik_01_tik_00007e8c, local
	.string "tik_01"
.endobj str_tik_01_tik_00007e8c

# .rodata:0x2B | 0x2B | size: 0x1
.obj gap_03_0000002B_rodata, global
.hidden gap_03_0000002B_rodata
	.byte 0x00
.endobj gap_03_0000002B_rodata

# .rodata:0x2C | 0x2C | size: 0x7
.obj str_tik_02_tik_00007e94, local
	.string "tik_02"
.endobj str_tik_02_tik_00007e94

# .rodata:0x33 | 0x33 | size: 0x1
.obj gap_03_00000033_rodata, global
.hidden gap_03_00000033_rodata
	.byte 0x00
.endobj gap_03_00000033_rodata

# .rodata:0x34 | 0x34 | size: 0x7
.obj str_tik_03_tik_00007e9c, local
	.string "tik_03"
.endobj str_tik_03_tik_00007e9c

# .rodata:0x3B | 0x3B | size: 0x1
.obj gap_03_0000003B_rodata, global
.hidden gap_03_0000003B_rodata
	.byte 0x00
.endobj gap_03_0000003B_rodata

# .rodata:0x3C | 0x3C | size: 0x7
.obj str_tik_04_tik_00007ea4, local
	.string "tik_04"
.endobj str_tik_04_tik_00007ea4

# .rodata:0x43 | 0x43 | size: 0x1
.obj gap_03_00000043_rodata, global
.hidden gap_03_00000043_rodata
	.byte 0x00
.endobj gap_03_00000043_rodata

# .rodata:0x44 | 0x44 | size: 0x7
.obj str_tik_05_tik_00007eac, local
	.string "tik_05"
.endobj str_tik_05_tik_00007eac

# .rodata:0x4B | 0x4B | size: 0x1
.obj gap_03_0000004B_rodata, global
.hidden gap_03_0000004B_rodata
	.byte 0x00
.endobj gap_03_0000004B_rodata

# .rodata:0x4C | 0x4C | size: 0x7
.obj str_tik_06_tik_00007eb4, local
	.string "tik_06"
.endobj str_tik_06_tik_00007eb4

# .rodata:0x53 | 0x53 | size: 0x1
.obj gap_03_00000053_rodata, global
.hidden gap_03_00000053_rodata
	.byte 0x00
.endobj gap_03_00000053_rodata

# .rodata:0x54 | 0x54 | size: 0x7
.obj str_tik_07_tik_00007ebc, local
	.string "tik_07"
.endobj str_tik_07_tik_00007ebc

# .rodata:0x5B | 0x5B | size: 0x1
.obj gap_03_0000005B_rodata, global
.hidden gap_03_0000005B_rodata
	.byte 0x00
.endobj gap_03_0000005B_rodata

# .rodata:0x5C | 0x5C | size: 0x7
.obj str_tik_08_tik_00007ec4, local
	.string "tik_08"
.endobj str_tik_08_tik_00007ec4

# .rodata:0x63 | 0x63 | size: 0x1
.obj gap_03_00000063_rodata, global
.hidden gap_03_00000063_rodata
	.byte 0x00
.endobj gap_03_00000063_rodata

# .rodata:0x64 | 0x64 | size: 0x7
.obj str_tik_09_tik_00007ecc, local
	.string "tik_09"
.endobj str_tik_09_tik_00007ecc

# .rodata:0x6B | 0x6B | size: 0x1
.obj gap_03_0000006B_rodata, global
.hidden gap_03_0000006B_rodata
	.byte 0x00
.endobj gap_03_0000006B_rodata

# .rodata:0x6C | 0x6C | size: 0x7
.obj str_tik_10_tik_00007ed4, local
	.string "tik_10"
.endobj str_tik_10_tik_00007ed4

# .rodata:0x73 | 0x73 | size: 0x1
.obj gap_03_00000073_rodata, global
.hidden gap_03_00000073_rodata
	.byte 0x00
.endobj gap_03_00000073_rodata

# .rodata:0x74 | 0x74 | size: 0x7
.obj str_tik_11_tik_00007edc, local
	.string "tik_11"
.endobj str_tik_11_tik_00007edc

# .rodata:0x7B | 0x7B | size: 0x1
.obj gap_03_0000007B_rodata, global
.hidden gap_03_0000007B_rodata
	.byte 0x00
.endobj gap_03_0000007B_rodata

# .rodata:0x7C | 0x7C | size: 0x7
.obj str_tik_12_tik_00007ee4, local
	.string "tik_12"
.endobj str_tik_12_tik_00007ee4

# .rodata:0x83 | 0x83 | size: 0x1
.obj gap_03_00000083_rodata, global
.hidden gap_03_00000083_rodata
	.byte 0x00
.endobj gap_03_00000083_rodata

# .rodata:0x84 | 0x84 | size: 0x7
.obj str_tik_13_tik_00007eec, local
	.string "tik_13"
.endobj str_tik_13_tik_00007eec

# .rodata:0x8B | 0x8B | size: 0x1
.obj gap_03_0000008B_rodata, global
.hidden gap_03_0000008B_rodata
	.byte 0x00
.endobj gap_03_0000008B_rodata

# .rodata:0x8C | 0x8C | size: 0x7
.obj str_tik_14_tik_00007ef4, local
	.string "tik_14"
.endobj str_tik_14_tik_00007ef4

# .rodata:0x93 | 0x93 | size: 0x1
.obj gap_03_00000093_rodata, global
.hidden gap_03_00000093_rodata
	.byte 0x00
.endobj gap_03_00000093_rodata

# .rodata:0x94 | 0x94 | size: 0x7
.obj str_tik_15_tik_00007efc, local
	.string "tik_15"
.endobj str_tik_15_tik_00007efc

# .rodata:0x9B | 0x9B | size: 0x1
.obj gap_03_0000009B_rodata, global
.hidden gap_03_0000009B_rodata
	.byte 0x00
.endobj gap_03_0000009B_rodata

# .rodata:0x9C | 0x9C | size: 0x7
.obj str_tik_16_tik_00007f04, local
	.string "tik_16"
.endobj str_tik_16_tik_00007f04

# .rodata:0xA3 | 0xA3 | size: 0x1
.obj gap_03_000000A3_rodata, global
.hidden gap_03_000000A3_rodata
	.byte 0x00
.endobj gap_03_000000A3_rodata

# .rodata:0xA4 | 0xA4 | size: 0x7
.obj str_tik_17_tik_00007f0c, local
	.string "tik_17"
.endobj str_tik_17_tik_00007f0c

# .rodata:0xAB | 0xAB | size: 0x1
.obj gap_03_000000AB_rodata, global
.hidden gap_03_000000AB_rodata
	.byte 0x00
.endobj gap_03_000000AB_rodata

# .rodata:0xAC | 0xAC | size: 0x7
.obj str_tik_18_tik_00007f14, local
	.string "tik_18"
.endobj str_tik_18_tik_00007f14

# .rodata:0xB3 | 0xB3 | size: 0x1
.obj gap_03_000000B3_rodata, global
.hidden gap_03_000000B3_rodata
	.byte 0x00
.endobj gap_03_000000B3_rodata

# .rodata:0xB4 | 0xB4 | size: 0x7
.obj str_tik_19_tik_00007f1c, local
	.string "tik_19"
.endobj str_tik_19_tik_00007f1c

# .rodata:0xBB | 0xBB | size: 0x1
.obj gap_03_000000BB_rodata, global
.hidden gap_03_000000BB_rodata
	.byte 0x00
.endobj gap_03_000000BB_rodata

# .rodata:0xBC | 0xBC | size: 0x7
.obj str_tik_20_tik_00007f24, local
	.string "tik_20"
.endobj str_tik_20_tik_00007f24

# .rodata:0xC3 | 0xC3 | size: 0x1
.obj gap_03_000000C3_rodata, global
.hidden gap_03_000000C3_rodata
	.byte 0x00
.endobj gap_03_000000C3_rodata

# .rodata:0xC4 | 0xC4 | size: 0x7
.obj str_tik_21_tik_00007f2c, local
	.string "tik_21"
.endobj str_tik_21_tik_00007f2c

# .rodata:0xCB | 0xCB | size: 0x1
.obj gap_03_000000CB_rodata, global
.hidden gap_03_000000CB_rodata
	.byte 0x00
.endobj gap_03_000000CB_rodata

# .rodata:0xCC | 0xCC | size: 0x4
.obj str_tik_tik_00007f34, local
	.string "tik"
.endobj str_tik_tik_00007f34

# 0x00000000..0x000001F8 | size: 0x1F8
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

# .data:0x60 | 0x60 | size: 0x194
.obj tik_villager_urouro_24_data_60, global
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tik_00007e80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tik_00007e80
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003E8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_tik_00007e80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_me_tik_00007e80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tik_00007e80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_get_loiter_dir
	.4byte 0xFE363C83
	.4byte 0xF24C5A80
	.4byte 0xF24E3A80
	.4byte 0x0005005B
	.4byte evt_npc_add_dirdist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24B4280
	.4byte 0x0006005B
	.4byte evt_tik_villager_urouro_check_func
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0xFE363C88
	.4byte 0xF24B9280
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_tik_00007e80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_sub_get_dir
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tik_00007e80
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_tik_00007e80
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24AF280
	.4byte 0x00000004
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000001
.endobj tik_villager_urouro_24_data_60

# .data:0x1F4 | 0x1F4 | size: 0x4
.obj gap_04_000001F4_data, global
.hidden gap_04_000001F4_data
	.4byte 0x00000000
.endobj gap_04_000001F4_data
