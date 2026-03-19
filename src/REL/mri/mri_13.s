.include "macros.inc"
.file "mri_13.o"

# 0x00003848..0x000039F0 | size: 0x1A8
.text
.balign 4

# .text:0x0 | 0x3848 | size: 0x134
.fn yuka_fall_check, local
/* 00003848 0000390C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 0000384C 00003910  7C 08 02 A6 */	mflr r0
/* 00003850 00003914  90 01 00 74 */	stw r0, 0x74(r1)
/* 00003854 00003918  BE E1 00 4C */	stmw r23, 0x4c(r1)
/* 00003858 0000391C  3B E1 00 14 */	addi r31, r1, 0x14
/* 0000385C 00003920  3B C1 00 10 */	addi r30, r1, 0x10
/* 00003860 00003924  3B A1 00 20 */	addi r29, r1, 0x20
/* 00003864 00003928  3B 81 00 1C */	addi r28, r1, 0x1c
/* 00003868 0000392C  3B 60 00 01 */	li r27, 0x1
/* 0000386C 00003930  3B 20 05 A8 */	li r25, 0x5a8
.L_00003870:
/* 00003870 00003934  48 00 18 2D */	bl puniGetPunidat_18_text_509C
/* 00003874 00003938  7F 43 CA 14 */	add r26, r3, r25
/* 00003878 0000393C  80 1A 00 04 */	lwz r0, 0x4(r26)
/* 0000387C 00003940  54 00 05 6B */	rlwinm. r0, r0, 0, 21, 21
/* 00003880 00003944  41 82 00 D4 */	beq .L_00003954
/* 00003884 00003948  3C 80 00 00 */	lis r4, vec3_mri_00024bec@ha
/* 00003888 0000394C  85 84 00 00 */	lwzu r12, vec3_mri_00024bec@l(r4)
/* 0000388C 00003950  3C 60 00 00 */	lis r3, float_3_mri_00024bf8@ha
/* 00003890 00003954  3C A0 00 00 */	lis r5, vec3_mri_00024be0@ha
/* 00003894 00003958  81 64 00 04 */	lwz r11, 0x4(r4)
/* 00003898 0000395C  38 E5 00 00 */	addi r7, r5, vec3_mri_00024be0@l
/* 0000389C 00003960  80 04 00 08 */	lwz r0, 0x8(r4)
/* 000038A0 00003964  7F 85 E3 78 */	mr r5, r28
/* 000038A4 00003968  C0 03 00 00 */	lfs f0, float_3_mri_00024bf8@l(r3)
/* 000038A8 0000396C  7F A6 EB 78 */	mr r6, r29
/* 000038AC 00003970  91 81 00 30 */	stw r12, 0x30(r1)
/* 000038B0 00003974  7F C9 F3 78 */	mr r9, r30
/* 000038B4 00003978  80 67 00 00 */	lwz r3, 0x0(r7)
/* 000038B8 0000397C  7F EA FB 78 */	mr r10, r31
/* 000038BC 00003980  82 E7 00 04 */	lwz r23, 0x4(r7)
/* 000038C0 00003984  38 81 00 18 */	addi r4, r1, 0x18
/* 000038C4 00003988  83 07 00 08 */	lwz r24, 0x8(r7)
/* 000038C8 0000398C  38 E1 00 08 */	addi r7, r1, 0x8
/* 000038CC 00003990  90 61 00 3C */	stw r3, 0x3c(r1)
/* 000038D0 00003994  39 01 00 0C */	addi r8, r1, 0xc
/* 000038D4 00003998  38 60 00 00 */	li r3, 0x0
/* 000038D8 0000399C  92 E1 00 40 */	stw r23, 0x40(r1)
/* 000038DC 000039A0  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 000038E0 000039A4  93 01 00 44 */	stw r24, 0x44(r1)
/* 000038E4 000039A8  C0 A1 00 40 */	lfs f5, 0x40(r1)
/* 000038E8 000039AC  91 61 00 34 */	stw r11, 0x34(r1)
/* 000038EC 000039B0  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 000038F0 000039B4  90 01 00 38 */	stw r0, 0x38(r1)
/* 000038F4 000039B8  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000038F8 000039BC  81 9A 01 2C */	lwz r12, 0x12c(r26)
/* 000038FC 000039C0  81 7A 01 30 */	lwz r11, 0x130(r26)
/* 00003900 000039C4  80 1A 01 34 */	lwz r0, 0x134(r26)
/* 00003904 000039C8  91 81 00 24 */	stw r12, 0x24(r1)
/* 00003908 000039CC  91 61 00 28 */	stw r11, 0x28(r1)
/* 0000390C 000039D0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 00003910 000039D4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 00003914 000039D8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 00003918 000039DC  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 0000391C 000039E0  4B FF C9 3D */	bl hitCheckFilter
/* 00003920 000039E4  28 03 00 00 */	cmplwi r3, 0x0
/* 00003924 000039E8  41 82 00 20 */	beq .L_00003944
/* 00003928 000039EC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 0000392C 000039F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00003930 000039F4  90 7A 01 2C */	stw r3, 0x12c(r26)
/* 00003934 000039F8  90 1A 01 30 */	stw r0, 0x130(r26)
/* 00003938 000039FC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 0000393C 00003A00  90 1A 01 34 */	stw r0, 0x134(r26)
/* 00003940 00003A04  48 00 00 14 */	b .L_00003954
.L_00003944:
/* 00003944 00003A08  38 7A 01 2C */	addi r3, r26, 0x12c
/* 00003948 00003A0C  38 81 00 30 */	addi r4, r1, 0x30
/* 0000394C 00003A10  7C 65 1B 78 */	mr r5, r3
/* 00003950 00003A14  4B FF C9 09 */	bl PSVECAdd
.L_00003954:
/* 00003954 00003A18  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00003958 00003A1C  3B 39 05 A8 */	addi r25, r25, 0x5a8
/* 0000395C 00003A20  2C 1B 00 67 */	cmpwi r27, 0x67
/* 00003960 00003A24  41 80 FF 10 */	blt .L_00003870
/* 00003964 00003A28  BA E1 00 4C */	lmw r23, 0x4c(r1)
/* 00003968 00003A2C  38 60 00 02 */	li r3, 0x2
/* 0000396C 00003A30  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00003970 00003A34  7C 08 03 A6 */	mtlr r0
/* 00003974 00003A38  38 21 00 70 */	addi r1, r1, 0x70
/* 00003978 00003A3C  4E 80 00 20 */	blr
.endfn yuka_fall_check

