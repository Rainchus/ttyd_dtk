.include "macros.inc"
.file "hei_01.o"

# 0x00000DC0..0x00000E44 | size: 0x84
.text
.balign 4

# .text:0x0 | 0xDC0 | size: 0x84
.fn set_dir, local
/* 00000DC0 00000E84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000DC4 00000E88  7C 08 02 A6 */	mflr r0
/* 00000DC8 00000E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000DCC 00000E90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00000DD0 00000E94  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000DD4 00000E98  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000DD8 00000E9C  4B FF F2 29 */	bl evtGetValue
/* 00000DDC 00000EA0  7C 7F 1B 78 */	mr r31, r3
/* 00000DE0 00000EA4  38 60 00 00 */	li r3, 0x0
/* 00000DE4 00000EA8  4B FF F2 1D */	bl partyGetPtr
/* 00000DE8 00000EAC  28 03 00 00 */	cmplwi r3, 0x0
/* 00000DEC 00000EB0  41 82 00 40 */	beq .L_00000E2C
/* 00000DF0 00000EB4  2C 1F 00 B4 */	cmpwi r31, 0xb4
/* 00000DF4 00000EB8  38 00 00 5A */	li r0, 0x5a
/* 00000DF8 00000EBC  40 81 00 08 */	ble .L_00000E00
/* 00000DFC 00000EC0  38 00 01 0E */	li r0, 0x10e
.L_00000E00:
/* 00000E00 00000EC4  20 80 01 0E */	subfic r4, r0, 0x10e
/* 00000E04 00000EC8  3C 00 43 30 */	lis r0, 0x4330
/* 00000E08 00000ECC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00000E0C 00000ED0  3C A0 00 00 */	lis r5, double_to_int_hei_00006ae0@ha
/* 00000E10 00000ED4  90 81 00 0C */	stw r4, 0xc(r1)
/* 00000E14 00000ED8  C8 25 00 00 */	lfd f1, double_to_int_hei_00006ae0@l(r5)
/* 00000E18 00000EDC  90 01 00 08 */	stw r0, 0x8(r1)
/* 00000E1C 00000EE0  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00000E20 00000EE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000E24 00000EE8  D0 03 01 0C */	stfs f0, 0x10c(r3)
/* 00000E28 00000EEC  D0 03 01 10 */	stfs f0, 0x110(r3)
.L_00000E2C:
/* 00000E2C 00000EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000E30 00000EF4  38 60 00 02 */	li r3, 0x2
/* 00000E34 00000EF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00000E38 00000EFC  7C 08 03 A6 */	mtlr r0
/* 00000E3C 00000F00  38 21 00 20 */	addi r1, r1, 0x20
/* 00000E40 00000F04  4E 80 00 20 */	blr
.endfn set_dir

# 0x00000578..0x00000C08 | size: 0x690
.rodata
.balign 8

# .rodata:0x0 | 0x578 | size: 0x7
.obj str_w_bero_hei_00006458, local
	.string "w_bero"
.endobj str_w_bero_hei_00006458

# .rodata:0x7 | 0x57F | size: 0x1
.obj gap_03_0000057F_rodata, global
.hidden gap_03_0000057F_rodata
	.byte 0x00
.endobj gap_03_0000057F_rodata

# .rodata:0x8 | 0x580 | size: 0x7
.obj str_hei_13_hei_00006460, local
	.string "hei_13"
.endobj str_hei_13_hei_00006460

# .rodata:0xF | 0x587 | size: 0x1
.obj gap_03_00000587_rodata, global
.hidden gap_03_00000587_rodata
	.byte 0x00
.endobj gap_03_00000587_rodata

# .rodata:0x10 | 0x588 | size: 0x7
.obj str_e_bero_hei_00006468, local
	.string "e_bero"
.endobj str_e_bero_hei_00006468

# .rodata:0x17 | 0x58F | size: 0x1
.obj gap_03_0000058F_rodata, global
.hidden gap_03_0000058F_rodata
	.byte 0x00
.endobj gap_03_0000058F_rodata

# .rodata:0x18 | 0x590 | size: 0x7
.obj str_nok_00_hei_00006470, local
	.string "nok_00"
.endobj str_nok_00_hei_00006470

# .rodata:0x1F | 0x597 | size: 0x1
.obj gap_03_00000597_rodata, global
.hidden gap_03_00000597_rodata
	.byte 0x00
.endobj gap_03_00000597_rodata

# .rodata:0x20 | 0x598 | size: 0x8
.obj str_dokan_h_hei_00006478, local
	.string "dokan_h"
.endobj str_dokan_h_hei_00006478

# .rodata:0x28 | 0x5A0 | size: 0x6
.obj str_dokan_hei_00006480, local
	.string "dokan"
.endobj str_dokan_hei_00006480

# .rodata:0x2E | 0x5A6 | size: 0x2
.obj gap_03_000005A6_rodata, global
.hidden gap_03_000005A6_rodata
	.2byte 0x0000
.endobj gap_03_000005A6_rodata

# .rodata:0x30 | 0x5A8 | size: 0xC
.obj str_item_kusa_2_hei_00006488, local
	.string "item_kusa_2"
.endobj str_item_kusa_2_hei_00006488

# .rodata:0x3C | 0x5B4 | size: 0xC
.obj str_item_kusa_4_hei_00006494, local
	.string "item_kusa_4"
.endobj str_item_kusa_4_hei_00006494

# .rodata:0x48 | 0x5C0 | size: 0xC
.obj str_item_kusa_7_hei_000064a0, local
	.string "item_kusa_7"
.endobj str_item_kusa_7_hei_000064a0

# .rodata:0x54 | 0x5CC | size: 0x9
.obj str_a_kusa_2_hei_000064ac, local
	.string "a_kusa_2"
.endobj str_a_kusa_2_hei_000064ac

# .rodata:0x5D | 0x5D5 | size: 0x3
.obj gap_03_000005D5_rodata, global
.hidden gap_03_000005D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005D5_rodata

# .rodata:0x60 | 0x5D8 | size: 0x7
.obj str_kusa_2_hei_000064b8, local
	.string "kusa_2"
.endobj str_kusa_2_hei_000064b8

# .rodata:0x67 | 0x5DF | size: 0x1
.obj gap_03_000005DF_rodata, global
.hidden gap_03_000005DF_rodata
	.byte 0x00
.endobj gap_03_000005DF_rodata

# .rodata:0x68 | 0x5E0 | size: 0x9
.obj str_a_kusa_3_hei_000064c0, local
	.string "a_kusa_3"
.endobj str_a_kusa_3_hei_000064c0

# .rodata:0x71 | 0x5E9 | size: 0x3
.obj gap_03_000005E9_rodata, global
.hidden gap_03_000005E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005E9_rodata

# .rodata:0x74 | 0x5EC | size: 0x7
.obj str_kusa_7_hei_000064cc, local
	.string "kusa_7"
.endobj str_kusa_7_hei_000064cc

# .rodata:0x7B | 0x5F3 | size: 0x1
.obj gap_03_000005F3_rodata, global
.hidden gap_03_000005F3_rodata
	.byte 0x00
.endobj gap_03_000005F3_rodata

# .rodata:0x7C | 0x5F4 | size: 0x9
.obj str_a_kusa_4_hei_000064d4, local
	.string "a_kusa_4"
.endobj str_a_kusa_4_hei_000064d4

# .rodata:0x85 | 0x5FD | size: 0x3
.obj gap_03_000005FD_rodata, global
.hidden gap_03_000005FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005FD_rodata

# .rodata:0x88 | 0x600 | size: 0x7
.obj str_kusa_4_hei_000064e0, local
	.string "kusa_4"
.endobj str_kusa_4_hei_000064e0

# .rodata:0x8F | 0x607 | size: 0x1
.obj gap_03_00000607_rodata, global
.hidden gap_03_00000607_rodata
	.byte 0x00
.endobj gap_03_00000607_rodata

# .rodata:0x90 | 0x608 | size: 0x9
.obj str_a_kusa_6_hei_000064e8, local
	.string "a_kusa_6"
.endobj str_a_kusa_6_hei_000064e8

