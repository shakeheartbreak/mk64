.section .late_rodata

glabel jpt_800EEC70
.word L80079E5C, L80079E88, L80079EAC, L80079F2C
.word L80079F40, L80079F9C, L80079FD4, L80079FE8

.section .text

glabel func_80079D44
/* 07A944 80079D44 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 07A948 80079D48 0004C8C0 */  sll   $t9, $a0, 3
/* 07A94C 80079D4C 000578C0 */  sll   $t7, $a1, 3
/* 07A950 80079D50 0324C823 */  subu  $t9, $t9, $a0
/* 07A954 80079D54 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 07A958 80079D58 01E57823 */  subu  $t7, $t7, $a1
/* 07A95C 80079D5C 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 07A960 80079D60 0019C940 */  sll   $t9, $t9, 5
/* 07A964 80079D64 000F7900 */  sll   $t7, $t7, 4
/* 07A968 80079D68 03284821 */  addu  $t1, $t9, $t0
/* 07A96C 80079D6C AFBF0024 */  sw    $ra, 0x24($sp)
/* 07A970 80079D70 AFB10020 */  sw    $s1, 0x20($sp)
/* 07A974 80079D74 AFB0001C */  sw    $s0, 0x1c($sp)
/* 07A978 80079D78 AFA5003C */  sw    $a1, 0x3c($sp)
/* 07A97C 80079D7C 01E57823 */  subu  $t7, $t7, $a1
/* 07A980 80079D80 AFA9002C */  sw    $t1, 0x2c($sp)
/* 07A984 80079D84 852200A6 */  lh    $v0, 0xa6($t1)
/* 07A988 80079D88 000F7880 */  sll   $t7, $t7, 2
/* 07A98C 80079D8C 3C18800E */  lui   $t8, %hi(gPlayerOne) # $t8, 0x800e
/* 07A990 80079D90 8F18C4DC */  lw    $t8, %lo(gPlayerOne)($t8)
/* 07A994 80079D94 01E57823 */  subu  $t7, $t7, $a1
/* 07A998 80079D98 000F78C0 */  sll   $t7, $t7, 3
/* 07A99C 80079D9C 00808025 */  move  $s0, $a0
/* 07A9A0 80079DA0 10400023 */  beqz  $v0, .L80079E30
/* 07A9A4 80079DA4 01F88821 */   addu  $s1, $t7, $t8
/* 07A9A8 80079DA8 24010001 */  li    $at, 1
/* 07A9AC 80079DAC 10410009 */  beq   $v0, $at, .L80079DD4
/* 07A9B0 80079DB0 02002025 */   move  $a0, $s0
/* 07A9B4 80079DB4 24010002 */  li    $at, 2
/* 07A9B8 80079DB8 1041000A */  beq   $v0, $at, .L80079DE4
/* 07A9BC 80079DBC 02002025 */   move  $a0, $s0
/* 07A9C0 80079DC0 24010003 */  li    $at, 3
/* 07A9C4 80079DC4 10410012 */  beq   $v0, $at, .L80079E10
/* 07A9C8 80079DC8 02002025 */   move  $a0, $s0
/* 07A9CC 80079DCC 10000019 */  b     .L80079E34
/* 07A9D0 80079DD0 8FAE002C */   lw    $t6, 0x2c($sp)
.L80079DD4:
/* 07A9D4 80079DD4 0C01E66A */  jal   func_800799A8
/* 07A9D8 80079DD8 8FA5003C */   lw    $a1, 0x3c($sp)
/* 07A9DC 80079DDC 10000015 */  b     .L80079E34
/* 07A9E0 80079DE0 8FAE002C */   lw    $t6, 0x2c($sp)
.L80079DE4:
/* 07A9E4 80079DE4 0C01C870 */  jal   func_800721C0
/* 07A9E8 80079DE8 24050010 */   li    $a1, 16
/* 07A9EC 80079DEC 0C01CDB8 */  jal   func_800736E0
/* 07A9F0 80079DF0 02002025 */   move  $a0, $s0
/* 07A9F4 80079DF4 862A00CA */  lh    $t2, 0xca($s1)
/* 07A9F8 80079DF8 02002025 */  move  $a0, $s0
/* 07A9FC 80079DFC 354B0080 */  ori   $t3, $t2, 0x80
/* 07AA00 80079E00 0C01C922 */  jal   func_80072488
/* 07AA04 80079E04 A62B00CA */   sh    $t3, 0xca($s1)
/* 07AA08 80079E08 1000000A */  b     .L80079E34
/* 07AA0C 80079E0C 8FAE002C */   lw    $t6, 0x2c($sp)
.L80079E10:
/* 07AA10 80079E10 240C0002 */  li    $t4, 2
/* 07AA14 80079E14 240DFFFF */  li    $t5, -1
/* 07AA18 80079E18 AFAD0014 */  sw    $t5, 0x14($sp)
/* 07AA1C 80079E1C AFAC0010 */  sw    $t4, 0x10($sp)
/* 07AA20 80079E20 00002825 */  move  $a1, $zero
/* 07AA24 80079E24 24060003 */  li    $a2, 3
/* 07AA28 80079E28 0C01CC2F */  jal   func_800730BC
/* 07AA2C 80079E2C 24070001 */   li    $a3, 1
.L80079E30:
/* 07AA30 80079E30 8FAE002C */  lw    $t6, 0x2c($sp)
.L80079E34:
/* 07AA34 80079E34 91CF00D6 */  lbu   $t7, 0xd6($t6)
/* 07AA38 80079E38 25F8FFFF */  addiu $t8, $t7, -1
/* 07AA3C 80079E3C 2F010008 */  sltiu $at, $t8, 8
/* 07AA40 80079E40 10200077 */  beqz  $at, .L8007A020
/* 07AA44 80079E44 0018C080 */   sll   $t8, $t8, 2
/* 07AA48 80079E48 3C01800F */  lui   $at, %hi(jpt_800EEC70) # 0x800f
/* 07AA4C 80079E4C 00380821 */  addu  $at, $at, $t8
/* 07AA50 80079E50 8C38EC70 */  lw    $t8, %lo(jpt_800EEC70)($at) # -0x1390($at)
/* 07AA54 80079E54 03000008 */  jr    $t8
/* 07AA58 80079E58 00000000 */   nop
glabel L80079E5C
/* 07AA5C 80079E5C 0C021BE9 */  jal   func_80086FA4
/* 07AA60 80079E60 02002025 */   move  $a0, $s0
/* 07AA64 80079E64 1040006E */  beqz  $v0, .L8007A020
/* 07AA68 80079E68 93A4003F */   lbu   $a0, 0x3f($sp)
/* 07AA6C 80079E6C 3C051900 */  lui   $a1, (0x1900A055 >> 16) # lui $a1, 0x1900
/* 07AA70 80079E70 0C032418 */  jal   func_800C9060
/* 07AA74 80079E74 34A5A055 */   ori   $a1, (0x1900A055 & 0xFFFF) # ori $a1, $a1, 0xa055
/* 07AA78 80079E78 0C01CD95 */  jal   func_80073654
/* 07AA7C 80079E7C 02002025 */   move  $a0, $s0
/* 07AA80 80079E80 10000068 */  b     .L8007A024
/* 07AA84 80079E84 8FAA002C */   lw    $t2, 0x2c($sp)
glabel L80079E88
/* 07AA88 80079E88 0C02421A */  jal   func_80090868
/* 07AA8C 80079E8C 02202025 */   move  $a0, $s1
/* 07AA90 80079E90 02002025 */  move  $a0, $s0
/* 07AA94 80079E94 0C01C8A9 */  jal   func_800722A4
/* 07AA98 80079E98 24050004 */   li    $a1, 4
/* 07AA9C 80079E9C 0C01CD95 */  jal   func_80073654
/* 07AAA0 80079EA0 02002025 */   move  $a0, $s0
/* 07AAA4 80079EA4 1000005F */  b     .L8007A024
/* 07AAA8 80079EA8 8FAA002C */   lw    $t2, 0x2c($sp)
glabel L80079EAC
/* 07AAAC 80079EAC 963900F8 */  lhu   $t9, 0xf8($s1)
/* 07AAB0 80079EB0 24010009 */  li    $at, 9
/* 07AAB4 80079EB4 57210012 */  bnel  $t9, $at, .L80079F00
/* 07AAB8 80079EB8 862A00CA */   lh    $t2, 0xca($s1)
/* 07AABC 80079EBC 862800CA */  lh    $t0, 0xca($s1)
/* 07AAC0 80079EC0 3C01403E */  li    $at, 0x403E0000 # 2.968750
/* 07AAC4 80079EC4 31090001 */  andi  $t1, $t0, 1
/* 07AAC8 80079EC8 5520000D */  bnel  $t1, $zero, .L80079F00
/* 07AACC 80079ECC 862A00CA */   lh    $t2, 0xca($s1)
/* 07AAD0 80079ED0 C6260124 */  lwc1  $f6, 0x124($s1)
/* 07AAD4 80079ED4 44812800 */  mtc1  $at, $f5
/* 07AAD8 80079ED8 44802000 */  mtc1  $zero, $f4
/* 07AADC 80079EDC 46003221 */  cvt.d.s $f8, $f6
/* 07AAE0 80079EE0 02002025 */  move  $a0, $s0
/* 07AAE4 80079EE4 4624403E */  c.le.d $f8, $f4
/* 07AAE8 80079EE8 00000000 */  nop
/* 07AAEC 80079EEC 45020004 */  bc1fl .L80079F00
/* 07AAF0 80079EF0 862A00CA */   lh    $t2, 0xca($s1)
/* 07AAF4 80079EF4 0C01C8A9 */  jal   func_800722A4
/* 07AAF8 80079EF8 24050008 */   li    $a1, 8
/* 07AAFC 80079EFC 862A00CA */  lh    $t2, 0xca($s1)
.L80079F00:
/* 07AB00 80079F00 02002025 */  move  $a0, $s0
/* 07AB04 80079F04 00002825 */  move  $a1, $zero
/* 07AB08 80079F08 314B0002 */  andi  $t3, $t2, 2
/* 07AB0C 80079F0C 55600045 */  bnel  $t3, $zero, .L8007A024
/* 07AB10 80079F10 8FAA002C */   lw    $t2, 0x2c($sp)
/* 07AB14 80079F14 0C021BAB */  jal   func_80086EAC
/* 07AB18 80079F18 24060003 */   li    $a2, 3
/* 07AB1C 80079F1C 0C01CD95 */  jal   func_80073654
/* 07AB20 80079F20 02002025 */   move  $a0, $s0
/* 07AB24 80079F24 1000003F */  b     .L8007A024
/* 07AB28 80079F28 8FAA002C */   lw    $t2, 0x2c($sp)
glabel L80079F2C
/* 07AB2C 80079F2C 02002025 */  move  $a0, $s0
/* 07AB30 80079F30 0C01CDD7 */  jal   func_8007375C
/* 07AB34 80079F34 2405001E */   li    $a1, 30
/* 07AB38 80079F38 1000003A */  b     .L8007A024
/* 07AB3C 80079F3C 8FAA002C */   lw    $t2, 0x2c($sp)
glabel L80079F40
/* 07AB40 80079F40 862C00CA */  lh    $t4, 0xca($s1)
/* 07AB44 80079F44 02002025 */  move  $a0, $s0
/* 07AB48 80079F48 24050010 */  li    $a1, 16
/* 07AB4C 80079F4C 318DFF7F */  andi  $t5, $t4, 0xff7f
/* 07AB50 80079F50 0C01C8A9 */  jal   func_800722A4
/* 07AB54 80079F54 A62D00CA */   sh    $t5, 0xca($s1)
/* 07AB58 80079F58 02002025 */  move  $a0, $s0
/* 07AB5C 80079F5C 0C01C8A9 */  jal   func_800722A4
/* 07AB60 80079F60 24050020 */   li    $a1, 32
/* 07AB64 80079F64 02002025 */  move  $a0, $s0
/* 07AB68 80079F68 0C01C8B3 */  jal   func_800722CC
/* 07AB6C 80079F6C 24050004 */   li    $a1, 4
/* 07AB70 80079F70 02002025 */  move  $a0, $s0
/* 07AB74 80079F74 0C01C8B3 */  jal   func_800722CC
/* 07AB78 80079F78 24050008 */   li    $a1, 8
/* 07AB7C 80079F7C 0C01CD95 */  jal   func_80073654
/* 07AB80 80079F80 02002025 */   move  $a0, $s0
/* 07AB84 80079F84 3C051900 */  lui   $a1, (0x1900A056 >> 16) # lui $a1, 0x1900
/* 07AB88 80079F88 34A5A056 */  ori   $a1, (0x1900A056 & 0xFFFF) # ori $a1, $a1, 0xa056
/* 07AB8C 80079F8C 0C032418 */  jal   func_800C9060
/* 07AB90 80079F90 93A4003F */   lbu   $a0, 0x3f($sp)
/* 07AB94 80079F94 10000023 */  b     .L8007A024
/* 07AB98 80079F98 8FAA002C */   lw    $t2, 0x2c($sp)
glabel L80079F9C
/* 07AB9C 80079F9C 02002025 */  move  $a0, $s0
/* 07ABA0 80079FA0 0C01CDD7 */  jal   func_8007375C
/* 07ABA4 80079FA4 240500A0 */   li    $a1, 160
/* 07ABA8 80079FA8 1040001D */  beqz  $v0, .L8007A020
/* 07ABAC 80079FAC 02002025 */   move  $a0, $s0
/* 07ABB0 80079FB0 0C01C8B3 */  jal   func_800722CC
/* 07ABB4 80079FB4 24050010 */   li    $a1, 16
/* 07ABB8 80079FB8 862E00CA */  lh    $t6, 0xca($s1)
/* 07ABBC 80079FBC 31CFFFEF */  andi  $t7, $t6, 0xffef
/* 07ABC0 80079FC0 A62F00CA */  sh    $t7, 0xca($s1)
/* 07ABC4 80079FC4 863800CA */  lh    $t8, 0xca($s1)
/* 07ABC8 80079FC8 37190020 */  ori   $t9, $t8, 0x20
/* 07ABCC 80079FCC 10000014 */  b     .L8007A020
/* 07ABD0 80079FD0 A63900CA */   sh    $t9, 0xca($s1)
glabel L80079FD4
/* 07ABD4 80079FD4 02002025 */  move  $a0, $s0
/* 07ABD8 80079FD8 0C01CDD7 */  jal   func_8007375C
/* 07ABDC 80079FDC 2405003C */   li    $a1, 60
/* 07ABE0 80079FE0 10000010 */  b     .L8007A024
/* 07ABE4 80079FE4 8FAA002C */   lw    $t2, 0x2c($sp)
glabel L80079FE8
/* 07ABE8 80079FE8 0C01CDC8 */  jal   func_80073720
/* 07ABEC 80079FEC 02002025 */   move  $a0, $s0
/* 07ABF0 80079FF0 0C01C90A */  jal   func_80072428
/* 07ABF4 80079FF4 02002025 */   move  $a0, $s0
/* 07ABF8 80079FF8 862800CA */  lh    $t0, 0xca($s1)
/* 07ABFC 80079FFC 02002025 */  move  $a0, $s0
/* 07AC00 8007A000 24050001 */  li    $a1, 1
/* 07AC04 8007A004 3109FFDF */  andi  $t1, $t0, 0xffdf
/* 07AC08 8007A008 0C01C8B3 */  jal   func_800722CC
/* 07AC0C 8007A00C A62900CA */   sh    $t1, 0xca($s1)
/* 07AC10 8007A010 3C050100 */  lui   $a1, (0x0100FA28 >> 16) # lui $a1, 0x100
/* 07AC14 8007A014 34A5FA28 */  ori   $a1, (0x0100FA28 & 0xFFFF) # ori $a1, $a1, 0xfa28
/* 07AC18 8007A018 0C032406 */  jal   func_800C9018
/* 07AC1C 8007A01C 93A4003F */   lbu   $a0, 0x3f($sp)
.L8007A020:
/* 07AC20 8007A020 8FAA002C */  lw    $t2, 0x2c($sp)
.L8007A024:
/* 07AC24 8007A024 02002025 */  move  $a0, $s0
/* 07AC28 8007A028 854B00A6 */  lh    $t3, 0xa6($t2)
/* 07AC2C 8007A02C 29610002 */  slti  $at, $t3, 2
/* 07AC30 8007A030 54200004 */  bnel  $at, $zero, .L8007A044
/* 07AC34 8007A034 02002025 */   move  $a0, $s0
/* 07AC38 8007A038 0C01E64F */  jal   func_8007993C
/* 07AC3C 8007A03C 02202825 */   move  $a1, $s1
/* 07AC40 8007A040 02002025 */  move  $a0, $s0
.L8007A044:
/* 07AC44 8007A044 0C01E697 */  jal   func_80079A5C
/* 07AC48 8007A048 02202825 */   move  $a1, $s1
/* 07AC4C 8007A04C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 07AC50 8007A050 8FB0001C */  lw    $s0, 0x1c($sp)
/* 07AC54 8007A054 8FB10020 */  lw    $s1, 0x20($sp)
/* 07AC58 8007A058 03E00008 */  jr    $ra
/* 07AC5C 8007A05C 27BD0038 */   addiu $sp, $sp, 0x38
