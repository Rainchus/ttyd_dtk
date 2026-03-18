.include "macros.inc"
.file "aji.o"

# 0x0000623C..0x000064B4 | size: 0x278
.text
.balign 4

# .text:0x0 | 0x623C | size: 0x4
.fn _unresolved, global
/* 0000623C 00006300  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x6240 | size: 0x7C
.fn _epilog, global
/* 00006240 00006304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006244 00006308  7C 08 02 A6 */	mflr r0
/* 00006248 0000630C  38 60 10 79 */	li r3, 0x1079
/* 0000624C 00006310  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006250 00006314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006254 00006318  4B FF FF E9 */	bl swGet
/* 00006258 0000631C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000625C 00006320  41 82 00 24 */	beq .L_00006280
/* 00006260 00006324  38 60 00 00 */	li r3, 0x0
/* 00006264 00006328  4B FF FF D9 */	bl marioSetFamicomMode
/* 00006268 0000632C  4B FF FF D5 */	bl marioGetPartyId
/* 0000626C 00006330  4B FF FF D1 */	bl partyGetPtr
/* 00006270 00006334  38 80 00 00 */	li r4, 0x0
/* 00006274 00006338  4B FF FF C9 */	bl partySetFamicomMode
/* 00006278 0000633C  38 60 10 79 */	li r3, 0x1079
/* 0000627C 00006340  4B FF FF C1 */	bl swClear
.L_00006280:
/* 00006280 00006344  3C 60 00 00 */	lis r3, _dtors@ha
/* 00006284 00006348  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00006288 0000634C  7C 1F 03 78 */	mr r31, r0
/* 0000628C 00006350  48 00 00 10 */	b .L_0000629C
.L_00006290:
/* 00006290 00006354  7D 89 03 A6 */	mtctr r12
/* 00006294 00006358  4E 80 04 21 */	bctrl
/* 00006298 0000635C  3B FF 00 04 */	addi r31, r31, 0x4
.L_0000629C:
/* 0000629C 00006360  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000062A0 00006364  28 0C 00 00 */	cmplwi r12, 0x0
/* 000062A4 00006368  40 82 FF EC */	bne .L_00006290
/* 000062A8 0000636C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000062AC 00006370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000062B0 00006374  7C 08 03 A6 */	mtlr r0
/* 000062B4 00006378  38 21 00 10 */	addi r1, r1, 0x10
/* 000062B8 0000637C  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x80 | 0x62BC | size: 0x1F8
.fn _prolog, global
/* 000062BC 00006380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000062C0 00006384  7C 08 02 A6 */	mflr r0
/* 000062C4 00006388  3C 60 00 00 */	lis r3, _ctors@ha
/* 000062C8 0000638C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000062CC 00006390  38 03 00 00 */	addi r0, r3, _ctors@l
/* 000062D0 00006394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000062D4 00006398  7C 1F 03 78 */	mr r31, r0
/* 000062D8 0000639C  48 00 00 10 */	b .L_000062E8
.L_000062DC:
/* 000062DC 000063A0  7D 89 03 A6 */	mtctr r12
/* 000062E0 000063A4  4E 80 04 21 */	bctrl
/* 000062E4 000063A8  3B FF 00 04 */	addi r31, r31, 0x4
.L_000062E8:
/* 000062E8 000063AC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000062EC 000063B0  28 0C 00 00 */	cmplwi r12, 0x0
/* 000062F0 000063B4  40 82 FF EC */	bne .L_000062DC
/* 000062F4 000063B8  3C 60 00 00 */	lis r3, str_aji_00_aji_00016048@ha
/* 000062F8 000063BC  3C 80 00 00 */	lis r4, aji_00_init_evt_2_data_8F4@ha
/* 000062FC 000063C0  38 63 00 00 */	addi r3, r3, str_aji_00_aji_00016048@l
/* 00006300 000063C4  38 84 00 00 */	addi r4, r4, aji_00_init_evt_2_data_8F4@l
/* 00006304 000063C8  4B FF FF 39 */	bl relSetEvtAddr
/* 00006308 000063CC  3C 60 00 00 */	lis r3, str_aji_01_aji_00016050@ha
/* 0000630C 000063D0  3C 80 00 00 */	lis r4, aji_01_init_evt_2_data_6340@ha
/* 00006310 000063D4  38 63 00 00 */	addi r3, r3, str_aji_01_aji_00016050@l
/* 00006314 000063D8  38 84 00 00 */	addi r4, r4, aji_01_init_evt_2_data_6340@l
/* 00006318 000063DC  4B FF FF 25 */	bl relSetEvtAddr
/* 0000631C 000063E0  3C 60 00 00 */	lis r3, str_aji_02_aji_00016058@ha
/* 00006320 000063E4  3C 80 00 00 */	lis r4, aji_02_init_evt_2_data_6C04@ha
/* 00006324 000063E8  38 63 00 00 */	addi r3, r3, str_aji_02_aji_00016058@l
/* 00006328 000063EC  38 84 00 00 */	addi r4, r4, aji_02_init_evt_2_data_6C04@l
/* 0000632C 000063F0  4B FF FF 11 */	bl relSetEvtAddr
/* 00006330 000063F4  3C 60 00 00 */	lis r3, str_aji_03_aji_00016060@ha
/* 00006334 000063F8  3C 80 00 00 */	lis r4, aji_03_init_evt_2_data_937C@ha
/* 00006338 000063FC  38 63 00 00 */	addi r3, r3, str_aji_03_aji_00016060@l
/* 0000633C 00006400  38 84 00 00 */	addi r4, r4, aji_03_init_evt_2_data_937C@l
/* 00006340 00006404  4B FF FE FD */	bl relSetEvtAddr
/* 00006344 00006408  3C 60 00 00 */	lis r3, str_aji_04_aji_00016068@ha
/* 00006348 0000640C  3C 80 00 00 */	lis r4, aji_04_init_evt_2_data_B9A8@ha
/* 0000634C 00006410  38 63 00 00 */	addi r3, r3, str_aji_04_aji_00016068@l
/* 00006350 00006414  38 84 00 00 */	addi r4, r4, aji_04_init_evt_2_data_B9A8@l
/* 00006354 00006418  4B FF FE E9 */	bl relSetEvtAddr
/* 00006358 0000641C  3C 60 00 00 */	lis r3, str_aji_05_aji_00016070@ha
/* 0000635C 00006420  3C 80 00 00 */	lis r4, aji_05_init_evt_2_data_BE7C@ha
/* 00006360 00006424  38 63 00 00 */	addi r3, r3, str_aji_05_aji_00016070@l
/* 00006364 00006428  38 84 00 00 */	addi r4, r4, aji_05_init_evt_2_data_BE7C@l
/* 00006368 0000642C  4B FF FE D5 */	bl relSetEvtAddr
/* 0000636C 00006430  3C 60 00 00 */	lis r3, str_aji_06_aji_00016078@ha
/* 00006370 00006434  3C 80 00 00 */	lis r4, aji_06_init_evt_2_data_10714@ha
/* 00006374 00006438  38 63 00 00 */	addi r3, r3, str_aji_06_aji_00016078@l
/* 00006378 0000643C  38 84 00 00 */	addi r4, r4, aji_06_init_evt_2_data_10714@l
/* 0000637C 00006440  4B FF FE C1 */	bl relSetEvtAddr
/* 00006380 00006444  3C 60 00 00 */	lis r3, str_aji_07_aji_00016080@ha
/* 00006384 00006448  3C 80 00 00 */	lis r4, aji_07_init_evt_2_data_11584@ha
/* 00006388 0000644C  38 63 00 00 */	addi r3, r3, str_aji_07_aji_00016080@l
/* 0000638C 00006450  38 84 00 00 */	addi r4, r4, aji_07_init_evt_2_data_11584@l
/* 00006390 00006454  4B FF FE AD */	bl relSetEvtAddr
/* 00006394 00006458  3C 60 00 00 */	lis r3, str_aji_08_aji_00016088@ha
/* 00006398 0000645C  3C 80 00 00 */	lis r4, aji_08_init_evt_2_data_11B50@ha
/* 0000639C 00006460  38 63 00 00 */	addi r3, r3, str_aji_08_aji_00016088@l
/* 000063A0 00006464  38 84 00 00 */	addi r4, r4, aji_08_init_evt_2_data_11B50@l
/* 000063A4 00006468  4B FF FE 99 */	bl relSetEvtAddr
/* 000063A8 0000646C  3C 60 00 00 */	lis r3, str_aji_09_aji_00016090@ha
/* 000063AC 00006470  3C 80 00 00 */	lis r4, aji_09_init_evt_2_data_13A2C@ha
/* 000063B0 00006474  38 63 00 00 */	addi r3, r3, str_aji_09_aji_00016090@l
/* 000063B4 00006478  38 84 00 00 */	addi r4, r4, aji_09_init_evt_2_data_13A2C@l
/* 000063B8 0000647C  4B FF FE 85 */	bl relSetEvtAddr
/* 000063BC 00006480  3C 60 00 00 */	lis r3, str_aji_10_aji_00016098@ha
/* 000063C0 00006484  3C 80 00 00 */	lis r4, aji_10_init_evt_2_data_17984@ha
/* 000063C4 00006488  38 63 00 00 */	addi r3, r3, str_aji_10_aji_00016098@l
/* 000063C8 0000648C  38 84 00 00 */	addi r4, r4, aji_10_init_evt_2_data_17984@l
/* 000063CC 00006490  4B FF FE 71 */	bl relSetEvtAddr
/* 000063D0 00006494  3C 60 00 00 */	lis r3, str_aji_11_aji_000160a0@ha
/* 000063D4 00006498  3C 80 00 00 */	lis r4, aji_11_init_evt_2_data_188A8@ha
/* 000063D8 0000649C  38 63 00 00 */	addi r3, r3, str_aji_11_aji_000160a0@l
/* 000063DC 000064A0  38 84 00 00 */	addi r4, r4, aji_11_init_evt_2_data_188A8@l
/* 000063E0 000064A4  4B FF FE 5D */	bl relSetEvtAddr
/* 000063E4 000064A8  3C 60 00 00 */	lis r3, str_aji_12_aji_000160a8@ha
/* 000063E8 000064AC  3C 80 00 00 */	lis r4, aji_12_init_evt_2_data_18ECC@ha
/* 000063EC 000064B0  38 63 00 00 */	addi r3, r3, str_aji_12_aji_000160a8@l
/* 000063F0 000064B4  38 84 00 00 */	addi r4, r4, aji_12_init_evt_2_data_18ECC@l
/* 000063F4 000064B8  4B FF FE 49 */	bl relSetEvtAddr
/* 000063F8 000064BC  3C 60 00 00 */	lis r3, str_aji_13_aji_000160b0@ha
/* 000063FC 000064C0  3C 80 00 00 */	lis r4, aji_13_init_evt_2_data_1A744@ha
/* 00006400 000064C4  38 63 00 00 */	addi r3, r3, str_aji_13_aji_000160b0@l
/* 00006404 000064C8  38 84 00 00 */	addi r4, r4, aji_13_init_evt_2_data_1A744@l
/* 00006408 000064CC  4B FF FE 35 */	bl relSetEvtAddr
/* 0000640C 000064D0  3C 60 00 00 */	lis r3, str_aji_14_aji_000160b8@ha
/* 00006410 000064D4  3C 80 00 00 */	lis r4, aji_14_init_evt_2_data_1BDB4@ha
/* 00006414 000064D8  38 63 00 00 */	addi r3, r3, str_aji_14_aji_000160b8@l
/* 00006418 000064DC  38 84 00 00 */	addi r4, r4, aji_14_init_evt_2_data_1BDB4@l
/* 0000641C 000064E0  4B FF FE 21 */	bl relSetEvtAddr
/* 00006420 000064E4  3C 60 00 00 */	lis r3, str_aji_15_aji_000160c0@ha
/* 00006424 000064E8  3C 80 00 00 */	lis r4, aji_15_init_evt_2_data_1CE68@ha
/* 00006428 000064EC  38 63 00 00 */	addi r3, r3, str_aji_15_aji_000160c0@l
/* 0000642C 000064F0  38 84 00 00 */	addi r4, r4, aji_15_init_evt_2_data_1CE68@l
/* 00006430 000064F4  4B FF FE 0D */	bl relSetEvtAddr
/* 00006434 000064F8  3C 60 00 00 */	lis r3, str_aji_16_aji_000160c8@ha
/* 00006438 000064FC  3C 80 00 00 */	lis r4, aji_16_init_evt_2_data_1DFF0@ha
/* 0000643C 00006500  38 63 00 00 */	addi r3, r3, str_aji_16_aji_000160c8@l
/* 00006440 00006504  38 84 00 00 */	addi r4, r4, aji_16_init_evt_2_data_1DFF0@l
/* 00006444 00006508  4B FF FD F9 */	bl relSetEvtAddr
/* 00006448 0000650C  3C 60 00 00 */	lis r3, str_aji_17_aji_000160d0@ha
/* 0000644C 00006510  3C 80 00 00 */	lis r4, aji_17_init_evt_2_data_26FA4@ha
/* 00006450 00006514  38 63 00 00 */	addi r3, r3, str_aji_17_aji_000160d0@l
/* 00006454 00006518  38 84 00 00 */	addi r4, r4, aji_17_init_evt_2_data_26FA4@l
/* 00006458 0000651C  4B FF FD E5 */	bl relSetEvtAddr
/* 0000645C 00006520  3C 60 00 00 */	lis r3, str_aji_18_aji_000160d8@ha
/* 00006460 00006524  3C 80 00 00 */	lis r4, aji_18_init_evt_2_data_2E19C@ha
/* 00006464 00006528  38 63 00 00 */	addi r3, r3, str_aji_18_aji_000160d8@l
/* 00006468 0000652C  38 84 00 00 */	addi r4, r4, aji_18_init_evt_2_data_2E19C@l
/* 0000646C 00006530  4B FF FD D1 */	bl relSetEvtAddr
/* 00006470 00006534  3C 60 00 00 */	lis r3, str_aji_19_aji_000160e0@ha
/* 00006474 00006538  3C 80 00 00 */	lis r4, aji_19_init_evt_2_data_2E938@ha
/* 00006478 0000653C  38 63 00 00 */	addi r3, r3, str_aji_19_aji_000160e0@l
/* 0000647C 00006540  38 84 00 00 */	addi r4, r4, aji_19_init_evt_2_data_2E938@l
/* 00006480 00006544  4B FF FD BD */	bl relSetEvtAddr
/* 00006484 00006548  3C 60 00 00 */	lis r3, str_aji_aji_000160e8@ha
/* 00006488 0000654C  3C 80 00 00 */	lis r4, btlsetup_aji_tbl_2_data_2D154@ha
/* 0000648C 00006550  3C A0 00 00 */	lis r5, btl_aji_setup_no_tbl_2_data_2D7B4@ha
/* 00006490 00006554  38 63 00 00 */	addi r3, r3, str_aji_aji_000160e8@l
/* 00006494 00006558  38 84 00 00 */	addi r4, r4, btlsetup_aji_tbl_2_data_2D154@l
/* 00006498 0000655C  38 A5 00 00 */	addi r5, r5, btl_aji_setup_no_tbl_2_data_2D7B4@l
/* 0000649C 00006560  4B FF FD A1 */	bl relSetBtlAddr
/* 000064A0 00006564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000064A4 00006568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000064A8 0000656C  7C 08 03 A6 */	mtlr r0
/* 000064AC 00006570  38 21 00 10 */	addi r1, r1, 0x10
/* 000064B0 00006574  4E 80 00 20 */	blr
.endfn _prolog

