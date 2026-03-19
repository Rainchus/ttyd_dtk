.include "macros.inc"
.file "moo_04.o"

# 0x0000035C..0x000004AC | size: 0x150
.text
.balign 4

# .text:0x0 | 0x35C | size: 0x150
.fn mario_kirimomi, local
/* 0000035C 00000420  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000360 00000424  7C 08 02 A6 */	mflr r0
/* 00000364 00000428  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000368 0000042C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 0000036C 00000430  F3 E1 00 18 */	psq_st f31, 0x18(r1), 0, qr0
/* 00000370 00000434  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000374 00000438  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000378 0000043C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000037C 00000440  48 00 01 31 */	bl evtGetFloat
/* 00000380 00000444  FF E0 08 90 */	fmr f31, f1
/* 00000384 00000448  48 00 01 29 */	bl marioGetPtr
/* 00000388 0000044C  7C 7E 1B 78 */	mr r30, r3
/* 0000038C 00000450  38 60 00 00 */	li r3, 0x0
/* 00000390 00000454  48 00 01 1D */	bl partyGetPtr
/* 00000394 00000458  D3 FE 00 CC */	stfs f31, 0xcc(r30)
/* 00000398 0000045C  3C 80 00 00 */	lis r4, float_0p5_moo_000036a8@ha
/* 0000039C 00000460  38 C4 00 00 */	addi r6, r4, float_0p5_moo_000036a8@l
/* 000003A0 00000464  7C 7F 1B 78 */	mr r31, r3
/* 000003A4 00000468  D3 FE 00 C8 */	stfs f31, 0xc8(r30)
/* 000003A8 0000046C  3C 80 00 00 */	lis r4, float_10_moo_000036ac@ha
/* 000003AC 00000470  38 A4 00 00 */	addi r5, r4, float_10_moo_000036ac@l
/* 000003B0 00000474  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 000003B4 00000478  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 000003B8 0000047C  3C 80 00 00 */	lis r4, double_360_moo_000036b0@ha
/* 000003BC 00000480  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000003C0 00000484  EC 22 00 72 */	fmuls f1, f2, f1
/* 000003C4 00000488  C8 44 00 00 */	lfd f2, double_360_moo_000036b0@l(r4)
/* 000003C8 0000048C  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
/* 000003CC 00000490  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 000003D0 00000494  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 000003D4 00000498  EC 23 00 72 */	fmuls f1, f3, f1
/* 000003D8 0000049C  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
/* 000003DC 000004A0  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 000003E0 000004A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 000003E4 000004A8  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 000003E8 000004AC  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 000003EC 000004B0  48 00 00 C1 */	bl fmod
/* 000003F0 000004B4  FC 00 08 18 */	frsp f0, f1
/* 000003F4 000004B8  28 1F 00 00 */	cmplwi r31, 0x0
/* 000003F8 000004BC  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 000003FC 000004C0  41 82 00 90 */	beq .L_0000048C
/* 00000400 000004C4  D3 FF 00 74 */	stfs f31, 0x74(r31)
/* 00000404 000004C8  D3 FF 00 70 */	stfs f31, 0x70(r31)
/* 00000408 000004CC  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 0000040C 000004D0  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000410 000004D4  41 82 00 1C */	beq .L_0000042C
/* 00000414 000004D8  3C 60 00 00 */	lis r3, float_0p5_moo_000036a8@ha
/* 00000418 000004DC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 0000041C 000004E0  C0 03 00 00 */	lfs f0, float_0p5_moo_000036a8@l(r3)
/* 00000420 000004E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 00000424 000004E8  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 00000428 000004EC  48 00 00 24 */	b .L_0000044C
.L_0000042C:
/* 0000042C 000004F0  3C 80 00 00 */	lis r4, float_10_moo_000036ac@ha
/* 00000430 000004F4  3C 60 00 00 */	lis r3, float_0p5_moo_000036a8@ha
/* 00000434 000004F8  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 00000438 000004FC  C0 24 00 00 */	lfs f1, float_10_moo_000036ac@l(r4)
/* 0000043C 00000500  C0 03 00 00 */	lfs f0, float_0p5_moo_000036a8@l(r3)
/* 00000440 00000504  EC 22 08 28 */	fsubs f1, f2, f1
/* 00000444 00000508  EC 01 00 32 */	fmuls f0, f1, f0
/* 00000448 0000050C  D0 1F 00 8C */	stfs f0, 0x8c(r31)
.L_0000044C:
/* 0000044C 00000510  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 00000450 00000514  3C 60 00 00 */	lis r3, float_10_moo_000036ac@ha
/* 00000454 00000518  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 00000458 0000051C  38 83 00 00 */	addi r4, r3, float_10_moo_000036ac@l
/* 0000045C 00000520  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00000460 00000524  3C 60 00 00 */	lis r3, double_360_moo_000036b0@ha
/* 00000464 00000528  EC 22 00 72 */	fmuls f1, f2, f1
/* 00000468 0000052C  C8 43 00 00 */	lfd f2, double_360_moo_000036b0@l(r3)
/* 0000046C 00000530  D0 3F 00 8C */	stfs f1, 0x8c(r31)
/* 00000470 00000534  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 00000474 00000538  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000478 0000053C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 0000047C 00000540  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 00000480 00000544  48 00 00 2D */	bl fmod
/* 00000484 00000548  FC 00 08 18 */	frsp f0, f1
/* 00000488 0000054C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
.L_0000048C:
/* 0000048C 00000550  38 60 00 02 */	li r3, 0x2
/* 00000490 00000554  E3 E1 00 18 */	psq_l f31, 0x18(r1), 0, qr0
/* 00000494 00000558  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 00000498 0000055C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000049C 00000560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000004A0 00000564  7C 08 03 A6 */	mtlr r0
/* 000004A4 00000568  38 21 00 20 */	addi r1, r1, 0x20
/* 000004A8 0000056C  4E 80 00 20 */	blr
.endfn mario_kirimomi

