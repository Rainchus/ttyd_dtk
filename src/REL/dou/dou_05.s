.include "macros.inc"
.file "dou_05.o"

# 0x0000055C..0x000006F0 | size: 0x194
.text
.balign 4

# .text:0x0 | 0x55C | size: 0x30
.fn cam_displacement, local
/* 0000055C 00000620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000560 00000624  7C 08 02 A6 */	mflr r0
/* 00000564 00000628  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000568 0000062C  4B FF FB 05 */	bl camRoadGetWorkPtr
/* 0000056C 00000630  3C 80 00 00 */	lis r4, float_1p7_dou_00004770@ha
/* 00000570 00000634  C0 04 00 00 */	lfs f0, float_1p7_dou_00004770@l(r4)
/* 00000574 00000638  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 00000578 0000063C  38 60 00 02 */	li r3, 0x2
/* 0000057C 00000640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000580 00000644  7C 08 03 A6 */	mtlr r0
/* 00000584 00000648  38 21 00 10 */	addi r1, r1, 0x10
/* 00000588 0000064C  4E 80 00 20 */	blr
.endfn cam_displacement

# .text:0x30 | 0x58C | size: 0x3C
.fn alpha_set_func, local
/* 0000058C 00000650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000590 00000654  7C 08 02 A6 */	mflr r0
/* 00000594 00000658  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000598 0000065C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000059C 00000660  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000005A0 00000664  4B FF FA CD */	bl evtGetValue
/* 000005A4 00000668  3C 80 00 00 */	lis r4, _ap@ha
/* 000005A8 0000066C  38 84 00 00 */	addi r4, r4, _ap@l
/* 000005AC 00000670  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000005B0 00000674  98 64 00 00 */	stb r3, 0x0(r4)
/* 000005B4 00000678  38 60 00 02 */	li r3, 0x2
/* 000005B8 0000067C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000005BC 00000680  7C 08 03 A6 */	mtlr r0
/* 000005C0 00000684  38 21 00 10 */	addi r1, r1, 0x10
/* 000005C4 00000688  4E 80 00 20 */	blr
.endfn alpha_set_func

# .text:0x6C | 0x5C8 | size: 0x44
.fn alpha_init_func, local
/* 000005C8 0000068C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000005CC 00000690  7C 08 02 A6 */	mflr r0
/* 000005D0 00000694  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000005D4 00000698  38 80 00 01 */	li r4, 0x1
/* 000005D8 0000069C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000005DC 000006A0  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000005E0 000006A4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000005E4 000006A8  4B FF FA 89 */	bl _mapAlloc
/* 000005E8 000006AC  3C 80 00 00 */	lis r4, _ap@ha
/* 000005EC 000006B0  38 00 00 FF */	li r0, 0xff
/* 000005F0 000006B4  90 64 00 00 */	stw r3, _ap@l(r4)
/* 000005F4 000006B8  98 03 00 00 */	stb r0, 0x0(r3)
/* 000005F8 000006BC  38 60 00 02 */	li r3, 0x2
/* 000005FC 000006C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000600 000006C4  7C 08 03 A6 */	mtlr r0
/* 00000604 000006C8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000608 000006CC  4E 80 00 20 */	blr
.endfn alpha_init_func