# 0x000051E0..0x00005288 | size: 0xA8
.rodata
.balign 8

# .rodata:0x0 | 0x51E0 | size: 0x7
.obj str_aji_00_aji_00016048, local
	.string "aji_00"
.endobj str_aji_00_aji_00016048

# .rodata:0x7 | 0x51E7 | size: 0x1
.obj gap_03_000051E7_rodata, global
.hidden gap_03_000051E7_rodata
	.byte 0x00
.endobj gap_03_000051E7_rodata

# .rodata:0x8 | 0x51E8 | size: 0x7
.obj str_aji_01_aji_00016050, local
	.string "aji_01"
.endobj str_aji_01_aji_00016050

# .rodata:0xF | 0x51EF | size: 0x1
.obj gap_03_000051EF_rodata, global
.hidden gap_03_000051EF_rodata
	.byte 0x00
.endobj gap_03_000051EF_rodata

# .rodata:0x10 | 0x51F0 | size: 0x7
.obj str_aji_02_aji_00016058, local
	.string "aji_02"
.endobj str_aji_02_aji_00016058

# .rodata:0x17 | 0x51F7 | size: 0x1
.obj gap_03_000051F7_rodata, global
.hidden gap_03_000051F7_rodata
	.byte 0x00
.endobj gap_03_000051F7_rodata

