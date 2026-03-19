.include "macros.inc"
.file "eki_02.o"

# 0x00005808..0x000059E8 | size: 0x1E0
.text
.balign 4

# .text:0x0 | 0x5808 | size: 0x1E0
.fn hit_move, local
/* 00005808 000058CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 0000580C 000058D0  7C 08 02 A6 */	mflr r0
/* 00005810 000058D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 00005814 000058D8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 00005818 000058DC  F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 0000581C 000058E0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 00005820 000058E4  F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 00005824 000058E8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 00005828 000058EC  F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 0000582C 000058F0  BF 81 00 50 */	stmw r28, 0x50(r1)
/* 00005830 000058F4  7C 7E 1B 78 */	mr r30, r3
/* 00005834 000058F8  7C 9C 23 78 */	mr r28, r4
/* 00005838 000058FC  4B FF A7 C9 */	bl marioGetPtr
/* 0000583C 00005900  3C 80 00 00 */	lis r4, vec3_eki_00008fc0@ha
/* 00005840 00005904  7C 7F 1B 78 */	mr r31, r3
/* 00005844 00005908  38 A4 00 00 */	addi r5, r4, vec3_eki_00008fc0@l
/* 00005848 0000590C  83 A3 01 E8 */	lwz r29, 0x1e8(r3)
/* 0000584C 00005910  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00005850 00005914  2C 1C 00 00 */	cmpwi r28, 0x0
/* 00005854 00005918  80 65 00 04 */	lwz r3, 0x4(r5)
/* 00005858 0000591C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 0000585C 00005920  90 81 00 14 */	stw r4, 0x14(r1)
/* 00005860 00005924  90 61 00 18 */	stw r3, 0x18(r1)
/* 00005864 00005928  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00005868 0000592C  41 82 00 10 */	beq .L_00005878
/* 0000586C 00005930  38 00 00 00 */	li r0, 0x0
/* 00005870 00005934  90 1E 00 78 */	stw r0, 0x78(r30)
/* 00005874 00005938  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_00005878:
/* 00005878 0000593C  28 1D 00 00 */	cmplwi r29, 0x0
/* 0000587C 00005940  40 82 00 18 */	bne .L_00005894
/* 00005880 00005944  38 00 00 00 */	li r0, 0x0
/* 00005884 00005948  38 60 00 00 */	li r3, 0x0
/* 00005888 0000594C  90 1E 00 78 */	stw r0, 0x78(r30)
/* 0000588C 00005950  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 00005890 00005954  48 00 01 2C */	b .L_000059BC
.L_00005894:
/* 00005894 00005958  A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 00005898 0000595C  54 00 06 B7 */	rlwinm. r0, r0, 0, 26, 27
/* 0000589C 00005960  40 82 00 18 */	bne .L_000058B4
/* 000058A0 00005964  38 00 00 00 */	li r0, 0x0
/* 000058A4 00005968  38 60 00 00 */	li r3, 0x0
/* 000058A8 0000596C  90 1E 00 78 */	stw r0, 0x78(r30)
/* 000058AC 00005970  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 000058B0 00005974  48 00 01 0C */	b .L_000059BC
.L_000058B4:
/* 000058B4 00005978  38 7D 00 0C */	addi r3, r29, 0xc
/* 000058B8 0000597C  38 81 00 20 */	addi r4, r1, 0x20
/* 000058BC 00005980  38 A0 00 78 */	li r5, 0x78
/* 000058C0 00005984  38 C0 00 7A */	li r6, 0x7a
/* 000058C4 00005988  4B FF A7 3D */	bl mtxGetRotationElement
/* 000058C8 0000598C  38 81 00 14 */	addi r4, r1, 0x14
/* 000058CC 00005990  38 61 00 20 */	addi r3, r1, 0x20
/* 000058D0 00005994  7C 85 23 78 */	mr r5, r4
/* 000058D4 00005998  4B FF A7 2D */	bl PSMTXMultVec
/* 000058D8 0000599C  3C 60 00 00 */	lis r3, zero_eki_00009008@ha
/* 000058DC 000059A0  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 000058E0 000059A4  C0 23 00 00 */	lfs f1, zero_eki_00009008@l(r3)
/* 000058E4 000059A8  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 000058E8 000059AC  FC 40 08 90 */	fmr f2, f1
/* 000058EC 000059B0  4B FF A7 15 */	bl angleABf_1
/* 000058F0 000059B4  FF C0 08 90 */	fmr f30, f1
/* 000058F4 000059B8  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 000058F8 000059BC  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 000058FC 000059C0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005900 000059C4  EF BE 00 28 */	fsubs f29, f30, f0
/* 00005904 000059C8  40 82 00 18 */	bne .L_0000591C
/* 00005908 000059CC  38 00 00 01 */	li r0, 0x1
/* 0000590C 000059D0  38 60 00 00 */	li r3, 0x0
/* 00005910 000059D4  90 1E 00 78 */	stw r0, 0x78(r30)
/* 00005914 000059D8  D3 DE 00 7C */	stfs f30, 0x7c(r30)
/* 00005918 000059DC  48 00 00 A4 */	b .L_000059BC
.L_0000591C:
/* 0000591C 000059E0  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 00005920 000059E4  38 81 00 08 */	addi r4, r1, 0x8
/* 00005924 000059E8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00005928 000059EC  4B FF A6 D9 */	bl hitObjGetPos
/* 0000592C 000059F0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 00005930 000059F4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 00005934 000059F8  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00005938 000059FC  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 0000593C 00005A00  4B FF A6 C5 */	bl distABf
/* 00005940 00005A04  FF E0 08 90 */	fmr f31, f1
/* 00005944 00005A08  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00005948 00005A0C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 0000594C 00005A10  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 00005950 00005A14  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 00005954 00005A18  4B FF A6 AD */	bl angleABf_1
/* 00005958 00005A1C  3C 80 00 00 */	lis r4, float_6p2832_eki_0000900c@ha
/* 0000595C 00005A20  EC 21 E8 2A */	fadds f1, f1, f29
/* 00005960 00005A24  C0 44 00 00 */	lfs f2, float_6p2832_eki_0000900c@l(r4)
/* 00005964 00005A28  3C 60 00 00 */	lis r3, float_360_eki_00009010@ha
/* 00005968 00005A2C  C0 03 00 00 */	lfs f0, float_360_eki_00009010@l(r3)
/* 0000596C 00005A30  EC 22 00 72 */	fmuls f1, f2, f1
/* 00005970 00005A34  EF A1 00 24 */	fdivs f29, f1, f0
/* 00005974 00005A38  FC 20 E8 90 */	fmr f1, f29
/* 00005978 00005A3C  4B FF A6 89 */	bl sin
/* 0000597C 00005A40  FC 60 08 18 */	frsp f3, f1
/* 00005980 00005A44  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 00005984 00005A48  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 00005988 00005A4C  FC 20 E8 90 */	fmr f1, f29
/* 0000598C 00005A50  EC 5F 10 FA */	fmadds f2, f31, f3, f2
/* 00005990 00005A54  EC 02 00 28 */	fsubs f0, f2, f0
/* 00005994 00005A58  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 00005998 00005A5C  4B FF A6 69 */	bl cos
/* 0000599C 00005A60  FC 40 08 18 */	frsp f2, f1
/* 000059A0 00005A64  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000059A4 00005A68  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 000059A8 00005A6C  38 60 00 00 */	li r3, 0x0
/* 000059AC 00005A70  EC 3F 08 BC */	fnmsubs f1, f31, f2, f1
/* 000059B0 00005A74  EC 01 00 28 */	fsubs f0, f1, f0
/* 000059B4 00005A78  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 000059B8 00005A7C  D3 DE 00 7C */	stfs f30, 0x7c(r30)
.L_000059BC:
/* 000059BC 00005A80  E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 000059C0 00005A84  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 000059C4 00005A88  E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 000059C8 00005A8C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 000059CC 00005A90  E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 000059D0 00005A94  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 000059D4 00005A98  BB 81 00 50 */	lmw r28, 0x50(r1)
/* 000059D8 00005A9C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 000059DC 00005AA0  7C 08 03 A6 */	mtlr r0
/* 000059E0 00005AA4  38 21 00 90 */	addi r1, r1, 0x90
/* 000059E4 00005AA8  4E 80 00 20 */	blr
.endfn hit_move