# .text:0x134 | 0x397C | size: 0x74
.fn evt_puni_force_pose, local
/* 0000397C 00003A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003980 00003A44  7C 08 02 A6 */	mflr r0
/* 00003984 00003A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003988 00003A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000398C 00003A50  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003990 00003A54  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003994 00003A58  4B FF C8 C5 */	bl evtGetValue
/* 00003998 00003A5C  1F E3 05 A8 */	mulli r31, r3, 0x5a8
/* 0000399C 00003A60  48 00 17 01 */	bl puniGetPunidat_18_text_509C
/* 000039A0 00003A64  3C 80 00 00 */	lis r4, zero_mri_00024c08@ha
/* 000039A4 00003A68  7C C3 FA 14 */	add r6, r3, r31
/* 000039A8 00003A6C  C0 04 00 00 */	lfs f0, zero_mri_00024c08@l(r4)
/* 000039AC 00003A70  3C 60 00 00 */	lis r3, vec3_mri_00024bfc@ha
/* 000039B0 00003A74  38 A3 00 00 */	addi r5, r3, vec3_mri_00024bfc@l
/* 000039B4 00003A78  D0 06 01 88 */	stfs f0, 0x188(r6)
/* 000039B8 00003A7C  38 60 00 02 */	li r3, 0x2
/* 000039BC 00003A80  D0 06 01 84 */	stfs f0, 0x184(r6)
/* 000039C0 00003A84  D0 06 01 48 */	stfs f0, 0x148(r6)
/* 000039C4 00003A88  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000039C8 00003A8C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000039CC 00003A90  90 86 01 5C */	stw r4, 0x15c(r6)
/* 000039D0 00003A94  90 06 01 60 */	stw r0, 0x160(r6)
/* 000039D4 00003A98  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000039D8 00003A9C  90 06 01 64 */	stw r0, 0x164(r6)
/* 000039DC 00003AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000039E0 00003AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000039E4 00003AA8  7C 08 03 A6 */	mtlr r0
/* 000039E8 00003AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 000039EC 00003AB0  4E 80 00 20 */	blr
.endfn evt_puni_force_pose

# 0x00004468..0x00004720 | size: 0x2B8
.rodata
.balign 8

# .rodata:0x0 | 0x4468 | size: 0x7
.obj str_e_bero_mri_00024b08, local
	.string "e_bero"
.endobj str_e_bero_mri_00024b08

# .rodata:0x7 | 0x446F | size: 0x1
.obj gap_03_0000446F_rodata, global
.hidden gap_03_0000446F_rodata
	.byte 0x00
.endobj gap_03_0000446F_rodata