# 0x000004E8..0x00000628 | size: 0x140
.rodata
.balign 8

# .rodata:0x0 | 0x4E8 | size: 0x8
.obj str_PKR_D_1_moo_00003578, local
	.string "PKR_D_1"
.endobj str_PKR_D_1_moo_00003578

# .rodata:0x8 | 0x4F0 | size: 0x8
.obj str_PNK_D_1_moo_00003580, local
	.string "PNK_D_1"
.endobj str_PNK_D_1_moo_00003580

# .rodata:0x10 | 0x4F8 | size: 0x4
.obj str_D_1_moo_00003588, local
	.string "D_1"
.endobj str_D_1_moo_00003588

# .rodata:0x14 | 0x4FC | size: 0x8
.obj str_PYS_D_1_moo_0000358c, local
	.string "PYS_D_1"
.endobj str_PYS_D_1_moo_0000358c

# .rodata:0x1C | 0x504 | size: 0x8
.obj str_PWD_D_1_moo_00003594, local
	.string "PWD_D_1"
.endobj str_PWD_D_1_moo_00003594

# .rodata:0x24 | 0x50C | size: 0x8
.obj str_PTR_D_1_moo_0000359c, local
	.string "PTR_D_1"
.endobj str_PTR_D_1_moo_0000359c

# .rodata:0x2C | 0x514 | size: 0x8
.obj str_PCH_D_1_moo_000035a4, local
	.string "PCH_D_1"
.endobj str_PCH_D_1_moo_000035a4

# .rodata:0x34 | 0x51C | size: 0x14
.obj str_SFX_STG7_MARIO_FLY1_moo_000035ac, local
	.string "SFX_STG7_MARIO_FLY1"
.endobj str_SFX_STG7_MARIO_FLY1_moo_000035ac

# .rodata:0x48 | 0x530 | size: 0x6
.obj str_M_N_7_moo_000035c0, local
	.string "M_N_7"
.endobj str_M_N_7_moo_000035c0

# .rodata:0x4E | 0x536 | size: 0x2
.obj gap_03_00000536_rodata, global
.hidden gap_03_00000536_rodata
	.2byte 0x0000
.endobj gap_03_00000536_rodata

# .rodata:0x50 | 0x538 | size: 0x7
.obj str_moo_00_moo_000035c8, local
	.string "moo_00"
.endobj str_moo_00_moo_000035c8

# .rodata:0x57 | 0x53F | size: 0x1
.obj gap_03_0000053F_rodata, global
.hidden gap_03_0000053F_rodata
	.byte 0x00
.endobj gap_03_0000053F_rodata

