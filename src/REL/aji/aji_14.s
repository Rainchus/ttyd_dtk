.include "macros.inc"
.file "aji_14.o"

# 0x000040F4..0x0000435C | size: 0x268
.text
.balign 4

# .text:0x0 | 0x40F4 | size: 0x268
.fn waku, local
/* 000040F4 000041B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000040F8 000041BC  7C 08 02 A6 */	mflr r0
/* 000040FC 000041C0  3C 60 00 00 */	lis r3, str_ロボット_aji_00014768@ha
/* 00004100 000041C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00004104 000041C8  38 63 00 00 */	addi r3, r3, str_ロボット_aji_00014768@l
/* 00004108 000041CC  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000410C 000041D0  48 00 21 31 */	bl npcNameToPtr_NoAssert
/* 00004110 000041D4  7C 7E 1B 79 */	mr. r30, r3
/* 00004114 000041D8  41 82 01 10 */	beq .L_00004224
/* 00004118 000041DC  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 0000411C 000041E0  48 00 21 21 */	bl animPoseGetAnimPosePtr
/* 00004120 000041E4  7C 7F 1B 78 */	mr r31, r3
/* 00004124 000041E8  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00004128 000041EC  48 00 21 15 */	bl animPoseWorldPositionEvalOn
/* 0000412C 000041F0  80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 00004130 000041F4  28 04 00 00 */	cmplwi r4, 0x0
/* 00004134 000041F8  41 82 00 F0 */	beq .L_00004224
/* 00004138 000041FC  3C 60 00 00 */	lis r3, str_locator17_aji_00014968@ha
/* 0000413C 00004200  83 A4 00 00 */	lwz r29, 0x0(r4)
/* 00004140 00004204  38 83 00 00 */	addi r4, r3, str_locator17_aji_00014968@l
/* 00004144 00004208  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00004148 0000420C  48 00 20 F5 */	bl animPoseGetGroupIdx
/* 0000414C 00004210  3C 80 00 00 */	lis r4, zero_aji_00014974@ha
/* 00004150 00004214  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 00004154 00004218  C0 04 00 00 */	lfs f0, zero_aji_00014974@l(r4)
/* 00004158 0000421C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000415C 00004220  4C 41 13 82 */	cror eq, gt, eq
/* 00004160 00004224  40 82 00 34 */	bne .L_00004194
/* 00004164 00004228  1F C3 00 0C */	mulli r30, r3, 0xc
/* 00004168 0000422C  3C 80 00 00 */	lis r4, str_枠_aji_00014740@ha
/* 0000416C 00004230  38 64 00 00 */	addi r3, r4, str_枠_aji_00014740@l
/* 00004170 00004234  48 00 20 CD */	bl npcNameToPtr
/* 00004174 00004238  7C BD F2 14 */	add r5, r29, r30
/* 00004178 0000423C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000417C 00004240  80 05 00 04 */	lwz r0, 0x4(r5)
/* 00004180 00004244  90 83 00 8C */	stw r4, 0x8c(r3)
/* 00004184 00004248  90 03 00 90 */	stw r0, 0x90(r3)
/* 00004188 0000424C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 0000418C 00004250  90 03 00 94 */	stw r0, 0x94(r3)
/* 00004190 00004254  48 00 00 48 */	b .L_000041D8
.L_00004194:
/* 00004194 00004258  3C 80 00 00 */	lis r4, vec3_aji_00014710@ha
/* 00004198 0000425C  3C 60 00 00 */	lis r3, str_枠_aji_00014740@ha
/* 0000419C 00004260  38 C4 00 00 */	addi r6, r4, vec3_aji_00014710@l
/* 000041A0 00004264  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 000041A4 00004268  38 63 00 00 */	addi r3, r3, str_枠_aji_00014740@l
/* 000041A8 0000426C  80 86 00 04 */	lwz r4, 0x4(r6)
/* 000041AC 00004270  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000041B0 00004274  90 A1 00 14 */	stw r5, 0x14(r1)
/* 000041B4 00004278  90 81 00 18 */	stw r4, 0x18(r1)
/* 000041B8 0000427C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 000041BC 00004280  48 00 20 81 */	bl npcNameToPtr
/* 000041C0 00004284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000041C4 00004288  80 81 00 18 */	lwz r4, 0x18(r1)
/* 000041C8 0000428C  90 03 00 8C */	stw r0, 0x8c(r3)
/* 000041CC 00004290  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000041D0 00004294  90 83 00 90 */	stw r4, 0x90(r3)
/* 000041D4 00004298  90 03 00 94 */	stw r0, 0x94(r3)
.L_000041D8:
/* 000041D8 0000429C  80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 000041DC 000042A0  3C 60 00 00 */	lis r3, vec3_aji_0001471c@ha
/* 000041E0 000042A4  38 A3 00 00 */	addi r5, r3, vec3_aji_0001471c@l
/* 000041E4 000042A8  39 00 00 00 */	li r8, 0x0
/* 000041E8 000042AC  80 E4 00 00 */	lwz r7, 0x0(r4)
/* 000041EC 000042B0  38 60 00 00 */	li r3, 0x0
/* 000041F0 000042B4  48 00 00 28 */	b .L_00004218
.L_000041F4:
/* 000041F4 000042B8  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000041F8 000042BC  7C C7 1A 14 */	add r6, r7, r3
/* 000041FC 000042C0  80 05 00 04 */	lwz r0, 0x4(r5)
/* 00004200 000042C4  39 08 00 01 */	addi r8, r8, 0x1
/* 00004204 000042C8  38 63 00 0C */	addi r3, r3, 0xc
/* 00004208 000042CC  90 86 00 00 */	stw r4, 0x0(r6)
/* 0000420C 000042D0  90 06 00 04 */	stw r0, 0x4(r6)
/* 00004210 000042D4  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00004214 000042D8  90 06 00 08 */	stw r0, 0x8(r6)
.L_00004218:
/* 00004218 000042DC  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 0000421C 000042E0  7C 08 00 00 */	cmpw r8, r0
/* 00004220 000042E4  41 80 FF D4 */	blt .L_000041F4
.L_00004224:
/* 00004224 000042E8  3C 60 00 00 */	lis r3, str_ロボット２_aji_00014848@ha
/* 00004228 000042EC  38 63 00 00 */	addi r3, r3, str_ロボット２_aji_00014848@l
/* 0000422C 000042F0  48 00 20 11 */	bl npcNameToPtr_NoAssert
/* 00004230 000042F4  7C 7E 1B 79 */	mr. r30, r3
/* 00004234 000042F8  41 82 01 10 */	beq .L_00004344
/* 00004238 000042FC  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 0000423C 00004300  48 00 20 01 */	bl animPoseGetAnimPosePtr
/* 00004240 00004304  7C 7F 1B 78 */	mr r31, r3
/* 00004244 00004308  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00004248 0000430C  48 00 1F F5 */	bl animPoseWorldPositionEvalOn
/* 0000424C 00004310  80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 00004250 00004314  28 04 00 00 */	cmplwi r4, 0x0
/* 00004254 00004318  41 82 00 F0 */	beq .L_00004344
/* 00004258 0000431C  3C 60 00 00 */	lis r3, str_locator17_aji_00014968@ha
/* 0000425C 00004320  83 A4 00 00 */	lwz r29, 0x0(r4)
/* 00004260 00004324  38 83 00 00 */	addi r4, r3, str_locator17_aji_00014968@l
/* 00004264 00004328  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 00004268 0000432C  48 00 1F D5 */	bl animPoseGetGroupIdx
/* 0000426C 00004330  3C 80 00 00 */	lis r4, zero_aji_00014974@ha
/* 00004270 00004334  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 00004274 00004338  C0 04 00 00 */	lfs f0, zero_aji_00014974@l(r4)
/* 00004278 0000433C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000427C 00004340  4C 41 13 82 */	cror eq, gt, eq
/* 00004280 00004344  40 82 00 34 */	bne .L_000042B4
/* 00004284 00004348  1F C3 00 0C */	mulli r30, r3, 0xc
/* 00004288 0000434C  3C 80 00 00 */	lis r4, str_枠２_aji_00014758@ha
/* 0000428C 00004350  38 64 00 00 */	addi r3, r4, str_枠２_aji_00014758@l
/* 00004290 00004354  48 00 1F AD */	bl npcNameToPtr
/* 00004294 00004358  7C BD F2 14 */	add r5, r29, r30
/* 00004298 0000435C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000429C 00004360  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000042A0 00004364  90 83 00 8C */	stw r4, 0x8c(r3)
/* 000042A4 00004368  90 03 00 90 */	stw r0, 0x90(r3)
/* 000042A8 0000436C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000042AC 00004370  90 03 00 94 */	stw r0, 0x94(r3)
/* 000042B0 00004374  48 00 00 48 */	b .L_000042F8
.L_000042B4:
/* 000042B4 00004378  3C 80 00 00 */	lis r4, vec3_aji_00014728@ha
/* 000042B8 0000437C  3C 60 00 00 */	lis r3, str_枠２_aji_00014758@ha
/* 000042BC 00004380  38 C4 00 00 */	addi r6, r4, vec3_aji_00014728@l
/* 000042C0 00004384  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 000042C4 00004388  38 63 00 00 */	addi r3, r3, str_枠２_aji_00014758@l
/* 000042C8 0000438C  80 86 00 04 */	lwz r4, 0x4(r6)
/* 000042CC 00004390  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000042D0 00004394  90 A1 00 08 */	stw r5, 0x8(r1)
/* 000042D4 00004398  90 81 00 0C */	stw r4, 0xc(r1)
/* 000042D8 0000439C  90 01 00 10 */	stw r0, 0x10(r1)
/* 000042DC 000043A0  48 00 1F 61 */	bl npcNameToPtr
/* 000042E0 000043A4  80 01 00 08 */	lwz r0, 0x8(r1)
/* 000042E4 000043A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 000042E8 000043AC  90 03 00 8C */	stw r0, 0x8c(r3)
/* 000042EC 000043B0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 000042F0 000043B4  90 83 00 90 */	stw r4, 0x90(r3)
/* 000042F4 000043B8  90 03 00 94 */	stw r0, 0x94(r3)
.L_000042F8:
/* 000042F8 000043BC  80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 000042FC 000043C0  3C 60 00 00 */	lis r3, vec3_aji_00014734@ha
/* 00004300 000043C4  38 A3 00 00 */	addi r5, r3, vec3_aji_00014734@l
/* 00004304 000043C8  38 E0 00 00 */	li r7, 0x0
/* 00004308 000043CC  81 04 00 00 */	lwz r8, 0x0(r4)
/* 0000430C 000043D0  38 60 00 00 */	li r3, 0x0
/* 00004310 000043D4  48 00 00 28 */	b .L_00004338
.L_00004314:
/* 00004314 000043D8  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00004318 000043DC  7C C8 1A 14 */	add r6, r8, r3
/* 0000431C 000043E0  80 05 00 04 */	lwz r0, 0x4(r5)
/* 00004320 000043E4  38 E7 00 01 */	addi r7, r7, 0x1
/* 00004324 000043E8  38 63 00 0C */	addi r3, r3, 0xc
/* 00004328 000043EC  90 86 00 00 */	stw r4, 0x0(r6)
/* 0000432C 000043F0  90 06 00 04 */	stw r0, 0x4(r6)
/* 00004330 000043F4  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00004334 000043F8  90 06 00 08 */	stw r0, 0x8(r6)
.L_00004338:
/* 00004338 000043FC  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 0000433C 00004400  7C 07 00 00 */	cmpw r7, r0
/* 00004340 00004404  41 80 FF D4 */	blt .L_00004314
.L_00004344:
/* 00004344 00004408  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00004348 0000440C  38 60 00 00 */	li r3, 0x0
/* 0000434C 00004410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00004350 00004414  7C 08 03 A6 */	mtlr r0
/* 00004354 00004418  38 21 00 30 */	addi r1, r1, 0x30
/* 00004358 0000441C  4E 80 00 20 */	blr
.endfn waku

