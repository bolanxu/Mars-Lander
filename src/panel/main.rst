                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ship_mass
                                     12 	.globl _disp
                                     13 	.globl _vel1
                                     14 	.globl _leak1
                                     15 	.globl _turb3
                                     16 	.globl _turb2
                                     17 	.globl _turb1
                                     18 	.globl _engine1
                                     19 	.globl _start1
                                     20 	.globl _lose
                                     21 	.globl _win
                                     22 	.globl _nums
                                     23 	.globl _PCA_isr
                                     24 	.globl _timer1interrupt
                                     25 	.globl _adc_isr
                                     26 	.globl _timer0Interrupt
                                     27 	.globl _main
                                     28 	.globl _init
                                     29 	.globl _printLCD
                                     30 	.globl _InitADC
                                     31 	.globl _PcaInit
                                     32 	.globl _Timer1Init
                                     33 	.globl _Timer0Init
                                     34 	.globl _start
                                     35 	.globl _write_data
                                     36 	.globl _write_com
                                     37 	.globl _display
                                     38 	.globl _delay
                                     39 	.globl _DelaySmalltest
                                     40 	.globl _Delay1ms
                                     41 	.globl _srand
                                     42 	.globl _rand
                                     43 	.globl _CF
                                     44 	.globl _CR
                                     45 	.globl _CCF1
                                     46 	.globl _CCF0
                                     47 	.globl _P4_7
                                     48 	.globl _P4_6
                                     49 	.globl _P4_5
                                     50 	.globl _P4_4
                                     51 	.globl _P4_3
                                     52 	.globl _P4_2
                                     53 	.globl _P4_1
                                     54 	.globl _P4_0
                                     55 	.globl _EADC
                                     56 	.globl _CY
                                     57 	.globl _AC
                                     58 	.globl _F0
                                     59 	.globl _RS1
                                     60 	.globl _RS0
                                     61 	.globl _OV
                                     62 	.globl _FL
                                     63 	.globl _P
                                     64 	.globl _TF2
                                     65 	.globl _EXF2
                                     66 	.globl _RCLK
                                     67 	.globl _TCLK
                                     68 	.globl _EXEN2
                                     69 	.globl _TR2
                                     70 	.globl _C_T2
                                     71 	.globl _CP_RL2
                                     72 	.globl _T2CON_7
                                     73 	.globl _T2CON_6
                                     74 	.globl _T2CON_5
                                     75 	.globl _T2CON_4
                                     76 	.globl _T2CON_3
                                     77 	.globl _T2CON_2
                                     78 	.globl _T2CON_1
                                     79 	.globl _T2CON_0
                                     80 	.globl _PT2
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _RD
                                     87 	.globl _WR
                                     88 	.globl _T1
                                     89 	.globl _T0
                                     90 	.globl _INT1
                                     91 	.globl _INT0
                                     92 	.globl _TXD
                                     93 	.globl _RXD
                                     94 	.globl _P3_7
                                     95 	.globl _P3_6
                                     96 	.globl _P3_5
                                     97 	.globl _P3_4
                                     98 	.globl _P3_3
                                     99 	.globl _P3_2
                                    100 	.globl _P3_1
                                    101 	.globl _P3_0
                                    102 	.globl _EA
                                    103 	.globl _ET2
                                    104 	.globl _ES
                                    105 	.globl _ET1
                                    106 	.globl _EX1
                                    107 	.globl _ET0
                                    108 	.globl _EX0
                                    109 	.globl _P2_7
                                    110 	.globl _P2_6
                                    111 	.globl _P2_5
                                    112 	.globl _P2_4
                                    113 	.globl _P2_3
                                    114 	.globl _P2_2
                                    115 	.globl _P2_1
                                    116 	.globl _P2_0
                                    117 	.globl _SM0
                                    118 	.globl _SM1
                                    119 	.globl _SM2
                                    120 	.globl _REN
                                    121 	.globl _TB8
                                    122 	.globl _RB8
                                    123 	.globl _TI
                                    124 	.globl _RI
                                    125 	.globl _T2EX
                                    126 	.globl _T2
                                    127 	.globl _P1_7
                                    128 	.globl _P1_6
                                    129 	.globl _P1_5
                                    130 	.globl _P1_4
                                    131 	.globl _P1_3
                                    132 	.globl _P1_2
                                    133 	.globl _P1_1
                                    134 	.globl _P1_0
                                    135 	.globl _TF1
                                    136 	.globl _TR1
                                    137 	.globl _TF0
                                    138 	.globl _TR0
                                    139 	.globl _IE1
                                    140 	.globl _IT1
                                    141 	.globl _IE0
                                    142 	.globl _IT0
                                    143 	.globl _P0_7
                                    144 	.globl _P0_6
                                    145 	.globl _P0_5
                                    146 	.globl _P0_4
                                    147 	.globl _P0_3
                                    148 	.globl _P0_2
                                    149 	.globl _P0_1
                                    150 	.globl _P0_0
                                    151 	.globl _PCAPWM1
                                    152 	.globl _PCAPWM0
                                    153 	.globl _CCAP1H
                                    154 	.globl _CCAP1L
                                    155 	.globl _CCAPM1
                                    156 	.globl _CCAP0H
                                    157 	.globl _CCAP0L
                                    158 	.globl _CCAPM0
                                    159 	.globl _CH
                                    160 	.globl _CL
                                    161 	.globl _CMOD
                                    162 	.globl _CCON
                                    163 	.globl _P4
                                    164 	.globl _P4SW
                                    165 	.globl _IPH
                                    166 	.globl _P1ASF
                                    167 	.globl _ADC_LOW2
                                    168 	.globl _ADC_RES
                                    169 	.globl _ADC_CONTR
                                    170 	.globl _AUXR
                                    171 	.globl _P4M1
                                    172 	.globl _P4M0
                                    173 	.globl _P2M1
                                    174 	.globl _P2M0
                                    175 	.globl _P3M1
                                    176 	.globl _P3M0
                                    177 	.globl _P1M1
                                    178 	.globl _P1M0
                                    179 	.globl _P0M1
                                    180 	.globl _P0M0
                                    181 	.globl _B
                                    182 	.globl _A
                                    183 	.globl _ACC
                                    184 	.globl _PSW
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2MOD
                                    190 	.globl _T2CON
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _bit3
                                    210 	.globl _bit2
                                    211 	.globl _bit1
                                    212 	.globl _leakBit
                                    213 	.globl _thrust_time
                                    214 	.globl _delta_h
                                    215 	.globl _a
                                    216 	.globl _delta_t
                                    217 	.globl _delta_d
                                    218 	.globl _delta_v
                                    219 	.globl _fuel
                                    220 	.globl _gravity
                                    221 	.globl _height
                                    222 	.globl _ship_thrust
                                    223 	.globl _thrust
                                    224 	.globl _in_thrust
                                    225 	.globl _velocity
                                    226 	.globl _stormBit
                                    227 	.globl _enginebit
                                    228 	.globl _i
                                    229 	.globl _currentTime
                                    230 	.globl _runtime
                                    231 	.globl _cnt
                                    232 	.globl _value
                                    233 	.globl _w
                                    234 	.globl _rndNum
                                    235 	.globl _digit3_4
                                    236 	.globl _digit3_3
                                    237 	.globl _digit3_2
                                    238 	.globl _digit3_1
                                    239 	.globl _digit2_6
                                    240 	.globl _digit2_5
                                    241 	.globl _digit2_4
                                    242 	.globl _digit2_3
                                    243 	.globl _digit2_2
                                    244 	.globl _digit2_1
                                    245 	.globl _digit1_5
                                    246 	.globl _digit1_4
                                    247 	.globl _digit1_3
                                    248 	.globl _digit1_2
                                    249 	.globl _digit1_1
                                    250 	.globl _digit4
                                    251 	.globl _digit3
                                    252 	.globl _digit2
                                    253 	.globl _digit1
                                    254 	.globl _velTime
                                    255 	.globl _velocityBit
                                    256 ;--------------------------------------------------------
                                    257 ; special function registers
                                    258 ;--------------------------------------------------------
                                    259 	.area RSEG    (ABS,DATA)
      000000                        260 	.org 0x0000
                           000080   261 _P0	=	0x0080
                           000081   262 _SP	=	0x0081
                           000082   263 _DPL	=	0x0082
                           000083   264 _DPH	=	0x0083
                           000087   265 _PCON	=	0x0087
                           000088   266 _TCON	=	0x0088
                           000089   267 _TMOD	=	0x0089
                           00008A   268 _TL0	=	0x008a
                           00008B   269 _TL1	=	0x008b
                           00008C   270 _TH0	=	0x008c
                           00008D   271 _TH1	=	0x008d
                           000090   272 _P1	=	0x0090
                           000098   273 _SCON	=	0x0098
                           000099   274 _SBUF	=	0x0099
                           0000A0   275 _P2	=	0x00a0
                           0000A8   276 _IE	=	0x00a8
                           0000B0   277 _P3	=	0x00b0
                           0000B8   278 _IP	=	0x00b8
                           0000C8   279 _T2CON	=	0x00c8
                           0000C9   280 _T2MOD	=	0x00c9
                           0000CA   281 _RCAP2L	=	0x00ca
                           0000CB   282 _RCAP2H	=	0x00cb
                           0000CC   283 _TL2	=	0x00cc
                           0000CD   284 _TH2	=	0x00cd
                           0000D0   285 _PSW	=	0x00d0
                           0000E0   286 _ACC	=	0x00e0
                           0000E0   287 _A	=	0x00e0
                           0000F0   288 _B	=	0x00f0
                           000094   289 _P0M0	=	0x0094
                           000093   290 _P0M1	=	0x0093
                           000092   291 _P1M0	=	0x0092
                           000091   292 _P1M1	=	0x0091
                           0000B2   293 _P3M0	=	0x00b2
                           0000B1   294 _P3M1	=	0x00b1
                           000096   295 _P2M0	=	0x0096
                           000095   296 _P2M1	=	0x0095
                           0000B4   297 _P4M0	=	0x00b4
                           0000B3   298 _P4M1	=	0x00b3
                           00008E   299 _AUXR	=	0x008e
                           0000BC   300 _ADC_CONTR	=	0x00bc
                           0000BD   301 _ADC_RES	=	0x00bd
                           0000BE   302 _ADC_LOW2	=	0x00be
                           00009D   303 _P1ASF	=	0x009d
                           0000B7   304 _IPH	=	0x00b7
                           0000BB   305 _P4SW	=	0x00bb
                           0000C0   306 _P4	=	0x00c0
                           0000D8   307 _CCON	=	0x00d8
                           0000D9   308 _CMOD	=	0x00d9
                           0000E9   309 _CL	=	0x00e9
                           0000F9   310 _CH	=	0x00f9
                           0000DA   311 _CCAPM0	=	0x00da
                           0000EA   312 _CCAP0L	=	0x00ea
                           0000FA   313 _CCAP0H	=	0x00fa
                           0000DB   314 _CCAPM1	=	0x00db
                           0000EB   315 _CCAP1L	=	0x00eb
                           0000FB   316 _CCAP1H	=	0x00fb
                           0000F2   317 _PCAPWM0	=	0x00f2
                           0000F3   318 _PCAPWM1	=	0x00f3
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           000080   324 _P0_0	=	0x0080
                           000081   325 _P0_1	=	0x0081
                           000082   326 _P0_2	=	0x0082
                           000083   327 _P0_3	=	0x0083
                           000084   328 _P0_4	=	0x0084
                           000085   329 _P0_5	=	0x0085
                           000086   330 _P0_6	=	0x0086
                           000087   331 _P0_7	=	0x0087
                           000088   332 _IT0	=	0x0088
                           000089   333 _IE0	=	0x0089
                           00008A   334 _IT1	=	0x008a
                           00008B   335 _IE1	=	0x008b
                           00008C   336 _TR0	=	0x008c
                           00008D   337 _TF0	=	0x008d
                           00008E   338 _TR1	=	0x008e
                           00008F   339 _TF1	=	0x008f
                           000090   340 _P1_0	=	0x0090
                           000091   341 _P1_1	=	0x0091
                           000092   342 _P1_2	=	0x0092
                           000093   343 _P1_3	=	0x0093
                           000094   344 _P1_4	=	0x0094
                           000095   345 _P1_5	=	0x0095
                           000096   346 _P1_6	=	0x0096
                           000097   347 _P1_7	=	0x0097
                           000090   348 _T2	=	0x0090
                           000091   349 _T2EX	=	0x0091
                           000098   350 _RI	=	0x0098
                           000099   351 _TI	=	0x0099
                           00009A   352 _RB8	=	0x009a
                           00009B   353 _TB8	=	0x009b
                           00009C   354 _REN	=	0x009c
                           00009D   355 _SM2	=	0x009d
                           00009E   356 _SM1	=	0x009e
                           00009F   357 _SM0	=	0x009f
                           0000A0   358 _P2_0	=	0x00a0
                           0000A1   359 _P2_1	=	0x00a1
                           0000A2   360 _P2_2	=	0x00a2
                           0000A3   361 _P2_3	=	0x00a3
                           0000A4   362 _P2_4	=	0x00a4
                           0000A5   363 _P2_5	=	0x00a5
                           0000A6   364 _P2_6	=	0x00a6
                           0000A7   365 _P2_7	=	0x00a7
                           0000A8   366 _EX0	=	0x00a8
                           0000A9   367 _ET0	=	0x00a9
                           0000AA   368 _EX1	=	0x00aa
                           0000AB   369 _ET1	=	0x00ab
                           0000AC   370 _ES	=	0x00ac
                           0000AD   371 _ET2	=	0x00ad
                           0000AF   372 _EA	=	0x00af
                           0000B0   373 _P3_0	=	0x00b0
                           0000B1   374 _P3_1	=	0x00b1
                           0000B2   375 _P3_2	=	0x00b2
                           0000B3   376 _P3_3	=	0x00b3
                           0000B4   377 _P3_4	=	0x00b4
                           0000B5   378 _P3_5	=	0x00b5
                           0000B6   379 _P3_6	=	0x00b6
                           0000B7   380 _P3_7	=	0x00b7
                           0000B0   381 _RXD	=	0x00b0
                           0000B1   382 _TXD	=	0x00b1
                           0000B2   383 _INT0	=	0x00b2
                           0000B3   384 _INT1	=	0x00b3
                           0000B4   385 _T0	=	0x00b4
                           0000B5   386 _T1	=	0x00b5
                           0000B6   387 _WR	=	0x00b6
                           0000B7   388 _RD	=	0x00b7
                           0000B8   389 _PX0	=	0x00b8
                           0000B9   390 _PT0	=	0x00b9
                           0000BA   391 _PX1	=	0x00ba
                           0000BB   392 _PT1	=	0x00bb
                           0000BC   393 _PS	=	0x00bc
                           0000BD   394 _PT2	=	0x00bd
                           0000C8   395 _T2CON_0	=	0x00c8
                           0000C9   396 _T2CON_1	=	0x00c9
                           0000CA   397 _T2CON_2	=	0x00ca
                           0000CB   398 _T2CON_3	=	0x00cb
                           0000CC   399 _T2CON_4	=	0x00cc
                           0000CD   400 _T2CON_5	=	0x00cd
                           0000CE   401 _T2CON_6	=	0x00ce
                           0000CF   402 _T2CON_7	=	0x00cf
                           0000C8   403 _CP_RL2	=	0x00c8
                           0000C9   404 _C_T2	=	0x00c9
                           0000CA   405 _TR2	=	0x00ca
                           0000CB   406 _EXEN2	=	0x00cb
                           0000CC   407 _TCLK	=	0x00cc
                           0000CD   408 _RCLK	=	0x00cd
                           0000CE   409 _EXF2	=	0x00ce
                           0000CF   410 _TF2	=	0x00cf
                           0000D0   411 _P	=	0x00d0
                           0000D1   412 _FL	=	0x00d1
                           0000D2   413 _OV	=	0x00d2
                           0000D3   414 _RS0	=	0x00d3
                           0000D4   415 _RS1	=	0x00d4
                           0000D5   416 _F0	=	0x00d5
                           0000D6   417 _AC	=	0x00d6
                           0000D7   418 _CY	=	0x00d7
                           0000AD   419 _EADC	=	0x00ad
                           0000C0   420 _P4_0	=	0x00c0
                           0000C1   421 _P4_1	=	0x00c1
                           0000C2   422 _P4_2	=	0x00c2
                           0000C3   423 _P4_3	=	0x00c3
                           0000C4   424 _P4_4	=	0x00c4
                           0000C5   425 _P4_5	=	0x00c5
                           0000C6   426 _P4_6	=	0x00c6
                           0000C7   427 _P4_7	=	0x00c7
                           0000D8   428 _CCF0	=	0x00d8
                           0000D9   429 _CCF1	=	0x00d9
                           0000DE   430 _CR	=	0x00de
                           0000DF   431 _CF	=	0x00df
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable register banks
                                    434 ;--------------------------------------------------------
                                    435 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        436 	.ds 8
                                    437 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        438 	.ds 8
                                    439 ;--------------------------------------------------------
                                    440 ; overlayable bit register bank
                                    441 ;--------------------------------------------------------
                                    442 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        443 bits:
      000021                        444 	.ds 1
                           008000   445 	b0 = bits[0]
                           008100   446 	b1 = bits[1]
                           008200   447 	b2 = bits[2]
                           008300   448 	b3 = bits[3]
                           008400   449 	b4 = bits[4]
                           008500   450 	b5 = bits[5]
                           008600   451 	b6 = bits[6]
                           008700   452 	b7 = bits[7]
                                    453 ;--------------------------------------------------------
                                    454 ; internal ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area DSEG    (DATA)
      000022                        457 _velocityBit::
      000022                        458 	.ds 1
      000023                        459 _velTime::
      000023                        460 	.ds 2
      000025                        461 _digit1::
      000025                        462 	.ds 1
      000026                        463 _digit2::
      000026                        464 	.ds 1
      000027                        465 _digit3::
      000027                        466 	.ds 1
      000028                        467 _digit4::
      000028                        468 	.ds 1
      000029                        469 _digit1_1::
      000029                        470 	.ds 1
      00002A                        471 _digit1_2::
      00002A                        472 	.ds 1
      00002B                        473 _digit1_3::
      00002B                        474 	.ds 1
      00002C                        475 _digit1_4::
      00002C                        476 	.ds 1
      00002D                        477 _digit1_5::
      00002D                        478 	.ds 1
      00002E                        479 _digit2_1::
      00002E                        480 	.ds 1
      00002F                        481 _digit2_2::
      00002F                        482 	.ds 1
      000030                        483 _digit2_3::
      000030                        484 	.ds 1
      000031                        485 _digit2_4::
      000031                        486 	.ds 1
      000032                        487 _digit2_5::
      000032                        488 	.ds 1
      000033                        489 _digit2_6::
      000033                        490 	.ds 1
      000034                        491 _digit3_1::
      000034                        492 	.ds 1
      000035                        493 _digit3_2::
      000035                        494 	.ds 1
      000036                        495 _digit3_3::
      000036                        496 	.ds 1
      000037                        497 _digit3_4::
      000037                        498 	.ds 1
      000038                        499 _rndNum::
      000038                        500 	.ds 2
      00003A                        501 _w::
      00003A                        502 	.ds 1
      00003B                        503 _value::
      00003B                        504 	.ds 2
      00003D                        505 _cnt::
      00003D                        506 	.ds 2
      00003F                        507 _runtime::
      00003F                        508 	.ds 4
      000043                        509 _currentTime::
      000043                        510 	.ds 4
      000047                        511 _i::
      000047                        512 	.ds 2
      000049                        513 _enginebit::
      000049                        514 	.ds 1
      00004A                        515 _stormBit::
      00004A                        516 	.ds 1
      00004B                        517 _velocity::
      00004B                        518 	.ds 4
      00004F                        519 _in_thrust::
      00004F                        520 	.ds 4
      000053                        521 _thrust::
      000053                        522 	.ds 4
      000057                        523 _ship_thrust::
      000057                        524 	.ds 4
      00005B                        525 _height::
      00005B                        526 	.ds 4
      00005F                        527 _gravity::
      00005F                        528 	.ds 4
      000063                        529 _fuel::
      000063                        530 	.ds 4
      000067                        531 _delta_v::
      000067                        532 	.ds 4
      00006B                        533 _delta_d::
      00006B                        534 	.ds 4
      00006F                        535 _delta_t::
      00006F                        536 	.ds 4
      000073                        537 _a::
      000073                        538 	.ds 4
      000077                        539 _delta_h::
      000077                        540 	.ds 4
      00007B                        541 _thrust_time::
      00007B                        542 	.ds 2
                                    543 ;--------------------------------------------------------
                                    544 ; overlayable items in internal ram 
                                    545 ;--------------------------------------------------------
                                    546 	.area	OSEG    (OVR,DATA)
                                    547 	.area	OSEG    (OVR,DATA)
                                    548 	.area	OSEG    (OVR,DATA)
                                    549 ;--------------------------------------------------------
                                    550 ; Stack segment in internal ram 
                                    551 ;--------------------------------------------------------
                                    552 	.area	SSEG
      00007D                        553 __start__stack:
      00007D                        554 	.ds	1
                                    555 
                                    556 ;--------------------------------------------------------
                                    557 ; indirectly addressable internal ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area ISEG    (DATA)
                                    560 ;--------------------------------------------------------
                                    561 ; absolute internal ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area IABS    (ABS,DATA)
                                    564 	.area IABS    (ABS,DATA)
                                    565 ;--------------------------------------------------------
                                    566 ; bit data
                                    567 ;--------------------------------------------------------
                                    568 	.area BSEG    (BIT)
      000000                        569 _leakBit::
      000000                        570 	.ds 1
      000001                        571 _bit1::
      000001                        572 	.ds 1
      000002                        573 _bit2::
      000002                        574 	.ds 1
      000003                        575 _bit3::
      000003                        576 	.ds 1
                                    577 ;--------------------------------------------------------
                                    578 ; paged external ram data
                                    579 ;--------------------------------------------------------
                                    580 	.area PSEG    (PAG,XDATA)
                                    581 ;--------------------------------------------------------
                                    582 ; external ram data
                                    583 ;--------------------------------------------------------
                                    584 	.area XSEG    (XDATA)
                                    585 ;--------------------------------------------------------
                                    586 ; absolute external ram data
                                    587 ;--------------------------------------------------------
                                    588 	.area XABS    (ABS,XDATA)
                                    589 ;--------------------------------------------------------
                                    590 ; external initialized ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area XISEG   (XDATA)
                                    593 	.area HOME    (CODE)
                                    594 	.area GSINIT0 (CODE)
                                    595 	.area GSINIT1 (CODE)
                                    596 	.area GSINIT2 (CODE)
                                    597 	.area GSINIT3 (CODE)
                                    598 	.area GSINIT4 (CODE)
                                    599 	.area GSINIT5 (CODE)
                                    600 	.area GSINIT  (CODE)
                                    601 	.area GSFINAL (CODE)
                                    602 	.area CSEG    (CODE)
                                    603 ;--------------------------------------------------------
                                    604 ; interrupt vector 
                                    605 ;--------------------------------------------------------
                                    606 	.area HOME    (CODE)
      000000                        607 __interrupt_vect:
      000000 02 00 41         [24]  608 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  609 	reti
      000004                        610 	.ds	7
      00000B 02 08 0A         [24]  611 	ljmp	_timer0Interrupt
      00000E                        612 	.ds	5
      000013 32               [24]  613 	reti
      000014                        614 	.ds	7
      00001B 02 0A B6         [24]  615 	ljmp	_timer1interrupt
      00001E                        616 	.ds	5
      000023 32               [24]  617 	reti
      000024                        618 	.ds	7
      00002B 02 09 B7         [24]  619 	ljmp	_adc_isr
      00002E                        620 	.ds	5
      000033 32               [24]  621 	reti
      000034                        622 	.ds	7
      00003B 02 10 EB         [24]  623 	ljmp	_PCA_isr
                                    624 ;--------------------------------------------------------
                                    625 ; global & static initialisations
                                    626 ;--------------------------------------------------------
                                    627 	.area HOME    (CODE)
                                    628 	.area GSINIT  (CODE)
                                    629 	.area GSFINAL (CODE)
                                    630 	.area GSINIT  (CODE)
                                    631 	.globl __sdcc_gsinit_startup
                                    632 	.globl __sdcc_program_startup
                                    633 	.globl __start__stack
                                    634 	.globl __mcs51_genXINIT
                                    635 	.globl __mcs51_genXRAMCLEAR
                                    636 	.globl __mcs51_genRAMCLEAR
                                    637 ;	main.c:125: unsigned char velocityBit = 1;
      00009A 75 22 01         [24]  638 	mov	_velocityBit,#0x01
                                    639 ;	main.c:127: unsigned int velTime = 0;
      00009D E4               [12]  640 	clr	a
      00009E F5 23            [12]  641 	mov	_velTime,a
      0000A0 F5 24            [12]  642 	mov	(_velTime + 1),a
                                    643 ;	main.c:155: unsigned int rndNum = 100;
      0000A2 75 38 64         [24]  644 	mov	_rndNum,#0x64
                                    645 ;	1-genFromRTrack replaced	mov	(_rndNum + 1),#0x00
      0000A5 F5 39            [12]  646 	mov	(_rndNum + 1),a
                                    647 ;	main.c:157: unsigned char w = 1;
      0000A7 75 3A 01         [24]  648 	mov	_w,#0x01
                                    649 ;	main.c:161: unsigned int cnt = 0;
      0000AA F5 3D            [12]  650 	mov	_cnt,a
      0000AC F5 3E            [12]  651 	mov	(_cnt + 1),a
                                    652 ;	main.c:164: unsigned long runtime = 0;
      0000AE F5 3F            [12]  653 	mov	_runtime,a
      0000B0 F5 40            [12]  654 	mov	(_runtime + 1),a
      0000B2 F5 41            [12]  655 	mov	(_runtime + 2),a
      0000B4 F5 42            [12]  656 	mov	(_runtime + 3),a
                                    657 ;	main.c:171: unsigned char enginebit = 0;
                                    658 ;	1-genFromRTrack replaced	mov	_enginebit,#0x00
      0000B6 F5 49            [12]  659 	mov	_enginebit,a
                                    660 ;	main.c:172: unsigned char stormBit = 0;
                                    661 ;	1-genFromRTrack replaced	mov	_stormBit,#0x00
      0000B8 F5 4A            [12]  662 	mov	_stormBit,a
                                    663 ;	main.c:178: float velocity = 0.0;
      0000BA F5 4B            [12]  664 	mov	_velocity,a
      0000BC F5 4C            [12]  665 	mov	(_velocity + 1),a
      0000BE F5 4D            [12]  666 	mov	(_velocity + 2),a
      0000C0 F5 4E            [12]  667 	mov	(_velocity + 3),a
                                    668 ;	main.c:179: float in_thrust = 100000.0;
                                    669 ;	1-genFromRTrack replaced	mov	_in_thrust,#0x00
      0000C2 F5 4F            [12]  670 	mov	_in_thrust,a
      0000C4 75 50 50         [24]  671 	mov	(_in_thrust + 1),#0x50
      0000C7 75 51 C3         [24]  672 	mov	(_in_thrust + 2),#0xc3
      0000CA 75 52 47         [24]  673 	mov	(_in_thrust + 3),#0x47
                                    674 ;	main.c:180: float thrust = 0.0;
      0000CD F5 53            [12]  675 	mov	_thrust,a
      0000CF F5 54            [12]  676 	mov	(_thrust + 1),a
      0000D1 F5 55            [12]  677 	mov	(_thrust + 2),a
      0000D3 F5 56            [12]  678 	mov	(_thrust + 3),a
                                    679 ;	main.c:181: float ship_thrust = 100000.0;
                                    680 ;	1-genFromRTrack replaced	mov	_ship_thrust,#0x00
      0000D5 F5 57            [12]  681 	mov	_ship_thrust,a
      0000D7 75 58 50         [24]  682 	mov	(_ship_thrust + 1),#0x50
      0000DA 75 59 C3         [24]  683 	mov	(_ship_thrust + 2),#0xc3
      0000DD 75 5A 47         [24]  684 	mov	(_ship_thrust + 3),#0x47
                                    685 ;	main.c:183: float height = 1000.0;
      0000E0 F5 5B            [12]  686 	mov	_height,a
      0000E2 F5 5C            [12]  687 	mov	(_height + 1),a
      0000E4 75 5D 7A         [24]  688 	mov	(_height + 2),#0x7a
      0000E7 75 5E 44         [24]  689 	mov	(_height + 3),#0x44
                                    690 ;	main.c:184: float gravity = 3.72;
      0000EA 75 5F 7B         [24]  691 	mov	_gravity,#0x7b
      0000ED 75 60 14         [24]  692 	mov	(_gravity + 1),#0x14
      0000F0 75 61 6E         [24]  693 	mov	(_gravity + 2),#0x6e
      0000F3 75 62 40         [24]  694 	mov	(_gravity + 3),#0x40
                                    695 ;	main.c:185: float fuel = 8.2;
      0000F6 75 63 33         [24]  696 	mov	_fuel,#0x33
      0000F9 75 64 33         [24]  697 	mov	(_fuel + 1),#0x33
      0000FC 75 65 03         [24]  698 	mov	(_fuel + 2),#0x03
      0000FF 75 66 41         [24]  699 	mov	(_fuel + 3),#0x41
                                    700 ;	main.c:186: float delta_v = 0.0;
      000102 F5 67            [12]  701 	mov	_delta_v,a
      000104 F5 68            [12]  702 	mov	(_delta_v + 1),a
      000106 F5 69            [12]  703 	mov	(_delta_v + 2),a
      000108 F5 6A            [12]  704 	mov	(_delta_v + 3),a
                                    705 ;	main.c:187: float delta_d = 0.0;
      00010A F5 6B            [12]  706 	mov	_delta_d,a
      00010C F5 6C            [12]  707 	mov	(_delta_d + 1),a
      00010E F5 6D            [12]  708 	mov	(_delta_d + 2),a
      000110 F5 6E            [12]  709 	mov	(_delta_d + 3),a
                                    710 ;	main.c:188: float delta_t = 1.0/20.0;
      000112 75 6F CD         [24]  711 	mov	_delta_t,#0xcd
      000115 75 70 CC         [24]  712 	mov	(_delta_t + 1),#0xcc
      000118 75 71 4C         [24]  713 	mov	(_delta_t + 2),#0x4c
      00011B 75 72 3D         [24]  714 	mov	(_delta_t + 3),#0x3d
                                    715 ;	main.c:193: unsigned int thrust_time = 0;
      00011E F5 7B            [12]  716 	mov	_thrust_time,a
      000120 F5 7C            [12]  717 	mov	(_thrust_time + 1),a
                                    718 ;	main.c:126: __bit leakBit = 0;
                                    719 ;	assignBit
      000122 C2 00            [12]  720 	clr	_leakBit
                                    721 ;	main.c:173: __bit bit1 = 0;
                                    722 ;	assignBit
      000124 C2 01            [12]  723 	clr	_bit1
                                    724 ;	main.c:174: __bit bit2 = 1;
                                    725 ;	assignBit
      000126 D2 02            [12]  726 	setb	_bit2
                                    727 ;	main.c:175: __bit bit3 = 1;
                                    728 ;	assignBit
      000128 D2 03            [12]  729 	setb	_bit3
                                    730 	.area GSFINAL (CODE)
      000135 02 00 3E         [24]  731 	ljmp	__sdcc_program_startup
                                    732 ;--------------------------------------------------------
                                    733 ; Home
                                    734 ;--------------------------------------------------------
                                    735 	.area HOME    (CODE)
                                    736 	.area HOME    (CODE)
      00003E                        737 __sdcc_program_startup:
      00003E 02 03 8E         [24]  738 	ljmp	_main
                                    739 ;	return from main will return to caller
                                    740 ;--------------------------------------------------------
                                    741 ; code
                                    742 ;--------------------------------------------------------
                                    743 	.area CSEG    (CODE)
                                    744 ;------------------------------------------------------------
                                    745 ;Allocation info for local variables in function 'Delay1ms'
                                    746 ;------------------------------------------------------------
                                    747 ;i                         Allocated to registers r7 
                                    748 ;j                         Allocated to registers r6 
                                    749 ;------------------------------------------------------------
                                    750 ;	main.c:196: void Delay1ms()		//@11.0592MHz
                                    751 ;	-----------------------------------------
                                    752 ;	 function Delay1ms
                                    753 ;	-----------------------------------------
      000138                        754 _Delay1ms:
                           000007   755 	ar7 = 0x07
                           000006   756 	ar6 = 0x06
                           000005   757 	ar5 = 0x05
                           000004   758 	ar4 = 0x04
                           000003   759 	ar3 = 0x03
                           000002   760 	ar2 = 0x02
                           000001   761 	ar1 = 0x01
                           000000   762 	ar0 = 0x00
                                    763 ;	main.c:199: i = 11;
      000138 7F 0B            [12]  764 	mov	r7,#0x0b
                                    765 ;	main.c:200: j = 190;
      00013A 7E BE            [12]  766 	mov	r6,#0xbe
                                    767 ;	main.c:203: while (--j);
      00013C                        768 00101$:
      00013C EE               [12]  769 	mov	a,r6
      00013D 14               [12]  770 	dec	a
      00013E FD               [12]  771 	mov	r5,a
      00013F FE               [12]  772 	mov	r6,a
      000140 70 FA            [24]  773 	jnz	00101$
                                    774 ;	main.c:204: } while (--i);
      000142 EF               [12]  775 	mov	a,r7
      000143 14               [12]  776 	dec	a
      000144 FD               [12]  777 	mov	r5,a
      000145 FF               [12]  778 	mov	r7,a
      000146 70 F4            [24]  779 	jnz	00101$
                                    780 ;	main.c:205: }
      000148 22               [24]  781 	ret
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'DelaySmalltest'
                                    784 ;------------------------------------------------------------
                                    785 ;i                         Allocated to registers r7 
                                    786 ;j                         Allocated to registers r6 
                                    787 ;------------------------------------------------------------
                                    788 ;	main.c:208: void DelaySmalltest()		//@11.0592MHz
                                    789 ;	-----------------------------------------
                                    790 ;	 function DelaySmalltest
                                    791 ;	-----------------------------------------
      000149                        792 _DelaySmalltest:
                                    793 ;	main.c:211: i = 2;
      000149 7F 02            [12]  794 	mov	r7,#0x02
                                    795 ;	main.c:212: j = 4;
      00014B 7E 04            [12]  796 	mov	r6,#0x04
                                    797 ;	main.c:215: while (--j);
      00014D                        798 00101$:
      00014D EE               [12]  799 	mov	a,r6
      00014E 14               [12]  800 	dec	a
      00014F FD               [12]  801 	mov	r5,a
      000150 FE               [12]  802 	mov	r6,a
      000151 70 FA            [24]  803 	jnz	00101$
                                    804 ;	main.c:216: } while (--i);
      000153 EF               [12]  805 	mov	a,r7
      000154 14               [12]  806 	dec	a
      000155 FD               [12]  807 	mov	r5,a
      000156 FF               [12]  808 	mov	r7,a
      000157 70 F4            [24]  809 	jnz	00101$
                                    810 ;	main.c:217: }
      000159 22               [24]  811 	ret
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'delay'
                                    814 ;------------------------------------------------------------
                                    815 ;time                      Allocated to registers r6 r7 
                                    816 ;aa                        Allocated to registers r4 r5 
                                    817 ;------------------------------------------------------------
                                    818 ;	main.c:220: void delay(unsigned int time)
                                    819 ;	-----------------------------------------
                                    820 ;	 function delay
                                    821 ;	-----------------------------------------
      00015A                        822 _delay:
      00015A AE 82            [24]  823 	mov	r6,dpl
      00015C AF 83            [24]  824 	mov	r7,dph
                                    825 ;	main.c:223: for(aa=0;aa<time+1;aa++)
      00015E 0E               [12]  826 	inc	r6
      00015F BE 00 01         [24]  827 	cjne	r6,#0x00,00116$
      000162 0F               [12]  828 	inc	r7
      000163                        829 00116$:
      000163 7C 00            [12]  830 	mov	r4,#0x00
      000165 7D 00            [12]  831 	mov	r5,#0x00
      000167                        832 00103$:
      000167 C3               [12]  833 	clr	c
      000168 EC               [12]  834 	mov	a,r4
      000169 9E               [12]  835 	subb	a,r6
      00016A ED               [12]  836 	mov	a,r5
      00016B 9F               [12]  837 	subb	a,r7
      00016C 50 1A            [24]  838 	jnc	00105$
                                    839 ;	main.c:225: Delay1ms();
      00016E C0 07            [24]  840 	push	ar7
      000170 C0 06            [24]  841 	push	ar6
      000172 C0 05            [24]  842 	push	ar5
      000174 C0 04            [24]  843 	push	ar4
      000176 12 01 38         [24]  844 	lcall	_Delay1ms
      000179 D0 04            [24]  845 	pop	ar4
      00017B D0 05            [24]  846 	pop	ar5
      00017D D0 06            [24]  847 	pop	ar6
      00017F D0 07            [24]  848 	pop	ar7
                                    849 ;	main.c:223: for(aa=0;aa<time+1;aa++)
      000181 0C               [12]  850 	inc	r4
      000182 BC 00 E2         [24]  851 	cjne	r4,#0x00,00103$
      000185 0D               [12]  852 	inc	r5
      000186 80 DF            [24]  853 	sjmp	00103$
      000188                        854 00105$:
                                    855 ;	main.c:227: }
      000188 22               [24]  856 	ret
                                    857 ;------------------------------------------------------------
                                    858 ;Allocation info for local variables in function 'display'
                                    859 ;------------------------------------------------------------
                                    860 ;num                       Allocated to registers r6 r7 
                                    861 ;------------------------------------------------------------
                                    862 ;	main.c:229: void display(unsigned int num)
                                    863 ;	-----------------------------------------
                                    864 ;	 function display
                                    865 ;	-----------------------------------------
      000189                        866 _display:
      000189 AE 82            [24]  867 	mov	r6,dpl
      00018B AF 83            [24]  868 	mov	r7,dph
                                    869 ;	main.c:231: P0 = nums[num];
      00018D EE               [12]  870 	mov	a,r6
      00018E 24 77            [12]  871 	add	a,#_nums
      000190 F5 82            [12]  872 	mov	dpl,a
      000192 EF               [12]  873 	mov	a,r7
      000193 34 17            [12]  874 	addc	a,#(_nums >> 8)
      000195 F5 83            [12]  875 	mov	dph,a
      000197 E4               [12]  876 	clr	a
      000198 93               [24]  877 	movc	a,@a+dptr
      000199 F5 80            [12]  878 	mov	_P0,a
                                    879 ;	main.c:232: }
      00019B 22               [24]  880 	ret
                                    881 ;------------------------------------------------------------
                                    882 ;Allocation info for local variables in function 'write_com'
                                    883 ;------------------------------------------------------------
                                    884 ;com                       Allocated to registers r7 
                                    885 ;------------------------------------------------------------
                                    886 ;	main.c:235: void write_com(unsigned char com)
                                    887 ;	-----------------------------------------
                                    888 ;	 function write_com
                                    889 ;	-----------------------------------------
      00019C                        890 _write_com:
      00019C AF 82            [24]  891 	mov	r7,dpl
                                    892 ;	main.c:237: lcdrs=0;
                                    893 ;	assignBit
      00019E C2 B7            [12]  894 	clr	_P3_7
                                    895 ;	main.c:238: rw=0;
                                    896 ;	assignBit
      0001A0 C2 B6            [12]  897 	clr	_P3_6
                                    898 ;	main.c:239: delay(5);
      0001A2 90 00 05         [24]  899 	mov	dptr,#0x0005
      0001A5 C0 07            [24]  900 	push	ar7
      0001A7 12 01 5A         [24]  901 	lcall	_delay
      0001AA D0 07            [24]  902 	pop	ar7
                                    903 ;	main.c:240: P2=com;
      0001AC 8F A0            [24]  904 	mov	_P2,r7
                                    905 ;	main.c:241: delay(5);
      0001AE 90 00 05         [24]  906 	mov	dptr,#0x0005
      0001B1 12 01 5A         [24]  907 	lcall	_delay
                                    908 ;	main.c:242: lcden=1;
                                    909 ;	assignBit
      0001B4 D2 B5            [12]  910 	setb	_P3_5
                                    911 ;	main.c:243: delay(5);
      0001B6 90 00 05         [24]  912 	mov	dptr,#0x0005
      0001B9 12 01 5A         [24]  913 	lcall	_delay
                                    914 ;	main.c:244: lcden=0;
                                    915 ;	assignBit
      0001BC C2 B5            [12]  916 	clr	_P3_5
                                    917 ;	main.c:245: }
      0001BE 22               [24]  918 	ret
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'write_data'
                                    921 ;------------------------------------------------------------
                                    922 ;data                      Allocated to registers r7 
                                    923 ;------------------------------------------------------------
                                    924 ;	main.c:247: void write_data(unsigned char data)
                                    925 ;	-----------------------------------------
                                    926 ;	 function write_data
                                    927 ;	-----------------------------------------
      0001BF                        928 _write_data:
      0001BF AF 82            [24]  929 	mov	r7,dpl
                                    930 ;	main.c:249: lcdrs=1;
                                    931 ;	assignBit
      0001C1 D2 B7            [12]  932 	setb	_P3_7
                                    933 ;	main.c:250: rw=0;
                                    934 ;	assignBit
      0001C3 C2 B6            [12]  935 	clr	_P3_6
                                    936 ;	main.c:251: delay(5);
      0001C5 90 00 05         [24]  937 	mov	dptr,#0x0005
      0001C8 C0 07            [24]  938 	push	ar7
      0001CA 12 01 5A         [24]  939 	lcall	_delay
      0001CD D0 07            [24]  940 	pop	ar7
                                    941 ;	main.c:252: P2=data;
      0001CF 8F A0            [24]  942 	mov	_P2,r7
                                    943 ;	main.c:253: delay(5);
      0001D1 90 00 05         [24]  944 	mov	dptr,#0x0005
      0001D4 12 01 5A         [24]  945 	lcall	_delay
                                    946 ;	main.c:254: lcden=1;
                                    947 ;	assignBit
      0001D7 D2 B5            [12]  948 	setb	_P3_5
                                    949 ;	main.c:255: delay(5);
      0001D9 90 00 05         [24]  950 	mov	dptr,#0x0005
      0001DC 12 01 5A         [24]  951 	lcall	_delay
                                    952 ;	main.c:256: lcden=0;
                                    953 ;	assignBit
      0001DF C2 B5            [12]  954 	clr	_P3_5
                                    955 ;	main.c:257: }
      0001E1 22               [24]  956 	ret
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'start'
                                    959 ;------------------------------------------------------------
                                    960 ;	main.c:260: void start()
                                    961 ;	-----------------------------------------
                                    962 ;	 function start
                                    963 ;	-----------------------------------------
      0001E2                        964 _start:
                                    965 ;	main.c:263: write_com(0x01);
      0001E2 75 82 01         [24]  966 	mov	dpl,#0x01
      0001E5 12 01 9C         [24]  967 	lcall	_write_com
                                    968 ;	main.c:264: for (i=0;i<529;i++)
      0001E8 E4               [12]  969 	clr	a
      0001E9 F5 47            [12]  970 	mov	_i,a
      0001EB F5 48            [12]  971 	mov	(_i + 1),a
      0001ED                        972 00111$:
                                    973 ;	main.c:266: delay(50);
      0001ED 90 00 32         [24]  974 	mov	dptr,#0x0032
      0001F0 12 01 5A         [24]  975 	lcall	_delay
                                    976 ;	main.c:267: if (i%32 == 0)
      0001F3 E5 47            [12]  977 	mov	a,_i
      0001F5 54 1F            [12]  978 	anl	a,#0x1f
      0001F7 60 02            [24]  979 	jz	00140$
      0001F9 80 08            [24]  980 	sjmp	00104$
      0001FB                        981 00140$:
                                    982 ;	main.c:270: write_com(0x01);
      0001FB 75 82 01         [24]  983 	mov	dpl,#0x01
      0001FE 12 01 9C         [24]  984 	lcall	_write_com
      000201 80 0E            [24]  985 	sjmp	00105$
      000203                        986 00104$:
                                    987 ;	main.c:274: else if (i%16 == 0)
      000203 E5 47            [12]  988 	mov	a,_i
      000205 54 0F            [12]  989 	anl	a,#0x0f
      000207 60 02            [24]  990 	jz	00142$
      000209 80 06            [24]  991 	sjmp	00105$
      00020B                        992 00142$:
                                    993 ;	main.c:276: write_com(0x80+0x40);
      00020B 75 82 C0         [24]  994 	mov	dpl,#0xc0
      00020E 12 01 9C         [24]  995 	lcall	_write_com
      000211                        996 00105$:
                                    997 ;	main.c:279: if (start1[i]=='>')
      000211 E5 47            [12]  998 	mov	a,_i
      000213 24 39            [12]  999 	add	a,#_start1
      000215 F5 82            [12] 1000 	mov	dpl,a
      000217 E5 48            [12] 1001 	mov	a,(_i + 1)
      000219 34 18            [12] 1002 	addc	a,#(_start1 >> 8)
      00021B F5 83            [12] 1003 	mov	dph,a
      00021D E4               [12] 1004 	clr	a
      00021E 93               [24] 1005 	movc	a,@a+dptr
      00021F FF               [12] 1006 	mov	r7,a
      000220 BF 3E 08         [24] 1007 	cjne	r7,#0x3e,00107$
                                   1008 ;	main.c:281: write_com(0x01);
      000223 75 82 01         [24] 1009 	mov	dpl,#0x01
      000226 12 01 9C         [24] 1010 	lcall	_write_com
                                   1011 ;	main.c:282: CR=1;
                                   1012 ;	assignBit
      000229 D2 DE            [12] 1013 	setb	_CR
      00022B                       1014 00107$:
                                   1015 ;	main.c:284: write_data(start1[i]);
      00022B E5 47            [12] 1016 	mov	a,_i
      00022D 24 39            [12] 1017 	add	a,#_start1
      00022F F5 82            [12] 1018 	mov	dpl,a
      000231 E5 48            [12] 1019 	mov	a,(_i + 1)
      000233 34 18            [12] 1020 	addc	a,#(_start1 >> 8)
      000235 F5 83            [12] 1021 	mov	dph,a
      000237 E4               [12] 1022 	clr	a
      000238 93               [24] 1023 	movc	a,@a+dptr
      000239 F5 82            [12] 1024 	mov	dpl,a
      00023B 12 01 BF         [24] 1025 	lcall	_write_data
                                   1026 ;	main.c:290: if (start1[i]==']')
      00023E E5 47            [12] 1027 	mov	a,_i
      000240 24 39            [12] 1028 	add	a,#_start1
      000242 F5 82            [12] 1029 	mov	dpl,a
      000244 E5 48            [12] 1030 	mov	a,(_i + 1)
      000246 34 18            [12] 1031 	addc	a,#(_start1 >> 8)
      000248 F5 83            [12] 1032 	mov	dph,a
      00024A E4               [12] 1033 	clr	a
      00024B 93               [24] 1034 	movc	a,@a+dptr
      00024C FF               [12] 1035 	mov	r7,a
      00024D BF 5D 06         [24] 1036 	cjne	r7,#0x5d,00112$
                                   1037 ;	main.c:292: delay(1000);
      000250 90 03 E8         [24] 1038 	mov	dptr,#0x03e8
      000253 12 01 5A         [24] 1039 	lcall	_delay
      000256                       1040 00112$:
                                   1041 ;	main.c:264: for (i=0;i<529;i++)
      000256 05 47            [12] 1042 	inc	_i
      000258 E4               [12] 1043 	clr	a
      000259 B5 47 02         [24] 1044 	cjne	a,_i,00147$
      00025C 05 48            [12] 1045 	inc	(_i + 1)
      00025E                       1046 00147$:
      00025E C3               [12] 1047 	clr	c
      00025F E5 47            [12] 1048 	mov	a,_i
      000261 94 11            [12] 1049 	subb	a,#0x11
      000263 E5 48            [12] 1050 	mov	a,(_i + 1)
      000265 94 02            [12] 1051 	subb	a,#0x02
      000267 50 03            [24] 1052 	jnc	00148$
      000269 02 01 ED         [24] 1053 	ljmp	00111$
      00026C                       1054 00148$:
                                   1055 ;	main.c:295: delay(2000);
      00026C 90 07 D0         [24] 1056 	mov	dptr,#0x07d0
      00026F 12 01 5A         [24] 1057 	lcall	_delay
                                   1058 ;	main.c:296: write_com(0x01);
      000272 75 82 01         [24] 1059 	mov	dpl,#0x01
      000275 12 01 9C         [24] 1060 	lcall	_write_com
                                   1061 ;	main.c:298: i=0;
      000278 E4               [12] 1062 	clr	a
      000279 F5 47            [12] 1063 	mov	_i,a
      00027B F5 48            [12] 1064 	mov	(_i + 1),a
                                   1065 ;	main.c:299: }
      00027D 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'Timer0Init'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	main.c:302: void Timer0Init(void)		//20ms@11.0592MHz
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function Timer0Init
                                   1073 ;	-----------------------------------------
      00027E                       1074 _Timer0Init:
                                   1075 ;	main.c:304: AUXR = 0x00;		//Timer clock is 12T mode
      00027E 75 8E 00         [24] 1076 	mov	_AUXR,#0x00
                                   1077 ;	main.c:306: TL0 = 0x00;		//Initial timer value
      000281 75 8A 00         [24] 1078 	mov	_TL0,#0x00
                                   1079 ;	main.c:307: TH0 = 0x00;
      000284 75 8C 00         [24] 1080 	mov	_TH0,#0x00
                                   1081 ;	main.c:308: TF0 = 0;		//Clear TF0 flag
                                   1082 ;	assignBit
      000287 C2 8D            [12] 1083 	clr	_TF0
                                   1084 ;	main.c:310: ET0 = 1;
                                   1085 ;	assignBit
      000289 D2 A9            [12] 1086 	setb	_ET0
                                   1087 ;	main.c:311: EA = 1;
                                   1088 ;	assignBit
      00028B D2 AF            [12] 1089 	setb	_EA
                                   1090 ;	main.c:312: }
      00028D 22               [24] 1091 	ret
                                   1092 ;------------------------------------------------------------
                                   1093 ;Allocation info for local variables in function 'Timer1Init'
                                   1094 ;------------------------------------------------------------
                                   1095 ;	main.c:314: void Timer1Init(void)		//50ms@11.0592MHz
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function Timer1Init
                                   1098 ;	-----------------------------------------
      00028E                       1099 _Timer1Init:
                                   1100 ;	main.c:317: TMOD = 0b00010001;		//Set timer work mode
      00028E 75 89 11         [24] 1101 	mov	_TMOD,#0x11
                                   1102 ;	main.c:318: TL1 = 0x00;		//Initial timer value
      000291 75 8B 00         [24] 1103 	mov	_TL1,#0x00
                                   1104 ;	main.c:319: TH1 = 0x4C;		//Initial timer value
      000294 75 8D 4C         [24] 1105 	mov	_TH1,#0x4c
                                   1106 ;	main.c:320: TF1 = 0;		//Clear TF1 flag
                                   1107 ;	assignBit
      000297 C2 8F            [12] 1108 	clr	_TF1
                                   1109 ;	main.c:322: ET1 = 1;
                                   1110 ;	assignBit
      000299 D2 AB            [12] 1111 	setb	_ET1
                                   1112 ;	main.c:323: PT1= 1;
                                   1113 ;	assignBit
      00029B D2 BB            [12] 1114 	setb	_PT1
                                   1115 ;	main.c:324: IPH = 0x08;
      00029D 75 B7 08         [24] 1116 	mov	_IPH,#0x08
                                   1117 ;	main.c:325: }
      0002A0 22               [24] 1118 	ret
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'PcaInit'
                                   1121 ;------------------------------------------------------------
                                   1122 ;	main.c:328: void PcaInit(void)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function PcaInit
                                   1125 ;	-----------------------------------------
      0002A1                       1126 _PcaInit:
                                   1127 ;	main.c:330: CCON = 0;                       //Initial PCA control register
      0002A1 75 D8 00         [24] 1128 	mov	_CCON,#0x00
                                   1129 ;	main.c:334: CL = 0x00;                        //Reset PCA base timer
      0002A4 75 E9 00         [24] 1130 	mov	_CL,#0x00
                                   1131 ;	main.c:335: CH = 0x00;
      0002A7 75 F9 00         [24] 1132 	mov	_CH,#0x00
                                   1133 ;	main.c:336: CMOD = 0x00;                    //Set PCA timer clock source as Fosc/12
      0002AA 75 D9 00         [24] 1134 	mov	_CMOD,#0x00
                                   1135 ;	main.c:339: CCAP0L = value;
      0002AD 75 EA 99         [24] 1136 	mov	_CCAP0L,#0x99
                                   1137 ;	main.c:340: CCAP0H = value >> 8;            //Initial PCA module-0
      0002B0 75 FA 03         [24] 1138 	mov	_CCAP0H,#0x03
                                   1139 ;	main.c:341: value += T100Hz;
      0002B3 75 3B 32         [24] 1140 	mov	_value,#0x32
      0002B6 75 3C 07         [24] 1141 	mov	(_value + 1),#0x07
                                   1142 ;	main.c:342: CCAPM0 = 0x49;                  //PCA module-0 work in 16-bit timer mode and enable PCA interrupt
      0002B9 75 DA 49         [24] 1143 	mov	_CCAPM0,#0x49
                                   1144 ;	main.c:345: EA = 1;
                                   1145 ;	assignBit
      0002BC D2 AF            [12] 1146 	setb	_EA
                                   1147 ;	main.c:347: }
      0002BE 22               [24] 1148 	ret
                                   1149 ;------------------------------------------------------------
                                   1150 ;Allocation info for local variables in function 'InitADC'
                                   1151 ;------------------------------------------------------------
                                   1152 ;	main.c:350: void InitADC( )
                                   1153 ;	-----------------------------------------
                                   1154 ;	 function InitADC
                                   1155 ;	-----------------------------------------
      0002BF                       1156 _InitADC:
                                   1157 ;	main.c:352: P1ASF = 0b00000001; 
      0002BF 75 9D 01         [24] 1158 	mov	_P1ASF,#0x01
                                   1159 ;	main.c:353: ADC_RES = 0; //Clear previous result
      0002C2 75 BD 00         [24] 1160 	mov	_ADC_RES,#0x00
                                   1161 ;	main.c:354: ADC_CONTR = ADC_POWER | ADC_SPEEDLL | ADC_START | 0;
      0002C5 75 BC 88         [24] 1162 	mov	_ADC_CONTR,#0x88
                                   1163 ;	main.c:355: EADC = 1;
                                   1164 ;	assignBit
      0002C8 D2 AD            [12] 1165 	setb	_EADC
                                   1166 ;	main.c:356: delay(2); //ADC power-on delay and Start A/D conversion
      0002CA 90 00 02         [24] 1167 	mov	dptr,#0x0002
                                   1168 ;	main.c:357: }
      0002CD 02 01 5A         [24] 1169 	ljmp	_delay
                                   1170 ;------------------------------------------------------------
                                   1171 ;Allocation info for local variables in function 'printLCD'
                                   1172 ;------------------------------------------------------------
                                   1173 ;ptr_stringPointer_u8      Allocated to registers r5 r6 r7 
                                   1174 ;charNum                   Allocated to registers r3 r4 
                                   1175 ;------------------------------------------------------------
                                   1176 ;	main.c:360: void printLCD(char *ptr_stringPointer_u8)
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function printLCD
                                   1179 ;	-----------------------------------------
      0002D0                       1180 _printLCD:
      0002D0 AD 82            [24] 1181 	mov	r5,dpl
      0002D2 AE 83            [24] 1182 	mov	r6,dph
      0002D4 AF F0            [24] 1183 	mov	r7,b
                                   1184 ;	main.c:363: write_com(0x01);
      0002D6 75 82 01         [24] 1185 	mov	dpl,#0x01
      0002D9 C0 07            [24] 1186 	push	ar7
      0002DB C0 06            [24] 1187 	push	ar6
      0002DD C0 05            [24] 1188 	push	ar5
      0002DF 12 01 9C         [24] 1189 	lcall	_write_com
      0002E2 D0 05            [24] 1190 	pop	ar5
      0002E4 D0 06            [24] 1191 	pop	ar6
      0002E6 D0 07            [24] 1192 	pop	ar7
                                   1193 ;	main.c:364: while((*ptr_stringPointer_u8)!=0)
      0002E8 7B 00            [12] 1194 	mov	r3,#0x00
      0002EA 7C 00            [12] 1195 	mov	r4,#0x00
      0002EC                       1196 00106$:
      0002EC 8D 82            [24] 1197 	mov	dpl,r5
      0002EE 8E 83            [24] 1198 	mov	dph,r6
      0002F0 8F F0            [24] 1199 	mov	b,r7
      0002F2 12 16 67         [24] 1200 	lcall	__gptrget
      0002F5 70 01            [24] 1201 	jnz	00128$
      0002F7 22               [24] 1202 	ret
      0002F8                       1203 00128$:
                                   1204 ;	main.c:366: charNum++;
      0002F8 0B               [12] 1205 	inc	r3
      0002F9 BB 00 01         [24] 1206 	cjne	r3,#0x00,00129$
      0002FC 0C               [12] 1207 	inc	r4
      0002FD                       1208 00129$:
                                   1209 ;	main.c:367: if (charNum % 32 == 0)
      0002FD EB               [12] 1210 	mov	a,r3
      0002FE 54 1F            [12] 1211 	anl	a,#0x1f
      000300 70 1C            [24] 1212 	jnz	00104$
                                   1213 ;	main.c:369: write_com(0x01);
      000302 75 82 01         [24] 1214 	mov	dpl,#0x01
      000305 C0 07            [24] 1215 	push	ar7
      000307 C0 06            [24] 1216 	push	ar6
      000309 C0 05            [24] 1217 	push	ar5
      00030B C0 04            [24] 1218 	push	ar4
      00030D C0 03            [24] 1219 	push	ar3
      00030F 12 01 9C         [24] 1220 	lcall	_write_com
      000312 D0 03            [24] 1221 	pop	ar3
      000314 D0 04            [24] 1222 	pop	ar4
      000316 D0 05            [24] 1223 	pop	ar5
      000318 D0 06            [24] 1224 	pop	ar6
      00031A D0 07            [24] 1225 	pop	ar7
      00031C 80 1F            [24] 1226 	sjmp	00105$
      00031E                       1227 00104$:
                                   1228 ;	main.c:371: else if (charNum % 16 == 0)
      00031E EB               [12] 1229 	mov	a,r3
      00031F 54 0F            [12] 1230 	anl	a,#0x0f
      000321 70 1A            [24] 1231 	jnz	00105$
                                   1232 ;	main.c:373: write_com(0xc0);
      000323 75 82 C0         [24] 1233 	mov	dpl,#0xc0
      000326 C0 07            [24] 1234 	push	ar7
      000328 C0 06            [24] 1235 	push	ar6
      00032A C0 05            [24] 1236 	push	ar5
      00032C C0 04            [24] 1237 	push	ar4
      00032E C0 03            [24] 1238 	push	ar3
      000330 12 01 9C         [24] 1239 	lcall	_write_com
      000333 D0 03            [24] 1240 	pop	ar3
      000335 D0 04            [24] 1241 	pop	ar4
      000337 D0 05            [24] 1242 	pop	ar5
      000339 D0 06            [24] 1243 	pop	ar6
      00033B D0 07            [24] 1244 	pop	ar7
      00033D                       1245 00105$:
                                   1246 ;	main.c:375: write_data(*ptr_stringPointer_u8++); // Loop through the string and display char by char
      00033D 8D 82            [24] 1247 	mov	dpl,r5
      00033F 8E 83            [24] 1248 	mov	dph,r6
      000341 8F F0            [24] 1249 	mov	b,r7
      000343 12 16 67         [24] 1250 	lcall	__gptrget
      000346 FA               [12] 1251 	mov	r2,a
      000347 A3               [24] 1252 	inc	dptr
      000348 AD 82            [24] 1253 	mov	r5,dpl
      00034A AE 83            [24] 1254 	mov	r6,dph
      00034C 8A 82            [24] 1255 	mov	dpl,r2
      00034E C0 07            [24] 1256 	push	ar7
      000350 C0 06            [24] 1257 	push	ar6
      000352 C0 05            [24] 1258 	push	ar5
      000354 C0 04            [24] 1259 	push	ar4
      000356 C0 03            [24] 1260 	push	ar3
      000358 12 01 BF         [24] 1261 	lcall	_write_data
                                   1262 ;	main.c:376: delay(20);
      00035B 90 00 14         [24] 1263 	mov	dptr,#0x0014
      00035E 12 01 5A         [24] 1264 	lcall	_delay
      000361 D0 03            [24] 1265 	pop	ar3
      000363 D0 04            [24] 1266 	pop	ar4
      000365 D0 05            [24] 1267 	pop	ar5
      000367 D0 06            [24] 1268 	pop	ar6
      000369 D0 07            [24] 1269 	pop	ar7
                                   1270 ;	main.c:378: }
      00036B 02 02 EC         [24] 1271 	ljmp	00106$
                                   1272 ;------------------------------------------------------------
                                   1273 ;Allocation info for local variables in function 'init'
                                   1274 ;------------------------------------------------------------
                                   1275 ;	main.c:380: void init()
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function init
                                   1278 ;	-----------------------------------------
      00036E                       1279 _init:
                                   1280 ;	main.c:382: lcden=0; //使能端为低电平
                                   1281 ;	assignBit
      00036E C2 B5            [12] 1282 	clr	_P3_5
                                   1283 ;	main.c:383: write_com(0x38);
      000370 75 82 38         [24] 1284 	mov	dpl,#0x38
      000373 12 01 9C         [24] 1285 	lcall	_write_com
                                   1286 ;	main.c:385: write_com(0x0F);
      000376 75 82 0F         [24] 1287 	mov	dpl,#0x0f
      000379 12 01 9C         [24] 1288 	lcall	_write_com
                                   1289 ;	main.c:390: write_com(0x06);//地址指针自动+1且光标+1，写字符屏幕不会移动
      00037C 75 82 06         [24] 1290 	mov	dpl,#0x06
      00037F 12 01 9C         [24] 1291 	lcall	_write_com
                                   1292 ;	main.c:391: write_com(0X01);
      000382 75 82 01         [24] 1293 	mov	dpl,#0x01
      000385 12 01 9C         [24] 1294 	lcall	_write_com
                                   1295 ;	main.c:392: write_com(0X80); 
      000388 75 82 80         [24] 1296 	mov	dpl,#0x80
                                   1297 ;	main.c:393: }
      00038B 02 01 9C         [24] 1298 	ljmp	_write_com
                                   1299 ;------------------------------------------------------------
                                   1300 ;Allocation info for local variables in function 'main'
                                   1301 ;------------------------------------------------------------
                                   1302 ;	main.c:395: void main()
                                   1303 ;	-----------------------------------------
                                   1304 ;	 function main
                                   1305 ;	-----------------------------------------
      00038E                       1306 _main:
                                   1307 ;	main.c:398: P4SW = 0x70;
      00038E 75 BB 70         [24] 1308 	mov	_P4SW,#0x70
                                   1309 ;	main.c:399: P4_6 = 1;
                                   1310 ;	assignBit
      000391 D2 C6            [12] 1311 	setb	_P4_6
                                   1312 ;	main.c:400: P0 = 0x00;
      000393 75 80 00         [24] 1313 	mov	_P0,#0x00
                                   1314 ;	main.c:401: init(); 
      000396 12 03 6E         [24] 1315 	lcall	_init
                                   1316 ;	main.c:403: printLCD("hello");
      000399 90 1D CE         [24] 1317 	mov	dptr,#___str_0
      00039C 75 F0 80         [24] 1318 	mov	b,#0x80
      00039F 12 02 D0         [24] 1319 	lcall	_printLCD
                                   1320 ;	main.c:404: write_com(0xc0);
      0003A2 75 82 C0         [24] 1321 	mov	dpl,#0xc0
      0003A5 12 01 9C         [24] 1322 	lcall	_write_com
                                   1323 ;	main.c:405: printLCD("byebye");
      0003A8 90 1D D4         [24] 1324 	mov	dptr,#___str_1
      0003AB 75 F0 80         [24] 1325 	mov	b,#0x80
      0003AE 12 02 D0         [24] 1326 	lcall	_printLCD
                                   1327 ;	main.c:406: write_com(0x01);
      0003B1 75 82 01         [24] 1328 	mov	dpl,#0x01
      0003B4 12 01 9C         [24] 1329 	lcall	_write_com
                                   1330 ;	main.c:408: P0M0 = 0xFF;
      0003B7 75 94 FF         [24] 1331 	mov	_P0M0,#0xff
                                   1332 ;	main.c:409: P0M1 = 0x00;
      0003BA 75 93 00         [24] 1333 	mov	_P0M1,#0x00
                                   1334 ;	main.c:410: P2M0 = 0xFF;
      0003BD 75 96 FF         [24] 1335 	mov	_P2M0,#0xff
                                   1336 ;	main.c:411: P2M1 = 0x00;
      0003C0 75 95 00         [24] 1337 	mov	_P2M1,#0x00
                                   1338 ;	main.c:412: P3M0 = 0b11100000;
      0003C3 75 B2 E0         [24] 1339 	mov	_P3M0,#0xe0
                                   1340 ;	main.c:413: P3M1 = 0x00;
      0003C6 75 B1 00         [24] 1341 	mov	_P3M1,#0x00
                                   1342 ;	main.c:414: P4M0 = 0b01000000;
      0003C9 75 B4 40         [24] 1343 	mov	_P4M0,#0x40
                                   1344 ;	main.c:415: P4M1 = 0b00100000;
      0003CC 75 B3 20         [24] 1345 	mov	_P4M1,#0x20
                                   1346 ;	main.c:416: P4_4 = 0;
                                   1347 ;	assignBit
      0003CF C2 C4            [12] 1348 	clr	_P4_4
                                   1349 ;	main.c:417: P4_6=0;
                                   1350 ;	assignBit
      0003D1 C2 C6            [12] 1351 	clr	_P4_6
                                   1352 ;	main.c:420: P0 = 0xff;
      0003D3 75 80 FF         [24] 1353 	mov	_P0,#0xff
                                   1354 ;	main.c:421: while(P4_5==0)
      0003D6                       1355 00101$:
      0003D6 20 C5 06         [24] 1356 	jb	_P4_5,00103$
                                   1357 ;	main.c:423: trigger = 1;
                                   1358 ;	assignBit
      0003D9 D2 C4            [12] 1359 	setb	_P4_4
                                   1360 ;	main.c:424: trigger = 0;
                                   1361 ;	assignBit
      0003DB C2 C4            [12] 1362 	clr	_P4_4
      0003DD 80 F7            [24] 1363 	sjmp	00101$
      0003DF                       1364 00103$:
                                   1365 ;	main.c:427: for (i=0;i<18;i++)
      0003DF E4               [12] 1366 	clr	a
      0003E0 F5 47            [12] 1367 	mov	_i,a
      0003E2 F5 48            [12] 1368 	mov	(_i + 1),a
      0003E4                       1369 00161$:
                                   1370 ;	main.c:429: trigger = 1;
                                   1371 ;	assignBit
      0003E4 D2 C4            [12] 1372 	setb	_P4_4
                                   1373 ;	main.c:430: delay(50);
      0003E6 90 00 32         [24] 1374 	mov	dptr,#0x0032
      0003E9 12 01 5A         [24] 1375 	lcall	_delay
                                   1376 ;	main.c:431: trigger = 0;
                                   1377 ;	assignBit
      0003EC C2 C4            [12] 1378 	clr	_P4_4
                                   1379 ;	main.c:432: delay(50);
      0003EE 90 00 32         [24] 1380 	mov	dptr,#0x0032
      0003F1 12 01 5A         [24] 1381 	lcall	_delay
                                   1382 ;	main.c:427: for (i=0;i<18;i++)
      0003F4 05 47            [12] 1383 	inc	_i
      0003F6 E4               [12] 1384 	clr	a
      0003F7 B5 47 02         [24] 1385 	cjne	a,_i,00290$
      0003FA 05 48            [12] 1386 	inc	(_i + 1)
      0003FC                       1387 00290$:
      0003FC C3               [12] 1388 	clr	c
      0003FD E5 47            [12] 1389 	mov	a,_i
      0003FF 94 12            [12] 1390 	subb	a,#0x12
      000401 E5 48            [12] 1391 	mov	a,(_i + 1)
      000403 94 00            [12] 1392 	subb	a,#0x00
      000405 40 DD            [24] 1393 	jc	00161$
                                   1394 ;	main.c:434: delay(500);
      000407 90 01 F4         [24] 1395 	mov	dptr,#0x01f4
      00040A 12 01 5A         [24] 1396 	lcall	_delay
                                   1397 ;	main.c:435: P0 = 0x00;
      00040D 75 80 00         [24] 1398 	mov	_P0,#0x00
                                   1399 ;	main.c:436: while(P4_5==0)
      000410                       1400 00105$:
      000410 20 C5 06         [24] 1401 	jb	_P4_5,00107$
                                   1402 ;	main.c:438: trigger = 1;
                                   1403 ;	assignBit
      000413 D2 C4            [12] 1404 	setb	_P4_4
                                   1405 ;	main.c:439: trigger = 0;
                                   1406 ;	assignBit
      000415 C2 C4            [12] 1407 	clr	_P4_4
      000417 80 F7            [24] 1408 	sjmp	00105$
      000419                       1409 00107$:
                                   1410 ;	main.c:444: Timer0Init();
      000419 12 02 7E         [24] 1411 	lcall	_Timer0Init
                                   1412 ;	main.c:445: Timer1Init();
      00041C 12 02 8E         [24] 1413 	lcall	_Timer1Init
                                   1414 ;	main.c:449: PcaInit();
      00041F 12 02 A1         [24] 1415 	lcall	_PcaInit
                                   1416 ;	main.c:453: P0M0 = 0xFF;
      000422 75 94 FF         [24] 1417 	mov	_P0M0,#0xff
                                   1418 ;	main.c:454: P0M1 = 0x00;
      000425 75 93 00         [24] 1419 	mov	_P0M1,#0x00
                                   1420 ;	main.c:455: P4M0 = 0b01000000;
      000428 75 B4 40         [24] 1421 	mov	_P4M0,#0x40
                                   1422 ;	main.c:456: P4M1 = 0x00;
      00042B 75 B3 00         [24] 1423 	mov	_P4M1,#0x00
                                   1424 ;	main.c:457: P4_4 = 0;
                                   1425 ;	assignBit
      00042E C2 C4            [12] 1426 	clr	_P4_4
                                   1427 ;	main.c:460: start();
      000430 12 01 E2         [24] 1428 	lcall	_start
                                   1429 ;	main.c:464: TR0 = 1;
                                   1430 ;	assignBit
      000433 D2 8C            [12] 1431 	setb	_TR0
                                   1432 ;	main.c:465: TR1 = 1;
                                   1433 ;	assignBit
      000435 D2 8E            [12] 1434 	setb	_TR1
                                   1435 ;	main.c:467: InitADC();
      000437 12 02 BF         [24] 1436 	lcall	_InitADC
                                   1437 ;	main.c:468: srand((ADC_RES+10)*10);
      00043A AE BD            [24] 1438 	mov	r6,_ADC_RES
      00043C 7F 00            [12] 1439 	mov	r7,#0x00
      00043E 74 0A            [12] 1440 	mov	a,#0x0a
      000440 2E               [12] 1441 	add	a,r6
      000441 F5 14            [12] 1442 	mov	__mulint_PARM_2,a
      000443 E4               [12] 1443 	clr	a
      000444 3F               [12] 1444 	addc	a,r7
      000445 F5 15            [12] 1445 	mov	(__mulint_PARM_2 + 1),a
      000447 90 00 0A         [24] 1446 	mov	dptr,#0x000a
      00044A 12 13 E2         [24] 1447 	lcall	__mulint
      00044D 12 12 9A         [24] 1448 	lcall	_srand
                                   1449 ;	main.c:469: rndNum = 10;
      000450 75 38 0A         [24] 1450 	mov	_rndNum,#0x0a
      000453 75 39 00         [24] 1451 	mov	(_rndNum + 1),#0x00
                                   1452 ;	main.c:470: while (1)
      000456                       1453 00159$:
                                   1454 ;	main.c:475: if ((runtime % 2 == 0)&&(runtime > 20000))
      000456 E5 3F            [12] 1455 	mov	a,_runtime
      000458 20 E0 1A         [24] 1456 	jb	acc.0,00109$
      00045B C3               [12] 1457 	clr	c
      00045C 74 20            [12] 1458 	mov	a,#0x20
      00045E 95 3F            [12] 1459 	subb	a,_runtime
      000460 74 4E            [12] 1460 	mov	a,#0x4e
      000462 95 40            [12] 1461 	subb	a,(_runtime + 1)
      000464 E4               [12] 1462 	clr	a
      000465 95 41            [12] 1463 	subb	a,(_runtime + 2)
      000467 E4               [12] 1464 	clr	a
      000468 95 42            [12] 1465 	subb	a,(_runtime + 3)
      00046A 50 09            [24] 1466 	jnc	00109$
                                   1467 ;	main.c:476: rndNum = rand();
      00046C 12 12 2E         [24] 1468 	lcall	_rand
      00046F 85 82 38         [24] 1469 	mov	_rndNum,dpl
      000472 85 83 39         [24] 1470 	mov	(_rndNum + 1),dph
      000475                       1471 00109$:
                                   1472 ;	main.c:478: runtime++;
      000475 05 3F            [12] 1473 	inc	_runtime
      000477 E4               [12] 1474 	clr	a
      000478 B5 3F 0C         [24] 1475 	cjne	a,_runtime,00295$
      00047B 05 40            [12] 1476 	inc	(_runtime + 1)
      00047D B5 40 07         [24] 1477 	cjne	a,(_runtime + 1),00295$
      000480 05 41            [12] 1478 	inc	(_runtime + 2)
      000482 B5 41 02         [24] 1479 	cjne	a,(_runtime + 2),00295$
      000485 05 42            [12] 1480 	inc	(_runtime + 3)
      000487                       1481 00295$:
                                   1482 ;	main.c:479: if (runtime % 5000 == 0)
      000487 75 14 88         [24] 1483 	mov	__modulong_PARM_2,#0x88
      00048A 75 15 13         [24] 1484 	mov	(__modulong_PARM_2 + 1),#0x13
      00048D E4               [12] 1485 	clr	a
      00048E F5 16            [12] 1486 	mov	(__modulong_PARM_2 + 2),a
      000490 F5 17            [12] 1487 	mov	(__modulong_PARM_2 + 3),a
      000492 85 3F 82         [24] 1488 	mov	dpl,_runtime
      000495 85 40 83         [24] 1489 	mov	dph,(_runtime + 1)
      000498 85 41 F0         [24] 1490 	mov	b,(_runtime + 2)
      00049B E5 42            [12] 1491 	mov	a,(_runtime + 3)
      00049D 12 11 AB         [24] 1492 	lcall	__modulong
      0004A0 AC 82            [24] 1493 	mov	r4,dpl
      0004A2 AD 83            [24] 1494 	mov	r5,dph
      0004A4 AE F0            [24] 1495 	mov	r6,b
      0004A6 FF               [12] 1496 	mov	r7,a
      0004A7 EC               [12] 1497 	mov	a,r4
      0004A8 4D               [12] 1498 	orl	a,r5
      0004A9 4E               [12] 1499 	orl	a,r6
      0004AA 4F               [12] 1500 	orl	a,r7
                                   1501 ;	main.c:480: srand((ADC_RES+10)*10);
      0004AB 70 15            [24] 1502 	jnz	00112$
      0004AD AE BD            [24] 1503 	mov	r6,_ADC_RES
      0004AF FF               [12] 1504 	mov	r7,a
      0004B0 74 0A            [12] 1505 	mov	a,#0x0a
      0004B2 2E               [12] 1506 	add	a,r6
      0004B3 F5 14            [12] 1507 	mov	__mulint_PARM_2,a
      0004B5 E4               [12] 1508 	clr	a
      0004B6 3F               [12] 1509 	addc	a,r7
      0004B7 F5 15            [12] 1510 	mov	(__mulint_PARM_2 + 1),a
      0004B9 90 00 0A         [24] 1511 	mov	dptr,#0x000a
      0004BC 12 13 E2         [24] 1512 	lcall	__mulint
      0004BF 12 12 9A         [24] 1513 	lcall	_srand
      0004C2                       1514 00112$:
                                   1515 ;	main.c:487: if ((runtime == (currentTime + 10000)) && (bit3 == 0))
      0004C2 74 10            [12] 1516 	mov	a,#0x10
      0004C4 25 43            [12] 1517 	add	a,_currentTime
      0004C6 FC               [12] 1518 	mov	r4,a
      0004C7 74 27            [12] 1519 	mov	a,#0x27
      0004C9 35 44            [12] 1520 	addc	a,(_currentTime + 1)
      0004CB FD               [12] 1521 	mov	r5,a
      0004CC E4               [12] 1522 	clr	a
      0004CD 35 45            [12] 1523 	addc	a,(_currentTime + 2)
      0004CF FE               [12] 1524 	mov	r6,a
      0004D0 E4               [12] 1525 	clr	a
      0004D1 35 46            [12] 1526 	addc	a,(_currentTime + 3)
      0004D3 FF               [12] 1527 	mov	r7,a
      0004D4 EC               [12] 1528 	mov	a,r4
      0004D5 B5 3F 2E         [24] 1529 	cjne	a,_runtime,00114$
      0004D8 ED               [12] 1530 	mov	a,r5
      0004D9 B5 40 2A         [24] 1531 	cjne	a,(_runtime + 1),00114$
      0004DC EE               [12] 1532 	mov	a,r6
      0004DD B5 41 26         [24] 1533 	cjne	a,(_runtime + 2),00114$
      0004E0 EF               [12] 1534 	mov	a,r7
      0004E1 B5 42 22         [24] 1535 	cjne	a,(_runtime + 3),00114$
      0004E4 20 03 1F         [24] 1536 	jb	_bit3,00114$
                                   1537 ;	main.c:489: stormBit = 0;
      0004E7 75 4A 00         [24] 1538 	mov	_stormBit,#0x00
                                   1539 ;	main.c:490: TR1 = 0;
                                   1540 ;	assignBit
      0004EA C2 8E            [12] 1541 	clr	_TR1
                                   1542 ;	main.c:491: TR0 = 0;
                                   1543 ;	assignBit
      0004EC C2 8C            [12] 1544 	clr	_TR0
                                   1545 ;	main.c:492: EADC = 0;
                                   1546 ;	assignBit
      0004EE C2 AD            [12] 1547 	clr	_EADC
                                   1548 ;	main.c:493: P0 = 0x00;
      0004F0 75 80 00         [24] 1549 	mov	_P0,#0x00
                                   1550 ;	main.c:494: CR = 1;
                                   1551 ;	assignBit
      0004F3 D2 DE            [12] 1552 	setb	_CR
                                   1553 ;	main.c:495: printLCD(turb3);
      0004F5 90 1B F9         [24] 1554 	mov	dptr,#_turb3
      0004F8 75 F0 80         [24] 1555 	mov	b,#0x80
      0004FB 12 02 D0         [24] 1556 	lcall	_printLCD
                                   1557 ;	main.c:497: TR0 = 1;
                                   1558 ;	assignBit
      0004FE D2 8C            [12] 1559 	setb	_TR0
                                   1560 ;	main.c:498: TR1 = 1;
                                   1561 ;	assignBit
      000500 D2 8E            [12] 1562 	setb	_TR1
                                   1563 ;	main.c:499: EADC = 1;
                                   1564 ;	assignBit
      000502 D2 AD            [12] 1565 	setb	_EADC
                                   1566 ;	main.c:500: bit3 = 1;
                                   1567 ;	assignBit
      000504 D2 03            [12] 1568 	setb	_bit3
      000506                       1569 00114$:
                                   1570 ;	main.c:504: if ((rndNum*20) < 10)
      000506 85 38 14         [24] 1571 	mov	__mulint_PARM_2,_rndNum
      000509 85 39 15         [24] 1572 	mov	(__mulint_PARM_2 + 1),(_rndNum + 1)
      00050C 90 00 14         [24] 1573 	mov	dptr,#0x0014
      00050F 12 13 E2         [24] 1574 	lcall	__mulint
      000512 AE 82            [24] 1575 	mov	r6,dpl
      000514 AF 83            [24] 1576 	mov	r7,dph
      000516 C3               [12] 1577 	clr	c
      000517 EE               [12] 1578 	mov	a,r6
      000518 94 0A            [12] 1579 	subb	a,#0x0a
      00051A EF               [12] 1580 	mov	a,r7
      00051B 94 00            [12] 1581 	subb	a,#0x00
      00051D 50 43            [24] 1582 	jnc	00119$
                                   1583 ;	main.c:506: if (bit1 == 0)
      00051F 20 01 40         [24] 1584 	jb	_bit1,00119$
                                   1585 ;	main.c:508: TR1 = 0;
                                   1586 ;	assignBit
      000522 C2 8E            [12] 1587 	clr	_TR1
                                   1588 ;	main.c:509: TR0 = 0;
                                   1589 ;	assignBit
      000524 C2 8C            [12] 1590 	clr	_TR0
                                   1591 ;	main.c:510: EADC = 0;
                                   1592 ;	assignBit
      000526 C2 AD            [12] 1593 	clr	_EADC
                                   1594 ;	main.c:511: P0 = 0x00;
      000528 75 80 00         [24] 1595 	mov	_P0,#0x00
                                   1596 ;	main.c:512: CR = 1;
                                   1597 ;	assignBit
      00052B D2 DE            [12] 1598 	setb	_CR
                                   1599 ;	main.c:513: write_data(rndNum+0x30);
      00052D AF 38            [24] 1600 	mov	r7,_rndNum
      00052F 74 30            [12] 1601 	mov	a,#0x30
      000531 2F               [12] 1602 	add	a,r7
      000532 F5 82            [12] 1603 	mov	dpl,a
      000534 12 01 BF         [24] 1604 	lcall	_write_data
                                   1605 ;	main.c:514: delay(1000);
      000537 90 03 E8         [24] 1606 	mov	dptr,#0x03e8
      00053A 12 01 5A         [24] 1607 	lcall	_delay
                                   1608 ;	main.c:515: write_com(0x01);
      00053D 75 82 01         [24] 1609 	mov	dpl,#0x01
      000540 12 01 9C         [24] 1610 	lcall	_write_com
                                   1611 ;	main.c:516: printLCD(turb1);
      000543 90 1A E6         [24] 1612 	mov	dptr,#_turb1
      000546 75 F0 80         [24] 1613 	mov	b,#0x80
      000549 12 02 D0         [24] 1614 	lcall	_printLCD
                                   1615 ;	main.c:518: TR0 = 1;
                                   1616 ;	assignBit
      00054C D2 8C            [12] 1617 	setb	_TR0
                                   1618 ;	main.c:519: TR1 = 1;
                                   1619 ;	assignBit
      00054E D2 8E            [12] 1620 	setb	_TR1
                                   1621 ;	main.c:520: EADC = 1; 
                                   1622 ;	assignBit
      000550 D2 AD            [12] 1623 	setb	_EADC
                                   1624 ;	main.c:521: bit1 = 1;
                                   1625 ;	assignBit
      000552 D2 01            [12] 1626 	setb	_bit1
                                   1627 ;	main.c:522: bit2 = 0;
                                   1628 ;	assignBit
      000554 C2 02            [12] 1629 	clr	_bit2
                                   1630 ;	main.c:523: currentTime = runtime;
      000556 85 3F 43         [24] 1631 	mov	_currentTime,_runtime
      000559 85 40 44         [24] 1632 	mov	(_currentTime + 1),(_runtime + 1)
      00055C 85 41 45         [24] 1633 	mov	(_currentTime + 2),(_runtime + 2)
      00055F 85 42 46         [24] 1634 	mov	(_currentTime + 3),(_runtime + 3)
      000562                       1635 00119$:
                                   1636 ;	main.c:526: if ((runtime == (currentTime + 10000)) && (bit2 == 0))
      000562 74 10            [12] 1637 	mov	a,#0x10
      000564 25 43            [12] 1638 	add	a,_currentTime
      000566 FC               [12] 1639 	mov	r4,a
      000567 74 27            [12] 1640 	mov	a,#0x27
      000569 35 44            [12] 1641 	addc	a,(_currentTime + 1)
      00056B FD               [12] 1642 	mov	r5,a
      00056C E4               [12] 1643 	clr	a
      00056D 35 45            [12] 1644 	addc	a,(_currentTime + 2)
      00056F FE               [12] 1645 	mov	r6,a
      000570 E4               [12] 1646 	clr	a
      000571 35 46            [12] 1647 	addc	a,(_currentTime + 3)
      000573 FF               [12] 1648 	mov	r7,a
      000574 EC               [12] 1649 	mov	a,r4
      000575 B5 3F 3C         [24] 1650 	cjne	a,_runtime,00121$
      000578 ED               [12] 1651 	mov	a,r5
      000579 B5 40 38         [24] 1652 	cjne	a,(_runtime + 1),00121$
      00057C EE               [12] 1653 	mov	a,r6
      00057D B5 41 34         [24] 1654 	cjne	a,(_runtime + 2),00121$
      000580 EF               [12] 1655 	mov	a,r7
      000581 B5 42 30         [24] 1656 	cjne	a,(_runtime + 3),00121$
      000584 20 02 2D         [24] 1657 	jb	_bit2,00121$
                                   1658 ;	main.c:529: TR1 = 0;
                                   1659 ;	assignBit
      000587 C2 8E            [12] 1660 	clr	_TR1
                                   1661 ;	main.c:530: TR0 = 0;
                                   1662 ;	assignBit
      000589 C2 8C            [12] 1663 	clr	_TR0
                                   1664 ;	main.c:531: EADC = 0;
                                   1665 ;	assignBit
      00058B C2 AD            [12] 1666 	clr	_EADC
                                   1667 ;	main.c:532: P0 = 0x00;
      00058D 75 80 00         [24] 1668 	mov	_P0,#0x00
                                   1669 ;	main.c:533: CR = 1;
                                   1670 ;	assignBit
      000590 D2 DE            [12] 1671 	setb	_CR
                                   1672 ;	main.c:534: printLCD(turb2);
      000592 90 1B A2         [24] 1673 	mov	dptr,#_turb2
      000595 75 F0 80         [24] 1674 	mov	b,#0x80
      000598 12 02 D0         [24] 1675 	lcall	_printLCD
                                   1676 ;	main.c:536: TR0 = 1;
                                   1677 ;	assignBit
      00059B D2 8C            [12] 1678 	setb	_TR0
                                   1679 ;	main.c:537: TR1 = 1;
                                   1680 ;	assignBit
      00059D D2 8E            [12] 1681 	setb	_TR1
                                   1682 ;	main.c:538: EADC = 1;
                                   1683 ;	assignBit
      00059F D2 AD            [12] 1684 	setb	_EADC
                                   1685 ;	main.c:539: stormBit = 1;
      0005A1 75 4A 01         [24] 1686 	mov	_stormBit,#0x01
                                   1687 ;	main.c:541: bit2 = 1;
                                   1688 ;	assignBit
      0005A4 D2 02            [12] 1689 	setb	_bit2
                                   1690 ;	main.c:542: bit3 = 0;
                                   1691 ;	assignBit
      0005A6 C2 03            [12] 1692 	clr	_bit3
                                   1693 ;	main.c:543: currentTime = runtime;
      0005A8 85 3F 43         [24] 1694 	mov	_currentTime,_runtime
      0005AB 85 40 44         [24] 1695 	mov	(_currentTime + 1),(_runtime + 1)
      0005AE 85 41 45         [24] 1696 	mov	(_currentTime + 2),(_runtime + 2)
      0005B1 85 42 46         [24] 1697 	mov	(_currentTime + 3),(_runtime + 3)
      0005B4                       1698 00121$:
                                   1699 ;	main.c:545: if (thrust > 50000.0)
      0005B4 C0 53            [24] 1700 	push	_thrust
      0005B6 C0 54            [24] 1701 	push	(_thrust + 1)
      0005B8 C0 55            [24] 1702 	push	(_thrust + 2)
      0005BA C0 56            [24] 1703 	push	(_thrust + 3)
      0005BC 90 50 00         [24] 1704 	mov	dptr,#0x5000
      0005BF 75 F0 43         [24] 1705 	mov	b,#0x43
      0005C2 74 47            [12] 1706 	mov	a,#0x47
      0005C4 12 13 B2         [24] 1707 	lcall	___fslt
      0005C7 AF 82            [24] 1708 	mov	r7,dpl
      0005C9 E5 81            [12] 1709 	mov	a,sp
      0005CB 24 FC            [12] 1710 	add	a,#0xfc
      0005CD F5 81            [12] 1711 	mov	sp,a
      0005CF EF               [12] 1712 	mov	a,r7
      0005D0 60 1F            [24] 1713 	jz	00126$
                                   1714 ;	main.c:547: thrust_time++;
      0005D2 05 7B            [12] 1715 	inc	_thrust_time
      0005D4 E4               [12] 1716 	clr	a
      0005D5 B5 7B 02         [24] 1717 	cjne	a,_thrust_time,00306$
      0005D8 05 7C            [12] 1718 	inc	(_thrust_time + 1)
      0005DA                       1719 00306$:
                                   1720 ;	main.c:548: if (thrust_time > 4000)
      0005DA C3               [12] 1721 	clr	c
      0005DB 74 A0            [12] 1722 	mov	a,#0xa0
      0005DD 95 7B            [12] 1723 	subb	a,_thrust_time
      0005DF 74 0F            [12] 1724 	mov	a,#0x0f
      0005E1 95 7C            [12] 1725 	subb	a,(_thrust_time + 1)
      0005E3 50 11            [24] 1726 	jnc	00127$
                                   1727 ;	main.c:550: CR = 1;
                                   1728 ;	assignBit
      0005E5 D2 DE            [12] 1729 	setb	_CR
                                   1730 ;	main.c:551: enginebit = 1;
      0005E7 75 49 01         [24] 1731 	mov	_enginebit,#0x01
                                   1732 ;	main.c:552: thrust_time = 0;
      0005EA E4               [12] 1733 	clr	a
      0005EB F5 7B            [12] 1734 	mov	_thrust_time,a
      0005ED F5 7C            [12] 1735 	mov	(_thrust_time + 1),a
      0005EF 80 05            [24] 1736 	sjmp	00127$
      0005F1                       1737 00126$:
                                   1738 ;	main.c:557: thrust_time = 0;
      0005F1 E4               [12] 1739 	clr	a
      0005F2 F5 7B            [12] 1740 	mov	_thrust_time,a
      0005F4 F5 7C            [12] 1741 	mov	(_thrust_time + 1),a
      0005F6                       1742 00127$:
                                   1743 ;	main.c:560: if (velocity > 50.0 || velocity <-50.0)
      0005F6 C0 4B            [24] 1744 	push	_velocity
      0005F8 C0 4C            [24] 1745 	push	(_velocity + 1)
      0005FA C0 4D            [24] 1746 	push	(_velocity + 2)
      0005FC C0 4E            [24] 1747 	push	(_velocity + 3)
      0005FE 90 00 00         [24] 1748 	mov	dptr,#0x0000
      000601 75 F0 48         [24] 1749 	mov	b,#0x48
      000604 74 42            [12] 1750 	mov	a,#0x42
      000606 12 13 B2         [24] 1751 	lcall	___fslt
      000609 AF 82            [24] 1752 	mov	r7,dpl
      00060B E5 81            [12] 1753 	mov	a,sp
      00060D 24 FC            [12] 1754 	add	a,#0xfc
      00060F F5 81            [12] 1755 	mov	sp,a
      000611 EF               [12] 1756 	mov	a,r7
      000612 70 25            [24] 1757 	jnz	00134$
      000614 C0 E0            [24] 1758 	push	acc
      000616 C0 E0            [24] 1759 	push	acc
      000618 74 48            [12] 1760 	mov	a,#0x48
      00061A C0 E0            [24] 1761 	push	acc
      00061C 74 C2            [12] 1762 	mov	a,#0xc2
      00061E C0 E0            [24] 1763 	push	acc
      000620 85 4B 82         [24] 1764 	mov	dpl,_velocity
      000623 85 4C 83         [24] 1765 	mov	dph,(_velocity + 1)
      000626 85 4D F0         [24] 1766 	mov	b,(_velocity + 2)
      000629 E5 4E            [12] 1767 	mov	a,(_velocity + 3)
      00062B 12 13 B2         [24] 1768 	lcall	___fslt
      00062E AF 82            [24] 1769 	mov	r7,dpl
      000630 E5 81            [12] 1770 	mov	a,sp
      000632 24 FC            [12] 1771 	add	a,#0xfc
      000634 F5 81            [12] 1772 	mov	sp,a
      000636 EF               [12] 1773 	mov	a,r7
      000637 60 5C            [24] 1774 	jz	00135$
      000639                       1775 00134$:
                                   1776 ;	main.c:562: velTime++;
      000639 05 23            [12] 1777 	inc	_velTime
      00063B E4               [12] 1778 	clr	a
      00063C B5 23 02         [24] 1779 	cjne	a,_velTime,00310$
      00063F 05 24            [12] 1780 	inc	(_velTime + 1)
      000641                       1781 00310$:
                                   1782 ;	main.c:564: if (velocityBit == 1)
      000641 74 01            [12] 1783 	mov	a,#0x01
      000643 B5 22 20         [24] 1784 	cjne	a,_velocityBit,00129$
                                   1785 ;	main.c:566: velocityBit = 0;
      000646 75 22 00         [24] 1786 	mov	_velocityBit,#0x00
                                   1787 ;	main.c:567: TR1 = 0;
                                   1788 ;	assignBit
      000649 C2 8E            [12] 1789 	clr	_TR1
                                   1790 ;	main.c:568: TR0 = 0;
                                   1791 ;	assignBit
      00064B C2 8C            [12] 1792 	clr	_TR0
                                   1793 ;	main.c:569: EADC = 0;
                                   1794 ;	assignBit
      00064D C2 AD            [12] 1795 	clr	_EADC
                                   1796 ;	main.c:570: P0 = 0x00;
      00064F 75 80 00         [24] 1797 	mov	_P0,#0x00
                                   1798 ;	main.c:571: CR = 1;
                                   1799 ;	assignBit
      000652 D2 DE            [12] 1800 	setb	_CR
                                   1801 ;	main.c:572: printLCD(vel1);
      000654 90 1C EC         [24] 1802 	mov	dptr,#_vel1
      000657 75 F0 80         [24] 1803 	mov	b,#0x80
      00065A 12 02 D0         [24] 1804 	lcall	_printLCD
                                   1805 ;	main.c:573: TR0 = 1;
                                   1806 ;	assignBit
      00065D D2 8C            [12] 1807 	setb	_TR0
                                   1808 ;	main.c:574: TR1 = 1;
                                   1809 ;	assignBit
      00065F D2 8E            [12] 1810 	setb	_TR1
                                   1811 ;	main.c:575: EADC = 1;
                                   1812 ;	assignBit
      000661 D2 AD            [12] 1813 	setb	_EADC
                                   1814 ;	main.c:576: velocityBit = 0;
      000663 75 22 00         [24] 1815 	mov	_velocityBit,#0x00
      000666                       1816 00129$:
                                   1817 ;	main.c:578: if (velTime > 5000)
      000666 C3               [12] 1818 	clr	c
      000667 74 88            [12] 1819 	mov	a,#0x88
      000669 95 23            [12] 1820 	subb	a,_velTime
      00066B 74 13            [12] 1821 	mov	a,#0x13
      00066D 95 24            [12] 1822 	subb	a,(_velTime + 1)
      00066F 50 24            [24] 1823 	jnc	00135$
                                   1824 ;	main.c:581: if (leakBit == 0)
      000671 20 00 21         [24] 1825 	jb	_leakBit,00135$
                                   1826 ;	main.c:583: TR1 = 0;
                                   1827 ;	assignBit
      000674 C2 8E            [12] 1828 	clr	_TR1
                                   1829 ;	main.c:584: TR0 = 0;
                                   1830 ;	assignBit
      000676 C2 8C            [12] 1831 	clr	_TR0
                                   1832 ;	main.c:585: EADC = 0;
                                   1833 ;	assignBit
      000678 C2 AD            [12] 1834 	clr	_EADC
                                   1835 ;	main.c:586: P0 = 0x00;
      00067A 75 80 00         [24] 1836 	mov	_P0,#0x00
                                   1837 ;	main.c:587: CR = 1;
                                   1838 ;	assignBit
      00067D D2 DE            [12] 1839 	setb	_CR
                                   1840 ;	main.c:588: velTime = 0;
      00067F E4               [12] 1841 	clr	a
      000680 F5 23            [12] 1842 	mov	_velTime,a
      000682 F5 24            [12] 1843 	mov	(_velTime + 1),a
                                   1844 ;	main.c:589: printLCD(leak1);
      000684 90 1C 55         [24] 1845 	mov	dptr,#_leak1
      000687 75 F0 80         [24] 1846 	mov	b,#0x80
      00068A 12 02 D0         [24] 1847 	lcall	_printLCD
                                   1848 ;	main.c:590: leakBit = 1;
                                   1849 ;	assignBit
      00068D D2 00            [12] 1850 	setb	_leakBit
                                   1851 ;	main.c:591: TR0 = 1;
                                   1852 ;	assignBit
      00068F D2 8C            [12] 1853 	setb	_TR0
                                   1854 ;	main.c:592: TR1 = 1;
                                   1855 ;	assignBit
      000691 D2 8E            [12] 1856 	setb	_TR1
                                   1857 ;	main.c:593: EADC = 1;
                                   1858 ;	assignBit
      000693 D2 AD            [12] 1859 	setb	_EADC
      000695                       1860 00135$:
                                   1861 ;	main.c:597: if (velocity < 48.0 && velocity > -48.0)
      000695 E4               [12] 1862 	clr	a
      000696 C0 E0            [24] 1863 	push	acc
      000698 C0 E0            [24] 1864 	push	acc
      00069A 74 40            [12] 1865 	mov	a,#0x40
      00069C C0 E0            [24] 1866 	push	acc
      00069E 74 42            [12] 1867 	mov	a,#0x42
      0006A0 C0 E0            [24] 1868 	push	acc
      0006A2 85 4B 82         [24] 1869 	mov	dpl,_velocity
      0006A5 85 4C 83         [24] 1870 	mov	dph,(_velocity + 1)
      0006A8 85 4D F0         [24] 1871 	mov	b,(_velocity + 2)
      0006AB E5 4E            [12] 1872 	mov	a,(_velocity + 3)
      0006AD 12 13 B2         [24] 1873 	lcall	___fslt
      0006B0 AF 82            [24] 1874 	mov	r7,dpl
      0006B2 E5 81            [12] 1875 	mov	a,sp
      0006B4 24 FC            [12] 1876 	add	a,#0xfc
      0006B6 F5 81            [12] 1877 	mov	sp,a
      0006B8 EF               [12] 1878 	mov	a,r7
      0006B9 60 21            [24] 1879 	jz	00138$
      0006BB C0 4B            [24] 1880 	push	_velocity
      0006BD C0 4C            [24] 1881 	push	(_velocity + 1)
      0006BF C0 4D            [24] 1882 	push	(_velocity + 2)
      0006C1 C0 4E            [24] 1883 	push	(_velocity + 3)
      0006C3 90 00 00         [24] 1884 	mov	dptr,#0x0000
      0006C6 75 F0 40         [24] 1885 	mov	b,#0x40
      0006C9 74 C2            [12] 1886 	mov	a,#0xc2
      0006CB 12 13 B2         [24] 1887 	lcall	___fslt
      0006CE AF 82            [24] 1888 	mov	r7,dpl
      0006D0 E5 81            [12] 1889 	mov	a,sp
      0006D2 24 FC            [12] 1890 	add	a,#0xfc
      0006D4 F5 81            [12] 1891 	mov	sp,a
      0006D6 EF               [12] 1892 	mov	a,r7
      0006D7 60 03            [24] 1893 	jz	00138$
                                   1894 ;	main.c:599: velocityBit = 1;
      0006D9 75 22 01         [24] 1895 	mov	_velocityBit,#0x01
      0006DC                       1896 00138$:
                                   1897 ;	main.c:601: if (height < 1.0)
      0006DC E4               [12] 1898 	clr	a
      0006DD C0 E0            [24] 1899 	push	acc
      0006DF C0 E0            [24] 1900 	push	acc
      0006E1 74 80            [12] 1901 	mov	a,#0x80
      0006E3 C0 E0            [24] 1902 	push	acc
      0006E5 74 3F            [12] 1903 	mov	a,#0x3f
      0006E7 C0 E0            [24] 1904 	push	acc
      0006E9 85 5B 82         [24] 1905 	mov	dpl,_height
      0006EC 85 5C 83         [24] 1906 	mov	dph,(_height + 1)
      0006EF 85 5D F0         [24] 1907 	mov	b,(_height + 2)
      0006F2 E5 5E            [12] 1908 	mov	a,(_height + 3)
      0006F4 12 13 B2         [24] 1909 	lcall	___fslt
      0006F7 AF 82            [24] 1910 	mov	r7,dpl
      0006F9 E5 81            [12] 1911 	mov	a,sp
      0006FB 24 FC            [12] 1912 	add	a,#0xfc
      0006FD F5 81            [12] 1913 	mov	sp,a
      0006FF EF               [12] 1914 	mov	a,r7
      000700 60 51            [24] 1915 	jz	00150$
                                   1916 ;	main.c:603: TR1 = 0;
                                   1917 ;	assignBit
      000702 C2 8E            [12] 1918 	clr	_TR1
                                   1919 ;	main.c:604: TR0 = 0;
                                   1920 ;	assignBit
      000704 C2 8C            [12] 1921 	clr	_TR0
                                   1922 ;	main.c:605: P0 = 0x00;
      000706 75 80 00         [24] 1923 	mov	_P0,#0x00
                                   1924 ;	main.c:606: if (velocity > -10.0)
      000709 C0 4B            [24] 1925 	push	_velocity
      00070B C0 4C            [24] 1926 	push	(_velocity + 1)
      00070D C0 4D            [24] 1927 	push	(_velocity + 2)
      00070F C0 4E            [24] 1928 	push	(_velocity + 3)
      000711 90 00 00         [24] 1929 	mov	dptr,#0x0000
      000714 75 F0 20         [24] 1930 	mov	b,#0x20
      000717 74 C1            [12] 1931 	mov	a,#0xc1
      000719 12 13 B2         [24] 1932 	lcall	___fslt
      00071C AF 82            [24] 1933 	mov	r7,dpl
      00071E E5 81            [12] 1934 	mov	a,sp
      000720 24 FC            [12] 1935 	add	a,#0xfc
      000722 F5 81            [12] 1936 	mov	sp,a
      000724 EF               [12] 1937 	mov	a,r7
      000725 60 16            [24] 1938 	jz	00147$
                                   1939 ;	main.c:608: TR1 = 0;
                                   1940 ;	assignBit
      000727 C2 8E            [12] 1941 	clr	_TR1
                                   1942 ;	main.c:609: TR0 = 0;
                                   1943 ;	assignBit
      000729 C2 8C            [12] 1944 	clr	_TR0
                                   1945 ;	main.c:610: EADC = 0;
                                   1946 ;	assignBit
      00072B C2 AD            [12] 1947 	clr	_EADC
                                   1948 ;	main.c:611: P0 = 0x00;
      00072D 75 80 00         [24] 1949 	mov	_P0,#0x00
                                   1950 ;	main.c:612: CR = 1;
                                   1951 ;	assignBit
      000730 D2 DE            [12] 1952 	setb	_CR
                                   1953 ;	main.c:613: printLCD(win);
      000732 90 17 83         [24] 1954 	mov	dptr,#_win
      000735 75 F0 80         [24] 1955 	mov	b,#0x80
      000738 12 02 D0         [24] 1956 	lcall	_printLCD
                                   1957 ;	main.c:614: while(1);
      00073B                       1958 00141$:
      00073B 80 FE            [24] 1959 	sjmp	00141$
      00073D                       1960 00147$:
                                   1961 ;	main.c:618: TR1 = 0;
                                   1962 ;	assignBit
      00073D C2 8E            [12] 1963 	clr	_TR1
                                   1964 ;	main.c:619: TR0 = 0;
                                   1965 ;	assignBit
      00073F C2 8C            [12] 1966 	clr	_TR0
                                   1967 ;	main.c:620: EADC = 0;
                                   1968 ;	assignBit
      000741 C2 AD            [12] 1969 	clr	_EADC
                                   1970 ;	main.c:621: P0 = 0x00;
      000743 75 80 00         [24] 1971 	mov	_P0,#0x00
                                   1972 ;	main.c:622: CR = 1;
                                   1973 ;	assignBit
      000746 D2 DE            [12] 1974 	setb	_CR
                                   1975 ;	main.c:623: printLCD(lose);
      000748 90 17 DB         [24] 1976 	mov	dptr,#_lose
      00074B 75 F0 80         [24] 1977 	mov	b,#0x80
      00074E 12 02 D0         [24] 1978 	lcall	_printLCD
                                   1979 ;	main.c:624: while(1);
      000751                       1980 00144$:
      000751 80 FE            [24] 1981 	sjmp	00144$
      000753                       1982 00150$:
                                   1983 ;	main.c:630: if (enginebit == 1)
      000753 74 01            [12] 1984 	mov	a,#0x01
      000755 B5 49 41         [24] 1985 	cjne	a,_enginebit,00152$
                                   1986 ;	main.c:632: TR1 = 0;
                                   1987 ;	assignBit
      000758 C2 8E            [12] 1988 	clr	_TR1
                                   1989 ;	main.c:633: TR0 = 0;
                                   1990 ;	assignBit
      00075A C2 8C            [12] 1991 	clr	_TR0
                                   1992 ;	main.c:634: EADC = 0;
                                   1993 ;	assignBit
      00075C C2 AD            [12] 1994 	clr	_EADC
                                   1995 ;	main.c:635: P0 = 0x00;
      00075E 75 80 00         [24] 1996 	mov	_P0,#0x00
                                   1997 ;	main.c:636: CR = 1;
                                   1998 ;	assignBit
      000761 D2 DE            [12] 1999 	setb	_CR
                                   2000 ;	main.c:637: printLCD(engine1);
      000763 90 1A 66         [24] 2001 	mov	dptr,#_engine1
      000766 75 F0 80         [24] 2002 	mov	b,#0x80
      000769 12 02 D0         [24] 2003 	lcall	_printLCD
                                   2004 ;	main.c:638: in_thrust = in_thrust*0.9;
      00076C C0 4F            [24] 2005 	push	_in_thrust
      00076E C0 50            [24] 2006 	push	(_in_thrust + 1)
      000770 C0 51            [24] 2007 	push	(_in_thrust + 2)
      000772 C0 52            [24] 2008 	push	(_in_thrust + 3)
      000774 90 66 66         [24] 2009 	mov	dptr,#0x6666
      000777 75 F0 66         [24] 2010 	mov	b,#0x66
      00077A 74 3F            [12] 2011 	mov	a,#0x3f
      00077C 12 12 AE         [24] 2012 	lcall	___fsmul
      00077F 85 82 4F         [24] 2013 	mov	_in_thrust,dpl
      000782 85 83 50         [24] 2014 	mov	(_in_thrust + 1),dph
      000785 85 F0 51         [24] 2015 	mov	(_in_thrust + 2),b
      000788 F5 52            [12] 2016 	mov	(_in_thrust + 3),a
      00078A E5 81            [12] 2017 	mov	a,sp
      00078C 24 FC            [12] 2018 	add	a,#0xfc
      00078E F5 81            [12] 2019 	mov	sp,a
                                   2020 ;	main.c:639: enginebit = 0;
      000790 75 49 00         [24] 2021 	mov	_enginebit,#0x00
                                   2022 ;	main.c:640: TR0 = 1;
                                   2023 ;	assignBit
      000793 D2 8C            [12] 2024 	setb	_TR0
                                   2025 ;	main.c:641: TR1 = 1;
                                   2026 ;	assignBit
      000795 D2 8E            [12] 2027 	setb	_TR1
                                   2028 ;	main.c:642: EADC = 1;
                                   2029 ;	assignBit
      000797 D2 AD            [12] 2030 	setb	_EADC
      000799                       2031 00152$:
                                   2032 ;	main.c:645: if (leakBit == 1)
      000799 30 00 2F         [24] 2033 	jnb	_leakBit,00154$
                                   2034 ;	main.c:647: fuel = fuel - 0.00002;
      00079C 74 AC            [12] 2035 	mov	a,#0xac
      00079E C0 E0            [24] 2036 	push	acc
      0007A0 74 C5            [12] 2037 	mov	a,#0xc5
      0007A2 C0 E0            [24] 2038 	push	acc
      0007A4 74 A7            [12] 2039 	mov	a,#0xa7
      0007A6 C0 E0            [24] 2040 	push	acc
      0007A8 74 37            [12] 2041 	mov	a,#0x37
      0007AA C0 E0            [24] 2042 	push	acc
      0007AC 85 63 82         [24] 2043 	mov	dpl,_fuel
      0007AF 85 64 83         [24] 2044 	mov	dph,(_fuel + 1)
      0007B2 85 65 F0         [24] 2045 	mov	b,(_fuel + 2)
      0007B5 E5 66            [12] 2046 	mov	a,(_fuel + 3)
      0007B7 12 11 77         [24] 2047 	lcall	___fssub
      0007BA 85 82 63         [24] 2048 	mov	_fuel,dpl
      0007BD 85 83 64         [24] 2049 	mov	(_fuel + 1),dph
      0007C0 85 F0 65         [24] 2050 	mov	(_fuel + 2),b
      0007C3 F5 66            [12] 2051 	mov	(_fuel + 3),a
      0007C5 E5 81            [12] 2052 	mov	a,sp
      0007C7 24 FC            [12] 2053 	add	a,#0xfc
      0007C9 F5 81            [12] 2054 	mov	sp,a
      0007CB                       2055 00154$:
                                   2056 ;	main.c:649: if (B0 == 0)
      0007CB 20 B2 0F         [24] 2057 	jb	_P3_2,00156$
                                   2058 ;	main.c:652: ship_thrust = in_thrust;
      0007CE 85 4F 57         [24] 2059 	mov	_ship_thrust,_in_thrust
      0007D1 85 50 58         [24] 2060 	mov	(_ship_thrust + 1),(_in_thrust + 1)
      0007D4 85 51 59         [24] 2061 	mov	(_ship_thrust + 2),(_in_thrust + 2)
      0007D7 85 52 5A         [24] 2062 	mov	(_ship_thrust + 3),(_in_thrust + 3)
      0007DA 02 04 56         [24] 2063 	ljmp	00159$
      0007DD                       2064 00156$:
                                   2065 ;	main.c:656: ship_thrust = in_thrust/2.0;
      0007DD E4               [12] 2066 	clr	a
      0007DE C0 E0            [24] 2067 	push	acc
      0007E0 C0 E0            [24] 2068 	push	acc
      0007E2 C0 E0            [24] 2069 	push	acc
      0007E4 74 40            [12] 2070 	mov	a,#0x40
      0007E6 C0 E0            [24] 2071 	push	acc
      0007E8 85 4F 82         [24] 2072 	mov	dpl,_in_thrust
      0007EB 85 50 83         [24] 2073 	mov	dph,(_in_thrust + 1)
      0007EE 85 51 F0         [24] 2074 	mov	b,(_in_thrust + 2)
      0007F1 E5 52            [12] 2075 	mov	a,(_in_thrust + 3)
      0007F3 12 15 A4         [24] 2076 	lcall	___fsdiv
      0007F6 85 82 57         [24] 2077 	mov	_ship_thrust,dpl
      0007F9 85 83 58         [24] 2078 	mov	(_ship_thrust + 1),dph
      0007FC 85 F0 59         [24] 2079 	mov	(_ship_thrust + 2),b
      0007FF F5 5A            [12] 2080 	mov	(_ship_thrust + 3),a
      000801 E5 81            [12] 2081 	mov	a,sp
      000803 24 FC            [12] 2082 	add	a,#0xfc
      000805 F5 81            [12] 2083 	mov	sp,a
                                   2084 ;	main.c:664: }
      000807 02 04 56         [24] 2085 	ljmp	00159$
                                   2086 ;------------------------------------------------------------
                                   2087 ;Allocation info for local variables in function 'timer0Interrupt'
                                   2088 ;------------------------------------------------------------
                                   2089 ;	main.c:666: void timer0Interrupt(void) __interrupt 1// __using 1
                                   2090 ;	-----------------------------------------
                                   2091 ;	 function timer0Interrupt
                                   2092 ;	-----------------------------------------
      00080A                       2093 _timer0Interrupt:
      00080A C0 21            [24] 2094 	push	bits
      00080C C0 E0            [24] 2095 	push	acc
      00080E C0 F0            [24] 2096 	push	b
      000810 C0 82            [24] 2097 	push	dpl
      000812 C0 83            [24] 2098 	push	dph
      000814 C0 07            [24] 2099 	push	(0+7)
      000816 C0 06            [24] 2100 	push	(0+6)
      000818 C0 05            [24] 2101 	push	(0+5)
      00081A C0 04            [24] 2102 	push	(0+4)
      00081C C0 03            [24] 2103 	push	(0+3)
      00081E C0 02            [24] 2104 	push	(0+2)
      000820 C0 01            [24] 2105 	push	(0+1)
      000822 C0 00            [24] 2106 	push	(0+0)
      000824 C0 D0            [24] 2107 	push	psw
      000826 75 D0 00         [24] 2108 	mov	psw,#0x00
                                   2109 ;	main.c:669: TL0 = 0x80;		//Initial timer value
      000829 75 8A 80         [24] 2110 	mov	_TL0,#0x80
                                   2111 ;	main.c:670: TH0 = 0xFC;
      00082C 75 8C FC         [24] 2112 	mov	_TH0,#0xfc
                                   2113 ;	main.c:688: if (w==0)
      00082F E5 3A            [12] 2114 	mov	a,_w
      000831 70 46            [24] 2115 	jnz	00106$
                                   2116 ;	main.c:691: while(P4_5==0)
      000833                       2117 00101$:
      000833 20 C5 11         [24] 2118 	jb	_P4_5,00103$
                                   2119 ;	main.c:693: P0 = 0x00;
      000836 75 80 00         [24] 2120 	mov	_P0,#0x00
                                   2121 ;	main.c:694: trigger = 0;
                                   2122 ;	assignBit
      000839 C2 C4            [12] 2123 	clr	_P4_4
                                   2124 ;	main.c:695: trigger = 1;
                                   2125 ;	assignBit
      00083B D2 C4            [12] 2126 	setb	_P4_4
                                   2127 ;	main.c:696: DelaySmalltest();
      00083D 12 01 49         [24] 2128 	lcall	_DelaySmalltest
                                   2129 ;	main.c:697: trigger = 0;
                                   2130 ;	assignBit
      000840 C2 C4            [12] 2131 	clr	_P4_4
                                   2132 ;	main.c:698: DelaySmalltest();
      000842 12 01 49         [24] 2133 	lcall	_DelaySmalltest
      000845 80 EC            [24] 2134 	sjmp	00101$
      000847                       2135 00103$:
                                   2136 ;	main.c:700: for (i=0;i<16;i++)
      000847 E4               [12] 2137 	clr	a
      000848 F5 47            [12] 2138 	mov	_i,a
      00084A F5 48            [12] 2139 	mov	(_i + 1),a
      00084C                       2140 00146$:
                                   2141 ;	main.c:702: P0 = 0x00;
      00084C 75 80 00         [24] 2142 	mov	_P0,#0x00
                                   2143 ;	main.c:703: trigger = 0;
                                   2144 ;	assignBit
      00084F C2 C4            [12] 2145 	clr	_P4_4
                                   2146 ;	main.c:704: trigger = 1;
                                   2147 ;	assignBit
      000851 D2 C4            [12] 2148 	setb	_P4_4
                                   2149 ;	main.c:705: DelaySmalltest();
      000853 12 01 49         [24] 2150 	lcall	_DelaySmalltest
                                   2151 ;	main.c:706: trigger = 0;
                                   2152 ;	assignBit
      000856 C2 C4            [12] 2153 	clr	_P4_4
                                   2154 ;	main.c:707: DelaySmalltest();
      000858 12 01 49         [24] 2155 	lcall	_DelaySmalltest
                                   2156 ;	main.c:700: for (i=0;i<16;i++)
      00085B 05 47            [12] 2157 	inc	_i
      00085D E4               [12] 2158 	clr	a
      00085E B5 47 02         [24] 2159 	cjne	a,_i,00244$
      000861 05 48            [12] 2160 	inc	(_i + 1)
      000863                       2161 00244$:
      000863 C3               [12] 2162 	clr	c
      000864 E5 47            [12] 2163 	mov	a,_i
      000866 94 10            [12] 2164 	subb	a,#0x10
      000868 E5 48            [12] 2165 	mov	a,(_i + 1)
      00086A 94 00            [12] 2166 	subb	a,#0x00
      00086C 40 DE            [24] 2167 	jc	00146$
                                   2168 ;	main.c:709: display(digit1);
      00086E AE 25            [24] 2169 	mov	r6,_digit1
      000870 7F 00            [12] 2170 	mov	r7,#0x00
      000872 8E 82            [24] 2171 	mov	dpl,r6
      000874 8F 83            [24] 2172 	mov	dph,r7
      000876 12 01 89         [24] 2173 	lcall	_display
      000879                       2174 00106$:
                                   2175 ;	main.c:711: if (w==1)
      000879 74 01            [12] 2176 	mov	a,#0x01
      00087B B5 3A 16         [24] 2177 	cjne	a,_w,00111$
                                   2178 ;	main.c:714: while(P4_5==0)
      00087E                       2179 00107$:
      00087E 20 C5 08         [24] 2180 	jb	_P4_5,00109$
                                   2181 ;	main.c:717: trigger = 0;
                                   2182 ;	assignBit
      000881 C2 C4            [12] 2183 	clr	_P4_4
                                   2184 ;	main.c:718: trigger = 1;
                                   2185 ;	assignBit
      000883 D2 C4            [12] 2186 	setb	_P4_4
                                   2187 ;	main.c:720: trigger = 0;
                                   2188 ;	assignBit
      000885 C2 C4            [12] 2189 	clr	_P4_4
      000887 80 F5            [24] 2190 	sjmp	00107$
      000889                       2191 00109$:
                                   2192 ;	main.c:727: display(digit2);
      000889 AE 26            [24] 2193 	mov	r6,_digit2
      00088B 7F 00            [12] 2194 	mov	r7,#0x00
      00088D 8E 82            [24] 2195 	mov	dpl,r6
      00088F 8F 83            [24] 2196 	mov	dph,r7
      000891 12 01 89         [24] 2197 	lcall	_display
      000894                       2198 00111$:
                                   2199 ;	main.c:729: if (w==2)
      000894 74 02            [12] 2200 	mov	a,#0x02
      000896 B5 3A 0B         [24] 2201 	cjne	a,_w,00113$
                                   2202 ;	main.c:732: display(digit3);
      000899 AE 27            [24] 2203 	mov	r6,_digit3
      00089B 7F 00            [12] 2204 	mov	r7,#0x00
      00089D 8E 82            [24] 2205 	mov	dpl,r6
      00089F 8F 83            [24] 2206 	mov	dph,r7
      0008A1 12 01 89         [24] 2207 	lcall	_display
      0008A4                       2208 00113$:
                                   2209 ;	main.c:734: if (w==3)
      0008A4 74 03            [12] 2210 	mov	a,#0x03
      0008A6 B5 3A 0B         [24] 2211 	cjne	a,_w,00115$
                                   2212 ;	main.c:737: display(digit4);
      0008A9 AE 28            [24] 2213 	mov	r6,_digit4
      0008AB 7F 00            [12] 2214 	mov	r7,#0x00
      0008AD 8E 82            [24] 2215 	mov	dpl,r6
      0008AF 8F 83            [24] 2216 	mov	dph,r7
      0008B1 12 01 89         [24] 2217 	lcall	_display
      0008B4                       2218 00115$:
                                   2219 ;	main.c:740: if (w==4)
      0008B4 74 04            [12] 2220 	mov	a,#0x04
      0008B6 B5 3A 0B         [24] 2221 	cjne	a,_w,00117$
                                   2222 ;	main.c:743: display(digit1_1);
      0008B9 AE 29            [24] 2223 	mov	r6,_digit1_1
      0008BB 7F 00            [12] 2224 	mov	r7,#0x00
      0008BD 8E 82            [24] 2225 	mov	dpl,r6
      0008BF 8F 83            [24] 2226 	mov	dph,r7
      0008C1 12 01 89         [24] 2227 	lcall	_display
      0008C4                       2228 00117$:
                                   2229 ;	main.c:745: if (w==5)
      0008C4 74 05            [12] 2230 	mov	a,#0x05
      0008C6 B5 3A 0B         [24] 2231 	cjne	a,_w,00119$
                                   2232 ;	main.c:748: display(digit1_3);
      0008C9 AE 2B            [24] 2233 	mov	r6,_digit1_3
      0008CB 7F 00            [12] 2234 	mov	r7,#0x00
      0008CD 8E 82            [24] 2235 	mov	dpl,r6
      0008CF 8F 83            [24] 2236 	mov	dph,r7
      0008D1 12 01 89         [24] 2237 	lcall	_display
      0008D4                       2238 00119$:
                                   2239 ;	main.c:751: if (w==6)
      0008D4 74 06            [12] 2240 	mov	a,#0x06
      0008D6 B5 3A 0D         [24] 2241 	cjne	a,_w,00121$
                                   2242 ;	main.c:754: display(digit1_4);
      0008D9 AE 2C            [24] 2243 	mov	r6,_digit1_4
      0008DB 7F 00            [12] 2244 	mov	r7,#0x00
      0008DD 8E 82            [24] 2245 	mov	dpl,r6
      0008DF 8F 83            [24] 2246 	mov	dph,r7
      0008E1 12 01 89         [24] 2247 	lcall	_display
                                   2248 ;	main.c:755: P0_7 = 1;
                                   2249 ;	assignBit
      0008E4 D2 87            [12] 2250 	setb	_P0_7
      0008E6                       2251 00121$:
                                   2252 ;	main.c:757: if (w==7)
      0008E6 74 07            [12] 2253 	mov	a,#0x07
      0008E8 B5 3A 0B         [24] 2254 	cjne	a,_w,00123$
                                   2255 ;	main.c:760: display(digit1_5);
      0008EB AE 2D            [24] 2256 	mov	r6,_digit1_5
      0008ED 7F 00            [12] 2257 	mov	r7,#0x00
      0008EF 8E 82            [24] 2258 	mov	dpl,r6
      0008F1 8F 83            [24] 2259 	mov	dph,r7
      0008F3 12 01 89         [24] 2260 	lcall	_display
      0008F6                       2261 00123$:
                                   2262 ;	main.c:763: if (w==8)
      0008F6 74 08            [12] 2263 	mov	a,#0x08
      0008F8 B5 3A 0B         [24] 2264 	cjne	a,_w,00125$
                                   2265 ;	main.c:766: display(digit2_1);
      0008FB AE 2E            [24] 2266 	mov	r6,_digit2_1
      0008FD 7F 00            [12] 2267 	mov	r7,#0x00
      0008FF 8E 82            [24] 2268 	mov	dpl,r6
      000901 8F 83            [24] 2269 	mov	dph,r7
      000903 12 01 89         [24] 2270 	lcall	_display
      000906                       2271 00125$:
                                   2272 ;	main.c:768: if (w==9)
      000906 74 09            [12] 2273 	mov	a,#0x09
      000908 B5 3A 0D         [24] 2274 	cjne	a,_w,00127$
                                   2275 ;	main.c:771: display(digit2_4);
      00090B AE 31            [24] 2276 	mov	r6,_digit2_4
      00090D 7F 00            [12] 2277 	mov	r7,#0x00
      00090F 8E 82            [24] 2278 	mov	dpl,r6
      000911 8F 83            [24] 2279 	mov	dph,r7
      000913 12 01 89         [24] 2280 	lcall	_display
                                   2281 ;	main.c:772: P0_7 = 1;
                                   2282 ;	assignBit
      000916 D2 87            [12] 2283 	setb	_P0_7
      000918                       2284 00127$:
                                   2285 ;	main.c:774: if (w==10)
      000918 74 0A            [12] 2286 	mov	a,#0x0a
      00091A B5 3A 0B         [24] 2287 	cjne	a,_w,00129$
                                   2288 ;	main.c:778: display(digit2_5);
      00091D AE 32            [24] 2289 	mov	r6,_digit2_5
      00091F 7F 00            [12] 2290 	mov	r7,#0x00
      000921 8E 82            [24] 2291 	mov	dpl,r6
      000923 8F 83            [24] 2292 	mov	dph,r7
      000925 12 01 89         [24] 2293 	lcall	_display
      000928                       2294 00129$:
                                   2295 ;	main.c:780: if (w==11)
      000928 74 0B            [12] 2296 	mov	a,#0x0b
      00092A B5 3A 0B         [24] 2297 	cjne	a,_w,00131$
                                   2298 ;	main.c:784: display(digit2_6);
      00092D AE 33            [24] 2299 	mov	r6,_digit2_6
      00092F 7F 00            [12] 2300 	mov	r7,#0x00
      000931 8E 82            [24] 2301 	mov	dpl,r6
      000933 8F 83            [24] 2302 	mov	dph,r7
      000935 12 01 89         [24] 2303 	lcall	_display
      000938                       2304 00131$:
                                   2305 ;	main.c:788: if (w==12)
      000938 74 0C            [12] 2306 	mov	a,#0x0c
      00093A B5 3A 0B         [24] 2307 	cjne	a,_w,00133$
                                   2308 ;	main.c:792: display(digit2_1);
      00093D AE 2E            [24] 2309 	mov	r6,_digit2_1
      00093F 7F 00            [12] 2310 	mov	r7,#0x00
      000941 8E 82            [24] 2311 	mov	dpl,r6
      000943 8F 83            [24] 2312 	mov	dph,r7
      000945 12 01 89         [24] 2313 	lcall	_display
      000948                       2314 00133$:
                                   2315 ;	main.c:794: if (w==13)
      000948 74 0D            [12] 2316 	mov	a,#0x0d
      00094A B5 3A 0B         [24] 2317 	cjne	a,_w,00135$
                                   2318 ;	main.c:798: display(digit3_2);
      00094D AE 35            [24] 2319 	mov	r6,_digit3_2
      00094F 7F 00            [12] 2320 	mov	r7,#0x00
      000951 8E 82            [24] 2321 	mov	dpl,r6
      000953 8F 83            [24] 2322 	mov	dph,r7
      000955 12 01 89         [24] 2323 	lcall	_display
      000958                       2324 00135$:
                                   2325 ;	main.c:800: if (w==14)
      000958 74 0E            [12] 2326 	mov	a,#0x0e
      00095A B5 3A 0B         [24] 2327 	cjne	a,_w,00137$
                                   2328 ;	main.c:804: display(digit3_3);
      00095D AE 36            [24] 2329 	mov	r6,_digit3_3
      00095F 7F 00            [12] 2330 	mov	r7,#0x00
      000961 8E 82            [24] 2331 	mov	dpl,r6
      000963 8F 83            [24] 2332 	mov	dph,r7
      000965 12 01 89         [24] 2333 	lcall	_display
      000968                       2334 00137$:
                                   2335 ;	main.c:806: if (w==15)
      000968 74 0F            [12] 2336 	mov	a,#0x0f
      00096A B5 3A 0B         [24] 2337 	cjne	a,_w,00139$
                                   2338 ;	main.c:810: display(digit3_4);
      00096D AE 37            [24] 2339 	mov	r6,_digit3_4
      00096F 7F 00            [12] 2340 	mov	r7,#0x00
      000971 8E 82            [24] 2341 	mov	dpl,r6
      000973 8F 83            [24] 2342 	mov	dph,r7
      000975 12 01 89         [24] 2343 	lcall	_display
      000978                       2344 00139$:
                                   2345 ;	main.c:813: if (w == 16)
      000978 74 10            [12] 2346 	mov	a,#0x10
      00097A B5 3A 03         [24] 2347 	cjne	a,_w,00141$
                                   2348 ;	main.c:817: P0 = 0xFF;
      00097D 75 80 FF         [24] 2349 	mov	_P0,#0xff
      000980                       2350 00141$:
                                   2351 ;	main.c:819: if (w<17)
      000980 74 EF            [12] 2352 	mov	a,#0x100 - 0x11
      000982 25 3A            [12] 2353 	add	a,_w
      000984 40 02            [24] 2354 	jc	00143$
                                   2355 ;	main.c:821: w++;
      000986 05 3A            [12] 2356 	inc	_w
      000988                       2357 00143$:
                                   2358 ;	main.c:823: if (w>16)
      000988 E5 3A            [12] 2359 	mov	a,_w
      00098A 24 EF            [12] 2360 	add	a,#0xff - 0x10
      00098C 50 03            [24] 2361 	jnc	00145$
                                   2362 ;	main.c:825: w=0;
      00098E 75 3A 00         [24] 2363 	mov	_w,#0x00
      000991                       2364 00145$:
                                   2365 ;	main.c:828: trigger = 0;
                                   2366 ;	assignBit
      000991 C2 C4            [12] 2367 	clr	_P4_4
                                   2368 ;	main.c:829: trigger = 1;
                                   2369 ;	assignBit
      000993 D2 C4            [12] 2370 	setb	_P4_4
                                   2371 ;	main.c:830: DelaySmalltest();
      000995 12 01 49         [24] 2372 	lcall	_DelaySmalltest
                                   2373 ;	main.c:831: trigger = 0;
                                   2374 ;	assignBit
      000998 C2 C4            [12] 2375 	clr	_P4_4
                                   2376 ;	main.c:832: }
      00099A D0 D0            [24] 2377 	pop	psw
      00099C D0 00            [24] 2378 	pop	(0+0)
      00099E D0 01            [24] 2379 	pop	(0+1)
      0009A0 D0 02            [24] 2380 	pop	(0+2)
      0009A2 D0 03            [24] 2381 	pop	(0+3)
      0009A4 D0 04            [24] 2382 	pop	(0+4)
      0009A6 D0 05            [24] 2383 	pop	(0+5)
      0009A8 D0 06            [24] 2384 	pop	(0+6)
      0009AA D0 07            [24] 2385 	pop	(0+7)
      0009AC D0 83            [24] 2386 	pop	dph
      0009AE D0 82            [24] 2387 	pop	dpl
      0009B0 D0 F0            [24] 2388 	pop	b
      0009B2 D0 E0            [24] 2389 	pop	acc
      0009B4 D0 21            [24] 2390 	pop	bits
      0009B6 32               [24] 2391 	reti
                                   2392 ;------------------------------------------------------------
                                   2393 ;Allocation info for local variables in function 'adc_isr'
                                   2394 ;------------------------------------------------------------
                                   2395 ;	main.c:834: void adc_isr( ) __interrupt 5 __using 1
                                   2396 ;	-----------------------------------------
                                   2397 ;	 function adc_isr
                                   2398 ;	-----------------------------------------
      0009B7                       2399 _adc_isr:
                           00000F  2400 	ar7 = 0x0f
                           00000E  2401 	ar6 = 0x0e
                           00000D  2402 	ar5 = 0x0d
                           00000C  2403 	ar4 = 0x0c
                           00000B  2404 	ar3 = 0x0b
                           00000A  2405 	ar2 = 0x0a
                           000009  2406 	ar1 = 0x09
                           000008  2407 	ar0 = 0x08
      0009B7 C0 21            [24] 2408 	push	bits
      0009B9 C0 E0            [24] 2409 	push	acc
      0009BB C0 F0            [24] 2410 	push	b
      0009BD C0 82            [24] 2411 	push	dpl
      0009BF C0 83            [24] 2412 	push	dph
      0009C1 C0 07            [24] 2413 	push	(0+7)
      0009C3 C0 06            [24] 2414 	push	(0+6)
      0009C5 C0 05            [24] 2415 	push	(0+5)
      0009C7 C0 04            [24] 2416 	push	(0+4)
      0009C9 C0 03            [24] 2417 	push	(0+3)
      0009CB C0 02            [24] 2418 	push	(0+2)
      0009CD C0 01            [24] 2419 	push	(0+1)
      0009CF C0 00            [24] 2420 	push	(0+0)
      0009D1 C0 D0            [24] 2421 	push	psw
      0009D3 75 D0 08         [24] 2422 	mov	psw,#0x08
                                   2423 ;	main.c:836: ADC_CONTR &= !ADC_FLAG; //Clear ADC interrupt flag
      0009D6 E5 BC            [12] 2424 	mov	a,_ADC_CONTR
      0009D8 75 BC 00         [24] 2425 	mov	_ADC_CONTR,#0x00
                                   2426 ;	main.c:839: if (fuel < 0.1)
      0009DB 74 CD            [12] 2427 	mov	a,#0xcd
      0009DD C0 E0            [24] 2428 	push	acc
      0009DF 14               [12] 2429 	dec	a
      0009E0 C0 E0            [24] 2430 	push	acc
      0009E2 C0 E0            [24] 2431 	push	acc
      0009E4 74 3D            [12] 2432 	mov	a,#0x3d
      0009E6 C0 E0            [24] 2433 	push	acc
      0009E8 85 63 82         [24] 2434 	mov	dpl,_fuel
      0009EB 85 64 83         [24] 2435 	mov	dph,(_fuel + 1)
      0009EE 85 65 F0         [24] 2436 	mov	b,(_fuel + 2)
      0009F1 E5 66            [12] 2437 	mov	a,(_fuel + 3)
      0009F3 75 D0 00         [24] 2438 	mov	psw,#0x00
      0009F6 12 13 B2         [24] 2439 	lcall	___fslt
      0009F9 75 D0 08         [24] 2440 	mov	psw,#0x08
      0009FC AF 82            [24] 2441 	mov	r7,dpl
      0009FE E5 81            [12] 2442 	mov	a,sp
      000A00 24 FC            [12] 2443 	add	a,#0xfc
      000A02 F5 81            [12] 2444 	mov	sp,a
      000A04 EF               [12] 2445 	mov	a,r7
      000A05 60 0C            [24] 2446 	jz	00102$
                                   2447 ;	main.c:840: thrust = 0;
      000A07 E4               [12] 2448 	clr	a
      000A08 F5 53            [12] 2449 	mov	_thrust,a
      000A0A F5 54            [12] 2450 	mov	(_thrust + 1),a
      000A0C F5 55            [12] 2451 	mov	(_thrust + 2),a
      000A0E F5 56            [12] 2452 	mov	(_thrust + 3),a
      000A10 02 0A 96         [24] 2453 	ljmp	00103$
      000A13                       2454 00102$:
                                   2455 ;	main.c:844: thrust = (ADC_RES - 0) * (ship_thrust - 0) / (255 - 0);
      000A13 AE BD            [24] 2456 	mov	r6,_ADC_RES
      000A15 7F 00            [12] 2457 	mov	r7,#0x00
      000A17 AA 57            [24] 2458 	mov	r2,_ship_thrust
      000A19 AB 58            [24] 2459 	mov	r3,(_ship_thrust + 1)
      000A1B AC 59            [24] 2460 	mov	r4,(_ship_thrust + 2)
      000A1D AD 5A            [24] 2461 	mov	r5,(_ship_thrust + 3)
      000A1F 8E 82            [24] 2462 	mov	dpl,r6
      000A21 8F 83            [24] 2463 	mov	dph,r7
      000A23 C0 0D            [24] 2464 	push	ar5
      000A25 C0 0C            [24] 2465 	push	ar4
      000A27 C0 0B            [24] 2466 	push	ar3
      000A29 C0 0A            [24] 2467 	push	ar2
      000A2B 75 D0 00         [24] 2468 	mov	psw,#0x00
      000A2E 12 14 EE         [24] 2469 	lcall	___sint2fs
      000A31 75 D0 08         [24] 2470 	mov	psw,#0x08
      000A34 A8 82            [24] 2471 	mov	r0,dpl
      000A36 A9 83            [24] 2472 	mov	r1,dph
      000A38 AE F0            [24] 2473 	mov	r6,b
      000A3A FF               [12] 2474 	mov	r7,a
      000A3B D0 0A            [24] 2475 	pop	ar2
      000A3D D0 0B            [24] 2476 	pop	ar3
      000A3F D0 0C            [24] 2477 	pop	ar4
      000A41 D0 0D            [24] 2478 	pop	ar5
      000A43 C0 0A            [24] 2479 	push	ar2
      000A45 C0 0B            [24] 2480 	push	ar3
      000A47 C0 0C            [24] 2481 	push	ar4
      000A49 C0 0D            [24] 2482 	push	ar5
      000A4B 88 82            [24] 2483 	mov	dpl,r0
      000A4D 89 83            [24] 2484 	mov	dph,r1
      000A4F 8E F0            [24] 2485 	mov	b,r6
      000A51 EF               [12] 2486 	mov	a,r7
      000A52 75 D0 00         [24] 2487 	mov	psw,#0x00
      000A55 12 12 AE         [24] 2488 	lcall	___fsmul
      000A58 75 D0 08         [24] 2489 	mov	psw,#0x08
      000A5B AC 82            [24] 2490 	mov	r4,dpl
      000A5D AD 83            [24] 2491 	mov	r5,dph
      000A5F AE F0            [24] 2492 	mov	r6,b
      000A61 FF               [12] 2493 	mov	r7,a
      000A62 E5 81            [12] 2494 	mov	a,sp
      000A64 24 FC            [12] 2495 	add	a,#0xfc
      000A66 F5 81            [12] 2496 	mov	sp,a
      000A68 E4               [12] 2497 	clr	a
      000A69 C0 E0            [24] 2498 	push	acc
      000A6B C0 E0            [24] 2499 	push	acc
      000A6D 74 7F            [12] 2500 	mov	a,#0x7f
      000A6F C0 E0            [24] 2501 	push	acc
      000A71 74 43            [12] 2502 	mov	a,#0x43
      000A73 C0 E0            [24] 2503 	push	acc
      000A75 8C 82            [24] 2504 	mov	dpl,r4
      000A77 8D 83            [24] 2505 	mov	dph,r5
      000A79 8E F0            [24] 2506 	mov	b,r6
      000A7B EF               [12] 2507 	mov	a,r7
      000A7C 75 D0 00         [24] 2508 	mov	psw,#0x00
      000A7F 12 15 A4         [24] 2509 	lcall	___fsdiv
      000A82 75 D0 08         [24] 2510 	mov	psw,#0x08
      000A85 85 82 53         [24] 2511 	mov	_thrust,dpl
      000A88 85 83 54         [24] 2512 	mov	(_thrust + 1),dph
      000A8B 85 F0 55         [24] 2513 	mov	(_thrust + 2),b
      000A8E F5 56            [12] 2514 	mov	(_thrust + 3),a
      000A90 E5 81            [12] 2515 	mov	a,sp
      000A92 24 FC            [12] 2516 	add	a,#0xfc
      000A94 F5 81            [12] 2517 	mov	sp,a
      000A96                       2518 00103$:
                                   2519 ;	main.c:850: ADC_CONTR = ADC_POWER | ADC_SPEEDLL | ADC_START | 0;
      000A96 75 BC 88         [24] 2520 	mov	_ADC_CONTR,#0x88
                                   2521 ;	main.c:854: }
      000A99 D0 D0            [24] 2522 	pop	psw
      000A9B D0 00            [24] 2523 	pop	(0+0)
      000A9D D0 01            [24] 2524 	pop	(0+1)
      000A9F D0 02            [24] 2525 	pop	(0+2)
      000AA1 D0 03            [24] 2526 	pop	(0+3)
      000AA3 D0 04            [24] 2527 	pop	(0+4)
      000AA5 D0 05            [24] 2528 	pop	(0+5)
      000AA7 D0 06            [24] 2529 	pop	(0+6)
      000AA9 D0 07            [24] 2530 	pop	(0+7)
      000AAB D0 83            [24] 2531 	pop	dph
      000AAD D0 82            [24] 2532 	pop	dpl
      000AAF D0 F0            [24] 2533 	pop	b
      000AB1 D0 E0            [24] 2534 	pop	acc
      000AB3 D0 21            [24] 2535 	pop	bits
      000AB5 32               [24] 2536 	reti
                                   2537 ;------------------------------------------------------------
                                   2538 ;Allocation info for local variables in function 'timer1interrupt'
                                   2539 ;------------------------------------------------------------
                                   2540 ;b                         Allocated to registers r6 r7 
                                   2541 ;int_input                 Allocated to registers r4 r5 
                                   2542 ;number1                   Allocated to registers r6 r7 
                                   2543 ;number2                   Allocated to registers r4 r5 
                                   2544 ;------------------------------------------------------------
                                   2545 ;	main.c:856: void timer1interrupt(void) __interrupt 3
                                   2546 ;	-----------------------------------------
                                   2547 ;	 function timer1interrupt
                                   2548 ;	-----------------------------------------
      000AB6                       2549 _timer1interrupt:
                           000007  2550 	ar7 = 0x07
                           000006  2551 	ar6 = 0x06
                           000005  2552 	ar5 = 0x05
                           000004  2553 	ar4 = 0x04
                           000003  2554 	ar3 = 0x03
                           000002  2555 	ar2 = 0x02
                           000001  2556 	ar1 = 0x01
                           000000  2557 	ar0 = 0x00
      000AB6 C0 21            [24] 2558 	push	bits
      000AB8 C0 E0            [24] 2559 	push	acc
      000ABA C0 F0            [24] 2560 	push	b
      000ABC C0 82            [24] 2561 	push	dpl
      000ABE C0 83            [24] 2562 	push	dph
      000AC0 C0 07            [24] 2563 	push	(0+7)
      000AC2 C0 06            [24] 2564 	push	(0+6)
      000AC4 C0 05            [24] 2565 	push	(0+5)
      000AC6 C0 04            [24] 2566 	push	(0+4)
      000AC8 C0 03            [24] 2567 	push	(0+3)
      000ACA C0 02            [24] 2568 	push	(0+2)
      000ACC C0 01            [24] 2569 	push	(0+1)
      000ACE C0 00            [24] 2570 	push	(0+0)
      000AD0 C0 D0            [24] 2571 	push	psw
      000AD2 75 D0 00         [24] 2572 	mov	psw,#0x00
                                   2573 ;	main.c:862: TL1 = 0x00;		//Initial timer value
      000AD5 75 8B 00         [24] 2574 	mov	_TL1,#0x00
                                   2575 ;	main.c:863: TH1 = 0x4C;		
      000AD8 75 8D 4C         [24] 2576 	mov	_TH1,#0x4c
                                   2577 ;	main.c:865: if (stormBit == 1)
      000ADB 74 01            [12] 2578 	mov	a,#0x01
      000ADD B5 4A 46         [24] 2579 	cjne	a,_stormBit,00102$
                                   2580 ;	main.c:867: EADC = 0;
                                   2581 ;	assignBit
      000AE0 C2 AD            [12] 2582 	clr	_EADC
                                   2583 ;	main.c:869: thrust = 0;
      000AE2 E4               [12] 2584 	clr	a
      000AE3 F5 53            [12] 2585 	mov	_thrust,a
      000AE5 F5 54            [12] 2586 	mov	(_thrust + 1),a
      000AE7 F5 55            [12] 2587 	mov	(_thrust + 2),a
      000AE9 F5 56            [12] 2588 	mov	(_thrust + 3),a
                                   2589 ;	main.c:871: a = ((float)rndNum) / 100.0;
      000AEB 85 38 82         [24] 2590 	mov	dpl,_rndNum
      000AEE 85 39 83         [24] 2591 	mov	dph,(_rndNum + 1)
      000AF1 12 15 2F         [24] 2592 	lcall	___uint2fs
      000AF4 AC 82            [24] 2593 	mov	r4,dpl
      000AF6 AD 83            [24] 2594 	mov	r5,dph
      000AF8 AE F0            [24] 2595 	mov	r6,b
      000AFA FF               [12] 2596 	mov	r7,a
      000AFB E4               [12] 2597 	clr	a
      000AFC C0 E0            [24] 2598 	push	acc
      000AFE C0 E0            [24] 2599 	push	acc
      000B00 74 C8            [12] 2600 	mov	a,#0xc8
      000B02 C0 E0            [24] 2601 	push	acc
      000B04 74 42            [12] 2602 	mov	a,#0x42
      000B06 C0 E0            [24] 2603 	push	acc
      000B08 8C 82            [24] 2604 	mov	dpl,r4
      000B0A 8D 83            [24] 2605 	mov	dph,r5
      000B0C 8E F0            [24] 2606 	mov	b,r6
      000B0E EF               [12] 2607 	mov	a,r7
      000B0F 12 15 A4         [24] 2608 	lcall	___fsdiv
      000B12 85 82 73         [24] 2609 	mov	_a,dpl
      000B15 85 83 74         [24] 2610 	mov	(_a + 1),dph
      000B18 85 F0 75         [24] 2611 	mov	(_a + 2),b
      000B1B F5 76            [12] 2612 	mov	(_a + 3),a
      000B1D E5 81            [12] 2613 	mov	a,sp
      000B1F 24 FC            [12] 2614 	add	a,#0xfc
      000B21 F5 81            [12] 2615 	mov	sp,a
      000B23 02 0B C9         [24] 2616 	ljmp	00103$
      000B26                       2617 00102$:
                                   2618 ;	main.c:874: a = (1.2*thrust / (ship_mass + fuel) - gravity);
      000B26 C0 53            [24] 2619 	push	_thrust
      000B28 C0 54            [24] 2620 	push	(_thrust + 1)
      000B2A C0 55            [24] 2621 	push	(_thrust + 2)
      000B2C C0 56            [24] 2622 	push	(_thrust + 3)
      000B2E 90 99 9A         [24] 2623 	mov	dptr,#0x999a
      000B31 75 F0 99         [24] 2624 	mov	b,#0x99
      000B34 74 3F            [12] 2625 	mov	a,#0x3f
      000B36 12 12 AE         [24] 2626 	lcall	___fsmul
      000B39 AC 82            [24] 2627 	mov	r4,dpl
      000B3B AD 83            [24] 2628 	mov	r5,dph
      000B3D AE F0            [24] 2629 	mov	r6,b
      000B3F FF               [12] 2630 	mov	r7,a
      000B40 E5 81            [12] 2631 	mov	a,sp
      000B42 24 FC            [12] 2632 	add	a,#0xfc
      000B44 F5 81            [12] 2633 	mov	sp,a
      000B46 90 1D CA         [24] 2634 	mov	dptr,#_ship_mass
      000B49 E4               [12] 2635 	clr	a
      000B4A 93               [24] 2636 	movc	a,@a+dptr
      000B4B F8               [12] 2637 	mov	r0,a
      000B4C 74 01            [12] 2638 	mov	a,#0x01
      000B4E 93               [24] 2639 	movc	a,@a+dptr
      000B4F F9               [12] 2640 	mov	r1,a
      000B50 74 02            [12] 2641 	mov	a,#0x02
      000B52 93               [24] 2642 	movc	a,@a+dptr
      000B53 FA               [12] 2643 	mov	r2,a
      000B54 74 03            [12] 2644 	mov	a,#0x03
      000B56 93               [24] 2645 	movc	a,@a+dptr
      000B57 FB               [12] 2646 	mov	r3,a
      000B58 C0 07            [24] 2647 	push	ar7
      000B5A C0 06            [24] 2648 	push	ar6
      000B5C C0 05            [24] 2649 	push	ar5
      000B5E C0 04            [24] 2650 	push	ar4
      000B60 C0 63            [24] 2651 	push	_fuel
      000B62 C0 64            [24] 2652 	push	(_fuel + 1)
      000B64 C0 65            [24] 2653 	push	(_fuel + 2)
      000B66 C0 66            [24] 2654 	push	(_fuel + 3)
      000B68 88 82            [24] 2655 	mov	dpl,r0
      000B6A 89 83            [24] 2656 	mov	dph,r1
      000B6C 8A F0            [24] 2657 	mov	b,r2
      000B6E EB               [12] 2658 	mov	a,r3
      000B6F 12 14 4C         [24] 2659 	lcall	___fsadd
      000B72 A8 82            [24] 2660 	mov	r0,dpl
      000B74 A9 83            [24] 2661 	mov	r1,dph
      000B76 AA F0            [24] 2662 	mov	r2,b
      000B78 FB               [12] 2663 	mov	r3,a
      000B79 E5 81            [12] 2664 	mov	a,sp
      000B7B 24 FC            [12] 2665 	add	a,#0xfc
      000B7D F5 81            [12] 2666 	mov	sp,a
      000B7F D0 04            [24] 2667 	pop	ar4
      000B81 D0 05            [24] 2668 	pop	ar5
      000B83 D0 06            [24] 2669 	pop	ar6
      000B85 D0 07            [24] 2670 	pop	ar7
      000B87 C0 00            [24] 2671 	push	ar0
      000B89 C0 01            [24] 2672 	push	ar1
      000B8B C0 02            [24] 2673 	push	ar2
      000B8D C0 03            [24] 2674 	push	ar3
      000B8F 8C 82            [24] 2675 	mov	dpl,r4
      000B91 8D 83            [24] 2676 	mov	dph,r5
      000B93 8E F0            [24] 2677 	mov	b,r6
      000B95 EF               [12] 2678 	mov	a,r7
      000B96 12 15 A4         [24] 2679 	lcall	___fsdiv
      000B99 AC 82            [24] 2680 	mov	r4,dpl
      000B9B AD 83            [24] 2681 	mov	r5,dph
      000B9D AE F0            [24] 2682 	mov	r6,b
      000B9F FF               [12] 2683 	mov	r7,a
      000BA0 E5 81            [12] 2684 	mov	a,sp
      000BA2 24 FC            [12] 2685 	add	a,#0xfc
      000BA4 F5 81            [12] 2686 	mov	sp,a
      000BA6 C0 5F            [24] 2687 	push	_gravity
      000BA8 C0 60            [24] 2688 	push	(_gravity + 1)
      000BAA C0 61            [24] 2689 	push	(_gravity + 2)
      000BAC C0 62            [24] 2690 	push	(_gravity + 3)
      000BAE 8C 82            [24] 2691 	mov	dpl,r4
      000BB0 8D 83            [24] 2692 	mov	dph,r5
      000BB2 8E F0            [24] 2693 	mov	b,r6
      000BB4 EF               [12] 2694 	mov	a,r7
      000BB5 12 11 77         [24] 2695 	lcall	___fssub
      000BB8 85 82 73         [24] 2696 	mov	_a,dpl
      000BBB 85 83 74         [24] 2697 	mov	(_a + 1),dph
      000BBE 85 F0 75         [24] 2698 	mov	(_a + 2),b
      000BC1 F5 76            [12] 2699 	mov	(_a + 3),a
      000BC3 E5 81            [12] 2700 	mov	a,sp
      000BC5 24 FC            [12] 2701 	add	a,#0xfc
      000BC7 F5 81            [12] 2702 	mov	sp,a
      000BC9                       2703 00103$:
                                   2704 ;	main.c:875: delta_v = delta_t * a;
      000BC9 C0 73            [24] 2705 	push	_a
      000BCB C0 74            [24] 2706 	push	(_a + 1)
      000BCD C0 75            [24] 2707 	push	(_a + 2)
      000BCF C0 76            [24] 2708 	push	(_a + 3)
      000BD1 85 6F 82         [24] 2709 	mov	dpl,_delta_t
      000BD4 85 70 83         [24] 2710 	mov	dph,(_delta_t + 1)
      000BD7 85 71 F0         [24] 2711 	mov	b,(_delta_t + 2)
      000BDA E5 72            [12] 2712 	mov	a,(_delta_t + 3)
      000BDC 12 12 AE         [24] 2713 	lcall	___fsmul
      000BDF 85 82 67         [24] 2714 	mov	_delta_v,dpl
      000BE2 85 83 68         [24] 2715 	mov	(_delta_v + 1),dph
      000BE5 85 F0 69         [24] 2716 	mov	(_delta_v + 2),b
      000BE8 F5 6A            [12] 2717 	mov	(_delta_v + 3),a
      000BEA E5 81            [12] 2718 	mov	a,sp
      000BEC 24 FC            [12] 2719 	add	a,#0xfc
      000BEE F5 81            [12] 2720 	mov	sp,a
                                   2721 ;	main.c:876: velocity = velocity + delta_v;
      000BF0 C0 67            [24] 2722 	push	_delta_v
      000BF2 C0 68            [24] 2723 	push	(_delta_v + 1)
      000BF4 C0 69            [24] 2724 	push	(_delta_v + 2)
      000BF6 C0 6A            [24] 2725 	push	(_delta_v + 3)
      000BF8 85 4B 82         [24] 2726 	mov	dpl,_velocity
      000BFB 85 4C 83         [24] 2727 	mov	dph,(_velocity + 1)
      000BFE 85 4D F0         [24] 2728 	mov	b,(_velocity + 2)
      000C01 E5 4E            [12] 2729 	mov	a,(_velocity + 3)
      000C03 12 14 4C         [24] 2730 	lcall	___fsadd
      000C06 85 82 4B         [24] 2731 	mov	_velocity,dpl
      000C09 85 83 4C         [24] 2732 	mov	(_velocity + 1),dph
      000C0C 85 F0 4D         [24] 2733 	mov	(_velocity + 2),b
      000C0F F5 4E            [12] 2734 	mov	(_velocity + 3),a
      000C11 E5 81            [12] 2735 	mov	a,sp
      000C13 24 FC            [12] 2736 	add	a,#0xfc
      000C15 F5 81            [12] 2737 	mov	sp,a
                                   2738 ;	main.c:877: delta_h = velocity * delta_t;
      000C17 C0 6F            [24] 2739 	push	_delta_t
      000C19 C0 70            [24] 2740 	push	(_delta_t + 1)
      000C1B C0 71            [24] 2741 	push	(_delta_t + 2)
      000C1D C0 72            [24] 2742 	push	(_delta_t + 3)
      000C1F 85 4B 82         [24] 2743 	mov	dpl,_velocity
      000C22 85 4C 83         [24] 2744 	mov	dph,(_velocity + 1)
      000C25 85 4D F0         [24] 2745 	mov	b,(_velocity + 2)
      000C28 E5 4E            [12] 2746 	mov	a,(_velocity + 3)
      000C2A 12 12 AE         [24] 2747 	lcall	___fsmul
      000C2D 85 82 77         [24] 2748 	mov	_delta_h,dpl
      000C30 85 83 78         [24] 2749 	mov	(_delta_h + 1),dph
      000C33 85 F0 79         [24] 2750 	mov	(_delta_h + 2),b
      000C36 F5 7A            [12] 2751 	mov	(_delta_h + 3),a
      000C38 E5 81            [12] 2752 	mov	a,sp
      000C3A 24 FC            [12] 2753 	add	a,#0xfc
      000C3C F5 81            [12] 2754 	mov	sp,a
                                   2755 ;	main.c:878: height = height + delta_h;
      000C3E C0 77            [24] 2756 	push	_delta_h
      000C40 C0 78            [24] 2757 	push	(_delta_h + 1)
      000C42 C0 79            [24] 2758 	push	(_delta_h + 2)
      000C44 C0 7A            [24] 2759 	push	(_delta_h + 3)
      000C46 85 5B 82         [24] 2760 	mov	dpl,_height
      000C49 85 5C 83         [24] 2761 	mov	dph,(_height + 1)
      000C4C 85 5D F0         [24] 2762 	mov	b,(_height + 2)
      000C4F E5 5E            [12] 2763 	mov	a,(_height + 3)
      000C51 12 14 4C         [24] 2764 	lcall	___fsadd
      000C54 85 82 5B         [24] 2765 	mov	_height,dpl
      000C57 85 83 5C         [24] 2766 	mov	(_height + 1),dph
      000C5A 85 F0 5D         [24] 2767 	mov	(_height + 2),b
      000C5D F5 5E            [12] 2768 	mov	(_height + 3),a
      000C5F E5 81            [12] 2769 	mov	a,sp
      000C61 24 FC            [12] 2770 	add	a,#0xfc
      000C63 F5 81            [12] 2771 	mov	sp,a
                                   2772 ;	main.c:879: if (fuel < 0.1)
      000C65 74 CD            [12] 2773 	mov	a,#0xcd
      000C67 C0 E0            [24] 2774 	push	acc
      000C69 14               [12] 2775 	dec	a
      000C6A C0 E0            [24] 2776 	push	acc
      000C6C C0 E0            [24] 2777 	push	acc
      000C6E 74 3D            [12] 2778 	mov	a,#0x3d
      000C70 C0 E0            [24] 2779 	push	acc
      000C72 85 63 82         [24] 2780 	mov	dpl,_fuel
      000C75 85 64 83         [24] 2781 	mov	dph,(_fuel + 1)
      000C78 85 65 F0         [24] 2782 	mov	b,(_fuel + 2)
      000C7B E5 66            [12] 2783 	mov	a,(_fuel + 3)
      000C7D 12 13 B2         [24] 2784 	lcall	___fslt
      000C80 AF 82            [24] 2785 	mov	r7,dpl
      000C82 E5 81            [12] 2786 	mov	a,sp
      000C84 24 FC            [12] 2787 	add	a,#0xfc
      000C86 F5 81            [12] 2788 	mov	sp,a
      000C88 EF               [12] 2789 	mov	a,r7
      000C89 60 0B            [24] 2790 	jz	00105$
                                   2791 ;	main.c:880: fuel = 0.0;
      000C8B E4               [12] 2792 	clr	a
      000C8C F5 63            [12] 2793 	mov	_fuel,a
      000C8E F5 64            [12] 2794 	mov	(_fuel + 1),a
      000C90 F5 65            [12] 2795 	mov	(_fuel + 2),a
      000C92 F5 66            [12] 2796 	mov	(_fuel + 3),a
      000C94 80 52            [24] 2797 	sjmp	00106$
      000C96                       2798 00105$:
                                   2799 ;	main.c:882: fuel = fuel-(thrust/20000000);
      000C96 74 80            [12] 2800 	mov	a,#0x80
      000C98 C0 E0            [24] 2801 	push	acc
      000C9A 74 96            [12] 2802 	mov	a,#0x96
      000C9C C0 E0            [24] 2803 	push	acc
      000C9E 74 98            [12] 2804 	mov	a,#0x98
      000CA0 C0 E0            [24] 2805 	push	acc
      000CA2 74 4B            [12] 2806 	mov	a,#0x4b
      000CA4 C0 E0            [24] 2807 	push	acc
      000CA6 85 53 82         [24] 2808 	mov	dpl,_thrust
      000CA9 85 54 83         [24] 2809 	mov	dph,(_thrust + 1)
      000CAC 85 55 F0         [24] 2810 	mov	b,(_thrust + 2)
      000CAF E5 56            [12] 2811 	mov	a,(_thrust + 3)
      000CB1 12 15 A4         [24] 2812 	lcall	___fsdiv
      000CB4 AC 82            [24] 2813 	mov	r4,dpl
      000CB6 AD 83            [24] 2814 	mov	r5,dph
      000CB8 AE F0            [24] 2815 	mov	r6,b
      000CBA FF               [12] 2816 	mov	r7,a
      000CBB E5 81            [12] 2817 	mov	a,sp
      000CBD 24 FC            [12] 2818 	add	a,#0xfc
      000CBF F5 81            [12] 2819 	mov	sp,a
      000CC1 C0 04            [24] 2820 	push	ar4
      000CC3 C0 05            [24] 2821 	push	ar5
      000CC5 C0 06            [24] 2822 	push	ar6
      000CC7 C0 07            [24] 2823 	push	ar7
      000CC9 85 63 82         [24] 2824 	mov	dpl,_fuel
      000CCC 85 64 83         [24] 2825 	mov	dph,(_fuel + 1)
      000CCF 85 65 F0         [24] 2826 	mov	b,(_fuel + 2)
      000CD2 E5 66            [12] 2827 	mov	a,(_fuel + 3)
      000CD4 12 11 77         [24] 2828 	lcall	___fssub
      000CD7 85 82 63         [24] 2829 	mov	_fuel,dpl
      000CDA 85 83 64         [24] 2830 	mov	(_fuel + 1),dph
      000CDD 85 F0 65         [24] 2831 	mov	(_fuel + 2),b
      000CE0 F5 66            [12] 2832 	mov	(_fuel + 3),a
      000CE2 E5 81            [12] 2833 	mov	a,sp
      000CE4 24 FC            [12] 2834 	add	a,#0xfc
      000CE6 F5 81            [12] 2835 	mov	sp,a
      000CE8                       2836 00106$:
                                   2837 ;	main.c:885: if (velocity < 0)
      000CE8 E4               [12] 2838 	clr	a
      000CE9 C0 E0            [24] 2839 	push	acc
      000CEB C0 E0            [24] 2840 	push	acc
      000CED C0 E0            [24] 2841 	push	acc
      000CEF C0 E0            [24] 2842 	push	acc
      000CF1 85 4B 82         [24] 2843 	mov	dpl,_velocity
      000CF4 85 4C 83         [24] 2844 	mov	dph,(_velocity + 1)
      000CF7 85 4D F0         [24] 2845 	mov	b,(_velocity + 2)
      000CFA E5 4E            [12] 2846 	mov	a,(_velocity + 3)
      000CFC 12 13 B2         [24] 2847 	lcall	___fslt
      000CFF AF 82            [24] 2848 	mov	r7,dpl
      000D01 E5 81            [12] 2849 	mov	a,sp
      000D03 24 FC            [12] 2850 	add	a,#0xfc
      000D05 F5 81            [12] 2851 	mov	sp,a
      000D07 EF               [12] 2852 	mov	a,r7
      000D08 60 33            [24] 2853 	jz	00108$
                                   2854 ;	main.c:887: digit1_1 = 11;
      000D0A 75 29 0B         [24] 2855 	mov	_digit1_1,#0x0b
                                   2856 ;	main.c:888: number1 = velocity*-10;
      000D0D C0 4B            [24] 2857 	push	_velocity
      000D0F C0 4C            [24] 2858 	push	(_velocity + 1)
      000D11 C0 4D            [24] 2859 	push	(_velocity + 2)
      000D13 C0 4E            [24] 2860 	push	(_velocity + 3)
      000D15 90 00 00         [24] 2861 	mov	dptr,#0x0000
      000D18 75 F0 20         [24] 2862 	mov	b,#0x20
      000D1B 74 C1            [12] 2863 	mov	a,#0xc1
      000D1D 12 12 AE         [24] 2864 	lcall	___fsmul
      000D20 AC 82            [24] 2865 	mov	r4,dpl
      000D22 AD 83            [24] 2866 	mov	r5,dph
      000D24 AE F0            [24] 2867 	mov	r6,b
      000D26 FF               [12] 2868 	mov	r7,a
      000D27 E5 81            [12] 2869 	mov	a,sp
      000D29 24 FC            [12] 2870 	add	a,#0xfc
      000D2B F5 81            [12] 2871 	mov	sp,a
      000D2D 8C 82            [24] 2872 	mov	dpl,r4
      000D2F 8D 83            [24] 2873 	mov	dph,r5
      000D31 8E F0            [24] 2874 	mov	b,r6
      000D33 EF               [12] 2875 	mov	a,r7
      000D34 12 14 FB         [24] 2876 	lcall	___fs2sint
      000D37 AE 82            [24] 2877 	mov	r6,dpl
      000D39 AF 83            [24] 2878 	mov	r7,dph
      000D3B 80 31            [24] 2879 	sjmp	00109$
      000D3D                       2880 00108$:
                                   2881 ;	main.c:892: digit1_1 = 10;
      000D3D 75 29 0A         [24] 2882 	mov	_digit1_1,#0x0a
                                   2883 ;	main.c:893: number1 = velocity*10;
      000D40 C0 4B            [24] 2884 	push	_velocity
      000D42 C0 4C            [24] 2885 	push	(_velocity + 1)
      000D44 C0 4D            [24] 2886 	push	(_velocity + 2)
      000D46 C0 4E            [24] 2887 	push	(_velocity + 3)
      000D48 90 00 00         [24] 2888 	mov	dptr,#0x0000
      000D4B 75 F0 20         [24] 2889 	mov	b,#0x20
      000D4E 74 41            [12] 2890 	mov	a,#0x41
      000D50 12 12 AE         [24] 2891 	lcall	___fsmul
      000D53 AA 82            [24] 2892 	mov	r2,dpl
      000D55 AB 83            [24] 2893 	mov	r3,dph
      000D57 AC F0            [24] 2894 	mov	r4,b
      000D59 FD               [12] 2895 	mov	r5,a
      000D5A E5 81            [12] 2896 	mov	a,sp
      000D5C 24 FC            [12] 2897 	add	a,#0xfc
      000D5E F5 81            [12] 2898 	mov	sp,a
      000D60 8A 82            [24] 2899 	mov	dpl,r2
      000D62 8B 83            [24] 2900 	mov	dph,r3
      000D64 8C F0            [24] 2901 	mov	b,r4
      000D66 ED               [12] 2902 	mov	a,r5
      000D67 12 14 FB         [24] 2903 	lcall	___fs2sint
      000D6A AE 82            [24] 2904 	mov	r6,dpl
      000D6C AF 83            [24] 2905 	mov	r7,dph
      000D6E                       2906 00109$:
                                   2907 ;	main.c:895: if (a < 0)
      000D6E C0 07            [24] 2908 	push	ar7
      000D70 C0 06            [24] 2909 	push	ar6
      000D72 E4               [12] 2910 	clr	a
      000D73 C0 E0            [24] 2911 	push	acc
      000D75 C0 E0            [24] 2912 	push	acc
      000D77 C0 E0            [24] 2913 	push	acc
      000D79 C0 E0            [24] 2914 	push	acc
      000D7B 85 73 82         [24] 2915 	mov	dpl,_a
      000D7E 85 74 83         [24] 2916 	mov	dph,(_a + 1)
      000D81 85 75 F0         [24] 2917 	mov	b,(_a + 2)
      000D84 E5 76            [12] 2918 	mov	a,(_a + 3)
      000D86 12 13 B2         [24] 2919 	lcall	___fslt
      000D89 AD 82            [24] 2920 	mov	r5,dpl
      000D8B E5 81            [12] 2921 	mov	a,sp
      000D8D 24 FC            [12] 2922 	add	a,#0xfc
      000D8F F5 81            [12] 2923 	mov	sp,a
      000D91 D0 06            [24] 2924 	pop	ar6
      000D93 D0 07            [24] 2925 	pop	ar7
      000D95 ED               [12] 2926 	mov	a,r5
      000D96 60 3B            [24] 2927 	jz	00111$
                                   2928 ;	main.c:897: digit2_1 = 11;
      000D98 75 2E 0B         [24] 2929 	mov	_digit2_1,#0x0b
                                   2930 ;	main.c:898: number2 = a*-100;
      000D9B C0 07            [24] 2931 	push	ar7
      000D9D C0 06            [24] 2932 	push	ar6
      000D9F C0 73            [24] 2933 	push	_a
      000DA1 C0 74            [24] 2934 	push	(_a + 1)
      000DA3 C0 75            [24] 2935 	push	(_a + 2)
      000DA5 C0 76            [24] 2936 	push	(_a + 3)
      000DA7 90 00 00         [24] 2937 	mov	dptr,#0x0000
      000DAA 75 F0 C8         [24] 2938 	mov	b,#0xc8
      000DAD 74 C2            [12] 2939 	mov	a,#0xc2
      000DAF 12 12 AE         [24] 2940 	lcall	___fsmul
      000DB2 AA 82            [24] 2941 	mov	r2,dpl
      000DB4 AB 83            [24] 2942 	mov	r3,dph
      000DB6 AC F0            [24] 2943 	mov	r4,b
      000DB8 FD               [12] 2944 	mov	r5,a
      000DB9 E5 81            [12] 2945 	mov	a,sp
      000DBB 24 FC            [12] 2946 	add	a,#0xfc
      000DBD F5 81            [12] 2947 	mov	sp,a
      000DBF 8A 82            [24] 2948 	mov	dpl,r2
      000DC1 8B 83            [24] 2949 	mov	dph,r3
      000DC3 8C F0            [24] 2950 	mov	b,r4
      000DC5 ED               [12] 2951 	mov	a,r5
      000DC6 12 14 FB         [24] 2952 	lcall	___fs2sint
      000DC9 AC 82            [24] 2953 	mov	r4,dpl
      000DCB AD 83            [24] 2954 	mov	r5,dph
      000DCD D0 06            [24] 2955 	pop	ar6
      000DCF D0 07            [24] 2956 	pop	ar7
      000DD1 80 39            [24] 2957 	sjmp	00112$
      000DD3                       2958 00111$:
                                   2959 ;	main.c:902: digit2_1 = 10;
      000DD3 75 2E 0A         [24] 2960 	mov	_digit2_1,#0x0a
                                   2961 ;	main.c:903: number2 = a*100;
      000DD6 C0 07            [24] 2962 	push	ar7
      000DD8 C0 06            [24] 2963 	push	ar6
      000DDA C0 73            [24] 2964 	push	_a
      000DDC C0 74            [24] 2965 	push	(_a + 1)
      000DDE C0 75            [24] 2966 	push	(_a + 2)
      000DE0 C0 76            [24] 2967 	push	(_a + 3)
      000DE2 90 00 00         [24] 2968 	mov	dptr,#0x0000
      000DE5 75 F0 C8         [24] 2969 	mov	b,#0xc8
      000DE8 74 42            [12] 2970 	mov	a,#0x42
      000DEA 12 12 AE         [24] 2971 	lcall	___fsmul
      000DED A8 82            [24] 2972 	mov	r0,dpl
      000DEF A9 83            [24] 2973 	mov	r1,dph
      000DF1 AA F0            [24] 2974 	mov	r2,b
      000DF3 FB               [12] 2975 	mov	r3,a
      000DF4 E5 81            [12] 2976 	mov	a,sp
      000DF6 24 FC            [12] 2977 	add	a,#0xfc
      000DF8 F5 81            [12] 2978 	mov	sp,a
      000DFA 88 82            [24] 2979 	mov	dpl,r0
      000DFC 89 83            [24] 2980 	mov	dph,r1
      000DFE 8A F0            [24] 2981 	mov	b,r2
      000E00 EB               [12] 2982 	mov	a,r3
      000E01 12 14 FB         [24] 2983 	lcall	___fs2sint
      000E04 AC 82            [24] 2984 	mov	r4,dpl
      000E06 AD 83            [24] 2985 	mov	r5,dph
      000E08 D0 06            [24] 2986 	pop	ar6
      000E0A D0 07            [24] 2987 	pop	ar7
      000E0C                       2988 00112$:
                                   2989 ;	main.c:907: int_input = (int) height;
      000E0C 85 5B 82         [24] 2990 	mov	dpl,_height
      000E0F 85 5C 83         [24] 2991 	mov	dph,(_height + 1)
      000E12 85 5D F0         [24] 2992 	mov	b,(_height + 2)
      000E15 E5 5E            [12] 2993 	mov	a,(_height + 3)
      000E17 C0 07            [24] 2994 	push	ar7
      000E19 C0 06            [24] 2995 	push	ar6
      000E1B C0 05            [24] 2996 	push	ar5
      000E1D C0 04            [24] 2997 	push	ar4
      000E1F 12 14 FB         [24] 2998 	lcall	___fs2sint
                                   2999 ;	main.c:909: digit4 = int_input % 10;
      000E22 AA 82            [24] 3000 	mov	r2,dpl
      000E24 AB 83            [24] 3001 	mov	r3,dph
      000E26 75 14 0A         [24] 3002 	mov	__moduint_PARM_2,#0x0a
      000E29 75 15 00         [24] 3003 	mov	(__moduint_PARM_2 + 1),#0x00
      000E2C C0 03            [24] 3004 	push	ar3
      000E2E C0 02            [24] 3005 	push	ar2
      000E30 12 13 FF         [24] 3006 	lcall	__moduint
      000E33 A8 82            [24] 3007 	mov	r0,dpl
      000E35 D0 02            [24] 3008 	pop	ar2
      000E37 D0 03            [24] 3009 	pop	ar3
      000E39 88 28            [24] 3010 	mov	_digit4,r0
                                   3011 ;	main.c:910: b = int_input / 10;
      000E3B 75 14 0A         [24] 3012 	mov	__divuint_PARM_2,#0x0a
      000E3E 75 15 00         [24] 3013 	mov	(__divuint_PARM_2 + 1),#0x00
      000E41 8A 82            [24] 3014 	mov	dpl,r2
      000E43 8B 83            [24] 3015 	mov	dph,r3
      000E45 12 11 82         [24] 3016 	lcall	__divuint
                                   3017 ;	main.c:912: digit3 = b % 10;
      000E48 AA 82            [24] 3018 	mov	r2,dpl
      000E4A AB 83            [24] 3019 	mov	r3,dph
      000E4C 75 14 0A         [24] 3020 	mov	__moduint_PARM_2,#0x0a
      000E4F 75 15 00         [24] 3021 	mov	(__moduint_PARM_2 + 1),#0x00
      000E52 C0 03            [24] 3022 	push	ar3
      000E54 C0 02            [24] 3023 	push	ar2
      000E56 12 13 FF         [24] 3024 	lcall	__moduint
      000E59 A8 82            [24] 3025 	mov	r0,dpl
      000E5B D0 02            [24] 3026 	pop	ar2
      000E5D D0 03            [24] 3027 	pop	ar3
      000E5F 88 27            [24] 3028 	mov	_digit3,r0
                                   3029 ;	main.c:913: b = b / 10;
      000E61 75 14 0A         [24] 3030 	mov	__divuint_PARM_2,#0x0a
      000E64 75 15 00         [24] 3031 	mov	(__divuint_PARM_2 + 1),#0x00
      000E67 8A 82            [24] 3032 	mov	dpl,r2
      000E69 8B 83            [24] 3033 	mov	dph,r3
      000E6B 12 11 82         [24] 3034 	lcall	__divuint
                                   3035 ;	main.c:915: digit2 = b % 10;
      000E6E AA 82            [24] 3036 	mov	r2,dpl
      000E70 AB 83            [24] 3037 	mov	r3,dph
      000E72 75 14 0A         [24] 3038 	mov	__moduint_PARM_2,#0x0a
      000E75 75 15 00         [24] 3039 	mov	(__moduint_PARM_2 + 1),#0x00
      000E78 C0 03            [24] 3040 	push	ar3
      000E7A C0 02            [24] 3041 	push	ar2
      000E7C 12 13 FF         [24] 3042 	lcall	__moduint
      000E7F A8 82            [24] 3043 	mov	r0,dpl
      000E81 D0 02            [24] 3044 	pop	ar2
      000E83 D0 03            [24] 3045 	pop	ar3
      000E85 88 26            [24] 3046 	mov	_digit2,r0
                                   3047 ;	main.c:916: b = b / 10;
      000E87 75 14 0A         [24] 3048 	mov	__divuint_PARM_2,#0x0a
      000E8A 75 15 00         [24] 3049 	mov	(__divuint_PARM_2 + 1),#0x00
      000E8D 8A 82            [24] 3050 	mov	dpl,r2
      000E8F 8B 83            [24] 3051 	mov	dph,r3
      000E91 12 11 82         [24] 3052 	lcall	__divuint
      000E94 AA 82            [24] 3053 	mov	r2,dpl
      000E96 D0 04            [24] 3054 	pop	ar4
      000E98 D0 05            [24] 3055 	pop	ar5
      000E9A D0 06            [24] 3056 	pop	ar6
      000E9C D0 07            [24] 3057 	pop	ar7
                                   3058 ;	main.c:918: digit1 = (int)b;
      000E9E 8A 25            [24] 3059 	mov	_digit1,r2
                                   3060 ;	main.c:921: int_input = (int) (number1);
                                   3061 ;	main.c:923: digit1_5= int_input % 10;
      000EA0 75 14 0A         [24] 3062 	mov	__moduint_PARM_2,#0x0a
      000EA3 75 15 00         [24] 3063 	mov	(__moduint_PARM_2 + 1),#0x00
      000EA6 8E 82            [24] 3064 	mov	dpl,r6
      000EA8 8F 83            [24] 3065 	mov	dph,r7
      000EAA C0 07            [24] 3066 	push	ar7
      000EAC C0 06            [24] 3067 	push	ar6
      000EAE C0 05            [24] 3068 	push	ar5
      000EB0 C0 04            [24] 3069 	push	ar4
      000EB2 12 13 FF         [24] 3070 	lcall	__moduint
      000EB5 AA 82            [24] 3071 	mov	r2,dpl
      000EB7 D0 04            [24] 3072 	pop	ar4
      000EB9 D0 05            [24] 3073 	pop	ar5
      000EBB D0 06            [24] 3074 	pop	ar6
      000EBD D0 07            [24] 3075 	pop	ar7
      000EBF 8A 2D            [24] 3076 	mov	_digit1_5,r2
                                   3077 ;	main.c:924: b = int_input / 10;
      000EC1 75 14 0A         [24] 3078 	mov	__divuint_PARM_2,#0x0a
      000EC4 75 15 00         [24] 3079 	mov	(__divuint_PARM_2 + 1),#0x00
      000EC7 8E 82            [24] 3080 	mov	dpl,r6
      000EC9 8F 83            [24] 3081 	mov	dph,r7
      000ECB C0 05            [24] 3082 	push	ar5
      000ECD C0 04            [24] 3083 	push	ar4
      000ECF 12 11 82         [24] 3084 	lcall	__divuint
      000ED2 AE 82            [24] 3085 	mov	r6,dpl
      000ED4 AF 83            [24] 3086 	mov	r7,dph
      000ED6 D0 04            [24] 3087 	pop	ar4
      000ED8 D0 05            [24] 3088 	pop	ar5
                                   3089 ;	main.c:926: digit1_4 = b % 10;
      000EDA 75 14 0A         [24] 3090 	mov	__moduint_PARM_2,#0x0a
      000EDD 75 15 00         [24] 3091 	mov	(__moduint_PARM_2 + 1),#0x00
      000EE0 8E 82            [24] 3092 	mov	dpl,r6
      000EE2 8F 83            [24] 3093 	mov	dph,r7
      000EE4 C0 07            [24] 3094 	push	ar7
      000EE6 C0 06            [24] 3095 	push	ar6
      000EE8 C0 05            [24] 3096 	push	ar5
      000EEA C0 04            [24] 3097 	push	ar4
      000EEC 12 13 FF         [24] 3098 	lcall	__moduint
      000EEF AA 82            [24] 3099 	mov	r2,dpl
      000EF1 D0 04            [24] 3100 	pop	ar4
      000EF3 D0 05            [24] 3101 	pop	ar5
      000EF5 D0 06            [24] 3102 	pop	ar6
      000EF7 D0 07            [24] 3103 	pop	ar7
      000EF9 8A 2C            [24] 3104 	mov	_digit1_4,r2
                                   3105 ;	main.c:927: b = b / 10;
      000EFB 75 14 0A         [24] 3106 	mov	__divuint_PARM_2,#0x0a
      000EFE 75 15 00         [24] 3107 	mov	(__divuint_PARM_2 + 1),#0x00
      000F01 8E 82            [24] 3108 	mov	dpl,r6
      000F03 8F 83            [24] 3109 	mov	dph,r7
      000F05 C0 05            [24] 3110 	push	ar5
      000F07 C0 04            [24] 3111 	push	ar4
      000F09 12 11 82         [24] 3112 	lcall	__divuint
      000F0C AE 82            [24] 3113 	mov	r6,dpl
      000F0E AF 83            [24] 3114 	mov	r7,dph
      000F10 D0 04            [24] 3115 	pop	ar4
      000F12 D0 05            [24] 3116 	pop	ar5
                                   3117 ;	main.c:929: digit1_3 = b % 10;
      000F14 75 14 0A         [24] 3118 	mov	__moduint_PARM_2,#0x0a
      000F17 75 15 00         [24] 3119 	mov	(__moduint_PARM_2 + 1),#0x00
      000F1A 8E 82            [24] 3120 	mov	dpl,r6
      000F1C 8F 83            [24] 3121 	mov	dph,r7
      000F1E C0 07            [24] 3122 	push	ar7
      000F20 C0 06            [24] 3123 	push	ar6
      000F22 C0 05            [24] 3124 	push	ar5
      000F24 C0 04            [24] 3125 	push	ar4
      000F26 12 13 FF         [24] 3126 	lcall	__moduint
      000F29 AA 82            [24] 3127 	mov	r2,dpl
      000F2B D0 04            [24] 3128 	pop	ar4
      000F2D D0 05            [24] 3129 	pop	ar5
      000F2F D0 06            [24] 3130 	pop	ar6
      000F31 D0 07            [24] 3131 	pop	ar7
      000F33 8A 2B            [24] 3132 	mov	_digit1_3,r2
                                   3133 ;	main.c:930: b = b / 10;
      000F35 75 14 0A         [24] 3134 	mov	__divuint_PARM_2,#0x0a
      000F38 75 15 00         [24] 3135 	mov	(__divuint_PARM_2 + 1),#0x00
      000F3B 8E 82            [24] 3136 	mov	dpl,r6
      000F3D 8F 83            [24] 3137 	mov	dph,r7
      000F3F C0 05            [24] 3138 	push	ar5
      000F41 C0 04            [24] 3139 	push	ar4
      000F43 12 11 82         [24] 3140 	lcall	__divuint
                                   3141 ;	main.c:932: digit1_2 = b % 10;
      000F46 75 14 0A         [24] 3142 	mov	__moduint_PARM_2,#0x0a
      000F49 75 15 00         [24] 3143 	mov	(__moduint_PARM_2 + 1),#0x00
      000F4C 12 13 FF         [24] 3144 	lcall	__moduint
      000F4F AE 82            [24] 3145 	mov	r6,dpl
      000F51 D0 04            [24] 3146 	pop	ar4
      000F53 D0 05            [24] 3147 	pop	ar5
      000F55 8E 2A            [24] 3148 	mov	_digit1_2,r6
                                   3149 ;	main.c:938: int_input = (int) number2;
                                   3150 ;	main.c:940: digit2_6= int_input % 10;
      000F57 75 14 0A         [24] 3151 	mov	__moduint_PARM_2,#0x0a
      000F5A 75 15 00         [24] 3152 	mov	(__moduint_PARM_2 + 1),#0x00
      000F5D 8C 82            [24] 3153 	mov	dpl,r4
      000F5F 8D 83            [24] 3154 	mov	dph,r5
      000F61 C0 05            [24] 3155 	push	ar5
      000F63 C0 04            [24] 3156 	push	ar4
      000F65 12 13 FF         [24] 3157 	lcall	__moduint
      000F68 AE 82            [24] 3158 	mov	r6,dpl
      000F6A D0 04            [24] 3159 	pop	ar4
      000F6C D0 05            [24] 3160 	pop	ar5
      000F6E 8E 33            [24] 3161 	mov	_digit2_6,r6
                                   3162 ;	main.c:941: b = int_input / 10;
      000F70 75 14 0A         [24] 3163 	mov	__divuint_PARM_2,#0x0a
      000F73 75 15 00         [24] 3164 	mov	(__divuint_PARM_2 + 1),#0x00
      000F76 8C 82            [24] 3165 	mov	dpl,r4
      000F78 8D 83            [24] 3166 	mov	dph,r5
      000F7A 12 11 82         [24] 3167 	lcall	__divuint
                                   3168 ;	main.c:943: digit2_5 = b % 10;
      000F7D AE 82            [24] 3169 	mov	r6,dpl
      000F7F AF 83            [24] 3170 	mov	r7,dph
      000F81 75 14 0A         [24] 3171 	mov	__moduint_PARM_2,#0x0a
      000F84 75 15 00         [24] 3172 	mov	(__moduint_PARM_2 + 1),#0x00
      000F87 C0 07            [24] 3173 	push	ar7
      000F89 C0 06            [24] 3174 	push	ar6
      000F8B 12 13 FF         [24] 3175 	lcall	__moduint
      000F8E AC 82            [24] 3176 	mov	r4,dpl
      000F90 D0 06            [24] 3177 	pop	ar6
      000F92 D0 07            [24] 3178 	pop	ar7
      000F94 8C 32            [24] 3179 	mov	_digit2_5,r4
                                   3180 ;	main.c:944: b = b / 10;
      000F96 75 14 0A         [24] 3181 	mov	__divuint_PARM_2,#0x0a
      000F99 75 15 00         [24] 3182 	mov	(__divuint_PARM_2 + 1),#0x00
      000F9C 8E 82            [24] 3183 	mov	dpl,r6
      000F9E 8F 83            [24] 3184 	mov	dph,r7
      000FA0 12 11 82         [24] 3185 	lcall	__divuint
                                   3186 ;	main.c:946: digit2_4 = b % 10;
      000FA3 AE 82            [24] 3187 	mov	r6,dpl
      000FA5 AF 83            [24] 3188 	mov	r7,dph
      000FA7 75 14 0A         [24] 3189 	mov	__moduint_PARM_2,#0x0a
      000FAA 75 15 00         [24] 3190 	mov	(__moduint_PARM_2 + 1),#0x00
      000FAD C0 07            [24] 3191 	push	ar7
      000FAF C0 06            [24] 3192 	push	ar6
      000FB1 12 13 FF         [24] 3193 	lcall	__moduint
      000FB4 AC 82            [24] 3194 	mov	r4,dpl
      000FB6 D0 06            [24] 3195 	pop	ar6
      000FB8 D0 07            [24] 3196 	pop	ar7
      000FBA 8C 31            [24] 3197 	mov	_digit2_4,r4
                                   3198 ;	main.c:947: b = b / 10;
      000FBC 75 14 0A         [24] 3199 	mov	__divuint_PARM_2,#0x0a
      000FBF 75 15 00         [24] 3200 	mov	(__divuint_PARM_2 + 1),#0x00
      000FC2 8E 82            [24] 3201 	mov	dpl,r6
      000FC4 8F 83            [24] 3202 	mov	dph,r7
      000FC6 12 11 82         [24] 3203 	lcall	__divuint
                                   3204 ;	main.c:949: digit2_3 = b % 10;
      000FC9 AE 82            [24] 3205 	mov	r6,dpl
      000FCB AF 83            [24] 3206 	mov	r7,dph
      000FCD 75 14 0A         [24] 3207 	mov	__moduint_PARM_2,#0x0a
      000FD0 75 15 00         [24] 3208 	mov	(__moduint_PARM_2 + 1),#0x00
      000FD3 C0 07            [24] 3209 	push	ar7
      000FD5 C0 06            [24] 3210 	push	ar6
      000FD7 12 13 FF         [24] 3211 	lcall	__moduint
      000FDA AC 82            [24] 3212 	mov	r4,dpl
      000FDC D0 06            [24] 3213 	pop	ar6
      000FDE D0 07            [24] 3214 	pop	ar7
      000FE0 8C 30            [24] 3215 	mov	_digit2_3,r4
                                   3216 ;	main.c:950: b = b / 10;
      000FE2 75 14 0A         [24] 3217 	mov	__divuint_PARM_2,#0x0a
      000FE5 75 15 00         [24] 3218 	mov	(__divuint_PARM_2 + 1),#0x00
      000FE8 8E 82            [24] 3219 	mov	dpl,r6
      000FEA 8F 83            [24] 3220 	mov	dph,r7
      000FEC 12 11 82         [24] 3221 	lcall	__divuint
                                   3222 ;	main.c:952: digit2_2 = b % 10;
      000FEF 75 14 0A         [24] 3223 	mov	__moduint_PARM_2,#0x0a
      000FF2 75 15 00         [24] 3224 	mov	(__moduint_PARM_2 + 1),#0x00
      000FF5 12 13 FF         [24] 3225 	lcall	__moduint
      000FF8 AE 82            [24] 3226 	mov	r6,dpl
      000FFA 8E 2F            [24] 3227 	mov	_digit2_2,r6
                                   3228 ;	main.c:959: int_input = (int) ((fuel/8.2)*100);
      000FFC 74 33            [12] 3229 	mov	a,#0x33
      000FFE C0 E0            [24] 3230 	push	acc
      001000 C0 E0            [24] 3231 	push	acc
      001002 74 03            [12] 3232 	mov	a,#0x03
      001004 C0 E0            [24] 3233 	push	acc
      001006 74 41            [12] 3234 	mov	a,#0x41
      001008 C0 E0            [24] 3235 	push	acc
      00100A 85 63 82         [24] 3236 	mov	dpl,_fuel
      00100D 85 64 83         [24] 3237 	mov	dph,(_fuel + 1)
      001010 85 65 F0         [24] 3238 	mov	b,(_fuel + 2)
      001013 E5 66            [12] 3239 	mov	a,(_fuel + 3)
      001015 12 15 A4         [24] 3240 	lcall	___fsdiv
      001018 AC 82            [24] 3241 	mov	r4,dpl
      00101A AD 83            [24] 3242 	mov	r5,dph
      00101C AE F0            [24] 3243 	mov	r6,b
      00101E FF               [12] 3244 	mov	r7,a
      00101F E5 81            [12] 3245 	mov	a,sp
      001021 24 FC            [12] 3246 	add	a,#0xfc
      001023 F5 81            [12] 3247 	mov	sp,a
      001025 C0 04            [24] 3248 	push	ar4
      001027 C0 05            [24] 3249 	push	ar5
      001029 C0 06            [24] 3250 	push	ar6
      00102B C0 07            [24] 3251 	push	ar7
      00102D 90 00 00         [24] 3252 	mov	dptr,#0x0000
      001030 75 F0 C8         [24] 3253 	mov	b,#0xc8
      001033 74 42            [12] 3254 	mov	a,#0x42
      001035 12 12 AE         [24] 3255 	lcall	___fsmul
      001038 AC 82            [24] 3256 	mov	r4,dpl
      00103A AD 83            [24] 3257 	mov	r5,dph
      00103C AE F0            [24] 3258 	mov	r6,b
      00103E FF               [12] 3259 	mov	r7,a
      00103F E5 81            [12] 3260 	mov	a,sp
      001041 24 FC            [12] 3261 	add	a,#0xfc
      001043 F5 81            [12] 3262 	mov	sp,a
      001045 8C 82            [24] 3263 	mov	dpl,r4
      001047 8D 83            [24] 3264 	mov	dph,r5
      001049 8E F0            [24] 3265 	mov	b,r6
      00104B EF               [12] 3266 	mov	a,r7
      00104C 12 14 FB         [24] 3267 	lcall	___fs2sint
                                   3268 ;	main.c:961: digit3_4 = int_input % 10;
      00104F AE 82            [24] 3269 	mov	r6,dpl
      001051 AF 83            [24] 3270 	mov	r7,dph
      001053 75 14 0A         [24] 3271 	mov	__moduint_PARM_2,#0x0a
      001056 75 15 00         [24] 3272 	mov	(__moduint_PARM_2 + 1),#0x00
      001059 C0 07            [24] 3273 	push	ar7
      00105B C0 06            [24] 3274 	push	ar6
      00105D 12 13 FF         [24] 3275 	lcall	__moduint
      001060 AC 82            [24] 3276 	mov	r4,dpl
      001062 D0 06            [24] 3277 	pop	ar6
      001064 D0 07            [24] 3278 	pop	ar7
      001066 8C 37            [24] 3279 	mov	_digit3_4,r4
                                   3280 ;	main.c:962: b = int_input / 10;
      001068 75 14 0A         [24] 3281 	mov	__divuint_PARM_2,#0x0a
      00106B 75 15 00         [24] 3282 	mov	(__divuint_PARM_2 + 1),#0x00
      00106E 8E 82            [24] 3283 	mov	dpl,r6
      001070 8F 83            [24] 3284 	mov	dph,r7
      001072 12 11 82         [24] 3285 	lcall	__divuint
                                   3286 ;	main.c:964: digit3_3 = b % 10;
      001075 AE 82            [24] 3287 	mov	r6,dpl
      001077 AF 83            [24] 3288 	mov	r7,dph
      001079 75 14 0A         [24] 3289 	mov	__moduint_PARM_2,#0x0a
      00107C 75 15 00         [24] 3290 	mov	(__moduint_PARM_2 + 1),#0x00
      00107F C0 07            [24] 3291 	push	ar7
      001081 C0 06            [24] 3292 	push	ar6
      001083 12 13 FF         [24] 3293 	lcall	__moduint
      001086 AC 82            [24] 3294 	mov	r4,dpl
      001088 D0 06            [24] 3295 	pop	ar6
      00108A D0 07            [24] 3296 	pop	ar7
      00108C 8C 36            [24] 3297 	mov	_digit3_3,r4
                                   3298 ;	main.c:965: b = b / 10;
      00108E 75 14 0A         [24] 3299 	mov	__divuint_PARM_2,#0x0a
      001091 75 15 00         [24] 3300 	mov	(__divuint_PARM_2 + 1),#0x00
      001094 8E 82            [24] 3301 	mov	dpl,r6
      001096 8F 83            [24] 3302 	mov	dph,r7
      001098 12 11 82         [24] 3303 	lcall	__divuint
                                   3304 ;	main.c:967: digit3_2 = b % 10;
      00109B AE 82            [24] 3305 	mov	r6,dpl
      00109D AF 83            [24] 3306 	mov	r7,dph
      00109F 75 14 0A         [24] 3307 	mov	__moduint_PARM_2,#0x0a
      0010A2 75 15 00         [24] 3308 	mov	(__moduint_PARM_2 + 1),#0x00
      0010A5 C0 07            [24] 3309 	push	ar7
      0010A7 C0 06            [24] 3310 	push	ar6
      0010A9 12 13 FF         [24] 3311 	lcall	__moduint
      0010AC AC 82            [24] 3312 	mov	r4,dpl
      0010AE D0 06            [24] 3313 	pop	ar6
      0010B0 D0 07            [24] 3314 	pop	ar7
      0010B2 8C 35            [24] 3315 	mov	_digit3_2,r4
                                   3316 ;	main.c:968: b = b / 10;
      0010B4 75 14 0A         [24] 3317 	mov	__divuint_PARM_2,#0x0a
      0010B7 75 15 00         [24] 3318 	mov	(__divuint_PARM_2 + 1),#0x00
      0010BA 8E 82            [24] 3319 	mov	dpl,r6
      0010BC 8F 83            [24] 3320 	mov	dph,r7
      0010BE 12 11 82         [24] 3321 	lcall	__divuint
                                   3322 ;	main.c:970: digit3_1 = b % 10;
      0010C1 75 14 0A         [24] 3323 	mov	__moduint_PARM_2,#0x0a
      0010C4 75 15 00         [24] 3324 	mov	(__moduint_PARM_2 + 1),#0x00
      0010C7 12 13 FF         [24] 3325 	lcall	__moduint
      0010CA AE 82            [24] 3326 	mov	r6,dpl
      0010CC 8E 34            [24] 3327 	mov	_digit3_1,r6
                                   3328 ;	main.c:971: }
      0010CE D0 D0            [24] 3329 	pop	psw
      0010D0 D0 00            [24] 3330 	pop	(0+0)
      0010D2 D0 01            [24] 3331 	pop	(0+1)
      0010D4 D0 02            [24] 3332 	pop	(0+2)
      0010D6 D0 03            [24] 3333 	pop	(0+3)
      0010D8 D0 04            [24] 3334 	pop	(0+4)
      0010DA D0 05            [24] 3335 	pop	(0+5)
      0010DC D0 06            [24] 3336 	pop	(0+6)
      0010DE D0 07            [24] 3337 	pop	(0+7)
      0010E0 D0 83            [24] 3338 	pop	dph
      0010E2 D0 82            [24] 3339 	pop	dpl
      0010E4 D0 F0            [24] 3340 	pop	b
      0010E6 D0 E0            [24] 3341 	pop	acc
      0010E8 D0 21            [24] 3342 	pop	bits
      0010EA 32               [24] 3343 	reti
                                   3344 ;------------------------------------------------------------
                                   3345 ;Allocation info for local variables in function 'PCA_isr'
                                   3346 ;------------------------------------------------------------
                                   3347 ;	main.c:974: void PCA_isr() __interrupt 7
                                   3348 ;	-----------------------------------------
                                   3349 ;	 function PCA_isr
                                   3350 ;	-----------------------------------------
      0010EB                       3351 _PCA_isr:
      0010EB C0 E0            [24] 3352 	push	acc
      0010ED C0 D0            [24] 3353 	push	psw
                                   3354 ;	main.c:977: CCF0 = 0;                       //Clear interrupt flag
                                   3355 ;	assignBit
      0010EF C2 D8            [12] 3356 	clr	_CCF0
                                   3357 ;	main.c:978: CCAP0L = value;
      0010F1 85 3B EA         [24] 3358 	mov	_CCAP0L,_value
                                   3359 ;	main.c:979: CCAP0H = value >> 8;            //Update compare value
      0010F4 85 3C FA         [24] 3360 	mov	_CCAP0H,(_value + 1)
                                   3361 ;	main.c:980: value += T100Hz;
      0010F7 74 99            [12] 3362 	mov	a,#0x99
      0010F9 25 3B            [12] 3363 	add	a,_value
      0010FB F5 3B            [12] 3364 	mov	_value,a
      0010FD 74 03            [12] 3365 	mov	a,#0x03
      0010FF 35 3C            [12] 3366 	addc	a,(_value + 1)
      001101 F5 3C            [12] 3367 	mov	(_value + 1),a
                                   3368 ;	main.c:981: cnt++;
      001103 05 3D            [12] 3369 	inc	_cnt
      001105 E4               [12] 3370 	clr	a
      001106 B5 3D 02         [24] 3371 	cjne	a,_cnt,00145$
      001109 05 3E            [12] 3372 	inc	(_cnt + 1)
      00110B                       3373 00145$:
                                   3374 ;	main.c:983: if (cnt<300)
      00110B C3               [12] 3375 	clr	c
      00110C E5 3D            [12] 3376 	mov	a,_cnt
      00110E 94 2C            [12] 3377 	subb	a,#0x2c
      001110 E5 3E            [12] 3378 	mov	a,(_cnt + 1)
      001112 94 01            [12] 3379 	subb	a,#0x01
      001114 50 04            [24] 3380 	jnc	00117$
                                   3381 ;	main.c:985: P4_6 = !P4_6;         //Flash once per second
      001116 B2 C6            [12] 3382 	cpl	_P4_6
      001118 80 58            [24] 3383 	sjmp	00119$
      00111A                       3384 00117$:
                                   3385 ;	main.c:987: else if (cnt<600)
      00111A C3               [12] 3386 	clr	c
      00111B E5 3D            [12] 3387 	mov	a,_cnt
      00111D 94 58            [12] 3388 	subb	a,#0x58
      00111F E5 3E            [12] 3389 	mov	a,(_cnt + 1)
      001121 94 02            [12] 3390 	subb	a,#0x02
      001123 50 06            [24] 3391 	jnc	00114$
                                   3392 ;	main.c:989: P4_6 = P4_6;        
                                   3393 ;	assignBit
      001125 A2 C6            [12] 3394 	mov	c,_P4_6
      001127 92 C6            [24] 3395 	mov	_P4_6,c
      001129 80 47            [24] 3396 	sjmp	00119$
      00112B                       3397 00114$:
                                   3398 ;	main.c:991: else if (cnt<900)
      00112B C3               [12] 3399 	clr	c
      00112C E5 3D            [12] 3400 	mov	a,_cnt
      00112E 94 84            [12] 3401 	subb	a,#0x84
      001130 E5 3E            [12] 3402 	mov	a,(_cnt + 1)
      001132 94 03            [12] 3403 	subb	a,#0x03
      001134 50 04            [24] 3404 	jnc	00111$
                                   3405 ;	main.c:993: P4_6 = !P4_6;         //Flash once per second
      001136 B2 C6            [12] 3406 	cpl	_P4_6
      001138 80 38            [24] 3407 	sjmp	00119$
      00113A                       3408 00111$:
                                   3409 ;	main.c:995: else if (cnt<1200)
      00113A C3               [12] 3410 	clr	c
      00113B E5 3D            [12] 3411 	mov	a,_cnt
      00113D 94 B0            [12] 3412 	subb	a,#0xb0
      00113F E5 3E            [12] 3413 	mov	a,(_cnt + 1)
      001141 94 04            [12] 3414 	subb	a,#0x04
      001143 50 06            [24] 3415 	jnc	00108$
                                   3416 ;	main.c:997: P4_6 = P4_6;         
                                   3417 ;	assignBit
      001145 A2 C6            [12] 3418 	mov	c,_P4_6
      001147 92 C6            [24] 3419 	mov	_P4_6,c
      001149 80 27            [24] 3420 	sjmp	00119$
      00114B                       3421 00108$:
                                   3422 ;	main.c:999: else if (cnt<1500)
      00114B C3               [12] 3423 	clr	c
      00114C E5 3D            [12] 3424 	mov	a,_cnt
      00114E 94 DC            [12] 3425 	subb	a,#0xdc
      001150 E5 3E            [12] 3426 	mov	a,(_cnt + 1)
      001152 94 05            [12] 3427 	subb	a,#0x05
      001154 50 04            [24] 3428 	jnc	00105$
                                   3429 ;	main.c:1001: P4_6 = !P4_6;         //Flash once per second
      001156 B2 C6            [12] 3430 	cpl	_P4_6
      001158 80 18            [24] 3431 	sjmp	00119$
      00115A                       3432 00105$:
                                   3433 ;	main.c:1003: else if (cnt<1800)
      00115A C3               [12] 3434 	clr	c
      00115B E5 3D            [12] 3435 	mov	a,_cnt
      00115D 94 08            [12] 3436 	subb	a,#0x08
      00115F E5 3E            [12] 3437 	mov	a,(_cnt + 1)
      001161 94 07            [12] 3438 	subb	a,#0x07
      001163 50 06            [24] 3439 	jnc	00102$
                                   3440 ;	main.c:1005: P4_6 = P4_6;         
                                   3441 ;	assignBit
      001165 A2 C6            [12] 3442 	mov	c,_P4_6
      001167 92 C6            [24] 3443 	mov	_P4_6,c
      001169 80 07            [24] 3444 	sjmp	00119$
      00116B                       3445 00102$:
                                   3446 ;	main.c:1009: cnt = 0;
      00116B E4               [12] 3447 	clr	a
      00116C F5 3D            [12] 3448 	mov	_cnt,a
      00116E F5 3E            [12] 3449 	mov	(_cnt + 1),a
                                   3450 ;	main.c:1010: CR = 0;
                                   3451 ;	assignBit
      001170 C2 DE            [12] 3452 	clr	_CR
      001172                       3453 00119$:
                                   3454 ;	main.c:1012: }
      001172 D0 D0            [24] 3455 	pop	psw
      001174 D0 E0            [24] 3456 	pop	acc
      001176 32               [24] 3457 	reti
                                   3458 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   3459 ;	eliminated unneeded push/pop dpl
                                   3460 ;	eliminated unneeded push/pop dph
                                   3461 ;	eliminated unneeded push/pop b
                                   3462 	.area CSEG    (CODE)
                                   3463 	.area CONST   (CODE)
      001777                       3464 _nums:
      001777 3F                    3465 	.db #0x3f	; 63
      001778 06                    3466 	.db #0x06	; 6
      001779 5B                    3467 	.db #0x5b	; 91
      00177A 4F                    3468 	.db #0x4f	; 79	'O'
      00177B 66                    3469 	.db #0x66	; 102	'f'
      00177C 6D                    3470 	.db #0x6d	; 109	'm'
      00177D 7D                    3471 	.db #0x7d	; 125
      00177E 07                    3472 	.db #0x07	; 7
      00177F 7F                    3473 	.db #0x7f	; 127
      001780 6F                    3474 	.db #0x6f	; 111	'o'
      001781 00                    3475 	.db #0x00	; 0
      001782 40                    3476 	.db #0x40	; 64
      001783                       3477 _win:
      001783 3E 59 6F 75 20 68 61  3478 	.ascii ">You have succcessfully landed on the surface of Mars, resea"
             76 65 20 73 75 63 63
             63 65 73 73 66 75 6C
             6C 79 20 6C 61 6E 64
             65 64 20 6F 6E 20 74
             68 65 20 73 75 72 66
             61 63 65 20 6F 66 20
             4D 61 72 73 2C 20 72
             65 73 65 61
      0017BF 72 63 68 20 77 69 6C  3479 	.ascii "rch will start imeadiately."
             6C 20 73 74 61 72 74
             20 69 6D 65 61 64 69
             61 74 65 6C 79 2E
      0017DA 00                    3480 	.db 0x00
      0017DB                       3481 _lose:
      0017DB 3E 59 6F 75 20 68 61  3482 	.ascii ">You have crashed on the surface of Mars. You are the lone s"
             76 65 20 63 72 61 73
             68 65 64 20 6F 6E 20
             74 68 65 20 73 75 72
             66 61 63 65 20 6F 66
             20 4D 61 72 73 2E 20
             59 6F 75 20 61 72 65
             20 74 68 65 20 6C 6F
             6E 65 20 73
      001817 75 72 76 69 76 6F 72  3483 	.ascii "urvivor of the module. Good luck."
             20 6F 66 20 74 68 65
             20 6D 6F 64 75 6C 65
             2E 20 47 6F 6F 64 20
             6C 75 63 6B 2E
      001838 00                    3484 	.db 0x00
      001839                       3485 _start1:
      001839 3E 5B 31 32 3A 34 33  3486 	.ascii ">[12:43PM Houston]: This is Houston, you have successfully d"
             50 4D 20 48 6F 75 73
             74 6F 6E 5D 3A 20 54
             68 69 73 20 69 73 20
             48 6F 75 73 74 6F 6E
             2C 20 79 6F 75 20 68
             61 76 65 20 73 75 63
             63 65 73 73 66 75 6C
             6C 79 20 64
      001875 65 74 61 63 68 65 64  3487 	.ascii "etached from Command Module. Over >[12:43PM You]: Copy that."
             20 66 72 6F 6D 20 43
             6F 6D 6D 61 6E 64 20
             4D 6F 64 75 6C 65 2E
             20 4F 76 65 72 20 3E
             5B 31 32 3A 34 33 50
             4D 20 59 6F 75 5D 3A
             20 43 6F 70 79 20 74
             68 61 74 2E
      0018B1 20 41 77 61 69 74 69  3488 	.ascii " Awaiting manual engine control initiation. Over >[12:45PM Y"
             6E 67 20 6D 61 6E 75
             61 6C 20 65 6E 67 69
             6E 65 20 63 6F 6E 74
             72 6F 6C 20 69 6E 69
             74 69 61 74 69 6F 6E
             2E 20 4F 76 65 72 20
             3E 5B 31 32 3A 34 35
             50 4D 20 59
      0018ED 6F 75 5D 3A 20 43 6F  3489 	.ascii "ou]: Come in Houston, engine control to manual. Initiating l"
             6D 65 20 69 6E 20 48
             6F 75 73 74 6F 6E 2C
             20 65 6E 67 69 6E 65
             20 63 6F 6E 74 72 6F
             6C 20 74 6F 20 6D 61
             6E 75 61 6C 2E 20 49
             6E 69 74 69 61 74 69
             6E 67 20 6C
      001929 61 6E 64 69 6E 67 20  3490 	.ascii "anding procedure >[12:46PM Houston]: Statistic report on Lan"
             70 72 6F 63 65 64 75
             72 65 20 3E 5B 31 32
             3A 34 36 50 4D 20 48
             6F 75 73 74 6F 6E 5D
             3A 20 53 74 61 74 69
             73 74 69 63 20 72 65
             70 6F 72 74 20 6F 6E
             20 4C 61 6E
      001965 64 69 6E 67 20 4D 6F  3491 	.ascii "ding Module. Awaiting >[12:46PM You]:We have full control of"
             64 75 6C 65 2E 20 41
             77 61 69 74 69 6E 67
             20 3E 5B 31 32 3A 34
             36 50 4D 20 59 6F 75
             5D 3A 57 65 20 68 61
             76 65 20 66 75 6C 6C
             20 63 6F 6E 74 72 6F
             6C 20 6F 66
      0019A1 20 74 68 65 20 6D 6F  3492 	.ascii " the module. Fuel is at 99%. Ship integrity is at 100%. Heig"
             64 75 6C 65 2E 20 46
             75 65 6C 20 69 73 20
             61 74 20 39 39 25 2E
             20 53 68 69 70 20 69
             6E 74 65 67 72 69 74
             79 20 69 73 20 61 74
             20 31 30 30 25 2E 20
             48 65 69 67
      0019DD 68 74 20 61 74 20 31  3493 	.ascii "ht at 1005 meters above the surface. Over >[12:47PM Houston]"
             30 30 35 20 6D 65 74
             65 72 73 20 61 62 6F
             76 65 20 74 68 65 20
             73 75 72 66 61 63 65
             2E 20 4F 76 65 72 20
             3E 5B 31 32 3A 34 37
             50 4D 20 48 6F 75 73
             74 6F 6E 5D
      001A19 3A 20 43 6F 70 79 20  3494 	.ascii ": Copy that, you are go for landing. Good luck, this mission"
             74 68 61 74 2C 20 79
             6F 75 20 61 72 65 20
             67 6F 20 66 6F 72 20
             6C 61 6E 64 69 6E 67
             2E 20 47 6F 6F 64 20
             6C 75 63 6B 2C 20 74
             68 69 73 20 6D 69 73
             73 69 6F 6E
      001A55 20 64 65 70 65 6E 64  3495 	.ascii " depends on you."
             73 20 6F 6E 20 79 6F
             75 2E
      001A65 00                    3496 	.db 0x00
      001A66                       3497 _engine1:
      001A66 3E 5B 4D 6F 64 75 6C  3498 	.ascii ">[Module Intercom] Commander, our engines are overheating. T"
             65 20 49 6E 74 65 72
             63 6F 6D 5D 20 43 6F
             6D 6D 61 6E 64 65 72
             2C 20 6F 75 72 20 65
             6E 67 69 6E 65 73 20
             61 72 65 20 6F 76 65
             72 68 65 61 74 69 6E
             67 2E 20 54
      001AA2 68 65 79 20 61 72 65  3499 	.ascii "hey are experiencing damage, engine thrust decreases by 10 p"
             20 65 78 70 65 72 69
             65 6E 63 69 6E 67 20
             64 61 6D 61 67 65 2C
             20 65 6E 67 69 6E 65
             20 74 68 72 75 73 74
             20 64 65 63 72 65 61
             73 65 73 20 62 79 20
             31 30 20 70
      001ADE 65 72 63 65 6E 74 2E  3500 	.ascii "ercent."
      001AE5 00                    3501 	.db 0x00
      001AE6                       3502 _turb1:
      001AE6 3E 5B 48 6F 75 73 74  3503 	.ascii ">[Houston Misson Control]: Come in Artemis. We have detected"
             6F 6E 20 4D 69 73 73
             6F 6E 20 43 6F 6E 74
             72 6F 6C 5D 3A 20 43
             6F 6D 65 20 69 6E 20
             41 72 74 65 6D 69 73
             2E 20 57 65 20 68 61
             76 65 20 64 65 74 65
             63 74 65 64
      001B22 20 61 20 6C 65 76 65  3504 	.ascii " a level 2 sandstorm heading west at 83 m/s. Estimated impac"
             6C 20 32 20 73 61 6E
             64 73 74 6F 72 6D 20
             68 65 61 64 69 6E 67
             20 77 65 73 74 20 61
             74 20 38 33 20 6D 2F
             73 2E 20 45 73 74 69
             6D 61 74 65 64 20 69
             6D 70 61 63
      001B5E 74 20 74 69 6D 65 20  3505 	.ascii "t time is unknown. Prepare imediately. I repeat prepare imed"
             69 73 20 75 6E 6B 6E
             6F 77 6E 2E 20 50 72
             65 70 61 72 65 20 69
             6D 65 64 69 61 74 65
             6C 79 2E 20 49 20 72
             65 70 65 61 74 20 70
             72 65 70 61 72 65 20
             69 6D 65 64
      001B9A 69 61 74 65 6C 79 21  3506 	.ascii "iately!"
      001BA1 00                    3507 	.db 0x00
      001BA2                       3508 _turb2:
      001BA2 3E 5B 59 6F 75 5D 3A  3509 	.ascii ">[You]: Come in Houston. We have full impact, our accelerati"
             20 43 6F 6D 65 20 69
             6E 20 48 6F 75 73 74
             6F 6E 2E 20 57 65 20
             68 61 76 65 20 66 75
             6C 6C 20 69 6D 70 61
             63 74 2C 20 6F 75 72
             20 61 63 63 65 6C 65
             72 61 74 69
      001BDE 6F 6E 20 69 73 20 66  3510 	.ascii "on is fluctuating rapidily"
             6C 75 63 74 75 61 74
             69 6E 67 20 72 61 70
             69 64 69 6C 79
      001BF8 00                    3511 	.db 0x00
      001BF9                       3512 _turb3:
      001BF9 3E 5B 59 6F 75 5D 3A  3513 	.ascii ">[You]: Come in Houston. We are out of the sandstorm. There "
             20 43 6F 6D 65 20 69
             6E 20 48 6F 75 73 74
             6F 6E 2E 20 57 65 20
             61 72 65 20 6F 75 74
             20 6F 66 20 74 68 65
             20 73 61 6E 64 73 74
             6F 72 6D 2E 20 54 68
             65 72 65 20
      001C35 73 65 65 6D 73 20 74  3514 	.ascii "seems to be only minor damages."
             6F 20 62 65 20 6F 6E
             6C 79 20 6D 69 6E 6F
             72 20 64 61 6D 61 67
             65 73 2E
      001C54 00                    3515 	.db 0x00
      001C55                       3516 _leak1:
      001C55 3E 5B 4D 6F 64 75 6C  3517 	.ascii ">[Module Intercom] Commander, we have detected a fuel leak o"
             65 20 49 6E 74 65 72
             63 6F 6D 5D 20 43 6F
             6D 6D 61 6E 64 65 72
             2C 20 77 65 20 68 61
             76 65 20 64 65 74 65
             63 74 65 64 20 61 20
             66 75 65 6C 20 6C 65
             61 6B 20 6F
      001C91 6E 20 74 68 65 20 73  3518 	.ascii "n the side of the module. Fuel is decreasing rapidly. There "
             69 64 65 20 6F 66 20
             74 68 65 20 6D 6F 64
             75 6C 65 2E 20 46 75
             65 6C 20 69 73 20 64
             65 63 72 65 61 73 69
             6E 67 20 72 61 70 69
             64 6C 79 2E 20 54 68
             65 72 65 20
      001CCD 69 73 20 6E 6F 20 63  3519 	.ascii "is no current way of fixing it"
             75 72 72 65 6E 74 20
             77 61 79 20 6F 66 20
             66 69 78 69 6E 67 20
             69 74
      001CEB 00                    3520 	.db 0x00
      001CEC                       3521 _vel1:
      001CEC 3E 5B 4D 6F 64 75 6C  3522 	.ascii ">[Module Intercom] Commander, our velocity is too high. We a"
             65 20 49 6E 74 65 72
             63 6F 6D 5D 20 43 6F
             6D 6D 61 6E 64 65 72
             2C 20 6F 75 72 20 76
             65 6C 6F 63 69 74 79
             20 69 73 20 74 6F 6F
             20 68 69 67 68 2E 20
             57 65 20 61
      001D28 72 65 20 65 78 70 65  3523 	.ascii "re experiencing damage to the module."
             72 69 65 6E 63 69 6E
             67 20 64 61 6D 61 67
             65 20 74 6F 20 74 68
             65 20 6D 6F 64 75 6C
             65 2E
      001D4D 00                    3524 	.db 0x00
      001D4E                       3525 _disp:
      001D4E 3E 5B 4D 6F 64 75 6C  3526 	.ascii ">[Module Intercom] Commander, our display circuitry is encon"
             65 20 49 6E 74 65 72
             63 6F 6D 5D 20 43 6F
             6D 6D 61 6E 64 65 72
             2C 20 6F 75 72 20 64
             69 73 70 6C 61 79 20
             63 69 72 63 75 69 74
             72 79 20 69 73 20 65
             6E 63 6F 6E
      001D8A 74 65 72 69 6E 67 20  3527 	.ascii "tering problems. The acceleration and fuel displays are brok"
             70 72 6F 62 6C 65 6D
             73 2E 20 54 68 65 20
             61 63 63 65 6C 65 72
             61 74 69 6F 6E 20 61
             6E 64 20 66 75 65 6C
             20 64 69 73 70 6C 61
             79 73 20 61 72 65 20
             62 72 6F 6B
      001DC6 65 6E 2E              3528 	.ascii "en."
      001DC9 00                    3529 	.db 0x00
      001DCA                       3530 _ship_mass:
      001DCA 00 20 4B 46           3531 	.byte #0x00,#0x20,#0x4b,#0x46	;  1.300000e+04
      001DCE                       3532 ___str_0:
      001DCE 68 65 6C 6C 6F        3533 	.ascii "hello"
      001DD3 00                    3534 	.db 0x00
      001DD4                       3535 ___str_1:
      001DD4 62 79 65 62 79 65     3536 	.ascii "byebye"
      001DDA 00                    3537 	.db 0x00
                                   3538 	.area XINIT   (CODE)
                                   3539 	.area CABS    (ABS,CODE)