# .rodata:0x18 | 0x51F8 | size: 0x7
.obj str_aji_03_aji_00016060, local
	.string "aji_03"
.endobj str_aji_03_aji_00016060

# .rodata:0x1F | 0x51FF | size: 0x1
.obj gap_03_000051FF_rodata, global
.hidden gap_03_000051FF_rodata
	.byte 0x00
.endobj gap_03_000051FF_rodata

# .rodata:0x20 | 0x5200 | size: 0x7
.obj str_aji_04_aji_00016068, local
	.string "aji_04"
.endobj str_aji_04_aji_00016068

# .rodata:0x27 | 0x5207 | size: 0x1
.obj gap_03_00005207_rodata, global
.hidden gap_03_00005207_rodata
	.byte 0x00
.endobj gap_03_00005207_rodata

# .rodata:0x28 | 0x5208 | size: 0x7
.obj str_aji_05_aji_00016070, local
	.string "aji_05"
.endobj str_aji_05_aji_00016070

# .rodata:0x2F | 0x520F | size: 0x1
.obj gap_03_0000520F_rodata, global
.hidden gap_03_0000520F_rodata
	.byte 0x00
.endobj gap_03_0000520F_rodata

# .rodata:0x30 | 0x5210 | size: 0x7
.obj str_aji_06_aji_00016078, local
	.string "aji_06"
