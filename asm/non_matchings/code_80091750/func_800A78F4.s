glabel func_800A78F4
/* 0A84F4 800A78F4 3C010009 */  lui   $at, (0x000927C0 >> 16) # lui $at, 9
/* 0A84F8 800A78F8 342127C0 */  ori   $at, (0x000927C0 & 0xFFFF) # ori $at, $at, 0x27c0
/* 0A84FC 800A78FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A8500 800A7900 0081082A */  slt   $at, $a0, $at
/* 0A8504 800A7904 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A8508 800A7908 14200005 */  bnez  $at, .L800A7920
/* 0A850C 800A790C 00803025 */   move  $a2, $a0
/* 0A8510 800A7910 0C029E38 */  jal   func_800A78E0
/* 0A8514 800A7914 00A02025 */   move  $a0, $a1
/* 0A8518 800A7918 10000007 */  b     .L800A7938
/* 0A851C 800A791C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A7920:
/* 0A8520 800A7920 24011770 */  li    $at, 6000
/* 0A8524 800A7924 00C1001A */  div   $zero, $a2, $at
/* 0A8528 800A7928 00002012 */  mflo  $a0
/* 0A852C 800A792C 0C029E25 */  jal   func_800A7894
/* 0A8530 800A7930 00000000 */   nop   
/* 0A8534 800A7934 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A7938:
/* 0A8538 800A7938 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A853C 800A793C 03E00008 */  jr    $ra
/* 0A8540 800A7940 00000000 */   nop   