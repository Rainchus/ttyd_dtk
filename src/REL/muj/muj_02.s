.include "macros.inc"
.file "muj_02.o"

# 0x00002F80..0x00003208 | size: 0x288
.text
.balign 4

# .text:0x0 | 0x2F80 | size: 0x44
.fn countDisp, local
/* 00002F80 00003044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002F84 00003048  7C 08 02 A6 */	mflr r0
/* 00002F88 0000304C  3C 60 00 00 */	lis r3, float_399_muj_0000fe48@ha
/* 00002F8C 00003050  3C 80 00 00 */	lis r4, printCount@ha
/* 00002F90 00003054  38 C3 00 00 */	addi r6, r3, float_399_muj_0000fe48@l
/* 00002F94 00003058  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002F98 0000305C  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00002F9C 00003060  38 A4 00 00 */	addi r5, r4, printCount@l
/* 00002FA0 00003064  38 60 00 08 */	li r3, 0x8
/* 00002FA4 00003068  38 80 00 00 */	li r4, 0x0
/* 00002FA8 0000306C  38 C0 00 00 */	li r6, 0x0
/* 00002FAC 00003070  4B FF D9 FD */	bl dispEntry
/* 00002FB0 00003074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002FB4 00003078  38 60 00 00 */	li r3, 0x0
/* 00002FB8 0000307C  7C 08 03 A6 */	mtlr r0
/* 00002FBC 00003080  38 21 00 10 */	addi r1, r1, 0x10
/* 00002FC0 00003084  4E 80 00 20 */	blr
.endfn countDisp

# .text:0x44 | 0x2FC4 | size: 0x244
.fn printCount, local
/* 00002FC4 00003088  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00002FC8 0000308C  7C 08 02 A6 */	mflr r0
/* 00002FCC 00003090  3C 80 FD 05 */	lis r4, 0xfd05
/* 00002FD0 00003094  38 60 00 00 */	li r3, 0x0
/* 00002FD4 00003098  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002FD8 0000309C  38 84 0F 80 */	addi r4, r4, 0xf80
/* 00002FDC 000030A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 00002FE0 000030A4  4B FF D9 C9 */	bl evtGetValue
/* 00002FE4 000030A8  7C 7F 1B 78 */	mr r31, r3
/* 00002FE8 000030AC  4B FF D9 C1 */	bl FontDrawStart
/* 00002FEC 000030B0  3C 60 00 00 */	lis r3, gp@ha
/* 00002FF0 000030B4  38 63 00 00 */	addi r3, r3, gp@l
/* 00002FF4 000030B8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002FF8 000030BC  80 03 01 6C */	lwz r0, 0x16c(r3)
/* 00002FFC 000030C0  28 00 00 06 */	cmplwi r0, 0x6
/* 00003000 000030C4  41 81 01 F4 */	bgt .L_000031F4
/* 00003004 000030C8  3C 60 00 00 */	lis r3, jumptable_19_data_11288@ha
/* 00003008 000030CC  54 00 10 3A */	slwi r0, r0, 2
/* 0000300C 000030D0  38 63 00 00 */	addi r3, r3, jumptable_19_data_11288@l
/* 00003010 000030D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 00003014 000030D8  7C 09 03 A6 */	mtctr r0
/* 00003018 000030DC  4E 80 04 20 */	bctr
.L_0000301C:
/* 0000301C 000030E0  3C 60 00 00 */	lis r3, str_PCT3d回_muj_0000fe4c@ha
/* 00003020 000030E4  7F E5 FB 78 */	mr r5, r31
/* 00003024 000030E8  38 83 00 00 */	addi r4, r3, str_PCT3d回_muj_0000fe4c@l
/* 00003028 000030EC  38 61 00 08 */	addi r3, r1, 0x8
/* 0000302C 000030F0  4C C6 31 82 */	crclr cr1eq
/* 00003030 000030F4  4B FF D9 79 */	bl sprintf
/* 00003034 000030F8  3C C0 00 00 */	lis r6, float_90_muj_0000fe54@ha
/* 00003038 000030FC  3C A0 00 00 */	lis r5, float_120_muj_0000fe58@ha
/* 0000303C 00003100  3C 80 00 00 */	lis r4, float_20_muj_0000fe5c@ha
/* 00003040 00003104  C0 26 00 00 */	lfs f1, float_90_muj_0000fe54@l(r6)
/* 00003044 00003108  C0 45 00 00 */	lfs f2, float_120_muj_0000fe58@l(r5)
/* 00003048 0000310C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000304C 00003110  C0 64 00 00 */	lfs f3, float_20_muj_0000fe5c@l(r4)
/* 00003050 00003114  4B FF D9 59 */	bl FontDrawStringPitch
/* 00003054 00003118  3C 80 FD 05 */	lis r4, 0xfd05
/* 00003058 0000311C  38 60 00 00 */	li r3, 0x0
/* 0000305C 00003120  38 84 0F 80 */	addi r4, r4, 0xf80
/* 00003060 00003124  4B FF D9 49 */	bl evtGetValue
/* 00003064 00003128  3C 80 00 00 */	lis r4, str_かい_muj_0000fe60@ha
/* 00003068 0000312C  7C 65 1B 78 */	mr r5, r3
/* 0000306C 00003130  38 61 00 08 */	addi r3, r1, 0x8
/* 00003070 00003134  38 84 00 00 */	addi r4, r4, str_かい_muj_0000fe60@l
/* 00003074 00003138  4C C6 31 82 */	crclr cr1eq
/* 00003078 0000313C  4B FF D9 31 */	bl sprintf
/* 0000307C 00003140  3C 60 00 00 */	lis r3, float_0p55_muj_0000fe68@ha
/* 00003080 00003144  C0 23 00 00 */	lfs f1, float_0p55_muj_0000fe68@l(r3)
/* 00003084 00003148  4B FF D9 25 */	bl FontDrawScale
/* 00003088 0000314C  3C C0 00 00 */	lis r6, float_148_muj_0000fe6c@ha
/* 0000308C 00003150  3C A0 00 00 */	lis r5, float_131_muj_0000fe70@ha
/* 00003090 00003154  3C 80 00 00 */	lis r4, float_20_muj_0000fe5c@ha
/* 00003094 00003158  C0 26 00 00 */	lfs f1, float_148_muj_0000fe6c@l(r6)
/* 00003098 0000315C  C0 45 00 00 */	lfs f2, float_131_muj_0000fe70@l(r5)
/* 0000309C 00003160  38 61 00 08 */	addi r3, r1, 0x8
/* 000030A0 00003164  C0 64 00 00 */	lfs f3, float_20_muj_0000fe5c@l(r4)
/* 000030A4 00003168  4B FF D9 05 */	bl FontDrawStringPitch
/* 000030A8 0000316C  48 00 01 4C */	b .L_000031F4
.L_000030AC:
/* 000030AC 00003170  3C 60 00 00 */	lis r3, str_PCT3d_muj_0000fe74@ha
/* 000030B0 00003174  7F E5 FB 78 */	mr r5, r31
/* 000030B4 00003178  38 83 00 00 */	addi r4, r3, str_PCT3d_muj_0000fe74@l
/* 000030B8 0000317C  38 61 00 08 */	addi r3, r1, 0x8
/* 000030BC 00003180  4C C6 31 82 */	crclr cr1eq
/* 000030C0 00003184  4B FF D8 E9 */	bl sprintf
/* 000030C4 00003188  3C C0 00 00 */	lis r6, float_68_muj_0000fe78@ha
/* 000030C8 0000318C  3C A0 00 00 */	lis r5, float_120_muj_0000fe58@ha
/* 000030CC 00003190  3C 80 00 00 */	lis r4, float_16_muj_0000fe7c@ha
/* 000030D0 00003194  C0 26 00 00 */	lfs f1, float_68_muj_0000fe78@l(r6)
/* 000030D4 00003198  C0 45 00 00 */	lfs f2, float_120_muj_0000fe58@l(r5)
/* 000030D8 0000319C  38 61 00 08 */	addi r3, r1, 0x8
/* 000030DC 000031A0  C0 64 00 00 */	lfs f3, float_16_muj_0000fe7c@l(r4)
/* 000030E0 000031A4  4B FF D8 C9 */	bl FontDrawStringPitch
/* 000030E4 000031A8  3C 60 00 00 */	lis r3, float_125_muj_0000fe80@ha
/* 000030E8 000031AC  3C 80 00 00 */	lis r4, float_120_muj_0000fe58@ha
/* 000030EC 000031B0  38 A3 00 00 */	addi r5, r3, float_125_muj_0000fe80@l
/* 000030F0 000031B4  C0 44 00 00 */	lfs f2, float_120_muj_0000fe58@l(r4)
/* 000030F4 000031B8  3C 60 00 00 */	lis r3, str_times_muj_0000fe84@ha
/* 000030F8 000031BC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000030FC 000031C0  38 63 00 00 */	addi r3, r3, str_times_muj_0000fe84@l
/* 00003100 000031C4  4B FF D8 A9 */	bl FontDrawString
/* 00003104 000031C8  48 00 00 F0 */	b .L_000031F4
.L_00003108:
/* 00003108 000031CC  3C 60 00 00 */	lis r3, str_PCT3d_muj_0000fe74@ha
/* 0000310C 000031D0  7F E5 FB 78 */	mr r5, r31
/* 00003110 000031D4  38 83 00 00 */	addi r4, r3, str_PCT3d_muj_0000fe74@l
/* 00003114 000031D8  38 61 00 08 */	addi r3, r1, 0x8
/* 00003118 000031DC  4C C6 31 82 */	crclr cr1eq
/* 0000311C 000031E0  4B FF D8 8D */	bl sprintf
/* 00003120 000031E4  3C C0 00 00 */	lis r6, float_73_muj_0000fe8c@ha
/* 00003124 000031E8  3C A0 00 00 */	lis r5, float_120_muj_0000fe58@ha
/* 00003128 000031EC  3C 80 00 00 */	lis r4, float_16_muj_0000fe7c@ha
/* 0000312C 000031F0  C0 26 00 00 */	lfs f1, float_73_muj_0000fe8c@l(r6)
/* 00003130 000031F4  C0 45 00 00 */	lfs f2, float_120_muj_0000fe58@l(r5)
/* 00003134 000031F8  38 61 00 08 */	addi r3, r1, 0x8
/* 00003138 000031FC  C0 64 00 00 */	lfs f3, float_16_muj_0000fe7c@l(r4)
/* 0000313C 00003200  4B FF D8 6D */	bl FontDrawStringPitch
/* 00003140 00003204  3C 60 00 00 */	lis r3, float_125_muj_0000fe80@ha
/* 00003144 00003208  3C 80 00 00 */	lis r4, float_120_muj_0000fe58@ha
/* 00003148 0000320C  38 A3 00 00 */	addi r5, r3, float_125_muj_0000fe80@l
/* 0000314C 00003210  C0 44 00 00 */	lfs f2, float_120_muj_0000fe58@l(r4)
/* 00003150 00003214  3C 60 00 00 */	lis r3, str_mal_muj_0000fe90@ha
/* 00003154 00003218  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00003158 0000321C  38 63 00 00 */	addi r3, r3, str_mal_muj_0000fe90@l
/* 0000315C 00003220  4B FF D8 4D */	bl FontDrawString
/* 00003160 00003224  48 00 00 94 */	b .L_000031F4
.L_00003164:
/* 00003164 00003228  3C 60 00 00 */	lis r3, str_PCT3d_muj_0000fe74@ha
/* 00003168 0000322C  7F E5 FB 78 */	mr r5, r31
/* 0000316C 00003230  38 83 00 00 */	addi r4, r3, str_PCT3d_muj_0000fe74@l
/* 00003170 00003234  38 61 00 08 */	addi r3, r1, 0x8
/* 00003174 00003238  4C C6 31 82 */	crclr cr1eq
/* 00003178 0000323C  4B FF D8 31 */	bl sprintf
/* 0000317C 00003240  3C C0 00 00 */	lis r6, float_68_muj_0000fe78@ha
/* 00003180 00003244  3C A0 00 00 */	lis r5, float_120_muj_0000fe58@ha
/* 00003184 00003248  3C 80 00 00 */	lis r4, float_16_muj_0000fe7c@ha
/* 00003188 0000324C  C0 26 00 00 */	lfs f1, float_68_muj_0000fe78@l(r6)
/* 0000318C 00003250  C0 45 00 00 */	lfs f2, float_120_muj_0000fe58@l(r5)
/* 00003190 00003254  38 61 00 08 */	addi r3, r1, 0x8
/* 00003194 00003258  C0 64 00 00 */	lfs f3, float_16_muj_0000fe7c@l(r4)
/* 00003198 0000325C  4B FF D8 11 */	bl FontDrawStringPitch
/* 0000319C 00003260  3C 60 00 00 */	lis r3, float_125_muj_0000fe80@ha
/* 000031A0 00003264  3C 80 00 00 */	lis r4, float_120_muj_0000fe58@ha
/* 000031A4 00003268  38 A3 00 00 */	addi r5, r3, float_125_muj_0000fe80@l
/* 000031A8 0000326C  C0 44 00 00 */	lfs f2, float_120_muj_0000fe58@l(r4)
/* 000031AC 00003270  3C 60 00 00 */	lis r3, str_veces_muj_0000fe98@ha
/* 000031B0 00003274  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000031B4 00003278  38 63 00 00 */	addi r3, r3, str_veces_muj_0000fe98@l
/* 000031B8 0000327C  4B FF D7 F1 */	bl FontDrawString
/* 000031BC 00003280  48 00 00 38 */	b .L_000031F4
.L_000031C0:
/* 000031C0 00003284  3C 60 00 00 */	lis r3, str_PCT3d_muj_0000fe74@ha
/* 000031C4 00003288  7F E5 FB 78 */	mr r5, r31
/* 000031C8 0000328C  38 83 00 00 */	addi r4, r3, str_PCT3d_muj_0000fe74@l
/* 000031CC 00003290  38 61 00 08 */	addi r3, r1, 0x8
/* 000031D0 00003294  4C C6 31 82 */	crclr cr1eq
/* 000031D4 00003298  4B FF D7 D5 */	bl sprintf
/* 000031D8 0000329C  3C 60 00 00 */	lis r3, float_110_muj_0000fea0@ha
/* 000031DC 000032A0  3C 80 00 00 */	lis r4, float_120_muj_0000fe58@ha
/* 000031E0 000032A4  38 A3 00 00 */	addi r5, r3, float_110_muj_0000fea0@l
/* 000031E4 000032A8  C0 44 00 00 */	lfs f2, float_120_muj_0000fe58@l(r4)
/* 000031E8 000032AC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000031EC 000032B0  38 61 00 08 */	addi r3, r1, 0x8
/* 000031F0 000032B4  4B FF D7 B9 */	bl FontDrawString
.L_000031F4:
/* 000031F4 000032B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000031F8 000032BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 000031FC 000032C0  7C 08 03 A6 */	mtlr r0
/* 00003200 000032C4  38 21 00 30 */	addi r1, r1, 0x30
/* 00003204 000032C8  4E 80 00 20 */	blr
.endfn printCount

