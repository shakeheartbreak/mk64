glabel func_8007DA74
/* 07E674 8007DA74 000478C0 */  sll   $t7, $a0, 3
/* 07E678 8007DA78 01E47823 */  subu  $t7, $t7, $a0
/* 07E67C 8007DA7C 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 07E680 8007DA80 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 07E684 8007DA84 000F7940 */  sll   $t7, $t7, 5
/* 07E688 8007DA88 01F81821 */  addu  $v1, $t7, $t8
/* 07E68C 8007DA8C 846200AE */  lh    $v0, 0xae($v1)
/* 07E690 8007DA90 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07E694 8007DA94 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07E698 8007DA98 10400009 */  beqz  $v0, .L8007DAC0
/* 07E69C 8007DA9C AFA40020 */   sw    $a0, 0x20($sp)
/* 07E6A0 8007DAA0 24010001 */  li    $at, 1
/* 07E6A4 8007DAA4 14410006 */  bne   $v0, $at, .L8007DAC0
/* 07E6A8 8007DAA8 2405001E */   li    $a1, 30
/* 07E6AC 8007DAAC 0C021C18 */  jal   func_80087060
/* 07E6B0 8007DAB0 AFA30018 */   sw    $v1, 0x18($sp)
/* 07E6B4 8007DAB4 10400002 */  beqz  $v0, .L8007DAC0
/* 07E6B8 8007DAB8 8FA30018 */   lw    $v1, 0x18($sp)
/* 07E6BC 8007DABC A46000C6 */  sh    $zero, 0xc6($v1)
.L8007DAC0:
/* 07E6C0 8007DAC0 946400BE */  lhu   $a0, 0xbe($v1)
/* 07E6C4 8007DAC4 946500C6 */  lhu   $a1, 0xc6($v1)
/* 07E6C8 8007DAC8 0C0105ED */  jal   func_800417B4
/* 07E6CC 8007DACC AFA30018 */   sw    $v1, 0x18($sp)
/* 07E6D0 8007DAD0 8FA30018 */  lw    $v1, 0x18($sp)
/* 07E6D4 8007DAD4 8FA40020 */  lw    $a0, 0x20($sp)
/* 07E6D8 8007DAD8 0C021E11 */  jal   func_80087844
/* 07E6DC 8007DADC A46200BE */   sh    $v0, 0xbe($v1)
/* 07E6E0 8007DAE0 0C022FC6 */  jal   func_8008BF18
/* 07E6E4 8007DAE4 8FA40020 */   lw    $a0, 0x20($sp)
/* 07E6E8 8007DAE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07E6EC 8007DAEC 27BD0020 */  addiu $sp, $sp, 0x20
/* 07E6F0 8007DAF0 03E00008 */  jr    $ra
/* 07E6F4 8007DAF4 00000000 */   nop   