# .rodata:0x99 | 0x611 | size: 0x3
.obj gap_03_00000611_rodata, global
.hidden gap_03_00000611_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000611_rodata

# .rodata:0x9C | 0x614 | size: 0x7
.obj str_kusa_6_hei_000064f4, local
	.string "kusa_6"
.endobj str_kusa_6_hei_000064f4

# .rodata:0xA3 | 0x61B | size: 0x1
.obj gap_03_0000061B_rodata, global
.hidden gap_03_0000061B_rodata
	.byte 0x00
.endobj gap_03_0000061B_rodata

# .rodata:0xA4 | 0x61C | size: 0x9
.obj str_a_kusa_7_hei_000064fc, local
	.string "a_kusa_7"
.endobj str_a_kusa_7_hei_000064fc

# .rodata:0xAD | 0x625 | size: 0x3
.obj gap_03_00000625_rodata, global
.hidden gap_03_00000625_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000625_rodata

# .rodata:0xB0 | 0x628 | size: 0x7
.obj str_kusa_9_hei_00006508, local
	.string "kusa_9"
.endobj str_kusa_9_hei_00006508

# .rodata:0xB7 | 0x62F | size: 0x1
.obj gap_03_0000062F_rodata, global
.hidden gap_03_0000062F_rodata
	.byte 0x00
.endobj gap_03_0000062F_rodata

# .rodata:0xB8 | 0x630 | size: 0x9
.obj str_a_kusa_8_hei_00006510, local
	.string "a_kusa_8"
.endobj str_a_kusa_8_hei_00006510

# .rodata:0xC1 | 0x639 | size: 0x3
.obj gap_03_00000639_rodata, global
.hidden gap_03_00000639_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000639_rodata

# .rodata:0xC4 | 0x63C | size: 0x16
.obj str_kusa_pPlane371_q0027_hei_0000651c, local
	.string "kusa_pPlane371_q00274"
.endobj str_kusa_pPlane371_q0027_hei_0000651c

# .rodata:0xDA | 0x652 | size: 0x2
.obj gap_03_00000652_rodata, global
.hidden gap_03_00000652_rodata
	.2byte 0x0000
.endobj gap_03_00000652_rodata

# .rodata:0xDC | 0x654 | size: 0xB
.obj str_anm_kusa_1_hei_00006534, local
	.string "anm_kusa_1"
.endobj str_anm_kusa_1_hei_00006534

# .rodata:0xE7 | 0x65F | size: 0x1
.obj gap_03_0000065F_rodata, global
.hidden gap_03_0000065F_rodata
	.byte 0x00
.endobj gap_03_0000065F_rodata

# .rodata:0xE8 | 0x660 | size: 0x11
.obj str_SFX_GRASS_SHAKE1_hei_00006540, local
	.string "SFX_GRASS_SHAKE1"
.endobj str_SFX_GRASS_SHAKE1_hei_00006540

# .rodata:0xF9 | 0x671 | size: 0x3
.obj gap_03_00000671_rodata, global
.hidden gap_03_00000671_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000671_rodata

# .rodata:0xFC | 0x674 | size: 0x12
.obj str_SFX_DOKAN_APPEAR1_hei_00006554, local
	.string "SFX_DOKAN_APPEAR1"
.endobj str_SFX_DOKAN_APPEAR1_hei_00006554

# .rodata:0x10E | 0x686 | size: 0x2
.obj gap_03_00000686_rodata, global
.hidden gap_03_00000686_rodata
	.2byte 0x0000
.endobj gap_03_00000686_rodata

# .rodata:0x110 | 0x688 | size: 0x9
.obj str_a_kusa_1_hei_00006568, local
	.string "a_kusa_1"
.endobj str_a_kusa_1_hei_00006568

# .rodata:0x119 | 0x691 | size: 0x3
.obj gap_03_00000691_rodata, global
.hidden gap_03_00000691_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000691_rodata

# .rodata:0x11C | 0x694 | size: 0x7
.obj str_hasi_1_hei_00006574, local
	.string "hasi_1"
.endobj str_hasi_1_hei_00006574

# .rodata:0x123 | 0x69B | size: 0x1
.obj gap_03_0000069B_rodata, global
.hidden gap_03_0000069B_rodata
	.byte 0x00
.endobj gap_03_0000069B_rodata

# .rodata:0x124 | 0x69C | size: 0x7
.obj str_hasi_2_hei_0000657c, local
	.string "hasi_2"
.endobj str_hasi_2_hei_0000657c

# .rodata:0x12B | 0x6A3 | size: 0x1
.obj gap_03_000006A3_rodata, global
.hidden gap_03_000006A3_rodata
	.byte 0x00
.endobj gap_03_000006A3_rodata

# .rodata:0x12C | 0x6A4 | size: 0x7
.obj str_hasi_3_hei_00006584, local
	.string "hasi_3"
.endobj str_hasi_3_hei_00006584

# .rodata:0x133 | 0x6AB | size: 0x1
.obj gap_03_000006AB_rodata, global
.hidden gap_03_000006AB_rodata
	.byte 0x00
.endobj gap_03_000006AB_rodata

# .rodata:0x134 | 0x6AC | size: 0x7
.obj str_hasi_4_hei_0000658c, local
	.string "hasi_4"
.endobj str_hasi_4_hei_0000658c

# .rodata:0x13B | 0x6B3 | size: 0x1
.obj gap_03_000006B3_rodata, global
.hidden gap_03_000006B3_rodata
	.byte 0x00
.endobj gap_03_000006B3_rodata

# .rodata:0x13C | 0x6B4 | size: 0x7
.obj str_hasi_5_hei_00006594, local
	.string "hasi_5"
.endobj str_hasi_5_hei_00006594

# .rodata:0x143 | 0x6BB | size: 0x1
.obj gap_03_000006BB_rodata, global
.hidden gap_03_000006BB_rodata
	.byte 0x00
.endobj gap_03_000006BB_rodata

# .rodata:0x144 | 0x6BC | size: 0x7
.obj str_hasi_6_hei_0000659c, local
	.string "hasi_6"
.endobj str_hasi_6_hei_0000659c

# .rodata:0x14B | 0x6C3 | size: 0x1
.obj gap_03_000006C3_rodata, global
.hidden gap_03_000006C3_rodata
	.byte 0x00
.endobj gap_03_000006C3_rodata

# .rodata:0x14C | 0x6C4 | size: 0x7
.obj str_hasi_7_hei_000065a4, local
	.string "hasi_7"
.endobj str_hasi_7_hei_000065a4

# .rodata:0x153 | 0x6CB | size: 0x1
.obj gap_03_000006CB_rodata, global
.hidden gap_03_000006CB_rodata
	.byte 0x00
.endobj gap_03_000006CB_rodata

# .rodata:0x154 | 0x6CC | size: 0x7
.obj str_hasi_8_hei_000065ac, local
	.string "hasi_8"
.endobj str_hasi_8_hei_000065ac

# .rodata:0x15B | 0x6D3 | size: 0x1
.obj gap_03_000006D3_rodata, global
.hidden gap_03_000006D3_rodata
	.byte 0x00
.endobj gap_03_000006D3_rodata

# .rodata:0x15C | 0x6D4 | size: 0x7
.obj str_hasi_9_hei_000065b4, local
	.string "hasi_9"
.endobj str_hasi_9_hei_000065b4

# .rodata:0x163 | 0x6DB | size: 0x1
.obj gap_03_000006DB_rodata, global
.hidden gap_03_000006DB_rodata
	.byte 0x00
.endobj gap_03_000006DB_rodata

# .rodata:0x164 | 0x6DC | size: 0x8
.obj str_hasi_10_hei_000065bc, local
	.string "hasi_10"
.endobj str_hasi_10_hei_000065bc

# .rodata:0x16C | 0x6E4 | size: 0x8
.obj str_hasi_11_hei_000065c4, local
	.string "hasi_11"
.endobj str_hasi_11_hei_000065c4

# .rodata:0x174 | 0x6EC | size: 0x8
.obj str_hasi_12_hei_000065cc, local
	.string "hasi_12"
.endobj str_hasi_12_hei_000065cc

