.include "macros.inc"
.file "moo_03.o"

# 0x000001D8..0x0000035C | size: 0x184
.text
.balign 4

# .text:0x0 | 0x1D8 | size: 0x78
.fn z, local
/* 000001D8 0000029C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000001DC 000002A0  7C 08 02 A6 */	mflr r0
/* 000001E0 000002A4  3C 80 00 00 */	lis r4, double_0p21817_moo_00003558@ha
/* 000001E4 000002A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 000001E8 000002AC  C8 24 00 00 */	lfd f1, double_0p21817_moo_00003558@l(r4)
/* 000001EC 000002B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000001F0 000002B4  7C 7F 1B 78 */	mr r31, r3
/* 000001F4 000002B8  48 00 02 B9 */	bl tan
/* 000001F8 000002BC  3C 80 00 00 */	lis r4, float_240_moo_00003564@ha
/* 000001FC 000002C0  FC 40 08 18 */	frsp f2, f1
/* 00000200 000002C4  C0 24 00 00 */	lfs f1, float_240_moo_00003564@l(r4)
/* 00000204 000002C8  3C 60 00 00 */	lis r3, float_0p5_moo_00003568@ha
/* 00000208 000002CC  C0 03 00 00 */	lfs f0, float_0p5_moo_00003568@l(r3)
/* 0000020C 000002D0  3C 80 00 00 */	lis r4, float_1024_moo_00003560@ha
/* 00000210 000002D4  EC 21 10 24 */	fdivs f1, f1, f2
/* 00000214 000002D8  C0 44 00 00 */	lfs f2, float_1024_moo_00003560@l(r4)
/* 00000218 000002DC  38 60 00 02 */	li r3, 0x2
/* 0000021C 000002E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 00000220 000002E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 00000224 000002E8  FC 00 00 1E */	fctiwz f0, f0
/* 00000228 000002EC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000022C 000002F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 00000230 000002F4  3C 84 F2 4A */	subis r4, r4, 0xdb6
/* 00000234 000002F8  38 04 7A 80 */	addi r0, r4, 0x7a80
/* 00000238 000002FC  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 0000023C 00000300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000240 00000304  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00000244 00000308  7C 08 03 A6 */	mtlr r0
/* 00000248 0000030C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000024C 00000310  4E 80 00 20 */	blr
.endfn z

# .text:0x78 | 0x250 | size: 0x10C
.fn mario_kirimomi, local
/* 00000250 00000314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000254 00000318  7C 08 02 A6 */	mflr r0
/* 00000258 0000031C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000025C 00000320  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000260 00000324  48 00 02 4D */	bl marioGetPtr
/* 00000264 00000328  7C 7E 1B 78 */	mr r30, r3
/* 00000268 0000032C  38 60 00 00 */	li r3, 0x0
/* 0000026C 00000330  48 00 02 41 */	bl partyGetPtr
/* 00000270 00000334  3C 80 00 00 */	lis r4, float_0p5_moo_00003568@ha
/* 00000274 00000338  3C A0 00 00 */	lis r5, float_10_moo_0000356c@ha
/* 00000278 0000033C  38 C4 00 00 */	addi r6, r4, float_0p5_moo_00003568@l
/* 0000027C 00000340  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 00000280 00000344  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00000284 00000348  3C 80 00 00 */	lis r4, double_360_moo_00003570@ha
/* 00000288 0000034C  C0 05 00 00 */	lfs f0, float_10_moo_0000356c@l(r5)
/* 0000028C 00000350  7C 7F 1B 78 */	mr r31, r3
/* 00000290 00000354  EC 22 00 72 */	fmuls f1, f2, f1
/* 00000294 00000358  C8 44 00 00 */	lfd f2, double_360_moo_00003570@l(r4)
/* 00000298 0000035C  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
/* 0000029C 00000360  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 000002A0 00000364  EC 01 00 28 */	fsubs f0, f1, f0
/* 000002A4 00000368  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 000002A8 0000036C  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 000002AC 00000370  48 00 02 01 */	bl fmod
/* 000002B0 00000374  FC 00 08 18 */	frsp f0, f1
/* 000002B4 00000378  28 1F 00 00 */	cmplwi r31, 0x0
/* 000002B8 0000037C  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 000002BC 00000380  41 82 00 88 */	beq .L_00000344
/* 000002C0 00000384  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 000002C4 00000388  2C 00 00 04 */	cmpwi r0, 0x4
/* 000002C8 0000038C  41 82 00 1C */	beq .L_000002E4
/* 000002CC 00000390  3C 60 00 00 */	lis r3, float_0p5_moo_00003568@ha
/* 000002D0 00000394  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 000002D4 00000398  C0 03 00 00 */	lfs f0, float_0p5_moo_00003568@l(r3)
/* 000002D8 0000039C  EC 01 00 32 */	fmuls f0, f1, f0
/* 000002DC 000003A0  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 000002E0 000003A4  48 00 00 24 */	b .L_00000304
.L_000002E4:
/* 000002E4 000003A8  3C 80 00 00 */	lis r4, float_10_moo_0000356c@ha
/* 000002E8 000003AC  3C 60 00 00 */	lis r3, float_0p5_moo_00003568@ha
/* 000002EC 000003B0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 000002F0 000003B4  C0 24 00 00 */	lfs f1, float_10_moo_0000356c@l(r4)
/* 000002F4 000003B8  C0 03 00 00 */	lfs f0, float_0p5_moo_00003568@l(r3)
/* 000002F8 000003BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 000002FC 000003C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 00000300 000003C4  D0 1F 00 8C */	stfs f0, 0x8c(r31)
.L_00000304:
/* 00000304 000003C8  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 00000308 000003CC  3C 60 00 00 */	lis r3, float_10_moo_0000356c@ha
/* 0000030C 000003D0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 00000310 000003D4  38 83 00 00 */	addi r4, r3, float_10_moo_0000356c@l
/* 00000314 000003D8  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00000318 000003DC  3C 60 00 00 */	lis r3, double_360_moo_00003570@ha
/* 0000031C 000003E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 00000320 000003E4  C8 43 00 00 */	lfd f2, double_360_moo_00003570@l(r3)
/* 00000324 000003E8  D0 3F 00 8C */	stfs f1, 0x8c(r31)
/* 00000328 000003EC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 0000032C 000003F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000330 000003F4  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 00000334 000003F8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 00000338 000003FC  48 00 01 75 */	bl fmod
/* 0000033C 00000400  FC 00 08 18 */	frsp f0, f1
/* 00000340 00000404  D0 1F 00 6C */	stfs f0, 0x6c(r31)
.L_00000344:
/* 00000344 00000408  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000348 0000040C  38 60 00 00 */	li r3, 0x0
/* 0000034C 00000410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000350 00000414  7C 08 03 A6 */	mtlr r0
/* 00000354 00000418  38 21 00 10 */	addi r1, r1, 0x10
/* 00000358 0000041C  4E 80 00 20 */	blr
.endfn mario_kirimomi