# 0x00001C88..0x000021F8 | size: 0x570
.rodata
.balign 8

# .rodata:0x0 | 0x1C88 | size: 0x7
.obj str_w_bero_muj_0000f938, local
	.string "w_bero"
.endobj str_w_bero_muj_0000f938

# .rodata:0x7 | 0x1C8F | size: 0x1
.obj gap_03_00001C8F_rodata, global
.hidden gap_03_00001C8F_rodata
	.byte 0x00
.endobj gap_03_00001C8F_rodata

# .rodata:0x8 | 0x1C90 | size: 0x7
.obj str_muj_01_muj_0000f940, local
	.string "muj_01"
.endobj str_muj_01_muj_0000f940

# .rodata:0xF | 0x1C97 | size: 0x1
.obj gap_03_00001C97_rodata, global
.hidden gap_03_00001C97_rodata
	.byte 0x00
.endobj gap_03_00001C97_rodata

# .rodata:0x10 | 0x1C98 | size: 0x8
.obj str_e_bero1_muj_0000f948, local
	.string "e_bero1"
.endobj str_e_bero1_muj_0000f948

# .rodata:0x18 | 0x1CA0 | size: 0x7
.obj str_e_bero_muj_0000f950, local
	.string "e_bero"
.endobj str_e_bero_muj_0000f950

# .rodata:0x1F | 0x1CA7 | size: 0x1
.obj gap_03_00001CA7_rodata, global
.hidden gap_03_00001CA7_rodata
	.byte 0x00
.endobj gap_03_00001CA7_rodata

# .rodata:0x20 | 0x1CA8 | size: 0x7
.obj str_muj_03_muj_0000f958, local
	.string "muj_03"
.endobj str_muj_03_muj_0000f958

# .rodata:0x27 | 0x1CAF | size: 0x1
.obj gap_03_00001CAF_rodata, global
.hidden gap_03_00001CAF_rodata
	.byte 0x00
.endobj gap_03_00001CAF_rodata