# .text:0xB0 | 0x60C | size: 0xE4
.fn alpha_tev, local
/* 0000060C 000006D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000610 000006D4  7C 08 02 A6 */	mflr r0
/* 00000614 000006D8  38 80 00 FF */	li r4, 0xff
/* 00000618 000006DC  38 A0 00 FF */	li r5, 0xff
/* 0000061C 000006E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000620 000006E4  38 C0 00 04 */	li r6, 0x4
/* 00000624 000006E8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000628 000006EC  7C 7D 1B 78 */	mr r29, r3
/* 0000062C 000006F0  3C 60 00 00 */	lis r3, _ap@ha
/* 00000630 000006F4  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 00000634 000006F8  83 C3 00 00 */	lwz r30, _ap@l(r3)
/* 00000638 000006FC  7F E3 FB 78 */	mr r3, r31
/* 0000063C 00000700  4B FF FA 31 */	bl GXSetTevOrder
/* 00000640 00000704  3C 60 00 00 */	lis r3, zero_dou_00004590@ha
/* 00000644 00000708  88 1E 00 00 */	lbz r0, 0x0(r30)
/* 00000648 0000070C  80 A3 00 00 */	lwz r5, zero_dou_00004590@l(r3)
/* 0000064C 00000710  38 81 00 0C */	addi r4, r1, 0xc
/* 00000650 00000714  38 60 00 01 */	li r3, 0x1
/* 00000654 00000718  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00000658 0000071C  98 01 00 0B */	stb r0, 0xb(r1)
/* 0000065C 00000720  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00000660 00000724  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000664 00000728  4B FF FA 09 */	bl GXSetTevColor
/* 00000668 0000072C  7F E3 FB 78 */	mr r3, r31
/* 0000066C 00000730  38 80 00 00 */	li r4, 0x0
/* 00000670 00000734  38 A0 00 00 */	li r5, 0x0
/* 00000674 00000738  38 C0 00 00 */	li r6, 0x0
/* 00000678 0000073C  38 E0 00 01 */	li r7, 0x1
/* 0000067C 00000740  39 00 00 00 */	li r8, 0x0
/* 00000680 00000744  4B FF F9 ED */	bl GXSetTevColorOp
/* 00000684 00000748  7F E3 FB 78 */	mr r3, r31
/* 00000688 0000074C  38 80 00 00 */	li r4, 0x0
/* 0000068C 00000750  38 A0 00 00 */	li r5, 0x0
/* 00000690 00000754  38 C0 00 00 */	li r6, 0x0
/* 00000694 00000758  38 E0 00 01 */	li r7, 0x1
/* 00000698 0000075C  39 00 00 00 */	li r8, 0x0
/* 0000069C 00000760  4B FF F9 D1 */	bl GXSetTevAlphaOp
/* 000006A0 00000764  7F E3 FB 78 */	mr r3, r31
/* 000006A4 00000768  38 80 00 0F */	li r4, 0xf
/* 000006A8 0000076C  38 A0 00 0F */	li r5, 0xf
/* 000006AC 00000770  38 C0 00 0F */	li r6, 0xf
/* 000006B0 00000774  38 E0 00 00 */	li r7, 0x0
/* 000006B4 00000778  4B FF F9 B9 */	bl GXSetTevColorIn
/* 000006B8 0000077C  7F E3 FB 78 */	mr r3, r31
/* 000006BC 00000780  38 80 00 07 */	li r4, 0x7
/* 000006C0 00000784  38 A0 00 00 */	li r5, 0x0
/* 000006C4 00000788  38 C0 00 01 */	li r6, 0x1
/* 000006C8 0000078C  38 E0 00 07 */	li r7, 0x7
/* 000006CC 00000790  4B FF F9 A1 */	bl GXSetTevAlphaIn
/* 000006D0 00000794  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 000006D4 00000798  38 03 00 01 */	addi r0, r3, 0x1
/* 000006D8 0000079C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 000006DC 000007A0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000006E0 000007A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000006E4 000007A8  7C 08 03 A6 */	mtlr r0
/* 000006E8 000007AC  38 21 00 20 */	addi r1, r1, 0x20
/* 000006EC 000007B0  4E 80 00 20 */	blr
.endfn alpha_tev

# 0x00000900..0x00000AE8 | size: 0x1E8
.rodata
.balign 8

# .rodata:0x0 | 0x900 | size: 0x4
.obj zero_dou_00004590, local
	.4byte 0x00000000
.endobj zero_dou_00004590

# .rodata:0x4 | 0x904 | size: 0x9
.obj str_w_bero_1_dou_00004594, local
	.string "w_bero_1"
.endobj str_w_bero_1_dou_00004594

# .rodata:0xD | 0x90D | size: 0x3
.obj gap_03_0000090D_rodata, global
.hidden gap_03_0000090D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000090D_rodata

# .rodata:0x10 | 0x910 | size: 0x7
.obj str_dou_03_dou_000045a0, local
	.string "dou_03"
.endobj str_dou_03_dou_000045a0

# .rodata:0x17 | 0x917 | size: 0x1
.obj gap_03_00000917_rodata, global
.hidden gap_03_00000917_rodata
	.byte 0x00