# 0x000007C0..0x00000838 | size: 0x78
.rodata
.balign 8

# .rodata:0x0 | 0x7C0 | size: 0x5
.obj str_door_eki_00008fa0, local
	.string "door"
.endobj str_door_eki_00008fa0

# .rodata:0x5 | 0x7C5 | size: 0x3
.obj gap_03_000007C5_rodata, global
.hidden gap_03_000007C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007C5_rodata

# .rodata:0x8 | 0x7C8 | size: 0x7
.obj str_s_bero_eki_00008fa8, local
	.string "s_bero"
.endobj str_s_bero_eki_00008fa8

# .rodata:0xF | 0x7CF | size: 0x1
.obj gap_03_000007CF_rodata, global
.hidden gap_03_000007CF_rodata
	.byte 0x00
.endobj gap_03_000007CF_rodata

# .rodata:0x10 | 0x7D0 | size: 0x7
.obj str_eki_01_eki_00008fb0, local
	.string "eki_01"
.endobj str_eki_01_eki_00008fb0

# .rodata:0x17 | 0x7D7 | size: 0x1
.obj gap_03_000007D7_rodata, global
.hidden gap_03_000007D7_rodata
	.byte 0x00
.endobj gap_03_000007D7_rodata

# .rodata:0x18 | 0x7D8 | size: 0x7
.obj str_n_bero_eki_00008fb8, local
	.string "n_bero"
.endobj str_n_bero_eki_00008fb8

