glabel func_802B4E30
/* 11E440 802B4E30 44801000 */  mtc1  $zero, $f2
/* 11E444 802B4E34 C4800044 */  lwc1  $f0, 0x44($a0)
/* 11E448 802B4E38 4602003C */  c.lt.s $f0, $f2
/* 11E44C 802B4E3C 00000000 */  nop   
/* 11E450 802B4E40 45020015 */  bc1fl .L802B4E98
/* 11E454 802B4E44 C480003C */   lwc1  $f0, 0x3c($a0)
/* 11E458 802B4E48 948E0034 */  lhu   $t6, 0x34($a0)
/* 11E45C 802B4E4C 24020001 */  li    $v0, 1
/* 11E460 802B4E50 544E0011 */  bnel  $v0, $t6, .L802B4E98
/* 11E464 802B4E54 C480003C */   lwc1  $f0, 0x3c($a0)
/* 11E468 802B4E58 C4860060 */  lwc1  $f6, 0x60($a0)
/* 11E46C 802B4E5C C4840018 */  lwc1  $f4, 0x18($a0)
/* 11E470 802B4E60 C4920064 */  lwc1  $f18, 0x64($a0)
/* 11E474 802B4E64 46003202 */  mul.s $f8, $f6, $f0
/* 11E478 802B4E68 C490001C */  lwc1  $f16, 0x1c($a0)
/* 11E47C 802B4E6C 46009182 */  mul.s $f6, $f18, $f0
/* 11E480 802B4E70 46082281 */  sub.s $f10, $f4, $f8
/* 11E484 802B4E74 C4880020 */  lwc1  $f8, 0x20($a0)
/* 11E488 802B4E78 46068101 */  sub.s $f4, $f16, $f6
/* 11E48C 802B4E7C E48A0018 */  swc1  $f10, 0x18($a0)
/* 11E490 802B4E80 C48A0068 */  lwc1  $f10, 0x68($a0)
/* 11E494 802B4E84 E484001C */  swc1  $f4, 0x1c($a0)
/* 11E498 802B4E88 46005482 */  mul.s $f18, $f10, $f0
/* 11E49C 802B4E8C 46124401 */  sub.s $f16, $f8, $f18
/* 11E4A0 802B4E90 E4900020 */  swc1  $f16, 0x20($a0)
/* 11E4A4 802B4E94 C480003C */  lwc1  $f0, 0x3c($a0)
.L802B4E98:
/* 11E4A8 802B4E98 24020001 */  li    $v0, 1
/* 11E4AC 802B4E9C 4602003C */  c.lt.s $f0, $f2
/* 11E4B0 802B4EA0 00000000 */  nop   
/* 11E4B4 802B4EA4 45020014 */  bc1fl .L802B4EF8
/* 11E4B8 802B4EA8 C4800040 */   lwc1  $f0, 0x40($a0)
/* 11E4BC 802B4EAC 948F0030 */  lhu   $t7, 0x30($a0)
/* 11E4C0 802B4EB0 544F0011 */  bnel  $v0, $t7, .L802B4EF8
/* 11E4C4 802B4EB4 C4800040 */   lwc1  $f0, 0x40($a0)
/* 11E4C8 802B4EB8 C4840048 */  lwc1  $f4, 0x48($a0)
/* 11E4CC 802B4EBC C4860018 */  lwc1  $f6, 0x18($a0)
/* 11E4D0 802B4EC0 C490004C */  lwc1  $f16, 0x4c($a0)
/* 11E4D4 802B4EC4 46002282 */  mul.s $f10, $f4, $f0
/* 11E4D8 802B4EC8 C492001C */  lwc1  $f18, 0x1c($a0)
/* 11E4DC 802B4ECC 46008102 */  mul.s $f4, $f16, $f0
/* 11E4E0 802B4ED0 460A3201 */  sub.s $f8, $f6, $f10
/* 11E4E4 802B4ED4 C48A0020 */  lwc1  $f10, 0x20($a0)
/* 11E4E8 802B4ED8 46049181 */  sub.s $f6, $f18, $f4
/* 11E4EC 802B4EDC E4880018 */  swc1  $f8, 0x18($a0)
/* 11E4F0 802B4EE0 C4880050 */  lwc1  $f8, 0x50($a0)
/* 11E4F4 802B4EE4 E486001C */  swc1  $f6, 0x1c($a0)
/* 11E4F8 802B4EE8 46004402 */  mul.s $f16, $f8, $f0
/* 11E4FC 802B4EEC 46105481 */  sub.s $f18, $f10, $f16
/* 11E500 802B4EF0 E4920020 */  swc1  $f18, 0x20($a0)
/* 11E504 802B4EF4 C4800040 */  lwc1  $f0, 0x40($a0)
.L802B4EF8:
/* 11E508 802B4EF8 4602003C */  c.lt.s $f0, $f2
/* 11E50C 802B4EFC 00000000 */  nop   
/* 11E510 802B4F00 45000013 */  bc1f  .L802B4F50
/* 11E514 802B4F04 00000000 */   nop   
/* 11E518 802B4F08 94980032 */  lhu   $t8, 0x32($a0)
/* 11E51C 802B4F0C 14580010 */  bne   $v0, $t8, .L802B4F50
/* 11E520 802B4F10 00000000 */   nop   
/* 11E524 802B4F14 C4860054 */  lwc1  $f6, 0x54($a0)
/* 11E528 802B4F18 C4840018 */  lwc1  $f4, 0x18($a0)
/* 11E52C 802B4F1C C4920058 */  lwc1  $f18, 0x58($a0)
/* 11E530 802B4F20 46003202 */  mul.s $f8, $f6, $f0
/* 11E534 802B4F24 C490001C */  lwc1  $f16, 0x1c($a0)
/* 11E538 802B4F28 46009182 */  mul.s $f6, $f18, $f0
/* 11E53C 802B4F2C 46082281 */  sub.s $f10, $f4, $f8
/* 11E540 802B4F30 C4880020 */  lwc1  $f8, 0x20($a0)
/* 11E544 802B4F34 46068101 */  sub.s $f4, $f16, $f6
/* 11E548 802B4F38 E48A0018 */  swc1  $f10, 0x18($a0)
/* 11E54C 802B4F3C C48A005C */  lwc1  $f10, 0x5c($a0)
/* 11E550 802B4F40 E484001C */  swc1  $f4, 0x1c($a0)
/* 11E554 802B4F44 46005482 */  mul.s $f18, $f10, $f0
/* 11E558 802B4F48 46124401 */  sub.s $f16, $f8, $f18
/* 11E55C 802B4F4C E4900020 */  swc1  $f16, 0x20($a0)
.L802B4F50:
/* 11E560 802B4F50 03E00008 */  jr    $ra
/* 11E564 802B4F54 00000000 */   nop   

/* 11E568 802B4F58 00000000 */  nop   