.endobj gap_03_00000917_rodata

# .rodata:0x18 | 0x918 | size: 0x9
.obj str_e_bero_1_dou_000045a8, local
	.string "e_bero_1"
.endobj str_e_bero_1_dou_000045a8

# .rodata:0x21 | 0x921 | size: 0x3
.obj gap_03_00000921_rodata, global
.hidden gap_03_00000921_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000921_rodata

# .rodata:0x24 | 0x924 | size: 0x9
.obj str_w_bero_2_dou_000045b4, local
	.string "w_bero_2"
.endobj str_w_bero_2_dou_000045b4

# .rodata:0x2D | 0x92D | size: 0x3
.obj gap_03_0000092D_rodata, global
.hidden gap_03_0000092D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000092D_rodata

# .rodata:0x30 | 0x930 | size: 0x9
.obj str_e_bero_2_dou_000045c0, local
	.string "e_bero_2"
.endobj str_e_bero_2_dou_000045c0

# .rodata:0x39 | 0x939 | size: 0x3
.obj gap_03_00000939_rodata, global
.hidden gap_03_00000939_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000939_rodata

# .rodata:0x3C | 0x93C | size: 0x9
.obj str_w_bero_3_dou_000045cc, local
	.string "w_bero_3"
.endobj str_w_bero_3_dou_000045cc

# .rodata:0x45 | 0x945 | size: 0x3
.obj gap_03_00000945_rodata, global
.hidden gap_03_00000945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000945_rodata

# .rodata:0x48 | 0x948 | size: 0x9
.obj str_e_bero_3_dou_000045d8, local
	.string "e_bero_3"
.endobj str_e_bero_3_dou_000045d8

# .rodata:0x51 | 0x951 | size: 0x3
.obj gap_03_00000951_rodata, global
.hidden gap_03_00000951_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000951_rodata

# .rodata:0x54 | 0x954 | size: 0x7
.obj str_e_bero_dou_000045e4, local
	.string "e_bero"
.endobj str_e_bero_dou_000045e4

# .rodata:0x5B | 0x95B | size: 0x1
.obj gap_03_0000095B_rodata, global
.hidden gap_03_0000095B_rodata
	.byte 0x00
.endobj gap_03_0000095B_rodata

# .rodata:0x5C | 0x95C | size: 0x7
.obj str_dou_06_dou_000045ec, local
	.string "dou_06"
.endobj str_dou_06_dou_000045ec

# .rodata:0x63 | 0x963 | size: 0x1
.obj gap_03_00000963_rodata, global
.hidden gap_03_00000963_rodata
	.byte 0x00
.endobj gap_03_00000963_rodata

# .rodata:0x64 | 0x964 | size: 0x7
.obj str_w_bero_dou_000045f4, local
	.string "w_bero"
.endobj str_w_bero_dou_000045f4

# .rodata:0x6B | 0x96B | size: 0x1
.obj gap_03_0000096B_rodata, global
.hidden gap_03_0000096B_rodata
	.byte 0x00
.endobj gap_03_0000096B_rodata

# .rodata:0x6C | 0x96C | size: 0x8
.obj str_door_01_dou_000045fc, local
	.string "door_01"
.endobj str_door_01_dou_000045fc

# .rodata:0x74 | 0x974 | size: 0x8
.obj str_door_02_dou_00004604, local
	.string "door_02"
.endobj str_door_02_dou_00004604

# .rodata:0x7C | 0x97C | size: 0x3
.obj str_me_dou_0000460c, local
	.string "me"
.endobj str_me_dou_0000460c

# .rodata:0x7F | 0x97F | size: 0x1
.obj gap_03_0000097F_rodata, global
.hidden gap_03_0000097F_rodata
	.byte 0x00
.endobj gap_03_0000097F_rodata

# .rodata:0x80 | 0x980 | size: 0x19
.obj str_dou_05：扉が開く前の処理_dou_00004610, local
	.4byte 0x646F755F
	.4byte 0x30358146
	.4byte 0x94E082AA
	.4byte 0x8A4A82AD
	.4byte 0x914F82CC
	.4byte 0x8F88979D
	.byte 0x00
