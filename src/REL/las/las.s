.include "macros.inc"
.file "las.o"

# 0x00000000..0x00000460 | size: 0x460
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x50
.fn mobj_set_ry, local
/* 00000000 000000CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000D0  7C 08 02 A6 */	mflr r0
/* 00000008 000000D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000000C 000000D8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000010 000000DC  7C 7E 1B 78 */	mr r30, r3
/* 00000014 000000E0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000018 000000E4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000001C 000000E8  48 00 01 21 */	bl evtGetValue
/* 00000020 000000EC  48 00 01 1D */	bl mobjNameToPtr
/* 00000024 000000F0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000028 000000F4  7C 7F 1B 78 */	mr r31, r3
/* 0000002C 000000F8  7F C3 F3 78 */	mr r3, r30
/* 00000030 000000FC  48 00 01 0D */	bl evtGetFloat
/* 00000034 00000100  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 00000038 00000104  38 60 00 02 */	li r3, 0x2
/* 0000003C 00000108  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000040 0000010C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000044 00000110  7C 08 03 A6 */	mtlr r0
/* 00000048 00000114  38 21 00 10 */	addi r1, r1, 0x10
/* 0000004C 00000118  4E 80 00 20 */	blr
.endfn mobj_set_ry

# .text:0x50 | 0x50 | size: 0x3C
.fn mobj_color_off, local
/* 00000050 0000011C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000054 00000120  7C 08 02 A6 */	mflr r0
/* 00000058 00000124  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000005C 00000128  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000060 0000012C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000064 00000130  48 00 00 D9 */	bl evtGetValue
/* 00000068 00000134  48 00 00 D5 */	bl mobjNameToPtr
/* 0000006C 00000138  80 63 00 70 */	lwz r3, 0x70(r3)
/* 00000070 0000013C  38 80 00 40 */	li r4, 0x40
/* 00000074 00000140  48 00 00 C9 */	bl animPoseSetMaterialFlagOff
/* 00000078 00000144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000007C 00000148  38 60 00 02 */	li r3, 0x2
/* 00000080 0000014C  7C 08 03 A6 */	mtlr r0
/* 00000084 00000150  38 21 00 10 */	addi r1, r1, 0x10
/* 00000088 00000154  4E 80 00 20 */	blr
.endfn mobj_color_off

# .text:0x8C | 0x8C | size: 0xB0
.fn mobj_set_color, local
/* 0000008C 00000158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000090 0000015C  7C 08 02 A6 */	mflr r0
/* 00000094 00000160  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000098 00000164  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000009C 00000168  7C 7E 1B 78 */	mr r30, r3
/* 000000A0 0000016C  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 000000A4 00000170  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 000000A8 00000174  48 00 00 95 */	bl evtGetValue
/* 000000AC 00000178  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 000000B0 0000017C  7C 7F 1B 78 */	mr r31, r3
/* 000000B4 00000180  7F C3 F3 78 */	mr r3, r30
/* 000000B8 00000184  48 00 00 85 */	bl evtGetValue
/* 000000BC 00000188  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 000000C0 0000018C  7C 7C 1B 78 */	mr r28, r3
/* 000000C4 00000190  7F C3 F3 78 */	mr r3, r30
/* 000000C8 00000194  48 00 00 75 */	bl evtGetValue
/* 000000CC 00000198  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 000000D0 0000019C  7C 7D 1B 78 */	mr r29, r3
/* 000000D4 000001A0  7F C3 F3 78 */	mr r3, r30
/* 000000D8 000001A4  48 00 00 65 */	bl evtGetValue
/* 000000DC 000001A8  7C 7E 1B 78 */	mr r30, r3
/* 000000E0 000001AC  7F E3 FB 78 */	mr r3, r31
/* 000000E4 000001B0  48 00 00 59 */	bl mobjNameToPtr
/* 000000E8 000001B4  3C 80 00 00 */	lis r4, dat_las_00011a68@ha
/* 000000EC 000001B8  7C 7F 1B 78 */	mr r31, r3
/* 000000F0 000001BC  80 04 00 00 */	lwz r0, dat_las_00011a68@l(r4)
/* 000000F4 000001C0  38 81 00 0C */	addi r4, r1, 0xc
/* 000000F8 000001C4  90 01 00 08 */	stw r0, 0x8(r1)
/* 000000FC 000001C8  9B 81 00 08 */	stb r28, 0x8(r1)
/* 00000100 000001CC  9B A1 00 09 */	stb r29, 0x9(r1)
/* 00000104 000001D0  9B C1 00 0A */	stb r30, 0xa(r1)
/* 00000108 000001D4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 0000010C 000001D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000110 000001DC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 00000114 000001E0  48 00 00 29 */	bl animPoseSetMaterialEvtColor
/* 00000118 000001E4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 0000011C 000001E8  38 80 00 40 */	li r4, 0x40
/* 00000120 000001EC  48 00 00 1D */	bl animPoseSetMaterialFlagOn
/* 00000124 000001F0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00000128 000001F4  38 60 00 02 */	li r3, 0x2
/* 0000012C 000001F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000130 000001FC  7C 08 03 A6 */	mtlr r0
/* 00000134 00000200  38 21 00 20 */	addi r1, r1, 0x20
/* 00000138 00000204  4E 80 00 20 */	blr
.endfn mobj_set_color