# .rodata:0x17C | 0x6F4 | size: 0x8
.obj str_hasi_13_hei_000065d4, local
	.string "hasi_13"
.endobj str_hasi_13_hei_000065d4

# .rodata:0x184 | 0x6FC | size: 0x8
.obj str_hasi_14_hei_000065dc, local
	.string "hasi_14"
.endobj str_hasi_14_hei_000065dc

# .rodata:0x18C | 0x704 | size: 0x8
.obj str_hasi_15_hei_000065e4, local
	.string "hasi_15"
.endobj str_hasi_15_hei_000065e4

# .rodata:0x194 | 0x70C | size: 0x8
.obj str_hasi_16_hei_000065ec, local
	.string "hasi_16"
.endobj str_hasi_16_hei_000065ec

# .rodata:0x19C | 0x714 | size: 0x8
.obj str_hasi_17_hei_000065f4, local
	.string "hasi_17"
.endobj str_hasi_17_hei_000065f4

# .rodata:0x1A4 | 0x71C | size: 0x8
.obj str_hasi_18_hei_000065fc, local
	.string "hasi_18"
.endobj str_hasi_18_hei_000065fc

# .rodata:0x1AC | 0x724 | size: 0x8
.obj str_hasi_19_hei_00006604, local
	.string "hasi_19"
.endobj str_hasi_19_hei_00006604

# .rodata:0x1B4 | 0x72C | size: 0x8
.obj str_hasi_20_hei_0000660c, local
	.string "hasi_20"
.endobj str_hasi_20_hei_0000660c

# .rodata:0x1BC | 0x734 | size: 0x8
.obj str_hasi_21_hei_00006614, local
	.string "hasi_21"
.endobj str_hasi_21_hei_00006614

# .rodata:0x1C4 | 0x73C | size: 0x8
.obj str_hasi_22_hei_0000661c, local
	.string "hasi_22"
.endobj str_hasi_22_hei_0000661c

# .rodata:0x1CC | 0x744 | size: 0x8
.obj str_hasi_23_hei_00006624, local
	.string "hasi_23"
.endobj str_hasi_23_hei_00006624

# .rodata:0x1D4 | 0x74C | size: 0x8
.obj str_hasi_24_hei_0000662c, local
	.string "hasi_24"
.endobj str_hasi_24_hei_0000662c

# .rodata:0x1DC | 0x754 | size: 0x8
.obj str_hasi_25_hei_00006634, local
	.string "hasi_25"
.endobj str_hasi_25_hei_00006634

# .rodata:0x1E4 | 0x75C | size: 0xC
.obj str_OFF_hei_01c_hei_0000663c, local
	.string "OFF_hei_01c"
.endobj str_OFF_hei_01c_hei_0000663c

# .rodata:0x1F0 | 0x768 | size: 0xA
.obj str_offscreen_hei_00006648, local
	.string "offscreen"
.endobj str_offscreen_hei_00006648

# .rodata:0x1FA | 0x772 | size: 0x2
.obj gap_03_00000772_rodata, global
.hidden gap_03_00000772_rodata
	.2byte 0x0000
.endobj gap_03_00000772_rodata

# .rodata:0x1FC | 0x774 | size: 0xC
.obj str_capture_img_hei_00006654, local
	.string "capture_img"
.endobj str_capture_img_hei_00006654

# .rodata:0x208 | 0x780 | size: 0x2
.obj str_S_hei_00006660, local
	.string "S"
.endobj str_S_hei_00006660

# .rodata:0x20A | 0x782 | size: 0x2
.obj gap_03_00000782_rodata, global
.hidden gap_03_00000782_rodata
	.2byte 0x0000
.endobj gap_03_00000782_rodata

# .rodata:0x20C | 0x784 | size: 0x5
.obj str_hasi_hei_00006664, local
	.string "hasi"
.endobj str_hasi_hei_00006664

# .rodata:0x211 | 0x789 | size: 0x3
.obj gap_03_00000789_rodata, global
.hidden gap_03_00000789_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000789_rodata

# .rodata:0x214 | 0x78C | size: 0xF
.obj str_SFX_STG1_PERA1_hei_0000666c, local
	.string "SFX_STG1_PERA1"
.endobj str_SFX_STG1_PERA1_hei_0000666c

# .rodata:0x223 | 0x79B | size: 0x1
.obj gap_03_0000079B_rodata, global
.hidden gap_03_0000079B_rodata
	.byte 0x00
.endobj gap_03_0000079B_rodata

# .rodata:0x224 | 0x79C | size: 0x4
.obj str_A_1_hei_0000667c, local
	.string "A_1"
.endobj str_A_1_hei_0000667c

# .rodata:0x228 | 0x7A0 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_hei_00006680, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_hei_00006680

# .rodata:0x23C | 0x7B4 | size: 0xA
.obj str_bg_switch_hei_00006694, local
	.string "bg_switch"
.endobj str_bg_switch_hei_00006694

# .rodata:0x246 | 0x7BE | size: 0x2
.obj gap_03_000007BE_rodata, global
.hidden gap_03_000007BE_rodata
	.2byte 0x0000
.endobj gap_03_000007BE_rodata

# .rodata:0x248 | 0x7C0 | size: 0x7
.obj str_a_hasi_hei_000066a0, local
	.string "a_hasi"
.endobj str_a_hasi_hei_000066a0

# .rodata:0x24F | 0x7C7 | size: 0x1
.obj gap_03_000007C7_rodata, global
.hidden gap_03_000007C7_rodata
	.byte 0x00
.endobj gap_03_000007C7_rodata

# .rodata:0x250 | 0x7C8 | size: 0xB
.obj str_ノコタロウ_hei_000066a8, local
	.4byte 0x836D8352
	.4byte 0x835E838D
	.byte 0x83, 0x45, 0x00
.endobj str_ノコタロウ_hei_000066a8

# .rodata:0x25B | 0x7D3 | size: 0x1
.obj gap_03_000007D3_rodata, global
.hidden gap_03_000007D3_rodata
	.byte 0x00
.endobj gap_03_000007D3_rodata

# .rodata:0x25C | 0x7D4 | size: 0x8
.obj str_PNK_Y_2_hei_000066b4, local
	.string "PNK_Y_2"
.endobj str_PNK_Y_2_hei_000066b4

# .rodata:0x264 | 0x7DC | size: 0xC
.obj str_stg1_hei_07_hei_000066bc, local
	.string "stg1_hei_07"
.endobj str_stg1_hei_07_hei_000066bc

# .rodata:0x270 | 0x7E8 | size: 0x8
.obj str_PNK_S_1_hei_000066c8, local
	.string "PNK_S_1"
.endobj str_PNK_S_1_hei_000066c8

# .rodata:0x278 | 0x7F0 | size: 0xC
.obj str_stg1_hei_09_hei_000066d0, local
	.string "stg1_hei_09"
.endobj str_stg1_hei_09_hei_000066d0

# .rodata:0x284 | 0x7FC | size: 0x6
.obj str_party_hei_000066dc, local
	.string "party"
.endobj str_party_hei_000066dc

# .rodata:0x28A | 0x802 | size: 0x2
.obj gap_03_00000802_rodata, global
.hidden gap_03_00000802_rodata
	.2byte 0x0000
.endobj gap_03_00000802_rodata

# .rodata:0x28C | 0x804 | size: 0x13
.obj str_stg1_hei_12_yesno1_hei_000066e4, local
	.string "stg1_hei_12_yesno1"
.endobj str_stg1_hei_12_yesno1_hei_000066e4

# .rodata:0x29F | 0x817 | size: 0x1
.obj gap_03_00000817_rodata, global
.hidden gap_03_00000817_rodata
	.byte 0x00
.endobj gap_03_00000817_rodata

# .rodata:0x2A0 | 0x818 | size: 0x17
.obj str_scrl_auto_once_stop_hei_000066f8, local
	.string "<scrl_auto><once_stop>"
.endobj str_scrl_auto_once_stop_hei_000066f8

# .rodata:0x2B7 | 0x82F | size: 0x1
.obj gap_03_0000082F_rodata, global
.hidden gap_03_0000082F_rodata
	.byte 0x00