.endobj str_dou_05：扉が開く前の処理_dou_00004610

# .rodata:0x99 | 0x999 | size: 0x3
.obj gap_03_00000999_rodata, global
.hidden gap_03_00000999_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000999_rodata

# .rodata:0x9C | 0x99C | size: 0x5
.obj str_tetu_dou_0000462c, local
	.string "tetu"
.endobj str_tetu_dou_0000462c

# .rodata:0xA1 | 0x9A1 | size: 0x3
.obj gap_03_000009A1_rodata, global
.hidden gap_03_000009A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009A1_rodata

# .rodata:0xA4 | 0x9A4 | size: 0x19
.obj str_dou_05：扉が開く後の処理_dou_00004634, local
	.4byte 0x646F755F
	.4byte 0x30358146
	.4byte 0x94E082AA
	.4byte 0x8A4A82AD
	.4byte 0x8CE382CC
	.4byte 0x8F88979D
	.byte 0x00
.endobj str_dou_05：扉が開く後の処理_dou_00004634

# .rodata:0xBD | 0x9BD | size: 0x3
.obj gap_03_000009BD_rodata, global
.hidden gap_03_000009BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009BD_rodata

# .rodata:0xC0 | 0x9C0 | size: 0x13
.obj str_SFX_SLIDE_DOOR1_UP_dou_00004650, local
	.string "SFX_SLIDE_DOOR1_UP"
.endobj str_SFX_SLIDE_DOOR1_UP_dou_00004650

# .rodata:0xD3 | 0x9D3 | size: 0x1
.obj gap_03_000009D3_rodata, global
.hidden gap_03_000009D3_rodata
	.byte 0x00
.endobj gap_03_000009D3_rodata

# .rodata:0xD4 | 0x9D4 | size: 0x15
.obj str_SFX_SLIDE_DOOR1_DOWN_dou_00004664, local
	.string "SFX_SLIDE_DOOR1_DOWN"
.endobj str_SFX_SLIDE_DOOR1_DOWN_dou_00004664

# .rodata:0xE9 | 0x9E9 | size: 0x3
.obj gap_03_000009E9_rodata, global
.hidden gap_03_000009E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009E9_rodata

# .rodata:0xEC | 0x9EC | size: 0x16
.obj str_SFX_STG5_ELMOS_VOICE_dou_0000467c, local
	.string "SFX_STG5_ELMOS_VOICE1"
.endobj str_SFX_STG5_ELMOS_VOICE_dou_0000467c

# .rodata:0x102 | 0xA02 | size: 0x2
.obj gap_03_00000A02_rodata, global
.hidden gap_03_00000A02_rodata
	.2byte 0x0000
.endobj gap_03_00000A02_rodata

# .rodata:0x104 | 0xA04 | size: 0xC
.obj str_stg5_dou_10_dou_00004694, local
	.string "stg5_dou_10"
.endobj str_stg5_dou_10_dou_00004694

# .rodata:0x110 | 0xA10 | size: 0x7
.obj str_mod_01_dou_000046a0, local
	.string "mod_01"
.endobj str_mod_01_dou_000046a0

# .rodata:0x117 | 0xA17 | size: 0x1
.obj gap_03_00000A17_rodata, global
.hidden gap_03_00000A17_rodata
	.byte 0x00
.endobj gap_03_00000A17_rodata

# .rodata:0x118 | 0xA18 | size: 0x7
.obj str_mod_02_dou_000046a8, local
	.string "mod_02"
.endobj str_mod_02_dou_000046a8

# .rodata:0x11F | 0xA1F | size: 0x1
.obj gap_03_00000A1F_rodata, global
.hidden gap_03_00000A1F_rodata
	.byte 0x00
.endobj gap_03_00000A1F_rodata

# .rodata:0x120 | 0xA20 | size: 0x7
.obj str_mod_03_dou_000046b0, local
	.string "mod_03"
.endobj str_mod_03_dou_000046b0

# .rodata:0x127 | 0xA27 | size: 0x1
.obj gap_03_00000A27_rodata, global
.hidden gap_03_00000A27_rodata
	.byte 0x00
.endobj gap_03_00000A27_rodata

# .rodata:0x128 | 0xA28 | size: 0x7
.obj str_mod_04_dou_000046b8, local
	.string "mod_04"
