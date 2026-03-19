.include "macros.inc"
.file "las_20.o"

# 0x00005BEC..0x00005C5C | size: 0x70
.text
.balign 4

# .text:0x0 | 0x5BEC | size: 0x70
.fn get_hosi_name, local
/* 00005BEC 00005CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005BF0 00005CBC  7C 08 02 A6 */	mflr r0
/* 00005BF4 00005CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005BF8 00005CC4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00005BFC 00005CC8  7C 7D 1B 78 */	mr r29, r3
/* 00005C00 00005CCC  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00005C04 00005CD0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00005C08 00005CD4  4B FF A5 35 */	bl evtGetValue
/* 00005C0C 00005CD8  3C A0 00 00 */	lis r5, hosi_name@ha
/* 00005C10 00005CDC  54 7F 18 38 */	slwi r31, r3, 3
/* 00005C14 00005CE0  38 A5 00 00 */	addi r5, r5, hosi_name@l
/* 00005C18 00005CE4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00005C1C 00005CE8  7C A5 F8 2E */	lwzx r5, r5, r31
/* 00005C20 00005CEC  7F A3 EB 78 */	mr r3, r29
/* 00005C24 00005CF0  4B FF A5 19 */	bl evtSetValue
/* 00005C28 00005CF4  3C 60 00 00 */	lis r3, hosi_name@ha
/* 00005C2C 00005CF8  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00005C30 00005CFC  38 03 00 00 */	addi r0, r3, hosi_name@l
/* 00005C34 00005D00  7F A3 EB 78 */	mr r3, r29
/* 00005C38 00005D04  7C A0 FA 14 */	add r5, r0, r31
/* 00005C3C 00005D08  80 A5 00 04 */	lwz r5, 0x4(r5)
/* 00005C40 00005D0C  4B FF A4 FD */	bl evtSetValue
/* 00005C44 00005D10  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005C48 00005D14  38 60 00 02 */	li r3, 0x2
/* 00005C4C 00005D18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005C50 00005D1C  7C 08 03 A6 */	mtlr r0
/* 00005C54 00005D20  38 21 00 20 */	addi r1, r1, 0x20
/* 00005C58 00005D24  4E 80 00 20 */	blr
.endfn get_hosi_name

# 0x000023C8..0x000027E0 | size: 0x418
.rodata
.balign 8

# .rodata:0x0 | 0x23C8 | size: 0x9
.obj str_S_doa_01_las_00013e30, local
	.string "S_doa_01"
.endobj str_S_doa_01_las_00013e30

# .rodata:0x9 | 0x23D1 | size: 0x3
.obj gap_03_000023D1_rodata, global
.hidden gap_03_000023D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023D1_rodata

# .rodata:0xC | 0x23D4 | size: 0x9
.obj str_S_doa_02_las_00013e3c, local
	.string "S_doa_02"
.endobj str_S_doa_02_las_00013e3c

# .rodata:0x15 | 0x23DD | size: 0x3
.obj gap_03_000023DD_rodata, global
.hidden gap_03_000023DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023DD_rodata

# .rodata:0x18 | 0x23E0 | size: 0x7
.obj str_e_bero_las_00013e48, local
	.string "e_bero"
.endobj str_e_bero_las_00013e48

# .rodata:0x1F | 0x23E7 | size: 0x1
.obj gap_03_000023E7_rodata, global
.hidden gap_03_000023E7_rodata
	.byte 0x00
.endobj gap_03_000023E7_rodata

# .rodata:0x20 | 0x23E8 | size: 0x7
.obj str_las_22_las_00013e50, local
	.string "las_22"
.endobj str_las_22_las_00013e50

# .rodata:0x27 | 0x23EF | size: 0x1
.obj gap_03_000023EF_rodata, global
.hidden gap_03_000023EF_rodata
	.byte 0x00
.endobj gap_03_000023EF_rodata

# .rodata:0x28 | 0x23F0 | size: 0x7
.obj str_w_bero_las_00013e58, local
	.string "w_bero"
.endobj str_w_bero_las_00013e58

# .rodata:0x2F | 0x23F7 | size: 0x1
.obj gap_03_000023F7_rodata, global
.hidden gap_03_000023F7_rodata
	.byte 0x00
.endobj gap_03_000023F7_rodata

# .rodata:0x30 | 0x23F8 | size: 0x9
.obj str_s_bero_1_las_00013e60, local
	.string "s_bero_1"
.endobj str_s_bero_1_las_00013e60

# .rodata:0x39 | 0x2401 | size: 0x3
.obj gap_03_00002401_rodata, global
.hidden gap_03_00002401_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002401_rodata

# .rodata:0x3C | 0x2404 | size: 0x7
.obj str_las_19_las_00013e6c, local
	.string "las_19"
.endobj str_las_19_las_00013e6c

# .rodata:0x43 | 0x240B | size: 0x1
.obj gap_03_0000240B_rodata, global
.hidden gap_03_0000240B_rodata
	.byte 0x00
.endobj gap_03_0000240B_rodata

# .rodata:0x44 | 0x240C | size: 0x7
.obj str_n_bero_las_00013e74, local
	.string "n_bero"
.endobj str_n_bero_las_00013e74

# .rodata:0x4B | 0x2413 | size: 0x1
.obj gap_03_00002413_rodata, global
.hidden gap_03_00002413_rodata
	.byte 0x00
.endobj gap_03_00002413_rodata

# .rodata:0x4C | 0x2414 | size: 0x9
.obj str_s_bero_2_las_00013e7c, local
	.string "s_bero_2"
.endobj str_s_bero_2_las_00013e7c

# .rodata:0x55 | 0x241D | size: 0x3
.obj gap_03_0000241D_rodata, global
.hidden gap_03_0000241D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000241D_rodata

# .rodata:0x58 | 0x2420 | size: 0x7
.obj str_las_21_las_00013e88, local
	.string "las_21"
.endobj str_las_21_las_00013e88

# .rodata:0x5F | 0x2427 | size: 0x1
.obj gap_03_00002427_rodata, global
.hidden gap_03_00002427_rodata
	.byte 0x00
.endobj gap_03_00002427_rodata

# .rodata:0x60 | 0x2428 | size: 0xA
.obj str_S_hgm_01a_las_00013e90, local
	.string "S_hgm_01a"