# 0x000003D8..0x000004E8 | size: 0x110
.rodata
.balign 8

# .rodata:0x0 | 0x3D8 | size: 0x8
.obj str_PKR_D_1_moo_00003468, local
	.string "PKR_D_1"
.endobj str_PKR_D_1_moo_00003468

# .rodata:0x8 | 0x3E0 | size: 0x8
.obj str_PNK_D_1_moo_00003470, local
	.string "PNK_D_1"
.endobj str_PNK_D_1_moo_00003470

# .rodata:0x10 | 0x3E8 | size: 0x4
.obj str_D_1_moo_00003478, local
	.string "D_1"
.endobj str_D_1_moo_00003478

# .rodata:0x14 | 0x3EC | size: 0x8
.obj str_PYS_D_1_moo_0000347c, local
	.string "PYS_D_1"
.endobj str_PYS_D_1_moo_0000347c

# .rodata:0x1C | 0x3F4 | size: 0x8
.obj str_PWD_D_1_moo_00003484, local
	.string "PWD_D_1"
.endobj str_PWD_D_1_moo_00003484

# .rodata:0x24 | 0x3FC | size: 0x8
.obj str_PTR_D_1_moo_0000348c, local
	.string "PTR_D_1"
.endobj str_PTR_D_1_moo_0000348c

# .rodata:0x2C | 0x404 | size: 0x8
.obj str_PCH_D_1_moo_00003494, local
	.string "PCH_D_1"
.endobj str_PCH_D_1_moo_00003494

# .rodata:0x34 | 0x40C | size: 0x14
.obj str_SFX_STG7_MARIO_FLY1_moo_0000349c, local
	.string "SFX_STG7_MARIO_FLY1"
.endobj str_SFX_STG7_MARIO_FLY1_moo_0000349c

# .rodata:0x48 | 0x420 | size: 0x6
.obj str_M_F_1_moo_000034b0, local
	.string "M_F_1"
.endobj str_M_F_1_moo_000034b0

# .rodata:0x4E | 0x426 | size: 0x2
.obj gap_03_00000426_rodata, global
.hidden gap_03_00000426_rodata
	.2byte 0x0000
.endobj gap_03_00000426_rodata

# .rodata:0x50 | 0x428 | size: 0x10
.obj str_stg7_moo_01_kur_moo_000034b8, local
	.string "stg7_moo_01_kur"
.endobj str_stg7_moo_01_kur_moo_000034b8

# .rodata:0x60 | 0x438 | size: 0x10
.obj str_stg7_moo_01_nok_moo_000034c8, local
	.string "stg7_moo_01_nok"
.endobj str_stg7_moo_01_nok_moo_000034c8

# .rodata:0x70 | 0x448 | size: 0x10
.obj str_stg7_moo_01_bom_moo_000034d8, local
	.string "stg7_moo_01_bom"
.endobj str_stg7_moo_01_bom_moo_000034d8

# .rodata:0x80 | 0x458 | size: 0x10
.obj str_stg7_moo_01_yos_moo_000034e8, local
	.string "stg7_moo_01_yos"
.endobj str_stg7_moo_01_yos_moo_000034e8