# 0x00003878..0x00003B10 | size: 0x298
.rodata
.balign 8

# .rodata:0x0 | 0x3878 | size: 0xA
.obj str_S_door1_1_aji_000146e0, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_000146e0

# .rodata:0xA | 0x3882 | size: 0x2
.obj gap_03_00003882_rodata, global
.hidden gap_03_00003882_rodata
	.2byte 0x0000
.endobj gap_03_00003882_rodata

# .rodata:0xC | 0x3884 | size: 0xA
.obj str_S_door1_2_aji_000146ec, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_000146ec

# .rodata:0x16 | 0x388E | size: 0x2
.obj gap_03_0000388E_rodata, global
.hidden gap_03_0000388E_rodata
	.2byte 0x0000
.endobj gap_03_0000388E_rodata

# .rodata:0x18 | 0x3890 | size: 0x7
.obj str_w_bero_aji_000146f8, local
	.string "w_bero"
.endobj str_w_bero_aji_000146f8

# .rodata:0x1F | 0x3897 | size: 0x1
.obj gap_03_00003897_rodata, global
.hidden gap_03_00003897_rodata
	.byte 0x00
.endobj gap_03_00003897_rodata

# .rodata:0x20 | 0x3898 | size: 0x7
.obj str_aji_13_aji_00014700, local
	.string "aji_13"