.endobj str_S_hgm_01a_las_00013e90

# .rodata:0x6A | 0x2432 | size: 0x2
.obj gap_03_00002432_rodata, global
.hidden gap_03_00002432_rodata
	.2byte 0x0000
.endobj gap_03_00002432_rodata

# .rodata:0x6C | 0x2434 | size: 0xA
.obj str_S_hgm_02a_las_00013e9c, local
	.string "S_hgm_02a"
.endobj str_S_hgm_02a_las_00013e9c

# .rodata:0x76 | 0x243E | size: 0x2
.obj gap_03_0000243E_rodata, global
.hidden gap_03_0000243E_rodata
	.2byte 0x0000
.endobj gap_03_0000243E_rodata

# .rodata:0x78 | 0x2440 | size: 0xA
.obj str_S_hgm_03a_las_00013ea8, local
	.string "S_hgm_03a"
.endobj str_S_hgm_03a_las_00013ea8

# .rodata:0x82 | 0x244A | size: 0x2
.obj gap_03_0000244A_rodata, global
.hidden gap_03_0000244A_rodata
	.2byte 0x0000
.endobj gap_03_0000244A_rodata

# .rodata:0x84 | 0x244C | size: 0xA
.obj str_S_hgm_04a_las_00013eb4, local
	.string "S_hgm_04a"
.endobj str_S_hgm_04a_las_00013eb4

# .rodata:0x8E | 0x2456 | size: 0x2
.obj gap_03_00002456_rodata, global
.hidden gap_03_00002456_rodata
	.2byte 0x0000
.endobj gap_03_00002456_rodata

# .rodata:0x90 | 0x2458 | size: 0xA
.obj str_S_hgm_06a_las_00013ec0, local
	.string "S_hgm_06a"
.endobj str_S_hgm_06a_las_00013ec0

# .rodata:0x9A | 0x2462 | size: 0x2
.obj gap_03_00002462_rodata, global
.hidden gap_03_00002462_rodata
	.2byte 0x0000
.endobj gap_03_00002462_rodata

# .rodata:0x9C | 0x2464 | size: 0xA
.obj str_S_hgm_07a_las_00013ecc, local
	.string "S_hgm_07a"
.endobj str_S_hgm_07a_las_00013ecc

# .rodata:0xA6 | 0x246E | size: 0x2
.obj gap_03_0000246E_rodata, global
.hidden gap_03_0000246E_rodata
	.2byte 0x0000
.endobj gap_03_0000246E_rodata

# .rodata:0xA8 | 0x2470 | size: 0xA
.obj str_S_hgm_08a_las_00013ed8, local
	.string "S_hgm_08a"
.endobj str_S_hgm_08a_las_00013ed8

# .rodata:0xB2 | 0x247A | size: 0x2
.obj gap_03_0000247A_rodata, global
.hidden gap_03_0000247A_rodata
	.2byte 0x0000
.endobj gap_03_0000247A_rodata

# .rodata:0xB4 | 0x247C | size: 0xA
.obj str_S_hgm_10a_las_00013ee4, local
	.string "S_hgm_10a"
.endobj str_S_hgm_10a_las_00013ee4

# .rodata:0xBE | 0x2486 | size: 0x2
.obj gap_03_00002486_rodata, global
.hidden gap_03_00002486_rodata
	.2byte 0x0000
.endobj gap_03_00002486_rodata

# .rodata:0xC0 | 0x2488 | size: 0xA
.obj str_S_hgm_11a_las_00013ef0, local
	.string "S_hgm_11a"
.endobj str_S_hgm_11a_las_00013ef0

# .rodata:0xCA | 0x2492 | size: 0x2
.obj gap_03_00002492_rodata, global
.hidden gap_03_00002492_rodata
	.2byte 0x0000
.endobj gap_03_00002492_rodata

# .rodata:0xCC | 0x2494 | size: 0xA
.obj str_S_hgm_14a_las_00013efc, local
	.string "S_hgm_14a"
.endobj str_S_hgm_14a_las_00013efc

# .rodata:0xD6 | 0x249E | size: 0x2
.obj gap_03_0000249E_rodata, global
.hidden gap_03_0000249E_rodata
	.2byte 0x0000
.endobj gap_03_0000249E_rodata

# .rodata:0xD8 | 0x24A0 | size: 0xA
.obj str_S_hgm_15a_las_00013f08, local
	.string "S_hgm_15a"
.endobj str_S_hgm_15a_las_00013f08

# .rodata:0xE2 | 0x24AA | size: 0x2
.obj gap_03_000024AA_rodata, global
.hidden gap_03_000024AA_rodata
	.2byte 0x0000
.endobj gap_03_000024AA_rodata

# .rodata:0xE4 | 0x24AC | size: 0xA
.obj str_S_hgm_16a_las_00013f14, local
	.string "S_hgm_16a"
.endobj str_S_hgm_16a_las_00013f14

# .rodata:0xEE | 0x24B6 | size: 0x2
.obj gap_03_000024B6_rodata, global
.hidden gap_03_000024B6_rodata
	.2byte 0x0000
.endobj gap_03_000024B6_rodata

# .rodata:0xF0 | 0x24B8 | size: 0xA
.obj str_S_hgm_19a_las_00013f20, local
	.string "S_hgm_19a"
.endobj str_S_hgm_19a_las_00013f20

# .rodata:0xFA | 0x24C2 | size: 0x2
.obj gap_03_000024C2_rodata, global
.hidden gap_03_000024C2_rodata
	.2byte 0x0000
.endobj gap_03_000024C2_rodata

# .rodata:0xFC | 0x24C4 | size: 0xA
.obj str_S_hgm_20a_las_00013f2c, local
	.string "S_hgm_20a"
.endobj str_S_hgm_20a_las_00013f2c

# .rodata:0x106 | 0x24CE | size: 0x2
.obj gap_03_000024CE_rodata, global
.hidden gap_03_000024CE_rodata
	.2byte 0x0000
.endobj gap_03_000024CE_rodata

# .rodata:0x108 | 0x24D0 | size: 0xA
.obj str_S_hgm_05a_las_00013f38, local
	.string "S_hgm_05a"
.endobj str_S_hgm_05a_las_00013f38