# .rodata:0x90 | 0x468 | size: 0x10
.obj str_stg7_moo_01_win_moo_000034f8, local
	.string "stg7_moo_01_win"
.endobj str_stg7_moo_01_win_moo_000034f8

# .rodata:0xA0 | 0x478 | size: 0x10
.obj str_stg7_moo_01_viv_moo_00003508, local
	.string "stg7_moo_01_viv"
.endobj str_stg7_moo_01_viv_moo_00003508

# .rodata:0xB0 | 0x488 | size: 0x10
.obj str_stg7_moo_01_chu_moo_00003518, local
	.string "stg7_moo_01_chu"
.endobj str_stg7_moo_01_chu_moo_00003518

# .rodata:0xC0 | 0x498 | size: 0x7
.obj str_moo_04_moo_00003528, local
	.string "moo_04"
.endobj str_moo_04_moo_00003528

# .rodata:0xC7 | 0x49F | size: 0x1
.obj gap_03_0000049F_rodata, global
.hidden gap_03_0000049F_rodata
	.byte 0x00
.endobj gap_03_0000049F_rodata

# .rodata:0xC8 | 0x4A0 | size: 0xE
.obj str_BGM_STG7_MON1_moo_00003530, local
	.string "BGM_STG7_MON1"
.endobj str_BGM_STG7_MON1_moo_00003530

# .rodata:0xD6 | 0x4AE | size: 0x2
.obj gap_03_000004AE_rodata, global
.hidden gap_03_000004AE_rodata
	.2byte 0x0000
.endobj gap_03_000004AE_rodata

# .rodata:0xD8 | 0x4B0 | size: 0xE
.obj str_ENV_STG7_MOO3_moo_00003540, local
	.string "ENV_STG7_MOO3"
.endobj str_ENV_STG7_MOO3_moo_00003540

# .rodata:0xE6 | 0x4BE | size: 0x2
.obj gap_03_000004BE_rodata, global
.hidden gap_03_000004BE_rodata
	.2byte 0x0000
.endobj gap_03_000004BE_rodata

# .rodata:0xE8 | 0x4C0 | size: 0x8
.obj str_hosi_01_moo_00003550, local
	.string "hosi_01"
.endobj str_hosi_01_moo_00003550

# .rodata:0xF0 | 0x4C8 | size: 0x8
.obj double_0p21817_moo_00003558, local
	.double 0.21816612780094147
.endobj double_0p21817_moo_00003558

# .rodata:0xF8 | 0x4D0 | size: 0x4
.obj float_1024_moo_00003560, local
	.float 1024
.endobj float_1024_moo_00003560

# .rodata:0xFC | 0x4D4 | size: 0x4
.obj float_240_moo_00003564, local
	.float 240
.endobj float_240_moo_00003564

# .rodata:0x100 | 0x4D8 | size: 0x4
.obj float_0p5_moo_00003568, local
	.float 0.5
.endobj float_0p5_moo_00003568

# .rodata:0x104 | 0x4DC | size: 0x4
.obj float_10_moo_0000356c, local
	.float 10
.endobj float_10_moo_0000356c

# .rodata:0x108 | 0x4E0 | size: 0x8
.obj double_360_moo_00003570, local
	.double 360
.endobj double_360_moo_00003570

# 0x000018F0..0x00001DC8 | size: 0x4D8
.data
.balign 8

# .data:0x0 | 0x18F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x18F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x18FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1900 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1904 | size: 0x4
.obj gap_04_00001904_data, global
.hidden gap_04_00001904_data
	.4byte 0x00000000
.endobj gap_04_00001904_data

# .data:0x18 | 0x1908 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1910 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1914 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1918 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1920 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1924 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1928 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x192C | size: 0x4
.obj gap_04_0000192C_data, global
.hidden gap_04_0000192C_data
	.4byte 0x00000000
.endobj gap_04_0000192C_data

# .data:0x40 | 0x1930 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1938 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x193C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1940 | size: 0xD0
.obj party_damage_pose, local
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_D_1_moo_00003468
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_1_moo_00003470
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_D_1_moo_00003478
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_D_1_moo_0000347c
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_D_1_moo_00003484
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_1_moo_0000348c
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_D_1_moo_00003494
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj party_damage_pose

# .data:0x120 | 0x1A10 | size: 0x32C
.obj mario_fly, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_MARIO_FLY1_moo_0000349c
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_F_1_moo_000034b0
	.4byte 0x0001005E
	.4byte party_damage_pose
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFED4
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFED0
	.4byte 0x00000130
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7DA8
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFED0
	.4byte 0x00000130
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7DA8
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF249B280
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_kur_moo_000034b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_nok_moo_000034c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_bom_moo_000034d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_yos_moo_000034e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_win_moo_000034f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_viv_moo_00003508
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_moo_01_chu_moo_00003518
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_moo_04_moo_00003528
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_fly

# .data:0x44C | 0x1D3C | size: 0x8C
.obj moo_03_init_evt_17_data_1D3C, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_MON1_moo_00003530
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_MOO3_moo_00003540
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_moo_00003550
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte z
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte mario_fly
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte mario_kirimomi
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj moo_03_init_evt_17_data_1D3C