.endobj gap_03_0000082F_rodata

# .rodata:0x2B8 | 0x830 | size: 0xC
.obj str_stg1_hei_10_hei_00006710, local
	.string "stg1_hei_10"
.endobj str_stg1_hei_10_hei_00006710

# .rodata:0x2C4 | 0x83C | size: 0x13
.obj str_stg1_hei_12_yesno2_hei_0000671c, local
	.string "stg1_hei_12_yesno2"
.endobj str_stg1_hei_12_yesno2_hei_0000671c

# .rodata:0x2D7 | 0x84F | size: 0x1
.obj gap_03_0000084F_rodata, global
.hidden gap_03_0000084F_rodata
	.byte 0x00
.endobj gap_03_0000084F_rodata

# .rodata:0x2D8 | 0x850 | size: 0xC
.obj str_stg1_hei_11_hei_00006730, local
	.string "stg1_hei_11"
.endobj str_stg1_hei_11_hei_00006730

# .rodata:0x2E4 | 0x85C | size: 0xC
.obj str_stg1_hei_03_hei_0000673c, local
	.string "stg1_hei_03"
.endobj str_stg1_hei_03_hei_0000673c

# .rodata:0x2F0 | 0x868 | size: 0xC
.obj str_stg1_hei_04_hei_00006748, local
	.string "stg1_hei_04"
.endobj str_stg1_hei_04_hei_00006748

# .rodata:0x2FC | 0x874 | size: 0xC
.obj str_stg1_hei_05_hei_00006754, local
	.string "stg1_hei_05"
.endobj str_stg1_hei_05_hei_00006754

# .rodata:0x308 | 0x880 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_hei_00006760, local
	.string "SFX_VOICE_MARIO_SURPRISED2"
.endobj str_SFX_VOICE_MARIO_SURP_hei_00006760

# .rodata:0x323 | 0x89B | size: 0x1
.obj gap_03_0000089B_rodata, global
.hidden gap_03_0000089B_rodata
	.byte 0x00
.endobj gap_03_0000089B_rodata

# .rodata:0x324 | 0x89C | size: 0x6
.obj str_M_N_H_hei_0000677c, local
	.string "M_N_H"
.endobj str_M_N_H_hei_0000677c

# .rodata:0x32A | 0x8A2 | size: 0x2
.obj gap_03_000008A2_rodata, global
.hidden gap_03_000008A2_rodata
	.2byte 0x0000
.endobj gap_03_000008A2_rodata

# .rodata:0x32C | 0x8A4 | size: 0x6
.obj str_M_S_1_hei_00006784, local
	.string "M_S_1"
.endobj str_M_S_1_hei_00006784

# .rodata:0x332 | 0x8AA | size: 0x2
.obj gap_03_000008AA_rodata, global
.hidden gap_03_000008AA_rodata
	.2byte 0x0000
.endobj gap_03_000008AA_rodata

# .rodata:0x334 | 0x8AC | size: 0xE
.obj str_stg1_hei_05_1_hei_0000678c, local
	.string "stg1_hei_05_1"
.endobj str_stg1_hei_05_1_hei_0000678c

# .rodata:0x342 | 0x8BA | size: 0x2
.obj gap_03_000008BA_rodata, global
.hidden gap_03_000008BA_rodata
	.2byte 0x0000
.endobj gap_03_000008BA_rodata

# .rodata:0x344 | 0x8BC | size: 0x17
.obj str_SFX_VOICE_MARIO_THIN_hei_0000679c, local
	.string "SFX_VOICE_MARIO_THINK1"
.endobj str_SFX_VOICE_MARIO_THIN_hei_0000679c

# .rodata:0x35B | 0x8D3 | size: 0x1
.obj gap_03_000008D3_rodata, global
.hidden gap_03_000008D3_rodata
	.byte 0x00
.endobj gap_03_000008D3_rodata

# .rodata:0x35C | 0x8D4 | size: 0x6
.obj str_M_N_1_hei_000067b4, local
	.string "M_N_1"
.endobj str_M_N_1_hei_000067b4

# .rodata:0x362 | 0x8DA | size: 0x2
.obj gap_03_000008DA_rodata, global
.hidden gap_03_000008DA_rodata
	.2byte 0x0000
.endobj gap_03_000008DA_rodata

# .rodata:0x364 | 0x8DC | size: 0xE
.obj str_stg1_hei_05_2_hei_000067bc, local
	.string "stg1_hei_05_2"
.endobj str_stg1_hei_05_2_hei_000067bc

# .rodata:0x372 | 0x8EA | size: 0x2
.obj gap_03_000008EA_rodata, global
.hidden gap_03_000008EA_rodata
	.2byte 0x0000
.endobj gap_03_000008EA_rodata

# .rodata:0x374 | 0x8EC | size: 0x6
.obj str_M_I_2_hei_000067cc, local
	.string "M_I_2"
.endobj str_M_I_2_hei_000067cc

# .rodata:0x37A | 0x8F2 | size: 0x2
.obj gap_03_000008F2_rodata, global
.hidden gap_03_000008F2_rodata
	.2byte 0x0000
.endobj gap_03_000008F2_rodata

# .rodata:0x37C | 0x8F4 | size: 0xC
.obj str_stg1_hei_06_hei_000067d4, local
	.string "stg1_hei_06"
.endobj str_stg1_hei_06_hei_000067d4

# .rodata:0x388 | 0x900 | size: 0x19
.obj str_SFX_VOICE_MARIO_THIN_hei_000067e0, local
	.string "SFX_VOICE_MARIO_THINK1_2"
.endobj str_SFX_VOICE_MARIO_THIN_hei_000067e0

# .rodata:0x3A1 | 0x919 | size: 0x3
.obj gap_03_00000919_rodata, global
.hidden gap_03_00000919_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000919_rodata

# .rodata:0x3A4 | 0x91C | size: 0xE
.obj str_stg1_hei_06_1_hei_000067fc, local
	.string "stg1_hei_06_1"
.endobj str_stg1_hei_06_1_hei_000067fc

# .rodata:0x3B2 | 0x92A | size: 0x2
.obj gap_03_0000092A_rodata, global
.hidden gap_03_0000092A_rodata
	.2byte 0x0000
.endobj gap_03_0000092A_rodata

# .rodata:0x3B4 | 0x92C | size: 0xE
.obj str_BGM_STG1_HEI1_hei_0000680c, local
	.string "BGM_STG1_HEI1"
.endobj str_BGM_STG1_HEI1_hei_0000680c

# .rodata:0x3C2 | 0x93A | size: 0x2
.obj gap_03_0000093A_rodata, global
.hidden gap_03_0000093A_rodata
	.2byte 0x0000
.endobj gap_03_0000093A_rodata

# .rodata:0x3C4 | 0x93C | size: 0x3
.obj str_me_hei_0000681c, local
	.string "me"
.endobj str_me_hei_0000681c

# .rodata:0x3C7 | 0x93F | size: 0x1
.obj gap_03_0000093F_rodata, global
.hidden gap_03_0000093F_rodata
	.byte 0x00
.endobj gap_03_0000093F_rodata

# .rodata:0x3C8 | 0x940 | size: 0xC
.obj str_stg1_hei_12_hei_00006820, local
	.string "stg1_hei_12"
.endobj str_stg1_hei_12_hei_00006820

# .rodata:0x3D4 | 0x94C | size: 0x9
.obj str_ノコリン_hei_0000682c, local
	.4byte 0x836D8352
	.4byte 0x838A8393
	.byte 0x00
.endobj str_ノコリン_hei_0000682c

# .rodata:0x3DD | 0x955 | size: 0x3
.obj gap_03_00000955_rodata, global
.hidden gap_03_00000955_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000955_rodata

# .rodata:0x3E0 | 0x958 | size: 0x17
.obj str_SFX_STG1_NOKORIN_MOV_hei_00006838, local
	.string "SFX_STG1_NOKORIN_MOVE1"
.endobj str_SFX_STG1_NOKORIN_MOV_hei_00006838

# .rodata:0x3F7 | 0x96F | size: 0x1
.obj gap_03_0000096F_rodata, global
.hidden gap_03_0000096F_rodata
	.byte 0x00