# .rodata:0x112 | 0x24DA | size: 0x2
.obj gap_03_000024DA_rodata, global
.hidden gap_03_000024DA_rodata
	.2byte 0x0000
.endobj gap_03_000024DA_rodata

# .rodata:0x114 | 0x24DC | size: 0xA
.obj str_S_hgm_09a_las_00013f44, local
	.string "S_hgm_09a"
.endobj str_S_hgm_09a_las_00013f44

# .rodata:0x11E | 0x24E6 | size: 0x2
.obj gap_03_000024E6_rodata, global
.hidden gap_03_000024E6_rodata
	.2byte 0x0000
.endobj gap_03_000024E6_rodata

# .rodata:0x120 | 0x24E8 | size: 0xA
.obj str_S_hgm_12a_las_00013f50, local
	.string "S_hgm_12a"
.endobj str_S_hgm_12a_las_00013f50

# .rodata:0x12A | 0x24F2 | size: 0x2
.obj gap_03_000024F2_rodata, global
.hidden gap_03_000024F2_rodata
	.2byte 0x0000
.endobj gap_03_000024F2_rodata

# .rodata:0x12C | 0x24F4 | size: 0xA
.obj str_S_hgm_13a_las_00013f5c, local
	.string "S_hgm_13a"
.endobj str_S_hgm_13a_las_00013f5c

# .rodata:0x136 | 0x24FE | size: 0x2
.obj gap_03_000024FE_rodata, global
.hidden gap_03_000024FE_rodata
	.2byte 0x0000
.endobj gap_03_000024FE_rodata

# .rodata:0x138 | 0x2500 | size: 0xA
.obj str_S_hgm_17a_las_00013f68, local
	.string "S_hgm_17a"
.endobj str_S_hgm_17a_las_00013f68

# .rodata:0x142 | 0x250A | size: 0x2
.obj gap_03_0000250A_rodata, global
.hidden gap_03_0000250A_rodata
	.2byte 0x0000
.endobj gap_03_0000250A_rodata

# .rodata:0x144 | 0x250C | size: 0xA
.obj str_S_hgm_18a_las_00013f74, local
	.string "S_hgm_18a"
.endobj str_S_hgm_18a_las_00013f74

# .rodata:0x14E | 0x2516 | size: 0x2
.obj gap_03_00002516_rodata, global
.hidden gap_03_00002516_rodata
	.2byte 0x0000
.endobj gap_03_00002516_rodata

# .rodata:0x150 | 0x2518 | size: 0xA
.obj str_S_hgm_01b_las_00013f80, local
	.string "S_hgm_01b"
.endobj str_S_hgm_01b_las_00013f80

# .rodata:0x15A | 0x2522 | size: 0x2
.obj gap_03_00002522_rodata, global
.hidden gap_03_00002522_rodata
	.2byte 0x0000
.endobj gap_03_00002522_rodata

# .rodata:0x15C | 0x2524 | size: 0xA
.obj str_S_hgm_02b_las_00013f8c, local
	.string "S_hgm_02b"
.endobj str_S_hgm_02b_las_00013f8c

# .rodata:0x166 | 0x252E | size: 0x2
.obj gap_03_0000252E_rodata, global
.hidden gap_03_0000252E_rodata
	.2byte 0x0000
.endobj gap_03_0000252E_rodata

# .rodata:0x168 | 0x2530 | size: 0xA
.obj str_S_hgm_03b_las_00013f98, local
	.string "S_hgm_03b"
.endobj str_S_hgm_03b_las_00013f98

# .rodata:0x172 | 0x253A | size: 0x2
.obj gap_03_0000253A_rodata, global
.hidden gap_03_0000253A_rodata
	.2byte 0x0000
.endobj gap_03_0000253A_rodata

# .rodata:0x174 | 0x253C | size: 0xA
.obj str_S_hgm_04b_las_00013fa4, local
	.string "S_hgm_04b"
.endobj str_S_hgm_04b_las_00013fa4

# .rodata:0x17E | 0x2546 | size: 0x2
.obj gap_03_00002546_rodata, global
.hidden gap_03_00002546_rodata
	.2byte 0x0000
.endobj gap_03_00002546_rodata

# .rodata:0x180 | 0x2548 | size: 0xA
.obj str_S_hgm_06b_las_00013fb0, local
	.string "S_hgm_06b"
.endobj str_S_hgm_06b_las_00013fb0

# .rodata:0x18A | 0x2552 | size: 0x2
.obj gap_03_00002552_rodata, global
.hidden gap_03_00002552_rodata
	.2byte 0x0000
.endobj gap_03_00002552_rodata

# .rodata:0x18C | 0x2554 | size: 0xA
.obj str_S_hgm_07b_las_00013fbc, local
	.string "S_hgm_07b"
.endobj str_S_hgm_07b_las_00013fbc

# .rodata:0x196 | 0x255E | size: 0x2
.obj gap_03_0000255E_rodata, global
.hidden gap_03_0000255E_rodata
	.2byte 0x0000
.endobj gap_03_0000255E_rodata

# .rodata:0x198 | 0x2560 | size: 0xA
.obj str_S_hgm_08b_las_00013fc8, local
	.string "S_hgm_08b"
.endobj str_S_hgm_08b_las_00013fc8

# .rodata:0x1A2 | 0x256A | size: 0x2
.obj gap_03_0000256A_rodata, global
.hidden gap_03_0000256A_rodata
	.2byte 0x0000
.endobj gap_03_0000256A_rodata

# .rodata:0x1A4 | 0x256C | size: 0xA
.obj str_S_hgm_10b_las_00013fd4, local
	.string "S_hgm_10b"
.endobj str_S_hgm_10b_las_00013fd4

# .rodata:0x1AE | 0x2576 | size: 0x2
.obj gap_03_00002576_rodata, global
.hidden gap_03_00002576_rodata
	.2byte 0x0000
.endobj gap_03_00002576_rodata

# .rodata:0x1B0 | 0x2578 | size: 0xA
.obj str_S_hgm_11b_las_00013fe0, local
	.string "S_hgm_11b"
.endobj str_S_hgm_11b_las_00013fe0

# .rodata:0x1BA | 0x2582 | size: 0x2
.obj gap_03_00002582_rodata, global
.hidden gap_03_00002582_rodata
	.2byte 0x0000
.endobj gap_03_00002582_rodata