.endobj str_aji_13_aji_00014700

# .rodata:0x27 | 0x389F | size: 0x1
.obj gap_03_0000389F_rodata, global
.hidden gap_03_0000389F_rodata
	.byte 0x00
.endobj gap_03_0000389F_rodata

# .rodata:0x28 | 0x38A0 | size: 0x7
.obj str_e_bero_aji_00014708, local
	.string "e_bero"
.endobj str_e_bero_aji_00014708

# .rodata:0x2F | 0x38A7 | size: 0x1
.obj gap_03_000038A7_rodata, global
.hidden gap_03_000038A7_rodata
	.byte 0x00
.endobj gap_03_000038A7_rodata

# .rodata:0x30 | 0x38A8 | size: 0xC
.obj vec3_aji_00014710, local
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
.endobj vec3_aji_00014710

# .rodata:0x3C | 0x38B4 | size: 0xC
.obj vec3_aji_0001471c, local
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
.endobj vec3_aji_0001471c

# .rodata:0x48 | 0x38C0 | size: 0xC
.obj vec3_aji_00014728, local
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
.endobj vec3_aji_00014728

# .rodata:0x54 | 0x38CC | size: 0xC
.obj vec3_aji_00014734, local
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
.endobj vec3_aji_00014734

# .rodata:0x60 | 0x38D8 | size: 0x3
.obj str_枠_aji_00014740, local
	.byte 0x98, 0x67, 0x00