.endobj gap_03_0000096F_rodata

# .rodata:0x3F8 | 0x970 | size: 0xF
.obj str_stg1_hei_12_01_hei_00006850, local
	.string "stg1_hei_12_01"
.endobj str_stg1_hei_12_01_hei_00006850

# .rodata:0x407 | 0x97F | size: 0x1
.obj gap_03_0000097F_rodata, global
.hidden gap_03_0000097F_rodata
	.byte 0x00
.endobj gap_03_0000097F_rodata

# .rodata:0x408 | 0x980 | size: 0x2
.obj str_a_hei_00006860, local
	.string "a"
.endobj str_a_hei_00006860

# .rodata:0x40A | 0x982 | size: 0x2
.obj gap_03_00000982_rodata, global
.hidden gap_03_00000982_rodata
	.2byte 0x0000
.endobj gap_03_00000982_rodata

# .rodata:0x40C | 0x984 | size: 0x6
.obj str_M_I_N_hei_00006864, local
	.string "M_I_N"
.endobj str_M_I_N_hei_00006864

# .rodata:0x412 | 0x98A | size: 0x2
.obj gap_03_0000098A_rodata, global
.hidden gap_03_0000098A_rodata
	.2byte 0x0000
.endobj gap_03_0000098A_rodata

# .rodata:0x414 | 0x98C | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_hei_0000686c, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_hei_0000686c

# .rodata:0x42A | 0x9A2 | size: 0x2
.obj gap_03_000009A2_rodata, global
.hidden gap_03_000009A2_rodata
	.2byte 0x0000
.endobj gap_03_000009A2_rodata

# .rodata:0x42C | 0x9A4 | size: 0x2
.obj str_b_hei_00006884, local
	.string "b"
.endobj str_b_hei_00006884

# .rodata:0x42E | 0x9A6 | size: 0x2
.obj gap_03_000009A6_rodata, global
.hidden gap_03_000009A6_rodata
	.2byte 0x0000
.endobj gap_03_000009A6_rodata

# .rodata:0x430 | 0x9A8 | size: 0xF
.obj str_stg1_hei_12_02_hei_00006888, local
	.string "stg1_hei_12_02"
.endobj str_stg1_hei_12_02_hei_00006888

# .rodata:0x43F | 0x9B7 | size: 0x1
.obj gap_03_000009B7_rodata, global
.hidden gap_03_000009B7_rodata
	.byte 0x00
.endobj gap_03_000009B7_rodata

# .rodata:0x440 | 0x9B8 | size: 0xF
.obj str_stg1_hei_12_03_hei_00006898, local
	.string "stg1_hei_12_03"
.endobj str_stg1_hei_12_03_hei_00006898

# .rodata:0x44F | 0x9C7 | size: 0x1
.obj gap_03_000009C7_rodata, global
.hidden gap_03_000009C7_rodata
	.byte 0x00
.endobj gap_03_000009C7_rodata

# .rodata:0x450 | 0x9C8 | size: 0xF
.obj str_stg1_hei_12_04_hei_000068a8, local
	.string "stg1_hei_12_04"
.endobj str_stg1_hei_12_04_hei_000068a8

# .rodata:0x45F | 0x9D7 | size: 0x1
.obj gap_03_000009D7_rodata, global
.hidden gap_03_000009D7_rodata
	.byte 0x00
.endobj gap_03_000009D7_rodata

# .rodata:0x460 | 0x9D8 | size: 0xF
.obj str_stg1_hei_12_05_hei_000068b8, local
	.string "stg1_hei_12_05"
.endobj str_stg1_hei_12_05_hei_000068b8

# .rodata:0x46F | 0x9E7 | size: 0x1
.obj gap_03_000009E7_rodata, global
.hidden gap_03_000009E7_rodata
	.byte 0x00
.endobj gap_03_000009E7_rodata

# .rodata:0x470 | 0x9E8 | size: 0xF
.obj str_stg1_hei_12_06_hei_000068c8, local
	.string "stg1_hei_12_06"
.endobj str_stg1_hei_12_06_hei_000068c8

# .rodata:0x47F | 0x9F7 | size: 0x1
.obj gap_03_000009F7_rodata, global
.hidden gap_03_000009F7_rodata
	.byte 0x00
.endobj gap_03_000009F7_rodata

# .rodata:0x480 | 0x9F8 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_hei_000068d8, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_hei_000068d8

# .rodata:0x49D | 0xA15 | size: 0x3
.obj gap_03_00000A15_rodata, global
.hidden gap_03_00000A15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A15_rodata

# .rodata:0x4A0 | 0xA18 | size: 0x12
.obj str_SFX_MARIO_DAMAGE1_hei_000068f8, local
	.string "SFX_MARIO_DAMAGE1"
.endobj str_SFX_MARIO_DAMAGE1_hei_000068f8

# .rodata:0x4B2 | 0xA2A | size: 0x2
.obj gap_03_00000A2A_rodata, global
.hidden gap_03_00000A2A_rodata
	.2byte 0x0000
.endobj gap_03_00000A2A_rodata

# .rodata:0x4B4 | 0xA2C | size: 0x6
.obj str_M_D_1_hei_0000690c, local
	.string "M_D_1"
.endobj str_M_D_1_hei_0000690c

# .rodata:0x4BA | 0xA32 | size: 0x2
.obj gap_03_00000A32_rodata, global
.hidden gap_03_00000A32_rodata
	.2byte 0x0000
.endobj gap_03_00000A32_rodata

# .rodata:0x4BC | 0xA34 | size: 0x12
.obj str_SFX_PARTY_DAMAGE1_hei_00006914, local
	.string "SFX_PARTY_DAMAGE1"
.endobj str_SFX_PARTY_DAMAGE1_hei_00006914

# .rodata:0x4CE | 0xA46 | size: 0x2
.obj gap_03_00000A46_rodata, global
.hidden gap_03_00000A46_rodata
	.2byte 0x0000
.endobj gap_03_00000A46_rodata

# .rodata:0x4D0 | 0xA48 | size: 0x8
.obj str_PNK_D_1_hei_00006928, local
	.string "PNK_D_1"
.endobj str_PNK_D_1_hei_00006928

# .rodata:0x4D8 | 0xA50 | size: 0xF
.obj str_stg1_hei_12_07_hei_00006930, local
	.string "stg1_hei_12_07"
.endobj str_stg1_hei_12_07_hei_00006930

# .rodata:0x4E7 | 0xA5F | size: 0x1
.obj gap_03_00000A5F_rodata, global
.hidden gap_03_00000A5F_rodata
	.byte 0x00
.endobj gap_03_00000A5F_rodata

# .rodata:0x4E8 | 0xA60 | size: 0x17
.obj str_SFX_STG1_NOKORIN_MOV_hei_00006940, local
	.string "SFX_STG1_NOKORIN_MOVE2"
.endobj str_SFX_STG1_NOKORIN_MOV_hei_00006940

# .rodata:0x4FF | 0xA77 | size: 0x1
.obj gap_03_00000A77_rodata, global
.hidden gap_03_00000A77_rodata
	.byte 0x00
.endobj gap_03_00000A77_rodata

# .rodata:0x500 | 0xA78 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_hei_00006958, local
	.string "SFX_VOICE_MARIO_SURPRISED1_2"
.endobj str_SFX_VOICE_MARIO_SURP_hei_00006958

# .rodata:0x51D | 0xA95 | size: 0x3
.obj gap_03_00000A95_rodata, global
.hidden gap_03_00000A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A95_rodata

# .rodata:0x520 | 0xA98 | size: 0xF
.obj str_stg1_hei_12_08_hei_00006978, local
	.string "stg1_hei_12_08"
.endobj str_stg1_hei_12_08_hei_00006978

# .rodata:0x52F | 0xAA7 | size: 0x1
.obj gap_03_00000AA7_rodata, global
.hidden gap_03_00000AA7_rodata
	.byte 0x00
.endobj gap_03_00000AA7_rodata

# .rodata:0x530 | 0xAA8 | size: 0xF
.obj str_stg1_hei_12_09_hei_00006988, local
	.string "stg1_hei_12_09"