# .text:0x13C | 0x13C | size: 0x4
.fn _unresolved, global
/* 0000013C 00000208  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x140 | 0x140 | size: 0x4C
.fn _epilog, global
/* 00000140 0000020C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000144 00000210  7C 08 02 A6 */	mflr r0
/* 00000148 00000214  3C 60 00 00 */	lis r3, _dtors@ha
/* 0000014C 00000218  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000150 0000021C  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000154 00000220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000158 00000224  7C 1F 03 78 */	mr r31, r0
/* 0000015C 00000228  48 00 00 10 */	b .L_0000016C
.L_00000160:
/* 00000160 0000022C  7D 89 03 A6 */	mtctr r12
/* 00000164 00000230  4E 80 04 21 */	bctrl
/* 00000168 00000234  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000016C:
/* 0000016C 00000238  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000170 0000023C  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000174 00000240  40 82 FF EC */	bne .L_00000160
/* 00000178 00000244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000017C 00000248  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000180 0000024C  7C 08 03 A6 */	mtlr r0
/* 00000184 00000250  38 21 00 10 */	addi r1, r1, 0x10
/* 00000188 00000254  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x18C | 0x18C | size: 0x2D4
.fn _prolog, global
/* 0000018C 00000258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000190 0000025C  7C 08 02 A6 */	mflr r0
/* 00000194 00000260  3C 60 00 00 */	lis r3, _ctors@ha
/* 00000198 00000264  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000019C 00000268  38 03 00 00 */	addi r0, r3, _ctors@l
/* 000001A0 0000026C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000001A4 00000270  7C 1F 03 78 */	mr r31, r0
/* 000001A8 00000274  48 00 00 10 */	b .L_000001B8
.L_000001AC:
/* 000001AC 00000278  7D 89 03 A6 */	mtctr r12
/* 000001B0 0000027C  4E 80 04 21 */	bctrl
/* 000001B4 00000280  3B FF 00 04 */	addi r31, r31, 0x4
.L_000001B8:
/* 000001B8 00000284  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000001BC 00000288  28 0C 00 00 */	cmplwi r12, 0x0
/* 000001C0 0000028C  40 82 FF EC */	bne .L_000001AC
/* 000001C4 00000290  3C 60 00 00 */	lis r3, str_las_00_las_00011b0c@ha
/* 000001C8 00000294  3C 80 00 00 */	lis r4, las_00_init_evt_16_data_C04@ha
/* 000001CC 00000298  38 63 00 00 */	addi r3, r3, str_las_00_las_00011b0c@l
/* 000001D0 0000029C  38 84 00 00 */	addi r4, r4, las_00_init_evt_16_data_C04@l
/* 000001D4 000002A0  4B FF FF 69 */	bl relSetEvtAddr
/* 000001D8 000002A4  3C 60 00 00 */	lis r3, str_las_01_las_00011b14@ha
/* 000001DC 000002A8  3C 80 00 00 */	lis r4, las_01_init_evt_16_data_EEC@ha
/* 000001E0 000002AC  38 63 00 00 */	addi r3, r3, str_las_01_las_00011b14@l
/* 000001E4 000002B0  38 84 00 00 */	addi r4, r4, las_01_init_evt_16_data_EEC@l
/* 000001E8 000002B4  4B FF FF 55 */	bl relSetEvtAddr
/* 000001EC 000002B8  3C 60 00 00 */	lis r3, str_las_02_las_00011b1c@ha
/* 000001F0 000002BC  3C 80 00 00 */	lis r4, las_02_init_evt_16_data_1294@ha
/* 000001F4 000002C0  38 63 00 00 */	addi r3, r3, str_las_02_las_00011b1c@l
/* 000001F8 000002C4  38 84 00 00 */	addi r4, r4, las_02_init_evt_16_data_1294@l
/* 000001FC 000002C8  4B FF FF 41 */	bl relSetEvtAddr
/* 00000200 000002CC  3C 60 00 00 */	lis r3, str_las_03_las_00011b24@ha
/* 00000204 000002D0  3C 80 00 00 */	lis r4, las_03_init_evt_16_data_1960@ha
/* 00000208 000002D4  38 63 00 00 */	addi r3, r3, str_las_03_las_00011b24@l
/* 0000020C 000002D8  38 84 00 00 */	addi r4, r4, las_03_init_evt_16_data_1960@l
/* 00000210 000002DC  4B FF FF 2D */	bl relSetEvtAddr
/* 00000214 000002E0  3C 60 00 00 */	lis r3, str_las_04_las_00011b2c@ha
/* 00000218 000002E4  3C 80 00 00 */	lis r4, las_04_init_evt_16_data_2044@ha
/* 0000021C 000002E8  38 63 00 00 */	addi r3, r3, str_las_04_las_00011b2c@l
/* 00000220 000002EC  38 84 00 00 */	addi r4, r4, las_04_init_evt_16_data_2044@l
/* 00000224 000002F0  4B FF FF 19 */	bl relSetEvtAddr
/* 00000228 000002F4  3C 60 00 00 */	lis r3, str_las_05_las_00011b34@ha
/* 0000022C 000002F8  3C 80 00 00 */	lis r4, las_05_init_evt_16_data_38CC@ha
/* 00000230 000002FC  38 63 00 00 */	addi r3, r3, str_las_05_las_00011b34@l
/* 00000234 00000300  38 84 00 00 */	addi r4, r4, las_05_init_evt_16_data_38CC@l
/* 00000238 00000304  4B FF FF 05 */	bl relSetEvtAddr
/* 0000023C 00000308  3C 60 00 00 */	lis r3, str_las_06_las_00011b3c@ha
/* 00000240 0000030C  3C 80 00 00 */	lis r4, las_06_init_evt_16_data_3CE4@ha
/* 00000244 00000310  38 63 00 00 */	addi r3, r3, str_las_06_las_00011b3c@l
/* 00000248 00000314  38 84 00 00 */	addi r4, r4, las_06_init_evt_16_data_3CE4@l
/* 0000024C 00000318  4B FF FE F1 */	bl relSetEvtAddr
/* 00000250 0000031C  3C 60 00 00 */	lis r3, str_las_07_las_00011b44@ha
/* 00000254 00000320  3C 80 00 00 */	lis r4, las_07_init_evt_16_data_4244@ha
/* 00000258 00000324  38 63 00 00 */	addi r3, r3, str_las_07_las_00011b44@l
/* 0000025C 00000328  38 84 00 00 */	addi r4, r4, las_07_init_evt_16_data_4244@l
/* 00000260 0000032C  4B FF FE DD */	bl relSetEvtAddr
/* 00000264 00000330  3C 60 00 00 */	lis r3, str_las_08_las_00011b4c@ha
/* 00000268 00000334  3C 80 00 00 */	lis r4, las_08_init_evt_16_data_4B94@ha
/* 0000026C 00000338  38 63 00 00 */	addi r3, r3, str_las_08_las_00011b4c@l
/* 00000270 0000033C  38 84 00 00 */	addi r4, r4, las_08_init_evt_16_data_4B94@l
/* 00000274 00000340  4B FF FE C9 */	bl relSetEvtAddr
/* 00000278 00000344  3C 60 00 00 */	lis r3, str_las_09_las_00011b54@ha
/* 0000027C 00000348  3C 80 00 00 */	lis r4, las_09_init_evt_16_data_70F0@ha
/* 00000280 0000034C  38 63 00 00 */	addi r3, r3, str_las_09_las_00011b54@l
/* 00000284 00000350  38 84 00 00 */	addi r4, r4, las_09_init_evt_16_data_70F0@l
/* 00000288 00000354  4B FF FE B5 */	bl relSetEvtAddr
/* 0000028C 00000358  3C 60 00 00 */	lis r3, str_las_10_las_00011b5c@ha
/* 00000290 0000035C  3C 80 00 00 */	lis r4, las_10_init_evt_16_data_9C44@ha
/* 00000294 00000360  38 63 00 00 */	addi r3, r3, str_las_10_las_00011b5c@l
/* 00000298 00000364  38 84 00 00 */	addi r4, r4, las_10_init_evt_16_data_9C44@l
/* 0000029C 00000368  4B FF FE A1 */	bl relSetEvtAddr
/* 000002A0 0000036C  3C 60 00 00 */	lis r3, str_las_11_las_00011b64@ha
/* 000002A4 00000370  3C 80 00 00 */	lis r4, las_11_init_evt_16_data_A408@ha
/* 000002A8 00000374  38 63 00 00 */	addi r3, r3, str_las_11_las_00011b64@l
/* 000002AC 00000378  38 84 00 00 */	addi r4, r4, las_11_init_evt_16_data_A408@l
/* 000002B0 0000037C  4B FF FE 8D */	bl relSetEvtAddr
/* 000002B4 00000380  3C 60 00 00 */	lis r3, str_las_12_las_00011b6c@ha
/* 000002B8 00000384  3C 80 00 00 */	lis r4, las_12_init_evt_16_data_A8C0@ha
/* 000002BC 00000388  38 63 00 00 */	addi r3, r3, str_las_12_las_00011b6c@l
/* 000002C0 0000038C  38 84 00 00 */	addi r4, r4, las_12_init_evt_16_data_A8C0@l
/* 000002C4 00000390  4B FF FE 79 */	bl relSetEvtAddr
/* 000002C8 00000394  3C 60 00 00 */	lis r3, str_las_13_las_00011b74@ha
/* 000002CC 00000398  3C 80 00 00 */	lis r4, las_13_init_evt_16_data_ADC0@ha
/* 000002D0 0000039C  38 63 00 00 */	addi r3, r3, str_las_13_las_00011b74@l
/* 000002D4 000003A0  38 84 00 00 */	addi r4, r4, las_13_init_evt_16_data_ADC0@l
/* 000002D8 000003A4  4B FF FE 65 */	bl relSetEvtAddr
/* 000002DC 000003A8  3C 60 00 00 */	lis r3, str_las_14_las_00011b7c@ha
/* 000002E0 000003AC  3C 80 00 00 */	lis r4, las_14_init_evt_16_data_B1E8@ha
/* 000002E4 000003B0  38 63 00 00 */	addi r3, r3, str_las_14_las_00011b7c@l
/* 000002E8 000003B4  38 84 00 00 */	addi r4, r4, las_14_init_evt_16_data_B1E8@l
/* 000002EC 000003B8  4B FF FE 51 */	bl relSetEvtAddr
/* 000002F0 000003BC  3C 60 00 00 */	lis r3, str_las_15_las_00011b84@ha
/* 000002F4 000003C0  3C 80 00 00 */	lis r4, las_15_init_evt_16_data_B658@ha
/* 000002F8 000003C4  38 63 00 00 */	addi r3, r3, str_las_15_las_00011b84@l
/* 000002FC 000003C8  38 84 00 00 */	addi r4, r4, las_15_init_evt_16_data_B658@l
/* 00000300 000003CC  4B FF FE 3D */	bl relSetEvtAddr
/* 00000304 000003D0  3C 60 00 00 */	lis r3, str_las_16_las_00011b8c@ha
/* 00000308 000003D4  3C 80 00 00 */	lis r4, las_16_init_evt_16_data_BCE8@ha
/* 0000030C 000003D8  38 63 00 00 */	addi r3, r3, str_las_16_las_00011b8c@l
/* 00000310 000003DC  38 84 00 00 */	addi r4, r4, las_16_init_evt_16_data_BCE8@l
/* 00000314 000003E0  4B FF FE 29 */	bl relSetEvtAddr
/* 00000318 000003E4  3C 60 00 00 */	lis r3, str_las_17_las_00011b94@ha
/* 0000031C 000003E8  3C 80 00 00 */	lis r4, las_17_init_evt_16_data_C30C@ha
/* 00000320 000003EC  38 63 00 00 */	addi r3, r3, str_las_17_las_00011b94@l
/* 00000324 000003F0  38 84 00 00 */	addi r4, r4, las_17_init_evt_16_data_C30C@l
/* 00000328 000003F4  4B FF FE 15 */	bl relSetEvtAddr
/* 0000032C 000003F8  3C 60 00 00 */	lis r3, str_las_18_las_00011b9c@ha
/* 00000330 000003FC  3C 80 00 00 */	lis r4, las_18_init_evt_16_data_C900@ha
/* 00000334 00000400  38 63 00 00 */	addi r3, r3, str_las_18_las_00011b9c@l
/* 00000338 00000404  38 84 00 00 */	addi r4, r4, las_18_init_evt_16_data_C900@l
/* 0000033C 00000408  4B FF FE 01 */	bl relSetEvtAddr
/* 00000340 0000040C  3C 60 00 00 */	lis r3, str_las_19_las_00011ba4@ha
/* 00000344 00000410  3C 80 00 00 */	lis r4, las_19_init_evt_16_data_D440@ha
/* 00000348 00000414  38 63 00 00 */	addi r3, r3, str_las_19_las_00011ba4@l
/* 0000034C 00000418  38 84 00 00 */	addi r4, r4, las_19_init_evt_16_data_D440@l
/* 00000350 0000041C  4B FF FD ED */	bl relSetEvtAddr
/* 00000354 00000420  3C 60 00 00 */	lis r3, str_las_20_las_00011bac@ha
/* 00000358 00000424  3C 80 00 00 */	lis r4, las_20_init_evt_16_data_E7A0@ha
/* 0000035C 00000428  38 63 00 00 */	addi r3, r3, str_las_20_las_00011bac@l
/* 00000360 0000042C  38 84 00 00 */	addi r4, r4, las_20_init_evt_16_data_E7A0@l
/* 00000364 00000430  4B FF FD D9 */	bl relSetEvtAddr
/* 00000368 00000434  3C 60 00 00 */	lis r3, str_las_21_las_00011bb4@ha
/* 0000036C 00000438  3C 80 00 00 */	lis r4, las_21_init_evt_16_data_F560@ha
/* 00000370 0000043C  38 63 00 00 */	addi r3, r3, str_las_21_las_00011bb4@l
/* 00000374 00000440  38 84 00 00 */	addi r4, r4, las_21_init_evt_16_data_F560@l
/* 00000378 00000444  4B FF FD C5 */	bl relSetEvtAddr
/* 0000037C 00000448  3C 60 00 00 */	lis r3, str_las_22_las_00011bbc@ha
/* 00000380 0000044C  3C 80 00 00 */	lis r4, las_22_init_evt_16_data_10530@ha
/* 00000384 00000450  38 63 00 00 */	addi r3, r3, str_las_22_las_00011bbc@l
/* 00000388 00000454  38 84 00 00 */	addi r4, r4, las_22_init_evt_16_data_10530@l
/* 0000038C 00000458  4B FF FD B1 */	bl relSetEvtAddr
/* 00000390 0000045C  3C 60 00 00 */	lis r3, str_las_23_las_00011bc4@ha
/* 00000394 00000460  3C 80 00 00 */	lis r4, las_23_init_evt_16_data_10BEC@ha
/* 00000398 00000464  38 63 00 00 */	addi r3, r3, str_las_23_las_00011bc4@l
/* 0000039C 00000468  38 84 00 00 */	addi r4, r4, las_23_init_evt_16_data_10BEC@l
/* 000003A0 0000046C  4B FF FD 9D */	bl relSetEvtAddr
/* 000003A4 00000470  3C 60 00 00 */	lis r3, str_las_24_las_00011bcc@ha
/* 000003A8 00000474  3C 80 00 00 */	lis r4, las_24_init_evt_16_data_1151C@ha
/* 000003AC 00000478  38 63 00 00 */	addi r3, r3, str_las_24_las_00011bcc@l
/* 000003B0 0000047C  38 84 00 00 */	addi r4, r4, las_24_init_evt_16_data_1151C@l
/* 000003B4 00000480  4B FF FD 89 */	bl relSetEvtAddr
/* 000003B8 00000484  3C 60 00 00 */	lis r3, str_las_25_las_00011bd4@ha
/* 000003BC 00000488  3C 80 00 00 */	lis r4, las_25_init_evt_16_data_11C6C@ha
/* 000003C0 0000048C  38 63 00 00 */	addi r3, r3, str_las_25_las_00011bd4@l
/* 000003C4 00000490  38 84 00 00 */	addi r4, r4, las_25_init_evt_16_data_11C6C@l
/* 000003C8 00000494  4B FF FD 75 */	bl relSetEvtAddr
/* 000003CC 00000498  3C 60 00 00 */	lis r3, str_las_26_las_00011bdc@ha
/* 000003D0 0000049C  3C 80 00 00 */	lis r4, las_26_init_evt_16_data_13414@ha
/* 000003D4 000004A0  38 63 00 00 */	addi r3, r3, str_las_26_las_00011bdc@l
/* 000003D8 000004A4  38 84 00 00 */	addi r4, r4, las_26_init_evt_16_data_13414@l
/* 000003DC 000004A8  4B FF FD 61 */	bl relSetEvtAddr
/* 000003E0 000004AC  3C 60 00 00 */	lis r3, str_las_27_las_00011be4@ha
/* 000003E4 000004B0  3C 80 00 00 */	lis r4, las_27_init_evt_16_data_13A3C@ha
/* 000003E8 000004B4  38 63 00 00 */	addi r3, r3, str_las_27_las_00011be4@l
/* 000003EC 000004B8  38 84 00 00 */	addi r4, r4, las_27_init_evt_16_data_13A3C@l
/* 000003F0 000004BC  4B FF FD 4D */	bl relSetEvtAddr
/* 000003F4 000004C0  3C 60 00 00 */	lis r3, str_las_28_las_00011bec@ha
/* 000003F8 000004C4  3C 80 00 00 */	lis r4, las_28_init_evt_16_data_177E4@ha
/* 000003FC 000004C8  38 63 00 00 */	addi r3, r3, str_las_28_las_00011bec@l
/* 00000400 000004CC  38 84 00 00 */	addi r4, r4, las_28_init_evt_16_data_177E4@l
/* 00000404 000004D0  4B FF FD 39 */	bl relSetEvtAddr
/* 00000408 000004D4  3C 60 00 00 */	lis r3, str_las_29_las_00011bf4@ha
/* 0000040C 000004D8  3C 80 00 00 */	lis r4, las_29_init_evt_16_data_1F838@ha
/* 00000410 000004DC  38 63 00 00 */	addi r3, r3, str_las_29_las_00011bf4@l
/* 00000414 000004E0  38 84 00 00 */	addi r4, r4, las_29_init_evt_16_data_1F838@l
/* 00000418 000004E4  4B FF FD 25 */	bl relSetEvtAddr
/* 0000041C 000004E8  3C 60 00 00 */	lis r3, str_las_30_las_00011bfc@ha
/* 00000420 000004EC  3C 80 00 00 */	lis r4, las_30_init_evt_16_data_41DF4@ha
/* 00000424 000004F0  38 63 00 00 */	addi r3, r3, str_las_30_las_00011bfc@l
/* 00000428 000004F4  38 84 00 00 */	addi r4, r4, las_30_init_evt_16_data_41DF4@l
/* 0000042C 000004F8  4B FF FD 11 */	bl relSetEvtAddr
/* 00000430 000004FC  3C 60 00 00 */	lis r3, str_las_las_00011c04@ha
/* 00000434 00000500  3C 80 00 00 */	lis r4, btlsetup_las_tbl_16_data_234A8@ha
/* 00000438 00000504  3C A0 00 00 */	lis r5, btl_las_setup_no_tbl_16_data_244DC@ha
/* 0000043C 00000508  38 63 00 00 */	addi r3, r3, str_las_las_00011c04@l
/* 00000440 0000050C  38 84 00 00 */	addi r4, r4, btlsetup_las_tbl_16_data_234A8@l
/* 00000444 00000510  38 A5 00 00 */	addi r5, r5, btl_las_setup_no_tbl_16_data_244DC@l
/* 00000448 00000514  4B FF FC F5 */	bl relSetBtlAddr
/* 0000044C 00000518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000450 0000051C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000454 00000520  7C 08 03 A6 */	mtlr r0
/* 00000458 00000524  38 21 00 10 */	addi r1, r1, 0x10
/* 0000045C 00000528  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000000..0x000001A0 | size: 0x1A0
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x4
.obj dat_las_00011a68, local
	.4byte 0x000000FF
.endobj dat_las_00011a68

# .rodata:0x4 | 0x4 | size: 0x5
.obj str_mist_las_00011a6c, local
	.string "mist"
.endobj str_mist_las_00011a6c

# .rodata:0x9 | 0x9 | size: 0x3
.obj gap_03_00000009_rodata, global
.hidden gap_03_00000009_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000009_rodata

# .rodata:0xC | 0xC | size: 0x6
.obj str_mist2_las_00011a74, local
	.string "mist2"
.endobj str_mist2_las_00011a74

# .rodata:0x12 | 0x12 | size: 0x2
.obj gap_03_00000012_rodata, global
.hidden gap_03_00000012_rodata
	.2byte 0x0000
.endobj gap_03_00000012_rodata

# .rodata:0x14 | 0x14 | size: 0x16
.obj str_SFX_STG8_TBOX_APPEAR_las_00011a7c, local
	.string "SFX_STG8_TBOX_APPEAR1"
.endobj str_SFX_STG8_TBOX_APPEAR_las_00011a7c

# .rodata:0x2A | 0x2A | size: 0x2
.obj gap_03_0000002A_rodata, global
.hidden gap_03_0000002A_rodata
	.2byte 0x0000
.endobj gap_03_0000002A_rodata

# .rodata:0x2C | 0x2C | size: 0x16
.obj str_SFX_STG8_TBOX_APPEAR_las_00011a94, local
	.string "SFX_STG8_TBOX_APPEAR2"
.endobj str_SFX_STG8_TBOX_APPEAR_las_00011a94

# .rodata:0x42 | 0x42 | size: 0x2
.obj gap_03_00000042_rodata, global
.hidden gap_03_00000042_rodata
	.2byte 0x0000
.endobj gap_03_00000042_rodata

# .rodata:0x44 | 0x44 | size: 0x15
.obj str_SFX_STG8_FLOOR_MOVE1_las_00011aac, local
	.string "SFX_STG8_FLOOR_MOVE1"
.endobj str_SFX_STG8_FLOOR_MOVE1_las_00011aac

# .rodata:0x59 | 0x59 | size: 0x3
.obj gap_03_00000059_rodata, global
.hidden gap_03_00000059_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000059_rodata

# .rodata:0x5C | 0x5C | size: 0xA
.obj str_hikari_01_las_00011ac4, local
	.string "hikari_01"
.endobj str_hikari_01_las_00011ac4

# .rodata:0x66 | 0x66 | size: 0x2
.obj gap_03_00000066_rodata, global
.hidden gap_03_00000066_rodata
	.2byte 0x0000
.endobj gap_03_00000066_rodata

# .rodata:0x68 | 0x68 | size: 0xA
.obj str_hikari_02_las_00011ad0, local
	.string "hikari_02"
.endobj str_hikari_02_las_00011ad0

# .rodata:0x72 | 0x72 | size: 0x2
.obj gap_03_00000072_rodata, global
.hidden gap_03_00000072_rodata
	.2byte 0x0000
.endobj gap_03_00000072_rodata

# .rodata:0x74 | 0x74 | size: 0xA
.obj str_hikari_03_las_00011adc, local
	.string "hikari_03"
.endobj str_hikari_03_las_00011adc

# .rodata:0x7E | 0x7E | size: 0x2
.obj gap_03_0000007E_rodata, global
.hidden gap_03_0000007E_rodata
	.2byte 0x0000
.endobj gap_03_0000007E_rodata

# .rodata:0x80 | 0x80 | size: 0xA
.obj str_hikari_04_las_00011ae8, local
	.string "hikari_04"
.endobj str_hikari_04_las_00011ae8

# .rodata:0x8A | 0x8A | size: 0x2
.obj gap_03_0000008A_rodata, global
.hidden gap_03_0000008A_rodata
	.2byte 0x0000
.endobj gap_03_0000008A_rodata

# .rodata:0x8C | 0x8C | size: 0xA
.obj str_hikari_05_las_00011af4, local
	.string "hikari_05"
.endobj str_hikari_05_las_00011af4

# .rodata:0x96 | 0x96 | size: 0x2
.obj gap_03_00000096_rodata, global
.hidden gap_03_00000096_rodata
	.2byte 0x0000
.endobj gap_03_00000096_rodata

# .rodata:0x98 | 0x98 | size: 0xA
.obj str_hikari_06_las_00011b00, local
	.string "hikari_06"
.endobj str_hikari_06_las_00011b00

# .rodata:0xA2 | 0xA2 | size: 0x2
.obj gap_03_000000A2_rodata, global
.hidden gap_03_000000A2_rodata
	.2byte 0x0000
.endobj gap_03_000000A2_rodata

# .rodata:0xA4 | 0xA4 | size: 0x7
.obj str_las_00_las_00011b0c, local
	.string "las_00"
.endobj str_las_00_las_00011b0c

# .rodata:0xAB | 0xAB | size: 0x1
.obj gap_03_000000AB_rodata, global
.hidden gap_03_000000AB_rodata
	.byte 0x00
.endobj gap_03_000000AB_rodata

# .rodata:0xAC | 0xAC | size: 0x7
.obj str_las_01_las_00011b14, local
	.string "las_01"
.endobj str_las_01_las_00011b14

# .rodata:0xB3 | 0xB3 | size: 0x1
.obj gap_03_000000B3_rodata, global
.hidden gap_03_000000B3_rodata
	.byte 0x00
.endobj gap_03_000000B3_rodata

# .rodata:0xB4 | 0xB4 | size: 0x7
.obj str_las_02_las_00011b1c, local
	.string "las_02"
.endobj str_las_02_las_00011b1c

# .rodata:0xBB | 0xBB | size: 0x1
.obj gap_03_000000BB_rodata, global
.hidden gap_03_000000BB_rodata
	.byte 0x00
.endobj gap_03_000000BB_rodata

# .rodata:0xBC | 0xBC | size: 0x7
.obj str_las_03_las_00011b24, local
	.string "las_03"
.endobj str_las_03_las_00011b24

# .rodata:0xC3 | 0xC3 | size: 0x1
.obj gap_03_000000C3_rodata, global
.hidden gap_03_000000C3_rodata
	.byte 0x00
.endobj gap_03_000000C3_rodata

# .rodata:0xC4 | 0xC4 | size: 0x7
.obj str_las_04_las_00011b2c, local
	.string "las_04"
.endobj str_las_04_las_00011b2c

# .rodata:0xCB | 0xCB | size: 0x1
.obj gap_03_000000CB_rodata, global
.hidden gap_03_000000CB_rodata
	.byte 0x00
.endobj gap_03_000000CB_rodata

# .rodata:0xCC | 0xCC | size: 0x7
.obj str_las_05_las_00011b34, local
	.string "las_05"
.endobj str_las_05_las_00011b34

# .rodata:0xD3 | 0xD3 | size: 0x1
.obj gap_03_000000D3_rodata, global
.hidden gap_03_000000D3_rodata
	.byte 0x00
.endobj gap_03_000000D3_rodata

# .rodata:0xD4 | 0xD4 | size: 0x7
.obj str_las_06_las_00011b3c, local
	.string "las_06"
.endobj str_las_06_las_00011b3c

# .rodata:0xDB | 0xDB | size: 0x1
.obj gap_03_000000DB_rodata, global
.hidden gap_03_000000DB_rodata
	.byte 0x00
.endobj gap_03_000000DB_rodata

# .rodata:0xDC | 0xDC | size: 0x7
.obj str_las_07_las_00011b44, local
	.string "las_07"
.endobj str_las_07_las_00011b44

# .rodata:0xE3 | 0xE3 | size: 0x1
.obj gap_03_000000E3_rodata, global
.hidden gap_03_000000E3_rodata
	.byte 0x00
.endobj gap_03_000000E3_rodata

# .rodata:0xE4 | 0xE4 | size: 0x7
.obj str_las_08_las_00011b4c, local
	.string "las_08"
.endobj str_las_08_las_00011b4c

# .rodata:0xEB | 0xEB | size: 0x1
.obj gap_03_000000EB_rodata, global
.hidden gap_03_000000EB_rodata
	.byte 0x00
.endobj gap_03_000000EB_rodata

# .rodata:0xEC | 0xEC | size: 0x7
.obj str_las_09_las_00011b54, local
	.string "las_09"
.endobj str_las_09_las_00011b54

# .rodata:0xF3 | 0xF3 | size: 0x1
.obj gap_03_000000F3_rodata, global
.hidden gap_03_000000F3_rodata
	.byte 0x00
.endobj gap_03_000000F3_rodata

# .rodata:0xF4 | 0xF4 | size: 0x7
.obj str_las_10_las_00011b5c, local
	.string "las_10"
.endobj str_las_10_las_00011b5c

# .rodata:0xFB | 0xFB | size: 0x1
.obj gap_03_000000FB_rodata, global
.hidden gap_03_000000FB_rodata
	.byte 0x00
.endobj gap_03_000000FB_rodata

# .rodata:0xFC | 0xFC | size: 0x7
.obj str_las_11_las_00011b64, local
	.string "las_11"
.endobj str_las_11_las_00011b64

# .rodata:0x103 | 0x103 | size: 0x1
.obj gap_03_00000103_rodata, global
.hidden gap_03_00000103_rodata
	.byte 0x00
.endobj gap_03_00000103_rodata

# .rodata:0x104 | 0x104 | size: 0x7
.obj str_las_12_las_00011b6c, local
	.string "las_12"
.endobj str_las_12_las_00011b6c

# .rodata:0x10B | 0x10B | size: 0x1
.obj gap_03_0000010B_rodata, global
.hidden gap_03_0000010B_rodata
	.byte 0x00
.endobj gap_03_0000010B_rodata

# .rodata:0x10C | 0x10C | size: 0x7
.obj str_las_13_las_00011b74, local
	.string "las_13"
.endobj str_las_13_las_00011b74

# .rodata:0x113 | 0x113 | size: 0x1
.obj gap_03_00000113_rodata, global
.hidden gap_03_00000113_rodata
	.byte 0x00
.endobj gap_03_00000113_rodata

# .rodata:0x114 | 0x114 | size: 0x7
.obj str_las_14_las_00011b7c, local
	.string "las_14"
.endobj str_las_14_las_00011b7c

# .rodata:0x11B | 0x11B | size: 0x1
.obj gap_03_0000011B_rodata, global
.hidden gap_03_0000011B_rodata
	.byte 0x00
.endobj gap_03_0000011B_rodata

# .rodata:0x11C | 0x11C | size: 0x7
.obj str_las_15_las_00011b84, local
	.string "las_15"
.endobj str_las_15_las_00011b84

# .rodata:0x123 | 0x123 | size: 0x1
.obj gap_03_00000123_rodata, global
.hidden gap_03_00000123_rodata
	.byte 0x00
.endobj gap_03_00000123_rodata

# .rodata:0x124 | 0x124 | size: 0x7
.obj str_las_16_las_00011b8c, local
	.string "las_16"
.endobj str_las_16_las_00011b8c

# .rodata:0x12B | 0x12B | size: 0x1
.obj gap_03_0000012B_rodata, global
.hidden gap_03_0000012B_rodata
	.byte 0x00
.endobj gap_03_0000012B_rodata

# .rodata:0x12C | 0x12C | size: 0x7
.obj str_las_17_las_00011b94, local
	.string "las_17"
.endobj str_las_17_las_00011b94

# .rodata:0x133 | 0x133 | size: 0x1
.obj gap_03_00000133_rodata, global
.hidden gap_03_00000133_rodata
	.byte 0x00
.endobj gap_03_00000133_rodata

# .rodata:0x134 | 0x134 | size: 0x7
.obj str_las_18_las_00011b9c, local
	.string "las_18"
.endobj str_las_18_las_00011b9c

# .rodata:0x13B | 0x13B | size: 0x1
.obj gap_03_0000013B_rodata, global
.hidden gap_03_0000013B_rodata
	.byte 0x00
.endobj gap_03_0000013B_rodata

# .rodata:0x13C | 0x13C | size: 0x7
.obj str_las_19_las_00011ba4, local
	.string "las_19"
.endobj str_las_19_las_00011ba4

# .rodata:0x143 | 0x143 | size: 0x1
.obj gap_03_00000143_rodata, global
.hidden gap_03_00000143_rodata
	.byte 0x00
.endobj gap_03_00000143_rodata

# .rodata:0x144 | 0x144 | size: 0x7
.obj str_las_20_las_00011bac, local
	.string "las_20"
.endobj str_las_20_las_00011bac

# .rodata:0x14B | 0x14B | size: 0x1
.obj gap_03_0000014B_rodata, global
.hidden gap_03_0000014B_rodata
	.byte 0x00
.endobj gap_03_0000014B_rodata

# .rodata:0x14C | 0x14C | size: 0x7
.obj str_las_21_las_00011bb4, local
	.string "las_21"
.endobj str_las_21_las_00011bb4

# .rodata:0x153 | 0x153 | size: 0x1
.obj gap_03_00000153_rodata, global
.hidden gap_03_00000153_rodata
	.byte 0x00
.endobj gap_03_00000153_rodata

# .rodata:0x154 | 0x154 | size: 0x7
.obj str_las_22_las_00011bbc, local
	.string "las_22"
.endobj str_las_22_las_00011bbc

# .rodata:0x15B | 0x15B | size: 0x1
.obj gap_03_0000015B_rodata, global
.hidden gap_03_0000015B_rodata
	.byte 0x00
.endobj gap_03_0000015B_rodata

# .rodata:0x15C | 0x15C | size: 0x7
.obj str_las_23_las_00011bc4, local
	.string "las_23"
.endobj str_las_23_las_00011bc4

# .rodata:0x163 | 0x163 | size: 0x1
.obj gap_03_00000163_rodata, global
.hidden gap_03_00000163_rodata
	.byte 0x00
.endobj gap_03_00000163_rodata

# .rodata:0x164 | 0x164 | size: 0x7
.obj str_las_24_las_00011bcc, local
	.string "las_24"
.endobj str_las_24_las_00011bcc

# .rodata:0x16B | 0x16B | size: 0x1
.obj gap_03_0000016B_rodata, global
.hidden gap_03_0000016B_rodata
	.byte 0x00
.endobj gap_03_0000016B_rodata

# .rodata:0x16C | 0x16C | size: 0x7
.obj str_las_25_las_00011bd4, local
	.string "las_25"
.endobj str_las_25_las_00011bd4

# .rodata:0x173 | 0x173 | size: 0x1
.obj gap_03_00000173_rodata, global
.hidden gap_03_00000173_rodata
	.byte 0x00
.endobj gap_03_00000173_rodata

# .rodata:0x174 | 0x174 | size: 0x7
.obj str_las_26_las_00011bdc, local
	.string "las_26"
.endobj str_las_26_las_00011bdc

# .rodata:0x17B | 0x17B | size: 0x1
.obj gap_03_0000017B_rodata, global
.hidden gap_03_0000017B_rodata
	.byte 0x00
.endobj gap_03_0000017B_rodata

# .rodata:0x17C | 0x17C | size: 0x7
.obj str_las_27_las_00011be4, local
	.string "las_27"
.endobj str_las_27_las_00011be4

# .rodata:0x183 | 0x183 | size: 0x1
.obj gap_03_00000183_rodata, global
.hidden gap_03_00000183_rodata
	.byte 0x00
.endobj gap_03_00000183_rodata

# .rodata:0x184 | 0x184 | size: 0x7
.obj str_las_28_las_00011bec, local
	.string "las_28"
.endobj str_las_28_las_00011bec

# .rodata:0x18B | 0x18B | size: 0x1
.obj gap_03_0000018B_rodata, global
.hidden gap_03_0000018B_rodata
	.byte 0x00
.endobj gap_03_0000018B_rodata

# .rodata:0x18C | 0x18C | size: 0x7
.obj str_las_29_las_00011bf4, local
	.string "las_29"
.endobj str_las_29_las_00011bf4

# .rodata:0x193 | 0x193 | size: 0x1
.obj gap_03_00000193_rodata, global
.hidden gap_03_00000193_rodata
	.byte 0x00
.endobj gap_03_00000193_rodata

# .rodata:0x194 | 0x194 | size: 0x7
.obj str_las_30_las_00011bfc, local
	.string "las_30"
.endobj str_las_30_las_00011bfc

# .rodata:0x19B | 0x19B | size: 0x1
.obj gap_03_0000019B_rodata, global
.hidden gap_03_0000019B_rodata
	.byte 0x00
.endobj gap_03_0000019B_rodata

# .rodata:0x19C | 0x19C | size: 0x4
.obj str_las_las_00011c04, local
	.string "las"
.endobj str_las_las_00011c04

# 0x00000000..0x00000608 | size: 0x608
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

# .data:0x60 | 0x60 | size: 0x2C4
.obj box_syutugen_16_data_60, global
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_mist_las_00011a6c
	.4byte str_mist2_las_00011a74
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000003
	.4byte 0xFE363C85
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_TBOX_APPEAR_las_00011a7c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C88
	.4byte 0x0001006C
	.4byte 0xFE363C89
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mobj_get_y_position
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_mist2_las_00011a74
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0000000F
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000006D6
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_TBOX_APPEAR_las_00011a94
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte mobj_set_color
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24AF280
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xF24A0280
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x0003005B
	.4byte mobj_set_ry
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_mist_las_00011a6c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte mobj_set_color
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte mobj_color_off
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte mobj_set_ry
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mobj_set_y_position
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_syutugen_16_data_60

# .data:0x324 | 0x324 | size: 0x208
.obj move_dai_16_data_324, global
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_FLOOR_MOVE1_las_00011aac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C88
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C86
	.4byte 0x0001000A
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_FLOOR_MOVE1_las_00011aac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C88
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_dai_16_data_324

# .data:0x52C | 0x52C | size: 0xD8
.obj hikari_evt_16_data_52C, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_hikari_01_las_00011ac4
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_hikari_02_las_00011ad0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_hikari_03_las_00011adc
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_hikari_04_las_00011ae8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_hikari_05_las_00011af4
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_hikari_06_las_00011b00
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0xFE363C83
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikari_evt_16_data_52C

# .data:0x604 | 0x604 | size: 0x4
.obj gap_04_00000604_data, global
.hidden gap_04_00000604_data
	.4byte 0x00000000
.endobj gap_04_00000604_data