# .rodata:0x28 | 0x1CB0 | size: 0x8
.obj str_dokan_1_muj_0000f960, local
	.string "dokan_1"
.endobj str_dokan_1_muj_0000f960

# .rodata:0x30 | 0x1CB8 | size: 0x7
.obj str_tik_17_muj_0000f968, local
	.string "tik_17"
.endobj str_tik_17_muj_0000f968

# .rodata:0x37 | 0x1CBF | size: 0x1
.obj gap_03_00001CBF_rodata, global
.hidden gap_03_00001CBF_rodata
	.byte 0x00
.endobj gap_03_00001CBF_rodata

# .rodata:0x38 | 0x1CC0 | size: 0x8
.obj str_dokan_2_muj_0000f970, local
	.string "dokan_2"
.endobj str_dokan_2_muj_0000f970

# .rodata:0x40 | 0x1CC8 | size: 0x7
.obj str_モニー_muj_0000f978, local
	.4byte 0x8382836A
	.byte 0x81, 0x5B, 0x00
.endobj str_モニー_muj_0000f978

# .rodata:0x47 | 0x1CCF | size: 0x1
.obj gap_03_00001CCF_rodata, global
.hidden gap_03_00001CCF_rodata
	.byte 0x00
.endobj gap_03_00001CCF_rodata

# .rodata:0x48 | 0x1CD0 | size: 0x9
.obj str_ピートン_muj_0000f980, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.byte 0x00
.endobj str_ピートン_muj_0000f980

# .rodata:0x51 | 0x1CD9 | size: 0x3
.obj gap_03_00001CD9_rodata, global
.hidden gap_03_00001CD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CD9_rodata

# .rodata:0x54 | 0x1CDC | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_muj_0000f98c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_muj_0000f98c

# .rodata:0x6F | 0x1CF7 | size: 0x1
.obj gap_03_00001CF7_rodata, global
.hidden gap_03_00001CF7_rodata
	.byte 0x00
.endobj gap_03_00001CF7_rodata

# .rodata:0x70 | 0x1CF8 | size: 0x6
.obj str_M_I_2_muj_0000f9a8, local
	.string "M_I_2"
.endobj str_M_I_2_muj_0000f9a8

# .rodata:0x76 | 0x1CFE | size: 0x2
.obj gap_03_00001CFE_rodata, global
.hidden gap_03_00001CFE_rodata
	.2byte 0x0000
.endobj gap_03_00001CFE_rodata

# .rodata:0x78 | 0x1D00 | size: 0x6
.obj str_mario_muj_0000f9b0, local
	.string "mario"
.endobj str_mario_muj_0000f9b0

# .rodata:0x7E | 0x1D06 | size: 0x2
.obj gap_03_00001D06_rodata, global
.hidden gap_03_00001D06_rodata
	.2byte 0x0000
.endobj gap_03_00001D06_rodata

# .rodata:0x80 | 0x1D08 | size: 0x6
.obj str_M_S_1_muj_0000f9b8, local
	.string "M_S_1"
.endobj str_M_S_1_muj_0000f9b8

# .rodata:0x86 | 0x1D0E | size: 0x2
.obj gap_03_00001D0E_rodata, global
.hidden gap_03_00001D0E_rodata
	.2byte 0x0000
.endobj gap_03_00001D0E_rodata

# .rodata:0x88 | 0x1D10 | size: 0xD
.obj str_stg5_muj_171_muj_0000f9c0, local
	.string "stg5_muj_171"
.endobj str_stg5_muj_171_muj_0000f9c0

# .rodata:0x95 | 0x1D1D | size: 0x3
.obj gap_03_00001D1D_rodata, global
.hidden gap_03_00001D1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D1D_rodata

# .rodata:0x98 | 0x1D20 | size: 0xD
.obj str_stg5_muj_172_muj_0000f9d0, local
	.string "stg5_muj_172"
.endobj str_stg5_muj_172_muj_0000f9d0

# .rodata:0xA5 | 0x1D2D | size: 0x3
.obj gap_03_00001D2D_rodata, global
.hidden gap_03_00001D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D2D_rodata

# .rodata:0xA8 | 0x1D30 | size: 0x1A
.obj str_SFX_VOICE_MARIO_QUES_muj_0000f9e0, local
	.string "SFX_VOICE_MARIO_QUESTION1"
.endobj str_SFX_VOICE_MARIO_QUES_muj_0000f9e0

# .rodata:0xC2 | 0x1D4A | size: 0x2
.obj gap_03_00001D4A_rodata, global
.hidden gap_03_00001D4A_rodata
	.2byte 0x0000
.endobj gap_03_00001D4A_rodata

# .rodata:0xC4 | 0x1D4C | size: 0x1
.obj zero_muj_0000f9fc, local
	.byte 0x00
.endobj zero_muj_0000f9fc

# .rodata:0xC5 | 0x1D4D | size: 0x3
.obj gap_03_00001D4D_rodata, global
.hidden gap_03_00001D4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D4D_rodata

# .rodata:0xC8 | 0x1D50 | size: 0xD
.obj str_stg5_muj_173_muj_0000fa00, local
	.string "stg5_muj_173"
.endobj str_stg5_muj_173_muj_0000fa00

# .rodata:0xD5 | 0x1D5D | size: 0x3
.obj gap_03_00001D5D_rodata, global
.hidden gap_03_00001D5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D5D_rodata

# .rodata:0xD8 | 0x1D60 | size: 0xD
.obj str_stg5_muj_174_muj_0000fa10, local
	.string "stg5_muj_174"
.endobj str_stg5_muj_174_muj_0000fa10

# .rodata:0xE5 | 0x1D6D | size: 0x3
.obj gap_03_00001D6D_rodata, global
.hidden gap_03_00001D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D6D_rodata

# .rodata:0xE8 | 0x1D70 | size: 0xD
.obj str_stg5_muj_175_muj_0000fa20, local
	.string "stg5_muj_175"
.endobj str_stg5_muj_175_muj_0000fa20

# .rodata:0xF5 | 0x1D7D | size: 0x3
.obj gap_03_00001D7D_rodata, global
.hidden gap_03_00001D7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D7D_rodata

# .rodata:0xF8 | 0x1D80 | size: 0xD
.obj str_stg5_muj_176_muj_0000fa30, local
	.string "stg5_muj_176"
.endobj str_stg5_muj_176_muj_0000fa30

# .rodata:0x105 | 0x1D8D | size: 0x3
.obj gap_03_00001D8D_rodata, global
.hidden gap_03_00001D8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D8D_rodata

# .rodata:0x108 | 0x1D90 | size: 0xD
.obj str_stg5_muj_177_muj_0000fa40, local
	.string "stg5_muj_177"
.endobj str_stg5_muj_177_muj_0000fa40

# .rodata:0x115 | 0x1D9D | size: 0x3
.obj gap_03_00001D9D_rodata, global
.hidden gap_03_00001D9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D9D_rodata

# .rodata:0x118 | 0x1DA0 | size: 0xD
.obj str_stg5_muj_178_muj_0000fa50, local
	.string "stg5_muj_178"
.endobj str_stg5_muj_178_muj_0000fa50

# .rodata:0x125 | 0x1DAD | size: 0x3
.obj gap_03_00001DAD_rodata, global
.hidden gap_03_00001DAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DAD_rodata

# .rodata:0x128 | 0x1DB0 | size: 0xD
.obj str_stg5_muj_179_muj_0000fa60, local
	.string "stg5_muj_179"
.endobj str_stg5_muj_179_muj_0000fa60

# .rodata:0x135 | 0x1DBD | size: 0x3
.obj gap_03_00001DBD_rodata, global
.hidden gap_03_00001DBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DBD_rodata

# .rodata:0x138 | 0x1DC0 | size: 0xD
.obj str_stg5_muj_180_muj_0000fa70, local
	.string "stg5_muj_180"
.endobj str_stg5_muj_180_muj_0000fa70

# .rodata:0x145 | 0x1DCD | size: 0x3
.obj gap_03_00001DCD_rodata, global
.hidden gap_03_00001DCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DCD_rodata

# .rodata:0x148 | 0x1DD0 | size: 0xD
.obj str_stg5_muj_181_muj_0000fa80, local
	.string "stg5_muj_181"
.endobj str_stg5_muj_181_muj_0000fa80

# .rodata:0x155 | 0x1DDD | size: 0x3
.obj gap_03_00001DDD_rodata, global
.hidden gap_03_00001DDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DDD_rodata

# .rodata:0x158 | 0x1DE0 | size: 0xD
.obj str_stg5_muj_182_muj_0000fa90, local
	.string "stg5_muj_182"
