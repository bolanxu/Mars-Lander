                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Sat Mar 11 13:47:00 2023
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _emb2
                                     13 	.globl _emb1
                                     14 	.globl _em3
                                     15 	.globl _em2
                                     16 	.globl _em1
                                     17 	.globl _leak3
                                     18 	.globl _leak2
                                     19 	.globl _leak1
                                     20 	.globl _turb3
                                     21 	.globl _turb2
                                     22 	.globl _turb1
                                     23 	.globl _enginep5
                                     24 	.globl _enginep4
                                     25 	.globl _enginep3
                                     26 	.globl _enginep2
                                     27 	.globl _enginep1
                                     28 	.globl _start11
                                     29 	.globl _start10
                                     30 	.globl _start9
                                     31 	.globl _start8
                                     32 	.globl _start7
                                     33 	.globl _start6
                                     34 	.globl _start5
                                     35 	.globl _start4
                                     36 	.globl _start3
                                     37 	.globl _start2
                                     38 	.globl _start1
                                     39 	.globl _gameover
                                     40 	.globl _lose
                                     41 	.globl _win
                                     42 	.globl _timer1
                                     43 	.globl _INT0_INT
                                     44 	.globl _timer0
                                     45 	.globl _main
                                     46 	.globl _enginepower
                                     47 	.globl _turb
                                     48 	.globl _fuelleak
                                     49 	.globl _start
                                     50 	.globl _init
                                     51 	.globl _write_data
                                     52 	.globl _write_com
                                     53 	.globl _delay
                                     54 	.globl _Timer0Init
                                     55 	.globl _CY
                                     56 	.globl _AC
                                     57 	.globl _F0
                                     58 	.globl _RS1
                                     59 	.globl _RS0
                                     60 	.globl _OV
                                     61 	.globl _FL
                                     62 	.globl _P
                                     63 	.globl _TF2
                                     64 	.globl _EXF2
                                     65 	.globl _RCLK
                                     66 	.globl _TCLK
                                     67 	.globl _EXEN2
                                     68 	.globl _TR2
                                     69 	.globl _C_T2
                                     70 	.globl _CP_RL2
                                     71 	.globl _T2CON_7
                                     72 	.globl _T2CON_6
                                     73 	.globl _T2CON_5
                                     74 	.globl _T2CON_4
                                     75 	.globl _T2CON_3
                                     76 	.globl _T2CON_2
                                     77 	.globl _T2CON_1
                                     78 	.globl _T2CON_0
                                     79 	.globl _PT2
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _RD
                                     86 	.globl _WR
                                     87 	.globl _T1
                                     88 	.globl _T0
                                     89 	.globl _INT1
                                     90 	.globl _INT0
                                     91 	.globl _TXD
                                     92 	.globl _RXD
                                     93 	.globl _P3_7
                                     94 	.globl _P3_6
                                     95 	.globl _P3_5
                                     96 	.globl _P3_4
                                     97 	.globl _P3_3
                                     98 	.globl _P3_2
                                     99 	.globl _P3_1
                                    100 	.globl _P3_0
                                    101 	.globl _EA
                                    102 	.globl _ET2
                                    103 	.globl _ES
                                    104 	.globl _ET1
                                    105 	.globl _EX1
                                    106 	.globl _ET0
                                    107 	.globl _EX0
                                    108 	.globl _P2_7
                                    109 	.globl _P2_6
                                    110 	.globl _P2_5
                                    111 	.globl _P2_4
                                    112 	.globl _P2_3
                                    113 	.globl _P2_2
                                    114 	.globl _P2_1
                                    115 	.globl _P2_0
                                    116 	.globl _SM0
                                    117 	.globl _SM1
                                    118 	.globl _SM2
                                    119 	.globl _REN
                                    120 	.globl _TB8
                                    121 	.globl _RB8
                                    122 	.globl _TI
                                    123 	.globl _RI
                                    124 	.globl _T2EX
                                    125 	.globl _T2
                                    126 	.globl _P1_7
                                    127 	.globl _P1_6
                                    128 	.globl _P1_5
                                    129 	.globl _P1_4
                                    130 	.globl _P1_3
                                    131 	.globl _P1_2
                                    132 	.globl _P1_1
                                    133 	.globl _P1_0
                                    134 	.globl _TF1
                                    135 	.globl _TR1
                                    136 	.globl _TF0
                                    137 	.globl _TR0
                                    138 	.globl _IE1
                                    139 	.globl _IT1
                                    140 	.globl _IE0
                                    141 	.globl _IT0
                                    142 	.globl _P0_7
                                    143 	.globl _P0_6
                                    144 	.globl _P0_5
                                    145 	.globl _P0_4
                                    146 	.globl _P0_3
                                    147 	.globl _P0_2
                                    148 	.globl _P0_1
                                    149 	.globl _P0_0
                                    150 	.globl _B
                                    151 	.globl _A
                                    152 	.globl _ACC
                                    153 	.globl _PSW
                                    154 	.globl _TH2
                                    155 	.globl _TL2
                                    156 	.globl _RCAP2H
                                    157 	.globl _RCAP2L
                                    158 	.globl _T2MOD
                                    159 	.globl _T2CON
                                    160 	.globl _IP
                                    161 	.globl _P3
                                    162 	.globl _IE
                                    163 	.globl _P2
                                    164 	.globl _SBUF
                                    165 	.globl _SCON
                                    166 	.globl _P1
                                    167 	.globl _TH1
                                    168 	.globl _TH0
                                    169 	.globl _TL1
                                    170 	.globl _TL0
                                    171 	.globl _TMOD
                                    172 	.globl _TCON
                                    173 	.globl _PCON
                                    174 	.globl _DPH
                                    175 	.globl _DPL
                                    176 	.globl _SP
                                    177 	.globl _P0
                                    178 	.globl _l
                                    179 	.globl _s
                                    180 	.globl _n
                                    181 	.globl _x
                                    182 	.globl _digit4
                                    183 	.globl _digit3
                                    184 	.globl _digit2
                                    185 	.globl _digit1
                                    186 	.globl _delta_h
                                    187 	.globl _a
                                    188 	.globl _delta_t
                                    189 	.globl _delta_d
                                    190 	.globl _delta_v
                                    191 	.globl _fuel
                                    192 	.globl _gravity
                                    193 	.globl _height
                                    194 	.globl _ship_mass
                                    195 	.globl _ship_thrust
                                    196 	.globl _thrust
                                    197 	.globl _velocity
                                    198 	.globl _num
                                    199 	.globl _digit
                                    200 	.globl _sign
                                    201 	.globl _displaynum
                                    202 ;--------------------------------------------------------
                                    203 ; special function registers
                                    204 ;--------------------------------------------------------
                                    205 	.area RSEG    (ABS,DATA)
      000000                        206 	.org 0x0000
                           000080   207 _P0	=	0x0080
                           000081   208 _SP	=	0x0081
                           000082   209 _DPL	=	0x0082
                           000083   210 _DPH	=	0x0083
                           000087   211 _PCON	=	0x0087
                           000088   212 _TCON	=	0x0088
                           000089   213 _TMOD	=	0x0089
                           00008A   214 _TL0	=	0x008a
                           00008B   215 _TL1	=	0x008b
                           00008C   216 _TH0	=	0x008c
                           00008D   217 _TH1	=	0x008d
                           000090   218 _P1	=	0x0090
                           000098   219 _SCON	=	0x0098
                           000099   220 _SBUF	=	0x0099
                           0000A0   221 _P2	=	0x00a0
                           0000A8   222 _IE	=	0x00a8
                           0000B0   223 _P3	=	0x00b0
                           0000B8   224 _IP	=	0x00b8
                           0000C8   225 _T2CON	=	0x00c8
                           0000C9   226 _T2MOD	=	0x00c9
                           0000CA   227 _RCAP2L	=	0x00ca
                           0000CB   228 _RCAP2H	=	0x00cb
                           0000CC   229 _TL2	=	0x00cc
                           0000CD   230 _TH2	=	0x00cd
                           0000D0   231 _PSW	=	0x00d0
                           0000E0   232 _ACC	=	0x00e0
                           0000E0   233 _A	=	0x00e0
                           0000F0   234 _B	=	0x00f0
                                    235 ;--------------------------------------------------------
                                    236 ; special function bits
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           000080   240 _P0_0	=	0x0080
                           000081   241 _P0_1	=	0x0081
                           000082   242 _P0_2	=	0x0082
                           000083   243 _P0_3	=	0x0083
                           000084   244 _P0_4	=	0x0084
                           000085   245 _P0_5	=	0x0085
                           000086   246 _P0_6	=	0x0086
                           000087   247 _P0_7	=	0x0087
                           000088   248 _IT0	=	0x0088
                           000089   249 _IE0	=	0x0089
                           00008A   250 _IT1	=	0x008a
                           00008B   251 _IE1	=	0x008b
                           00008C   252 _TR0	=	0x008c
                           00008D   253 _TF0	=	0x008d
                           00008E   254 _TR1	=	0x008e
                           00008F   255 _TF1	=	0x008f
                           000090   256 _P1_0	=	0x0090
                           000091   257 _P1_1	=	0x0091
                           000092   258 _P1_2	=	0x0092
                           000093   259 _P1_3	=	0x0093
                           000094   260 _P1_4	=	0x0094
                           000095   261 _P1_5	=	0x0095
                           000096   262 _P1_6	=	0x0096
                           000097   263 _P1_7	=	0x0097
                           000090   264 _T2	=	0x0090
                           000091   265 _T2EX	=	0x0091
                           000098   266 _RI	=	0x0098
                           000099   267 _TI	=	0x0099
                           00009A   268 _RB8	=	0x009a
                           00009B   269 _TB8	=	0x009b
                           00009C   270 _REN	=	0x009c
                           00009D   271 _SM2	=	0x009d
                           00009E   272 _SM1	=	0x009e
                           00009F   273 _SM0	=	0x009f
                           0000A0   274 _P2_0	=	0x00a0
                           0000A1   275 _P2_1	=	0x00a1
                           0000A2   276 _P2_2	=	0x00a2
                           0000A3   277 _P2_3	=	0x00a3
                           0000A4   278 _P2_4	=	0x00a4
                           0000A5   279 _P2_5	=	0x00a5
                           0000A6   280 _P2_6	=	0x00a6
                           0000A7   281 _P2_7	=	0x00a7
                           0000A8   282 _EX0	=	0x00a8
                           0000A9   283 _ET0	=	0x00a9
                           0000AA   284 _EX1	=	0x00aa
                           0000AB   285 _ET1	=	0x00ab
                           0000AC   286 _ES	=	0x00ac
                           0000AD   287 _ET2	=	0x00ad
                           0000AF   288 _EA	=	0x00af
                           0000B0   289 _P3_0	=	0x00b0
                           0000B1   290 _P3_1	=	0x00b1
                           0000B2   291 _P3_2	=	0x00b2
                           0000B3   292 _P3_3	=	0x00b3
                           0000B4   293 _P3_4	=	0x00b4
                           0000B5   294 _P3_5	=	0x00b5
                           0000B6   295 _P3_6	=	0x00b6
                           0000B7   296 _P3_7	=	0x00b7
                           0000B0   297 _RXD	=	0x00b0
                           0000B1   298 _TXD	=	0x00b1
                           0000B2   299 _INT0	=	0x00b2
                           0000B3   300 _INT1	=	0x00b3
                           0000B4   301 _T0	=	0x00b4
                           0000B5   302 _T1	=	0x00b5
                           0000B6   303 _WR	=	0x00b6
                           0000B7   304 _RD	=	0x00b7
                           0000B8   305 _PX0	=	0x00b8
                           0000B9   306 _PT0	=	0x00b9
                           0000BA   307 _PX1	=	0x00ba
                           0000BB   308 _PT1	=	0x00bb
                           0000BC   309 _PS	=	0x00bc
                           0000BD   310 _PT2	=	0x00bd
                           0000C8   311 _T2CON_0	=	0x00c8
                           0000C9   312 _T2CON_1	=	0x00c9
                           0000CA   313 _T2CON_2	=	0x00ca
                           0000CB   314 _T2CON_3	=	0x00cb
                           0000CC   315 _T2CON_4	=	0x00cc
                           0000CD   316 _T2CON_5	=	0x00cd
                           0000CE   317 _T2CON_6	=	0x00ce
                           0000CF   318 _T2CON_7	=	0x00cf
                           0000C8   319 _CP_RL2	=	0x00c8
                           0000C9   320 _C_T2	=	0x00c9
                           0000CA   321 _TR2	=	0x00ca
                           0000CB   322 _EXEN2	=	0x00cb
                           0000CC   323 _TCLK	=	0x00cc
                           0000CD   324 _RCLK	=	0x00cd
                           0000CE   325 _EXF2	=	0x00ce
                           0000CF   326 _TF2	=	0x00cf
                           0000D0   327 _P	=	0x00d0
                           0000D1   328 _FL	=	0x00d1
                           0000D2   329 _OV	=	0x00d2
                           0000D3   330 _RS0	=	0x00d3
                           0000D4   331 _RS1	=	0x00d4
                           0000D5   332 _F0	=	0x00d5
                           0000D6   333 _AC	=	0x00d6
                           0000D7   334 _CY	=	0x00d7
                                    335 ;--------------------------------------------------------
                                    336 ; overlayable register banks
                                    337 ;--------------------------------------------------------
                                    338 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        339 	.ds 8
                                    340 ;--------------------------------------------------------
                                    341 ; overlayable bit register bank
                                    342 ;--------------------------------------------------------
                                    343 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        344 bits:
      000021                        345 	.ds 1
                           008000   346 	b0 = bits[0]
                           008100   347 	b1 = bits[1]
                           008200   348 	b2 = bits[2]
                           008300   349 	b3 = bits[3]
                           008400   350 	b4 = bits[4]
                           008500   351 	b5 = bits[5]
                           008600   352 	b6 = bits[6]
                           008700   353 	b7 = bits[7]
                                    354 ;--------------------------------------------------------
                                    355 ; internal ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area DSEG    (DATA)
      000022                        358 _num::
      000022                        359 	.ds 1
      000023                        360 _velocity::
      000023                        361 	.ds 4
      000027                        362 _thrust::
      000027                        363 	.ds 4
      00002B                        364 _ship_thrust::
      00002B                        365 	.ds 4
      00002F                        366 _ship_mass::
      00002F                        367 	.ds 4
      000033                        368 _height::
      000033                        369 	.ds 4
      000037                        370 _gravity::
      000037                        371 	.ds 4
      00003B                        372 _fuel::
      00003B                        373 	.ds 4
      00003F                        374 _delta_v::
      00003F                        375 	.ds 4
      000043                        376 _delta_d::
      000043                        377 	.ds 4
      000047                        378 _delta_t::
      000047                        379 	.ds 4
      00004B                        380 _a::
      00004B                        381 	.ds 4
      00004F                        382 _delta_h::
      00004F                        383 	.ds 4
      000053                        384 _digit1::
      000053                        385 	.ds 1
      000054                        386 _digit2::
      000054                        387 	.ds 1
      000055                        388 _digit3::
      000055                        389 	.ds 1
      000056                        390 _digit4::
      000056                        391 	.ds 1
      000057                        392 _x::
      000057                        393 	.ds 2
      000059                        394 _n::
      000059                        395 	.ds 2
      00005B                        396 _s::
      00005B                        397 	.ds 2
                                    398 ;--------------------------------------------------------
                                    399 ; overlayable items in internal ram 
                                    400 ;--------------------------------------------------------
                                    401 	.area	OSEG    (OVR,DATA)
                                    402 ;--------------------------------------------------------
                                    403 ; Stack segment in internal ram 
                                    404 ;--------------------------------------------------------
                                    405 	.area	SSEG
      00005D                        406 __start__stack:
      00005D                        407 	.ds	1
                                    408 
                                    409 ;--------------------------------------------------------
                                    410 ; indirectly addressable internal ram data
                                    411 ;--------------------------------------------------------
                                    412 	.area ISEG    (DATA)
                                    413 ;--------------------------------------------------------
                                    414 ; absolute internal ram data
                                    415 ;--------------------------------------------------------
                                    416 	.area IABS    (ABS,DATA)
                                    417 	.area IABS    (ABS,DATA)
                                    418 ;--------------------------------------------------------
                                    419 ; bit data
                                    420 ;--------------------------------------------------------
                                    421 	.area BSEG    (BIT)
      000000                        422 _l::
      000000                        423 	.ds 1
                                    424 ;--------------------------------------------------------
                                    425 ; paged external ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area PSEG    (PAG,XDATA)
                                    428 ;--------------------------------------------------------
                                    429 ; external ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area XSEG    (XDATA)
                                    432 ;--------------------------------------------------------
                                    433 ; absolute external ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area XABS    (ABS,XDATA)
                                    436 ;--------------------------------------------------------
                                    437 ; external initialized ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area XISEG   (XDATA)
                                    440 	.area HOME    (CODE)
                                    441 	.area GSINIT0 (CODE)
                                    442 	.area GSINIT1 (CODE)
                                    443 	.area GSINIT2 (CODE)
                                    444 	.area GSINIT3 (CODE)
                                    445 	.area GSINIT4 (CODE)
                                    446 	.area GSINIT5 (CODE)
                                    447 	.area GSINIT  (CODE)
                                    448 	.area GSFINAL (CODE)
                                    449 	.area CSEG    (CODE)
                                    450 ;--------------------------------------------------------
                                    451 ; interrupt vector 
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
      000000                        454 __interrupt_vect:
      000000 02 00 21         [24]  455 	ljmp	__sdcc_gsinit_startup
      000003 02 0A FE         [24]  456 	ljmp	_INT0_INT
      000006                        457 	.ds	5
      00000B 02 09 8D         [24]  458 	ljmp	_timer0
      00000E                        459 	.ds	5
      000013 32               [24]  460 	reti
      000014                        461 	.ds	7
      00001B 02 0B 84         [24]  462 	ljmp	_timer1
                                    463 ;--------------------------------------------------------
                                    464 ; global & static initialisations
                                    465 ;--------------------------------------------------------
                                    466 	.area HOME    (CODE)
                                    467 	.area GSINIT  (CODE)
                                    468 	.area GSFINAL (CODE)
                                    469 	.area GSINIT  (CODE)
                                    470 	.globl __sdcc_gsinit_startup
                                    471 	.globl __sdcc_program_startup
                                    472 	.globl __start__stack
                                    473 	.globl __mcs51_genXINIT
                                    474 	.globl __mcs51_genXRAMCLEAR
                                    475 	.globl __mcs51_genRAMCLEAR
                                    476 ;	main.c:9: unsigned char num=0;
      00007A 75 22 00         [24]  477 	mov	_num,#0x00
                                    478 ;	main.c:48: float velocity = 0.0;
      00007D E4               [12]  479 	clr	a
      00007E F5 23            [12]  480 	mov	_velocity,a
      000080 F5 24            [12]  481 	mov	(_velocity + 1),a
      000082 F5 25            [12]  482 	mov	(_velocity + 2),a
      000084 F5 26            [12]  483 	mov	(_velocity + 3),a
                                    484 ;	main.c:49: float thrust = 0.0;
      000086 F5 27            [12]  485 	mov	_thrust,a
      000088 F5 28            [12]  486 	mov	(_thrust + 1),a
      00008A F5 29            [12]  487 	mov	(_thrust + 2),a
      00008C F5 2A            [12]  488 	mov	(_thrust + 3),a
                                    489 ;	main.c:50: float ship_thrust = 600.0;
      00008E F5 2B            [12]  490 	mov	_ship_thrust,a
      000090 F5 2C            [12]  491 	mov	(_ship_thrust + 1),a
      000092 75 2D 16         [24]  492 	mov	(_ship_thrust + 2),#0x16
      000095 75 2E 44         [24]  493 	mov	(_ship_thrust + 3),#0x44
                                    494 ;	main.c:51: float ship_mass = 500.0;
      000098 F5 2F            [12]  495 	mov	_ship_mass,a
      00009A F5 30            [12]  496 	mov	(_ship_mass + 1),a
      00009C 75 31 FA         [24]  497 	mov	(_ship_mass + 2),#0xFA
      00009F 75 32 43         [24]  498 	mov	(_ship_mass + 3),#0x43
                                    499 ;	main.c:52: float height = 1000.0;
      0000A2 F5 33            [12]  500 	mov	_height,a
      0000A4 F5 34            [12]  501 	mov	(_height + 1),a
      0000A6 75 35 7A         [24]  502 	mov	(_height + 2),#0x7A
      0000A9 75 36 44         [24]  503 	mov	(_height + 3),#0x44
                                    504 ;	main.c:53: float gravity = 3.7;
      0000AC 75 37 CD         [24]  505 	mov	_gravity,#0xCD
      0000AF 75 38 CC         [24]  506 	mov	(_gravity + 1),#0xCC
      0000B2 75 39 6C         [24]  507 	mov	(_gravity + 2),#0x6C
      0000B5 75 3A 40         [24]  508 	mov	(_gravity + 3),#0x40
                                    509 ;	main.c:54: float fuel = 100.0;
      0000B8 F5 3B            [12]  510 	mov	_fuel,a
      0000BA F5 3C            [12]  511 	mov	(_fuel + 1),a
      0000BC 75 3D C8         [24]  512 	mov	(_fuel + 2),#0xC8
      0000BF 75 3E 42         [24]  513 	mov	(_fuel + 3),#0x42
                                    514 ;	main.c:55: float delta_v = 0.0;
      0000C2 F5 3F            [12]  515 	mov	_delta_v,a
      0000C4 F5 40            [12]  516 	mov	(_delta_v + 1),a
      0000C6 F5 41            [12]  517 	mov	(_delta_v + 2),a
      0000C8 F5 42            [12]  518 	mov	(_delta_v + 3),a
                                    519 ;	main.c:56: float delta_d = 0.0;
      0000CA F5 43            [12]  520 	mov	_delta_d,a
      0000CC F5 44            [12]  521 	mov	(_delta_d + 1),a
      0000CE F5 45            [12]  522 	mov	(_delta_d + 2),a
      0000D0 F5 46            [12]  523 	mov	(_delta_d + 3),a
                                    524 ;	main.c:57: float delta_t = 1.0/12.0;
      0000D2 75 47 AB         [24]  525 	mov	_delta_t,#0xAB
      0000D5 75 48 AA         [24]  526 	mov	(_delta_t + 1),#0xAA
      0000D8 75 49 AA         [24]  527 	mov	(_delta_t + 2),#0xAA
      0000DB 75 4A 3D         [24]  528 	mov	(_delta_t + 3),#0x3D
                                    529 ;	main.c:61: char digit1 = 0;
                                    530 ;	1-genFromRTrack replaced	mov	_digit1,#0x00
      0000DE F5 53            [12]  531 	mov	_digit1,a
                                    532 ;	main.c:62: char digit2 = 0;
                                    533 ;	1-genFromRTrack replaced	mov	_digit2,#0x00
      0000E0 F5 54            [12]  534 	mov	_digit2,a
                                    535 ;	main.c:63: char digit3 = 0;
                                    536 ;	1-genFromRTrack replaced	mov	_digit3,#0x00
      0000E2 F5 55            [12]  537 	mov	_digit3,a
                                    538 ;	main.c:64: char digit4 = 0;
                                    539 ;	1-genFromRTrack replaced	mov	_digit4,#0x00
      0000E4 F5 56            [12]  540 	mov	_digit4,a
                                    541 ;	main.c:67: unsigned int n = 0;
      0000E6 F5 59            [12]  542 	mov	_n,a
      0000E8 F5 5A            [12]  543 	mov	(_n + 1),a
                                    544 ;	main.c:68: unsigned int s = 0;
      0000EA F5 5B            [12]  545 	mov	_s,a
      0000EC F5 5C            [12]  546 	mov	(_s + 1),a
                                    547 ;	main.c:69: __bit l = 1;
      0000EE D2 00            [12]  548 	setb	_l
                                    549 	.area GSFINAL (CODE)
      0000F0 02 00 1E         [24]  550 	ljmp	__sdcc_program_startup
                                    551 ;--------------------------------------------------------
                                    552 ; Home
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area HOME    (CODE)
      00001E                        556 __sdcc_program_startup:
      00001E 02 05 A3         [24]  557 	ljmp	_main
                                    558 ;	return from main will return to caller
                                    559 ;--------------------------------------------------------
                                    560 ; code
                                    561 ;--------------------------------------------------------
                                    562 	.area CSEG    (CODE)
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'Timer0Init'
                                    565 ;------------------------------------------------------------
                                    566 ;	main.c:75: void Timer0Init()		//5ms@11.0592MHz
                                    567 ;	-----------------------------------------
                                    568 ;	 function Timer0Init
                                    569 ;	-----------------------------------------
      0000F3                        570 _Timer0Init:
                           000007   571 	ar7 = 0x07
                           000006   572 	ar6 = 0x06
                           000005   573 	ar5 = 0x05
                           000004   574 	ar4 = 0x04
                           000003   575 	ar3 = 0x03
                           000002   576 	ar2 = 0x02
                           000001   577 	ar1 = 0x01
                           000000   578 	ar0 = 0x00
                                    579 ;	main.c:77: TMOD = 0x11;		//Set timer work mode
      0000F3 75 89 11         [24]  580 	mov	_TMOD,#0x11
                                    581 ;	main.c:78: TL0 = 0x00;		//Initial timer value
      0000F6 75 8A 00         [24]  582 	mov	_TL0,#0x00
                                    583 ;	main.c:79: TH0 = 0x28;		//Initial timer value
      0000F9 75 8C 28         [24]  584 	mov	_TH0,#0x28
                                    585 ;	main.c:80: TL1 = 0x50;
      0000FC 75 8B 50         [24]  586 	mov	_TL1,#0x50
                                    587 ;	main.c:81: TH1 = 0xF0;
      0000FF 75 8D F0         [24]  588 	mov	_TH1,#0xF0
                                    589 ;	main.c:82: TF0 = 0;		//Clear TF0 flag
      000102 C2 8D            [12]  590 	clr	_TF0
                                    591 ;	main.c:83: EA  = 1;
      000104 D2 AF            [12]  592 	setb	_EA
                                    593 ;	main.c:84: ET0 = 1;
      000106 D2 A9            [12]  594 	setb	_ET0
                                    595 ;	main.c:85: ET1 = 1;
      000108 D2 AB            [12]  596 	setb	_ET1
                                    597 ;	main.c:86: IT0 = 1;
      00010A D2 88            [12]  598 	setb	_IT0
                                    599 ;	main.c:87: EX0 = 1;
      00010C D2 A8            [12]  600 	setb	_EX0
                                    601 ;	main.c:88: TR0 = 1;		//Timer0 start run
      00010E D2 8C            [12]  602 	setb	_TR0
      000110 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'delay'
                                    606 ;------------------------------------------------------------
                                    607 ;z                         Allocated to registers 
                                    608 ;x                         Allocated to registers r6 r7 
                                    609 ;y                         Allocated to registers r4 r5 
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:92: void delay(unsigned int z)
                                    612 ;	-----------------------------------------
                                    613 ;	 function delay
                                    614 ;	-----------------------------------------
      000111                        615 _delay:
      000111 AE 82            [24]  616 	mov	r6,dpl
      000113 AF 83            [24]  617 	mov	r7,dph
                                    618 ;	main.c:95: for(x=z;x>0;x--)
      000115                        619 00106$:
      000115 EE               [12]  620 	mov	a,r6
      000116 4F               [12]  621 	orl	a,r7
      000117 60 1B            [24]  622 	jz	00108$
                                    623 ;	main.c:96: for(y=50;y>0;y--);
      000119 7C 32            [12]  624 	mov	r4,#0x32
      00011B 7D 00            [12]  625 	mov	r5,#0x00
      00011D                        626 00104$:
      00011D EC               [12]  627 	mov	a,r4
      00011E 24 FF            [12]  628 	add	a,#0xFF
      000120 FA               [12]  629 	mov	r2,a
      000121 ED               [12]  630 	mov	a,r5
      000122 34 FF            [12]  631 	addc	a,#0xFF
      000124 FB               [12]  632 	mov	r3,a
      000125 8A 04            [24]  633 	mov	ar4,r2
      000127 8B 05            [24]  634 	mov	ar5,r3
      000129 EA               [12]  635 	mov	a,r2
      00012A 4B               [12]  636 	orl	a,r3
      00012B 70 F0            [24]  637 	jnz	00104$
                                    638 ;	main.c:95: for(x=z;x>0;x--)
      00012D 1E               [12]  639 	dec	r6
      00012E BE FF 01         [24]  640 	cjne	r6,#0xFF,00129$
      000131 1F               [12]  641 	dec	r7
      000132                        642 00129$:
      000132 80 E1            [24]  643 	sjmp	00106$
      000134                        644 00108$:
      000134 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'write_com'
                                    648 ;------------------------------------------------------------
                                    649 ;com                       Allocated to registers r7 
                                    650 ;------------------------------------------------------------
                                    651 ;	main.c:99: void write_com(unsigned char com)
                                    652 ;	-----------------------------------------
                                    653 ;	 function write_com
                                    654 ;	-----------------------------------------
      000135                        655 _write_com:
      000135 AF 82            [24]  656 	mov	r7,dpl
                                    657 ;	main.c:101: lcdrs=0;
      000137 C2 92            [12]  658 	clr	_P1_2
                                    659 ;	main.c:102: rw=0;
      000139 C2 91            [12]  660 	clr	_P1_1
                                    661 ;	main.c:103: P2=com;
      00013B 8F A0            [24]  662 	mov	_P2,r7
                                    663 ;	main.c:104: delay(5);
      00013D 90 00 05         [24]  664 	mov	dptr,#0x0005
      000140 12 01 11         [24]  665 	lcall	_delay
                                    666 ;	main.c:105: lcden=1;
      000143 D2 90            [12]  667 	setb	_P1_0
                                    668 ;	main.c:106: delay(5);
      000145 90 00 05         [24]  669 	mov	dptr,#0x0005
      000148 12 01 11         [24]  670 	lcall	_delay
                                    671 ;	main.c:107: lcden=0;
      00014B C2 90            [12]  672 	clr	_P1_0
      00014D 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'write_data'
                                    676 ;------------------------------------------------------------
                                    677 ;date                      Allocated to registers r7 
                                    678 ;------------------------------------------------------------
                                    679 ;	main.c:110: void write_data(unsigned char date)
                                    680 ;	-----------------------------------------
                                    681 ;	 function write_data
                                    682 ;	-----------------------------------------
      00014E                        683 _write_data:
      00014E AF 82            [24]  684 	mov	r7,dpl
                                    685 ;	main.c:112: lcdrs=1;
      000150 D2 92            [12]  686 	setb	_P1_2
                                    687 ;	main.c:113: rw=0;
      000152 C2 91            [12]  688 	clr	_P1_1
                                    689 ;	main.c:114: P2=date;
      000154 8F A0            [24]  690 	mov	_P2,r7
                                    691 ;	main.c:115: delay(5);
      000156 90 00 05         [24]  692 	mov	dptr,#0x0005
      000159 12 01 11         [24]  693 	lcall	_delay
                                    694 ;	main.c:116: lcden=1;
      00015C D2 90            [12]  695 	setb	_P1_0
                                    696 ;	main.c:117: delay(5);
      00015E 90 00 05         [24]  697 	mov	dptr,#0x0005
      000161 12 01 11         [24]  698 	lcall	_delay
                                    699 ;	main.c:118: lcden=0;
      000164 C2 90            [12]  700 	clr	_P1_0
      000166 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'init'
                                    704 ;------------------------------------------------------------
                                    705 ;	main.c:121: void init()
                                    706 ;	-----------------------------------------
                                    707 ;	 function init
                                    708 ;	-----------------------------------------
      000167                        709 _init:
                                    710 ;	main.c:123: lcden=0;
      000167 C2 90            [12]  711 	clr	_P1_0
                                    712 ;	main.c:124: write_com(0x38);
      000169 75 82 38         [24]  713 	mov	dpl,#0x38
      00016C 12 01 35         [24]  714 	lcall	_write_com
                                    715 ;	main.c:125: write_com(0x0f);
      00016F 75 82 0F         [24]  716 	mov	dpl,#0x0F
      000172 12 01 35         [24]  717 	lcall	_write_com
                                    718 ;	main.c:126: write_com(0x06);
      000175 75 82 06         [24]  719 	mov	dpl,#0x06
      000178 12 01 35         [24]  720 	lcall	_write_com
                                    721 ;	main.c:127: write_com(0X01);
      00017B 75 82 01         [24]  722 	mov	dpl,#0x01
      00017E 12 01 35         [24]  723 	lcall	_write_com
                                    724 ;	main.c:128: write_com(0X80); 
      000181 75 82 80         [24]  725 	mov	dpl,#0x80
      000184 02 01 35         [24]  726 	ljmp	_write_com
                                    727 ;------------------------------------------------------------
                                    728 ;Allocation info for local variables in function 'start'
                                    729 ;------------------------------------------------------------
                                    730 ;i                         Allocated to registers r7 
                                    731 ;------------------------------------------------------------
                                    732 ;	main.c:131: void start()
                                    733 ;	-----------------------------------------
                                    734 ;	 function start
                                    735 ;	-----------------------------------------
      000187                        736 _start:
                                    737 ;	main.c:134: for (i=0;i<9;i++)
      000187 7F 00            [12]  738 	mov	r7,#0x00
      000189                        739 00112$:
                                    740 ;	main.c:136: write_data(start1[i]);
      000189 EF               [12]  741 	mov	a,r7
      00018A 90 10 B7         [24]  742 	mov	dptr,#_start1
      00018D 93               [24]  743 	movc	a,@a+dptr
      00018E F5 82            [12]  744 	mov	dpl,a
      000190 C0 07            [24]  745 	push	ar7
      000192 12 01 4E         [24]  746 	lcall	_write_data
                                    747 ;	main.c:137: delay(100);
      000195 90 00 64         [24]  748 	mov	dptr,#0x0064
      000198 12 01 11         [24]  749 	lcall	_delay
      00019B D0 07            [24]  750 	pop	ar7
                                    751 ;	main.c:134: for (i=0;i<9;i++)
      00019D 0F               [12]  752 	inc	r7
      00019E C3               [12]  753 	clr	c
      00019F EF               [12]  754 	mov	a,r7
      0001A0 64 80            [12]  755 	xrl	a,#0x80
      0001A2 94 89            [12]  756 	subb	a,#0x89
      0001A4 40 E3            [24]  757 	jc	00112$
                                    758 ;	main.c:139: delay(500);
      0001A6 90 01 F4         [24]  759 	mov	dptr,#0x01F4
      0001A9 12 01 11         [24]  760 	lcall	_delay
                                    761 ;	main.c:140: write_com(0X80+0x40);
      0001AC 75 82 C0         [24]  762 	mov	dpl,#0xC0
      0001AF 12 01 35         [24]  763 	lcall	_write_com
                                    764 ;	main.c:141: for (i=0;i<17;i++)
      0001B2 7F 00            [12]  765 	mov	r7,#0x00
      0001B4                        766 00114$:
                                    767 ;	main.c:143: write_data(start2[i]);
      0001B4 EF               [12]  768 	mov	a,r7
      0001B5 90 10 C0         [24]  769 	mov	dptr,#_start2
      0001B8 93               [24]  770 	movc	a,@a+dptr
      0001B9 F5 82            [12]  771 	mov	dpl,a
      0001BB C0 07            [24]  772 	push	ar7
      0001BD 12 01 4E         [24]  773 	lcall	_write_data
                                    774 ;	main.c:144: delay(100);
      0001C0 90 00 64         [24]  775 	mov	dptr,#0x0064
      0001C3 12 01 11         [24]  776 	lcall	_delay
      0001C6 D0 07            [24]  777 	pop	ar7
                                    778 ;	main.c:141: for (i=0;i<17;i++)
      0001C8 0F               [12]  779 	inc	r7
      0001C9 C3               [12]  780 	clr	c
      0001CA EF               [12]  781 	mov	a,r7
      0001CB 64 80            [12]  782 	xrl	a,#0x80
      0001CD 94 91            [12]  783 	subb	a,#0x91
      0001CF 40 E3            [24]  784 	jc	00114$
                                    785 ;	main.c:146: delay(500);
      0001D1 90 01 F4         [24]  786 	mov	dptr,#0x01F4
      0001D4 12 01 11         [24]  787 	lcall	_delay
                                    788 ;	main.c:147: write_com(0x01);
      0001D7 75 82 01         [24]  789 	mov	dpl,#0x01
      0001DA 12 01 35         [24]  790 	lcall	_write_com
                                    791 ;	main.c:148: for (i=0;i<17;i++)
      0001DD 7F 00            [12]  792 	mov	r7,#0x00
      0001DF                        793 00116$:
                                    794 ;	main.c:150: write_data(start3[i]);
      0001DF EF               [12]  795 	mov	a,r7
      0001E0 90 10 D1         [24]  796 	mov	dptr,#_start3
      0001E3 93               [24]  797 	movc	a,@a+dptr
      0001E4 F5 82            [12]  798 	mov	dpl,a
      0001E6 C0 07            [24]  799 	push	ar7
      0001E8 12 01 4E         [24]  800 	lcall	_write_data
                                    801 ;	main.c:151: delay(100);
      0001EB 90 00 64         [24]  802 	mov	dptr,#0x0064
      0001EE 12 01 11         [24]  803 	lcall	_delay
      0001F1 D0 07            [24]  804 	pop	ar7
                                    805 ;	main.c:148: for (i=0;i<17;i++)
      0001F3 0F               [12]  806 	inc	r7
      0001F4 C3               [12]  807 	clr	c
      0001F5 EF               [12]  808 	mov	a,r7
      0001F6 64 80            [12]  809 	xrl	a,#0x80
      0001F8 94 91            [12]  810 	subb	a,#0x91
      0001FA 40 E3            [24]  811 	jc	00116$
                                    812 ;	main.c:153: delay(500);
      0001FC 90 01 F4         [24]  813 	mov	dptr,#0x01F4
      0001FF 12 01 11         [24]  814 	lcall	_delay
                                    815 ;	main.c:154: write_com(0X80+0x40);
      000202 75 82 C0         [24]  816 	mov	dpl,#0xC0
      000205 12 01 35         [24]  817 	lcall	_write_com
                                    818 ;	main.c:155: for (i=0;i<17;i++)
      000208 7F 00            [12]  819 	mov	r7,#0x00
      00020A                        820 00118$:
                                    821 ;	main.c:157: write_data(start4[i]);
      00020A EF               [12]  822 	mov	a,r7
      00020B 90 10 E2         [24]  823 	mov	dptr,#_start4
      00020E 93               [24]  824 	movc	a,@a+dptr
      00020F F5 82            [12]  825 	mov	dpl,a
      000211 C0 07            [24]  826 	push	ar7
      000213 12 01 4E         [24]  827 	lcall	_write_data
                                    828 ;	main.c:158: delay(100);
      000216 90 00 64         [24]  829 	mov	dptr,#0x0064
      000219 12 01 11         [24]  830 	lcall	_delay
      00021C D0 07            [24]  831 	pop	ar7
                                    832 ;	main.c:155: for (i=0;i<17;i++)
      00021E 0F               [12]  833 	inc	r7
      00021F C3               [12]  834 	clr	c
      000220 EF               [12]  835 	mov	a,r7
      000221 64 80            [12]  836 	xrl	a,#0x80
      000223 94 91            [12]  837 	subb	a,#0x91
      000225 40 E3            [24]  838 	jc	00118$
                                    839 ;	main.c:160: delay(500);
      000227 90 01 F4         [24]  840 	mov	dptr,#0x01F4
      00022A 12 01 11         [24]  841 	lcall	_delay
                                    842 ;	main.c:161: write_com(0x01);
      00022D 75 82 01         [24]  843 	mov	dpl,#0x01
      000230 12 01 35         [24]  844 	lcall	_write_com
                                    845 ;	main.c:162: for (i=0;i<17;i++)
      000233 7F 00            [12]  846 	mov	r7,#0x00
      000235                        847 00120$:
                                    848 ;	main.c:164: write_data(start5[i]);
      000235 EF               [12]  849 	mov	a,r7
      000236 90 10 F3         [24]  850 	mov	dptr,#_start5
      000239 93               [24]  851 	movc	a,@a+dptr
      00023A F5 82            [12]  852 	mov	dpl,a
      00023C C0 07            [24]  853 	push	ar7
      00023E 12 01 4E         [24]  854 	lcall	_write_data
                                    855 ;	main.c:165: delay(100);
      000241 90 00 64         [24]  856 	mov	dptr,#0x0064
      000244 12 01 11         [24]  857 	lcall	_delay
      000247 D0 07            [24]  858 	pop	ar7
                                    859 ;	main.c:162: for (i=0;i<17;i++)
      000249 0F               [12]  860 	inc	r7
      00024A C3               [12]  861 	clr	c
      00024B EF               [12]  862 	mov	a,r7
      00024C 64 80            [12]  863 	xrl	a,#0x80
      00024E 94 91            [12]  864 	subb	a,#0x91
      000250 40 E3            [24]  865 	jc	00120$
                                    866 ;	main.c:167: delay(500);
      000252 90 01 F4         [24]  867 	mov	dptr,#0x01F4
      000255 12 01 11         [24]  868 	lcall	_delay
                                    869 ;	main.c:168: write_com(0X80+0x40);
      000258 75 82 C0         [24]  870 	mov	dpl,#0xC0
      00025B 12 01 35         [24]  871 	lcall	_write_com
                                    872 ;	main.c:169: for (i=0;i<17;i++)
      00025E 7F 00            [12]  873 	mov	r7,#0x00
      000260                        874 00122$:
                                    875 ;	main.c:171: write_data(start6[i]);
      000260 EF               [12]  876 	mov	a,r7
      000261 90 11 04         [24]  877 	mov	dptr,#_start6
      000264 93               [24]  878 	movc	a,@a+dptr
      000265 F5 82            [12]  879 	mov	dpl,a
      000267 C0 07            [24]  880 	push	ar7
      000269 12 01 4E         [24]  881 	lcall	_write_data
                                    882 ;	main.c:172: delay(100);
      00026C 90 00 64         [24]  883 	mov	dptr,#0x0064
      00026F 12 01 11         [24]  884 	lcall	_delay
      000272 D0 07            [24]  885 	pop	ar7
                                    886 ;	main.c:169: for (i=0;i<17;i++)
      000274 0F               [12]  887 	inc	r7
      000275 C3               [12]  888 	clr	c
      000276 EF               [12]  889 	mov	a,r7
      000277 64 80            [12]  890 	xrl	a,#0x80
      000279 94 91            [12]  891 	subb	a,#0x91
      00027B 40 E3            [24]  892 	jc	00122$
                                    893 ;	main.c:174: delay(500);
      00027D 90 01 F4         [24]  894 	mov	dptr,#0x01F4
      000280 12 01 11         [24]  895 	lcall	_delay
                                    896 ;	main.c:175: write_com(0x01);
      000283 75 82 01         [24]  897 	mov	dpl,#0x01
      000286 12 01 35         [24]  898 	lcall	_write_com
                                    899 ;	main.c:176: for (i=0;i<13;i++)
      000289 7F 00            [12]  900 	mov	r7,#0x00
      00028B                        901 00124$:
                                    902 ;	main.c:178: write_data(start7[i]);
      00028B EF               [12]  903 	mov	a,r7
      00028C 90 11 15         [24]  904 	mov	dptr,#_start7
      00028F 93               [24]  905 	movc	a,@a+dptr
      000290 F5 82            [12]  906 	mov	dpl,a
      000292 C0 07            [24]  907 	push	ar7
      000294 12 01 4E         [24]  908 	lcall	_write_data
                                    909 ;	main.c:179: delay(100);
      000297 90 00 64         [24]  910 	mov	dptr,#0x0064
      00029A 12 01 11         [24]  911 	lcall	_delay
      00029D D0 07            [24]  912 	pop	ar7
                                    913 ;	main.c:176: for (i=0;i<13;i++)
      00029F 0F               [12]  914 	inc	r7
      0002A0 C3               [12]  915 	clr	c
      0002A1 EF               [12]  916 	mov	a,r7
      0002A2 64 80            [12]  917 	xrl	a,#0x80
      0002A4 94 8D            [12]  918 	subb	a,#0x8d
      0002A6 40 E3            [24]  919 	jc	00124$
                                    920 ;	main.c:181: delay(500);
      0002A8 90 01 F4         [24]  921 	mov	dptr,#0x01F4
      0002AB 12 01 11         [24]  922 	lcall	_delay
                                    923 ;	main.c:182: write_com(0X80+0x40);
      0002AE 75 82 C0         [24]  924 	mov	dpl,#0xC0
      0002B1 12 01 35         [24]  925 	lcall	_write_com
                                    926 ;	main.c:183: for (i=0;i<13;i++)
      0002B4 7F 00            [12]  927 	mov	r7,#0x00
      0002B6                        928 00126$:
                                    929 ;	main.c:185: write_data(start8[i]);
      0002B6 EF               [12]  930 	mov	a,r7
      0002B7 90 11 23         [24]  931 	mov	dptr,#_start8
      0002BA 93               [24]  932 	movc	a,@a+dptr
      0002BB F5 82            [12]  933 	mov	dpl,a
      0002BD C0 07            [24]  934 	push	ar7
      0002BF 12 01 4E         [24]  935 	lcall	_write_data
                                    936 ;	main.c:186: delay(100);
      0002C2 90 00 64         [24]  937 	mov	dptr,#0x0064
      0002C5 12 01 11         [24]  938 	lcall	_delay
      0002C8 D0 07            [24]  939 	pop	ar7
                                    940 ;	main.c:183: for (i=0;i<13;i++)
      0002CA 0F               [12]  941 	inc	r7
      0002CB C3               [12]  942 	clr	c
      0002CC EF               [12]  943 	mov	a,r7
      0002CD 64 80            [12]  944 	xrl	a,#0x80
      0002CF 94 8D            [12]  945 	subb	a,#0x8d
      0002D1 40 E3            [24]  946 	jc	00126$
                                    947 ;	main.c:188: delay(500);
      0002D3 90 01 F4         [24]  948 	mov	dptr,#0x01F4
      0002D6 12 01 11         [24]  949 	lcall	_delay
                                    950 ;	main.c:189: write_com(0x01);
      0002D9 75 82 01         [24]  951 	mov	dpl,#0x01
      0002DC 12 01 35         [24]  952 	lcall	_write_com
                                    953 ;	main.c:190: for (i=0;i<17;i++)
      0002DF 7F 00            [12]  954 	mov	r7,#0x00
      0002E1                        955 00128$:
                                    956 ;	main.c:192: write_data(start9[i]);
      0002E1 EF               [12]  957 	mov	a,r7
      0002E2 90 11 30         [24]  958 	mov	dptr,#_start9
      0002E5 93               [24]  959 	movc	a,@a+dptr
      0002E6 F5 82            [12]  960 	mov	dpl,a
      0002E8 C0 07            [24]  961 	push	ar7
      0002EA 12 01 4E         [24]  962 	lcall	_write_data
                                    963 ;	main.c:193: delay(100);
      0002ED 90 00 64         [24]  964 	mov	dptr,#0x0064
      0002F0 12 01 11         [24]  965 	lcall	_delay
      0002F3 D0 07            [24]  966 	pop	ar7
                                    967 ;	main.c:190: for (i=0;i<17;i++)
      0002F5 0F               [12]  968 	inc	r7
      0002F6 C3               [12]  969 	clr	c
      0002F7 EF               [12]  970 	mov	a,r7
      0002F8 64 80            [12]  971 	xrl	a,#0x80
      0002FA 94 91            [12]  972 	subb	a,#0x91
      0002FC 40 E3            [24]  973 	jc	00128$
                                    974 ;	main.c:195: delay(500);
      0002FE 90 01 F4         [24]  975 	mov	dptr,#0x01F4
      000301 12 01 11         [24]  976 	lcall	_delay
                                    977 ;	main.c:196: write_com(0X80+0x40);
      000304 75 82 C0         [24]  978 	mov	dpl,#0xC0
      000307 12 01 35         [24]  979 	lcall	_write_com
                                    980 ;	main.c:197: for (i=0;i<17;i++)
      00030A 7F 00            [12]  981 	mov	r7,#0x00
      00030C                        982 00130$:
                                    983 ;	main.c:199: write_data(start10[i]);
      00030C EF               [12]  984 	mov	a,r7
      00030D 90 11 43         [24]  985 	mov	dptr,#_start10
      000310 93               [24]  986 	movc	a,@a+dptr
      000311 F5 82            [12]  987 	mov	dpl,a
      000313 C0 07            [24]  988 	push	ar7
      000315 12 01 4E         [24]  989 	lcall	_write_data
                                    990 ;	main.c:200: delay(100);
      000318 90 00 64         [24]  991 	mov	dptr,#0x0064
      00031B 12 01 11         [24]  992 	lcall	_delay
      00031E D0 07            [24]  993 	pop	ar7
                                    994 ;	main.c:197: for (i=0;i<17;i++)
      000320 0F               [12]  995 	inc	r7
      000321 C3               [12]  996 	clr	c
      000322 EF               [12]  997 	mov	a,r7
      000323 64 80            [12]  998 	xrl	a,#0x80
      000325 94 91            [12]  999 	subb	a,#0x91
      000327 40 E3            [24] 1000 	jc	00130$
                                   1001 ;	main.c:202: delay(500);
      000329 90 01 F4         [24] 1002 	mov	dptr,#0x01F4
      00032C 12 01 11         [24] 1003 	lcall	_delay
                                   1004 ;	main.c:203: write_com(0x01);
      00032F 75 82 01         [24] 1005 	mov	dpl,#0x01
      000332 12 01 35         [24] 1006 	lcall	_write_com
                                   1007 ;	main.c:204: for (i=0;i<12;i++)
      000335 7F 00            [12] 1008 	mov	r7,#0x00
      000337                       1009 00132$:
                                   1010 ;	main.c:206: write_data(start11[i]);
      000337 EF               [12] 1011 	mov	a,r7
      000338 90 11 54         [24] 1012 	mov	dptr,#_start11
      00033B 93               [24] 1013 	movc	a,@a+dptr
      00033C F5 82            [12] 1014 	mov	dpl,a
      00033E C0 07            [24] 1015 	push	ar7
      000340 12 01 4E         [24] 1016 	lcall	_write_data
                                   1017 ;	main.c:207: delay(100);
      000343 90 00 64         [24] 1018 	mov	dptr,#0x0064
      000346 12 01 11         [24] 1019 	lcall	_delay
      000349 D0 07            [24] 1020 	pop	ar7
                                   1021 ;	main.c:204: for (i=0;i<12;i++)
      00034B 0F               [12] 1022 	inc	r7
      00034C C3               [12] 1023 	clr	c
      00034D EF               [12] 1024 	mov	a,r7
      00034E 64 80            [12] 1025 	xrl	a,#0x80
      000350 94 8C            [12] 1026 	subb	a,#0x8c
      000352 40 E3            [24] 1027 	jc	00132$
                                   1028 ;	main.c:209: delay(800);
      000354 90 03 20         [24] 1029 	mov	dptr,#0x0320
      000357 12 01 11         [24] 1030 	lcall	_delay
                                   1031 ;	main.c:210: write_com(0x01);
      00035A 75 82 01         [24] 1032 	mov	dpl,#0x01
      00035D 02 01 35         [24] 1033 	ljmp	_write_com
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'fuelleak'
                                   1036 ;------------------------------------------------------------
                                   1037 ;q                         Allocated to registers r7 
                                   1038 ;------------------------------------------------------------
                                   1039 ;	main.c:213: void fuelleak()
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function fuelleak
                                   1042 ;	-----------------------------------------
      000360                       1043 _fuelleak:
                                   1044 ;	main.c:216: write_com(0x01);
      000360 75 82 01         [24] 1045 	mov	dpl,#0x01
      000363 12 01 35         [24] 1046 	lcall	_write_com
                                   1047 ;	main.c:217: for (q=0;q<17;q++)
      000366 7F 00            [12] 1048 	mov	r7,#0x00
      000368                       1049 00104$:
                                   1050 ;	main.c:219: write_data(leak1[q]);
      000368 EF               [12] 1051 	mov	a,r7
      000369 90 11 E2         [24] 1052 	mov	dptr,#_leak1
      00036C 93               [24] 1053 	movc	a,@a+dptr
      00036D F5 82            [12] 1054 	mov	dpl,a
      00036F C0 07            [24] 1055 	push	ar7
      000371 12 01 4E         [24] 1056 	lcall	_write_data
                                   1057 ;	main.c:220: delay(100);
      000374 90 00 64         [24] 1058 	mov	dptr,#0x0064
      000377 12 01 11         [24] 1059 	lcall	_delay
      00037A D0 07            [24] 1060 	pop	ar7
                                   1061 ;	main.c:217: for (q=0;q<17;q++)
      00037C 0F               [12] 1062 	inc	r7
      00037D BF 11 00         [24] 1063 	cjne	r7,#0x11,00133$
      000380                       1064 00133$:
      000380 40 E6            [24] 1065 	jc	00104$
                                   1066 ;	main.c:222: delay(500);
      000382 90 01 F4         [24] 1067 	mov	dptr,#0x01F4
      000385 12 01 11         [24] 1068 	lcall	_delay
                                   1069 ;	main.c:223: write_com(0X80+0x40);
      000388 75 82 C0         [24] 1070 	mov	dpl,#0xC0
      00038B 12 01 35         [24] 1071 	lcall	_write_com
                                   1072 ;	main.c:224: for (q=0;q<16;q++)
      00038E 7F 00            [12] 1073 	mov	r7,#0x00
      000390                       1074 00106$:
                                   1075 ;	main.c:226: write_data(leak2[q]);
      000390 EF               [12] 1076 	mov	a,r7
      000391 90 11 F4         [24] 1077 	mov	dptr,#_leak2
      000394 93               [24] 1078 	movc	a,@a+dptr
      000395 F5 82            [12] 1079 	mov	dpl,a
      000397 C0 07            [24] 1080 	push	ar7
      000399 12 01 4E         [24] 1081 	lcall	_write_data
                                   1082 ;	main.c:227: delay(100);
      00039C 90 00 64         [24] 1083 	mov	dptr,#0x0064
      00039F 12 01 11         [24] 1084 	lcall	_delay
      0003A2 D0 07            [24] 1085 	pop	ar7
                                   1086 ;	main.c:224: for (q=0;q<16;q++)
      0003A4 0F               [12] 1087 	inc	r7
      0003A5 BF 10 00         [24] 1088 	cjne	r7,#0x10,00135$
      0003A8                       1089 00135$:
      0003A8 40 E6            [24] 1090 	jc	00106$
                                   1091 ;	main.c:229: delay(500);
      0003AA 90 01 F4         [24] 1092 	mov	dptr,#0x01F4
      0003AD 12 01 11         [24] 1093 	lcall	_delay
                                   1094 ;	main.c:230: write_com(0x01);
      0003B0 75 82 01         [24] 1095 	mov	dpl,#0x01
      0003B3 12 01 35         [24] 1096 	lcall	_write_com
                                   1097 ;	main.c:231: for (q=0;q<16;q++)
      0003B6 7F 00            [12] 1098 	mov	r7,#0x00
      0003B8                       1099 00108$:
                                   1100 ;	main.c:233: write_data(leak3[q]);
      0003B8 EF               [12] 1101 	mov	a,r7
      0003B9 90 12 05         [24] 1102 	mov	dptr,#_leak3
      0003BC 93               [24] 1103 	movc	a,@a+dptr
      0003BD F5 82            [12] 1104 	mov	dpl,a
      0003BF C0 07            [24] 1105 	push	ar7
      0003C1 12 01 4E         [24] 1106 	lcall	_write_data
                                   1107 ;	main.c:234: delay(100);
      0003C4 90 00 64         [24] 1108 	mov	dptr,#0x0064
      0003C7 12 01 11         [24] 1109 	lcall	_delay
      0003CA D0 07            [24] 1110 	pop	ar7
                                   1111 ;	main.c:231: for (q=0;q<16;q++)
      0003CC 0F               [12] 1112 	inc	r7
      0003CD BF 10 00         [24] 1113 	cjne	r7,#0x10,00137$
      0003D0                       1114 00137$:
      0003D0 40 E6            [24] 1115 	jc	00108$
                                   1116 ;	main.c:236: delay(8);
      0003D2 90 00 08         [24] 1117 	mov	dptr,#0x0008
      0003D5 12 01 11         [24] 1118 	lcall	_delay
                                   1119 ;	main.c:237: fuel = fuel - 20.0;
      0003D8 E4               [12] 1120 	clr	a
      0003D9 C0 E0            [24] 1121 	push	acc
      0003DB C0 E0            [24] 1122 	push	acc
      0003DD 74 A0            [12] 1123 	mov	a,#0xA0
      0003DF C0 E0            [24] 1124 	push	acc
      0003E1 23               [12] 1125 	rl	a
      0003E2 C0 E0            [24] 1126 	push	acc
      0003E4 85 3B 82         [24] 1127 	mov	dpl,_fuel
      0003E7 85 3C 83         [24] 1128 	mov	dph,(_fuel + 1)
      0003EA 85 3D F0         [24] 1129 	mov	b,(_fuel + 2)
      0003ED E5 3E            [12] 1130 	mov	a,(_fuel + 3)
      0003EF 12 0B 8D         [24] 1131 	lcall	___fssub
      0003F2 85 82 3B         [24] 1132 	mov	_fuel,dpl
      0003F5 85 83 3C         [24] 1133 	mov	(_fuel + 1),dph
      0003F8 85 F0 3D         [24] 1134 	mov	(_fuel + 2),b
      0003FB F5 3E            [12] 1135 	mov	(_fuel + 3),a
      0003FD E5 81            [12] 1136 	mov	a,sp
      0003FF 24 FC            [12] 1137 	add	a,#0xfc
      000401 F5 81            [12] 1138 	mov	sp,a
                                   1139 ;	main.c:238: write_com(0x01);
      000403 75 82 01         [24] 1140 	mov	dpl,#0x01
      000406 02 01 35         [24] 1141 	ljmp	_write_com
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'turb'
                                   1144 ;------------------------------------------------------------
                                   1145 ;t                         Allocated to registers r7 
                                   1146 ;------------------------------------------------------------
                                   1147 ;	main.c:241: void turb()
                                   1148 ;	-----------------------------------------
                                   1149 ;	 function turb
                                   1150 ;	-----------------------------------------
      000409                       1151 _turb:
                                   1152 ;	main.c:244: write_com(0x01);
      000409 75 82 01         [24] 1153 	mov	dpl,#0x01
      00040C 12 01 35         [24] 1154 	lcall	_write_com
                                   1155 ;	main.c:245: for (t=0;t<17;t++)
      00040F 7F 00            [12] 1156 	mov	r7,#0x00
      000411                       1157 00104$:
                                   1158 ;	main.c:247: write_data(turb1[t]);
      000411 EF               [12] 1159 	mov	a,r7
      000412 90 11 AE         [24] 1160 	mov	dptr,#_turb1
      000415 93               [24] 1161 	movc	a,@a+dptr
      000416 F5 82            [12] 1162 	mov	dpl,a
      000418 C0 07            [24] 1163 	push	ar7
      00041A 12 01 4E         [24] 1164 	lcall	_write_data
                                   1165 ;	main.c:248: delay(100);
      00041D 90 00 64         [24] 1166 	mov	dptr,#0x0064
      000420 12 01 11         [24] 1167 	lcall	_delay
      000423 D0 07            [24] 1168 	pop	ar7
                                   1169 ;	main.c:245: for (t=0;t<17;t++)
      000425 0F               [12] 1170 	inc	r7
      000426 BF 11 00         [24] 1171 	cjne	r7,#0x11,00133$
      000429                       1172 00133$:
      000429 40 E6            [24] 1173 	jc	00104$
                                   1174 ;	main.c:250: delay(500);
      00042B 90 01 F4         [24] 1175 	mov	dptr,#0x01F4
      00042E 12 01 11         [24] 1176 	lcall	_delay
                                   1177 ;	main.c:251: write_com(0X80+0x40);
      000431 75 82 C0         [24] 1178 	mov	dpl,#0xC0
      000434 12 01 35         [24] 1179 	lcall	_write_com
                                   1180 ;	main.c:252: for (t=0;t<16;t++)
      000437 7F 00            [12] 1181 	mov	r7,#0x00
      000439                       1182 00106$:
                                   1183 ;	main.c:254: write_data(turb2[t]);
      000439 EF               [12] 1184 	mov	a,r7
      00043A 90 11 C0         [24] 1185 	mov	dptr,#_turb2
      00043D 93               [24] 1186 	movc	a,@a+dptr
      00043E F5 82            [12] 1187 	mov	dpl,a
      000440 C0 07            [24] 1188 	push	ar7
      000442 12 01 4E         [24] 1189 	lcall	_write_data
                                   1190 ;	main.c:255: delay(100);
      000445 90 00 64         [24] 1191 	mov	dptr,#0x0064
      000448 12 01 11         [24] 1192 	lcall	_delay
      00044B D0 07            [24] 1193 	pop	ar7
                                   1194 ;	main.c:252: for (t=0;t<16;t++)
      00044D 0F               [12] 1195 	inc	r7
      00044E BF 10 00         [24] 1196 	cjne	r7,#0x10,00135$
      000451                       1197 00135$:
      000451 40 E6            [24] 1198 	jc	00106$
                                   1199 ;	main.c:257: delay(500);
      000453 90 01 F4         [24] 1200 	mov	dptr,#0x01F4
      000456 12 01 11         [24] 1201 	lcall	_delay
                                   1202 ;	main.c:258: write_com(0x01);
      000459 75 82 01         [24] 1203 	mov	dpl,#0x01
      00045C 12 01 35         [24] 1204 	lcall	_write_com
                                   1205 ;	main.c:259: for (t=0;t<16;t++)
      00045F 7F 00            [12] 1206 	mov	r7,#0x00
      000461                       1207 00108$:
                                   1208 ;	main.c:261: write_data(turb3[t]);
      000461 EF               [12] 1209 	mov	a,r7
      000462 90 11 D1         [24] 1210 	mov	dptr,#_turb3
      000465 93               [24] 1211 	movc	a,@a+dptr
      000466 F5 82            [12] 1212 	mov	dpl,a
      000468 C0 07            [24] 1213 	push	ar7
      00046A 12 01 4E         [24] 1214 	lcall	_write_data
                                   1215 ;	main.c:262: delay(100);
      00046D 90 00 64         [24] 1216 	mov	dptr,#0x0064
      000470 12 01 11         [24] 1217 	lcall	_delay
      000473 D0 07            [24] 1218 	pop	ar7
                                   1219 ;	main.c:259: for (t=0;t<16;t++)
      000475 0F               [12] 1220 	inc	r7
      000476 BF 10 00         [24] 1221 	cjne	r7,#0x10,00137$
      000479                       1222 00137$:
      000479 40 E6            [24] 1223 	jc	00108$
                                   1224 ;	main.c:264: delay(800);
      00047B 90 03 20         [24] 1225 	mov	dptr,#0x0320
      00047E 12 01 11         [24] 1226 	lcall	_delay
                                   1227 ;	main.c:265: gravity = gravity + 0.5;
      000481 E4               [12] 1228 	clr	a
      000482 C0 E0            [24] 1229 	push	acc
      000484 C0 E0            [24] 1230 	push	acc
      000486 C0 E0            [24] 1231 	push	acc
      000488 74 3F            [12] 1232 	mov	a,#0x3F
      00048A C0 E0            [24] 1233 	push	acc
      00048C 85 37 82         [24] 1234 	mov	dpl,_gravity
      00048F 85 38 83         [24] 1235 	mov	dph,(_gravity + 1)
      000492 85 39 F0         [24] 1236 	mov	b,(_gravity + 2)
      000495 E5 3A            [12] 1237 	mov	a,(_gravity + 3)
      000497 12 0D 49         [24] 1238 	lcall	___fsadd
      00049A 85 82 37         [24] 1239 	mov	_gravity,dpl
      00049D 85 83 38         [24] 1240 	mov	(_gravity + 1),dph
      0004A0 85 F0 39         [24] 1241 	mov	(_gravity + 2),b
      0004A3 F5 3A            [12] 1242 	mov	(_gravity + 3),a
      0004A5 E5 81            [12] 1243 	mov	a,sp
      0004A7 24 FC            [12] 1244 	add	a,#0xfc
      0004A9 F5 81            [12] 1245 	mov	sp,a
                                   1246 ;	main.c:266: write_com(0x01);
      0004AB 75 82 01         [24] 1247 	mov	dpl,#0x01
      0004AE 02 01 35         [24] 1248 	ljmp	_write_com
                                   1249 ;------------------------------------------------------------
                                   1250 ;Allocation info for local variables in function 'enginepower'
                                   1251 ;------------------------------------------------------------
                                   1252 ;w                         Allocated to registers r7 
                                   1253 ;------------------------------------------------------------
                                   1254 ;	main.c:269: void enginepower()
                                   1255 ;	-----------------------------------------
                                   1256 ;	 function enginepower
                                   1257 ;	-----------------------------------------
      0004B1                       1258 _enginepower:
                                   1259 ;	main.c:272: write_com(0x01);
      0004B1 75 82 01         [24] 1260 	mov	dpl,#0x01
      0004B4 12 01 35         [24] 1261 	lcall	_write_com
                                   1262 ;	main.c:273: for (w=0;w<17;w++)
      0004B7 7F 00            [12] 1263 	mov	r7,#0x00
      0004B9                       1264 00106$:
                                   1265 ;	main.c:275: write_data(enginep1[w]);
      0004B9 EF               [12] 1266 	mov	a,r7
      0004BA 90 11 60         [24] 1267 	mov	dptr,#_enginep1
      0004BD 93               [24] 1268 	movc	a,@a+dptr
      0004BE F5 82            [12] 1269 	mov	dpl,a
      0004C0 C0 07            [24] 1270 	push	ar7
      0004C2 12 01 4E         [24] 1271 	lcall	_write_data
                                   1272 ;	main.c:276: delay(100);
      0004C5 90 00 64         [24] 1273 	mov	dptr,#0x0064
      0004C8 12 01 11         [24] 1274 	lcall	_delay
      0004CB D0 07            [24] 1275 	pop	ar7
                                   1276 ;	main.c:273: for (w=0;w<17;w++)
      0004CD 0F               [12] 1277 	inc	r7
      0004CE BF 11 00         [24] 1278 	cjne	r7,#0x11,00153$
      0004D1                       1279 00153$:
      0004D1 40 E6            [24] 1280 	jc	00106$
                                   1281 ;	main.c:278: delay(500);
      0004D3 90 01 F4         [24] 1282 	mov	dptr,#0x01F4
      0004D6 12 01 11         [24] 1283 	lcall	_delay
                                   1284 ;	main.c:279: write_com(0X80+0x40);
      0004D9 75 82 C0         [24] 1285 	mov	dpl,#0xC0
      0004DC 12 01 35         [24] 1286 	lcall	_write_com
                                   1287 ;	main.c:280: for (w=0;w<16;w++)
      0004DF 7F 00            [12] 1288 	mov	r7,#0x00
      0004E1                       1289 00108$:
                                   1290 ;	main.c:282: write_data(enginep2[w]);
      0004E1 EF               [12] 1291 	mov	a,r7
      0004E2 90 11 72         [24] 1292 	mov	dptr,#_enginep2
      0004E5 93               [24] 1293 	movc	a,@a+dptr
      0004E6 F5 82            [12] 1294 	mov	dpl,a
      0004E8 C0 07            [24] 1295 	push	ar7
      0004EA 12 01 4E         [24] 1296 	lcall	_write_data
                                   1297 ;	main.c:283: delay(100);
      0004ED 90 00 64         [24] 1298 	mov	dptr,#0x0064
      0004F0 12 01 11         [24] 1299 	lcall	_delay
      0004F3 D0 07            [24] 1300 	pop	ar7
                                   1301 ;	main.c:280: for (w=0;w<16;w++)
      0004F5 0F               [12] 1302 	inc	r7
      0004F6 BF 10 00         [24] 1303 	cjne	r7,#0x10,00155$
      0004F9                       1304 00155$:
      0004F9 40 E6            [24] 1305 	jc	00108$
                                   1306 ;	main.c:285: delay(500);
      0004FB 90 01 F4         [24] 1307 	mov	dptr,#0x01F4
      0004FE 12 01 11         [24] 1308 	lcall	_delay
                                   1309 ;	main.c:286: write_com(0x01);
      000501 75 82 01         [24] 1310 	mov	dpl,#0x01
      000504 12 01 35         [24] 1311 	lcall	_write_com
                                   1312 ;	main.c:287: for (w=0;w<16;w++)
      000507 7F 00            [12] 1313 	mov	r7,#0x00
      000509                       1314 00110$:
                                   1315 ;	main.c:289: write_data(enginep3[w]);
      000509 EF               [12] 1316 	mov	a,r7
      00050A 90 11 84         [24] 1317 	mov	dptr,#_enginep3
      00050D 93               [24] 1318 	movc	a,@a+dptr
      00050E F5 82            [12] 1319 	mov	dpl,a
      000510 C0 07            [24] 1320 	push	ar7
      000512 12 01 4E         [24] 1321 	lcall	_write_data
                                   1322 ;	main.c:290: delay(100);
      000515 90 00 64         [24] 1323 	mov	dptr,#0x0064
      000518 12 01 11         [24] 1324 	lcall	_delay
      00051B D0 07            [24] 1325 	pop	ar7
                                   1326 ;	main.c:287: for (w=0;w<16;w++)
      00051D 0F               [12] 1327 	inc	r7
      00051E BF 10 00         [24] 1328 	cjne	r7,#0x10,00157$
      000521                       1329 00157$:
      000521 40 E6            [24] 1330 	jc	00110$
                                   1331 ;	main.c:292: delay(500);
      000523 90 01 F4         [24] 1332 	mov	dptr,#0x01F4
      000526 12 01 11         [24] 1333 	lcall	_delay
                                   1334 ;	main.c:293: write_com(0X80+0x40);
      000529 75 82 C0         [24] 1335 	mov	dpl,#0xC0
      00052C 12 01 35         [24] 1336 	lcall	_write_com
                                   1337 ;	main.c:294: for (w=0;w<16;w++)
      00052F 7F 00            [12] 1338 	mov	r7,#0x00
      000531                       1339 00112$:
                                   1340 ;	main.c:296: write_data(enginep4[w]);
      000531 EF               [12] 1341 	mov	a,r7
      000532 90 11 95         [24] 1342 	mov	dptr,#_enginep4
      000535 93               [24] 1343 	movc	a,@a+dptr
      000536 F5 82            [12] 1344 	mov	dpl,a
      000538 C0 07            [24] 1345 	push	ar7
      00053A 12 01 4E         [24] 1346 	lcall	_write_data
                                   1347 ;	main.c:297: delay(100);
      00053D 90 00 64         [24] 1348 	mov	dptr,#0x0064
      000540 12 01 11         [24] 1349 	lcall	_delay
      000543 D0 07            [24] 1350 	pop	ar7
                                   1351 ;	main.c:294: for (w=0;w<16;w++)
      000545 0F               [12] 1352 	inc	r7
      000546 BF 10 00         [24] 1353 	cjne	r7,#0x10,00159$
      000549                       1354 00159$:
      000549 40 E6            [24] 1355 	jc	00112$
                                   1356 ;	main.c:299: delay(500);
      00054B 90 01 F4         [24] 1357 	mov	dptr,#0x01F4
      00054E 12 01 11         [24] 1358 	lcall	_delay
                                   1359 ;	main.c:300: write_com(0x01);
      000551 75 82 01         [24] 1360 	mov	dpl,#0x01
      000554 12 01 35         [24] 1361 	lcall	_write_com
                                   1362 ;	main.c:301: for (w=0;w<7;w++)
      000557 7F 00            [12] 1363 	mov	r7,#0x00
      000559                       1364 00114$:
                                   1365 ;	main.c:303: write_data(enginep5[w]);
      000559 EF               [12] 1366 	mov	a,r7
      00055A 90 11 A6         [24] 1367 	mov	dptr,#_enginep5
      00055D 93               [24] 1368 	movc	a,@a+dptr
      00055E F5 82            [12] 1369 	mov	dpl,a
      000560 C0 07            [24] 1370 	push	ar7
      000562 12 01 4E         [24] 1371 	lcall	_write_data
                                   1372 ;	main.c:304: delay(100);
      000565 90 00 64         [24] 1373 	mov	dptr,#0x0064
      000568 12 01 11         [24] 1374 	lcall	_delay
      00056B D0 07            [24] 1375 	pop	ar7
                                   1376 ;	main.c:301: for (w=0;w<7;w++)
      00056D 0F               [12] 1377 	inc	r7
      00056E BF 07 00         [24] 1378 	cjne	r7,#0x07,00161$
      000571                       1379 00161$:
      000571 40 E6            [24] 1380 	jc	00114$
                                   1381 ;	main.c:306: delay(800);
      000573 90 03 20         [24] 1382 	mov	dptr,#0x0320
      000576 12 01 11         [24] 1383 	lcall	_delay
                                   1384 ;	main.c:307: ship_thrust = ship_thrust * 0.75;
      000579 C0 2B            [24] 1385 	push	_ship_thrust
      00057B C0 2C            [24] 1386 	push	(_ship_thrust + 1)
      00057D C0 2D            [24] 1387 	push	(_ship_thrust + 2)
      00057F C0 2E            [24] 1388 	push	(_ship_thrust + 3)
      000581 90 00 00         [24] 1389 	mov	dptr,#0x0000
      000584 75 F0 40         [24] 1390 	mov	b,#0x40
      000587 74 3F            [12] 1391 	mov	a,#0x3F
      000589 12 0B 98         [24] 1392 	lcall	___fsmul
      00058C 85 82 2B         [24] 1393 	mov	_ship_thrust,dpl
      00058F 85 83 2C         [24] 1394 	mov	(_ship_thrust + 1),dph
      000592 85 F0 2D         [24] 1395 	mov	(_ship_thrust + 2),b
      000595 F5 2E            [12] 1396 	mov	(_ship_thrust + 3),a
      000597 E5 81            [12] 1397 	mov	a,sp
      000599 24 FC            [12] 1398 	add	a,#0xfc
      00059B F5 81            [12] 1399 	mov	sp,a
                                   1400 ;	main.c:308: write_com(0x01);
      00059D 75 82 01         [24] 1401 	mov	dpl,#0x01
      0005A0 02 01 35         [24] 1402 	ljmp	_write_com
                                   1403 ;------------------------------------------------------------
                                   1404 ;Allocation info for local variables in function 'main'
                                   1405 ;------------------------------------------------------------
                                   1406 ;	main.c:311: void main()
                                   1407 ;	-----------------------------------------
                                   1408 ;	 function main
                                   1409 ;	-----------------------------------------
      0005A3                       1410 _main:
                                   1411 ;	main.c:313: init();
      0005A3 12 01 67         [24] 1412 	lcall	_init
                                   1413 ;	main.c:314: start();
      0005A6 12 01 87         [24] 1414 	lcall	_start
                                   1415 ;	main.c:315: Timer0Init();
      0005A9 12 00 F3         [24] 1416 	lcall	_Timer0Init
                                   1417 ;	main.c:316: while(1)
      0005AC                       1418 00131$:
                                   1419 ;	main.c:318: digit(height);
      0005AC 85 33 82         [24] 1420 	mov	dpl,_height
      0005AF 85 34 83         [24] 1421 	mov	dph,(_height + 1)
      0005B2 85 35 F0         [24] 1422 	mov	b,(_height + 2)
      0005B5 E5 36            [12] 1423 	mov	a,(_height + 3)
      0005B7 12 08 AC         [24] 1424 	lcall	_digit
                                   1425 ;	main.c:319: write_data('h');
      0005BA 75 82 68         [24] 1426 	mov	dpl,#0x68
      0005BD 12 01 4E         [24] 1427 	lcall	_write_data
                                   1428 ;	main.c:320: write_data(':');
      0005C0 75 82 3A         [24] 1429 	mov	dpl,#0x3A
      0005C3 12 01 4E         [24] 1430 	lcall	_write_data
                                   1431 ;	main.c:321: sign();
      0005C6 12 09 2F         [24] 1432 	lcall	_sign
                                   1433 ;	main.c:322: displaynum();
      0005C9 12 09 69         [24] 1434 	lcall	_displaynum
                                   1435 ;	main.c:324: digit(velocity);
      0005CC 85 23 82         [24] 1436 	mov	dpl,_velocity
      0005CF 85 24 83         [24] 1437 	mov	dph,(_velocity + 1)
      0005D2 85 25 F0         [24] 1438 	mov	b,(_velocity + 2)
      0005D5 E5 26            [12] 1439 	mov	a,(_velocity + 3)
      0005D7 12 08 AC         [24] 1440 	lcall	_digit
                                   1441 ;	main.c:325: write_data(' ');
      0005DA 75 82 20         [24] 1442 	mov	dpl,#0x20
      0005DD 12 01 4E         [24] 1443 	lcall	_write_data
                                   1444 ;	main.c:326: write_data(' ');
      0005E0 75 82 20         [24] 1445 	mov	dpl,#0x20
      0005E3 12 01 4E         [24] 1446 	lcall	_write_data
                                   1447 ;	main.c:327: write_data('v');
      0005E6 75 82 76         [24] 1448 	mov	dpl,#0x76
      0005E9 12 01 4E         [24] 1449 	lcall	_write_data
                                   1450 ;	main.c:328: write_data(':');
      0005EC 75 82 3A         [24] 1451 	mov	dpl,#0x3A
      0005EF 12 01 4E         [24] 1452 	lcall	_write_data
                                   1453 ;	main.c:329: sign();
      0005F2 12 09 2F         [24] 1454 	lcall	_sign
                                   1455 ;	main.c:330: displaynum();
      0005F5 12 09 69         [24] 1456 	lcall	_displaynum
                                   1457 ;	main.c:331: write_com(0X80+0x40);
      0005F8 75 82 C0         [24] 1458 	mov	dpl,#0xC0
      0005FB 12 01 35         [24] 1459 	lcall	_write_com
                                   1460 ;	main.c:333: digit(a);
      0005FE 85 4B 82         [24] 1461 	mov	dpl,_a
      000601 85 4C 83         [24] 1462 	mov	dph,(_a + 1)
      000604 85 4D F0         [24] 1463 	mov	b,(_a + 2)
      000607 E5 4E            [12] 1464 	mov	a,(_a + 3)
      000609 12 08 AC         [24] 1465 	lcall	_digit
                                   1466 ;	main.c:334: write_data('a');
      00060C 75 82 61         [24] 1467 	mov	dpl,#0x61
      00060F 12 01 4E         [24] 1468 	lcall	_write_data
                                   1469 ;	main.c:335: write_data(':');
      000612 75 82 3A         [24] 1470 	mov	dpl,#0x3A
      000615 12 01 4E         [24] 1471 	lcall	_write_data
                                   1472 ;	main.c:336: sign();
      000618 12 09 2F         [24] 1473 	lcall	_sign
                                   1474 ;	main.c:337: displaynum();
      00061B 12 09 69         [24] 1475 	lcall	_displaynum
                                   1476 ;	main.c:339: digit(fuel);
      00061E 85 3B 82         [24] 1477 	mov	dpl,_fuel
      000621 85 3C 83         [24] 1478 	mov	dph,(_fuel + 1)
      000624 85 3D F0         [24] 1479 	mov	b,(_fuel + 2)
      000627 E5 3E            [12] 1480 	mov	a,(_fuel + 3)
      000629 12 08 AC         [24] 1481 	lcall	_digit
                                   1482 ;	main.c:340: write_data(' ');
      00062C 75 82 20         [24] 1483 	mov	dpl,#0x20
      00062F 12 01 4E         [24] 1484 	lcall	_write_data
                                   1485 ;	main.c:341: write_data(' ');
      000632 75 82 20         [24] 1486 	mov	dpl,#0x20
      000635 12 01 4E         [24] 1487 	lcall	_write_data
                                   1488 ;	main.c:342: write_data('f');
      000638 75 82 66         [24] 1489 	mov	dpl,#0x66
      00063B 12 01 4E         [24] 1490 	lcall	_write_data
                                   1491 ;	main.c:343: write_data(':');
      00063E 75 82 3A         [24] 1492 	mov	dpl,#0x3A
      000641 12 01 4E         [24] 1493 	lcall	_write_data
                                   1494 ;	main.c:344: displaynum();
      000644 12 09 69         [24] 1495 	lcall	_displaynum
                                   1496 ;	main.c:345: write_data('%');
      000647 75 82 25         [24] 1497 	mov	dpl,#0x25
      00064A 12 01 4E         [24] 1498 	lcall	_write_data
                                   1499 ;	main.c:347: write_com(0x02);
      00064D 75 82 02         [24] 1500 	mov	dpl,#0x02
      000650 12 01 35         [24] 1501 	lcall	_write_com
                                   1502 ;	main.c:349: delay(50);
      000653 90 00 32         [24] 1503 	mov	dptr,#0x0032
      000656 12 01 11         [24] 1504 	lcall	_delay
                                   1505 ;	main.c:350: if (velocity > 20.0)
      000659 E4               [12] 1506 	clr	a
      00065A C0 E0            [24] 1507 	push	acc
      00065C C0 E0            [24] 1508 	push	acc
      00065E 74 A0            [12] 1509 	mov	a,#0xA0
      000660 C0 E0            [24] 1510 	push	acc
      000662 23               [12] 1511 	rl	a
      000663 C0 E0            [24] 1512 	push	acc
      000665 85 23 82         [24] 1513 	mov	dpl,_velocity
      000668 85 24 83         [24] 1514 	mov	dph,(_velocity + 1)
      00066B 85 25 F0         [24] 1515 	mov	b,(_velocity + 2)
      00066E E5 26            [12] 1516 	mov	a,(_velocity + 3)
      000670 12 0C 9C         [24] 1517 	lcall	___fsgt
      000673 AF 82            [24] 1518 	mov	r7,dpl
      000675 E5 81            [12] 1519 	mov	a,sp
      000677 24 FC            [12] 1520 	add	a,#0xfc
      000679 F5 81            [12] 1521 	mov	sp,a
      00067B EF               [12] 1522 	mov	a,r7
      00067C 60 12            [24] 1523 	jz	00102$
                                   1524 ;	main.c:352: TR0 = 0;
      00067E C2 8C            [12] 1525 	clr	_TR0
                                   1526 ;	main.c:353: enginepower();
      000680 12 04 B1         [24] 1527 	lcall	_enginepower
                                   1528 ;	main.c:354: velocity = 10.0;
      000683 E4               [12] 1529 	clr	a
      000684 F5 23            [12] 1530 	mov	_velocity,a
      000686 F5 24            [12] 1531 	mov	(_velocity + 1),a
      000688 75 25 20         [24] 1532 	mov	(_velocity + 2),#0x20
      00068B 75 26 41         [24] 1533 	mov	(_velocity + 3),#0x41
                                   1534 ;	main.c:355: TR0 = 1;
      00068E D2 8C            [12] 1535 	setb	_TR0
      000690                       1536 00102$:
                                   1537 ;	main.c:357: if (velocity < - 20.0)
      000690 E4               [12] 1538 	clr	a
      000691 C0 E0            [24] 1539 	push	acc
      000693 C0 E0            [24] 1540 	push	acc
      000695 74 A0            [12] 1541 	mov	a,#0xA0
      000697 C0 E0            [24] 1542 	push	acc
      000699 74 C1            [12] 1543 	mov	a,#0xC1
      00069B C0 E0            [24] 1544 	push	acc
      00069D 85 23 82         [24] 1545 	mov	dpl,_velocity
      0006A0 85 24 83         [24] 1546 	mov	dph,(_velocity + 1)
      0006A3 85 25 F0         [24] 1547 	mov	b,(_velocity + 2)
      0006A6 E5 26            [12] 1548 	mov	a,(_velocity + 3)
      0006A8 12 0C CC         [24] 1549 	lcall	___fslt
      0006AB AF 82            [24] 1550 	mov	r7,dpl
      0006AD E5 81            [12] 1551 	mov	a,sp
      0006AF 24 FC            [12] 1552 	add	a,#0xfc
      0006B1 F5 81            [12] 1553 	mov	sp,a
      0006B3 EF               [12] 1554 	mov	a,r7
      0006B4 60 12            [24] 1555 	jz	00104$
                                   1556 ;	main.c:359: TR0 = 0;
      0006B6 C2 8C            [12] 1557 	clr	_TR0
                                   1558 ;	main.c:360: enginepower();
      0006B8 12 04 B1         [24] 1559 	lcall	_enginepower
                                   1560 ;	main.c:361: velocity = 10.0;
      0006BB E4               [12] 1561 	clr	a
      0006BC F5 23            [12] 1562 	mov	_velocity,a
      0006BE F5 24            [12] 1563 	mov	(_velocity + 1),a
      0006C0 75 25 20         [24] 1564 	mov	(_velocity + 2),#0x20
      0006C3 75 26 41         [24] 1565 	mov	(_velocity + 3),#0x41
                                   1566 ;	main.c:362: TR0 = 1;
      0006C6 D2 8C            [12] 1567 	setb	_TR0
      0006C8                       1568 00104$:
                                   1569 ;	main.c:364: if (thrustkey == 0)
      0006C8 30 B2 03         [24] 1570 	jnb	_P3_2,00202$
      0006CB 02 07 85         [24] 1571 	ljmp	00114$
      0006CE                       1572 00202$:
                                   1573 ;	main.c:366: n++;
      0006CE 05 59            [12] 1574 	inc	_n
      0006D0 E4               [12] 1575 	clr	a
      0006D1 B5 59 02         [24] 1576 	cjne	a,_n,00203$
      0006D4 05 5A            [12] 1577 	inc	(_n + 1)
      0006D6                       1578 00203$:
                                   1579 ;	main.c:367: if (n % 200 == 0)
      0006D6 75 08 C8         [24] 1580 	mov	__moduint_PARM_2,#0xC8
      0006D9 75 09 00         [24] 1581 	mov	(__moduint_PARM_2 + 1),#0x00
      0006DC 85 59 82         [24] 1582 	mov	dpl,_n
      0006DF 85 5A 83         [24] 1583 	mov	dph,(_n + 1)
      0006E2 12 0C FC         [24] 1584 	lcall	__moduint
      0006E5 E5 82            [12] 1585 	mov	a,dpl
      0006E7 85 83 F0         [24] 1586 	mov	b,dph
      0006EA 45 F0            [12] 1587 	orl	a,b
      0006EC 70 07            [24] 1588 	jnz	00106$
                                   1589 ;	main.c:369: TR0 = 0;
      0006EE C2 8C            [12] 1590 	clr	_TR0
                                   1591 ;	main.c:370: fuelleak();
      0006F0 12 03 60         [24] 1592 	lcall	_fuelleak
                                   1593 ;	main.c:371: TR0 = 1;
      0006F3 D2 8C            [12] 1594 	setb	_TR0
      0006F5                       1595 00106$:
                                   1596 ;	main.c:373: if (n % 350 == 0)
      0006F5 75 08 5E         [24] 1597 	mov	__moduint_PARM_2,#0x5E
      0006F8 75 09 01         [24] 1598 	mov	(__moduint_PARM_2 + 1),#0x01
      0006FB 85 59 82         [24] 1599 	mov	dpl,_n
      0006FE 85 5A 83         [24] 1600 	mov	dph,(_n + 1)
      000701 12 0C FC         [24] 1601 	lcall	__moduint
      000704 E5 82            [12] 1602 	mov	a,dpl
      000706 85 83 F0         [24] 1603 	mov	b,dph
      000709 45 F0            [12] 1604 	orl	a,b
      00070B 70 07            [24] 1605 	jnz	00108$
                                   1606 ;	main.c:375: TR0 = 0;
      00070D C2 8C            [12] 1607 	clr	_TR0
                                   1608 ;	main.c:376: turb();
      00070F 12 04 09         [24] 1609 	lcall	_turb
                                   1610 ;	main.c:377: TR0 = 1;
      000712 D2 8C            [12] 1611 	setb	_TR0
      000714                       1612 00108$:
                                   1613 ;	main.c:379: if (n == 60000)
      000714 AC 59            [24] 1614 	mov	r4,_n
      000716 AD 5A            [24] 1615 	mov	r5,(_n + 1)
      000718 7E 00            [12] 1616 	mov	r6,#0x00
      00071A 7F 00            [12] 1617 	mov	r7,#0x00
      00071C BC 60 15         [24] 1618 	cjne	r4,#0x60,00110$
      00071F BD EA 12         [24] 1619 	cjne	r5,#0xEA,00110$
      000722 BE 00 0F         [24] 1620 	cjne	r6,#0x00,00110$
      000725 BF 00 0C         [24] 1621 	cjne	r7,#0x00,00110$
                                   1622 ;	main.c:381: n = 0;
      000728 E4               [12] 1623 	clr	a
      000729 F5 59            [12] 1624 	mov	_n,a
      00072B F5 5A            [12] 1625 	mov	(_n + 1),a
                                   1626 ;	main.c:382: s++;
      00072D 05 5B            [12] 1627 	inc	_s
                                   1628 ;	genFromRTrack removed	clr	a
      00072F B5 5B 02         [24] 1629 	cjne	a,_s,00208$
      000732 05 5C            [12] 1630 	inc	(_s + 1)
      000734                       1631 00208$:
      000734                       1632 00110$:
                                   1633 ;	main.c:384: if (s == 60000)
      000734 AC 5B            [24] 1634 	mov	r4,_s
      000736 AD 5C            [24] 1635 	mov	r5,(_s + 1)
      000738 7E 00            [12] 1636 	mov	r6,#0x00
      00073A 7F 00            [12] 1637 	mov	r7,#0x00
      00073C BC 60 0E         [24] 1638 	cjne	r4,#0x60,00112$
      00073F BD EA 0B         [24] 1639 	cjne	r5,#0xEA,00112$
      000742 BE 00 08         [24] 1640 	cjne	r6,#0x00,00112$
      000745 BF 00 05         [24] 1641 	cjne	r7,#0x00,00112$
                                   1642 ;	main.c:386: s = 0;
      000748 E4               [12] 1643 	clr	a
      000749 F5 5B            [12] 1644 	mov	_s,a
      00074B F5 5C            [12] 1645 	mov	(_s + 1),a
      00074D                       1646 00112$:
                                   1647 ;	main.c:388: thrust = ship_thrust;
      00074D 85 2B 27         [24] 1648 	mov	_thrust,_ship_thrust
      000750 85 2C 28         [24] 1649 	mov	(_thrust + 1),(_ship_thrust + 1)
      000753 85 2D 29         [24] 1650 	mov	(_thrust + 2),(_ship_thrust + 2)
      000756 85 2E 2A         [24] 1651 	mov	(_thrust + 3),(_ship_thrust + 3)
                                   1652 ;	main.c:389: fuel = fuel - 0.5;
      000759 E4               [12] 1653 	clr	a
      00075A C0 E0            [24] 1654 	push	acc
      00075C C0 E0            [24] 1655 	push	acc
      00075E C0 E0            [24] 1656 	push	acc
      000760 74 3F            [12] 1657 	mov	a,#0x3F
      000762 C0 E0            [24] 1658 	push	acc
      000764 85 3B 82         [24] 1659 	mov	dpl,_fuel
      000767 85 3C 83         [24] 1660 	mov	dph,(_fuel + 1)
      00076A 85 3D F0         [24] 1661 	mov	b,(_fuel + 2)
      00076D E5 3E            [12] 1662 	mov	a,(_fuel + 3)
      00076F 12 0B 8D         [24] 1663 	lcall	___fssub
      000772 85 82 3B         [24] 1664 	mov	_fuel,dpl
      000775 85 83 3C         [24] 1665 	mov	(_fuel + 1),dph
      000778 85 F0 3D         [24] 1666 	mov	(_fuel + 2),b
      00077B F5 3E            [12] 1667 	mov	(_fuel + 3),a
      00077D E5 81            [12] 1668 	mov	a,sp
      00077F 24 FC            [12] 1669 	add	a,#0xfc
      000781 F5 81            [12] 1670 	mov	sp,a
      000783 80 09            [24] 1671 	sjmp	00115$
      000785                       1672 00114$:
                                   1673 ;	main.c:393: thrust = 0;
      000785 E4               [12] 1674 	clr	a
      000786 F5 27            [12] 1675 	mov	_thrust,a
      000788 F5 28            [12] 1676 	mov	(_thrust + 1),a
      00078A F5 29            [12] 1677 	mov	(_thrust + 2),a
      00078C F5 2A            [12] 1678 	mov	(_thrust + 3),a
      00078E                       1679 00115$:
                                   1680 ;	main.c:395: if (fuel < 0.1)
      00078E 74 CD            [12] 1681 	mov	a,#0xCD
      000790 C0 E0            [24] 1682 	push	acc
      000792 14               [12] 1683 	dec	a
      000793 C0 E0            [24] 1684 	push	acc
      000795 C0 E0            [24] 1685 	push	acc
      000797 74 3D            [12] 1686 	mov	a,#0x3D
      000799 C0 E0            [24] 1687 	push	acc
      00079B 85 3B 82         [24] 1688 	mov	dpl,_fuel
      00079E 85 3C 83         [24] 1689 	mov	dph,(_fuel + 1)
      0007A1 85 3D F0         [24] 1690 	mov	b,(_fuel + 2)
      0007A4 E5 3E            [12] 1691 	mov	a,(_fuel + 3)
      0007A6 12 0C CC         [24] 1692 	lcall	___fslt
      0007A9 AF 82            [24] 1693 	mov	r7,dpl
      0007AB E5 81            [12] 1694 	mov	a,sp
      0007AD 24 FC            [12] 1695 	add	a,#0xfc
      0007AF F5 81            [12] 1696 	mov	sp,a
      0007B1 EF               [12] 1697 	mov	a,r7
      0007B2 60 11            [24] 1698 	jz	00117$
                                   1699 ;	main.c:397: thrust = 0;
      0007B4 E4               [12] 1700 	clr	a
      0007B5 F5 27            [12] 1701 	mov	_thrust,a
      0007B7 F5 28            [12] 1702 	mov	(_thrust + 1),a
      0007B9 F5 29            [12] 1703 	mov	(_thrust + 2),a
      0007BB F5 2A            [12] 1704 	mov	(_thrust + 3),a
                                   1705 ;	main.c:398: fuel = 0.0;
      0007BD F5 3B            [12] 1706 	mov	_fuel,a
      0007BF F5 3C            [12] 1707 	mov	(_fuel + 1),a
      0007C1 F5 3D            [12] 1708 	mov	(_fuel + 2),a
      0007C3 F5 3E            [12] 1709 	mov	(_fuel + 3),a
      0007C5                       1710 00117$:
                                   1711 ;	main.c:401: if (height < 0.1)
      0007C5 74 CD            [12] 1712 	mov	a,#0xCD
      0007C7 C0 E0            [24] 1713 	push	acc
      0007C9 14               [12] 1714 	dec	a
      0007CA C0 E0            [24] 1715 	push	acc
      0007CC C0 E0            [24] 1716 	push	acc
      0007CE 74 3D            [12] 1717 	mov	a,#0x3D
      0007D0 C0 E0            [24] 1718 	push	acc
      0007D2 85 33 82         [24] 1719 	mov	dpl,_height
      0007D5 85 34 83         [24] 1720 	mov	dph,(_height + 1)
      0007D8 85 35 F0         [24] 1721 	mov	b,(_height + 2)
      0007DB E5 36            [12] 1722 	mov	a,(_height + 3)
      0007DD 12 0C CC         [24] 1723 	lcall	___fslt
      0007E0 AF 82            [24] 1724 	mov	r7,dpl
      0007E2 E5 81            [12] 1725 	mov	a,sp
      0007E4 24 FC            [12] 1726 	add	a,#0xfc
      0007E6 F5 81            [12] 1727 	mov	sp,a
      0007E8 EF               [12] 1728 	mov	a,r7
      0007E9 70 03            [24] 1729 	jnz	00212$
      0007EB 02 05 AC         [24] 1730 	ljmp	00131$
      0007EE                       1731 00212$:
                                   1732 ;	main.c:403: write_com(0x01);
      0007EE 75 82 01         [24] 1733 	mov	dpl,#0x01
      0007F1 12 01 35         [24] 1734 	lcall	_write_com
                                   1735 ;	main.c:404: write_com(0x02);
      0007F4 75 82 02         [24] 1736 	mov	dpl,#0x02
      0007F7 12 01 35         [24] 1737 	lcall	_write_com
                                   1738 ;	main.c:405: if (velocity > -10.0)
      0007FA E4               [12] 1739 	clr	a
      0007FB C0 E0            [24] 1740 	push	acc
      0007FD C0 E0            [24] 1741 	push	acc
      0007FF 74 20            [12] 1742 	mov	a,#0x20
      000801 C0 E0            [24] 1743 	push	acc
      000803 74 C1            [12] 1744 	mov	a,#0xC1
      000805 C0 E0            [24] 1745 	push	acc
      000807 85 23 82         [24] 1746 	mov	dpl,_velocity
      00080A 85 24 83         [24] 1747 	mov	dph,(_velocity + 1)
      00080D 85 25 F0         [24] 1748 	mov	b,(_velocity + 2)
      000810 E5 26            [12] 1749 	mov	a,(_velocity + 3)
      000812 12 0C 9C         [24] 1750 	lcall	___fsgt
      000815 AF 82            [24] 1751 	mov	r7,dpl
      000817 E5 81            [12] 1752 	mov	a,sp
      000819 24 FC            [12] 1753 	add	a,#0xfc
      00081B F5 81            [12] 1754 	mov	sp,a
      00081D EF               [12] 1755 	mov	a,r7
      00081E 60 46            [24] 1756 	jz	00123$
                                   1757 ;	main.c:407: for(num=0;num<8;num++)
      000820 75 22 00         [24] 1758 	mov	_num,#0x00
      000823                       1759 00133$:
                                   1760 ;	main.c:409: write_data(win[num]);
      000823 E5 22            [12] 1761 	mov	a,_num
      000825 90 10 96         [24] 1762 	mov	dptr,#_win
      000828 93               [24] 1763 	movc	a,@a+dptr
      000829 F5 82            [12] 1764 	mov	dpl,a
      00082B 12 01 4E         [24] 1765 	lcall	_write_data
                                   1766 ;	main.c:410: delay(200);
      00082E 90 00 C8         [24] 1767 	mov	dptr,#0x00C8
      000831 12 01 11         [24] 1768 	lcall	_delay
                                   1769 ;	main.c:407: for(num=0;num<8;num++)
      000834 05 22            [12] 1770 	inc	_num
      000836 74 F8            [12] 1771 	mov	a,#0x100 - 0x08
      000838 25 22            [12] 1772 	add	a,_num
      00083A 50 E7            [24] 1773 	jnc	00133$
                                   1774 ;	main.c:412: delay(300);
      00083C 90 01 2C         [24] 1775 	mov	dptr,#0x012C
      00083F 12 01 11         [24] 1776 	lcall	_delay
                                   1777 ;	main.c:413: write_com(0X80+0x40);
      000842 75 82 C0         [24] 1778 	mov	dpl,#0xC0
      000845 12 01 35         [24] 1779 	lcall	_write_com
                                   1780 ;	main.c:414: for(num=0;num<10;num++)
      000848 75 22 00         [24] 1781 	mov	_num,#0x00
      00084B                       1782 00135$:
                                   1783 ;	main.c:416: write_data(gameover[num]);
      00084B E5 22            [12] 1784 	mov	a,_num
      00084D 90 10 AC         [24] 1785 	mov	dptr,#_gameover
      000850 93               [24] 1786 	movc	a,@a+dptr
      000851 F5 82            [12] 1787 	mov	dpl,a
      000853 12 01 4E         [24] 1788 	lcall	_write_data
                                   1789 ;	main.c:417: delay(200);
      000856 90 00 C8         [24] 1790 	mov	dptr,#0x00C8
      000859 12 01 11         [24] 1791 	lcall	_delay
                                   1792 ;	main.c:414: for(num=0;num<10;num++)
      00085C 05 22            [12] 1793 	inc	_num
      00085E 74 F6            [12] 1794 	mov	a,#0x100 - 0x0A
      000860 25 22            [12] 1795 	add	a,_num
      000862 50 E7            [24] 1796 	jnc	00135$
      000864 80 44            [24] 1797 	sjmp	00126$
      000866                       1798 00123$:
                                   1799 ;	main.c:422: for(num=0;num<12;num++)
      000866 75 22 00         [24] 1800 	mov	_num,#0x00
      000869                       1801 00137$:
                                   1802 ;	main.c:424: write_data(lose[num]);
      000869 E5 22            [12] 1803 	mov	a,_num
      00086B 90 10 9F         [24] 1804 	mov	dptr,#_lose
      00086E 93               [24] 1805 	movc	a,@a+dptr
      00086F F5 82            [12] 1806 	mov	dpl,a
      000871 12 01 4E         [24] 1807 	lcall	_write_data
                                   1808 ;	main.c:425: delay(200);
      000874 90 00 C8         [24] 1809 	mov	dptr,#0x00C8
      000877 12 01 11         [24] 1810 	lcall	_delay
                                   1811 ;	main.c:422: for(num=0;num<12;num++)
      00087A 05 22            [12] 1812 	inc	_num
      00087C 74 F4            [12] 1813 	mov	a,#0x100 - 0x0C
      00087E 25 22            [12] 1814 	add	a,_num
      000880 50 E7            [24] 1815 	jnc	00137$
                                   1816 ;	main.c:427: delay(300);
      000882 90 01 2C         [24] 1817 	mov	dptr,#0x012C
      000885 12 01 11         [24] 1818 	lcall	_delay
                                   1819 ;	main.c:428: write_com(0X80+0x40);
      000888 75 82 C0         [24] 1820 	mov	dpl,#0xC0
      00088B 12 01 35         [24] 1821 	lcall	_write_com
                                   1822 ;	main.c:429: for(num=0;num<10;num++)
      00088E 75 22 00         [24] 1823 	mov	_num,#0x00
      000891                       1824 00139$:
                                   1825 ;	main.c:431: write_data(gameover[num]);
      000891 E5 22            [12] 1826 	mov	a,_num
      000893 90 10 AC         [24] 1827 	mov	dptr,#_gameover
      000896 93               [24] 1828 	movc	a,@a+dptr
      000897 F5 82            [12] 1829 	mov	dpl,a
      000899 12 01 4E         [24] 1830 	lcall	_write_data
                                   1831 ;	main.c:432: delay(200);
      00089C 90 00 C8         [24] 1832 	mov	dptr,#0x00C8
      00089F 12 01 11         [24] 1833 	lcall	_delay
                                   1834 ;	main.c:429: for(num=0;num<10;num++)
      0008A2 05 22            [12] 1835 	inc	_num
      0008A4 74 F6            [12] 1836 	mov	a,#0x100 - 0x0A
      0008A6 25 22            [12] 1837 	add	a,_num
      0008A8 50 E7            [24] 1838 	jnc	00139$
                                   1839 ;	main.c:435: while(1);
      0008AA                       1840 00126$:
      0008AA 80 FE            [24] 1841 	sjmp	00126$
                                   1842 ;------------------------------------------------------------
                                   1843 ;Allocation info for local variables in function 'digit'
                                   1844 ;------------------------------------------------------------
                                   1845 ;input                     Allocated to registers r4 r5 r6 r7 
                                   1846 ;b                         Allocated to registers r6 r7 
                                   1847 ;int_input                 Allocated to registers r6 r7 
                                   1848 ;------------------------------------------------------------
                                   1849 ;	main.c:441: void digit (float input)
                                   1850 ;	-----------------------------------------
                                   1851 ;	 function digit
                                   1852 ;	-----------------------------------------
      0008AC                       1853 _digit:
                                   1854 ;	main.c:444: int_input = (int) input;
      0008AC 12 0E 14         [24] 1855 	lcall	___fs2sint
                                   1856 ;	main.c:445: digit4 = int_input % 10;
      0008AF AE 82            [24] 1857 	mov	r6,dpl
      0008B1 AF 83            [24] 1858 	mov	r7,dph
      0008B3 75 08 0A         [24] 1859 	mov	__modsint_PARM_2,#0x0A
      0008B6 75 09 00         [24] 1860 	mov	(__modsint_PARM_2 + 1),#0x00
      0008B9 C0 07            [24] 1861 	push	ar7
      0008BB C0 06            [24] 1862 	push	ar6
      0008BD 12 0F 74         [24] 1863 	lcall	__modsint
      0008C0 AC 82            [24] 1864 	mov	r4,dpl
      0008C2 D0 06            [24] 1865 	pop	ar6
      0008C4 D0 07            [24] 1866 	pop	ar7
      0008C6 8C 56            [24] 1867 	mov	_digit4,r4
                                   1868 ;	main.c:446: b = int_input / 10;
      0008C8 75 08 0A         [24] 1869 	mov	__divsint_PARM_2,#0x0A
      0008CB 75 09 00         [24] 1870 	mov	(__divsint_PARM_2 + 1),#0x00
      0008CE 8E 82            [24] 1871 	mov	dpl,r6
      0008D0 8F 83            [24] 1872 	mov	dph,r7
      0008D2 12 0F AA         [24] 1873 	lcall	__divsint
                                   1874 ;	main.c:447: digit3 = b % 10;
      0008D5 AE 82            [24] 1875 	mov	r6,dpl
      0008D7 AF 83            [24] 1876 	mov	r7,dph
      0008D9 75 08 0A         [24] 1877 	mov	__modsint_PARM_2,#0x0A
      0008DC 75 09 00         [24] 1878 	mov	(__modsint_PARM_2 + 1),#0x00
      0008DF C0 07            [24] 1879 	push	ar7
      0008E1 C0 06            [24] 1880 	push	ar6
      0008E3 12 0F 74         [24] 1881 	lcall	__modsint
      0008E6 AC 82            [24] 1882 	mov	r4,dpl
      0008E8 D0 06            [24] 1883 	pop	ar6
      0008EA D0 07            [24] 1884 	pop	ar7
      0008EC 8C 55            [24] 1885 	mov	_digit3,r4
                                   1886 ;	main.c:448: b = b / 10;
      0008EE 75 08 0A         [24] 1887 	mov	__divsint_PARM_2,#0x0A
      0008F1 75 09 00         [24] 1888 	mov	(__divsint_PARM_2 + 1),#0x00
      0008F4 8E 82            [24] 1889 	mov	dpl,r6
      0008F6 8F 83            [24] 1890 	mov	dph,r7
      0008F8 12 0F AA         [24] 1891 	lcall	__divsint
                                   1892 ;	main.c:449: digit2 = b % 10;
      0008FB AE 82            [24] 1893 	mov	r6,dpl
      0008FD AF 83            [24] 1894 	mov	r7,dph
      0008FF 75 08 0A         [24] 1895 	mov	__modsint_PARM_2,#0x0A
      000902 75 09 00         [24] 1896 	mov	(__modsint_PARM_2 + 1),#0x00
      000905 C0 07            [24] 1897 	push	ar7
      000907 C0 06            [24] 1898 	push	ar6
      000909 12 0F 74         [24] 1899 	lcall	__modsint
      00090C AC 82            [24] 1900 	mov	r4,dpl
      00090E D0 06            [24] 1901 	pop	ar6
      000910 D0 07            [24] 1902 	pop	ar7
      000912 8C 54            [24] 1903 	mov	_digit2,r4
                                   1904 ;	main.c:450: b = b / 10;
      000914 75 08 0A         [24] 1905 	mov	__divsint_PARM_2,#0x0A
      000917 75 09 00         [24] 1906 	mov	(__divsint_PARM_2 + 1),#0x00
      00091A 8E 82            [24] 1907 	mov	dpl,r6
      00091C 8F 83            [24] 1908 	mov	dph,r7
      00091E 12 0F AA         [24] 1909 	lcall	__divsint
                                   1910 ;	main.c:451: digit1 = b % 10;
      000921 75 08 0A         [24] 1911 	mov	__modsint_PARM_2,#0x0A
      000924 75 09 00         [24] 1912 	mov	(__modsint_PARM_2 + 1),#0x00
      000927 12 0F 74         [24] 1913 	lcall	__modsint
      00092A AE 82            [24] 1914 	mov	r6,dpl
      00092C 8E 53            [24] 1915 	mov	_digit1,r6
      00092E 22               [24] 1916 	ret
                                   1917 ;------------------------------------------------------------
                                   1918 ;Allocation info for local variables in function 'sign'
                                   1919 ;------------------------------------------------------------
                                   1920 ;	main.c:454: void sign()
                                   1921 ;	-----------------------------------------
                                   1922 ;	 function sign
                                   1923 ;	-----------------------------------------
      00092F                       1924 _sign:
                                   1925 ;	main.c:456: if (digit4 < 0)
      00092F E5 56            [12] 1926 	mov	a,_digit4
      000931 30 E7 2F         [24] 1927 	jnb	acc.7,00102$
                                   1928 ;	main.c:458: write_data('-');
      000934 75 82 2D         [24] 1929 	mov	dpl,#0x2D
      000937 12 01 4E         [24] 1930 	lcall	_write_data
                                   1931 ;	main.c:459: digit1 = digit1 + (-2*digit1);
      00093A E5 53            [12] 1932 	mov	a,_digit1
      00093C 75 F0 FE         [24] 1933 	mov	b,#0xFE
      00093F A4               [48] 1934 	mul	ab
      000940 25 53            [12] 1935 	add	a,_digit1
      000942 F5 53            [12] 1936 	mov	_digit1,a
                                   1937 ;	main.c:460: digit2 = digit2 + (-2*digit2);
      000944 E5 54            [12] 1938 	mov	a,_digit2
      000946 75 F0 FE         [24] 1939 	mov	b,#0xFE
      000949 A4               [48] 1940 	mul	ab
      00094A 25 54            [12] 1941 	add	a,_digit2
      00094C F5 54            [12] 1942 	mov	_digit2,a
                                   1943 ;	main.c:461: digit3 = digit3 + (-2*digit3);
      00094E E5 55            [12] 1944 	mov	a,_digit3
      000950 75 F0 FE         [24] 1945 	mov	b,#0xFE
      000953 A4               [48] 1946 	mul	ab
      000954 25 55            [12] 1947 	add	a,_digit3
      000956 F5 55            [12] 1948 	mov	_digit3,a
                                   1949 ;	main.c:462: digit4 = digit4 + (-2*digit4);
      000958 E5 56            [12] 1950 	mov	a,_digit4
      00095A 75 F0 FE         [24] 1951 	mov	b,#0xFE
      00095D A4               [48] 1952 	mul	ab
      00095E 25 56            [12] 1953 	add	a,_digit4
      000960 F5 56            [12] 1954 	mov	_digit4,a
      000962 22               [24] 1955 	ret
      000963                       1956 00102$:
                                   1957 ;	main.c:466: write_data('+');
      000963 75 82 2B         [24] 1958 	mov	dpl,#0x2B
      000966 02 01 4E         [24] 1959 	ljmp	_write_data
                                   1960 ;------------------------------------------------------------
                                   1961 ;Allocation info for local variables in function 'displaynum'
                                   1962 ;------------------------------------------------------------
                                   1963 ;	main.c:470: void displaynum()
                                   1964 ;	-----------------------------------------
                                   1965 ;	 function displaynum
                                   1966 ;	-----------------------------------------
      000969                       1967 _displaynum:
                                   1968 ;	main.c:472: write_data(digit1+48);
      000969 74 30            [12] 1969 	mov	a,#0x30
      00096B 25 53            [12] 1970 	add	a,_digit1
      00096D F5 82            [12] 1971 	mov	dpl,a
      00096F 12 01 4E         [24] 1972 	lcall	_write_data
                                   1973 ;	main.c:473: write_data(digit2+48);
      000972 74 30            [12] 1974 	mov	a,#0x30
      000974 25 54            [12] 1975 	add	a,_digit2
      000976 F5 82            [12] 1976 	mov	dpl,a
      000978 12 01 4E         [24] 1977 	lcall	_write_data
                                   1978 ;	main.c:474: write_data(digit3+48);
      00097B 74 30            [12] 1979 	mov	a,#0x30
      00097D 25 55            [12] 1980 	add	a,_digit3
      00097F F5 82            [12] 1981 	mov	dpl,a
      000981 12 01 4E         [24] 1982 	lcall	_write_data
                                   1983 ;	main.c:475: write_data(digit4+48);
      000984 74 30            [12] 1984 	mov	a,#0x30
      000986 25 56            [12] 1985 	add	a,_digit4
      000988 F5 82            [12] 1986 	mov	dpl,a
      00098A 02 01 4E         [24] 1987 	ljmp	_write_data
                                   1988 ;------------------------------------------------------------
                                   1989 ;Allocation info for local variables in function 'timer0'
                                   1990 ;------------------------------------------------------------
                                   1991 ;	main.c:478: void timer0(void) __interrupt 1
                                   1992 ;	-----------------------------------------
                                   1993 ;	 function timer0
                                   1994 ;	-----------------------------------------
      00098D                       1995 _timer0:
      00098D C0 21            [24] 1996 	push	bits
      00098F C0 E0            [24] 1997 	push	acc
      000991 C0 F0            [24] 1998 	push	b
      000993 C0 82            [24] 1999 	push	dpl
      000995 C0 83            [24] 2000 	push	dph
      000997 C0 07            [24] 2001 	push	(0+7)
      000999 C0 06            [24] 2002 	push	(0+6)
      00099B C0 05            [24] 2003 	push	(0+5)
      00099D C0 04            [24] 2004 	push	(0+4)
      00099F C0 03            [24] 2005 	push	(0+3)
      0009A1 C0 02            [24] 2006 	push	(0+2)
      0009A3 C0 01            [24] 2007 	push	(0+1)
      0009A5 C0 00            [24] 2008 	push	(0+0)
      0009A7 C0 D0            [24] 2009 	push	psw
      0009A9 75 D0 00         [24] 2010 	mov	psw,#0x00
                                   2011 ;	main.c:480: a = (8.0*thrust / (ship_mass + fuel) - gravity);
      0009AC C0 27            [24] 2012 	push	_thrust
      0009AE C0 28            [24] 2013 	push	(_thrust + 1)
      0009B0 C0 29            [24] 2014 	push	(_thrust + 2)
      0009B2 C0 2A            [24] 2015 	push	(_thrust + 3)
      0009B4 90 00 00         [24] 2016 	mov	dptr,#(0x00&0x00ff)
      0009B7 E4               [12] 2017 	clr	a
      0009B8 F5 F0            [12] 2018 	mov	b,a
      0009BA 74 41            [12] 2019 	mov	a,#0x41
      0009BC 12 0B 98         [24] 2020 	lcall	___fsmul
      0009BF AC 82            [24] 2021 	mov	r4,dpl
      0009C1 AD 83            [24] 2022 	mov	r5,dph
      0009C3 AE F0            [24] 2023 	mov	r6,b
      0009C5 FF               [12] 2024 	mov	r7,a
      0009C6 E5 81            [12] 2025 	mov	a,sp
      0009C8 24 FC            [12] 2026 	add	a,#0xfc
      0009CA F5 81            [12] 2027 	mov	sp,a
      0009CC C0 07            [24] 2028 	push	ar7
      0009CE C0 06            [24] 2029 	push	ar6
      0009D0 C0 05            [24] 2030 	push	ar5
      0009D2 C0 04            [24] 2031 	push	ar4
      0009D4 C0 3B            [24] 2032 	push	_fuel
      0009D6 C0 3C            [24] 2033 	push	(_fuel + 1)
      0009D8 C0 3D            [24] 2034 	push	(_fuel + 2)
      0009DA C0 3E            [24] 2035 	push	(_fuel + 3)
      0009DC 85 2F 82         [24] 2036 	mov	dpl,_ship_mass
      0009DF 85 30 83         [24] 2037 	mov	dph,(_ship_mass + 1)
      0009E2 85 31 F0         [24] 2038 	mov	b,(_ship_mass + 2)
      0009E5 E5 32            [12] 2039 	mov	a,(_ship_mass + 3)
      0009E7 12 0D 49         [24] 2040 	lcall	___fsadd
      0009EA A8 82            [24] 2041 	mov	r0,dpl
      0009EC A9 83            [24] 2042 	mov	r1,dph
      0009EE AA F0            [24] 2043 	mov	r2,b
      0009F0 FB               [12] 2044 	mov	r3,a
      0009F1 E5 81            [12] 2045 	mov	a,sp
      0009F3 24 FC            [12] 2046 	add	a,#0xfc
      0009F5 F5 81            [12] 2047 	mov	sp,a
      0009F7 D0 04            [24] 2048 	pop	ar4
      0009F9 D0 05            [24] 2049 	pop	ar5
      0009FB D0 06            [24] 2050 	pop	ar6
      0009FD D0 07            [24] 2051 	pop	ar7
      0009FF C0 00            [24] 2052 	push	ar0
      000A01 C0 01            [24] 2053 	push	ar1
      000A03 C0 02            [24] 2054 	push	ar2
      000A05 C0 03            [24] 2055 	push	ar3
      000A07 8C 82            [24] 2056 	mov	dpl,r4
      000A09 8D 83            [24] 2057 	mov	dph,r5
      000A0B 8E F0            [24] 2058 	mov	b,r6
      000A0D EF               [12] 2059 	mov	a,r7
      000A0E 12 0E B1         [24] 2060 	lcall	___fsdiv
      000A11 AC 82            [24] 2061 	mov	r4,dpl
      000A13 AD 83            [24] 2062 	mov	r5,dph
      000A15 AE F0            [24] 2063 	mov	r6,b
      000A17 FF               [12] 2064 	mov	r7,a
      000A18 E5 81            [12] 2065 	mov	a,sp
      000A1A 24 FC            [12] 2066 	add	a,#0xfc
      000A1C F5 81            [12] 2067 	mov	sp,a
      000A1E C0 37            [24] 2068 	push	_gravity
      000A20 C0 38            [24] 2069 	push	(_gravity + 1)
      000A22 C0 39            [24] 2070 	push	(_gravity + 2)
      000A24 C0 3A            [24] 2071 	push	(_gravity + 3)
      000A26 8C 82            [24] 2072 	mov	dpl,r4
      000A28 8D 83            [24] 2073 	mov	dph,r5
      000A2A 8E F0            [24] 2074 	mov	b,r6
      000A2C EF               [12] 2075 	mov	a,r7
      000A2D 12 0B 8D         [24] 2076 	lcall	___fssub
      000A30 AC 82            [24] 2077 	mov	r4,dpl
      000A32 AD 83            [24] 2078 	mov	r5,dph
      000A34 AE F0            [24] 2079 	mov	r6,b
      000A36 FF               [12] 2080 	mov	r7,a
      000A37 E5 81            [12] 2081 	mov	a,sp
      000A39 24 FC            [12] 2082 	add	a,#0xfc
      000A3B F5 81            [12] 2083 	mov	sp,a
      000A3D 8C 4B            [24] 2084 	mov	_a,r4
      000A3F 8D 4C            [24] 2085 	mov	(_a + 1),r5
      000A41 8E 4D            [24] 2086 	mov	(_a + 2),r6
      000A43 8F 4E            [24] 2087 	mov	(_a + 3),r7
                                   2088 ;	main.c:481: delta_v = delta_t * (8.0*thrust / (ship_mass + fuel) - gravity);
      000A45 C0 04            [24] 2089 	push	ar4
      000A47 C0 05            [24] 2090 	push	ar5
      000A49 C0 06            [24] 2091 	push	ar6
      000A4B C0 07            [24] 2092 	push	ar7
      000A4D 85 47 82         [24] 2093 	mov	dpl,_delta_t
      000A50 85 48 83         [24] 2094 	mov	dph,(_delta_t + 1)
      000A53 85 49 F0         [24] 2095 	mov	b,(_delta_t + 2)
      000A56 E5 4A            [12] 2096 	mov	a,(_delta_t + 3)
      000A58 12 0B 98         [24] 2097 	lcall	___fsmul
      000A5B 85 82 3F         [24] 2098 	mov	_delta_v,dpl
      000A5E 85 83 40         [24] 2099 	mov	(_delta_v + 1),dph
      000A61 85 F0 41         [24] 2100 	mov	(_delta_v + 2),b
      000A64 F5 42            [12] 2101 	mov	(_delta_v + 3),a
      000A66 E5 81            [12] 2102 	mov	a,sp
      000A68 24 FC            [12] 2103 	add	a,#0xfc
      000A6A F5 81            [12] 2104 	mov	sp,a
                                   2105 ;	main.c:482: velocity = velocity + delta_v;
      000A6C C0 3F            [24] 2106 	push	_delta_v
      000A6E C0 40            [24] 2107 	push	(_delta_v + 1)
      000A70 C0 41            [24] 2108 	push	(_delta_v + 2)
      000A72 C0 42            [24] 2109 	push	(_delta_v + 3)
      000A74 85 23 82         [24] 2110 	mov	dpl,_velocity
      000A77 85 24 83         [24] 2111 	mov	dph,(_velocity + 1)
      000A7A 85 25 F0         [24] 2112 	mov	b,(_velocity + 2)
      000A7D E5 26            [12] 2113 	mov	a,(_velocity + 3)
      000A7F 12 0D 49         [24] 2114 	lcall	___fsadd
      000A82 85 82 23         [24] 2115 	mov	_velocity,dpl
      000A85 85 83 24         [24] 2116 	mov	(_velocity + 1),dph
      000A88 85 F0 25         [24] 2117 	mov	(_velocity + 2),b
      000A8B F5 26            [12] 2118 	mov	(_velocity + 3),a
      000A8D E5 81            [12] 2119 	mov	a,sp
      000A8F 24 FC            [12] 2120 	add	a,#0xfc
      000A91 F5 81            [12] 2121 	mov	sp,a
                                   2122 ;	main.c:483: delta_h = velocity * delta_t;
      000A93 C0 47            [24] 2123 	push	_delta_t
      000A95 C0 48            [24] 2124 	push	(_delta_t + 1)
      000A97 C0 49            [24] 2125 	push	(_delta_t + 2)
      000A99 C0 4A            [24] 2126 	push	(_delta_t + 3)
      000A9B 85 23 82         [24] 2127 	mov	dpl,_velocity
      000A9E 85 24 83         [24] 2128 	mov	dph,(_velocity + 1)
      000AA1 85 25 F0         [24] 2129 	mov	b,(_velocity + 2)
      000AA4 E5 26            [12] 2130 	mov	a,(_velocity + 3)
      000AA6 12 0B 98         [24] 2131 	lcall	___fsmul
      000AA9 85 82 4F         [24] 2132 	mov	_delta_h,dpl
      000AAC 85 83 50         [24] 2133 	mov	(_delta_h + 1),dph
      000AAF 85 F0 51         [24] 2134 	mov	(_delta_h + 2),b
      000AB2 F5 52            [12] 2135 	mov	(_delta_h + 3),a
      000AB4 E5 81            [12] 2136 	mov	a,sp
      000AB6 24 FC            [12] 2137 	add	a,#0xfc
      000AB8 F5 81            [12] 2138 	mov	sp,a
                                   2139 ;	main.c:484: height = height + delta_h;
      000ABA C0 4F            [24] 2140 	push	_delta_h
      000ABC C0 50            [24] 2141 	push	(_delta_h + 1)
      000ABE C0 51            [24] 2142 	push	(_delta_h + 2)
      000AC0 C0 52            [24] 2143 	push	(_delta_h + 3)
      000AC2 85 33 82         [24] 2144 	mov	dpl,_height
      000AC5 85 34 83         [24] 2145 	mov	dph,(_height + 1)
      000AC8 85 35 F0         [24] 2146 	mov	b,(_height + 2)
      000ACB E5 36            [12] 2147 	mov	a,(_height + 3)
      000ACD 12 0D 49         [24] 2148 	lcall	___fsadd
      000AD0 85 82 33         [24] 2149 	mov	_height,dpl
      000AD3 85 83 34         [24] 2150 	mov	(_height + 1),dph
      000AD6 85 F0 35         [24] 2151 	mov	(_height + 2),b
      000AD9 F5 36            [12] 2152 	mov	(_height + 3),a
      000ADB E5 81            [12] 2153 	mov	a,sp
      000ADD 24 FC            [12] 2154 	add	a,#0xfc
      000ADF F5 81            [12] 2155 	mov	sp,a
      000AE1 D0 D0            [24] 2156 	pop	psw
      000AE3 D0 00            [24] 2157 	pop	(0+0)
      000AE5 D0 01            [24] 2158 	pop	(0+1)
      000AE7 D0 02            [24] 2159 	pop	(0+2)
      000AE9 D0 03            [24] 2160 	pop	(0+3)
      000AEB D0 04            [24] 2161 	pop	(0+4)
      000AED D0 05            [24] 2162 	pop	(0+5)
      000AEF D0 06            [24] 2163 	pop	(0+6)
      000AF1 D0 07            [24] 2164 	pop	(0+7)
      000AF3 D0 83            [24] 2165 	pop	dph
      000AF5 D0 82            [24] 2166 	pop	dpl
      000AF7 D0 F0            [24] 2167 	pop	b
      000AF9 D0 E0            [24] 2168 	pop	acc
      000AFB D0 21            [24] 2169 	pop	bits
      000AFD 32               [24] 2170 	reti
                                   2171 ;------------------------------------------------------------
                                   2172 ;Allocation info for local variables in function 'INT0_INT'
                                   2173 ;------------------------------------------------------------
                                   2174 ;	main.c:487: void INT0_INT(void) __interrupt 0
                                   2175 ;	-----------------------------------------
                                   2176 ;	 function INT0_INT
                                   2177 ;	-----------------------------------------
      000AFE                       2178 _INT0_INT:
      000AFE C0 21            [24] 2179 	push	bits
      000B00 C0 E0            [24] 2180 	push	acc
      000B02 C0 F0            [24] 2181 	push	b
      000B04 C0 82            [24] 2182 	push	dpl
      000B06 C0 83            [24] 2183 	push	dph
      000B08 C0 07            [24] 2184 	push	(0+7)
      000B0A C0 06            [24] 2185 	push	(0+6)
      000B0C C0 05            [24] 2186 	push	(0+5)
      000B0E C0 04            [24] 2187 	push	(0+4)
      000B10 C0 03            [24] 2188 	push	(0+3)
      000B12 C0 02            [24] 2189 	push	(0+2)
      000B14 C0 01            [24] 2190 	push	(0+1)
      000B16 C0 00            [24] 2191 	push	(0+0)
      000B18 C0 D0            [24] 2192 	push	psw
      000B1A 75 D0 00         [24] 2193 	mov	psw,#0x00
                                   2194 ;	main.c:489: l = !l;
      000B1D B2 00            [12] 2195 	cpl	_l
                                   2196 ;	main.c:490: if (l == 1)
      000B1F 30 00 3C         [24] 2197 	jnb	_l,00102$
                                   2198 ;	main.c:492: thrust = ship_thrust;
      000B22 85 2B 27         [24] 2199 	mov	_thrust,_ship_thrust
      000B25 85 2C 28         [24] 2200 	mov	(_thrust + 1),(_ship_thrust + 1)
      000B28 85 2D 29         [24] 2201 	mov	(_thrust + 2),(_ship_thrust + 2)
      000B2B 85 2E 2A         [24] 2202 	mov	(_thrust + 3),(_ship_thrust + 3)
                                   2203 ;	main.c:493: fuel = fuel - 0.2;
      000B2E 74 CD            [12] 2204 	mov	a,#0xCD
      000B30 C0 E0            [24] 2205 	push	acc
      000B32 14               [12] 2206 	dec	a
      000B33 C0 E0            [24] 2207 	push	acc
      000B35 74 4C            [12] 2208 	mov	a,#0x4C
      000B37 C0 E0            [24] 2209 	push	acc
      000B39 74 3E            [12] 2210 	mov	a,#0x3E
      000B3B C0 E0            [24] 2211 	push	acc
      000B3D 85 3B 82         [24] 2212 	mov	dpl,_fuel
      000B40 85 3C 83         [24] 2213 	mov	dph,(_fuel + 1)
      000B43 85 3D F0         [24] 2214 	mov	b,(_fuel + 2)
      000B46 E5 3E            [12] 2215 	mov	a,(_fuel + 3)
      000B48 12 0B 8D         [24] 2216 	lcall	___fssub
      000B4B 85 82 3B         [24] 2217 	mov	_fuel,dpl
      000B4E 85 83 3C         [24] 2218 	mov	(_fuel + 1),dph
      000B51 85 F0 3D         [24] 2219 	mov	(_fuel + 2),b
      000B54 F5 3E            [12] 2220 	mov	(_fuel + 3),a
      000B56 E5 81            [12] 2221 	mov	a,sp
      000B58 24 FC            [12] 2222 	add	a,#0xfc
      000B5A F5 81            [12] 2223 	mov	sp,a
      000B5C 80 09            [24] 2224 	sjmp	00104$
      000B5E                       2225 00102$:
                                   2226 ;	main.c:497: thrust = 0;
      000B5E E4               [12] 2227 	clr	a
      000B5F F5 27            [12] 2228 	mov	_thrust,a
      000B61 F5 28            [12] 2229 	mov	(_thrust + 1),a
      000B63 F5 29            [12] 2230 	mov	(_thrust + 2),a
      000B65 F5 2A            [12] 2231 	mov	(_thrust + 3),a
      000B67                       2232 00104$:
      000B67 D0 D0            [24] 2233 	pop	psw
      000B69 D0 00            [24] 2234 	pop	(0+0)
      000B6B D0 01            [24] 2235 	pop	(0+1)
      000B6D D0 02            [24] 2236 	pop	(0+2)
      000B6F D0 03            [24] 2237 	pop	(0+3)
      000B71 D0 04            [24] 2238 	pop	(0+4)
      000B73 D0 05            [24] 2239 	pop	(0+5)
      000B75 D0 06            [24] 2240 	pop	(0+6)
      000B77 D0 07            [24] 2241 	pop	(0+7)
      000B79 D0 83            [24] 2242 	pop	dph
      000B7B D0 82            [24] 2243 	pop	dpl
      000B7D D0 F0            [24] 2244 	pop	b
      000B7F D0 E0            [24] 2245 	pop	acc
      000B81 D0 21            [24] 2246 	pop	bits
      000B83 32               [24] 2247 	reti
                                   2248 ;------------------------------------------------------------
                                   2249 ;Allocation info for local variables in function 'timer1'
                                   2250 ;------------------------------------------------------------
                                   2251 ;	main.c:502: void timer1(void) __interrupt 3
                                   2252 ;	-----------------------------------------
                                   2253 ;	 function timer1
                                   2254 ;	-----------------------------------------
      000B84                       2255 _timer1:
                                   2256 ;	main.c:504: TL1 = 0x50;
      000B84 75 8B 50         [24] 2257 	mov	_TL1,#0x50
                                   2258 ;	main.c:505: TH1 = 0xF0;
      000B87 75 8D F0         [24] 2259 	mov	_TH1,#0xF0
                                   2260 ;	main.c:506: speaker = !speaker;
      000B8A B2 80            [12] 2261 	cpl	_P0_0
      000B8C 32               [24] 2262 	reti
                                   2263 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2264 ;	eliminated unneeded push/pop psw
                                   2265 ;	eliminated unneeded push/pop dpl
                                   2266 ;	eliminated unneeded push/pop dph
                                   2267 ;	eliminated unneeded push/pop b
                                   2268 ;	eliminated unneeded push/pop acc
                                   2269 	.area CSEG    (CODE)
                                   2270 	.area CONST   (CODE)
      001096                       2271 _win:
      001096 59 6F 75 20 57 69 6E  2272 	.ascii "You Win!"
             21
      00109E 00                    2273 	.db 0x00
      00109F                       2274 _lose:
      00109F 59 6F 75 20 43 72 61  2275 	.ascii "You Crashed!"
             73 68 65 64 21
      0010AB 00                    2276 	.db 0x00
      0010AC                       2277 _gameover:
      0010AC 47 61 6D 65 20 4F 76  2278 	.ascii "Game Over."
             65 72 2E
      0010B6 00                    2279 	.db 0x00
      0010B7                       2280 _start1:
      0010B7 4D 69 73 73 69 6F 6E  2281 	.ascii "Mission:"
             3A
      0010BF 00                    2282 	.db 0x00
      0010C0                       2283 _start2:
      0010C0 4C 61 6E 64 20 41 72  2284 	.ascii "Land Artemis saf"
             74 65 6D 69 73 20 73
             61 66
      0010D0 00                    2285 	.db 0x00
      0010D1                       2286 _start3:
      0010D1 65 6C 79 20 6F 6E 20  2287 	.ascii "ely on the surfa"
             74 68 65 20 73 75 72
             66 61
      0010E1 00                    2288 	.db 0x00
      0010E2                       2289 _start4:
      0010E2 63 65 20 6F 66 20 6D  2290 	.ascii "ce of mars. Land"
             61 72 73 2E 20 4C 61
             6E 64
      0010F2 00                    2291 	.db 0x00
      0010F3                       2292 _start5:
      0010F3 20 77 69 74 68 20 61  2293 	.ascii " with a velocity"
             20 76 65 6C 6F 63 69
             74 79
      001103 00                    2294 	.db 0x00
      001104                       2295 _start6:
      001104 68 69 67 68 65 72 20  2296 	.ascii "higher than -10."
             74 68 61 6E 20 2D 31
             30 2E
      001114 00                    2297 	.db 0x00
      001115                       2298 _start7:
      001115 20 49 6E 66 6F 72 6D  2299 	.ascii " Information:"
             61 74 69 6F 6E 3A
      001122 00                    2300 	.db 0x00
      001123                       2301 _start8:
      001123 47 72 61 76 69 74 79  2302 	.ascii "Gravity: 3.7"
             3A 20 33 2E 37
      00112F 00                    2303 	.db 0x00
      001130                       2304 _start9:
      001130 20 57 65 20 77 69 73  2305 	.ascii " We wish you luck "
             68 20 79 6F 75 20 6C
             75 63 6B 20
      001142 00                    2306 	.db 0x00
      001143                       2307 _start10:
      001143 4F 75 72 20 6D 69 73  2308 	.ascii "Our mission depe"
             73 69 6F 6E 20 64 65
             70 65
      001153 00                    2309 	.db 0x00
      001154                       2310 _start11:
      001154 6E 64 73 20 6F 6E 20  2311 	.ascii "nds on you."
             79 6F 75 2E
      00115F 00                    2312 	.db 0x00
      001160                       2313 _enginep1:
      001160 20 53 69 72 21 20 52  2314 	.ascii " Sir! Rocket boos"
             6F 63 6B 65 74 20 62
             6F 6F 73
      001171 00                    2315 	.db 0x00
      001172                       2316 _enginep2:
      001172 74 65 72 73 20 61 72  2317 	.ascii "ters are overheat"
             65 20 6F 76 65 72 68
             65 61 74
      001183 00                    2318 	.db 0x00
      001184                       2319 _enginep3:
      001184 69 6E 67 21 20 20 20  2320 	.ascii "ing!    Engine p"
             20 45 6E 67 69 6E 65
             20 70
      001194 00                    2321 	.db 0x00
      001195                       2322 _enginep4:
      001195 70 6F 77 65 72 20 64  2323 	.ascii "power decreases "
             65 63 72 65 61 73 65
             73 20
      0011A5 00                    2324 	.db 0x00
      0011A6                       2325 _enginep5:
      0011A6 62 79 20 32 35 25 2E  2326 	.ascii "by 25%."
      0011AD 00                    2327 	.db 0x00
      0011AE                       2328 _turb1:
      0011AE 20 53 69 72 21 20 57  2329 	.ascii " Sir! We are expe"
             65 20 61 72 65 20 65
             78 70 65
      0011BF 00                    2330 	.db 0x00
      0011C0                       2331 _turb2:
      0011C0 72 69 65 6E 63 69 6E  2332 	.ascii "riencing a sands"
             67 20 61 20 73 61 6E
             64 73
      0011D0 00                    2333 	.db 0x00
      0011D1                       2334 _turb3:
      0011D1 74 6F 72 6D 21 20 42  2335 	.ascii "torm! Buckle up!"
             75 63 6B 6C 65 20 75
             70 21
      0011E1 00                    2336 	.db 0x00
      0011E2                       2337 _leak1:
      0011E2 20 53 69 72 21 20 57  2338 	.ascii " Sir! We have a f"
             65 20 68 61 76 65 20
             61 20 66
      0011F3 00                    2339 	.db 0x00
      0011F4                       2340 _leak2:
      0011F4 75 65 6C 20 6C 65 61  2341 	.ascii "uel leak. Fuel d"
             6B 2E 20 46 75 65 6C
             20 64
      001204 00                    2342 	.db 0x00
      001205                       2343 _leak3:
      001205 64 65 63 72 65 61 73  2344 	.ascii "decreases by 20%"
             65 73 20 62 79 20 32
             30 25
      001215 00                    2345 	.db 0x00
      001216                       2346 _em1:
      001216 53 69 72 21 20 74 68  2347 	.ascii "Sir! throttle ma"
             72 6F 74 74 6C 65 20
             6D 61
      001226 00                    2348 	.db 0x00
      001227                       2349 _em2:
      001227 6C 61 66 75 6E 63 74  2350 	.ascii "lafunction! No t"
             69 6F 6E 21 20 4E 6F
             20 74
      001237 00                    2351 	.db 0x00
      001238                       2352 _em3:
      001238 68 72 6F 74 74 6C 65  2353 	.ascii "hrottle control."
             20 63 6F 6E 74 72 6F
             6C 2E
      001248 00                    2354 	.db 0x00
      001249                       2355 _emb1:
      001249 54 68 72 6F 74 74 6C  2356 	.ascii "Throttle control"
             65 20 63 6F 6E 74 72
             6F 6C
      001259 00                    2357 	.db 0x00
      00125A                       2358 _emb2:
      00125A 69 73 20 62 61 63 6B  2359 	.ascii "is back."
             2E
      001262 00                    2360 	.db 0x00
                                   2361 	.area XINIT   (CODE)
                                   2362 	.area CABS    (ABS,CODE)
