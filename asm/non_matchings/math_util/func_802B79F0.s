.section .late_rodata

glabel D_802B9FDC
.float -0.01600503

glabel D_802B9FE0
.float 0.002834060

glabel D_802B9FE4
.float -0.074954450

glabel D_802B9FE8
.float 0.042587612

glabel D_802B9FEC
.float -0.142025709

glabel D_802B9FF0
.float 0.106367543

glabel D_802B9FF4
.float -0.333330661

glabel D_802B9FF8
.double 1.3375206719956623e-08

glabel D_802BA000
.double 1.5707963267948966

glabel D_802BA008
.double 1.5707963267948966

glabel D_802BA010
.double 50.123870849609375

.section .text

glabel func_802B79F0
/* 121000 802B79F0 46007021 */  cvt.d.s $f0, $f14
/* 121004 802B79F4 460E6403 */  div.s $f16, $f12, $f14
/* 121008 802B79F8 00001025 */  move  $v0, $zero
/* 12100C 802B79FC 46200085 */  abs.d $f2, $f0
/* 121010 802B7A00 46006021 */  cvt.d.s $f0, $f12
/* 121014 802B7A04 46200005 */  abs.d $f0, $f0
/* 121018 802B7A08 4620103C */  c.lt.d $f2, $f0
/* 12101C 802B7A0C 00000000 */  nop   
/* 121020 802B7A10 45000002 */  bc1f  .L802B7A1C
/* 121024 802B7A14 00000000 */   nop   
/* 121028 802B7A18 24020001 */  li    $v0, 1
.L802B7A1C:
/* 12102C 802B7A1C 10400002 */  beqz  $v0, .L802B7A28
/* 121030 802B7A20 00000000 */   nop   
/* 121034 802B7A24 460C7403 */  div.s $f16, $f14, $f12
.L802B7A28:
/* 121038 802B7A28 46108002 */  mul.s $f0, $f16, $f16
/* 12103C 802B7A2C 3C01802C */  lui   $at, %hi(D_802B9FDC) # $at, 0x802c
/* 121040 802B7A30 C4249FDC */  lwc1  $f4, %lo(D_802B9FDC)($at)
/* 121044 802B7A34 3C01802C */  lui   $at, %hi(D_802B9FE0) # $at, 0x802c
/* 121048 802B7A38 C4269FE0 */  lwc1  $f6, %lo(D_802B9FE0)($at)
/* 12104C 802B7A3C 3C01802C */  lui   $at, %hi(D_802B9FE4) # $at, 0x802c
/* 121050 802B7A40 46000082 */  mul.s $f2, $f0, $f0
/* 121054 802B7A44 00000000 */  nop   
/* 121058 802B7A48 46060202 */  mul.s $f8, $f0, $f6
/* 12105C 802B7A4C C4269FE4 */  lwc1  $f6, %lo(D_802B9FE4)($at)
/* 121060 802B7A50 3C01802C */  lui   $at, %hi(D_802B9FE8) # $at, 0x802c
/* 121064 802B7A54 46082280 */  add.s $f10, $f4, $f8
/* 121068 802B7A58 C4289FE8 */  lwc1  $f8, %lo(D_802B9FE8)($at)
/* 12106C 802B7A5C 3C01802C */  lui   $at, %hi(D_802B9FEC) # $at, 0x802c
/* 121070 802B7A60 460A1482 */  mul.s $f18, $f2, $f10
/* 121074 802B7A64 46069100 */  add.s $f4, $f18, $f6
/* 121078 802B7A68 46080282 */  mul.s $f10, $f0, $f8
/* 12107C 802B7A6C 460A2480 */  add.s $f18, $f4, $f10
/* 121080 802B7A70 46021182 */  mul.s $f6, $f2, $f2
/* 121084 802B7A74 C4249FEC */  lwc1  $f4, %lo(D_802B9FEC)($at)
/* 121088 802B7A78 3C01802C */  lui   $at, %hi(D_802B9FF0) # $at, 0x802c
/* 12108C 802B7A7C C42A9FF0 */  lwc1  $f10, %lo(D_802B9FF0)($at)
/* 121090 802B7A80 3C01802C */  lui   $at, %hi(D_802B9FF4) # $at, 0x802c
/* 121094 802B7A84 46069202 */  mul.s $f8, $f18, $f6
/* 121098 802B7A88 00000000 */  nop   
/* 12109C 802B7A8C 460A0482 */  mul.s $f18, $f0, $f10
/* 1210A0 802B7A90 46122180 */  add.s $f6, $f4, $f18
/* 1210A4 802B7A94 C4329FF4 */  lwc1  $f18, %lo(D_802B9FF4)($at)
/* 1210A8 802B7A98 3C01802C */  lui   $at, %hi(D_802B9FF8) # $at, 0x802c
/* 1210AC 802B7A9C 46023282 */  mul.s $f10, $f6, $f2
/* 1210B0 802B7AA0 460A4100 */  add.s $f4, $f8, $f10
/* 1210B4 802B7AA4 C4289FF8 */  lwc1  $f8, %lo(D_802B9FF8)($at)
/* 1210B8 802B7AA8 46080282 */  mul.s $f10, $f0, $f8
/* 1210BC 802B7AAC 46122180 */  add.s $f6, $f4, $f18
/* 1210C0 802B7AB0 46008482 */  mul.s $f18, $f16, $f0
/* 1210C4 802B7AB4 460A3100 */  add.s $f4, $f6, $f10
/* 1210C8 802B7AB8 46122202 */  mul.s $f8, $f4, $f18
/* 1210CC 802B7ABC 10400013 */  beqz  $v0, .L802B7B0C
/* 1210D0 802B7AC0 46088400 */   add.s $f16, $f16, $f8
/* 1210D4 802B7AC4 44800000 */  mtc1  $zero, $f0
/* 1210D8 802B7AC8 3C01802C */  lui   $at, %hi(D_802BA008)
/* 1210DC 802B7ACC 4600603C */  c.lt.s $f12, $f0
/* 1210E0 802B7AD0 00000000 */  nop   
/* 1210E4 802B7AD4 45000008 */  bc1f  .L802B7AF8
/* 1210E8 802B7AD8 00000000 */   nop   
/* 1210EC 802B7ADC 3C01802C */  lui   $at, %hi(D_802BA000)
/* 1210F0 802B7AE0 D422A000 */  ldc1  $f2, %lo(D_802BA000)($at)
/* 1210F4 802B7AE4 460081A1 */  cvt.d.s $f6, $f16
/* 1210F8 802B7AE8 46201087 */  neg.d $f2, $f2
/* 1210FC 802B7AEC 46261281 */  sub.d $f10, $f2, $f6
/* 121100 802B7AF0 03E00008 */  jr    $ra
/* 121104 802B7AF4 46205020 */   cvt.s.d $f0, $f10