.endobj str_mod_04_dou_000046b8

# .rodata:0x12F | 0xA2F | size: 0x1
.obj gap_03_00000A2F_rodata, global
.hidden gap_03_00000A2F_rodata
	.byte 0x00
.endobj gap_03_00000A2F_rodata

# .rodata:0x130 | 0xA30 | size: 0xC
.obj str_Ship_Change_dou_000046c0, local
	.string "Ship_Change"
.endobj str_Ship_Change_dou_000046c0

# .rodata:0x13C | 0xA3C | size: 0x7
.obj str_item00_dou_000046cc, local
	.string "item00"
.endobj str_item00_dou_000046cc

# .rodata:0x143 | 0xA43 | size: 0x1
.obj gap_03_00000A43_rodata, global
.hidden gap_03_00000A43_rodata
	.byte 0x00
.endobj gap_03_00000A43_rodata

# .rodata:0x144 | 0xA44 | size: 0xB
.obj str_mobj_box00_dou_000046d4, local
	.string "mobj_box00"
.endobj str_mobj_box00_dou_000046d4

# .rodata:0x14F | 0xA4F | size: 0x1
.obj gap_03_00000A4F_rodata, global
.hidden gap_03_00000A4F_rodata
	.byte 0x00
.endobj gap_03_00000A4F_rodata

# .rodata:0x150 | 0xA50 | size: 0xB
.obj str_S_mizu_ata_dou_000046e0, local
	.string "S_mizu_ata"
.endobj str_S_mizu_ata_dou_000046e0

# .rodata:0x15B | 0xA5B | size: 0x1
.obj gap_03_00000A5B_rodata, global
.hidden gap_03_00000A5B_rodata
	.byte 0x00
.endobj gap_03_00000A5B_rodata

# .rodata:0x15C | 0xA5C | size: 0xE
.obj str_BGM_STG5_DOU1_dou_000046ec, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_000046ec

# .rodata:0x16A | 0xA6A | size: 0x2
.obj gap_03_00000A6A_rodata, global
.hidden gap_03_00000A6A_rodata
	.2byte 0x0000
.endobj gap_03_00000A6A_rodata

# .rodata:0x16C | 0xA6C | size: 0xE
.obj str_ENV_STG5_DOU5_dou_000046fc, local
	.string "ENV_STG5_DOU5"
.endobj str_ENV_STG5_DOU5_dou_000046fc

# .rodata:0x17A | 0xA7A | size: 0x2
.obj gap_03_00000A7A_rodata, global
.hidden gap_03_00000A7A_rodata
	.2byte 0x0000
.endobj gap_03_00000A7A_rodata

# .rodata:0x17C | 0xA7C | size: 0x5
.obj str_nami_dou_0000470c, local
	.string "nami"
.endobj str_nami_dou_0000470c

# .rodata:0x181 | 0xA81 | size: 0x3
.obj gap_03_00000A81_rodata, global
.hidden gap_03_00000A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A81_rodata

# .rodata:0x184 | 0xA84 | size: 0x5
.obj str_tubo_dou_00004714, local
	.string "tubo"
.endobj str_tubo_dou_00004714

# .rodata:0x189 | 0xA89 | size: 0x3
.obj gap_03_00000A89_rodata, global
.hidden gap_03_00000A89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A89_rodata

# .rodata:0x18C | 0xA8C | size: 0xA
.obj str_mobj_save_dou_0000471c, local
	.string "mobj_save"
.endobj str_mobj_save_dou_0000471c

# .rodata:0x196 | 0xA96 | size: 0x2
.obj gap_03_00000A96_rodata, global
.hidden gap_03_00000A96_rodata
	.2byte 0x0000
.endobj gap_03_00000A96_rodata

# .rodata:0x198 | 0xA98 | size: 0xC
.obj str_mobj_lock00_dou_00004728, local
	.string "mobj_lock00"
.endobj str_mobj_lock00_dou_00004728

# .rodata:0x1A4 | 0xAA4 | size: 0x7
.obj str_mobj00_dou_00004734, local
	.string "mobj00"
.endobj str_mobj00_dou_00004734

