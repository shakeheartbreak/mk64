glabel func_80010FA0
/* 011BA0 80010FA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 011BA4 80010FA4 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 011BA8 80010FA8 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 011BAC 80010FAC 3C01403E */  li    $at, 0x403E0000 # 2.968750
/* 011BB0 80010FB0 44814800 */  mtc1  $at, $f9
/* 011BB4 80010FB4 44804000 */  mtc1  $zero, $f8
/* 011BB8 80010FB8 460021A1 */  cvt.d.s $f6, $f4
/* 011BBC 80010FBC AFBF001C */  sw    $ra, 0x1c($sp)
/* 011BC0 80010FC0 46283280 */  add.d $f10, $f6, $f8
/* 011BC4 80010FC4 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 011BC8 80010FC8 AFA60028 */  sw    $a2, 0x28($sp)
/* 011BCC 80010FCC AFA7002C */  sw    $a3, 0x2c($sp)
/* 011BD0 80010FD0 C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 011BD4 80010FD4 0C0AB870 */  jal   func_802AE1C0
/* 011BD8 80010FD8 462053A0 */   cvt.s.d $f14, $f10
/* 011BDC 80010FDC C7B00028 */  lwc1  $f16, 0x28($sp)
/* 011BE0 80010FE0 3C048016 */  lui   $a0, %hi(D_80162E70) # $a0, 0x8016
/* 011BE4 80010FE4 44070000 */  mfc1  $a3, $f0
/* 011BE8 80010FE8 E7A00024 */  swc1  $f0, 0x24($sp)
/* 011BEC 80010FEC 24842E70 */  addiu $a0, %lo(D_80162E70) # addiu $a0, $a0, 0x2e70
/* 011BF0 80010FF0 3C054120 */  lui   $a1, 0x4120
/* 011BF4 80010FF4 8FA60020 */  lw    $a2, 0x20($sp)
/* 011BF8 80010FF8 0C0AB772 */  jal   func_802ADDC8
/* 011BFC 80010FFC E7B00010 */   swc1  $f16, 0x10($sp)
/* 011C00 80011000 8FBF001C */  lw    $ra, 0x1c($sp)
/* 011C04 80011004 C7A00024 */  lwc1  $f0, 0x24($sp)
/* 011C08 80011008 27BD0020 */  addiu $sp, $sp, 0x20
/* 011C0C 8001100C 03E00008 */  jr    $ra
/* 011C10 80011010 00000000 */   nop   