.endobj str_stg5_muj_182_muj_0000fa90

# .rodata:0x165 | 0x1DED | size: 0x3
.obj gap_03_00001DED_rodata, global
.hidden gap_03_00001DED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DED_rodata

# .rodata:0x168 | 0x1DF0 | size: 0x10
.obj str_stg5_muj_182_01_muj_0000faa0, local
	.string "stg5_muj_182_01"
.endobj str_stg5_muj_182_01_muj_0000faa0

# .rodata:0x178 | 0x1E00 | size: 0x10
.obj str_stg5_muj_182_02_muj_0000fab0, local
	.string "stg5_muj_182_02"
.endobj str_stg5_muj_182_02_muj_0000fab0

# .rodata:0x188 | 0x1E10 | size: 0x10
.obj str_stg5_muj_182_03_muj_0000fac0, local
	.string "stg5_muj_182_03"
.endobj str_stg5_muj_182_03_muj_0000fac0

# .rodata:0x198 | 0x1E20 | size: 0xD
.obj str_stg5_muj_183_muj_0000fad0, local
	.string "stg5_muj_183"
.endobj str_stg5_muj_183_muj_0000fad0

# .rodata:0x1A5 | 0x1E2D | size: 0x3
.obj gap_03_00001E2D_rodata, global
.hidden gap_03_00001E2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E2D_rodata

# .rodata:0x1A8 | 0x1E30 | size: 0xD
.obj str_stg5_muj_184_muj_0000fae0, local
	.string "stg5_muj_184"
.endobj str_stg5_muj_184_muj_0000fae0

# .rodata:0x1B5 | 0x1E3D | size: 0x3
.obj gap_03_00001E3D_rodata, global
.hidden gap_03_00001E3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E3D_rodata

# .rodata:0x1B8 | 0x1E40 | size: 0xD
.obj str_stg5_muj_185_muj_0000faf0, local
	.string "stg5_muj_185"
.endobj str_stg5_muj_185_muj_0000faf0

# .rodata:0x1C5 | 0x1E4D | size: 0x3
.obj gap_03_00001E4D_rodata, global
.hidden gap_03_00001E4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E4D_rodata

# .rodata:0x1C8 | 0x1E50 | size: 0x10
.obj str_stg5_muj_185_01_muj_0000fb00, local
	.string "stg5_muj_185_01"
.endobj str_stg5_muj_185_01_muj_0000fb00

# .rodata:0x1D8 | 0x1E60 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_muj_0000fb10, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_muj_0000fb10

# .rodata:0x1EF | 0x1E77 | size: 0x1
.obj gap_03_00001E77_rodata, global
.hidden gap_03_00001E77_rodata
	.byte 0x00
.endobj gap_03_00001E77_rodata

# .rodata:0x1F0 | 0x1E78 | size: 0x6
.obj str_M_N_2_muj_0000fb28, local
	.string "M_N_2"
.endobj str_M_N_2_muj_0000fb28

# .rodata:0x1F6 | 0x1E7E | size: 0x2
.obj gap_03_00001E7E_rodata, global
.hidden gap_03_00001E7E_rodata
	.2byte 0x0000
.endobj gap_03_00001E7E_rodata

# .rodata:0x1F8 | 0x1E80 | size: 0xD
.obj str_stg5_muj_196_muj_0000fb30, local
	.string "stg5_muj_196"
.endobj str_stg5_muj_196_muj_0000fb30

# .rodata:0x205 | 0x1E8D | size: 0x3
.obj gap_03_00001E8D_rodata, global
.hidden gap_03_00001E8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E8D_rodata

# .rodata:0x208 | 0x1E90 | size: 0xD
.obj str_stg5_muj_197_muj_0000fb40, local
	.string "stg5_muj_197"
.endobj str_stg5_muj_197_muj_0000fb40

# .rodata:0x215 | 0x1E9D | size: 0x3
.obj gap_03_00001E9D_rodata, global
.hidden gap_03_00001E9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E9D_rodata

# .rodata:0x218 | 0x1EA0 | size: 0xD
.obj str_stg5_muj_198_muj_0000fb50, local
	.string "stg5_muj_198"
.endobj str_stg5_muj_198_muj_0000fb50

# .rodata:0x225 | 0x1EAD | size: 0x3
.obj gap_03_00001EAD_rodata, global
.hidden gap_03_00001EAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EAD_rodata

# .rodata:0x228 | 0x1EB0 | size: 0x3
.obj str_me_muj_0000fb60, local
	.string "me"
.endobj str_me_muj_0000fb60

# .rodata:0x22B | 0x1EB3 | size: 0x1
.obj gap_03_00001EB3_rodata, global
.hidden gap_03_00001EB3_rodata
	.byte 0x00
.endobj gap_03_00001EB3_rodata

# .rodata:0x22C | 0x1EB4 | size: 0xD
.obj str_stg5_muj_169_muj_0000fb64, local
	.string "stg5_muj_169"
.endobj str_stg5_muj_169_muj_0000fb64

# .rodata:0x239 | 0x1EC1 | size: 0x3
.obj gap_03_00001EC1_rodata, global
.hidden gap_03_00001EC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EC1_rodata

# .rodata:0x23C | 0x1EC4 | size: 0xD
.obj str_stg5_muj_192_muj_0000fb74, local
	.string "stg5_muj_192"
.endobj str_stg5_muj_192_muj_0000fb74

# .rodata:0x249 | 0x1ED1 | size: 0x3
.obj gap_03_00001ED1_rodata, global
.hidden gap_03_00001ED1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001ED1_rodata

# .rodata:0x24C | 0x1ED4 | size: 0xD
.obj str_stg5_muj_194_muj_0000fb84, local
	.string "stg5_muj_194"
.endobj str_stg5_muj_194_muj_0000fb84

# .rodata:0x259 | 0x1EE1 | size: 0x3
.obj gap_03_00001EE1_rodata, global
.hidden gap_03_00001EE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EE1_rodata

# .rodata:0x25C | 0x1EE4 | size: 0xD
.obj str_stg5_muj_170_muj_0000fb94, local
	.string "stg5_muj_170"
.endobj str_stg5_muj_170_muj_0000fb94

# .rodata:0x269 | 0x1EF1 | size: 0x3
.obj gap_03_00001EF1_rodata, global
.hidden gap_03_00001EF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EF1_rodata

# .rodata:0x26C | 0x1EF4 | size: 0xD
.obj str_stg5_muj_193_muj_0000fba4, local
	.string "stg5_muj_193"
.endobj str_stg5_muj_193_muj_0000fba4

# .rodata:0x279 | 0x1F01 | size: 0x3
.obj gap_03_00001F01_rodata, global
.hidden gap_03_00001F01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F01_rodata

# .rodata:0x27C | 0x1F04 | size: 0xD
.obj str_stg5_muj_195_muj_0000fbb4, local
	.string "stg5_muj_195"
.endobj str_stg5_muj_195_muj_0000fbb4

# .rodata:0x289 | 0x1F11 | size: 0x3
.obj gap_03_00001F11_rodata, global
.hidden gap_03_00001F11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F11_rodata

# .rodata:0x28C | 0x1F14 | size: 0xA
.obj str_A_yuka_01_muj_0000fbc4, local
	.string "A_yuka_01"
.endobj str_A_yuka_01_muj_0000fbc4

# .rodata:0x296 | 0x1F1E | size: 0x2
.obj gap_03_00001F1E_rodata, global
.hidden gap_03_00001F1E_rodata
	.2byte 0x0000
.endobj gap_03_00001F1E_rodata

# .rodata:0x298 | 0x1F20 | size: 0x8
.obj str_S_dakan_muj_0000fbd0, local
	.string "S_dakan"
.endobj str_S_dakan_muj_0000fbd0

# .rodata:0x2A0 | 0x1F28 | size: 0x8
.obj str_A_dokan_muj_0000fbd8, local
	.string "A_dokan"
.endobj str_A_dokan_muj_0000fbd8

# .rodata:0x2A8 | 0x1F30 | size: 0xE
.obj str_item_treeb_01_muj_0000fbe0, local
	.string "item_treeb_01"
.endobj str_item_treeb_01_muj_0000fbe0

# .rodata:0x2B6 | 0x1F3E | size: 0x2
.obj gap_03_00001F3E_rodata, global
.hidden gap_03_00001F3E_rodata
	.2byte 0x0000
.endobj gap_03_00001F3E_rodata

# .rodata:0x2B8 | 0x1F40 | size: 0xC
.obj str_item_kusa_2_muj_0000fbf0, local
	.string "item_kusa_2"
.endobj str_item_kusa_2_muj_0000fbf0

