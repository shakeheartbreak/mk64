glabel func_800729EC
/* 0735EC 800729EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0735F0 800729F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0735F4 800729F4 0C0A3B6A */  jal   start_race
/* 0735F8 800729F8 AFA40018 */   sw    $a0, 0x18($sp)
/* 0735FC 800729FC 0C01C922 */  jal   func_80072488
/* 073600 80072A00 8FA40018 */   lw    $a0, 0x18($sp)
/* 073604 80072A04 24020001 */  li    $v0, 1
/* 073608 80072A08 3C018019 */  lui   $at, %hi(D_8018D2BC) # $at, 0x8019
/* 07360C 80072A0C AC22D2BC */  sw    $v0, %lo(D_8018D2BC)($at)
/* 073610 80072A10 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 073614 80072A14 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 073618 80072A18 3C018019 */  lui   $at, %hi(D_8018D2A4) # $at, 0x8019
/* 07361C 80072A1C AC22D2A4 */  sw    $v0, %lo(D_8018D2A4)($at)
/* 073620 80072A20 24010004 */  li    $at, 4
/* 073624 80072A24 11C1000E */  beq   $t6, $at, .L80072A60
/* 073628 80072A28 3C038019 */   lui   $v1, %hi(D_8018EDF3) # $v1, 0x8019
/* 07362C 80072A2C 8063EDF3 */  lb    $v1, %lo(D_8018EDF3)($v1)
/* 073630 80072A30 3C0F8019 */  lui   $t7, %hi(D_8018CA70) # x8019
/* 073634 80072A34 25E2CA70 */  addiu $v0, $t7, %lo(D_8018CA70) # -0x3590
/* 073638 80072A38 18600009 */  blez  $v1, .L80072A60
/* 07363C 80072A3C 0003C140 */   sll   $t8, $v1, 5
/* 073640 80072A40 0303C021 */  addu  $t8, $t8, $v1
/* 073644 80072A44 0018C080 */  sll   $t8, $t8, 2
/* 073648 80072A48 03022021 */  addu  $a0, $t8, $v0
/* 07364C 80072A4C 24030001 */  li    $v1, 1
.L80072A50:
/* 073650 80072A50 24420084 */  addiu $v0, $v0, 0x84
/* 073654 80072A54 0044082B */  sltu  $at, $v0, $a0
/* 073658 80072A58 1420FFFD */  bnez  $at, .L80072A50
/* 07365C 80072A5C A043FFFD */   sb    $v1, -3($v0)
.L80072A60:
/* 073660 80072A60 0C016AC8 */  jal   func_8005AB20
/* 073664 80072A64 00000000 */   nop   
/* 073668 80072A68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07366C 80072A6C 27BD0018 */  addiu $sp, $sp, 0x18
/* 073670 80072A70 03E00008 */  jr    $ra
/* 073674 80072A74 00000000 */   nop   