.endobj str_stg1_hei_12_09_hei_00006988

# .rodata:0x53F | 0xAB7 | size: 0x1
.obj gap_03_00000AB7_rodata, global
.hidden gap_03_00000AB7_rodata
	.byte 0x00
.endobj gap_03_00000AB7_rodata

# .rodata:0x540 | 0xAB8 | size: 0xF
.obj str_stg1_hei_12_10_hei_00006998, local
	.string "stg1_hei_12_10"
.endobj str_stg1_hei_12_10_hei_00006998

# .rodata:0x54F | 0xAC7 | size: 0x1
.obj gap_03_00000AC7_rodata, global
.hidden gap_03_00000AC7_rodata
	.byte 0x00
.endobj gap_03_00000AC7_rodata

# .rodata:0x550 | 0xAC8 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_hei_000069a8, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_hei_000069a8

# .rodata:0x567 | 0xADF | size: 0x1
.obj gap_03_00000ADF_rodata, global
.hidden gap_03_00000ADF_rodata
	.byte 0x00
.endobj gap_03_00000ADF_rodata

# .rodata:0x568 | 0xAE0 | size: 0x6
.obj str_M_N_2_hei_000069c0, local
	.string "M_N_2"
.endobj str_M_N_2_hei_000069c0

# .rodata:0x56E | 0xAE6 | size: 0x2
.obj gap_03_00000AE6_rodata, global
.hidden gap_03_00000AE6_rodata
	.2byte 0x0000
.endobj gap_03_00000AE6_rodata

# .rodata:0x570 | 0xAE8 | size: 0x7
.obj str_mod_00_hei_000069c8, local
	.string "mod_00"
.endobj str_mod_00_hei_000069c8

# .rodata:0x577 | 0xAEF | size: 0x1
.obj gap_03_00000AEF_rodata, global
.hidden gap_03_00000AEF_rodata
	.byte 0x00
.endobj gap_03_00000AEF_rodata

# .rodata:0x578 | 0xAF0 | size: 0x7
.obj str_mod_01_hei_000069d0, local
	.string "mod_01"
.endobj str_mod_01_hei_000069d0

# .rodata:0x57F | 0xAF7 | size: 0x1
.obj gap_03_00000AF7_rodata, global
.hidden gap_03_00000AF7_rodata
	.byte 0x00
.endobj gap_03_00000AF7_rodata

# .rodata:0x580 | 0xAF8 | size: 0x17
.obj str_BGM_FF_MAIL_RECEPTIO_hei_000069d8, local
	.string "BGM_FF_MAIL_RECEPTION1"
.endobj str_BGM_FF_MAIL_RECEPTIO_hei_000069d8

# .rodata:0x597 | 0xB0F | size: 0x1
.obj gap_03_00000B0F_rodata, global
.hidden gap_03_00000B0F_rodata
	.byte 0x00
.endobj gap_03_00000B0F_rodata

# .rodata:0x598 | 0xB10 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_hei_000069f0, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_hei_000069f0

# .rodata:0x5B0 | 0xB28 | size: 0x5
.obj str_eff0_hei_00006a08, local
	.string "eff0"
.endobj str_eff0_hei_00006a08

# .rodata:0x5B5 | 0xB2D | size: 0x3
.obj gap_03_00000B2D_rodata, global
.hidden gap_03_00000B2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B2D_rodata

# .rodata:0x5B8 | 0xB30 | size: 0xC
.obj str_stg1_gon_44_hei_00006a10, local
	.string "stg1_gon_44"
.endobj str_stg1_gon_44_hei_00006a10

# .rodata:0x5C4 | 0xB3C | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_hei_00006a1c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_hei_00006a1c

# .rodata:0x5DF | 0xB57 | size: 0x1
.obj gap_03_00000B57_rodata, global
.hidden gap_03_00000B57_rodata
	.byte 0x00
.endobj gap_03_00000B57_rodata

# .rodata:0x5E0 | 0xB58 | size: 0x6
.obj str_M_N_9_hei_00006a38, local
	.string "M_N_9"
.endobj str_M_N_9_hei_00006a38

# .rodata:0x5E6 | 0xB5E | size: 0x2
.obj gap_03_00000B5E_rodata, global
.hidden gap_03_00000B5E_rodata
	.2byte 0x0000
.endobj gap_03_00000B5E_rodata

# .rodata:0x5E8 | 0xB60 | size: 0x14
.obj str_SFX_MAIL_RECEPTION2_hei_00006a40, local
	.string "SFX_MAIL_RECEPTION2"
.endobj str_SFX_MAIL_RECEPTION2_hei_00006a40

# .rodata:0x5FC | 0xB74 | size: 0x7
.obj str_M_N_10_hei_00006a54, local
	.string "M_N_10"
.endobj str_M_N_10_hei_00006a54

# .rodata:0x603 | 0xB7B | size: 0x1
.obj gap_03_00000B7B_rodata, global
.hidden gap_03_00000B7B_rodata
	.byte 0x00
.endobj gap_03_00000B7B_rodata

# .rodata:0x604 | 0xB7C | size: 0xF
.obj str_stg1_gon_44_01_hei_00006a5c, local
	.string "stg1_gon_44_01"
.endobj str_stg1_gon_44_01_hei_00006a5c

# .rodata:0x613 | 0xB8B | size: 0x1
.obj gap_03_00000B8B_rodata, global
.hidden gap_03_00000B8B_rodata
	.byte 0x00
.endobj gap_03_00000B8B_rodata

# .rodata:0x614 | 0xB8C | size: 0xC
.obj str_stg1_gon_45_hei_00006a6c, local
	.string "stg1_gon_45"
.endobj str_stg1_gon_45_hei_00006a6c

# .rodata:0x620 | 0xB98 | size: 0xC
.obj str_stg1_gon_46_hei_00006a78, local
	.string "stg1_gon_46"
.endobj str_stg1_gon_46_hei_00006a78

# .rodata:0x62C | 0xBA4 | size: 0xC
.obj str_stg1_gon_47_hei_00006a84, local
	.string "stg1_gon_47"
.endobj str_stg1_gon_47_hei_00006a84

# .rodata:0x638 | 0xBB0 | size: 0xF
.obj str_stg1_hei_02_02_hei_00006a90, local
	.string "stg1_hei_02_02"
.endobj str_stg1_hei_02_02_hei_00006a90

# .rodata:0x647 | 0xBBF | size: 0x1
.obj gap_03_00000BBF_rodata, global
.hidden gap_03_00000BBF_rodata
	.byte 0x00
.endobj gap_03_00000BBF_rodata

# .rodata:0x648 | 0xBC0 | size: 0xF
.obj str_mobj_hatenablk_hei_00006aa0, local
	.string "mobj_hatenablk"
.endobj str_mobj_hatenablk_hei_00006aa0

# .rodata:0x657 | 0xBCF | size: 0x1
.obj gap_03_00000BCF_rodata, global
.hidden gap_03_00000BCF_rodata
	.byte 0x00
.endobj gap_03_00000BCF_rodata

# .rodata:0x658 | 0xBD0 | size: 0x8
.obj str_item_01_hei_00006ab0, local
	.string "item_01"
.endobj str_item_01_hei_00006ab0

# .rodata:0x660 | 0xBD8 | size: 0x9
.obj str_anm_mizu_hei_00006ab8, local
	.string "anm_mizu"
.endobj str_anm_mizu_hei_00006ab8

# .rodata:0x669 | 0xBE1 | size: 0x3
.obj gap_03_00000BE1_rodata, global
.hidden gap_03_00000BE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BE1_rodata

# .rodata:0x66C | 0xBE4 | size: 0xE
.obj str_ENV_STG1_HEI2_hei_00006ac4, local
	.string "ENV_STG1_HEI2"
.endobj str_ENV_STG1_HEI2_hei_00006ac4

# .rodata:0x67A | 0xBF2 | size: 0x2
.obj gap_03_00000BF2_rodata, global
.hidden gap_03_00000BF2_rodata
	.2byte 0x0000
.endobj gap_03_00000BF2_rodata