.L802B7AF8:
/* 121108 802B7AF8 D422A008 */  ldc1  $f2, %lo(D_802BA008)($at)
/* 12110C 802B7AFC 460081A1 */  cvt.d.s $f6, $f16
/* 121110 802B7B00 46261281 */  sub.d $f10, $f2, $f6
/* 121114 802B7B04 03E00008 */  jr    $ra
/* 121118 802B7B08 46205020 */   cvt.s.d $f0, $f10

.L802B7B0C:
/* 12111C 802B7B0C 44800000 */  mtc1  $zero, $f0
/* 121120 802B7B10 00000000 */  nop   
/* 121124 802B7B14 460E003E */  c.le.s $f0, $f14
/* 121128 802B7B18 00000000 */  nop   
/* 12112C 802B7B1C 45020004 */  bc1fl .L802B7B30
/* 121130 802B7B20 4600603C */   c.lt.s $f12, $f0
/* 121134 802B7B24 03E00008 */  jr    $ra
/* 121138 802B7B28 46008006 */   mov.s $f0, $f16

/* 12113C 802B7B2C 4600603C */  c.lt.s $f12, $f0
.L802B7B30:
/* 121140 802B7B30 3C01802C */  lui   $at, %hi(D_802BA010) # $at, 0x802c
/* 121144 802B7B34 C42EA010 */  lwc1  $f14, %lo(D_802BA010)($at)
/* 121148 802B7B38 45000002 */  bc1f  .L802B7B44
/* 12114C 802B7B3C 460E8080 */   add.s $f2, $f16, $f14
/* 121150 802B7B40 460E8081 */  sub.s $f2, $f16, $f14
.L802B7B44:
/* 121154 802B7B44 46001006 */  mov.s $f0, $f2
/* 121158 802B7B48 03E00008 */  jr    $ra
/* 12115C 802B7B4C 00000000 */   nop   