# .rodata:0x1BC | 0x2584 | size: 0xA
.obj str_S_hgm_14b_las_00013fec, local
	.string "S_hgm_14b"
.endobj str_S_hgm_14b_las_00013fec

# .rodata:0x1C6 | 0x258E | size: 0x2
.obj gap_03_0000258E_rodata, global
.hidden gap_03_0000258E_rodata
	.2byte 0x0000
.endobj gap_03_0000258E_rodata

# .rodata:0x1C8 | 0x2590 | size: 0xA
.obj str_S_hgm_15b_las_00013ff8, local
	.string "S_hgm_15b"
.endobj str_S_hgm_15b_las_00013ff8

# .rodata:0x1D2 | 0x259A | size: 0x2
.obj gap_03_0000259A_rodata, global
.hidden gap_03_0000259A_rodata
	.2byte 0x0000
.endobj gap_03_0000259A_rodata

# .rodata:0x1D4 | 0x259C | size: 0xA
.obj str_S_hgm_16b_las_00014004, local
	.string "S_hgm_16b"
.endobj str_S_hgm_16b_las_00014004

# .rodata:0x1DE | 0x25A6 | size: 0x2
.obj gap_03_000025A6_rodata, global
.hidden gap_03_000025A6_rodata
	.2byte 0x0000
.endobj gap_03_000025A6_rodata

# .rodata:0x1E0 | 0x25A8 | size: 0xA
.obj str_S_hgm_05b_las_00014010, local
	.string "S_hgm_05b"
.endobj str_S_hgm_05b_las_00014010

# .rodata:0x1EA | 0x25B2 | size: 0x2
.obj gap_03_000025B2_rodata, global
.hidden gap_03_000025B2_rodata
	.2byte 0x0000
.endobj gap_03_000025B2_rodata

# .rodata:0x1EC | 0x25B4 | size: 0xA
.obj str_S_hgm_09b_las_0001401c, local
	.string "S_hgm_09b"
.endobj str_S_hgm_09b_las_0001401c

# .rodata:0x1F6 | 0x25BE | size: 0x2
.obj gap_03_000025BE_rodata, global
.hidden gap_03_000025BE_rodata
	.2byte 0x0000
.endobj gap_03_000025BE_rodata

# .rodata:0x1F8 | 0x25C0 | size: 0xA
.obj str_S_hgm_12b_las_00014028, local
	.string "S_hgm_12b"
.endobj str_S_hgm_12b_las_00014028

# .rodata:0x202 | 0x25CA | size: 0x2
.obj gap_03_000025CA_rodata, global
.hidden gap_03_000025CA_rodata
	.2byte 0x0000
.endobj gap_03_000025CA_rodata

# .rodata:0x204 | 0x25CC | size: 0xA
.obj str_S_hgm_13b_las_00014034, local
	.string "S_hgm_13b"
.endobj str_S_hgm_13b_las_00014034

# .rodata:0x20E | 0x25D6 | size: 0x2
.obj gap_03_000025D6_rodata, global
.hidden gap_03_000025D6_rodata
	.2byte 0x0000
.endobj gap_03_000025D6_rodata

# .rodata:0x210 | 0x25D8 | size: 0xA
.obj str_S_hgm_17b_las_00014040, local
	.string "S_hgm_17b"
.endobj str_S_hgm_17b_las_00014040

# .rodata:0x21A | 0x25E2 | size: 0x2
.obj gap_03_000025E2_rodata, global
.hidden gap_03_000025E2_rodata
	.2byte 0x0000
.endobj gap_03_000025E2_rodata

# .rodata:0x21C | 0x25E4 | size: 0xA
.obj str_S_hgm_21a_las_0001404c, local
	.string "S_hgm_21a"
.endobj str_S_hgm_21a_las_0001404c

# .rodata:0x226 | 0x25EE | size: 0x2
.obj gap_03_000025EE_rodata, global
.hidden gap_03_000025EE_rodata
	.2byte 0x0000
.endobj gap_03_000025EE_rodata

# .rodata:0x228 | 0x25F0 | size: 0xA
.obj str_S_hgm_21b_las_00014058, local
	.string "S_hgm_21b"
.endobj str_S_hgm_21b_las_00014058

# .rodata:0x232 | 0x25FA | size: 0x2
.obj gap_03_000025FA_rodata, global
.hidden gap_03_000025FA_rodata
	.2byte 0x0000
.endobj gap_03_000025FA_rodata

# .rodata:0x234 | 0x25FC | size: 0xA
.obj str_S_hgm_22a_las_00014064, local
	.string "S_hgm_22a"
.endobj str_S_hgm_22a_las_00014064

# .rodata:0x23E | 0x2606 | size: 0x2
.obj gap_03_00002606_rodata, global
.hidden gap_03_00002606_rodata
	.2byte 0x0000
.endobj gap_03_00002606_rodata

# .rodata:0x240 | 0x2608 | size: 0xA
.obj str_S_hgm_22b_las_00014070, local
	.string "S_hgm_22b"
.endobj str_S_hgm_22b_las_00014070

# .rodata:0x24A | 0x2612 | size: 0x2
.obj gap_03_00002612_rodata, global
.hidden gap_03_00002612_rodata
	.2byte 0x0000
.endobj gap_03_00002612_rodata

# .rodata:0x24C | 0x2614 | size: 0xA
.obj str_S_hgm_23a_las_0001407c, local
	.string "S_hgm_23a"
.endobj str_S_hgm_23a_las_0001407c

# .rodata:0x256 | 0x261E | size: 0x2
.obj gap_03_0000261E_rodata, global
.hidden gap_03_0000261E_rodata
	.2byte 0x0000
.endobj gap_03_0000261E_rodata

# .rodata:0x258 | 0x2620 | size: 0xA
.obj str_S_hgm_23b_las_00014088, local
	.string "S_hgm_23b"
.endobj str_S_hgm_23b_las_00014088

# .rodata:0x262 | 0x262A | size: 0x2
.obj gap_03_0000262A_rodata, global
.hidden gap_03_0000262A_rodata
	.2byte 0x0000
.endobj gap_03_0000262A_rodata

# .rodata:0x264 | 0x262C | size: 0xB
.obj str_S_move_dai_las_00014094, local
	.string "S_move_dai"