# .rodata:0x67C | 0xBF4 | size: 0xA
.obj str_USIROKUSA_hei_00006ad4, local
	.string "USIROKUSA"
.endobj str_USIROKUSA_hei_00006ad4
	.2byte 0x0000

# .rodata:0x688 | 0xC00 | size: 0x8
.obj double_to_int_hei_00006ae0, local
	.double 4503601774854144
.endobj double_to_int_hei_00006ae0

# 0x00002E90..0x00005458 | size: 0x25C8
.data
.balign 8

# .data:0x0 | 0x2E90 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2E98 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2E9C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2EA0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2EA4 | size: 0x4
.obj gap_04_00002EA4_data, global
.hidden gap_04_00002EA4_data
	.4byte 0x00000000
.endobj gap_04_00002EA4_data

# .data:0x18 | 0x2EA8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2EB0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2EB4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2EB8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2EC0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2EC4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2EC8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2ECC | size: 0x4
.obj gap_04_00002ECC_data, global
.hidden gap_04_00002ECC_data
	.4byte 0x00000000
.endobj gap_04_00002ECC_data

# .data:0x40 | 0x2ED0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2ED8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2EDC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2EE0 | size: 0x14
.obj bero_out_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_out_event

# .data:0x64 | 0x2EF4 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_hei_00006458
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_13_hei_00006460
	.4byte str_e_bero_hei_00006468
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_hei_00006468
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_out_event
	.4byte str_nok_00_hei_00006470
	.4byte str_w_bero_hei_00006458
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_h_hei_00006478
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_hei_00006480
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_hei_00006480
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
	.4byte str_dokan_h_hei_00006478
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

# .data:0x190 | 0x3020 | size: 0x50
.obj evt_kusa_2, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_2_hei_00006488
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_2_hei_00006488
	.4byte 0x00000079
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x00000004
	.4byte 0xF840628A
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_2

# .data:0x1E0 | 0x3070 | size: 0x50
.obj evt_kusa_4, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_4_hei_00006494
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_4_hei_00006494
	.4byte 0x000000A3
	.4byte 0x000000BE
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x00000004
	.4byte 0xF8406278
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_4

# .data:0x230 | 0x30C0 | size: 0x50
.obj evt_kusa_7, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_7_hei_000064a0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_7_hei_000064a0
	.4byte 0x00000079
	.4byte 0xFFFFFEE3
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x00000004
	.4byte 0xF8406288
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_7

# .data:0x280 | 0x3110 | size: 0x70
.obj kusa_data, local
	.4byte 0x00000000
	.4byte str_a_kusa_2_hei_000064ac
	.4byte str_kusa_2_hei_000064b8
	.4byte evt_kusa_2
	.4byte 0x00000000
	.4byte str_a_kusa_3_hei_000064c0
	.4byte str_kusa_7_hei_000064cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_a_kusa_4_hei_000064d4
	.4byte str_kusa_4_hei_000064e0
	.4byte evt_kusa_4
	.4byte 0x00000000
	.4byte str_a_kusa_6_hei_000064e8
	.4byte str_kusa_6_hei_000064f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_a_kusa_7_hei_000064fc
	.4byte str_kusa_9_hei_00006508
	.4byte evt_kusa_7
	.4byte 0x00000000
	.4byte str_a_kusa_8_hei_00006510
	.4byte str_kusa_pPlane371_q0027_hei_0000651c
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kusa_data

# .data:0x2F0 | 0x3180 | size: 0xEC
.obj kusa_dokan, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_anm_kusa_1_hei_00006534
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_GRASS_SHAKE1_hei_00006540
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOKAN_APPEAR1_hei_00006554
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_kusa_1_hei_00006534
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_kusa_1_hei_00006534
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xF8406277
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kusa_1_hei_00006568
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00006480
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kusa_dokan

# .data:0x3DC | 0x326C | size: 0x64
.obj name_tbl, local
	.4byte str_hasi_1_hei_00006574
	.4byte str_hasi_2_hei_0000657c
	.4byte str_hasi_3_hei_00006584
	.4byte str_hasi_4_hei_0000658c
	.4byte str_hasi_5_hei_00006594
	.4byte str_hasi_6_hei_0000659c
	.4byte str_hasi_7_hei_000065a4
	.4byte str_hasi_8_hei_000065ac
	.4byte str_hasi_9_hei_000065b4
	.4byte str_hasi_10_hei_000065bc
	.4byte str_hasi_11_hei_000065c4
	.4byte str_hasi_12_hei_000065cc
	.4byte str_hasi_13_hei_000065d4
	.4byte str_hasi_14_hei_000065dc
	.4byte str_hasi_15_hei_000065e4
	.4byte str_hasi_16_hei_000065ec
	.4byte str_hasi_17_hei_000065f4
	.4byte str_hasi_18_hei_000065fc
	.4byte str_hasi_19_hei_00006604
	.4byte str_hasi_20_hei_0000660c
	.4byte str_hasi_21_hei_00006614
	.4byte str_hasi_22_hei_0000661c
	.4byte str_hasi_23_hei_00006624
	.4byte str_hasi_24_hei_0000662c
	.4byte str_hasi_25_hei_00006634
.endobj name_tbl

# .data:0x440 | 0x32D0 | size: 0x300
.obj bridge_evt_02, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF1
	.4byte 0x00000096
	.4byte 0x000001F4
	.4byte 0xFFFFFFF1
	.4byte 0x0000002D
	.4byte 0x00000055
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_hei_01c_hei_0000663c
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_hei_00006648
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_hei_00006654
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_hei_00006654
	.4byte str_OFF_hei_01c_hei_0000663c
	.4byte 0x0001003E
	.4byte name_tbl
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000036
	.4byte 0x0000008C
	.4byte 0x000001F4
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_hei_00006660
	.4byte str_offscreen_hei_00006648
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_hasi_hei_00006664
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000036
	.4byte 0x0000008C
	.4byte 0x000001F4
	.4byte 0x000000FA
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFD050F80
	.4byte 0x00020043
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte str_offscreen_hei_00006648
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000001
	.4byte str_offscreen_hei_00006648
	.4byte 0x00000001
	.4byte 0x00000036
	.4byte 0x0000008C
	.4byte 0x000001F4
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG1_PERA1_hei_0000666c
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFD050F80
	.4byte 0x00010028
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_img_set_paper_timerate
	.4byte str_capture_img_hei_00006654
	.4byte 0xF24A7F4C
	.4byte 0x00010028
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_img_set_paper_timerate
	.4byte str_capture_img_hei_00006654
	.4byte 0xF24A8419
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_img_set_paper_timerate
	.4byte str_capture_img_hei_00006654
	.4byte 0xF24A8A80
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_hei_00006654
	.4byte str_A_1_hei_0000667c
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_hei_00006654
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0x00000019
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_00006654
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_hei_00006654
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_hei_00006660
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_hei_00006680
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bridge_evt_02

# .data:0x740 | 0x35D0 | size: 0x78
.obj bridge_evt, local
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_bg_switch_hei_00006694
	.4byte 0x0002005B
	.4byte evt_mobj_delete
	.4byte str_bg_switch_hei_00006694
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte bridge_evt_02
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_hasi_hei_000066a0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000019
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bridge_evt

# .data:0x7B8 | 0x3648 | size: 0x124
.obj nokotaro_get, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_hei_000066a8
	.4byte str_PNK_Y_2_hei_000066b4
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_07_hei_000066bc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコタロウ_hei_000066a8
	.4byte str_PNK_S_1_hei_000066c8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000190
	.4byte 0x00000055
	.4byte 0x000000FF
	.4byte 0x00000190
	.4byte 0x00000028
	.4byte 0xFFFFFFF6
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte all_party_lecture_11_data_1CFD0
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_09_hei_000066d0
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotaro_get

# .data:0x8DC | 0x376C | size: 0xA0
.obj nokotaro_kanyu, local
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_hei_12_yesno1_hei_000066e4
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000001
	.4byte str_scrl_auto_once_stop_hei_000066f8
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte nokotaro_get
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_10_hei_00006710
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_hei_12_yesno2_hei_0000671c
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000001
	.4byte str_scrl_auto_once_stop_hei_000066f8
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_11_hei_00006730
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte nokotaro_get
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotaro_kanyu