# .rodata:0x1AB | 0xAAB | size: 0x1
.obj gap_03_00000AAB_rodata, global
.hidden gap_03_00000AAB_rodata
	.byte 0x00
.endobj gap_03_00000AAB_rodata

# .rodata:0x1AC | 0xAAC | size: 0x6
.obj str_pblk1_dou_0000473c, local
	.string "pblk1"
.endobj str_pblk1_dou_0000473c

# .rodata:0x1B2 | 0xAB2 | size: 0x2
.obj gap_03_00000AB2_rodata, global
.hidden gap_03_00000AB2_rodata
	.2byte 0x0000
.endobj gap_03_00000AB2_rodata

# .rodata:0x1B4 | 0xAB4 | size: 0xD
.obj str_mobj_hidden1_dou_00004744, local
	.string "mobj_hidden1"
.endobj str_mobj_hidden1_dou_00004744

# .rodata:0x1C1 | 0xAC1 | size: 0x3
.obj gap_03_00000AC1_rodata, global
.hidden gap_03_00000AC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AC1_rodata

# .rodata:0x1C4 | 0xAC4 | size: 0xE
.obj str_S_Ship_Change_dou_00004754, local
	.string "S_Ship_Change"
.endobj str_S_Ship_Change_dou_00004754

# .rodata:0x1D2 | 0xAD2 | size: 0x2
.obj gap_03_00000AD2_rodata, global
.hidden gap_03_00000AD2_rodata
	.2byte 0x0000
.endobj gap_03_00000AD2_rodata

# .rodata:0x1D4 | 0xAD4 | size: 0xB
.obj str_mizu_atari_dou_00004764, local
	.string "mizu_atari"
.endobj str_mizu_atari_dou_00004764
	.byte 0x00

# .rodata:0x1E0 | 0xAE0 | size: 0x4
.obj float_1p7_dou_00004770, local
	.float 1.7
.endobj float_1p7_dou_00004770

# .rodata:0x1E4 | 0xAE4 | size: 0x4
.obj gap_03_00000AE4_rodata, global
.hidden gap_03_00000AE4_rodata
	.4byte 0x00000000
.endobj gap_03_00000AE4_rodata

# 0x00003EE8..0x00004800 | size: 0x918
.data
.balign 8

# .data:0x0 | 0x3EE8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3EF0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3EF4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3EF8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3EFC | size: 0x4
.obj gap_04_00003EFC_data, global
.hidden gap_04_00003EFC_data
	.4byte 0x00000000
.endobj gap_04_00003EFC_data

# .data:0x18 | 0x3F00 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3F08 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3F0C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3F10 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3F18 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3F1C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3F20 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3F24 | size: 0x4
.obj gap_04_00003F24_data, global
.hidden gap_04_00003F24_data
	.4byte 0x00000000
.endobj gap_04_00003F24_data

# .data:0x40 | 0x3F28 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3F30 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3F34 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3F38 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_1_dou_00004594
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_03_dou_000045a0
	.4byte str_e_bero_1_dou_000045a8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_2_dou_000045b4
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_03_dou_000045a0
	.4byte str_e_bero_2_dou_000045c0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_3_dou_000045cc
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_03_dou_000045a0
	.4byte str_e_bero_3_dou_000045d8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_dou_000045e4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_06_dou_000045ec
	.4byte str_w_bero_dou_000045f4
	.4byte 0x00010001
	.4byte str_door_01_dou_000045fc
	.4byte str_door_02_dou_00004604
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

# .data:0x17C | 0x4064 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0x184 | 0x406C | size: 0x5C
.obj evt_chk, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_dou_0000460c
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chk

# .data:0x1E0 | 0x40C8 | size: 0x1C
.obj evt_unlock, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_dou_000045e4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_unlock

# .data:0x1FC | 0x40E4 | size: 0x90
.obj bigdoor_event_init, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000F5
	.4byte 0x00010071
	.4byte str_dou_05：扉が開く前の処理_dou_00004610
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_dou_000045cc
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_tetu_dou_0000462c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00010071
	.4byte str_dou_05：扉が開く後の処理_dou_00004634
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_w_bero_3_dou_000045cc
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_tetu_dou_0000462c
	.4byte 0x00000001
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bigdoor_event_init

