glabel get_faulted_thread
/* 0050C4 800044C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0050C8 800044C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0050CC 800044CC 0C03384C */  jal   __osGetCurrFaultedThread
/* 0050D0 800044D0 00000000 */   nop   
/* 0050D4 800044D4 8C4E0004 */  lw    $t6, 4($v0)
/* 0050D8 800044D8 2404FFFF */  li    $a0, -1
/* 0050DC 800044DC 00401825 */  move  $v1, $v0
/* 0050E0 800044E0 108E0010 */  beq   $a0, $t6, .L80004524
/* 0050E4 800044E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0050E8 800044E8 8C420004 */  lw    $v0, 4($v0)
.L800044EC:
/* 0050EC 800044EC 18400009 */  blez  $v0, .L80004514
/* 0050F0 800044F0 28410080 */   slti  $at, $v0, 0x80
/* 0050F4 800044F4 50200008 */  beql  $at, $zero, .L80004518
/* 0050F8 800044F8 8C63000C */   lw    $v1, 0xc($v1)
/* 0050FC 800044FC 946F0012 */  lhu   $t7, 0x12($v1)
/* 005100 80004500 31F80003 */  andi  $t8, $t7, 3
/* 005104 80004504 53000004 */  beql  $t8, $zero, .L80004518
/* 005108 80004508 8C63000C */   lw    $v1, 0xc($v1)
/* 00510C 8000450C 10000006 */  b     .L80004528
/* 005110 80004510 00601025 */   move  $v0, $v1
.L80004514:
/* 005114 80004514 8C63000C */  lw    $v1, 0xc($v1)
.L80004518:
/* 005118 80004518 8C620004 */  lw    $v0, 4($v1)
/* 00511C 8000451C 1482FFF3 */  bne   $a0, $v0, .L800044EC
/* 005120 80004520 00000000 */   nop   
.L80004524:
/* 005124 80004524 00001025 */  move  $v0, $zero
.L80004528:
/* 005128 80004528 03E00008 */  jr    $ra
/* 00512C 8000452C 27BD0018 */   addiu $sp, $sp, 0x18