.endobj str_枠_aji_00014740

# .rodata:0x63 | 0x38DB | size: 0x1
.obj gap_03_000038DB_rodata, global
.hidden gap_03_000038DB_rodata
	.byte 0x00
.endobj gap_03_000038DB_rodata

# .rodata:0x64 | 0x38DC | size: 0xD
.obj str_c_mb_robo_2a_aji_00014744, local
	.string "c_mb_robo_2a"
.endobj str_c_mb_robo_2a_aji_00014744

# .rodata:0x71 | 0x38E9 | size: 0x3
.obj gap_03_000038E9_rodata, global
.hidden gap_03_000038E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038E9_rodata

# .rodata:0x74 | 0x38EC | size: 0x4
.obj str_L_1_aji_00014754, local
	.string "L_1"
.endobj str_L_1_aji_00014754

# .rodata:0x78 | 0x38F0 | size: 0x5
.obj str_枠２_aji_00014758, local
	.4byte 0x98678251
	.byte 0x00
.endobj str_枠２_aji_00014758

# .rodata:0x7D | 0x38F5 | size: 0x3
.obj gap_03_000038F5_rodata, global
.hidden gap_03_000038F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038F5_rodata

# .rodata:0x80 | 0x38F8 | size: 0x5
.obj str_幹部_aji_00014760, local
	.4byte 0x8AB29594
	.byte 0x00
.endobj str_幹部_aji_00014760

# .rodata:0x85 | 0x38FD | size: 0x3
.obj gap_03_000038FD_rodata, global
.hidden gap_03_000038FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038FD_rodata

# .rodata:0x88 | 0x3900 | size: 0x9
.obj str_ロボット_aji_00014768, local
	.4byte 0x838D837B
	.4byte 0x83628367
	.byte 0x00
.endobj str_ロボット_aji_00014768

# .rodata:0x91 | 0x3909 | size: 0x3
.obj gap_03_00003909_rodata, global
.hidden gap_03_00003909_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003909_rodata

# .rodata:0x94 | 0x390C | size: 0x4
.obj str_Z_1_aji_00014774, local
	.string "Z_1"
.endobj str_Z_1_aji_00014774

# .rodata:0x98 | 0x3910 | size: 0x14
.obj str_BGM_EVT_MAGNUM_APP1_aji_00014778, local
	.string "BGM_EVT_MAGNUM_APP1"
.endobj str_BGM_EVT_MAGNUM_APP1_aji_00014778

# .rodata:0xAC | 0x3924 | size: 0xC
.obj str_stg7_aji_36_aji_0001478c, local
	.string "stg7_aji_36"
.endobj str_stg7_aji_36_aji_0001478c

# .rodata:0xB8 | 0x3930 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_aji_00014798, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_aji_00014798

# .rodata:0xD0 | 0x3948 | size: 0xC
.obj str_stg7_aji_37_aji_000147b0, local
	.string "stg7_aji_37"
.endobj str_stg7_aji_37_aji_000147b0

# .rodata:0xDC | 0x3954 | size: 0xF
.obj str_stg7_aji_37_01_aji_000147bc, local
	.string "stg7_aji_37_01"
.endobj str_stg7_aji_37_01_aji_000147bc

# .rodata:0xEB | 0x3963 | size: 0x1
.obj gap_03_00003963_rodata, global
.hidden gap_03_00003963_rodata
	.byte 0x00
.endobj gap_03_00003963_rodata

# .rodata:0xEC | 0x3964 | size: 0xF
.obj str_stg7_aji_37_02_aji_000147cc, local
	.string "stg7_aji_37_02"
.endobj str_stg7_aji_37_02_aji_000147cc

# .rodata:0xFB | 0x3973 | size: 0x1
.obj gap_03_00003973_rodata, global
.hidden gap_03_00003973_rodata
	.byte 0x00
.endobj gap_03_00003973_rodata

# .rodata:0xFC | 0x3974 | size: 0xC
.obj str_stg7_aji_38_aji_000147dc, local
	.string "stg7_aji_38"
.endobj str_stg7_aji_38_aji_000147dc

# .rodata:0x108 | 0x3980 | size: 0xC
.obj str_stg7_aji_39_aji_000147e8, local
	.string "stg7_aji_39"
.endobj str_stg7_aji_39_aji_000147e8

# .rodata:0x114 | 0x398C | size: 0x16
.obj str_SFX_STG7_BOSS_ACTIVE_aji_000147f4, local
	.string "SFX_STG7_BOSS_ACTIVE1"
.endobj str_SFX_STG7_BOSS_ACTIVE_aji_000147f4

