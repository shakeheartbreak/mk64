glabel func_800802C0
/* 080EC0 800802C0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 080EC4 800802C4 000470C0 */  sll   $t6, $a0, 3
/* 080EC8 800802C8 01C47023 */  subu  $t6, $t6, $a0
/* 080ECC 800802CC 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 080ED0 800802D0 AFB00024 */  sw    $s0, 0x24($sp)
/* 080ED4 800802D4 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 080ED8 800802D8 000E7140 */  sll   $t6, $t6, 5
/* 080EDC 800802DC AFBF002C */  sw    $ra, 0x2c($sp)
/* 080EE0 800802E0 AFB10028 */  sw    $s1, 0x28($sp)
/* 080EE4 800802E4 01CF8021 */  addu  $s0, $t6, $t7
/* 080EE8 800802E8 3C050600 */  lui   $a1, %hi(gTLUTWhomp) # $a1, 0x600
/* 080EEC 800802EC 3C060600 */  lui   $a2, %hi(D_06007138) # $a2, 0x600
/* 080EF0 800802F0 24180040 */  li    $t8, 64
/* 080EF4 800802F4 00808825 */  move  $s1, $a0
/* 080EF8 800802F8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 080EFC 800802FC A20000D8 */  sb    $zero, 0xd8($s0)
/* 080F00 80080300 AFB80010 */  sw    $t8, 0x10($sp)
/* 080F04 80080304 24C67138 */  addiu $a2, %lo(D_06007138) # addiu $a2, $a2, 0x7138
/* 080F08 80080308 24A56F38 */  addiu $a1, %lo(gTLUTWhomp) # addiu $a1, $a1, 0x6f38
/* 080F0C 8008030C 0C01CD11 */  jal   func_80073444
/* 080F10 80080310 24070010 */   li    $a3, 16
/* 080F14 80080314 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 080F18 80080318 44812000 */  mtc1  $at, $f4
/* 080F1C 8008031C 3C190601 */  lui   $t9, %hi(D_06009088) # $t9, 0x601
/* 080F20 80080320 27399088 */  addiu $t9, %lo(D_06009088) # addiu $t9, $t9, -0x6f78
/* 080F24 80080324 2408000C */  li    $t0, 12
/* 080F28 80080328 3C050500 */  lui   $a1, (0x05000220 >> 16) # lui $a1, 0x500
/* 080F2C 8008032C AE190070 */  sw    $t9, 0x70($s0)
/* 080F30 80080330 A20000D2 */  sb    $zero, 0xd2($s0)
/* 080F34 80080334 A60800C8 */  sh    $t0, 0xc8($s0)
/* 080F38 80080338 34A50220 */  ori   $a1, (0x05000220 & 0xFFFF) # ori $a1, $a1, 0x220
/* 080F3C 8008033C 02202025 */  move  $a0, $s1
/* 080F40 80080340 0C01C870 */  jal   func_800721C0
/* 080F44 80080344 E6040000 */   swc1  $f4, ($s0)
/* 080F48 80080348 4480A000 */  mtc1  $zero, $f20
/* 080F4C 8008034C 24090001 */  li    $t1, 1
/* 080F50 80080350 240A0006 */  li    $t2, 6
/* 080F54 80080354 4405A000 */  mfc1  $a1, $f20
/* 080F58 80080358 4406A000 */  mfc1  $a2, $f20
/* 080F5C 8008035C 4407A000 */  mfc1  $a3, $f20
/* 080F60 80080360 A60900A4 */  sh    $t1, 0xa4($s0)
/* 080F64 80080364 A20A00DF */  sb    $t2, 0xdf($s0)
/* 080F68 80080368 0C022E03 */  jal   func_8008B80C
/* 080F6C 8008036C 02202025 */   move  $a0, $s1
/* 080F70 80080370 02202025 */  move  $a0, $s1
/* 080F74 80080374 00002825 */  move  $a1, $zero
/* 080F78 80080378 00003025 */  move  $a2, $zero
/* 080F7C 8008037C 0C022E22 */  jal   func_8008B888
/* 080F80 80080380 00003825 */   move  $a3, $zero
/* 080F84 80080384 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 080F88 80080388 44810000 */  mtc1  $at, $f0
/* 080F8C 8008038C E6140044 */  swc1  $f20, 0x44($s0)
/* 080F90 80080390 E6140014 */  swc1  $f20, 0x14($s0)
/* 080F94 80080394 3C0B800E */  lui   $t3, %hi(gIsMirrorMode) # $t3, 0x800e
/* 080F98 80080398 E600002C */  swc1  $f0, 0x2c($s0)
/* 080F9C 8008039C E6000020 */  swc1  $f0, 0x20($s0)
/* 080FA0 800803A0 8D6BC604 */  lw    $t3, %lo(gIsMirrorMode)($t3)
/* 080FA4 800803A4 02202025 */  move  $a0, $s1
/* 080FA8 800803A8 00002825 */  move  $a1, $zero
/* 080FAC 800803AC 11600008 */  beqz  $t3, .L800803D0
/* 080FB0 800803B0 3406C000 */   li    $a2, 49152
/* 080FB4 800803B4 02202025 */  move  $a0, $s1
/* 080FB8 800803B8 00002825 */  move  $a1, $zero
/* 080FBC 800803BC 24064000 */  li    $a2, 16384
/* 080FC0 800803C0 0C022E2F */  jal   func_8008B8BC
/* 080FC4 800803C4 00003825 */   move  $a3, $zero
/* 080FC8 800803C8 10000004 */  b     .L800803DC
/* 080FCC 800803CC E6140028 */   swc1  $f20, 0x28($s0)
.L800803D0:
/* 080FD0 800803D0 0C022E2F */  jal   func_8008B8BC
/* 080FD4 800803D4 00003825 */   move  $a3, $zero
/* 080FD8 800803D8 E6140028 */  swc1  $f20, 0x28($s0)
.L800803DC:
/* 080FDC 800803DC E6140030 */  swc1  $f20, 0x30($s0)
/* 080FE0 800803E0 0C01C937 */  jal   func_800724DC
/* 080FE4 800803E4 02202025 */   move  $a0, $s1
/* 080FE8 800803E8 0C01C922 */  jal   func_80072488
/* 080FEC 800803EC 02202025 */   move  $a0, $s1
/* 080FF0 800803F0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 080FF4 800803F4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 080FF8 800803F8 8FB00024 */  lw    $s0, 0x24($sp)
/* 080FFC 800803FC 8FB10028 */  lw    $s1, 0x28($sp)
/* 081000 80080400 03E00008 */  jr    $ra
/* 081004 80080404 27BD0030 */   addiu $sp, $sp, 0x30