.endobj str_S_move_dai_las_00014094

# .rodata:0x26F | 0x2637 | size: 0x1
.obj gap_03_00002637_rodata, global
.hidden gap_03_00002637_rodata
	.byte 0x00
.endobj gap_03_00002637_rodata

# .rodata:0x270 | 0x2638 | size: 0xB
.obj str_A_move_dai_las_000140a0, local
	.string "A_move_dai"
.endobj str_A_move_dai_las_000140a0

# .rodata:0x27B | 0x2643 | size: 0x1
.obj gap_03_00002643_rodata, global
.hidden gap_03_00002643_rodata
	.byte 0x00
.endobj gap_03_00002643_rodata

# .rodata:0x27C | 0x2644 | size: 0xB
.obj str_S_hosi_02a_las_000140ac, local
	.string "S_hosi_02a"
.endobj str_S_hosi_02a_las_000140ac

# .rodata:0x287 | 0x264F | size: 0x1
.obj gap_03_0000264F_rodata, global
.hidden gap_03_0000264F_rodata
	.byte 0x00
.endobj gap_03_0000264F_rodata

# .rodata:0x288 | 0x2650 | size: 0xB
.obj str_S_hosi_02b_las_000140b8, local
	.string "S_hosi_02b"
.endobj str_S_hosi_02b_las_000140b8

# .rodata:0x293 | 0x265B | size: 0x1
.obj gap_03_0000265B_rodata, global
.hidden gap_03_0000265B_rodata
	.byte 0x00
.endobj gap_03_0000265B_rodata

# .rodata:0x294 | 0x265C | size: 0xB
.obj str_S_hosi_03a_las_000140c4, local
	.string "S_hosi_03a"
.endobj str_S_hosi_03a_las_000140c4

# .rodata:0x29F | 0x2667 | size: 0x1
.obj gap_03_00002667_rodata, global
.hidden gap_03_00002667_rodata
	.byte 0x00
.endobj gap_03_00002667_rodata

# .rodata:0x2A0 | 0x2668 | size: 0xB
.obj str_S_hosi_03b_las_000140d0, local
	.string "S_hosi_03b"
.endobj str_S_hosi_03b_las_000140d0

# .rodata:0x2AB | 0x2673 | size: 0x1
.obj gap_03_00002673_rodata, global
.hidden gap_03_00002673_rodata
	.byte 0x00
.endobj gap_03_00002673_rodata

# .rodata:0x2AC | 0x2674 | size: 0xB
.obj str_S_hosi_04a_las_000140dc, local
	.string "S_hosi_04a"
.endobj str_S_hosi_04a_las_000140dc

# .rodata:0x2B7 | 0x267F | size: 0x1
.obj gap_03_0000267F_rodata, global
.hidden gap_03_0000267F_rodata
	.byte 0x00
.endobj gap_03_0000267F_rodata

# .rodata:0x2B8 | 0x2680 | size: 0xB
.obj str_S_hosi_04b_las_000140e8, local
	.string "S_hosi_04b"
.endobj str_S_hosi_04b_las_000140e8

# .rodata:0x2C3 | 0x268B | size: 0x1
.obj gap_03_0000268B_rodata, global
.hidden gap_03_0000268B_rodata
	.byte 0x00
.endobj gap_03_0000268B_rodata

# .rodata:0x2C4 | 0x268C | size: 0xB
.obj str_S_hosi_05a_las_000140f4, local
	.string "S_hosi_05a"
.endobj str_S_hosi_05a_las_000140f4

# .rodata:0x2CF | 0x2697 | size: 0x1
.obj gap_03_00002697_rodata, global
.hidden gap_03_00002697_rodata
	.byte 0x00
.endobj gap_03_00002697_rodata

# .rodata:0x2D0 | 0x2698 | size: 0xB
.obj str_S_hosi_05b_las_00014100, local
	.string "S_hosi_05b"
.endobj str_S_hosi_05b_las_00014100

# .rodata:0x2DB | 0x26A3 | size: 0x1
.obj gap_03_000026A3_rodata, global
.hidden gap_03_000026A3_rodata
	.byte 0x00
.endobj gap_03_000026A3_rodata

# .rodata:0x2DC | 0x26A4 | size: 0xB
.obj str_S_hosi_06a_las_0001410c, local
	.string "S_hosi_06a"
.endobj str_S_hosi_06a_las_0001410c

# .rodata:0x2E7 | 0x26AF | size: 0x1
.obj gap_03_000026AF_rodata, global
.hidden gap_03_000026AF_rodata
	.byte 0x00
.endobj gap_03_000026AF_rodata

# .rodata:0x2E8 | 0x26B0 | size: 0xB
.obj str_S_hosi_06b_las_00014118, local
	.string "S_hosi_06b"
.endobj str_S_hosi_06b_las_00014118

# .rodata:0x2F3 | 0x26BB | size: 0x1
.obj gap_03_000026BB_rodata, global
.hidden gap_03_000026BB_rodata
	.byte 0x00
.endobj gap_03_000026BB_rodata

# .rodata:0x2F4 | 0x26BC | size: 0xB
.obj str_S_hosi_07a_las_00014124, local
	.string "S_hosi_07a"
.endobj str_S_hosi_07a_las_00014124

# .rodata:0x2FF | 0x26C7 | size: 0x1
.obj gap_03_000026C7_rodata, global
.hidden gap_03_000026C7_rodata
	.byte 0x00
.endobj gap_03_000026C7_rodata

# .rodata:0x300 | 0x26C8 | size: 0xB
.obj str_S_hosi_07b_las_00014130, local
	.string "S_hosi_07b"
.endobj str_S_hosi_07b_las_00014130

# .rodata:0x30B | 0x26D3 | size: 0x1
.obj gap_03_000026D3_rodata, global
.hidden gap_03_000026D3_rodata
	.byte 0x00
.endobj gap_03_000026D3_rodata

# .rodata:0x30C | 0x26D4 | size: 0xB
.obj str_S_hosi_08a_las_0001413c, local
	.string "S_hosi_08a"
.endobj str_S_hosi_08a_las_0001413c

# .rodata:0x317 | 0x26DF | size: 0x1
.obj gap_03_000026DF_rodata, global
.hidden gap_03_000026DF_rodata
	.byte 0x00
.endobj gap_03_000026DF_rodata