# .rodata:0x8 | 0x4470 | size: 0x7
.obj str_mri_14_mri_00024b10, local
	.string "mri_14"
.endobj str_mri_14_mri_00024b10

# .rodata:0xF | 0x4477 | size: 0x1
.obj gap_03_00004477_rodata, global
.hidden gap_03_00004477_rodata
	.byte 0x00
.endobj gap_03_00004477_rodata

# .rodata:0x10 | 0x4478 | size: 0x1
.obj zero_mri_00024b18, local
	.byte 0x00
.endobj zero_mri_00024b18

# .rodata:0x11 | 0x4479 | size: 0x3
.obj gap_03_00004479_rodata, global
.hidden gap_03_00004479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004479_rodata

# .rodata:0x14 | 0x447C | size: 0x7
.obj str_w_bero_mri_00024b1c, local
	.string "w_bero"
.endobj str_w_bero_mri_00024b1c

# .rodata:0x1B | 0x4483 | size: 0x1
.obj gap_03_00004483_rodata, global
.hidden gap_03_00004483_rodata
	.byte 0x00
.endobj gap_03_00004483_rodata

# .rodata:0x1C | 0x4484 | size: 0x6
.obj str_dokan_mri_00024b24, local
	.string "dokan"
.endobj str_dokan_mri_00024b24

# .rodata:0x22 | 0x448A | size: 0x2
.obj gap_03_0000448A_rodata, global
.hidden gap_03_0000448A_rodata
	.2byte 0x0000
.endobj gap_03_0000448A_rodata

# .rodata:0x24 | 0x448C | size: 0x7
.obj str_mri_16_mri_00024b2c, local
	.string "mri_16"
.endobj str_mri_16_mri_00024b2c

# .rodata:0x2B | 0x4493 | size: 0x1
.obj gap_03_00004493_rodata, global
.hidden gap_03_00004493_rodata
	.byte 0x00
.endobj gap_03_00004493_rodata

# .rodata:0x2C | 0x4494 | size: 0x7
.obj str_dokan7_mri_00024b34, local
	.string "dokan7"
.endobj str_dokan7_mri_00024b34

# .rodata:0x33 | 0x449B | size: 0x1
.obj gap_03_0000449B_rodata, global
.hidden gap_03_0000449B_rodata
	.byte 0x00
.endobj gap_03_0000449B_rodata

# .rodata:0x34 | 0x449C | size: 0xD
.obj str_S_sui_hikari_mri_00024b3c, local
	.string "S_sui_hikari"
.endobj str_S_sui_hikari_mri_00024b3c

# .rodata:0x41 | 0x44A9 | size: 0x3
.obj gap_03_000044A9_rodata, global
.hidden gap_03_000044A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044A9_rodata

# .rodata:0x44 | 0x44AC | size: 0x6
.obj str_A_dai_mri_00024b4c, local
	.string "A_dai"
.endobj str_A_dai_mri_00024b4c

# .rodata:0x4A | 0x44B2 | size: 0x2
.obj gap_03_000044B2_rodata, global
.hidden gap_03_000044B2_rodata
	.2byte 0x0000
.endobj gap_03_000044B2_rodata

# .rodata:0x4C | 0x44B4 | size: 0x6
.obj str_S_dai_mri_00024b54, local
	.string "S_dai"
.endobj str_S_dai_mri_00024b54

# .rodata:0x52 | 0x44BA | size: 0x2
.obj gap_03_000044BA_rodata, global
.hidden gap_03_000044BA_rodata
	.2byte 0x0000
.endobj gap_03_000044BA_rodata

# .rodata:0x54 | 0x44BC | size: 0x9
.obj str_A_dai_02_mri_00024b5c, local
	.string "A_dai_02"
.endobj str_A_dai_02_mri_00024b5c

# .rodata:0x5D | 0x44C5 | size: 0x3
.obj gap_03_000044C5_rodata, global
.hidden gap_03_000044C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044C5_rodata

# .rodata:0x60 | 0x44C8 | size: 0x8
.obj str_S_sui_l_mri_00024b68, local
	.string "S_sui_l"
.endobj str_S_sui_l_mri_00024b68

# .rodata:0x68 | 0x44D0 | size: 0x9
.obj str_A_sui_l1_mri_00024b70, local
	.string "A_sui_l1"
.endobj str_A_sui_l1_mri_00024b70

# .rodata:0x71 | 0x44D9 | size: 0x3
.obj gap_03_000044D9_rodata, global
.hidden gap_03_000044D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044D9_rodata