# .rodata:0x2C4 | 0x1F4C | size: 0xC
.obj str_item_kusa_6_muj_0000fbfc, local
	.string "item_kusa_6"
.endobj str_item_kusa_6_muj_0000fbfc

# .rodata:0x2D0 | 0x1F58 | size: 0xB
.obj str_A_treeA_01_muj_0000fc08, local
	.string "A_treeA_01"
.endobj str_A_treeA_01_muj_0000fc08

# .rodata:0x2DB | 0x1F63 | size: 0x1
.obj gap_03_00001F63_rodata, global
.hidden gap_03_00001F63_rodata
	.byte 0x00
.endobj gap_03_00001F63_rodata

# .rodata:0x2DC | 0x1F64 | size: 0xB
.obj str_treeA_01_m_muj_0000fc14, local
	.string "treeA_01_m"
.endobj str_treeA_01_m_muj_0000fc14

# .rodata:0x2E7 | 0x1F6F | size: 0x1
.obj gap_03_00001F6F_rodata, global
.hidden gap_03_00001F6F_rodata
	.byte 0x00
.endobj gap_03_00001F6F_rodata

# .rodata:0x2E8 | 0x1F70 | size: 0xC
.obj str_treeA_01_ha_muj_0000fc20, local
	.string "treeA_01_ha"
.endobj str_treeA_01_ha_muj_0000fc20

# .rodata:0x2F4 | 0x1F7C | size: 0xB
.obj str_A_treeA_02_muj_0000fc2c, local
	.string "A_treeA_02"
.endobj str_A_treeA_02_muj_0000fc2c

# .rodata:0x2FF | 0x1F87 | size: 0x1
.obj gap_03_00001F87_rodata, global
.hidden gap_03_00001F87_rodata
	.byte 0x00
.endobj gap_03_00001F87_rodata

# .rodata:0x300 | 0x1F88 | size: 0xB
.obj str_treeA_02_m_muj_0000fc38, local
	.string "treeA_02_m"
.endobj str_treeA_02_m_muj_0000fc38

# .rodata:0x30B | 0x1F93 | size: 0x1
.obj gap_03_00001F93_rodata, global
.hidden gap_03_00001F93_rodata
	.byte 0x00
.endobj gap_03_00001F93_rodata

# .rodata:0x30C | 0x1F94 | size: 0xC
.obj str_treeA_02_ha_muj_0000fc44, local
	.string "treeA_02_ha"
.endobj str_treeA_02_ha_muj_0000fc44

# .rodata:0x318 | 0x1FA0 | size: 0xB
.obj str_A_treeB_01_muj_0000fc50, local
	.string "A_treeB_01"
.endobj str_A_treeB_01_muj_0000fc50

# .rodata:0x323 | 0x1FAB | size: 0x1
.obj gap_03_00001FAB_rodata, global
.hidden gap_03_00001FAB_rodata
	.byte 0x00
.endobj gap_03_00001FAB_rodata

# .rodata:0x324 | 0x1FAC | size: 0xB
.obj str_treeB_01_m_muj_0000fc5c, local
	.string "treeB_01_m"
.endobj str_treeB_01_m_muj_0000fc5c

# .rodata:0x32F | 0x1FB7 | size: 0x1
.obj gap_03_00001FB7_rodata, global
.hidden gap_03_00001FB7_rodata
	.byte 0x00
.endobj gap_03_00001FB7_rodata

# .rodata:0x330 | 0x1FB8 | size: 0xC
.obj str_treeB_01_ha_muj_0000fc68, local
	.string "treeB_01_ha"
.endobj str_treeB_01_ha_muj_0000fc68

# .rodata:0x33C | 0x1FC4 | size: 0xB
.obj str_A_treeB_02_muj_0000fc74, local
	.string "A_treeB_02"
.endobj str_A_treeB_02_muj_0000fc74

# .rodata:0x347 | 0x1FCF | size: 0x1
.obj gap_03_00001FCF_rodata, global
.hidden gap_03_00001FCF_rodata
	.byte 0x00
.endobj gap_03_00001FCF_rodata

# .rodata:0x348 | 0x1FD0 | size: 0xB
.obj str_treeB_02_m_muj_0000fc80, local
	.string "treeB_02_m"
.endobj str_treeB_02_m_muj_0000fc80

# .rodata:0x353 | 0x1FDB | size: 0x1
.obj gap_03_00001FDB_rodata, global
.hidden gap_03_00001FDB_rodata
	.byte 0x00
.endobj gap_03_00001FDB_rodata

# .rodata:0x354 | 0x1FDC | size: 0xC
.obj str_treeB_02_ha_muj_0000fc8c, local
	.string "treeB_02_ha"
.endobj str_treeB_02_ha_muj_0000fc8c

# .rodata:0x360 | 0x1FE8 | size: 0xB
.obj str_A_treeB_03_muj_0000fc98, local
	.string "A_treeB_03"
.endobj str_A_treeB_03_muj_0000fc98

# .rodata:0x36B | 0x1FF3 | size: 0x1
.obj gap_03_00001FF3_rodata, global
.hidden gap_03_00001FF3_rodata
	.byte 0x00
.endobj gap_03_00001FF3_rodata

# .rodata:0x36C | 0x1FF4 | size: 0xB
.obj str_treeB_03_m_muj_0000fca4, local
	.string "treeB_03_m"
.endobj str_treeB_03_m_muj_0000fca4

# .rodata:0x377 | 0x1FFF | size: 0x1
.obj gap_03_00001FFF_rodata, global
.hidden gap_03_00001FFF_rodata
	.byte 0x00
.endobj gap_03_00001FFF_rodata

# .rodata:0x378 | 0x2000 | size: 0xC
.obj str_treeB_03_ha_muj_0000fcb0, local
	.string "treeB_03_ha"
.endobj str_treeB_03_ha_muj_0000fcb0

# .rodata:0x384 | 0x200C | size: 0xB
.obj str_A_treeB_04_muj_0000fcbc, local
	.string "A_treeB_04"
.endobj str_A_treeB_04_muj_0000fcbc

# .rodata:0x38F | 0x2017 | size: 0x1
.obj gap_03_00002017_rodata, global
.hidden gap_03_00002017_rodata
	.byte 0x00
.endobj gap_03_00002017_rodata

# .rodata:0x390 | 0x2018 | size: 0xB
.obj str_treeB_04_m_muj_0000fcc8, local
	.string "treeB_04_m"
.endobj str_treeB_04_m_muj_0000fcc8

# .rodata:0x39B | 0x2023 | size: 0x1
.obj gap_03_00002023_rodata, global
.hidden gap_03_00002023_rodata
	.byte 0x00
.endobj gap_03_00002023_rodata

# .rodata:0x39C | 0x2024 | size: 0xC
.obj str_treeB_04_ha_muj_0000fcd4, local
	.string "treeB_04_ha"
.endobj str_treeB_04_ha_muj_0000fcd4

# .rodata:0x3A8 | 0x2030 | size: 0xF
.obj str_A_kuwa_move_01_muj_0000fce0, local
	.string "A_kuwa_move_01"
.endobj str_A_kuwa_move_01_muj_0000fce0

# .rodata:0x3B7 | 0x203F | size: 0x1
.obj gap_03_0000203F_rodata, global
.hidden gap_03_0000203F_rodata
	.byte 0x00
.endobj gap_03_0000203F_rodata

# .rodata:0x3B8 | 0x2040 | size: 0xF
.obj str_S_kuwa_move_01_muj_0000fcf0, local
	.string "S_kuwa_move_01"
.endobj str_S_kuwa_move_01_muj_0000fcf0

# .rodata:0x3C7 | 0x204F | size: 0x1
.obj gap_03_0000204F_rodata, global
.hidden gap_03_0000204F_rodata
	.byte 0x00
.endobj gap_03_0000204F_rodata

# .rodata:0x3C8 | 0x2050 | size: 0xF
.obj str_A_kuwa_move_02_muj_0000fd00, local
	.string "A_kuwa_move_02"
.endobj str_A_kuwa_move_02_muj_0000fd00

# .rodata:0x3D7 | 0x205F | size: 0x1
.obj gap_03_0000205F_rodata, global
.hidden gap_03_0000205F_rodata
	.byte 0x00
.endobj gap_03_0000205F_rodata

# .rodata:0x3D8 | 0x2060 | size: 0xF
.obj str_S_kuwa_move_02_muj_0000fd10, local
	.string "S_kuwa_move_02"
.endobj str_S_kuwa_move_02_muj_0000fd10

# .rodata:0x3E7 | 0x206F | size: 0x1
.obj gap_03_0000206F_rodata, global
.hidden gap_03_0000206F_rodata
	.byte 0x00