# .rodata:0x58 | 0x540 | size: 0x5
.obj str_幹部_moo_000035d0, local
	.4byte 0x8AB29594
	.byte 0x00
.endobj str_幹部_moo_000035d0

# .rodata:0x5D | 0x545 | size: 0x3
.obj gap_03_00000545_rodata, global
.hidden gap_03_00000545_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000545_rodata

# .rodata:0x60 | 0x548 | size: 0x12
.obj str_SFX_STG7_3RD_FLY1_moo_000035d8, local
	.string "SFX_STG7_3RD_FLY1"
.endobj str_SFX_STG7_3RD_FLY1_moo_000035d8

# .rodata:0x72 | 0x55A | size: 0x2
.obj gap_03_0000055A_rodata, global
.hidden gap_03_0000055A_rodata
	.2byte 0x0000
.endobj gap_03_0000055A_rodata

# .rodata:0x74 | 0x55C | size: 0x14
.obj str_SFX_STG7_3RD_LIGHT1_moo_000035ec, local
	.string "SFX_STG7_3RD_LIGHT1"
.endobj str_SFX_STG7_3RD_LIGHT1_moo_000035ec

# .rodata:0x88 | 0x570 | size: 0xE
.obj str_wangflush_n64_moo_00003600, local
	.string "wangflush_n64"
.endobj str_wangflush_n64_moo_00003600

# .rodata:0x96 | 0x57E | size: 0x2
.obj gap_03_0000057E_rodata, global
.hidden gap_03_0000057E_rodata
	.2byte 0x0000
.endobj gap_03_0000057E_rodata

# .rodata:0x98 | 0x580 | size: 0x7
.obj str_aji_14_moo_00003610, local
	.string "aji_14"
.endobj str_aji_14_moo_00003610

# .rodata:0x9F | 0x587 | size: 0x1
.obj gap_03_00000587_rodata, global
.hidden gap_03_00000587_rodata
	.byte 0x00
.endobj gap_03_00000587_rodata

# .rodata:0xA0 | 0x588 | size: 0x7
.obj str_tuzuki_moo_00003618, local
	.string "tuzuki"
.endobj str_tuzuki_moo_00003618

# .rodata:0xA7 | 0x58F | size: 0x1
.obj gap_03_0000058F_rodata, global
.hidden gap_03_0000058F_rodata
	.byte 0x00
.endobj gap_03_0000058F_rodata

# .rodata:0xA8 | 0x590 | size: 0xE
.obj str_BGM_STG7_DUN1_moo_00003620, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_moo_00003620

# .rodata:0xB6 | 0x59E | size: 0x2
.obj gap_03_0000059E_rodata, global
.hidden gap_03_0000059E_rodata
	.2byte 0x0000
.endobj gap_03_0000059E_rodata

# .rodata:0xB8 | 0x5A0 | size: 0x6
.obj str_ep_45_moo_00003630, local
	.string "ep_45"
.endobj str_ep_45_moo_00003630

# .rodata:0xBE | 0x5A6 | size: 0x2
.obj gap_03_000005A6_rodata, global
.hidden gap_03_000005A6_rodata
	.2byte 0x0000
.endobj gap_03_000005A6_rodata

# .rodata:0xC0 | 0x5A8 | size: 0x7
.obj str_gor_00_moo_00003638, local
	.string "gor_00"
.endobj str_gor_00_moo_00003638

# .rodata:0xC7 | 0x5AF | size: 0x1
.obj gap_03_000005AF_rodata, global
.hidden gap_03_000005AF_rodata
	.byte 0x00
.endobj gap_03_000005AF_rodata

# .rodata:0xC8 | 0x5B0 | size: 0xA
.obj str_epilogue2_moo_00003640, local
	.string "epilogue2"
.endobj str_epilogue2_moo_00003640

# .rodata:0xD2 | 0x5BA | size: 0x2
.obj gap_03_000005BA_rodata, global
.hidden gap_03_000005BA_rodata
	.2byte 0x0000
.endobj gap_03_000005BA_rodata

# .rodata:0xD4 | 0x5BC | size: 0xE
.obj str_BGM_STG7_MON1_moo_0000364c, local
	.string "BGM_STG7_MON1"
.endobj str_BGM_STG7_MON1_moo_0000364c