# .rodata:0x318 | 0x26E0 | size: 0xB
.obj str_S_hosi_08b_las_00014148, local
	.string "S_hosi_08b"
.endobj str_S_hosi_08b_las_00014148

# .rodata:0x323 | 0x26EB | size: 0x1
.obj gap_03_000026EB_rodata, global
.hidden gap_03_000026EB_rodata
	.byte 0x00
.endobj gap_03_000026EB_rodata

# .rodata:0x324 | 0x26EC | size: 0x17
.obj str_SFX_STG8_STAR_LIGHTU_las_00014154, local
	.string "SFX_STG8_STAR_LIGHTUP2"
.endobj str_SFX_STG8_STAR_LIGHTU_las_00014154

# .rodata:0x33B | 0x2703 | size: 0x1
.obj gap_03_00002703_rodata, global
.hidden gap_03_00002703_rodata
	.byte 0x00
.endobj gap_03_00002703_rodata

# .rodata:0x33C | 0x2704 | size: 0x10
.obj str_SFX_STG8_QUAKE3_las_0001416c, local
	.string "SFX_STG8_QUAKE3"
.endobj str_SFX_STG8_QUAKE3_las_0001416c

# .rodata:0x34C | 0x2714 | size: 0xB
.obj str_hosi_02_sw_las_0001417c, local
	.string "hosi_02_sw"
.endobj str_hosi_02_sw_las_0001417c

# .rodata:0x357 | 0x271F | size: 0x1
.obj gap_03_0000271F_rodata, global
.hidden gap_03_0000271F_rodata
	.byte 0x00
.endobj gap_03_0000271F_rodata

# .rodata:0x358 | 0x2720 | size: 0xB
.obj str_hosi_03_sw_las_00014188, local
	.string "hosi_03_sw"
.endobj str_hosi_03_sw_las_00014188

# .rodata:0x363 | 0x272B | size: 0x1
.obj gap_03_0000272B_rodata, global
.hidden gap_03_0000272B_rodata
	.byte 0x00
.endobj gap_03_0000272B_rodata

# .rodata:0x364 | 0x272C | size: 0xB
.obj str_hosi_04_sw_las_00014194, local
	.string "hosi_04_sw"
.endobj str_hosi_04_sw_las_00014194

# .rodata:0x36F | 0x2737 | size: 0x1
.obj gap_03_00002737_rodata, global
.hidden gap_03_00002737_rodata
	.byte 0x00
.endobj gap_03_00002737_rodata

# .rodata:0x370 | 0x2738 | size: 0xB
.obj str_hosi_05_sw_las_000141a0, local
	.string "hosi_05_sw"
.endobj str_hosi_05_sw_las_000141a0

# .rodata:0x37B | 0x2743 | size: 0x1
.obj gap_03_00002743_rodata, global
.hidden gap_03_00002743_rodata
	.byte 0x00
.endobj gap_03_00002743_rodata

# .rodata:0x37C | 0x2744 | size: 0xB
.obj str_hosi_06_sw_las_000141ac, local
	.string "hosi_06_sw"
.endobj str_hosi_06_sw_las_000141ac

# .rodata:0x387 | 0x274F | size: 0x1
.obj gap_03_0000274F_rodata, global
.hidden gap_03_0000274F_rodata
	.byte 0x00
.endobj gap_03_0000274F_rodata

# .rodata:0x388 | 0x2750 | size: 0xB
.obj str_hosi_07_sw_las_000141b8, local
	.string "hosi_07_sw"
.endobj str_hosi_07_sw_las_000141b8

# .rodata:0x393 | 0x275B | size: 0x1
.obj gap_03_0000275B_rodata, global
.hidden gap_03_0000275B_rodata
	.byte 0x00
.endobj gap_03_0000275B_rodata

# .rodata:0x394 | 0x275C | size: 0xB
.obj str_hosi_08_sw_las_000141c4, local
	.string "hosi_08_sw"
.endobj str_hosi_08_sw_las_000141c4

# .rodata:0x39F | 0x2767 | size: 0x1
.obj gap_03_00002767_rodata, global
.hidden gap_03_00002767_rodata
	.byte 0x00
.endobj gap_03_00002767_rodata

# .rodata:0x3A0 | 0x2768 | size: 0xD
.obj str_stardust_n64_las_000141d0, local
	.string "stardust_n64"
.endobj str_stardust_n64_las_000141d0

# .rodata:0x3AD | 0x2775 | size: 0x3
.obj gap_03_00002775_rodata, global
.hidden gap_03_00002775_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002775_rodata

# .rodata:0x3B0 | 0x2778 | size: 0x17
.obj str_SFX_STG8_STAR_LIGHTU_las_000141e0, local
	.string "SFX_STG8_STAR_LIGHTUP1"
.endobj str_SFX_STG8_STAR_LIGHTU_las_000141e0

# .rodata:0x3C7 | 0x278F | size: 0x1
.obj gap_03_0000278F_rodata, global
.hidden gap_03_0000278F_rodata
	.byte 0x00
.endobj gap_03_0000278F_rodata

# .rodata:0x3C8 | 0x2790 | size: 0xE
.obj str_BGM_STG8_LST3_las_000141f8, local
	.string "BGM_STG8_LST3"
.endobj str_BGM_STG8_LST3_las_000141f8

# .rodata:0x3D6 | 0x279E | size: 0x2
.obj gap_03_0000279E_rodata, global
.hidden gap_03_0000279E_rodata
	.2byte 0x0000
.endobj gap_03_0000279E_rodata

# .rodata:0x3D8 | 0x27A0 | size: 0xE
.obj str_ENV_STG8_LAS5_las_00014208, local
	.string "ENV_STG8_LAS5"
.endobj str_ENV_STG8_LAS5_las_00014208

# .rodata:0x3E6 | 0x27AE | size: 0x2
.obj gap_03_000027AE_rodata, global
.hidden gap_03_000027AE_rodata
	.2byte 0x0000
.endobj gap_03_000027AE_rodata

# .rodata:0x3E8 | 0x27B0 | size: 0x7
.obj str_kusari_las_00014218, local
	.string "kusari"
.endobj str_kusari_las_00014218

# .rodata:0x3EF | 0x27B7 | size: 0x1
.obj gap_03_000027B7_rodata, global
.hidden gap_03_000027B7_rodata
	.byte 0x00