.endobj gap_03_0000206F_rodata

# .rodata:0x3E8 | 0x2070 | size: 0xF
.obj str_A_kuwa_move_03_muj_0000fd20, local
	.string "A_kuwa_move_03"
.endobj str_A_kuwa_move_03_muj_0000fd20

# .rodata:0x3F7 | 0x207F | size: 0x1
.obj gap_03_0000207F_rodata, global
.hidden gap_03_0000207F_rodata
	.byte 0x00
.endobj gap_03_0000207F_rodata

# .rodata:0x3F8 | 0x2080 | size: 0xF
.obj str_S_kuwa_move_03_muj_0000fd30, local
	.string "S_kuwa_move_03"
.endobj str_S_kuwa_move_03_muj_0000fd30

# .rodata:0x407 | 0x208F | size: 0x1
.obj gap_03_0000208F_rodata, global
.hidden gap_03_0000208F_rodata
	.byte 0x00
.endobj gap_03_0000208F_rodata

# .rodata:0x408 | 0x2090 | size: 0xF
.obj str_A_kuwa_move_04_muj_0000fd40, local
	.string "A_kuwa_move_04"
.endobj str_A_kuwa_move_04_muj_0000fd40

# .rodata:0x417 | 0x209F | size: 0x1
.obj gap_03_0000209F_rodata, global
.hidden gap_03_0000209F_rodata
	.byte 0x00
.endobj gap_03_0000209F_rodata

# .rodata:0x418 | 0x20A0 | size: 0xF
.obj str_S_kuwa_move_04_muj_0000fd50, local
	.string "S_kuwa_move_04"
.endobj str_S_kuwa_move_04_muj_0000fd50

# .rodata:0x427 | 0x20AF | size: 0x1
.obj gap_03_000020AF_rodata, global
.hidden gap_03_000020AF_rodata
	.byte 0x00
.endobj gap_03_000020AF_rodata

# .rodata:0x428 | 0x20B0 | size: 0xF
.obj str_A_kuwa_move_05_muj_0000fd60, local
	.string "A_kuwa_move_05"
.endobj str_A_kuwa_move_05_muj_0000fd60

# .rodata:0x437 | 0x20BF | size: 0x1
.obj gap_03_000020BF_rodata, global
.hidden gap_03_000020BF_rodata
	.byte 0x00
.endobj gap_03_000020BF_rodata

# .rodata:0x438 | 0x20C0 | size: 0xF
.obj str_S_kuwa_move_05_muj_0000fd70, local
	.string "S_kuwa_move_05"
.endobj str_S_kuwa_move_05_muj_0000fd70

# .rodata:0x447 | 0x20CF | size: 0x1
.obj gap_03_000020CF_rodata, global
.hidden gap_03_000020CF_rodata
	.byte 0x00
.endobj gap_03_000020CF_rodata

# .rodata:0x448 | 0x20D0 | size: 0xF
.obj str_A_kuwa_move_06_muj_0000fd80, local
	.string "A_kuwa_move_06"
.endobj str_A_kuwa_move_06_muj_0000fd80

# .rodata:0x457 | 0x20DF | size: 0x1
.obj gap_03_000020DF_rodata, global
.hidden gap_03_000020DF_rodata
	.byte 0x00
.endobj gap_03_000020DF_rodata

# .rodata:0x458 | 0x20E0 | size: 0xF
.obj str_S_kuwa_move_06_muj_0000fd90, local
	.string "S_kuwa_move_06"
.endobj str_S_kuwa_move_06_muj_0000fd90

# .rodata:0x467 | 0x20EF | size: 0x1
.obj gap_03_000020EF_rodata, global
.hidden gap_03_000020EF_rodata
	.byte 0x00
.endobj gap_03_000020EF_rodata

# .rodata:0x468 | 0x20F0 | size: 0xE
.obj str_BGM_STG5_MUJ1_muj_0000fda0, local
	.string "BGM_STG5_MUJ1"
.endobj str_BGM_STG5_MUJ1_muj_0000fda0

# .rodata:0x476 | 0x20FE | size: 0x2
.obj gap_03_000020FE_rodata, global
.hidden gap_03_000020FE_rodata
	.2byte 0x0000
.endobj gap_03_000020FE_rodata

# .rodata:0x478 | 0x2100 | size: 0xE
.obj str_ENV_STG5_MUJ4_muj_0000fdb0, local
	.string "ENV_STG5_MUJ4"
.endobj str_ENV_STG5_MUJ4_muj_0000fdb0

# .rodata:0x486 | 0x210E | size: 0x2
.obj gap_03_0000210E_rodata, global
.hidden gap_03_0000210E_rodata
	.2byte 0x0000
.endobj gap_03_0000210E_rodata

# .rodata:0x488 | 0x2110 | size: 0x11
.obj str_ピートン（指輪）_muj_0000fdc0, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.4byte 0x81698E77
	.4byte 0x97D6816A
	.byte 0x00
.endobj str_ピートン（指輪）_muj_0000fdc0

# .rodata:0x499 | 0x2121 | size: 0x3
.obj gap_03_00002121_rodata, global
.hidden gap_03_00002121_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002121_rodata

# .rodata:0x49C | 0x2124 | size: 0xD
.obj str_チョロボン２_muj_0000fdd4, local
	.4byte 0x83608387
	.4byte 0x838D837B
	.4byte 0x83938251
	.byte 0x00
.endobj str_チョロボン２_muj_0000fdd4

# .rodata:0x4A9 | 0x2131 | size: 0x3
.obj gap_03_00002131_rodata, global
.hidden gap_03_00002131_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002131_rodata

# .rodata:0x4AC | 0x2134 | size: 0xD
.obj str_チョロボン１_muj_0000fde4, local
	.4byte 0x83608387
	.4byte 0x838D837B
	.4byte 0x83938250
	.byte 0x00
.endobj str_チョロボン１_muj_0000fde4

# .rodata:0x4B9 | 0x2141 | size: 0x3
.obj gap_03_00002141_rodata, global
.hidden gap_03_00002141_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002141_rodata

# .rodata:0x4BC | 0x2144 | size: 0xD
.obj str_チョロボン７_muj_0000fdf4, local
	.4byte 0x83608387
	.4byte 0x838D837B
	.4byte 0x83938256
	.byte 0x00
.endobj str_チョロボン７_muj_0000fdf4

# .rodata:0x4C9 | 0x2151 | size: 0x3
.obj gap_03_00002151_rodata, global
.hidden gap_03_00002151_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002151_rodata

# .rodata:0x4CC | 0x2154 | size: 0x5
.obj str_mizu_muj_0000fe04, local
	.string "mizu"
.endobj str_mizu_muj_0000fe04

# .rodata:0x4D1 | 0x2159 | size: 0x3
.obj gap_03_00002159_rodata, global
.hidden gap_03_00002159_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002159_rodata

# .rodata:0x4D4 | 0x215C | size: 0x9
.obj str_sunlight_muj_0000fe0c, local
	.string "sunlight"
.endobj str_sunlight_muj_0000fe0c

# .rodata:0x4DD | 0x2165 | size: 0x3
.obj gap_03_00002165_rodata, global
.hidden gap_03_00002165_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002165_rodata

# .rodata:0x4E0 | 0x2168 | size: 0xD
.obj str_sunlight_n64_muj_0000fe18, local
	.string "sunlight_n64"
.endobj str_sunlight_n64_muj_0000fe18

# .rodata:0x4ED | 0x2175 | size: 0x3
.obj gap_03_00002175_rodata, global
.hidden gap_03_00002175_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002175_rodata

# .rodata:0x4F0 | 0x2178 | size: 0xF
.obj str_mobj_badge_gat_muj_0000fe28, local
	.string "mobj_badge_gat"
.endobj str_mobj_badge_gat_muj_0000fe28

# .rodata:0x4FF | 0x2187 | size: 0x1
.obj gap_03_00002187_rodata, global
.hidden gap_03_00002187_rodata
	.byte 0x00
.endobj gap_03_00002187_rodata

# .rodata:0x500 | 0x2188 | size: 0xC
.obj str_mobj_hatena_muj_0000fe38, local
	.string "mobj_hatena"
.endobj str_mobj_hatena_muj_0000fe38

# .rodata:0x50C | 0x2194 | size: 0x2
.obj str_S_muj_0000fe44, local
	.string "S"
.endobj str_S_muj_0000fe44
	.2byte 0x0000

# .rodata:0x510 | 0x2198 | size: 0x4
.obj float_399_muj_0000fe48, local
	.float 399
.endobj float_399_muj_0000fe48