# .rodata:0xE2 | 0x5CA | size: 0x2
.obj gap_03_000005CA_rodata, global
.hidden gap_03_000005CA_rodata
	.2byte 0x0000
.endobj gap_03_000005CA_rodata

# .rodata:0xE4 | 0x5CC | size: 0xE
.obj str_ENV_STG7_MOO4_moo_0000365c, local
	.string "ENV_STG7_MOO4"
.endobj str_ENV_STG7_MOO4_moo_0000365c

# .rodata:0xF2 | 0x5DA | size: 0x2
.obj gap_03_000005DA_rodata, global
.hidden gap_03_000005DA_rodata
	.2byte 0x0000
.endobj gap_03_000005DA_rodata

# .rodata:0xF4 | 0x5DC | size: 0xC
.obj str_stg7_aji_63_moo_0000366c, local
	.string "stg7_aji_63"
.endobj str_stg7_aji_63_moo_0000366c

# .rodata:0x100 | 0x5E8 | size: 0xC
.obj str_crystal_n64_moo_00003678, local
	.string "crystal_n64"
.endobj str_crystal_n64_moo_00003678

# .rodata:0x10C | 0x5F4 | size: 0x7
.obj str_hikari_moo_00003684, local
	.string "hikari"
.endobj str_hikari_moo_00003684

# .rodata:0x113 | 0x5FB | size: 0x1
.obj gap_03_000005FB_rodata, global
.hidden gap_03_000005FB_rodata
	.byte 0x00
.endobj gap_03_000005FB_rodata

# .rodata:0x114 | 0x5FC | size: 0xE
.obj str_radiation_n64_moo_0000368c, local
	.string "radiation_n64"
.endobj str_radiation_n64_moo_0000368c

# .rodata:0x122 | 0x60A | size: 0x2
.obj gap_03_0000060A_rodata, global
.hidden gap_03_0000060A_rodata
	.2byte 0x0000
.endobj gap_03_0000060A_rodata

# .rodata:0x124 | 0x60C | size: 0x2
.obj str_S_moo_0000369c, local
	.string "S"
.endobj str_S_moo_0000369c

# .rodata:0x126 | 0x60E | size: 0x2
.obj gap_03_0000060E_rodata, global
.hidden gap_03_0000060E_rodata
	.2byte 0x0000
.endobj gap_03_0000060E_rodata

# .rodata:0x128 | 0x610 | size: 0x7
.obj str_tik_00_moo_000036a0, local
	.string "tik_00"
.endobj str_tik_00_moo_000036a0
	.byte 0x00

# .rodata:0x130 | 0x618 | size: 0x4
.obj float_0p5_moo_000036a8, local
	.float 0.5
.endobj float_0p5_moo_000036a8

# .rodata:0x134 | 0x61C | size: 0x4
.obj float_10_moo_000036ac, local
	.float 10
.endobj float_10_moo_000036ac

# .rodata:0x138 | 0x620 | size: 0x8
.obj double_360_moo_000036b0, local
	.double 360
.endobj double_360_moo_000036b0

# 0x00001DC8..0x000029F0 | size: 0xC28
.data
.balign 8

# .data:0x0 | 0x1DC8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1DD0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1DD4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1DD8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1DDC | size: 0x4
.obj gap_04_00001DDC_data, global
.hidden gap_04_00001DDC_data
	.4byte 0x00000000
.endobj gap_04_00001DDC_data

# .data:0x18 | 0x1DE0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1DE8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1DEC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1DF0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1DF8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1DFC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1E00 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1E04 | size: 0x4
.obj gap_04_00001E04_data, global
.hidden gap_04_00001E04_data
	.4byte 0x00000000
.endobj gap_04_00001E04_data

# .data:0x40 | 0x1E08 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1E10 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1E14 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1E18 | size: 0x24
.obj spline_dt, local
	.4byte 0xC14EABBA
	.4byte 0x42F7B327
	.4byte 0x44003E79
	.4byte 0x418F97F1
	.4byte 0x42383335
	.4byte 0x40A0614E
	.4byte 0x42824EF5
	.4byte 0x424199A0
	.4byte 0xC296A3F5
.endobj spline_dt