# .rodata:0x74 | 0x44DC | size: 0xB
.obj str_S_sui_kage_mri_00024b7c, local
	.string "S_sui_kage"
.endobj str_S_sui_kage_mri_00024b7c

# .rodata:0x7F | 0x44E7 | size: 0x1
.obj gap_03_000044E7_rodata, global
.hidden gap_03_000044E7_rodata
	.byte 0x00
.endobj gap_03_000044E7_rodata

# .rodata:0x80 | 0x44E8 | size: 0xB
.obj str_S_isk_02_c_mri_00024b88, local
	.string "S_isk_02_c"
.endobj str_S_isk_02_c_mri_00024b88

# .rodata:0x8B | 0x44F3 | size: 0x1
.obj gap_03_000044F3_rodata, global
.hidden gap_03_000044F3_rodata
	.byte 0x00
.endobj gap_03_000044F3_rodata

# .rodata:0x8C | 0x44F4 | size: 0xB
.obj str_S_isk_03_c_mri_00024b94, local
	.string "S_isk_03_c"
.endobj str_S_isk_03_c_mri_00024b94

# .rodata:0x97 | 0x44FF | size: 0x1
.obj gap_03_000044FF_rodata, global
.hidden gap_03_000044FF_rodata
	.byte 0x00
.endobj gap_03_000044FF_rodata

# .rodata:0x98 | 0x4500 | size: 0x9
.obj str_S_isk_02_mri_00024ba0, local
	.string "S_isk_02"
.endobj str_S_isk_02_mri_00024ba0

# .rodata:0xA1 | 0x4509 | size: 0x3
.obj gap_03_00004509_rodata, global
.hidden gap_03_00004509_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004509_rodata

# .rodata:0xA4 | 0x450C | size: 0x9
.obj str_S_isk_03_mri_00024bac, local
	.string "S_isk_03"
.endobj str_S_isk_03_mri_00024bac

# .rodata:0xAD | 0x4515 | size: 0x3
.obj gap_03_00004515_rodata, global
.hidden gap_03_00004515_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004515_rodata

# .rodata:0xB0 | 0x4518 | size: 0x9
.obj str_S_isk_04_mri_00024bb8, local
	.string "S_isk_04"
.endobj str_S_isk_04_mri_00024bb8

# .rodata:0xB9 | 0x4521 | size: 0x3
.obj gap_03_00004521_rodata, global
.hidden gap_03_00004521_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004521_rodata

# .rodata:0xBC | 0x4524 | size: 0x19
.obj str_SFX_STG2_SWITCH_COUN_mri_00024bc4, local
	.string "SFX_STG2_SWITCH_COUNTER1"
.endobj str_SFX_STG2_SWITCH_COUN_mri_00024bc4

# .rodata:0xD5 | 0x453D | size: 0x3
.obj gap_03_0000453D_rodata, global
.hidden gap_03_0000453D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000453D_rodata

# .rodata:0xD8 | 0x4540 | size: 0xC
.obj vec3_mri_00024be0, local
	.4byte 0x00000000
	.4byte 0xBF800000
	.4byte 0x00000000
.endobj vec3_mri_00024be0

# .rodata:0xE4 | 0x454C | size: 0xC
.obj vec3_mri_00024bec, local
	.4byte 0x00000000
	.4byte 0xC0400000
	.4byte 0x00000000
.endobj vec3_mri_00024bec

# .rodata:0xF0 | 0x4558 | size: 0x4
.obj float_3_mri_00024bf8, local
	.float 3
.endobj float_3_mri_00024bf8

# .rodata:0xF4 | 0x455C | size: 0xC
.obj vec3_mri_00024bfc, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00024bfc

# .rodata:0x100 | 0x4568 | size: 0x4
.obj zero_mri_00024c08, local
	.float 0
.endobj zero_mri_00024c08

# .rodata:0x104 | 0x456C | size: 0x10
.obj str_SFX_STG2_QUAKE1_mri_00024c0c, local
	.string "SFX_STG2_QUAKE1"
.endobj str_SFX_STG2_QUAKE1_mri_00024c0c

# .rodata:0x114 | 0x457C | size: 0x9
.obj str_ガイドsp_mri_00024c1c, local
	.4byte 0x834B8343
	.4byte 0x83687370
	.byte 0x00
.endobj str_ガイドsp_mri_00024c1c

# .rodata:0x11D | 0x4585 | size: 0x3
.obj gap_03_00004585_rodata, global
.hidden gap_03_00004585_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004585_rodata

# .rodata:0x120 | 0x4588 | size: 0x10
.obj str_stg2_mri_e21_00_mri_00024c28, local
	.string "stg2_mri_e21_00"
