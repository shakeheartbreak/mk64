glabel func_800AC128
/* 0ACD28 800AC128 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0ACD2C 800AC12C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0ACD30 800AC130 8C820004 */  lw    $v0, 4($a0)
/* 0ACD34 800AC134 24010001 */  li    $at, 1
/* 0ACD38 800AC138 240E0140 */  li    $t6, 320
/* 0ACD3C 800AC13C 10400009 */  beqz  $v0, .L800AC164
/* 0ACD40 800AC140 240F0001 */   li    $t7, 1
/* 0ACD44 800AC144 10410009 */  beq   $v0, $at, .L800AC16C
/* 0ACD48 800AC148 24010002 */   li    $at, 2
/* 0ACD4C 800AC14C 10410027 */  beq   $v0, $at, .L800AC1EC
/* 0ACD50 800AC150 24010003 */   li    $at, 3
/* 0ACD54 800AC154 50410046 */  beql  $v0, $at, .L800AC270
/* 0ACD58 800AC158 8C8E0018 */   lw    $t6, 0x18($a0)
/* 0ACD5C 800AC15C 10000065 */  b     .L800AC2F4
/* 0ACD60 800AC160 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AC164:
/* 0ACD64 800AC164 AC8E000C */  sw    $t6, 0xc($a0)
/* 0ACD68 800AC168 AC8F0004 */  sw    $t7, 4($a0)
.L800AC16C:
/* 0ACD6C 800AC16C 24050064 */  li    $a1, 100
/* 0ACD70 800AC170 0C02A503 */  jal   func_800A940C
/* 0ACD74 800AC174 AFA40018 */   sw    $a0, 0x18($sp)
/* 0ACD78 800AC178 8FA40018 */  lw    $a0, 0x18($sp)
/* 0ACD7C 800AC17C 24010006 */  li    $at, 6
/* 0ACD80 800AC180 24190008 */  li    $t9, 8
/* 0ACD84 800AC184 8C83000C */  lw    $v1, 0xc($a0)
/* 0ACD88 800AC188 24090002 */  li    $t1, 2
/* 0ACD8C 800AC18C 2462FF9C */  addiu $v0, $v1, -0x64
/* 0ACD90 800AC190 0041001A */  div   $zero, $v0, $at
/* 0ACD94 800AC194 0000C012 */  mflo  $t8
/* 0ACD98 800AC198 2B010009 */  slti  $at, $t8, 9
/* 0ACD9C 800AC19C 14200003 */  bnez  $at, .L800AC1AC
/* 0ACDA0 800AC1A0 AC98001C */   sw    $t8, 0x1c($a0)
/* 0ACDA4 800AC1A4 AC99001C */  sw    $t9, 0x1c($a0)
/* 0ACDA8 800AC1A8 8C83000C */  lw    $v1, 0xc($a0)
.L800AC1AC:
/* 0ACDAC 800AC1AC 8C88001C */  lw    $t0, 0x1c($a0)
/* 0ACDB0 800AC1B0 3C01800F */  lui   $at, %hi(D_800F2660)
/* 0ACDB4 800AC1B4 D4282660 */  ldc1  $f8, %lo(D_800F2660)($at)
/* 0ACDB8 800AC1B8 44882000 */  mtc1  $t0, $f4
/* 0ACDBC 800AC1BC 3C01800F */  lui   $at, %hi(D_800F2668)
/* 0ACDC0 800AC1C0 D4302668 */  ldc1  $f16, %lo(D_800F2668)($at)
/* 0ACDC4 800AC1C4 468021A1 */  cvt.d.w $f6, $f4
/* 0ACDC8 800AC1C8 24010064 */  li    $at, 100
/* 0ACDCC 800AC1CC 46283282 */  mul.d $f10, $f6, $f8
/* 0ACDD0 800AC1D0 46305480 */  add.d $f18, $f10, $f16
/* 0ACDD4 800AC1D4 46209120 */  cvt.s.d $f4, $f18
/* 0ACDD8 800AC1D8 14610045 */  bne   $v1, $at, .L800AC2F0
/* 0ACDDC 800AC1DC E4840024 */   swc1  $f4, 0x24($a0)
/* 0ACDE0 800AC1E0 AC890004 */  sw    $t1, 4($a0)
/* 0ACDE4 800AC1E4 10000042 */  b     .L800AC2F0
/* 0ACDE8 800AC1E8 AC800018 */   sw    $zero, 0x18($a0)
.L800AC1EC:
/* 0ACDEC 800AC1EC 8C8A0018 */  lw    $t2, 0x18($a0)
/* 0ACDF0 800AC1F0 3C013FF8 */  li    $at, 0x3FF80000 # 1.937500
/* 0ACDF4 800AC1F4 44814800 */  mtc1  $at, $f9
/* 0ACDF8 800AC1F8 254B0001 */  addiu $t3, $t2, 1
/* 0ACDFC 800AC1FC 256CFFF1 */  addiu $t4, $t3, -0xf
/* 0ACE00 800AC200 448C3000 */  mtc1  $t4, $f6
/* 0ACE04 800AC204 AC8B0018 */  sw    $t3, 0x18($a0)
/* 0ACE08 800AC208 AC80001C */  sw    $zero, 0x1c($a0)
/* 0ACE0C 800AC20C 46803021 */  cvt.d.w $f0, $f6
/* 0ACE10 800AC210 3C01800F */  lui   $at, %hi(D_800F2670)
/* 0ACE14 800AC214 D42A2670 */  ldc1  $f10, %lo(D_800F2670)($at)
/* 0ACE18 800AC218 44804000 */  mtc1  $zero, $f8
/* 0ACE1C 800AC21C 29610010 */  slti  $at, $t3, 0x10
/* 0ACE20 800AC220 462A0402 */  mul.d $f16, $f0, $f10
/* 0ACE24 800AC224 00000000 */  nop   
/* 0ACE28 800AC228 46208482 */  mul.d $f18, $f16, $f0
/* 0ACE2C 800AC22C 46324101 */  sub.d $f4, $f8, $f18
/* 0ACE30 800AC230 462021A0 */  cvt.s.d $f6, $f4
/* 0ACE34 800AC234 1420002E */  bnez  $at, .L800AC2F0
/* 0ACE38 800AC238 E4860024 */   swc1  $f6, 0x24($a0)
/* 0ACE3C 800AC23C C48A0024 */  lwc1  $f10, 0x24($a0)
/* 0ACE40 800AC240 3C01800F */  lui   $at, %hi(D_800F2678)
/* 0ACE44 800AC244 D4282678 */  ldc1  $f8, %lo(D_800F2678)($at)
/* 0ACE48 800AC248 46005421 */  cvt.d.s $f16, $f10
/* 0ACE4C 800AC24C 240D0003 */  li    $t5, 3
/* 0ACE50 800AC250 4628803C */  c.lt.d $f16, $f8
/* 0ACE54 800AC254 00000000 */  nop   
/* 0ACE58 800AC258 45020026 */  bc1fl .L800AC2F4
/* 0ACE5C 800AC25C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0ACE60 800AC260 AC8D0004 */  sw    $t5, 4($a0)
/* 0ACE64 800AC264 10000022 */  b     .L800AC2F0
/* 0ACE68 800AC268 AC800018 */   sw    $zero, 0x18($a0)
/* 0ACE6C 800AC26C 8C8E0018 */  lw    $t6, 0x18($a0)
.L800AC270:
/* 0ACE70 800AC270 3C013FF4 */  li    $at, 0x3FF40000 # 1.906250
/* 0ACE74 800AC274 44812800 */  mtc1  $at, $f5
/* 0ACE78 800AC278 25CF0001 */  addiu $t7, $t6, 1
/* 0ACE7C 800AC27C 25F8FFF1 */  addiu $t8, $t7, -0xf
/* 0ACE80 800AC280 44989000 */  mtc1  $t8, $f18
/* 0ACE84 800AC284 AC8F0018 */  sw    $t7, 0x18($a0)
/* 0ACE88 800AC288 AC80001C */  sw    $zero, 0x1c($a0)
/* 0ACE8C 800AC28C 46809021 */  cvt.d.w $f0, $f18
/* 0ACE90 800AC290 3C01800F */  lui   $at, %hi(D_800F2680)
/* 0ACE94 800AC294 D4262680 */  ldc1  $f6, %lo(D_800F2680)($at)
/* 0ACE98 800AC298 44802000 */  mtc1  $zero, $f4
/* 0ACE9C 800AC29C 29E1000D */  slti  $at, $t7, 0xd
/* 0ACEA0 800AC2A0 46260282 */  mul.d $f10, $f0, $f6
/* 0ACEA4 800AC2A4 00000000 */  nop   
/* 0ACEA8 800AC2A8 46205402 */  mul.d $f16, $f10, $f0
/* 0ACEAC 800AC2AC 46302201 */  sub.d $f8, $f4, $f16
/* 0ACEB0 800AC2B0 462044A0 */  cvt.s.d $f18, $f8
/* 0ACEB4 800AC2B4 1420000E */  bnez  $at, .L800AC2F0
/* 0ACEB8 800AC2B8 E4920024 */   swc1  $f18, 0x24($a0)
/* 0ACEBC 800AC2BC C4860024 */  lwc1  $f6, 0x24($a0)
/* 0ACEC0 800AC2C0 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0ACEC4 800AC2C4 44812800 */  mtc1  $at, $f5
/* 0ACEC8 800AC2C8 44802000 */  mtc1  $zero, $f4
/* 0ACECC 800AC2CC 460032A1 */  cvt.d.s $f10, $f6
/* 0ACED0 800AC2D0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0ACED4 800AC2D4 4624503C */  c.lt.d $f10, $f4
/* 0ACED8 800AC2D8 00000000 */  nop   
/* 0ACEDC 800AC2DC 45020005 */  bc1fl .L800AC2F4
/* 0ACEE0 800AC2E0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0ACEE4 800AC2E4 44818000 */  mtc1  $at, $f16
/* 0ACEE8 800AC2E8 00000000 */  nop   
/* 0ACEEC 800AC2EC E4900024 */  swc1  $f16, 0x24($a0)
.L800AC2F0:
/* 0ACEF0 800AC2F0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AC2F4:
/* 0ACEF4 800AC2F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ACEF8 800AC2F8 03E00008 */  jr    $ra
/* 0ACEFC 800AC2FC 00000000 */   nop   