# .rodata:0x1F | 0x7DF | size: 0x1
.obj gap_03_000007DF_rodata, global
.hidden gap_03_000007DF_rodata
	.byte 0x00
.endobj gap_03_000007DF_rodata

# .rodata:0x20 | 0x7E0 | size: 0xC
.obj vec3_eki_00008fc0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xBF800000
.endobj vec3_eki_00008fc0

# .rodata:0x2C | 0x7EC | size: 0xE
.obj str_ENV_STG6_EKI3_eki_00008fcc, local
	.string "ENV_STG6_EKI3"
.endobj str_ENV_STG6_EKI3_eki_00008fcc

# .rodata:0x3A | 0x7FA | size: 0x2
.obj gap_03_000007FA_rodata, global
.hidden gap_03_000007FA_rodata
	.2byte 0x0000
.endobj gap_03_000007FA_rodata

# .rodata:0x3C | 0x7FC | size: 0xD
.obj str_anm_sikake_1_eki_00008fdc, local
	.string "anm_sikake_1"
.endobj str_anm_sikake_1_eki_00008fdc

# .rodata:0x49 | 0x809 | size: 0x3
.obj gap_03_00000809_rodata, global
.hidden gap_03_00000809_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000809_rodata

# .rodata:0x4C | 0x80C | size: 0xD
.obj str_anm_sikake_2_eki_00008fec, local
	.string "anm_sikake_2"
.endobj str_anm_sikake_2_eki_00008fec

# .rodata:0x59 | 0x819 | size: 0x3
.obj gap_03_00000819_rodata, global
.hidden gap_03_00000819_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000819_rodata

# .rodata:0x5C | 0x81C | size: 0x4
.obj str_key_eki_00008ffc, local
	.string "key"
.endobj str_key_eki_00008ffc

# .rodata:0x60 | 0x820 | size: 0x5
.obj str_item_eki_00009000, local
	.string "item"
.endobj str_item_eki_00009000
	.byte 0x00, 0x00, 0x00

# .rodata:0x68 | 0x828 | size: 0x4
.obj zero_eki_00009008, local
	.float 0
.endobj zero_eki_00009008

# .rodata:0x6C | 0x82C | size: 0x4
.obj float_6p2832_eki_0000900c, local
	.float 6.2831855
.endobj float_6p2832_eki_0000900c

# .rodata:0x70 | 0x830 | size: 0x4
.obj float_360_eki_00009010, local
	.float 360
.endobj float_360_eki_00009010

# .rodata:0x74 | 0x834 | size: 0x4
.obj gap_03_00000834_rodata, global
.hidden gap_03_00000834_rodata
	.4byte 0x00000000
.endobj gap_03_00000834_rodata

# 0x00002DF0..0x00003008 | size: 0x218
.data
.balign 8

# .data:0x0 | 0x2DF0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2DF8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2DFC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2E00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2E04 | size: 0x4
.obj gap_04_00002E04_data, global
.hidden gap_04_00002E04_data
	.4byte 0x00000000
.endobj gap_04_00002E04_data

# .data:0x18 | 0x2E08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2E10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2E14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2E18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2E20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2E24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2E28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2E2C | size: 0x4
.obj gap_04_00002E2C_data, global
.hidden gap_04_00002E2C_data
	.4byte 0x00000000
.endobj gap_04_00002E2C_data

# .data:0x40 | 0x2E30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2E38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2E3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2E40 | size: 0x30
.obj s_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_eki_00008fa0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_close

# .data:0x80 | 0x2E70 | size: 0x30
.obj s_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_eki_00008fa0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_open

# .data:0xB0 | 0x2EA0 | size: 0x78
.obj bero_data, local
	.4byte str_s_bero_eki_00008fa8
	.4byte 0x00010003
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_eki_01_eki_00008fb0
	.4byte str_n_bero_eki_00008fb8
	.4byte 0x00050005
	.4byte s_close
	.4byte s_open
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
.endobj bero_data

# .data:0x128 | 0x2F18 | size: 0x14
.obj evt_key, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000013A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_key

# .data:0x13C | 0x2F2C | size: 0xD8
.obj eki_02_init_evt_6_data_2F2C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_EKI3_eki_00008fcc
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_sikake_1_eki_00008fdc
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_sikake_2_eki_00008fec
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000013A
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key_eki_00008ffc
	.4byte 0x00000019
	.4byte 0x0000020D
	.4byte 0x000000DC
	.4byte 0x0000001D
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte evt_key
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte hit_move
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_eki_00009000
	.4byte 0x0000007D
	.4byte 0x0000021C
	.4byte 0x0000008C
	.4byte 0xFFFFFFD8
	.4byte 0x00000010
	.4byte 0xF8407195
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj eki_02_init_evt_6_data_2F2C

# .data:0x214 | 0x3004 | size: 0x4
.obj gap_04_00003004_data, global
.hidden gap_04_00003004_data
	.4byte 0x00000000
.endobj gap_04_00003004_data