.endobj str_aji_06_aji_00016078

# .rodata:0x37 | 0x5217 | size: 0x1
.obj gap_03_00005217_rodata, global
.hidden gap_03_00005217_rodata
	.byte 0x00
.endobj gap_03_00005217_rodata

# .rodata:0x38 | 0x5218 | size: 0x7
.obj str_aji_07_aji_00016080, local
	.string "aji_07"
.endobj str_aji_07_aji_00016080

# .rodata:0x3F | 0x521F | size: 0x1
.obj gap_03_0000521F_rodata, global
.hidden gap_03_0000521F_rodata
	.byte 0x00
.endobj gap_03_0000521F_rodata

# .rodata:0x40 | 0x5220 | size: 0x7
.obj str_aji_08_aji_00016088, local
	.string "aji_08"
.endobj str_aji_08_aji_00016088

# .rodata:0x47 | 0x5227 | size: 0x1
.obj gap_03_00005227_rodata, global
.hidden gap_03_00005227_rodata
	.byte 0x00
.endobj gap_03_00005227_rodata

# .rodata:0x48 | 0x5228 | size: 0x7
.obj str_aji_09_aji_00016090, local
	.string "aji_09"
.endobj str_aji_09_aji_00016090

# .rodata:0x4F | 0x522F | size: 0x1
.obj gap_03_0000522F_rodata, global
.hidden gap_03_0000522F_rodata
	.byte 0x00