# .rodata:0x12A | 0x39A2 | size: 0x2
.obj gap_03_000039A2_rodata, global
.hidden gap_03_000039A2_rodata
	.2byte 0x0000
.endobj gap_03_000039A2_rodata

# .rodata:0x12C | 0x39A4 | size: 0x4
.obj str_R_1_aji_0001480c, local
	.string "R_1"
.endobj str_R_1_aji_0001480c

# .rodata:0x130 | 0x39A8 | size: 0x4
.obj str_S_1_aji_00014810, local
	.string "S_1"
.endobj str_S_1_aji_00014810

# .rodata:0x134 | 0x39AC | size: 0xC
.obj str_stg7_aji_41_aji_00014814, local
	.string "stg7_aji_41"
.endobj str_stg7_aji_41_aji_00014814

# .rodata:0x140 | 0x39B8 | size: 0x4
.obj str_W_1_aji_00014820, local
	.string "W_1"
.endobj str_W_1_aji_00014820

# .rodata:0x144 | 0x39BC | size: 0x15
.obj str_SFX_STG7_BOSS_MOVE1L_aji_00014824, local
	.string "SFX_STG7_BOSS_MOVE1L"
.endobj str_SFX_STG7_BOSS_MOVE1L_aji_00014824

# .rodata:0x159 | 0x39D1 | size: 0x3
.obj gap_03_000039D1_rodata, global
.hidden gap_03_000039D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000039D1_rodata

# .rodata:0x15C | 0x39D4 | size: 0x4
.obj str_J_1_aji_0001483c, local
	.string "J_1"
.endobj str_J_1_aji_0001483c

# .rodata:0x160 | 0x39D8 | size: 0x4
.obj str_J_2_aji_00014840, local
	.string "J_2"
.endobj str_J_2_aji_00014840

# .rodata:0x164 | 0x39DC | size: 0x4
.obj str_J_3_aji_00014844, local
	.string "J_3"
.endobj str_J_3_aji_00014844

# .rodata:0x168 | 0x39E0 | size: 0xB
.obj str_ロボット２_aji_00014848, local
	.4byte 0x838D837B
	.4byte 0x83628367
	.byte 0x82, 0x51, 0x00
.endobj str_ロボット２_aji_00014848

# .rodata:0x173 | 0x39EB | size: 0x1
.obj gap_03_000039EB_rodata, global
.hidden gap_03_000039EB_rodata
	.byte 0x00
.endobj gap_03_000039EB_rodata

# .rodata:0x174 | 0x39EC | size: 0x17
.obj str_SFX_STG7_3RD_EXPLSIO_aji_00014854, local
	.string "SFX_STG7_3RD_EXPLSION1"
.endobj str_SFX_STG7_3RD_EXPLSIO_aji_00014854

# .rodata:0x18B | 0x3A03 | size: 0x1
.obj gap_03_00003A03_rodata, global
.hidden gap_03_00003A03_rodata
	.byte 0x00
.endobj gap_03_00003A03_rodata

# .rodata:0x18C | 0x3A04 | size: 0x5
.obj str_eff1_aji_0001486c, local
	.string "eff1"
.endobj str_eff1_aji_0001486c

# .rodata:0x191 | 0x3A09 | size: 0x3
.obj gap_03_00003A09_rodata, global
.hidden gap_03_00003A09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A09_rodata

# .rodata:0x194 | 0x3A0C | size: 0x11
.obj str_akari_charge_n64_aji_00014874, local
	.string "akari_charge_n64"
.endobj str_akari_charge_n64_aji_00014874

# .rodata:0x1A5 | 0x3A1D | size: 0x3
.obj gap_03_00003A1D_rodata, global
.hidden gap_03_00003A1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A1D_rodata

# .rodata:0x1A8 | 0x3A20 | size: 0x17
.obj str_SFX_STG7_3RD_EXPLSIO_aji_00014888, local
	.string "SFX_STG7_3RD_EXPLSION2"
.endobj str_SFX_STG7_3RD_EXPLSIO_aji_00014888

# .rodata:0x1BF | 0x3A37 | size: 0x1
.obj gap_03_00003A37_rodata, global
.hidden gap_03_00003A37_rodata
	.byte 0x00
.endobj gap_03_00003A37_rodata

# .rodata:0x1C0 | 0x3A38 | size: 0x5
.obj str_eff2_aji_000148a0, local
	.string "eff2"
.endobj str_eff2_aji_000148a0

# .rodata:0x1C5 | 0x3A3D | size: 0x3
.obj gap_03_00003A3D_rodata, global
.hidden gap_03_00003A3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A3D_rodata

# .rodata:0x1C8 | 0x3A40 | size: 0xE
.obj str_radiation_n64_aji_000148a8, local
	.string "radiation_n64"
.endobj str_radiation_n64_aji_000148a8