.endobj gap_03_000027B7_rodata

# .rodata:0x3F0 | 0x27B8 | size: 0xB
.obj str_dai_switch_las_00014220, local
	.string "dai_switch"
.endobj str_dai_switch_las_00014220

# .rodata:0x3FB | 0x27C3 | size: 0x1
.obj gap_03_000027C3_rodata, global
.hidden gap_03_000027C3_rodata
	.byte 0x00
.endobj gap_03_000027C3_rodata

# .rodata:0x3FC | 0x27C4 | size: 0xC
.obj str_mobj_item00_las_0001422c, local
	.string "mobj_item00"
.endobj str_mobj_item00_las_0001422c

# .rodata:0x408 | 0x27D0 | size: 0xC
.obj str_mobj_item01_las_00014238, local
	.string "mobj_item01"
.endobj str_mobj_item01_las_00014238

# .rodata:0x414 | 0x27DC | size: 0x4
.obj gap_03_000027DC_rodata, global
.hidden gap_03_000027DC_rodata
	.4byte 0x00000000
.endobj gap_03_000027DC_rodata

# 0x0000D778..0x0000E940 | size: 0x11C8
.data
.balign 8

# .data:0x0 | 0xD778 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xD780 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xD784 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xD788 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xD78C | size: 0x4
.obj gap_04_0000D78C_data, global
.hidden gap_04_0000D78C_data
	.4byte 0x00000000
.endobj gap_04_0000D78C_data

# .data:0x18 | 0xD790 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xD798 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xD79C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xD7A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xD7A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xD7AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xD7B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xD7B4 | size: 0x4
.obj gap_04_0000D7B4_data, global
.hidden gap_04_0000D7B4_data
	.4byte 0x00000000
.endobj gap_04_0000D7B4_data

# .data:0x40 | 0xD7B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xD7C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xD7C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xD7C8 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_01_las_00013e30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_02_las_00013e3c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0xA8 | 0xD820 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_01_las_00013e30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_02_las_00013e3c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x100 | 0xD878 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_e_bero_las_00013e48
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_22_las_00013e50
	.4byte str_w_bero_las_00013e58
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte str_s_bero_1_las_00013e60
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_19_las_00013e6c
	.4byte str_n_bero_las_00013e74
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_s_bero_2_las_00013e7c
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_21_las_00013e88
	.4byte str_n_bero_las_00013e74
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

# .data:0x1F0 | 0xD968 | size: 0x38
.obj haguruma_hontai, local
	.4byte str_S_hgm_01a_las_00013e90
	.4byte str_S_hgm_02a_las_00013e9c
	.4byte str_S_hgm_03a_las_00013ea8
	.4byte str_S_hgm_04a_las_00013eb4
	.4byte str_S_hgm_06a_las_00013ec0
	.4byte str_S_hgm_07a_las_00013ecc
	.4byte str_S_hgm_08a_las_00013ed8
	.4byte str_S_hgm_10a_las_00013ee4
	.4byte str_S_hgm_11a_las_00013ef0
	.4byte str_S_hgm_14a_las_00013efc
	.4byte str_S_hgm_15a_las_00013f08
	.4byte str_S_hgm_16a_las_00013f14
	.4byte str_S_hgm_19a_las_00013f20
	.4byte str_S_hgm_20a_las_00013f2c
.endobj haguruma_hontai

# .data:0x228 | 0xD9A0 | size: 0x18
.obj haguruma_hontai2, local
	.4byte str_S_hgm_05a_las_00013f38
	.4byte str_S_hgm_09a_las_00013f44
	.4byte str_S_hgm_12a_las_00013f50
	.4byte str_S_hgm_13a_las_00013f5c
	.4byte str_S_hgm_17a_las_00013f68
	.4byte str_S_hgm_18a_las_00013f74
.endobj haguruma_hontai2

# .data:0x240 | 0xD9B8 | size: 0x30
.obj haguruma_kage, local
	.4byte str_S_hgm_01b_las_00013f80
	.4byte str_S_hgm_02b_las_00013f8c
	.4byte str_S_hgm_03b_las_00013f98
	.4byte str_S_hgm_04b_las_00013fa4
	.4byte str_S_hgm_06b_las_00013fb0
	.4byte str_S_hgm_07b_las_00013fbc
	.4byte str_S_hgm_08b_las_00013fc8
	.4byte str_S_hgm_10b_las_00013fd4
	.4byte str_S_hgm_11b_las_00013fe0
	.4byte str_S_hgm_14b_las_00013fec
	.4byte str_S_hgm_15b_las_00013ff8
	.4byte str_S_hgm_16b_las_00014004
.endobj haguruma_kage

# .data:0x270 | 0xD9E8 | size: 0x14
.obj haguruma_kage2, local
	.4byte str_S_hgm_05b_las_00014010
	.4byte str_S_hgm_09b_las_0001401c
	.4byte str_S_hgm_12b_las_00014028
	.4byte str_S_hgm_13b_las_00014034
	.4byte str_S_hgm_17b_las_00014040
.endobj haguruma_kage2

# .data:0x284 | 0xD9FC | size: 0x308
.obj haguruma_evt, local
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001003E
	.4byte haguruma_hontai
	.4byte 0x00010005
	.4byte 0x0000000E
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte haguruma_kage
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte haguruma_hontai2
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte haguruma_kage2
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24B1E80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_21a_las_0001404c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_21b_las_00014058
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24AD280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_22a_las_00014064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_22b_las_00014070
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24C3280
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_23a_las_0001407c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_hgm_23b_las_00014088
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24A7680
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFFFFFE98
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24A7E19
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xF24A7E19
	.4byte 0x0002001D
	.4byte 0xFE363C83
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xF24A7E80
	.4byte 0x0002001D
	.4byte 0xFE363C84
	.4byte 0x00000168
	.4byte 0x0002003B
	.4byte 0xFE363C84
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj haguruma_evt

# .data:0x58C | 0xDD04 | size: 0x34
.obj dai_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_move_dai_las_00014094
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_move_dai_las_000140a0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000A8C
	.4byte 0x0001005E
	.4byte move_dai_16_data_324
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dai_evt