# .data:0x74 | 0x1E3C | size: 0xD0
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
	.4byte str_PKR_D_1_moo_00003578
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_1_moo_00003580
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_D_1_moo_00003588
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_D_1_moo_0000358c
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_D_1_moo_00003594
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_1_moo_0000359c
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_D_1_moo_000035a4
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj party_damage_pose

# .data:0x144 | 0x1F0C | size: 0x2A0
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
	.4byte str_SFX_STG7_MARIO_FLY1_moo_000035ac
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_moo_000035c0
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
	.4byte 0x00000004
	.4byte 0x000003E8
	.4byte 0x0000000A
	.4byte 0x00001388
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0002005B
	.4byte mario_kirimomi
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_sub_spline_init
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte spline_dt
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00001388
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_spline_get_value
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_sub_spline_init
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte spline_dt
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00001388
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_spline_get_value
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001B58
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_moo_00_moo_000035c8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_fly

# .data:0x3E4 | 0x21AC | size: 0x318
.obj kanbu_fly, local
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_幹部_moo_000035d0
	.4byte 0x00000019
	.4byte 0x0000004B
	.4byte 0xFFFFFFBA
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_幹部_moo_000035d0
	.4byte 0xF24A7BB3
	.4byte 0xF24A7BB3
	.4byte 0xF24A7BB3
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24ADE80
	.4byte 0x0005005B
	.4byte evt_npc_get_scale
	.4byte str_幹部_moo_000035d0
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_幹部_moo_000035d0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_add_rotate
	.4byte str_幹部_moo_000035d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7580
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7B80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_幹部_moo_000035d0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_3RD_FLY1_moo_000035d8
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF2488680
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24ADE80
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF24A7A80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24ADE80
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xF24BA680
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xF2496280
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_幹部_moo_000035d0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_幹部_moo_000035d0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000001
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_幹部_moo_000035d0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_3RD_LIGHT1_moo_000035ec
	.4byte 0xFFFFFF9C
	.4byte 0x00000064
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_wangflush_n64_moo_00003600
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000064
	.4byte 0xFFFFFFBA
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_14_moo_00003610
	.4byte str_tuzuki_moo_00003618
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kanbu_fly

# .data:0x6FC | 0x24C4 | size: 0xB8
.obj npcEnt, local
	.4byte str_幹部_moo_000035d0
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

# .data:0x7B4 | 0x257C | size: 0x100
.obj epilogue_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_moo_00003620
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x000000A5
	.4byte 0x00000215
	.4byte 0x0000004B
	.4byte 0x00000046
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_45_moo_00003630
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
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
	.4byte str_gor_00_moo_00003638
	.4byte str_epilogue2_moo_00003640
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x8B4 | 0x267C | size: 0x370
.obj moo_04_init_evt_17_data_267C, global
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_MON1_moo_0000364c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_MOO4_moo_0000365c
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000166
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000086
	.4byte 0x00000215
	.4byte 0x00000000
	.4byte 0x00000026
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte mario_fly
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010026
	.4byte 0x00000175
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x000000C8
	.4byte 0x00000215
	.4byte 0x00000014
	.4byte 0x00000068
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte kanbu_fly
	.4byte 0x00010024
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x0000002A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x000000A0
	.4byte 0x00000215
	.4byte 0x0000004B
	.4byte 0x00000041
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_63_moo_0000366c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_crystal_n64_moo_00003678
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000005A
	.4byte 0xFFFFFFB5
	.4byte 0xF24A7E80
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_crystal_n64_moo_00003678
	.4byte 0x00000006
	.4byte 0x0000001E
	.4byte 0x0000005A
	.4byte 0xFFFFFFB5
	.4byte 0xF24A7E80
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_moo_00003684
	.4byte str_radiation_n64_moo_0000368c
	.4byte 0x00000002
	.4byte 0x0000001E
	.4byte 0x0000005A
	.4byte 0xFFFFFFB5
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000179
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000011
	.4byte 0x000007D0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_moo_0000369c
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_bg_disp_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_moo_00003684
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000010
	.4byte 0x000007D0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x000003E8
	.4byte 0x00000009
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF8406BCF
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tik_00_moo_000036a0
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj moo_04_init_evt_17_data_267C

# .data:0xC24 | 0x29EC | size: 0x4
.obj gap_04_000029EC_data, global
.hidden gap_04_000029EC_data
	.4byte 0x00000000
.endobj gap_04_000029EC_data