.endobj str_stg2_mri_e21_00_mri_00024c28

# .rodata:0x130 | 0x4598 | size: 0x15
.obj str_SFX_STG2_FLOOR_MOVE1_mri_00024c38, local
	.string "SFX_STG2_FLOOR_MOVE1"
.endobj str_SFX_STG2_FLOOR_MOVE1_mri_00024c38

# .rodata:0x145 | 0x45AD | size: 0x3
.obj gap_03_000045AD_rodata, global
.hidden gap_03_000045AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000045AD_rodata

# .rodata:0x148 | 0x45B0 | size: 0x9
.obj str_punipuni_mri_00024c50, local
	.string "punipuni"
.endobj str_punipuni_mri_00024c50

# .rodata:0x151 | 0x45B9 | size: 0x3
.obj gap_03_000045B9_rodata, global
.hidden gap_03_000045B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000045B9_rodata

# .rodata:0x154 | 0x45BC | size: 0x15
.obj str_SFX_STG2_FLOOR_STOP1_mri_00024c5c, local
	.string "SFX_STG2_FLOOR_STOP1"
.endobj str_SFX_STG2_FLOOR_STOP1_mri_00024c5c

# .rodata:0x169 | 0x45D1 | size: 0x3
.obj gap_03_000045D1_rodata, global
.hidden gap_03_000045D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000045D1_rodata

# .rodata:0x16C | 0x45D4 | size: 0x13
.obj str_stg2_mri_e21_00_01_mri_00024c74, local
	.string "stg2_mri_e21_00_01"
.endobj str_stg2_mri_e21_00_01_mri_00024c74

# .rodata:0x17F | 0x45E7 | size: 0x1
.obj gap_03_000045E7_rodata, global
.hidden gap_03_000045E7_rodata
	.byte 0x00
.endobj gap_03_000045E7_rodata

# .rodata:0x180 | 0x45E8 | size: 0xD
.obj str_item_ueki_01_mri_00024c88, local
	.string "item_ueki_01"
.endobj str_item_ueki_01_mri_00024c88

# .rodata:0x18D | 0x45F5 | size: 0x3
.obj gap_03_000045F5_rodata, global
.hidden gap_03_000045F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000045F5_rodata

# .rodata:0x190 | 0x45F8 | size: 0xC
.obj str_A_f2_ueki02_mri_00024c98, local
	.string "A_f2_ueki02"
.endobj str_A_f2_ueki02_mri_00024c98

# .rodata:0x19C | 0x4604 | size: 0xC
.obj str_S_f2_ueki02_mri_00024ca4, local
	.string "S_f2_ueki02"
.endobj str_S_f2_ueki02_mri_00024ca4

# .rodata:0x1A8 | 0x4610 | size: 0xC
.obj str_A_f2_ueki03_mri_00024cb0, local
	.string "A_f2_ueki03"
.endobj str_A_f2_ueki03_mri_00024cb0

# .rodata:0x1B4 | 0x461C | size: 0xC
.obj str_S_f2_ueki03_mri_00024cbc, local
	.string "S_f2_ueki03"
.endobj str_S_f2_ueki03_mri_00024cbc

# .rodata:0x1C0 | 0x4628 | size: 0xC
.obj str_A_f2_ueki04_mri_00024cc8, local
	.string "A_f2_ueki04"
.endobj str_A_f2_ueki04_mri_00024cc8

# .rodata:0x1CC | 0x4634 | size: 0xC
.obj str_S_f2_ueki04_mri_00024cd4, local
	.string "S_f2_ueki04"
.endobj str_S_f2_ueki04_mri_00024cd4

# .rodata:0x1D8 | 0x4640 | size: 0xC
.obj str_A_f1_ueki01_mri_00024ce0, local
	.string "A_f1_ueki01"
.endobj str_A_f1_ueki01_mri_00024ce0

# .rodata:0x1E4 | 0x464C | size: 0xC
.obj str_S_f1_ueki01_mri_00024cec, local
	.string "S_f1_ueki01"
.endobj str_S_f1_ueki01_mri_00024cec

# .rodata:0x1F0 | 0x4658 | size: 0xC
.obj str_A_f1_ueki02_mri_00024cf8, local
	.string "A_f1_ueki02"
.endobj str_A_f1_ueki02_mri_00024cf8

# .rodata:0x1FC | 0x4664 | size: 0xC
.obj str_S_f1_ueki02_mri_00024d04, local
	.string "S_f1_ueki02"
.endobj str_S_f1_ueki02_mri_00024d04