# .rodata:0x514 | 0x219C | size: 0x6
.obj str_PCT3d回_muj_0000fe4c, local
	.4byte 0x25336489
	.2byte 0xF100
.endobj str_PCT3d回_muj_0000fe4c
	.2byte 0x0000

# .rodata:0x51C | 0x21A4 | size: 0x4
.obj float_90_muj_0000fe54, local
	.float 90
.endobj float_90_muj_0000fe54

# .rodata:0x520 | 0x21A8 | size: 0x4
.obj float_120_muj_0000fe58, local
	.float 120
.endobj float_120_muj_0000fe58

# .rodata:0x524 | 0x21AC | size: 0x4
.obj float_20_muj_0000fe5c, local
	.float 20
.endobj float_20_muj_0000fe5c

# .rodata:0x528 | 0x21B0 | size: 0x5
.obj str_かい_muj_0000fe60, local
	.4byte 0x82A982A2
	.byte 0x00
.endobj str_かい_muj_0000fe60
	.byte 0x00, 0x00, 0x00

# .rodata:0x530 | 0x21B8 | size: 0x4
.obj float_0p55_muj_0000fe68, local
	.float 0.55
.endobj float_0p55_muj_0000fe68

# .rodata:0x534 | 0x21BC | size: 0x4
.obj float_148_muj_0000fe6c, local
	.float 148
.endobj float_148_muj_0000fe6c

# .rodata:0x538 | 0x21C0 | size: 0x4
.obj float_131_muj_0000fe70, local
	.float 131
.endobj float_131_muj_0000fe70

# .rodata:0x53C | 0x21C4 | size: 0x4
.obj str_PCT3d_muj_0000fe74, local
	.string "%3d"
.endobj str_PCT3d_muj_0000fe74

# .rodata:0x540 | 0x21C8 | size: 0x4
.obj float_68_muj_0000fe78, local
	.float 68
.endobj float_68_muj_0000fe78

# .rodata:0x544 | 0x21CC | size: 0x4
.obj float_16_muj_0000fe7c, local
	.float 16
.endobj float_16_muj_0000fe7c

# .rodata:0x548 | 0x21D0 | size: 0x4
.obj float_125_muj_0000fe80, local
	.float 125
.endobj float_125_muj_0000fe80

# .rodata:0x54C | 0x21D4 | size: 0x6
.obj str_times_muj_0000fe84, local
	.string "times"
.endobj str_times_muj_0000fe84
	.2byte 0x0000

# .rodata:0x554 | 0x21DC | size: 0x4
.obj float_73_muj_0000fe8c, local
	.float 73
.endobj float_73_muj_0000fe8c

# .rodata:0x558 | 0x21E0 | size: 0x5
.obj str_mal_muj_0000fe90, local
	.string "-mal"
.endobj str_mal_muj_0000fe90

# .rodata:0x55D | 0x21E5 | size: 0x3
.obj gap_03_000021E5_rodata, global
.hidden gap_03_000021E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021E5_rodata

# .rodata:0x560 | 0x21E8 | size: 0x6
.obj str_veces_muj_0000fe98, local
	.string "veces"
.endobj str_veces_muj_0000fe98
	.2byte 0x0000

# .rodata:0x568 | 0x21F0 | size: 0x4
.obj float_110_muj_0000fea0, local
	.float 110
.endobj float_110_muj_0000fea0

# .rodata:0x56C | 0x21F4 | size: 0x4
.obj gap_03_000021F4_rodata, global
.hidden gap_03_000021F4_rodata
	.4byte 0x00000000
.endobj gap_03_000021F4_rodata

# 0x0000FB88..0x000112A8 | size: 0x1720
.data
.balign 8

# .data:0x0 | 0xFB88 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xFB90 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xFB94 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xFB98 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xFB9C | size: 0x4
.obj gap_04_0000FB9C_data, global
.hidden gap_04_0000FB9C_data
	.4byte 0x00000000
.endobj gap_04_0000FB9C_data

# .data:0x18 | 0xFBA0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xFBA8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xFBAC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xFBB0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xFBB8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xFBBC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xFBC0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xFBC4 | size: 0x4
.obj gap_04_0000FBC4_data, global
.hidden gap_04_0000FBC4_data
	.4byte 0x00000000
.endobj gap_04_0000FBC4_data

# .data:0x40 | 0xFBC8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xFBD0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xFBD4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xFBD8 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_w_bero_muj_0000f938
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_01_muj_0000f940
	.4byte str_e_bero1_muj_0000f948
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_muj_0000f950
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_03_muj_0000f958
	.4byte str_w_bero_muj_0000f938
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_muj_0000f960
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_17_muj_0000f968
	.4byte str_dokan_2_muj_0000f970
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

# .data:0x140 | 0xFCC8 | size: 0x22C
.obj mony_peton_setup, local
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000037
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD8
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB5
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000037
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_muj_0000f978
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_peton_setup

# .data:0x36C | 0xFEF4 | size: 0x10
.obj lost_wedding_ring_sub, local
	.4byte 0x0001005B
	.4byte countDisp
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lost_wedding_ring_sub

# .data:0x37C | 0xFF04 | size: 0x62C
.obj lost_wedding_ring, local
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピートン_muj_0000f980
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_モニー_muj_0000f978
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte mony_peton_setup
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_muj_0000f98c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_0000f9a8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_muj_0000f980
	.4byte str_mario_muj_0000f9b0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_0000f9b8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_171_muj_0000f9c0
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_172_muj_0000f9d0
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_muj_0000f9e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_muj_0000f9fc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x00000076
	.4byte 0x00000157
	.4byte 0xFE363C80
	.4byte 0x00000036
	.4byte 0xFFFFFFEE
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_173_muj_0000fa00
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_muj_0000f980
	.4byte str_モニー_muj_0000f978
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_174_muj_0000fa10
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_muj_0000f978
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_175_muj_0000fa20
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_176_muj_0000fa30
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_177_muj_0000fa40
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_178_muj_0000fa50
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_179_muj_0000fa60
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_180_muj_0000fa70
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0004005B
	.4byte evt_get_target_dir
	.4byte str_モニー_muj_0000f978
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_181_muj_0000fa80
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_182_muj_0000fa90
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_muj_0000f978
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x0002005D
	.4byte lost_wedding_ring_sub
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_182_01_muj_0000faa0
	.4byte 0x00020035
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_182_02_muj_0000fab0
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_182_03_muj_0000fac0
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_muj_0000f978
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_183_muj_0000fad0
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_184_muj_0000fae0
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x00000076
	.4byte 0x00000157
	.4byte 0xFE363C80
	.4byte 0x00000036
	.4byte 0xFFFFFFEE
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000049
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_185_muj_0000faf0
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_185_01_muj_0000fb00
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_muj_0000fb10
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_muj_0000fb28
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0x00000190
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_muj_0000f978
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_muj_0000f978
	.4byte 0x000001F4
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_モニー_muj_0000f978
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lost_wedding_ring

# .data:0x9A8 | 0x10530 | size: 0x8
.obj itemsel_table00, local
	.4byte 0x00000049
	.4byte 0xFFFFFFFF
.endobj itemsel_table00

# .data:0x9B0 | 0x10538 | size: 0x78
.obj wedding_ring_consign, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000049
	.4byte 0xFE363C8A
	.4byte 0x00020019
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte itemsel_table00
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000049
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wedding_ring_consign

# .data:0xA28 | 0x105B0 | size: 0x2D0
.obj find_wedding_ring, local
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピートン_muj_0000f980
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_モニー_muj_0000f978
	.4byte 0x40000020
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte mony_peton_setup
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_muj_0000f978
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_muj_0000f980
	.4byte str_モニー_muj_0000f978
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_196_muj_0000fb30
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_197_muj_0000fb40
	.4byte 0x00000000
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_muj_0000f978
	.4byte str_mario_muj_0000f9b0
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_muj_0000f980
	.4byte str_mario_muj_0000f9b0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_198_muj_0000fb50
	.4byte 0x00000000
	.4byte str_モニー_muj_0000f978
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF6
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_muj_0000f978
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_muj_0000f978
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_モニー_muj_0000f978
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF6
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_muj_0000f980
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピートン_muj_0000f980
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj find_wedding_ring

# .data:0xCF8 | 0x10880 | size: 0x4C
.obj mony_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_muj_0000fb60
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000112
	.4byte 0x00000113
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000fb60
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_init

# .data:0xD44 | 0x108CC | size: 0x184
.obj mony_peton_regl, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000fb60
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000fb60
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000fb60
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_muj_0000fb60
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B2E80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000fb60
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000fb60
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000fb60
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_muj_0000fb60
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B2E80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0xFE363C86
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_peton_regl