# .data:0x97C | 0x380C | size: 0x450
.obj nokotaro_nakama, local
	.4byte 0x00020018
	.4byte 0xF840626E
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840626F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000020
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xF8406275
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000021
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
	.4byte 0x000001F4
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_03_hei_0000673c
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000012C
	.4byte 0x00000086
	.4byte 0x0000020C
	.4byte 0x0000012C
	.4byte 0x00000026
	.4byte 0xFFFFFFEF
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_04_hei_00006748
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001A9
	.4byte 0x00000055
	.4byte 0x000000FD
	.4byte 0x000001A9
	.4byte 0x00000026
	.4byte 0xFFFFFFF4
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C8280
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_05_hei_00006754
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_hei_00006760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_H_hei_0000677c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000001
	.4byte 0xFFFFFC18
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_05_1_hei_0000678c
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_THIN_hei_0000679c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_1_hei_000067b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_05_2_hei_000067bc
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_hei_000067cc
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_06_hei_000067d4
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_THIN_hei_000067e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_1_hei_000067b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_06_1_hei_000067fc
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x0001005E
	.4byte nokotaro_kanyu
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG1_HEI1_hei_0000680c
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xF8406275
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotaro_nakama

# .data:0xDCC | 0x3C5C | size: 0x1C
.obj nokotarou_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_hei_0000681c
	.4byte 0x00000600
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_init

# .data:0xDE8 | 0x3C78 | size: 0x8
.obj nokotarou_reg, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_reg

# .data:0xDF0 | 0x3C80 | size: 0x88
.obj nokotarou_talk_2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_hei_00006820
	.4byte 0x00000000
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x0001005E
	.4byte nokotaro_kanyu
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_talk_2

# .data:0xE78 | 0x3D08 | size: 0x10
.obj nokotarou_talk, local
	.4byte 0x0001005C
	.4byte nokotarou_talk_2
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokotarou_talk

# .data:0xE88 | 0x3D18 | size: 0xE4
.obj nokorin_pose, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_NOKORIN_MOV_hei_00006838
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ノコリン_hei_0000682c
	.4byte str_A_1_hei_0000667c
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nokorin_pose

# .data:0xF6C | 0x3DFC | size: 0xD94
.obj evt_nokorin, local
	.4byte 0x00020018
	.4byte 0xF8406276
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_01_hei_00006850
	.4byte 0x00000000
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte str_a_hei_00006860
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_hei_00006864
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_hei_0000686c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_b_hei_00006884
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
	.4byte 0x000004B0
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000226
	.4byte 0x00000059
	.4byte 0x00000117
	.4byte 0x00000226
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000172
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000172
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000190
	.4byte 0x00000059
	.4byte 0x00000117
	.4byte 0x00000190
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_02_hei_00006888
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001CC
	.4byte 0x0000007E
	.4byte 0x000001E5
	.4byte 0x000001CC
	.4byte 0x00000028
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_03_hei_00006898
	.4byte 0x00000000
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_04_hei_000068a8
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000226
	.4byte 0x00000059
	.4byte 0x00000117
	.4byte 0x00000226
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_05_hei_000068b8
	.4byte 0x00000000
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000017C
	.4byte 0x00000059
	.4byte 0x00000117
	.4byte 0x0000017C
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_06_hei_000068c8
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001CC
	.4byte 0x0000007E
	.4byte 0x000001E5
	.4byte 0x000001CC
	.4byte 0x00000028
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xFE363C8D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_hei_000068d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_DAMAGE1_hei_000068f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_1_hei_0000690c
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000E10
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
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
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xFE363C8D
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PARTY_DAMAGE1_hei_00006914
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_1_hei_00006928
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000E10
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_S_1_hei_000066c8
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_07_hei_00006930
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte nokorin_pose
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_NOKORIN_MOV_hei_00006940
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxchk
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000181
	.4byte 0x0000007E
	.4byte 0x000001E5
	.4byte 0x00000181
	.4byte 0x00000028
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF2518280
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58C
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010003
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002001B
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000C
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_hei_00006958
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_DAMAGE1_hei_000068f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_1_hei_0000690c
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFF13C
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010003
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002001B
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000D
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PARTY_DAMAGE1_hei_00006914
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_1_hei_00006928
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFF13C
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_S_1_hei_000066c8
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_08_hei_00006978
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B58C
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_NOKORIN_MOV_hei_00006940
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxchk
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF2518280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B58C
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_09_hei_00006988
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_12_10_hei_00006998
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_hei_000069a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_hei_000069c0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF8406276
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_nokorin

# .data:0x1D00 | 0x4B90 | size: 0x114
.obj npcEnt, local
	.4byte str_ノコタロウ_hei_000066a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte nokotarou_init
	.4byte nokotarou_reg
	.4byte nokotarou_talk
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
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0xFFFFFFFF
	.4byte str_ノコリン_hei_0000682c
	.4byte 0x40000620
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

# .data:0x1E14 | 0x4CA4 | size: 0x30
.obj hitDmgRetPoints, local
	.4byte str_mod_00_hei_000069c8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_01_hei_000069d0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x1E44 | 0x4CD4 | size: 0x47C
.obj peach_mail, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C8A
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_MAIL_RECEPTIO_hei_000069d8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_hei_000069f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_eff0_hei_00006a08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte evt_sub_mail_vibration
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24B1A80
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020014
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B6A80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
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
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_44_hei_00006a10
	.4byte 0x0001005B
	.4byte evt_mario_balloon_bikkuri
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
	.4byte str_SFX_VOICE_MARIO_HAND_hei_00006a1c
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set_rel
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x0000010B
	.4byte 0x00000014
	.4byte 0x00000026
	.4byte 0x00000005
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_9_hei_00006a38
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
	.4byte str_SFX_MAIL_RECEPTION2_hei_00006a40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_hei_00006a54
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_44_01_hei_00006a5c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_45_hei_00006a6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_46_hei_00006a78
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_hei_000069c0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_00006784
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg1_gon_47_hei_00006a84
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000003F
	.4byte 0x0002005B
	.4byte evt_pouch_receive_mail
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_pouch_open_mail
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_mail

# .data:0x22C0 | 0x5150 | size: 0xB8
.obj christine_hei_01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_02_02_hei_00006a90
	.4byte 0x00000000
	.4byte str_party_hei_000066dc
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_hei_000069c0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF840628D
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj christine_hei_01

# .data:0x2378 | 0x5208 | size: 0x250
.obj hei_01_init_evt_11_data_5208, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00006480
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_hatenablk_hei_00006aa0
	.4byte 0x0000013B
	.4byte 0x0000003C
	.4byte 0xFFFFFFB5
	.4byte 0x00000084
	.4byte 0x00000000
	.4byte 0xF8406279
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_hei_00006ab0
	.4byte 0x0000007D
	.4byte 0x000001C2
	.4byte 0x00000028
	.4byte 0xFFFFFE41
	.4byte 0x00000010
	.4byte 0xF840715F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_set_scale
	.4byte str_item_01_hei_00006ab0
	.4byte 0xF24A7CE6
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kusa_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00020018
	.4byte 0xF8406277
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_kusa_1_hei_00006568
	.4byte 0x00000000
	.4byte kusa_dokan
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kusa_1_hei_00006568
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_kusa_1_hei_00006534
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00006480
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mizu_hei_00006ab8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hasi_hei_00006664
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_hasi_hei_000066a0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000002
	.4byte str_bg_switch_hei_00006694
	.4byte 0xFFFFFFF8
	.4byte 0x00000028
	.4byte 0xFFFFFE3E
	.4byte bridge_evt
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte nokotaro_nakama
	.4byte 0x0001005C
	.4byte evt_nokorin
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000003E
	.4byte 0x0001005C
	.4byte peach_mail
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_HEI1_hei_0000680c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI2_hei_00006ac4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_USIROKUSA_hei_00006ad4
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000019
	.4byte 0x00020018
	.4byte 0xF840628D
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte christine_hei_01
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_01_init_evt_11_data_5208