# .rodata:0x208 | 0x4670 | size: 0xC
.obj str_A_f1_ueki03_mri_00024d10, local
	.string "A_f1_ueki03"
.endobj str_A_f1_ueki03_mri_00024d10

# .rodata:0x214 | 0x467C | size: 0xC
.obj str_S_f1_ueki03_mri_00024d1c, local
	.string "S_f1_ueki03"
.endobj str_S_f1_ueki03_mri_00024d1c

# .rodata:0x220 | 0x4688 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_00024d28, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_00024d28

# .rodata:0x230 | 0x4698 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_00024d38, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_00024d38

# .rodata:0x23E | 0x46A6 | size: 0x2
.obj gap_03_000046A6_rodata, global
.hidden gap_03_000046A6_rodata
	.2byte 0x0000
.endobj gap_03_000046A6_rodata

# .rodata:0x240 | 0x46A8 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00024d48, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00024d48

# .rodata:0x24E | 0x46B6 | size: 0x2
.obj gap_03_000046B6_rodata, global
.hidden gap_03_000046B6_rodata
	.2byte 0x0000
.endobj gap_03_000046B6_rodata

# .rodata:0x250 | 0x46B8 | size: 0xE
.obj str_ENV_STG2_MRI1_mri_00024d58, local
	.string "ENV_STG2_MRI1"
.endobj str_ENV_STG2_MRI1_mri_00024d58

# .rodata:0x25E | 0x46C6 | size: 0x2
.obj gap_03_000046C6_rodata, global
.hidden gap_03_000046C6_rodata
	.2byte 0x0000
.endobj gap_03_000046C6_rodata

# .rodata:0x260 | 0x46C8 | size: 0x8
.obj str_mizu_01_mri_00024d68, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00024d68

# .rodata:0x268 | 0x46D0 | size: 0x8
.obj str_mizu_02_mri_00024d70, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00024d70

# .rodata:0x270 | 0x46D8 | size: 0x7
.obj str_awa_01_mri_00024d78, local
	.string "awa_01"
.endobj str_awa_01_mri_00024d78

# .rodata:0x277 | 0x46DF | size: 0x1
.obj gap_03_000046DF_rodata, global
.hidden gap_03_000046DF_rodata
	.byte 0x00
.endobj gap_03_000046DF_rodata

# .rodata:0x278 | 0x46E0 | size: 0x7
.obj str_awa_02_mri_00024d80, local
	.string "awa_02"
.endobj str_awa_02_mri_00024d80

# .rodata:0x27F | 0x46E7 | size: 0x1
.obj gap_03_000046E7_rodata, global
.hidden gap_03_000046E7_rodata
	.byte 0x00
.endobj gap_03_000046E7_rodata

# .rodata:0x280 | 0x46E8 | size: 0xB
.obj str_sui_hikari_mri_00024d88, local
	.string "sui_hikari"
.endobj str_sui_hikari_mri_00024d88

# .rodata:0x28B | 0x46F3 | size: 0x1
.obj gap_03_000046F3_rodata, global
.hidden gap_03_000046F3_rodata
	.byte 0x00
.endobj gap_03_000046F3_rodata

# .rodata:0x28C | 0x46F4 | size: 0xA
.obj str_mobj_save_mri_00024d94, local
	.string "mobj_save"
.endobj str_mobj_save_mri_00024d94

# .rodata:0x296 | 0x46FE | size: 0x2
.obj gap_03_000046FE_rodata, global
.hidden gap_03_000046FE_rodata
	.2byte 0x0000
.endobj gap_03_000046FE_rodata

# .rodata:0x298 | 0x4700 | size: 0xD
.obj str_mobj_recover_mri_00024da0, local
	.string "mobj_recover"
.endobj str_mobj_recover_mri_00024da0

# .rodata:0x2A5 | 0x470D | size: 0x3
.obj gap_03_0000470D_rodata, global
.hidden gap_03_0000470D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000470D_rodata

# .rodata:0x2A8 | 0x4710 | size: 0x9
.obj str_A_f2_rak_mri_00024db0, local
	.string "A_f2_rak"
.endobj str_A_f2_rak_mri_00024db0

# .rodata:0x2B1 | 0x4719 | size: 0x7
.obj gap_03_00004719_rodata, global
.hidden gap_03_00004719_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004719_rodata

# 0x0001E598..0x0001F9A0 | size: 0x1408
.data
.balign 8

# .data:0x0 | 0x1E598 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1E5A0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1E5A4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1E5A8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1E5AC | size: 0x4
.obj gap_04_0001E5AC_data, global
.hidden gap_04_0001E5AC_data
	.4byte 0x00000000