# .rodata:0x1D6 | 0x3A4E | size: 0x2
.obj gap_03_00003A4E_rodata, global
.hidden gap_03_00003A4E_rodata
	.2byte 0x0000
.endobj gap_03_00003A4E_rodata

# .rodata:0x1D8 | 0x3A50 | size: 0xC
.obj str_kemuri_test_aji_000148b8, local
	.string "kemuri_test"
.endobj str_kemuri_test_aji_000148b8

# .rodata:0x1E4 | 0x3A5C | size: 0x17
.obj str_SFX_STG7_3RD_EXPLSIO_aji_000148c4, local
	.string "SFX_STG7_3RD_EXPLSION3"
.endobj str_SFX_STG7_3RD_EXPLSIO_aji_000148c4

# .rodata:0x1FB | 0x3A73 | size: 0x1
.obj gap_03_00003A73_rodata, global
.hidden gap_03_00003A73_rodata
	.byte 0x00
.endobj gap_03_00003A73_rodata

# .rodata:0x1FC | 0x3A74 | size: 0x4
.obj str_D_1_aji_000148dc, local
	.string "D_1"
.endobj str_D_1_aji_000148dc

# .rodata:0x200 | 0x3A78 | size: 0xC
.obj str_stg7_aji_42_aji_000148e0, local
	.string "stg7_aji_42"
.endobj str_stg7_aji_42_aji_000148e0

# .rodata:0x20C | 0x3A84 | size: 0x7
.obj str_moo_04_aji_000148ec, local
	.string "moo_04"
.endobj str_moo_04_aji_000148ec

# .rodata:0x213 | 0x3A8B | size: 0x1
.obj gap_03_00003A8B_rodata, global
.hidden gap_03_00003A8B_rodata
	.byte 0x00
.endobj gap_03_00003A8B_rodata

# .rodata:0x214 | 0x3A8C | size: 0xB
.obj str_evt_aji_14_aji_000148f4, local
	.string "evt_aji_14"
.endobj str_evt_aji_14_aji_000148f4

# .rodata:0x21F | 0x3A97 | size: 0x1
.obj gap_03_00003A97_rodata, global
.hidden gap_03_00003A97_rodata
	.byte 0x00
.endobj gap_03_00003A97_rodata

# .rodata:0x220 | 0x3A98 | size: 0x6
.obj str_dummy_aji_00014900, local
	.string "dummy"
.endobj str_dummy_aji_00014900

# .rodata:0x226 | 0x3A9E | size: 0x2
.obj gap_03_00003A9E_rodata, global
.hidden gap_03_00003A9E_rodata
	.2byte 0x0000
.endobj gap_03_00003A9E_rodata

# .rodata:0x228 | 0x3AA0 | size: 0xF
.obj str_stg7_aji_42_01_aji_00014908, local
	.string "stg7_aji_42_01"
.endobj str_stg7_aji_42_01_aji_00014908

# .rodata:0x237 | 0x3AAF | size: 0x1
.obj gap_03_00003AAF_rodata, global
.hidden gap_03_00003AAF_rodata
	.byte 0x00
.endobj gap_03_00003AAF_rodata

# .rodata:0x238 | 0x3AB0 | size: 0x6
.obj str_M_N_2_aji_00014918, local
	.string "M_N_2"
.endobj str_M_N_2_aji_00014918

# .rodata:0x23E | 0x3AB6 | size: 0x2
.obj gap_03_00003AB6_rodata, global
.hidden gap_03_00003AB6_rodata
	.2byte 0x0000
.endobj gap_03_00003AB6_rodata

# .rodata:0x240 | 0x3AB8 | size: 0x6
.obj str_M_S_1_aji_00014920, local
	.string "M_S_1"
.endobj str_M_S_1_aji_00014920

# .rodata:0x246 | 0x3ABE | size: 0x2
.obj gap_03_00003ABE_rodata, global
.hidden gap_03_00003ABE_rodata
	.2byte 0x0000
.endobj gap_03_00003ABE_rodata

# .rodata:0x248 | 0x3AC0 | size: 0x7
.obj str_tuzuki_aji_00014928, local
	.string "tuzuki"
.endobj str_tuzuki_aji_00014928

# .rodata:0x24F | 0x3AC7 | size: 0x1
.obj gap_03_00003AC7_rodata, global
.hidden gap_03_00003AC7_rodata
	.byte 0x00
.endobj gap_03_00003AC7_rodata

# .rodata:0x250 | 0x3AC8 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00014930, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00014930

# .rodata:0x25E | 0x3AD6 | size: 0x2
.obj gap_03_00003AD6_rodata, global
.hidden gap_03_00003AD6_rodata
	.2byte 0x0000
.endobj gap_03_00003AD6_rodata

# .rodata:0x260 | 0x3AD8 | size: 0xE
.obj str_ENV_STG7_AJI2_aji_00014940, local
	.string "ENV_STG7_AJI2"