.endobj gap_03_0000522F_rodata

# .rodata:0x50 | 0x5230 | size: 0x7
.obj str_aji_10_aji_00016098, local
	.string "aji_10"
.endobj str_aji_10_aji_00016098

# .rodata:0x57 | 0x5237 | size: 0x1
.obj gap_03_00005237_rodata, global
.hidden gap_03_00005237_rodata
	.byte 0x00
.endobj gap_03_00005237_rodata

# .rodata:0x58 | 0x5238 | size: 0x7
.obj str_aji_11_aji_000160a0, local
	.string "aji_11"
.endobj str_aji_11_aji_000160a0

# .rodata:0x5F | 0x523F | size: 0x1
.obj gap_03_0000523F_rodata, global
.hidden gap_03_0000523F_rodata
	.byte 0x00
.endobj gap_03_0000523F_rodata

# .rodata:0x60 | 0x5240 | size: 0x7
.obj str_aji_12_aji_000160a8, local
	.string "aji_12"
.endobj str_aji_12_aji_000160a8

# .rodata:0x67 | 0x5247 | size: 0x1
.obj gap_03_00005247_rodata, global
.hidden gap_03_00005247_rodata
	.byte 0x00
.endobj gap_03_00005247_rodata

# .rodata:0x68 | 0x5248 | size: 0x7
.obj str_aji_13_aji_000160b0, local
	.string "aji_13"