# .data:0x28C | 0x4174 | size: 0x260
.obj bigdoor_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_set_mov_spd
	.4byte 0xF24A7A80
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000096
	.4byte 0x000001B0
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000151
	.4byte 0xFFFFFE20
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x00000190
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_SLIDE_DOOR1_UP_dou_00004650
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000007D0
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_tetu_dou_0000462c
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_SLIDE_DOOR1_DOWN_dou_00004664
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x000000FA
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_VOICE_dou_0000467c
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_10_dou_00004694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_3_dou_000045cc
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_w_bero_3_dou_000045cc
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F5
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bigdoor_event

# .data:0x4EC | 0x43D4 | size: 0x60
.obj hitDmgRetPoints, local
	.4byte str_mod_01_dou_000046a0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_02_dou_000046a8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_03_dou_000046b0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_04_dou_000046b8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_dou_000046c0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x54C | 0x4434 | size: 0x70
.obj mobj_box00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_dou_000046cc
	.4byte 0x00000113
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_dou_000046cc
	.4byte 0x00000102
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_dou_000046d4
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_dou_000046cc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box00

# .data:0x5BC | 0x44A4 | size: 0x78
.obj waterfall_main, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte alpha_set_func
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj waterfall_main

# .data:0x634 | 0x451C | size: 0x64
.obj waterfall_init, local
	.4byte 0x0001005B
	.4byte alpha_init_func
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte alpha_tev
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mizu_ata_dou_000046e0
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mizu_ata_dou_000046e0
	.4byte 0x00000100
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte waterfall_main
	.4byte 0x00000002
	.4byte 0x00000001
.endobj waterfall_init

# .data:0x698 | 0x4580 | size: 0x14
.obj ride_waterfall, local
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFFFFFFFC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ride_waterfall

# .data:0x6AC | 0x4594 | size: 0x4C
.obj nonride_waterfall, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFFFFFD44
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFFFFFFFC
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nonride_waterfall

# .data:0x6F8 | 0x45E0 | size: 0x220
.obj dou_05_init_evt_5_data_45E0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_000046ec
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU5_dou_000046fc
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
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_dou_0000470c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_tubo_dou_00004714
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_dou_0000471c
	.4byte 0x000000AF
	.4byte 0x00000078
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_mobj_lock00_dou_00004728
	.4byte 0x00000014
	.4byte 0x000000BE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte evt_chk
	.4byte evt_unlock
	.4byte 0xF8406723
	.4byte 0x00020018
	.4byte 0xF8406723
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_dou_000045e4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_dou_000045e4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000000
	.4byte str_mobj00_dou_00004734
	.4byte 0xFFFFFFC4
	.4byte 0x0000014A
	.4byte 0xFFFFFDCB
	.4byte bigdoor_event
	.4byte 0xF8406722
	.4byte 0x0001005C
	.4byte bigdoor_event_init
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_dou_000046d4
	.4byte 0x000001F4
	.4byte 0x00000113
	.4byte 0xFFFFFCE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box00
	.4byte 0xF840672A
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk1_dou_0000473c
	.4byte 0xFFFFFFBF
	.4byte 0x00000118
	.4byte 0xFFFFFF51
	.4byte 0x00000000
	.4byte 0xF8407134
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_mobj_hidden1_dou_00004744
	.4byte 0xFFFFFFDD
	.4byte 0x000000FF
	.4byte 0xFFFFFF51
	.4byte 0x00000079
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xF8406731
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change_dou_00004754
	.4byte str_Ship_Change_dou_000046c0
	.4byte 0x0001005E
	.4byte waterfall_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_mizu_atari_dou_00004764
	.4byte 0x00000000
	.4byte ride_waterfall
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_mizu_atari_dou_00004764
	.4byte 0x00000000
	.4byte nonride_waterfall
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte cam_displacement
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_05_init_evt_5_data_45E0

# 0x00000000..0x00000008 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x4
.obj _ap, local
	.skip 0x4
.endobj _ap

# .bss:0x4 | 0x4 | size: 0x4
.obj gap_05_00000004_bss, global
.hidden gap_05_00000004_bss
	.skip 0x4
.endobj gap_05_00000004_bss