# .data:0xEC8 | 0x10A50 | size: 0x34
.obj mony_regl, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD8
	.4byte 0x0001005E
	.4byte mony_peton_regl
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_regl

# .data:0xEFC | 0x10A84 | size: 0xC8
.obj mony_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x00000112
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_169_muj_0000fb64
	.4byte 0x00000000
	.4byte str_me_muj_0000fb60
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte lost_wedding_ring
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000113
	.4byte 0x00010024
	.4byte 0x00000113
	.4byte 0x0001005E
	.4byte wedding_ring_consign
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_192_muj_0000fb74
	.4byte 0x00000000
	.4byte str_me_muj_0000fb60
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_194_muj_0000fb84
	.4byte 0x00000000
	.4byte str_me_muj_0000fb60
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte find_wedding_ring
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000114
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_talk

# .data:0xFC4 | 0x10B4C | size: 0x4C
.obj peton_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_muj_0000fb60
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000112
	.4byte 0x00000113
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000fb60
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_init

# .data:0x1010 | 0x10B98 | size: 0x34
.obj peton_regl, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFD8
	.4byte 0x0001005E
	.4byte mony_peton_regl
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_regl

# .data:0x1044 | 0x10BCC | size: 0xC8
.obj peton_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x00000112
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_170_muj_0000fb94
	.4byte 0x00000000
	.4byte str_me_muj_0000fb60
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte lost_wedding_ring
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000113
	.4byte 0x00010024
	.4byte 0x00000113
	.4byte 0x0001005E
	.4byte wedding_ring_consign
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_193_muj_0000fba4
	.4byte 0x00000000
	.4byte str_me_muj_0000fb60
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_195_muj_0000fbb4
	.4byte 0x00000000
	.4byte str_me_muj_0000fb60
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte find_wedding_ring
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000114
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_talk

# .data:0x110C | 0x10C94 | size: 0x114
.obj npcEnt, local
	.4byte str_モニー_muj_0000f978
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte mony_init
	.4byte mony_regl
	.4byte mony_talk
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
	.4byte str_ピートン_muj_0000f980
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte peton_init
	.4byte peton_regl
	.4byte peton_talk
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

# .data:0x1220 | 0x10DA8 | size: 0x20
.obj hitDmgRetPoints, local
	.4byte str_A_yuka_01_muj_0000fbc4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x1240 | 0x10DC8 | size: 0x44
.obj evt_switch_init, local
	.4byte 0x00020018
	.4byte 0xF84060C5
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dakan_muj_0000fbd0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokan_muj_0000fbd8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_switch_init

# .data:0x1284 | 0x10E0C | size: 0x50
.obj evt_treeb_01, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_treeb_01_muj_0000fbe0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_treeb_01_muj_0000fbe0
	.4byte 0x000000AA
	.4byte 0xFFFFFEA2
	.4byte 0x0000005A
	.4byte 0xFFFFFFBA
	.4byte 0x0000000E
	.4byte 0xF84067D0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_treeb_01

# .data:0x12D4 | 0x10E5C | size: 0x50
.obj evt_kusa_2, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_2_muj_0000fbf0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_2_muj_0000fbf0
	.4byte 0x00000079
	.4byte 0x00000143
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000004
	.4byte 0xF84067D2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_2

# .data:0x1324 | 0x10EAC | size: 0x50
.obj evt_kusa_6, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_6_muj_0000fbfc
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_6_muj_0000fbfc
	.4byte 0x0000007D
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000004
	.4byte 0xF8407189
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_6

# .data:0x1374 | 0x10EFC | size: 0xA8
.obj tree_tbl, local
	.4byte 0x00000005
	.4byte str_A_treeA_01_muj_0000fc08
	.4byte str_treeA_01_m_muj_0000fc14
	.4byte str_treeA_01_ha_muj_0000fc20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeA_02_muj_0000fc2c
	.4byte str_treeA_02_m_muj_0000fc38
	.4byte str_treeA_02_ha_muj_0000fc44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_01_muj_0000fc50
	.4byte str_treeB_01_m_muj_0000fc5c
	.4byte str_treeB_01_ha_muj_0000fc68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_02_muj_0000fc74
	.4byte str_treeB_02_m_muj_0000fc80
	.4byte str_treeB_02_ha_muj_0000fc8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_03_muj_0000fc98
	.4byte str_treeB_03_m_muj_0000fca4
	.4byte str_treeB_03_ha_muj_0000fcb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_04_muj_0000fcbc
	.4byte str_treeB_04_m_muj_0000fcc8
	.4byte str_treeB_04_ha_muj_0000fcd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_tbl

# .data:0x141C | 0x10FA4 | size: 0xA8
.obj unk_muj_000257f4, local
	.4byte 0x00000005
	.4byte str_A_treeA_01_muj_0000fc08
	.4byte str_treeA_01_m_muj_0000fc14
	.4byte str_treeA_01_ha_muj_0000fc20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeA_02_muj_0000fc2c
	.4byte str_treeA_02_m_muj_0000fc38
	.4byte str_treeA_02_ha_muj_0000fc44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_01_muj_0000fc50
	.4byte str_treeB_01_m_muj_0000fc5c
	.4byte str_treeB_01_ha_muj_0000fc68
	.4byte 0x00000000
	.4byte evt_treeb_01
	.4byte 0x00000005
	.4byte str_A_treeB_02_muj_0000fc74
	.4byte str_treeB_02_m_muj_0000fc80
	.4byte str_treeB_02_ha_muj_0000fc8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_03_muj_0000fc98
	.4byte str_treeB_03_m_muj_0000fca4
	.4byte str_treeB_03_ha_muj_0000fcb0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_04_muj_0000fcbc
	.4byte str_treeB_04_m_muj_0000fcc8
	.4byte str_treeB_04_ha_muj_0000fcd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj unk_muj_000257f4

# .data:0x14C4 | 0x1104C | size: 0x70
.obj kusa_tbl, local
	.4byte 0x00000001
	.4byte str_A_kuwa_move_01_muj_0000fce0
	.4byte str_S_kuwa_move_01_muj_0000fcf0
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_02_muj_0000fd00
	.4byte str_S_kuwa_move_02_muj_0000fd10
	.4byte evt_kusa_2
	.4byte 0x00000001
	.4byte str_A_kuwa_move_03_muj_0000fd20
	.4byte str_S_kuwa_move_03_muj_0000fd30
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_04_muj_0000fd40
	.4byte str_S_kuwa_move_04_muj_0000fd50
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_05_muj_0000fd60
	.4byte str_S_kuwa_move_05_muj_0000fd70
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_06_muj_0000fd80
	.4byte str_S_kuwa_move_06_muj_0000fd90
	.4byte evt_kusa_6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kusa_tbl

# .data:0x1534 | 0x110BC | size: 0x1CC
.obj muj_02_init_evt_19_data_110BC, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_0000fda0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ4_muj_0000fdb0
	.4byte 0x00020032
	.4byte 0xF84067D0
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_switch_init
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ピートン_muj_0000f980
	.4byte str_ピートン（指輪）_muj_0000fdc0
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_チョロボン２_muj_0000fdd4
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000010D
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_チョロボン１_muj_0000fde4
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_チョロボン７_muj_0000fdf4
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_muj_0000fe04
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sunlight_muj_0000fe0c
	.4byte str_sunlight_n64_muj_0000fe18
	.4byte 0x00000001
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
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_badge_gat_muj_0000fe28
	.4byte 0xFFFFFF38
	.4byte 0x0000003C
	.4byte 0xFFFFFFA6
	.4byte 0x000000FB
	.4byte 0x00000000
	.4byte 0xF84067CA
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_hatena_muj_0000fe38
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x0000008F
	.4byte 0x00000000
	.4byte 0xF84067CE
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000105
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte unk_muj_000257f4
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_tbl
	.4byte 0x00020032
	.4byte 0xF84067D0
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kusa_tbl
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_muj_0000fe44
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_02_init_evt_19_data_110BC

# .data:0x1700 | 0x11288 | size: 0x1C
.obj jumptable_19_data_11288, local
	.rel printCount, .L_0000301C
	.rel printCount, .L_000030AC
	.rel printCount, .L_00003108
	.rel printCount, .L_000031C0
	.rel printCount, .L_00003164
	.rel printCount, .L_000031C0
	.rel printCount, .L_000030AC
.endobj jumptable_19_data_11288

# .data:0x171C | 0x112A4 | size: 0x4
.obj gap_04_000112A4_data, global
.hidden gap_04_000112A4_data
	.4byte 0x00000000
.endobj gap_04_000112A4_data