.endobj gap_04_0001E5AC_data

# .data:0x18 | 0x1E5B0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1E5B8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1E5BC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1E5C0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1E5C8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1E5CC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1E5D0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1E5D4 | size: 0x4
.obj gap_04_0001E5D4_data, global
.hidden gap_04_0001E5D4_data
	.4byte 0x00000000
.endobj gap_04_0001E5D4_data

# .data:0x40 | 0x1E5D8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1E5E0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1E5E4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1E5E8 | size: 0x3C
.obj bero_dai3_kanbu, local
	.4byte str_e_bero_mri_00024b08
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_14_mri_00024b10
	.4byte zero_mri_00024b18
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_dai3_kanbu

# .data:0x8C | 0x1E624 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_e_bero_mri_00024b08
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_14_mri_00024b10
	.4byte str_w_bero_mri_00024b1c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_mri_00024b24
	.4byte 0x00020000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_mri_16_mri_00024b2c
	.4byte str_dokan7_mri_00024b34
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

# .data:0x140 | 0x1E6D8 | size: 0x84
.obj punipuni_mario_halt, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_mario_halt

# .data:0x1C4 | 0x1E75C | size: 0xD8
.obj punipuni_ball00_init, local
	.4byte 0x0001005E
	.4byte mri_punipuni_setup_18_data_790
	.4byte 0x00020018
	.4byte 0xF84066AD
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFC9
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFEE9
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00024b3c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFECB
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00_init

# .data:0x29C | 0x1E834 | size: 0x110
.obj punipuni_ball00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84066AD
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemselect_18_data_7D0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84066AD
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFC9
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFEE9
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sui_hikari_mri_00024b3c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemset_18_data_870
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF84066AD
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00024b3c
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemremove_18_data_900
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00

# .data:0x3AC | 0x1E944 | size: 0xC0
.obj yuka_init, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dai_mri_00024b4c
	.4byte str_S_dai_mri_00024b54
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dai_02_mri_00024b5c
	.4byte str_S_dai_mri_00024b54
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dai_mri_00024b54
	.4byte 0x00000000
	.4byte 0xF245A680
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dai_mri_00024b4c
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dai_02_mri_00024b5c
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_sui_l_mri_00024b68
	.4byte 0x00000000
	.4byte 0xFFFFFECB
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00024b3c
	.4byte 0x00000000
	.4byte 0xFFFFFECB
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_sui_l1_mri_00024b70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_kage_mri_00024b7c
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_init

# .data:0x46C | 0x1EA04 | size: 0x1C4
.obj yuka_slot, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_02_c_mri_00024b88
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_03_c_mri_00024b94
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFD050F80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFD050F80
	.4byte 0x00020039
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x00020039
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0x00000024
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x00020037
	.4byte 0xFE363C8B
	.4byte 0x00000024
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0x00000024
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_02_mri_00024ba0
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_03_mri_00024bac
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_isk_04_mri_00024bb8
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isk_03_c_mri_00024b94
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_isk_03_c_mri_00024b94
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F80
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SWITCH_COUN_mri_00024bc4
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_slot

# .data:0x630 | 0x1EBC8 | size: 0x2C
.obj yuka_shake, local
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_shake

# .data:0x65C | 0x1EBF4 | size: 0x110
.obj yuka_shake2, local
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A89
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A88
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A87
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A86
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A85
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A84
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A83
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A82
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A81
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8F
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_shake2

# .data:0x76C | 0x1ED04 | size: 0x214
.obj yuka_check, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_puni_get_flag_18_text_19BE4
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0x0002004D
	.4byte 0xFE363C80
	.4byte 0x00000400
	.4byte 0x0002004D
	.4byte 0xFE363C81
	.4byte 0x00000080
	.4byte 0x0003005B
	.4byte evt_puni_get_mode_18_text_19A90
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFFEC
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFEB7
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFFFFFEDF
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x00020036
	.4byte 0xFD050F80
	.4byte 0xFE363C8B
	.4byte 0x0002001D
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_check