.endobj str_ENV_STG7_AJI2_aji_00014940

# .rodata:0x26E | 0x3AE6 | size: 0x2
.obj gap_03_00003AE6_rodata, global
.hidden gap_03_00003AE6_rodata
	.2byte 0x0000
.endobj gap_03_00003AE6_rodata

# .rodata:0x270 | 0x3AE8 | size: 0xD
.obj str_c_mb_robo_2b_aji_00014950, local
	.string "c_mb_robo_2b"
.endobj str_c_mb_robo_2b_aji_00014950

# .rodata:0x27D | 0x3AF5 | size: 0x3
.obj gap_03_00003AF5_rodata, global
.hidden gap_03_00003AF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003AF5_rodata

# .rodata:0x280 | 0x3AF8 | size: 0x8
.obj str_MGN_Q_1_aji_00014960, local
	.string "MGN_Q_1"
.endobj str_MGN_Q_1_aji_00014960

# .rodata:0x288 | 0x3B00 | size: 0xA
.obj str_locator17_aji_00014968, local
	.string "locator17"
.endobj str_locator17_aji_00014968
	.2byte 0x0000

# .rodata:0x294 | 0x3B0C | size: 0x4
.obj zero_aji_00014974, local
	.float 0
.endobj zero_aji_00014974

# 0x0001ABE0..0x0001BED0 | size: 0x12F0
.data
.balign 8

# .data:0x0 | 0x1ABE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1ABE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1ABEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1ABF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1ABF4 | size: 0x4
.obj gap_04_0001ABF4_data, global
.hidden gap_04_0001ABF4_data
	.4byte 0x00000000
.endobj gap_04_0001ABF4_data

# .data:0x18 | 0x1ABF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1AC00 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1AC04 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1AC08 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1AC10 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1AC14 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1AC18 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1AC1C | size: 0x4
.obj gap_04_0001AC1C_data, global
.hidden gap_04_0001AC1C_data
	.4byte 0x00000000
.endobj gap_04_0001AC1C_data

# .data:0x40 | 0x1AC20 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1AC28 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1AC2C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1AC30 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_000146e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_000146ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x1AC88 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_000146e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_000146ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x1ACE0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_aji_000146f8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_13_aji_00014700
	.4byte str_e_bero_aji_00014708
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
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

# .data:0x178 | 0x1AD58 | size: 0x88
.obj evt_robot_waku, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_枠_aji_00014740
	.4byte str_c_mb_robo_2a_aji_00014744
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_枠_aji_00014740
	.4byte 0x000C0000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_枠_aji_00014740
	.4byte str_L_1_aji_00014754
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_枠２_aji_00014758
	.4byte str_c_mb_robo_2a_aji_00014744
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_枠２_aji_00014758
	.4byte 0x000C0000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_枠２_aji_00014758
	.4byte str_L_1_aji_00014754
	.4byte 0x0000006B
	.4byte 0x00010063
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte waku
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_robot_waku