.endobj str_aji_13_aji_000160b0

# .rodata:0x6F | 0x524F | size: 0x1
.obj gap_03_0000524F_rodata, global
.hidden gap_03_0000524F_rodata
	.byte 0x00
.endobj gap_03_0000524F_rodata

# .rodata:0x70 | 0x5250 | size: 0x7
.obj str_aji_14_aji_000160b8, local
	.string "aji_14"
.endobj str_aji_14_aji_000160b8

# .rodata:0x77 | 0x5257 | size: 0x1
.obj gap_03_00005257_rodata, global
.hidden gap_03_00005257_rodata
	.byte 0x00
.endobj gap_03_00005257_rodata

# .rodata:0x78 | 0x5258 | size: 0x7
.obj str_aji_15_aji_000160c0, local
	.string "aji_15"
.endobj str_aji_15_aji_000160c0

# .rodata:0x7F | 0x525F | size: 0x1
.obj gap_03_0000525F_rodata, global
.hidden gap_03_0000525F_rodata
	.byte 0x00
.endobj gap_03_0000525F_rodata

# .rodata:0x80 | 0x5260 | size: 0x7
.obj str_aji_16_aji_000160c8, local
	.string "aji_16"
.endobj str_aji_16_aji_000160c8

# .rodata:0x87 | 0x5267 | size: 0x1
.obj gap_03_00005267_rodata, global
.hidden gap_03_00005267_rodata
	.byte 0x00
.endobj gap_03_00005267_rodata

# .rodata:0x88 | 0x5268 | size: 0x7
.obj str_aji_17_aji_000160d0, local
	.string "aji_17"
.endobj str_aji_17_aji_000160d0

# .rodata:0x8F | 0x526F | size: 0x1
.obj gap_03_0000526F_rodata, global
.hidden gap_03_0000526F_rodata
	.byte 0x00
.endobj gap_03_0000526F_rodata

# .rodata:0x90 | 0x5270 | size: 0x7
.obj str_aji_18_aji_000160d8, local
	.string "aji_18"
.endobj str_aji_18_aji_000160d8

# .rodata:0x97 | 0x5277 | size: 0x1
.obj gap_03_00005277_rodata, global
.hidden gap_03_00005277_rodata
	.byte 0x00
.endobj gap_03_00005277_rodata

# .rodata:0x98 | 0x5278 | size: 0x7
.obj str_aji_19_aji_000160e0, local
	.string "aji_19"
.endobj str_aji_19_aji_000160e0

# .rodata:0x9F | 0x527F | size: 0x1
.obj gap_03_0000527F_rodata, global
.hidden gap_03_0000527F_rodata
	.byte 0x00
.endobj gap_03_0000527F_rodata

# .rodata:0xA0 | 0x5280 | size: 0x4
.obj str_aji_aji_000160e8, local
	.string "aji"
.endobj str_aji_aji_000160e8

# .rodata:0xA4 | 0x5284 | size: 0x4
.obj gap_03_00005284_rodata, global
.hidden gap_03_00005284_rodata
	.4byte 0x00000000
.endobj gap_03_00005284_rodata

# 0x000273A0..0x000273F0 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x273A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x273A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x273AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x273B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x273B4 | size: 0x4
.obj gap_04_000273B4_data, global
.hidden gap_04_000273B4_data
	.4byte 0x00000000
.endobj gap_04_000273B4_data

# .data:0x18 | 0x273B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x273C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x273C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x273C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x273D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x273D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x273D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x273DC | size: 0x4
.obj gap_04_000273DC_data, global
.hidden gap_04_000273DC_data
	.4byte 0x00000000
.endobj gap_04_000273DC_data

# .data:0x40 | 0x273E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x273E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x273EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364