# .data:0x980 | 0x1EF18 | size: 0x694
.obj yuka_event, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0x0000003C
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0x0000003C
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xF84066AD
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_puni_winddisable_onoff_18_text_1A904
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_force_pose
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0xF24C5A80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_sui_kage_mri_00024b7c
	.4byte 0xF24A7C80
	.4byte 0xF24A7C80
	.4byte 0xF24A7C80
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0001005F
	.4byte 0xFD050F82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_QUAKE1_mri_00024c0c
	.4byte 0xFD050F84
	.4byte 0x0002005D
	.4byte yuka_shake
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_00024c1c
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e21_00_mri_00024c28
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_00024c1c
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000014A
	.4byte 0xFFFFFF10
	.4byte 0x00000194
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFC4
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF1F
	.4byte 0xFFFFFFB0
	.4byte 0x00000163
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFEF2
	.4byte 0x00000032
	.4byte 0x00002328
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F84
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_QUAKE1_mri_00024c0c
	.4byte 0xFD050F83
	.4byte 0x0001005C
	.4byte yuka_shake2
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_sui_l1_mri_00024b70
	.4byte str_S_sui_l_mri_00024b68
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dai_mri_00024b4c
	.4byte str_S_dai_mri_00024b54
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dai_02_mri_00024b5c
	.4byte str_S_dai_mri_00024b54
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_FLOOR_MOVE1_mri_00024c38
	.4byte 0xFD050F82
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_punipuni_mri_00024c50
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xF24A7C80
	.4byte 0xF24A7E80
	.4byte 0x00002710
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_sui_kage_mri_00024b7c
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_kage_mri_00024b7c
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFF871A
	.4byte 0x00002710
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x0002003A
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_punipuni_mri_00024c50
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_sui_l_mri_00024b68
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_sui_l1_mri_00024b70
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dai_mri_00024b54
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dai_mri_00024b4c
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dai_02_mri_00024b5c
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_sui_hikari_mri_00024b3c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte yuka_fall_check
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F82
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F83
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_FLOOR_STOP1_mri_00024c5c
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイドsp_mri_00024c1c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e21_00_01_mri_00024c74
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_00024c1c
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00008000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_sui_l1_mri_00024b70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte yuka_check
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFECB
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFECA
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFECE
	.4byte 0xFFFFFEC8
	.4byte 0x0002005B
	.4byte evt_puni_winddisable_onoff_18_text_1A904
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yuka_event

# .data:0x1014 | 0x1F5AC | size: 0x50
.obj evt_f1_ueki_01, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_ueki_01_mri_00024c88
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_ueki_01_mri_00024c88
	.4byte 0x00000094
	.4byte 0xFFFFFF42
	.4byte 0xFFFFFECB
	.4byte 0x00000073
	.4byte 0x00000004
	.4byte 0xF84066AE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_f1_ueki_01

# .data:0x1064 | 0x1F5FC | size: 0x70
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_f2_ueki02_mri_00024c98
	.4byte str_S_f2_ueki02_mri_00024ca4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_f2_ueki03_mri_00024cb0
	.4byte str_S_f2_ueki03_mri_00024cbc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_f2_ueki04_mri_00024cc8
	.4byte str_S_f2_ueki04_mri_00024cd4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_f1_ueki01_mri_00024ce0
	.4byte str_S_f1_ueki01_mri_00024cec
	.4byte evt_f1_ueki_01
	.4byte 0x00000001
	.4byte str_A_f1_ueki02_mri_00024cf8
	.4byte str_S_f1_ueki02_mri_00024d04
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_f1_ueki03_mri_00024d10
	.4byte str_S_f1_ueki03_mri_00024d1c
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x10D4 | 0x1F66C | size: 0x334
.obj mri_13_init_evt_18_data_1F66C, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFECE
	.4byte 0xFFFFFEC8
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_00024d28
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00024d38
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00024d48
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI1_mri_00024d58
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00024d68
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00024d70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00024d78
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_00024d80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sui_hikari_mri_00024d88
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_mri_00024d94
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF07
	.4byte 0x00000000
	.4byte mri_puni_save_18_data_770
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_mri_00024da0
	.4byte 0x00000008
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFF07
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000065
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_f2_rak_mri_00024db0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte yuka_slot
	.4byte 0xFD050F81
	.4byte 0x0002005D
	.4byte yuka_check
	.4byte 0xFD050F82
	.4byte 0x0001005C
	.4byte yuka_event
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFECE
	.4byte 0xFFFFFEC8
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte yuka_init
	.4byte 0x0001005C
	.4byte yuka_check
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFECA
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFECE
	.4byte 0xFFFFFEC8
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_sui_l_mri_00024b68
	.4byte 0x00020033
	.4byte 0xFE363C81
	.4byte 0xFD050F80
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x0001005C
	.4byte mri_hikari_color_18_data_974
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_punipuni_mri_00024c50
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte punipuni_ball00_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dai_mri_00024b4c
	.4byte 0x00000000
	.4byte punipuni_ball00
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000006C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_mri_00024b08
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_mri_00024b08
	.4byte bero_dai3_kanbu
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_mri_00024b08
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_13_init_evt_18_data_1F66C