# .data:0x5C0 | 0xDD38 | size: 0x38
.obj hosi_name, local
	.4byte str_S_hosi_02a_las_000140ac
	.4byte str_S_hosi_02b_las_000140b8
	.4byte str_S_hosi_03a_las_000140c4
	.4byte str_S_hosi_03b_las_000140d0
	.4byte str_S_hosi_04a_las_000140dc
	.4byte str_S_hosi_04b_las_000140e8
	.4byte str_S_hosi_05a_las_000140f4
	.4byte str_S_hosi_05b_las_00014100
	.4byte str_S_hosi_06a_las_0001410c
	.4byte str_S_hosi_06b_las_00014118
	.4byte str_S_hosi_07a_las_00014124
	.4byte str_S_hosi_07b_las_00014130
	.4byte str_S_hosi_08a_las_0001413c
	.4byte str_S_hosi_08b_las_00014148
.endobj hosi_name

# .data:0x5F8 | 0xDD70 | size: 0x4BC
.obj hosi_sw_check, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF9718881
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF9718882
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF9718883
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF9718884
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF9718885
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF9718886
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF9718887
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFEDF
	.4byte 0x00000070
	.4byte 0x0000040E
	.4byte 0xFFFFFEDF
	.4byte 0xFFFFFFD5
	.4byte 0xFFFFFFC1
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte get_hosi_name
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_STAR_LIGHTU_las_00014154
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_QUAKE3_las_0001416c
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A94
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_02_sw_las_0001417c
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_03_sw_las_00014188
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_04_sw_las_00014194
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_05_sw_las_000141a0
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_06_sw_las_000141ac
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_07_sw_las_000141b8
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_hosi_08_sw_las_000141c4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000018B
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_sw_check

# .data:0xAB4 | 0xE22C | size: 0x114
.obj hosi_onoff, local
	.4byte 0x00020059
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020057
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_stardust_n64_las_000141d0
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_STAR_LIGHTU_las_000141e0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020057
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_onoff

# .data:0xBC8 | 0xE340 | size: 0x3C
.obj hosi_02_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_02a_las_000140ac
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_02b_las_000140b8
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718881
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_02_sw_evt

# .data:0xC04 | 0xE37C | size: 0x3C
.obj hosi_03_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_03a_las_000140c4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_03b_las_000140d0
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718882
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_03_sw_evt

# .data:0xC40 | 0xE3B8 | size: 0x3C
.obj hosi_04_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_04a_las_000140dc
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_04b_las_000140e8
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718883
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_04_sw_evt

# .data:0xC7C | 0xE3F4 | size: 0x3C
.obj hosi_05_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_05a_las_000140f4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_05b_las_00014100
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718884
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_05_sw_evt

# .data:0xCB8 | 0xE430 | size: 0x3C
.obj hosi_06_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_06a_las_0001410c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_06b_las_00014118
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718885
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_06_sw_evt

# .data:0xCF4 | 0xE46C | size: 0x3C
.obj hosi_07_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_07a_las_00014124
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_07b_las_00014130
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718886
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_07_sw_evt

# .data:0xD30 | 0xE4A8 | size: 0x3C
.obj hosi_08_sw_evt, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_hosi_08a_las_0001413c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_S_hosi_08b_las_00014148
	.4byte 0x00020033
	.4byte 0xFE363C82
	.4byte 0xF9718887
	.4byte 0x0001005E
	.4byte hosi_onoff
	.4byte 0x0001005E
	.4byte hosi_sw_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_08_sw_evt

# .data:0xD6C | 0xE4E4 | size: 0x2BC
.obj hosi_init, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000018B
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_02a_las_000140ac
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_03a_las_000140c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_04a_las_000140dc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_05a_las_000140f4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_06a_las_0001410c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_07a_las_00014124
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_08a_las_0001413c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718882
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718883
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718884
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718885
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718886
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718887
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_02_sw_las_0001417c
	.4byte 0xFFFFFDDF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_02_sw_evt
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_03_sw_las_00014188
	.4byte 0xFFFFFE34
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_03_sw_evt
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_04_sw_las_00014194
	.4byte 0xFFFFFE88
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_04_sw_evt
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_05_sw_las_000141a0
	.4byte 0xFFFFFEDF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_05_sw_evt
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_06_sw_las_000141ac
	.4byte 0xFFFFFF33
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_06_sw_evt
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_07_sw_las_000141b8
	.4byte 0xFFFFFF87
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_07_sw_evt
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_red
	.4byte 0x00000000
	.4byte str_hosi_08_sw_las_000141c4
	.4byte 0xFFFFFFDB
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFF88
	.4byte hosi_08_sw_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_02b_las_000140b8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_03b_las_000140d0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_04b_las_000140e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_05b_las_00014100
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_06b_las_00014118
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_07b_las_00014130
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hosi_08b_las_00014148
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hosi_init

# .data:0x1028 | 0xE7A0 | size: 0x19C
.obj las_20_init_evt_16_data_E7A0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST3_las_000141f8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS5_las_00014208
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_01a_las_00013e90
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_08a_las_00013ed8
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_09a_las_00013f44
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_12a_las_00013f50
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_hgm_19a_las_00013f20
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte haguruma_evt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_kusari_las_00014218
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_move_dai_las_000140a0
	.4byte str_S_move_dai_las_00014094
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_move_dai_las_00014094
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_move_dai_las_000140a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_switch_red
	.4byte 0x00000000
	.4byte str_dai_switch_las_00014220
	.4byte 0xFFFFFF06
	.4byte 0xFFFFFEDE
	.4byte 0x00000064
	.4byte dai_evt
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte hosi_init
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_item00_las_0001422c
	.4byte 0x00000127
	.4byte 0xFFFFFE48
	.4byte 0xFFFFFFF1
	.4byte 0x00000088
	.4byte 0x00000000
	.4byte 0xF8406CA4
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_item01_las_00014238
	.4byte 0x00000280
	.4byte 0xFFFFFEC0
	.4byte 0xFFFFFF79
	.4byte 0x00000097
	.4byte 0x00000000
	.4byte 0xF8406CA5
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_20_init_evt_16_data_E7A0

# .data:0x11C4 | 0xE93C | size: 0x4
.obj gap_04_0000E93C_data, global
.hidden gap_04_0000E93C_data
	.4byte 0x00000000
.endobj gap_04_0000E93C_data