# .data:0x200 | 0x1ADE0 | size: 0xC74
.obj evt_boss, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_幹部_aji_00014760
	.4byte 0x00000096
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000104
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_幹部_aji_00014760
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ロボット_aji_00014768
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_Z_1_aji_00014774
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000177
	.4byte 0x000001A4
	.4byte 0x000003A7
	.4byte 0xFFFFFF1F
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000177
	.4byte 0x000001F4
	.4byte 0x000003A7
	.4byte 0xFFFFFF1F
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000FA0
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE5C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_MAGNUM_APP1_aji_00014778
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_36_aji_0001478c
	.4byte 0x00000000
	.4byte str_幹部_aji_00014760
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_aji_00014798
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
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
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
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
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000A
	.4byte 0x000000BE
	.4byte 0x00000113
	.4byte 0x000000AF
	.4byte 0x0000003C
	.4byte 0xFFFFFF72
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_幹部_aji_00014760
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ロボット_aji_00014768
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_37_aji_000147b0
	.4byte 0x00000000
	.4byte str_幹部_aji_00014760
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE34
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE4D
	.4byte 0x00000028
	.4byte 0x0000011F
	.4byte 0xFFFFFE4D
	.4byte 0x00000028
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_37_01_aji_000147bc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF2D
	.4byte 0x000000A9
	.4byte 0x000000FA
	.4byte 0x00000113
	.4byte 0x00000050
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_37_02_aji_000147cc
	.4byte 0x00000000
	.4byte str_幹部_aji_00014760
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE4D
	.4byte 0x00000028
	.4byte 0x0000011F
	.4byte 0xFFFFFE4D
	.4byte 0x00000028
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_38_aji_000147dc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000008C
	.4byte 0x00000064
	.4byte 0x00000127
	.4byte 0x0000008C
	.4byte 0x0000006E
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_39_aji_000147e8
	.4byte 0x00000000
	.4byte str_幹部_aji_00014760
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_幹部_aji_00014760
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ロボット_aji_00014768
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000FA
	.4byte 0x0000007C
	.4byte 0x00000221
	.4byte 0x000000FA
	.4byte 0x0000008C
	.4byte 0xFFFFFF97
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_幹部_aji_00014760
	.4byte str_ロボット_aji_00014768
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_幹部_aji_00014760
	.4byte 0x00000104
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ロボット_aji_00014768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_幹部_aji_00014760
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_幹部_aji_00014760
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0xF24B4280
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_幹部_aji_00014760
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003C6
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ロボット_aji_00014768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_BOSS_ACTIVE_aji_000147f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000009E5
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_R_1_aji_0001480c
	.4byte 0x0003005B
	.4byte evt_npc_wait_anim
	.4byte str_ロボット_aji_00014768
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_S_1_aji_00014810
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7180
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000A5
	.4byte 0x000000B7
	.4byte 0x0000011D
	.4byte 0x00000119
	.4byte 0x000000C1
	.4byte 0xFFFFFF9E
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_41_aji_00014814
	.4byte 0x00000000
	.4byte str_ロボット_aji_00014768
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000600
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000FA
	.4byte 0x0000007C
	.4byte 0x00000221
	.4byte 0x000000FA
	.4byte 0x0000008C
	.4byte 0xFFFFFF97
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_W_1_aji_00014820
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_S_1_aji_00014810
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ロボット_aji_00014768
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_BOSS_MOVE1L_aji_00014824
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE25
	.4byte 0x0000000C
	.4byte 0x0000012C
	.4byte 0x0000008C
	.4byte 0x0000005A
	.4byte 0xFFFFFF85
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF74
	.4byte 0x0000000F
	.4byte 0xF24C0A80
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_J_1_aji_0001483c
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_J_2_aji_00014840
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0xF24BBA80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000032
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_J_3_aji_00014844
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット_aji_00014768
	.4byte str_S_1_aji_00014810
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFCE
	.4byte 0x000001DB
	.4byte 0x00000450
	.4byte 0xFFFFFFCE
	.4byte 0x00000023
	.4byte 0xFFFFFFF3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_ロボット_aji_00014768
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF74
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ロボット_aji_00014768
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ロボット２_aji_00014848
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x000002A3
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ロボット２_aji_00014848
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_3RD_EXPLSIO_aji_00014854
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000050
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_eff1_aji_0001486c
	.4byte str_akari_charge_n64_aji_00014874
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_3RD_EXPLSIO_aji_00014888
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_eff2_aji_000148a0
	.4byte str_radiation_n64_aji_000148a8
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_eff1_aji_0001486c
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_aji_000148b8
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8180
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ロボット２_aji_00014848
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_aji_000148b8
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8180
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ロボット２_aji_00014848
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_3RD_EXPLSIO_aji_000148c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_幹部_aji_00014760
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_幹部_aji_00014760
	.4byte str_D_1_aji_000148dc
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_幹部_aji_00014760
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_幹部_aji_00014760
	.4byte 0xFFFFFF38
	.4byte 0x000000C8
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0xF24BBA80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_42_aji_000148e0
	.4byte 0x00000000
	.4byte str_ロボット_aji_00014768
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x00000011
	.4byte 0x00000384
	.4byte 0x00000010
	.4byte 0x00000384
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_moo_04_aji_000148ec
	.4byte str_evt_aji_14_aji_000148f4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_boss

# .data:0xE74 | 0x1BA54 | size: 0x24C
.obj evt_boss2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF74
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_00014900
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x00000019
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_dummy_aji_00014900
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_dummy_aji_00014900
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24AA280
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C81
	.4byte 0x0002003A
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00020039
	.4byte 0xFE363C8A
	.4byte 0x00000168
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_dummy_aji_00014900
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_42_01_aji_00014908
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_aji_00014918
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_aji_00014920
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0000000F
	.4byte 0xF24BBA80
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_dummy_aji_00014900
	.4byte 0x0001005E
	.4byte evt_sub_starstone
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_boss2

# .data:0x10C0 | 0x1BCA0 | size: 0x114
.obj npcEnt, local
	.4byte str_幹部_aji_00014760
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
	.4byte str_ロボット_aji_00014768
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

# .data:0x11D4 | 0x1BDB4 | size: 0x11C
.obj aji_14_init_evt_2_data_1BDB4, global
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_tuzuki_aji_00014928
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00014930
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI2_aji_00014940
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
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
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tuzuki_aji_00014928
	.4byte 0x0001005C
	.4byte evt_boss2
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ロボット２_aji_00014848
	.4byte str_c_mb_robo_2b_aji_00014950
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ロボット２_aji_00014848
	.4byte str_MGN_Q_1_aji_00014960
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ロボット２_aji_00014848
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_robot_waku
	.4byte 0x0001005C
	.4byte evt_boss
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_14_init_evt_2_data_1BDB4
