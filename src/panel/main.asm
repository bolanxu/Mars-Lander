;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ship_mass
	.globl _disp
	.globl _vel1
	.globl _leak1
	.globl _turb3
	.globl _turb2
	.globl _turb1
	.globl _engine1
	.globl _start1
	.globl _lose
	.globl _win
	.globl _nums
	.globl _PCA_isr
	.globl _timer1interrupt
	.globl _adc_isr
	.globl _timer0Interrupt
	.globl _main
	.globl _init
	.globl _printLCD
	.globl _InitADC
	.globl _PcaInit
	.globl _Timer1Init
	.globl _Timer0Init
	.globl _start
	.globl _write_data
	.globl _write_com
	.globl _display
	.globl _delay
	.globl _DelaySmalltest
	.globl _Delay1ms
	.globl _srand
	.globl _rand
	.globl _CF
	.globl _CR
	.globl _CCF1
	.globl _CCF0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _EADC
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCAPWM1
	.globl _PCAPWM0
	.globl _CCAP1H
	.globl _CCAP1L
	.globl _CCAPM1
	.globl _CCAP0H
	.globl _CCAP0L
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _P4
	.globl _P4SW
	.globl _IPH
	.globl _P1ASF
	.globl _ADC_LOW2
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _AUXR
	.globl _P4M1
	.globl _P4M0
	.globl _P2M1
	.globl _P2M0
	.globl _P3M1
	.globl _P3M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _bit3
	.globl _bit2
	.globl _bit1
	.globl _leakBit
	.globl _thrust_time
	.globl _delta_h
	.globl _a
	.globl _delta_t
	.globl _delta_d
	.globl _delta_v
	.globl _fuel
	.globl _gravity
	.globl _height
	.globl _ship_thrust
	.globl _thrust
	.globl _in_thrust
	.globl _velocity
	.globl _stormBit
	.globl _enginebit
	.globl _i
	.globl _currentTime
	.globl _runtime
	.globl _cnt
	.globl _value
	.globl _w
	.globl _rndNum
	.globl _digit3_4
	.globl _digit3_3
	.globl _digit3_2
	.globl _digit3_1
	.globl _digit2_6
	.globl _digit2_5
	.globl _digit2_4
	.globl _digit2_3
	.globl _digit2_2
	.globl _digit2_1
	.globl _digit1_5
	.globl _digit1_4
	.globl _digit1_3
	.globl _digit1_2
	.globl _digit1_1
	.globl _digit4
	.globl _digit3
	.globl _digit2
	.globl _digit1
	.globl _velTime
	.globl _velocityBit
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P2M0	=	0x0096
_P2M1	=	0x0095
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_AUXR	=	0x008e
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_LOW2	=	0x00be
_P1ASF	=	0x009d
_IPH	=	0x00b7
_P4SW	=	0x00bb
_P4	=	0x00c0
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAP0L	=	0x00ea
_CCAP0H	=	0x00fa
_CCAPM1	=	0x00db
_CCAP1L	=	0x00eb
_CCAP1H	=	0x00fb
_PCAPWM0	=	0x00f2
_PCAPWM1	=	0x00f3
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_EADC	=	0x00ad
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_CCF0	=	0x00d8
_CCF1	=	0x00d9
_CR	=	0x00de
_CF	=	0x00df
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_velocityBit::
	.ds 1
_velTime::
	.ds 2
_digit1::
	.ds 1
_digit2::
	.ds 1
_digit3::
	.ds 1
_digit4::
	.ds 1
_digit1_1::
	.ds 1
_digit1_2::
	.ds 1
_digit1_3::
	.ds 1
_digit1_4::
	.ds 1
_digit1_5::
	.ds 1
_digit2_1::
	.ds 1
_digit2_2::
	.ds 1
_digit2_3::
	.ds 1
_digit2_4::
	.ds 1
_digit2_5::
	.ds 1
_digit2_6::
	.ds 1
_digit3_1::
	.ds 1
_digit3_2::
	.ds 1
_digit3_3::
	.ds 1
_digit3_4::
	.ds 1
_rndNum::
	.ds 2
_w::
	.ds 1
_value::
	.ds 2
_cnt::
	.ds 2
_runtime::
	.ds 4
_currentTime::
	.ds 4
_i::
	.ds 2
_enginebit::
	.ds 1
_stormBit::
	.ds 1
_velocity::
	.ds 4
_in_thrust::
	.ds 4
_thrust::
	.ds 4
_ship_thrust::
	.ds 4
_height::
	.ds 4
_gravity::
	.ds 4
_fuel::
	.ds 4
_delta_v::
	.ds 4
_delta_d::
	.ds 4
_delta_t::
	.ds 4
_a::
	.ds 4
_delta_h::
	.ds 4
_thrust_time::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_leakBit::
	.ds 1
_bit1::
	.ds 1
_bit2::
	.ds 1
_bit3::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0Interrupt
	.ds	5
	reti
	.ds	7
	ljmp	_timer1interrupt
	.ds	5
	reti
	.ds	7
	ljmp	_adc_isr
	.ds	5
	reti
	.ds	7
	ljmp	_PCA_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:125: unsigned char velocityBit = 1;
	mov	_velocityBit,#0x01
;	main.c:127: unsigned int velTime = 0;
	clr	a
	mov	_velTime,a
	mov	(_velTime + 1),a
;	main.c:155: unsigned int rndNum = 100;
	mov	_rndNum,#0x64
;	1-genFromRTrack replaced	mov	(_rndNum + 1),#0x00
	mov	(_rndNum + 1),a
;	main.c:157: unsigned char w = 1;
	mov	_w,#0x01
;	main.c:161: unsigned int cnt = 0;
	mov	_cnt,a
	mov	(_cnt + 1),a
;	main.c:164: unsigned long runtime = 0;
	mov	_runtime,a
	mov	(_runtime + 1),a
	mov	(_runtime + 2),a
	mov	(_runtime + 3),a
;	main.c:171: unsigned char enginebit = 0;
;	1-genFromRTrack replaced	mov	_enginebit,#0x00
	mov	_enginebit,a
;	main.c:172: unsigned char stormBit = 0;
;	1-genFromRTrack replaced	mov	_stormBit,#0x00
	mov	_stormBit,a
;	main.c:178: float velocity = 0.0;
	mov	_velocity,a
	mov	(_velocity + 1),a
	mov	(_velocity + 2),a
	mov	(_velocity + 3),a
;	main.c:179: float in_thrust = 100000.0;
;	1-genFromRTrack replaced	mov	_in_thrust,#0x00
	mov	_in_thrust,a
	mov	(_in_thrust + 1),#0x50
	mov	(_in_thrust + 2),#0xc3
	mov	(_in_thrust + 3),#0x47
;	main.c:180: float thrust = 0.0;
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
;	main.c:181: float ship_thrust = 100000.0;
;	1-genFromRTrack replaced	mov	_ship_thrust,#0x00
	mov	_ship_thrust,a
	mov	(_ship_thrust + 1),#0x50
	mov	(_ship_thrust + 2),#0xc3
	mov	(_ship_thrust + 3),#0x47
;	main.c:183: float height = 1000.0;
	mov	_height,a
	mov	(_height + 1),a
	mov	(_height + 2),#0x7a
	mov	(_height + 3),#0x44
;	main.c:184: float gravity = 3.72;
	mov	_gravity,#0x7b
	mov	(_gravity + 1),#0x14
	mov	(_gravity + 2),#0x6e
	mov	(_gravity + 3),#0x40
;	main.c:185: float fuel = 8.2;
	mov	_fuel,#0x33
	mov	(_fuel + 1),#0x33
	mov	(_fuel + 2),#0x03
	mov	(_fuel + 3),#0x41
;	main.c:186: float delta_v = 0.0;
	mov	_delta_v,a
	mov	(_delta_v + 1),a
	mov	(_delta_v + 2),a
	mov	(_delta_v + 3),a
;	main.c:187: float delta_d = 0.0;
	mov	_delta_d,a
	mov	(_delta_d + 1),a
	mov	(_delta_d + 2),a
	mov	(_delta_d + 3),a
;	main.c:188: float delta_t = 1.0/20.0;
	mov	_delta_t,#0xcd
	mov	(_delta_t + 1),#0xcc
	mov	(_delta_t + 2),#0x4c
	mov	(_delta_t + 3),#0x3d
;	main.c:193: unsigned int thrust_time = 0;
	mov	_thrust_time,a
	mov	(_thrust_time + 1),a
;	main.c:126: __bit leakBit = 0;
;	assignBit
	clr	_leakBit
;	main.c:173: __bit bit1 = 0;
;	assignBit
	clr	_bit1
;	main.c:174: __bit bit2 = 1;
;	assignBit
	setb	_bit2
;	main.c:175: __bit bit3 = 1;
;	assignBit
	setb	_bit3
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay1ms'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:196: void Delay1ms()		//@11.0592MHz
;	-----------------------------------------
;	 function Delay1ms
;	-----------------------------------------
_Delay1ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:199: i = 11;
	mov	r7,#0x0b
;	main.c:200: j = 190;
	mov	r6,#0xbe
;	main.c:203: while (--j);
00101$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00101$
;	main.c:204: } while (--i);
	mov	a,r7
	dec	a
	mov	r5,a
	mov	r7,a
	jnz	00101$
;	main.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelaySmalltest'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:208: void DelaySmalltest()		//@11.0592MHz
;	-----------------------------------------
;	 function DelaySmalltest
;	-----------------------------------------
_DelaySmalltest:
;	main.c:211: i = 2;
	mov	r7,#0x02
;	main.c:212: j = 4;
	mov	r6,#0x04
;	main.c:215: while (--j);
00101$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
	jnz	00101$
;	main.c:216: } while (--i);
	mov	a,r7
	dec	a
	mov	r5,a
	mov	r7,a
	jnz	00101$
;	main.c:217: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;aa                        Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:220: void delay(unsigned int time)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:223: for(aa=0;aa<time+1;aa++)
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	main.c:225: Delay1ms();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Delay1ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:223: for(aa=0;aa<time+1;aa++)
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	main.c:227: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:229: void display(unsigned int num)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	mov	r6,dpl
	mov	r7,dph
;	main.c:231: P0 = nums[num];
	mov	a,r6
	add	a,#_nums
	mov	dpl,a
	mov	a,r7
	addc	a,#(_nums >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	main.c:232: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_com'
;------------------------------------------------------------
;com                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:235: void write_com(unsigned char com)
;	-----------------------------------------
;	 function write_com
;	-----------------------------------------
_write_com:
	mov	r7,dpl
;	main.c:237: lcdrs=0;
;	assignBit
	clr	_P3_7
;	main.c:238: rw=0;
;	assignBit
	clr	_P3_6
;	main.c:239: delay(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:240: P2=com;
	mov	_P2,r7
;	main.c:241: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:242: lcden=1;
;	assignBit
	setb	_P3_5
;	main.c:243: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:244: lcden=0;
;	assignBit
	clr	_P3_5
;	main.c:245: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_data'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	main.c:247: void write_data(unsigned char data)
;	-----------------------------------------
;	 function write_data
;	-----------------------------------------
_write_data:
	mov	r7,dpl
;	main.c:249: lcdrs=1;
;	assignBit
	setb	_P3_7
;	main.c:250: rw=0;
;	assignBit
	clr	_P3_6
;	main.c:251: delay(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:252: P2=data;
	mov	_P2,r7
;	main.c:253: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:254: lcden=1;
;	assignBit
	setb	_P3_5
;	main.c:255: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:256: lcden=0;
;	assignBit
	clr	_P3_5
;	main.c:257: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start'
;------------------------------------------------------------
;	main.c:260: void start()
;	-----------------------------------------
;	 function start
;	-----------------------------------------
_start:
;	main.c:263: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:264: for (i=0;i<529;i++)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00111$:
;	main.c:266: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:267: if (i%32 == 0)
	mov	a,_i
	anl	a,#0x1f
	jz	00140$
	sjmp	00104$
00140$:
;	main.c:270: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
	sjmp	00105$
00104$:
;	main.c:274: else if (i%16 == 0)
	mov	a,_i
	anl	a,#0x0f
	jz	00142$
	sjmp	00105$
00142$:
;	main.c:276: write_com(0x80+0x40);
	mov	dpl,#0xc0
	lcall	_write_com
00105$:
;	main.c:279: if (start1[i]=='>')
	mov	a,_i
	add	a,#_start1
	mov	dpl,a
	mov	a,(_i + 1)
	addc	a,#(_start1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0x3e,00107$
;	main.c:281: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:282: CR=1;
;	assignBit
	setb	_CR
00107$:
;	main.c:284: write_data(start1[i]);
	mov	a,_i
	add	a,#_start1
	mov	dpl,a
	mov	a,(_i + 1)
	addc	a,#(_start1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_write_data
;	main.c:290: if (start1[i]==']')
	mov	a,_i
	add	a,#_start1
	mov	dpl,a
	mov	a,(_i + 1)
	addc	a,#(_start1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0x5d,00112$
;	main.c:292: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
00112$:
;	main.c:264: for (i=0;i<529;i++)
	inc	_i
	clr	a
	cjne	a,_i,00147$
	inc	(_i + 1)
00147$:
	clr	c
	mov	a,_i
	subb	a,#0x11
	mov	a,(_i + 1)
	subb	a,#0x02
	jnc	00148$
	ljmp	00111$
00148$:
;	main.c:295: delay(2000);
	mov	dptr,#0x07d0
	lcall	_delay
;	main.c:296: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:298: i=0;
	clr	a
	mov	_i,a
	mov	(_i + 1),a
;	main.c:299: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0Init'
;------------------------------------------------------------
;	main.c:302: void Timer0Init(void)		//20ms@11.0592MHz
;	-----------------------------------------
;	 function Timer0Init
;	-----------------------------------------
_Timer0Init:
;	main.c:304: AUXR = 0x00;		//Timer clock is 12T mode
	mov	_AUXR,#0x00
;	main.c:306: TL0 = 0x00;		//Initial timer value
	mov	_TL0,#0x00
;	main.c:307: TH0 = 0x00;
	mov	_TH0,#0x00
;	main.c:308: TF0 = 0;		//Clear TF0 flag
;	assignBit
	clr	_TF0
;	main.c:310: ET0 = 1;
;	assignBit
	setb	_ET0
;	main.c:311: EA = 1;
;	assignBit
	setb	_EA
;	main.c:312: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1Init'
;------------------------------------------------------------
;	main.c:314: void Timer1Init(void)		//50ms@11.0592MHz
;	-----------------------------------------
;	 function Timer1Init
;	-----------------------------------------
_Timer1Init:
;	main.c:317: TMOD = 0b00010001;		//Set timer work mode
	mov	_TMOD,#0x11
;	main.c:318: TL1 = 0x00;		//Initial timer value
	mov	_TL1,#0x00
;	main.c:319: TH1 = 0x4C;		//Initial timer value
	mov	_TH1,#0x4c
;	main.c:320: TF1 = 0;		//Clear TF1 flag
;	assignBit
	clr	_TF1
;	main.c:322: ET1 = 1;
;	assignBit
	setb	_ET1
;	main.c:323: PT1= 1;
;	assignBit
	setb	_PT1
;	main.c:324: IPH = 0x08;
	mov	_IPH,#0x08
;	main.c:325: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PcaInit'
;------------------------------------------------------------
;	main.c:328: void PcaInit(void)
;	-----------------------------------------
;	 function PcaInit
;	-----------------------------------------
_PcaInit:
;	main.c:330: CCON = 0;                       //Initial PCA control register
	mov	_CCON,#0x00
;	main.c:334: CL = 0x00;                        //Reset PCA base timer
	mov	_CL,#0x00
;	main.c:335: CH = 0x00;
	mov	_CH,#0x00
;	main.c:336: CMOD = 0x00;                    //Set PCA timer clock source as Fosc/12
	mov	_CMOD,#0x00
;	main.c:339: CCAP0L = value;
	mov	_CCAP0L,#0x99
;	main.c:340: CCAP0H = value >> 8;            //Initial PCA module-0
	mov	_CCAP0H,#0x03
;	main.c:341: value += T100Hz;
	mov	_value,#0x32
	mov	(_value + 1),#0x07
;	main.c:342: CCAPM0 = 0x49;                  //PCA module-0 work in 16-bit timer mode and enable PCA interrupt
	mov	_CCAPM0,#0x49
;	main.c:345: EA = 1;
;	assignBit
	setb	_EA
;	main.c:347: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;	main.c:350: void InitADC( )
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	main.c:352: P1ASF = 0b00000001; 
	mov	_P1ASF,#0x01
;	main.c:353: ADC_RES = 0; //Clear previous result
	mov	_ADC_RES,#0x00
;	main.c:354: ADC_CONTR = ADC_POWER | ADC_SPEEDLL | ADC_START | 0;
	mov	_ADC_CONTR,#0x88
;	main.c:355: EADC = 1;
;	assignBit
	setb	_EADC
;	main.c:356: delay(2); //ADC power-on delay and Start A/D conversion
	mov	dptr,#0x0002
;	main.c:357: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'printLCD'
;------------------------------------------------------------
;ptr_stringPointer_u8      Allocated to registers r5 r6 r7 
;charNum                   Allocated to registers r3 r4 
;------------------------------------------------------------
;	main.c:360: void printLCD(char *ptr_stringPointer_u8)
;	-----------------------------------------
;	 function printLCD
;	-----------------------------------------
_printLCD:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:363: write_com(0x01);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_write_com
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:364: while((*ptr_stringPointer_u8)!=0)
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00128$
	ret
00128$:
;	main.c:366: charNum++;
	inc	r3
	cjne	r3,#0x00,00129$
	inc	r4
00129$:
;	main.c:367: if (charNum % 32 == 0)
	mov	a,r3
	anl	a,#0x1f
	jnz	00104$
;	main.c:369: write_com(0x01);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_write_com
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00105$
00104$:
;	main.c:371: else if (charNum % 16 == 0)
	mov	a,r3
	anl	a,#0x0f
	jnz	00105$
;	main.c:373: write_com(0xc0);
	mov	dpl,#0xc0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_write_com
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00105$:
;	main.c:375: write_data(*ptr_stringPointer_u8++); // Loop through the string and display char by char
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_write_data
;	main.c:376: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:378: }
	ljmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	main.c:380: void init()
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main.c:382: lcden=0; //使能端为低电平
;	assignBit
	clr	_P3_5
;	main.c:383: write_com(0x38);
	mov	dpl,#0x38
	lcall	_write_com
;	main.c:385: write_com(0x0F);
	mov	dpl,#0x0f
	lcall	_write_com
;	main.c:390: write_com(0x06);//地址指针自动+1且光标+1，写字符屏幕不会移动
	mov	dpl,#0x06
	lcall	_write_com
;	main.c:391: write_com(0X01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:392: write_com(0X80); 
	mov	dpl,#0x80
;	main.c:393: }
	ljmp	_write_com
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:395: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:398: P4SW = 0x70;
	mov	_P4SW,#0x70
;	main.c:399: P4_6 = 1;
;	assignBit
	setb	_P4_6
;	main.c:400: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:401: init(); 
	lcall	_init
;	main.c:403: printLCD("hello");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_printLCD
;	main.c:404: write_com(0xc0);
	mov	dpl,#0xc0
	lcall	_write_com
;	main.c:405: printLCD("byebye");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_printLCD
;	main.c:406: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:408: P0M0 = 0xFF;
	mov	_P0M0,#0xff
;	main.c:409: P0M1 = 0x00;
	mov	_P0M1,#0x00
;	main.c:410: P2M0 = 0xFF;
	mov	_P2M0,#0xff
;	main.c:411: P2M1 = 0x00;
	mov	_P2M1,#0x00
;	main.c:412: P3M0 = 0b11100000;
	mov	_P3M0,#0xe0
;	main.c:413: P3M1 = 0x00;
	mov	_P3M1,#0x00
;	main.c:414: P4M0 = 0b01000000;
	mov	_P4M0,#0x40
;	main.c:415: P4M1 = 0b00100000;
	mov	_P4M1,#0x20
;	main.c:416: P4_4 = 0;
;	assignBit
	clr	_P4_4
;	main.c:417: P4_6=0;
;	assignBit
	clr	_P4_6
;	main.c:420: P0 = 0xff;
	mov	_P0,#0xff
;	main.c:421: while(P4_5==0)
00101$:
	jb	_P4_5,00103$
;	main.c:423: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:424: trigger = 0;
;	assignBit
	clr	_P4_4
	sjmp	00101$
00103$:
;	main.c:427: for (i=0;i<18;i++)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00161$:
;	main.c:429: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:430: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:431: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:432: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:427: for (i=0;i<18;i++)
	inc	_i
	clr	a
	cjne	a,_i,00290$
	inc	(_i + 1)
00290$:
	clr	c
	mov	a,_i
	subb	a,#0x12
	mov	a,(_i + 1)
	subb	a,#0x00
	jc	00161$
;	main.c:434: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	main.c:435: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:436: while(P4_5==0)
00105$:
	jb	_P4_5,00107$
;	main.c:438: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:439: trigger = 0;
;	assignBit
	clr	_P4_4
	sjmp	00105$
00107$:
;	main.c:444: Timer0Init();
	lcall	_Timer0Init
;	main.c:445: Timer1Init();
	lcall	_Timer1Init
;	main.c:449: PcaInit();
	lcall	_PcaInit
;	main.c:453: P0M0 = 0xFF;
	mov	_P0M0,#0xff
;	main.c:454: P0M1 = 0x00;
	mov	_P0M1,#0x00
;	main.c:455: P4M0 = 0b01000000;
	mov	_P4M0,#0x40
;	main.c:456: P4M1 = 0x00;
	mov	_P4M1,#0x00
;	main.c:457: P4_4 = 0;
;	assignBit
	clr	_P4_4
;	main.c:460: start();
	lcall	_start
;	main.c:464: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:465: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:467: InitADC();
	lcall	_InitADC
;	main.c:468: srand((ADC_RES+10)*10);
	mov	r6,_ADC_RES
	mov	r7,#0x00
	mov	a,#0x0a
	add	a,r6
	mov	__mulint_PARM_2,a
	clr	a
	addc	a,r7
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	lcall	__mulint
	lcall	_srand
;	main.c:469: rndNum = 10;
	mov	_rndNum,#0x0a
	mov	(_rndNum + 1),#0x00
;	main.c:470: while (1)
00159$:
;	main.c:475: if ((runtime % 2 == 0)&&(runtime > 20000))
	mov	a,_runtime
	jb	acc.0,00109$
	clr	c
	mov	a,#0x20
	subb	a,_runtime
	mov	a,#0x4e
	subb	a,(_runtime + 1)
	clr	a
	subb	a,(_runtime + 2)
	clr	a
	subb	a,(_runtime + 3)
	jnc	00109$
;	main.c:476: rndNum = rand();
	lcall	_rand
	mov	_rndNum,dpl
	mov	(_rndNum + 1),dph
00109$:
;	main.c:478: runtime++;
	inc	_runtime
	clr	a
	cjne	a,_runtime,00295$
	inc	(_runtime + 1)
	cjne	a,(_runtime + 1),00295$
	inc	(_runtime + 2)
	cjne	a,(_runtime + 2),00295$
	inc	(_runtime + 3)
00295$:
;	main.c:479: if (runtime % 5000 == 0)
	mov	__modulong_PARM_2,#0x88
	mov	(__modulong_PARM_2 + 1),#0x13
	clr	a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_runtime
	mov	dph,(_runtime + 1)
	mov	b,(_runtime + 2)
	mov	a,(_runtime + 3)
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
;	main.c:480: srand((ADC_RES+10)*10);
	jnz	00112$
	mov	r6,_ADC_RES
	mov	r7,a
	mov	a,#0x0a
	add	a,r6
	mov	__mulint_PARM_2,a
	clr	a
	addc	a,r7
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	lcall	__mulint
	lcall	_srand
00112$:
;	main.c:487: if ((runtime == (currentTime + 10000)) && (bit3 == 0))
	mov	a,#0x10
	add	a,_currentTime
	mov	r4,a
	mov	a,#0x27
	addc	a,(_currentTime + 1)
	mov	r5,a
	clr	a
	addc	a,(_currentTime + 2)
	mov	r6,a
	clr	a
	addc	a,(_currentTime + 3)
	mov	r7,a
	mov	a,r4
	cjne	a,_runtime,00114$
	mov	a,r5
	cjne	a,(_runtime + 1),00114$
	mov	a,r6
	cjne	a,(_runtime + 2),00114$
	mov	a,r7
	cjne	a,(_runtime + 3),00114$
	jb	_bit3,00114$
;	main.c:489: stormBit = 0;
	mov	_stormBit,#0x00
;	main.c:490: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:491: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:492: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:493: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:494: CR = 1;
;	assignBit
	setb	_CR
;	main.c:495: printLCD(turb3);
	mov	dptr,#_turb3
	mov	b,#0x80
	lcall	_printLCD
;	main.c:497: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:498: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:499: EADC = 1;
;	assignBit
	setb	_EADC
;	main.c:500: bit3 = 1;
;	assignBit
	setb	_bit3
00114$:
;	main.c:504: if ((rndNum*20) < 10)
	mov	__mulint_PARM_2,_rndNum
	mov	(__mulint_PARM_2 + 1),(_rndNum + 1)
	mov	dptr,#0x0014
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	subb	a,#0x00
	jnc	00119$
;	main.c:506: if (bit1 == 0)
	jb	_bit1,00119$
;	main.c:508: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:509: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:510: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:511: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:512: CR = 1;
;	assignBit
	setb	_CR
;	main.c:513: write_data(rndNum+0x30);
	mov	r7,_rndNum
	mov	a,#0x30
	add	a,r7
	mov	dpl,a
	lcall	_write_data
;	main.c:514: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	main.c:515: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:516: printLCD(turb1);
	mov	dptr,#_turb1
	mov	b,#0x80
	lcall	_printLCD
;	main.c:518: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:519: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:520: EADC = 1; 
;	assignBit
	setb	_EADC
;	main.c:521: bit1 = 1;
;	assignBit
	setb	_bit1
;	main.c:522: bit2 = 0;
;	assignBit
	clr	_bit2
;	main.c:523: currentTime = runtime;
	mov	_currentTime,_runtime
	mov	(_currentTime + 1),(_runtime + 1)
	mov	(_currentTime + 2),(_runtime + 2)
	mov	(_currentTime + 3),(_runtime + 3)
00119$:
;	main.c:526: if ((runtime == (currentTime + 10000)) && (bit2 == 0))
	mov	a,#0x10
	add	a,_currentTime
	mov	r4,a
	mov	a,#0x27
	addc	a,(_currentTime + 1)
	mov	r5,a
	clr	a
	addc	a,(_currentTime + 2)
	mov	r6,a
	clr	a
	addc	a,(_currentTime + 3)
	mov	r7,a
	mov	a,r4
	cjne	a,_runtime,00121$
	mov	a,r5
	cjne	a,(_runtime + 1),00121$
	mov	a,r6
	cjne	a,(_runtime + 2),00121$
	mov	a,r7
	cjne	a,(_runtime + 3),00121$
	jb	_bit2,00121$
;	main.c:529: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:530: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:531: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:532: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:533: CR = 1;
;	assignBit
	setb	_CR
;	main.c:534: printLCD(turb2);
	mov	dptr,#_turb2
	mov	b,#0x80
	lcall	_printLCD
;	main.c:536: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:537: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:538: EADC = 1;
;	assignBit
	setb	_EADC
;	main.c:539: stormBit = 1;
	mov	_stormBit,#0x01
;	main.c:541: bit2 = 1;
;	assignBit
	setb	_bit2
;	main.c:542: bit3 = 0;
;	assignBit
	clr	_bit3
;	main.c:543: currentTime = runtime;
	mov	_currentTime,_runtime
	mov	(_currentTime + 1),(_runtime + 1)
	mov	(_currentTime + 2),(_runtime + 2)
	mov	(_currentTime + 3),(_runtime + 3)
00121$:
;	main.c:545: if (thrust > 50000.0)
	push	_thrust
	push	(_thrust + 1)
	push	(_thrust + 2)
	push	(_thrust + 3)
	mov	dptr,#0x5000
	mov	b,#0x43
	mov	a,#0x47
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00126$
;	main.c:547: thrust_time++;
	inc	_thrust_time
	clr	a
	cjne	a,_thrust_time,00306$
	inc	(_thrust_time + 1)
00306$:
;	main.c:548: if (thrust_time > 4000)
	clr	c
	mov	a,#0xa0
	subb	a,_thrust_time
	mov	a,#0x0f
	subb	a,(_thrust_time + 1)
	jnc	00127$
;	main.c:550: CR = 1;
;	assignBit
	setb	_CR
;	main.c:551: enginebit = 1;
	mov	_enginebit,#0x01
;	main.c:552: thrust_time = 0;
	clr	a
	mov	_thrust_time,a
	mov	(_thrust_time + 1),a
	sjmp	00127$
00126$:
;	main.c:557: thrust_time = 0;
	clr	a
	mov	_thrust_time,a
	mov	(_thrust_time + 1),a
00127$:
;	main.c:560: if (velocity > 50.0 || velocity <-50.0)
	push	_velocity
	push	(_velocity + 1)
	push	(_velocity + 2)
	push	(_velocity + 3)
	mov	dptr,#0x0000
	mov	b,#0x48
	mov	a,#0x42
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jnz	00134$
	push	acc
	push	acc
	mov	a,#0x48
	push	acc
	mov	a,#0xc2
	push	acc
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00135$
00134$:
;	main.c:562: velTime++;
	inc	_velTime
	clr	a
	cjne	a,_velTime,00310$
	inc	(_velTime + 1)
00310$:
;	main.c:564: if (velocityBit == 1)
	mov	a,#0x01
	cjne	a,_velocityBit,00129$
;	main.c:566: velocityBit = 0;
	mov	_velocityBit,#0x00
;	main.c:567: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:568: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:569: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:570: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:571: CR = 1;
;	assignBit
	setb	_CR
;	main.c:572: printLCD(vel1);
	mov	dptr,#_vel1
	mov	b,#0x80
	lcall	_printLCD
;	main.c:573: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:574: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:575: EADC = 1;
;	assignBit
	setb	_EADC
;	main.c:576: velocityBit = 0;
	mov	_velocityBit,#0x00
00129$:
;	main.c:578: if (velTime > 5000)
	clr	c
	mov	a,#0x88
	subb	a,_velTime
	mov	a,#0x13
	subb	a,(_velTime + 1)
	jnc	00135$
;	main.c:581: if (leakBit == 0)
	jb	_leakBit,00135$
;	main.c:583: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:584: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:585: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:586: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:587: CR = 1;
;	assignBit
	setb	_CR
;	main.c:588: velTime = 0;
	clr	a
	mov	_velTime,a
	mov	(_velTime + 1),a
;	main.c:589: printLCD(leak1);
	mov	dptr,#_leak1
	mov	b,#0x80
	lcall	_printLCD
;	main.c:590: leakBit = 1;
;	assignBit
	setb	_leakBit
;	main.c:591: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:592: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:593: EADC = 1;
;	assignBit
	setb	_EADC
00135$:
;	main.c:597: if (velocity < 48.0 && velocity > -48.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00138$
	push	_velocity
	push	(_velocity + 1)
	push	(_velocity + 2)
	push	(_velocity + 3)
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0xc2
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00138$
;	main.c:599: velocityBit = 1;
	mov	_velocityBit,#0x01
00138$:
;	main.c:601: if (height < 1.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,_height
	mov	dph,(_height + 1)
	mov	b,(_height + 2)
	mov	a,(_height + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00150$
;	main.c:603: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:604: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:605: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:606: if (velocity > -10.0)
	push	_velocity
	push	(_velocity + 1)
	push	(_velocity + 2)
	push	(_velocity + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0xc1
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00147$
;	main.c:608: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:609: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:610: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:611: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:612: CR = 1;
;	assignBit
	setb	_CR
;	main.c:613: printLCD(win);
	mov	dptr,#_win
	mov	b,#0x80
	lcall	_printLCD
;	main.c:614: while(1);
00141$:
	sjmp	00141$
00147$:
;	main.c:618: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:619: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:620: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:621: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:622: CR = 1;
;	assignBit
	setb	_CR
;	main.c:623: printLCD(lose);
	mov	dptr,#_lose
	mov	b,#0x80
	lcall	_printLCD
;	main.c:624: while(1);
00144$:
	sjmp	00144$
00150$:
;	main.c:630: if (enginebit == 1)
	mov	a,#0x01
	cjne	a,_enginebit,00152$
;	main.c:632: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:633: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:634: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:635: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:636: CR = 1;
;	assignBit
	setb	_CR
;	main.c:637: printLCD(engine1);
	mov	dptr,#_engine1
	mov	b,#0x80
	lcall	_printLCD
;	main.c:638: in_thrust = in_thrust*0.9;
	push	_in_thrust
	push	(_in_thrust + 1)
	push	(_in_thrust + 2)
	push	(_in_thrust + 3)
	mov	dptr,#0x6666
	mov	b,#0x66
	mov	a,#0x3f
	lcall	___fsmul
	mov	_in_thrust,dpl
	mov	(_in_thrust + 1),dph
	mov	(_in_thrust + 2),b
	mov	(_in_thrust + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:639: enginebit = 0;
	mov	_enginebit,#0x00
;	main.c:640: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:641: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:642: EADC = 1;
;	assignBit
	setb	_EADC
00152$:
;	main.c:645: if (leakBit == 1)
	jnb	_leakBit,00154$
;	main.c:647: fuel = fuel - 0.00002;
	mov	a,#0xac
	push	acc
	mov	a,#0xc5
	push	acc
	mov	a,#0xa7
	push	acc
	mov	a,#0x37
	push	acc
	mov	dpl,_fuel
	mov	dph,(_fuel + 1)
	mov	b,(_fuel + 2)
	mov	a,(_fuel + 3)
	lcall	___fssub
	mov	_fuel,dpl
	mov	(_fuel + 1),dph
	mov	(_fuel + 2),b
	mov	(_fuel + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00154$:
;	main.c:649: if (B0 == 0)
	jb	_P3_2,00156$
;	main.c:652: ship_thrust = in_thrust;
	mov	_ship_thrust,_in_thrust
	mov	(_ship_thrust + 1),(_in_thrust + 1)
	mov	(_ship_thrust + 2),(_in_thrust + 2)
	mov	(_ship_thrust + 3),(_in_thrust + 3)
	ljmp	00159$
00156$:
;	main.c:656: ship_thrust = in_thrust/2.0;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,_in_thrust
	mov	dph,(_in_thrust + 1)
	mov	b,(_in_thrust + 2)
	mov	a,(_in_thrust + 3)
	lcall	___fsdiv
	mov	_ship_thrust,dpl
	mov	(_ship_thrust + 1),dph
	mov	(_ship_thrust + 2),b
	mov	(_ship_thrust + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:664: }
	ljmp	00159$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0Interrupt'
;------------------------------------------------------------
;	main.c:666: void timer0Interrupt(void) __interrupt 1// __using 1
;	-----------------------------------------
;	 function timer0Interrupt
;	-----------------------------------------
_timer0Interrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:669: TL0 = 0x80;		//Initial timer value
	mov	_TL0,#0x80
;	main.c:670: TH0 = 0xFC;
	mov	_TH0,#0xfc
;	main.c:688: if (w==0)
	mov	a,_w
	jnz	00106$
;	main.c:691: while(P4_5==0)
00101$:
	jb	_P4_5,00103$
;	main.c:693: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:694: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:695: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:696: DelaySmalltest();
	lcall	_DelaySmalltest
;	main.c:697: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:698: DelaySmalltest();
	lcall	_DelaySmalltest
	sjmp	00101$
00103$:
;	main.c:700: for (i=0;i<16;i++)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00146$:
;	main.c:702: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:703: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:704: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:705: DelaySmalltest();
	lcall	_DelaySmalltest
;	main.c:706: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:707: DelaySmalltest();
	lcall	_DelaySmalltest
;	main.c:700: for (i=0;i<16;i++)
	inc	_i
	clr	a
	cjne	a,_i,00244$
	inc	(_i + 1)
00244$:
	clr	c
	mov	a,_i
	subb	a,#0x10
	mov	a,(_i + 1)
	subb	a,#0x00
	jc	00146$
;	main.c:709: display(digit1);
	mov	r6,_digit1
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00106$:
;	main.c:711: if (w==1)
	mov	a,#0x01
	cjne	a,_w,00111$
;	main.c:714: while(P4_5==0)
00107$:
	jb	_P4_5,00109$
;	main.c:717: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:718: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:720: trigger = 0;
;	assignBit
	clr	_P4_4
	sjmp	00107$
00109$:
;	main.c:727: display(digit2);
	mov	r6,_digit2
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00111$:
;	main.c:729: if (w==2)
	mov	a,#0x02
	cjne	a,_w,00113$
;	main.c:732: display(digit3);
	mov	r6,_digit3
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00113$:
;	main.c:734: if (w==3)
	mov	a,#0x03
	cjne	a,_w,00115$
;	main.c:737: display(digit4);
	mov	r6,_digit4
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00115$:
;	main.c:740: if (w==4)
	mov	a,#0x04
	cjne	a,_w,00117$
;	main.c:743: display(digit1_1);
	mov	r6,_digit1_1
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00117$:
;	main.c:745: if (w==5)
	mov	a,#0x05
	cjne	a,_w,00119$
;	main.c:748: display(digit1_3);
	mov	r6,_digit1_3
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00119$:
;	main.c:751: if (w==6)
	mov	a,#0x06
	cjne	a,_w,00121$
;	main.c:754: display(digit1_4);
	mov	r6,_digit1_4
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
;	main.c:755: P0_7 = 1;
;	assignBit
	setb	_P0_7
00121$:
;	main.c:757: if (w==7)
	mov	a,#0x07
	cjne	a,_w,00123$
;	main.c:760: display(digit1_5);
	mov	r6,_digit1_5
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00123$:
;	main.c:763: if (w==8)
	mov	a,#0x08
	cjne	a,_w,00125$
;	main.c:766: display(digit2_1);
	mov	r6,_digit2_1
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00125$:
;	main.c:768: if (w==9)
	mov	a,#0x09
	cjne	a,_w,00127$
;	main.c:771: display(digit2_4);
	mov	r6,_digit2_4
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
;	main.c:772: P0_7 = 1;
;	assignBit
	setb	_P0_7
00127$:
;	main.c:774: if (w==10)
	mov	a,#0x0a
	cjne	a,_w,00129$
;	main.c:778: display(digit2_5);
	mov	r6,_digit2_5
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00129$:
;	main.c:780: if (w==11)
	mov	a,#0x0b
	cjne	a,_w,00131$
;	main.c:784: display(digit2_6);
	mov	r6,_digit2_6
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00131$:
;	main.c:788: if (w==12)
	mov	a,#0x0c
	cjne	a,_w,00133$
;	main.c:792: display(digit2_1);
	mov	r6,_digit2_1
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00133$:
;	main.c:794: if (w==13)
	mov	a,#0x0d
	cjne	a,_w,00135$
;	main.c:798: display(digit3_2);
	mov	r6,_digit3_2
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00135$:
;	main.c:800: if (w==14)
	mov	a,#0x0e
	cjne	a,_w,00137$
;	main.c:804: display(digit3_3);
	mov	r6,_digit3_3
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00137$:
;	main.c:806: if (w==15)
	mov	a,#0x0f
	cjne	a,_w,00139$
;	main.c:810: display(digit3_4);
	mov	r6,_digit3_4
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_display
00139$:
;	main.c:813: if (w == 16)
	mov	a,#0x10
	cjne	a,_w,00141$
;	main.c:817: P0 = 0xFF;
	mov	_P0,#0xff
00141$:
;	main.c:819: if (w<17)
	mov	a,#0x100 - 0x11
	add	a,_w
	jc	00143$
;	main.c:821: w++;
	inc	_w
00143$:
;	main.c:823: if (w>16)
	mov	a,_w
	add	a,#0xff - 0x10
	jnc	00145$
;	main.c:825: w=0;
	mov	_w,#0x00
00145$:
;	main.c:828: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:829: trigger = 1;
;	assignBit
	setb	_P4_4
;	main.c:830: DelaySmalltest();
	lcall	_DelaySmalltest
;	main.c:831: trigger = 0;
;	assignBit
	clr	_P4_4
;	main.c:832: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_isr'
;------------------------------------------------------------
;	main.c:834: void adc_isr( ) __interrupt 5 __using 1
;	-----------------------------------------
;	 function adc_isr
;	-----------------------------------------
_adc_isr:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	main.c:836: ADC_CONTR &= !ADC_FLAG; //Clear ADC interrupt flag
	mov	a,_ADC_CONTR
	mov	_ADC_CONTR,#0x00
;	main.c:839: if (fuel < 0.1)
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x3d
	push	acc
	mov	dpl,_fuel
	mov	dph,(_fuel + 1)
	mov	b,(_fuel + 2)
	mov	a,(_fuel + 3)
	mov	psw,#0x00
	lcall	___fslt
	mov	psw,#0x08
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
;	main.c:840: thrust = 0;
	clr	a
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
	ljmp	00103$
00102$:
;	main.c:844: thrust = (ADC_RES - 0) * (ship_thrust - 0) / (255 - 0);
	mov	r6,_ADC_RES
	mov	r7,#0x00
	mov	r2,_ship_thrust
	mov	r3,(_ship_thrust + 1)
	mov	r4,(_ship_thrust + 2)
	mov	r5,(_ship_thrust + 3)
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	psw,#0x00
	lcall	___sint2fs
	mov	psw,#0x08
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	mov	psw,#0x00
	lcall	___fsmul
	mov	psw,#0x08
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x7f
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	mov	psw,#0x00
	lcall	___fsdiv
	mov	psw,#0x08
	mov	_thrust,dpl
	mov	(_thrust + 1),dph
	mov	(_thrust + 2),b
	mov	(_thrust + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00103$:
;	main.c:850: ADC_CONTR = ADC_POWER | ADC_SPEEDLL | ADC_START | 0;
	mov	_ADC_CONTR,#0x88
;	main.c:854: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1interrupt'
;------------------------------------------------------------
;b                         Allocated to registers r6 r7 
;int_input                 Allocated to registers r4 r5 
;number1                   Allocated to registers r6 r7 
;number2                   Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:856: void timer1interrupt(void) __interrupt 3
;	-----------------------------------------
;	 function timer1interrupt
;	-----------------------------------------
_timer1interrupt:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:862: TL1 = 0x00;		//Initial timer value
	mov	_TL1,#0x00
;	main.c:863: TH1 = 0x4C;		
	mov	_TH1,#0x4c
;	main.c:865: if (stormBit == 1)
	mov	a,#0x01
	cjne	a,_stormBit,00102$
;	main.c:867: EADC = 0;
;	assignBit
	clr	_EADC
;	main.c:869: thrust = 0;
	clr	a
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
;	main.c:871: a = ((float)rndNum) / 100.0;
	mov	dpl,_rndNum
	mov	dph,(_rndNum + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xc8
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	_a,dpl
	mov	(_a + 1),dph
	mov	(_a + 2),b
	mov	(_a + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00103$
00102$:
;	main.c:874: a = (1.2*thrust / (ship_mass + fuel) - gravity);
	push	_thrust
	push	(_thrust + 1)
	push	(_thrust + 2)
	push	(_thrust + 3)
	mov	dptr,#0x999a
	mov	b,#0x99
	mov	a,#0x3f
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_ship_mass
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r1,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r3,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_fuel
	push	(_fuel + 1)
	push	(_fuel + 2)
	push	(_fuel + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_gravity
	push	(_gravity + 1)
	push	(_gravity + 2)
	push	(_gravity + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	_a,dpl
	mov	(_a + 1),dph
	mov	(_a + 2),b
	mov	(_a + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00103$:
;	main.c:875: delta_v = delta_t * a;
	push	_a
	push	(_a + 1)
	push	(_a + 2)
	push	(_a + 3)
	mov	dpl,_delta_t
	mov	dph,(_delta_t + 1)
	mov	b,(_delta_t + 2)
	mov	a,(_delta_t + 3)
	lcall	___fsmul
	mov	_delta_v,dpl
	mov	(_delta_v + 1),dph
	mov	(_delta_v + 2),b
	mov	(_delta_v + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:876: velocity = velocity + delta_v;
	push	_delta_v
	push	(_delta_v + 1)
	push	(_delta_v + 2)
	push	(_delta_v + 3)
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fsadd
	mov	_velocity,dpl
	mov	(_velocity + 1),dph
	mov	(_velocity + 2),b
	mov	(_velocity + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:877: delta_h = velocity * delta_t;
	push	_delta_t
	push	(_delta_t + 1)
	push	(_delta_t + 2)
	push	(_delta_t + 3)
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fsmul
	mov	_delta_h,dpl
	mov	(_delta_h + 1),dph
	mov	(_delta_h + 2),b
	mov	(_delta_h + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:878: height = height + delta_h;
	push	_delta_h
	push	(_delta_h + 1)
	push	(_delta_h + 2)
	push	(_delta_h + 3)
	mov	dpl,_height
	mov	dph,(_height + 1)
	mov	b,(_height + 2)
	mov	a,(_height + 3)
	lcall	___fsadd
	mov	_height,dpl
	mov	(_height + 1),dph
	mov	(_height + 2),b
	mov	(_height + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:879: if (fuel < 0.1)
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x3d
	push	acc
	mov	dpl,_fuel
	mov	dph,(_fuel + 1)
	mov	b,(_fuel + 2)
	mov	a,(_fuel + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00105$
;	main.c:880: fuel = 0.0;
	clr	a
	mov	_fuel,a
	mov	(_fuel + 1),a
	mov	(_fuel + 2),a
	mov	(_fuel + 3),a
	sjmp	00106$
00105$:
;	main.c:882: fuel = fuel-(thrust/20000000);
	mov	a,#0x80
	push	acc
	mov	a,#0x96
	push	acc
	mov	a,#0x98
	push	acc
	mov	a,#0x4b
	push	acc
	mov	dpl,_thrust
	mov	dph,(_thrust + 1)
	mov	b,(_thrust + 2)
	mov	a,(_thrust + 3)
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_fuel
	mov	dph,(_fuel + 1)
	mov	b,(_fuel + 2)
	mov	a,(_fuel + 3)
	lcall	___fssub
	mov	_fuel,dpl
	mov	(_fuel + 1),dph
	mov	(_fuel + 2),b
	mov	(_fuel + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00106$:
;	main.c:885: if (velocity < 0)
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fslt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00108$
;	main.c:887: digit1_1 = 11;
	mov	_digit1_1,#0x0b
;	main.c:888: number1 = velocity*-10;
	push	_velocity
	push	(_velocity + 1)
	push	(_velocity + 2)
	push	(_velocity + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0xc1
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
	sjmp	00109$
00108$:
;	main.c:892: digit1_1 = 10;
	mov	_digit1_1,#0x0a
;	main.c:893: number1 = velocity*10;
	push	_velocity
	push	(_velocity + 1)
	push	(_velocity + 2)
	push	(_velocity + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
00109$:
;	main.c:895: if (a < 0)
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_a
	mov	dph,(_a + 1)
	mov	b,(_a + 2)
	mov	a,(_a + 3)
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	mov	a,r5
	jz	00111$
;	main.c:897: digit2_1 = 11;
	mov	_digit2_1,#0x0b
;	main.c:898: number2 = a*-100;
	push	ar7
	push	ar6
	push	_a
	push	(_a + 1)
	push	(_a + 2)
	push	(_a + 3)
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0xc2
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	sjmp	00112$
00111$:
;	main.c:902: digit2_1 = 10;
	mov	_digit2_1,#0x0a
;	main.c:903: number2 = a*100;
	push	ar7
	push	ar6
	push	_a
	push	(_a + 1)
	push	(_a + 2)
	push	(_a + 3)
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fs2sint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
00112$:
;	main.c:907: int_input = (int) height;
	mov	dpl,_height
	mov	dph,(_height + 1)
	mov	b,(_height + 2)
	mov	a,(_height + 3)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2sint
;	main.c:909: digit4 = int_input % 10;
	mov	r2,dpl
	mov	r3,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	mov	_digit4,r0
;	main.c:910: b = int_input / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
;	main.c:912: digit3 = b % 10;
	mov	r2,dpl
	mov	r3,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	mov	_digit3,r0
;	main.c:913: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
;	main.c:915: digit2 = b % 10;
	mov	r2,dpl
	mov	r3,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	mov	_digit2,r0
;	main.c:916: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:918: digit1 = (int)b;
	mov	_digit1,r2
;	main.c:921: int_input = (int) (number1);
;	main.c:923: digit1_5= int_input % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_digit1_5,r2
;	main.c:924: b = int_input / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
;	main.c:926: digit1_4 = b % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_digit1_4,r2
;	main.c:927: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
;	main.c:929: digit1_3 = b % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_digit1_3,r2
;	main.c:930: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__divuint
;	main.c:932: digit1_2 = b % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r6,dpl
	pop	ar4
	pop	ar5
	mov	_digit1_2,r6
;	main.c:938: int_input = (int) number2;
;	main.c:940: digit2_6= int_input % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r6,dpl
	pop	ar4
	pop	ar5
	mov	_digit2_6,r6
;	main.c:941: b = int_input / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	lcall	__divuint
;	main.c:943: digit2_5 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit2_5,r4
;	main.c:944: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
;	main.c:946: digit2_4 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit2_4,r4
;	main.c:947: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
;	main.c:949: digit2_3 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit2_3,r4
;	main.c:950: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
;	main.c:952: digit2_2 = b % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r6,dpl
	mov	_digit2_2,r6
;	main.c:959: int_input = (int) ((fuel/8.2)*100);
	mov	a,#0x33
	push	acc
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,_fuel
	mov	dph,(_fuel + 1)
	mov	b,(_fuel + 2)
	mov	a,(_fuel + 3)
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
;	main.c:961: digit3_4 = int_input % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit3_4,r4
;	main.c:962: b = int_input / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
;	main.c:964: digit3_3 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit3_3,r4
;	main.c:965: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
;	main.c:967: digit3_2 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit3_2,r4
;	main.c:968: b = b / 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
;	main.c:970: digit3_1 = b % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r6,dpl
	mov	_digit3_1,r6
;	main.c:971: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA_isr'
;------------------------------------------------------------
;	main.c:974: void PCA_isr() __interrupt 7
;	-----------------------------------------
;	 function PCA_isr
;	-----------------------------------------
_PCA_isr:
	push	acc
	push	psw
;	main.c:977: CCF0 = 0;                       //Clear interrupt flag
;	assignBit
	clr	_CCF0
;	main.c:978: CCAP0L = value;
	mov	_CCAP0L,_value
;	main.c:979: CCAP0H = value >> 8;            //Update compare value
	mov	_CCAP0H,(_value + 1)
;	main.c:980: value += T100Hz;
	mov	a,#0x99
	add	a,_value
	mov	_value,a
	mov	a,#0x03
	addc	a,(_value + 1)
	mov	(_value + 1),a
;	main.c:981: cnt++;
	inc	_cnt
	clr	a
	cjne	a,_cnt,00145$
	inc	(_cnt + 1)
00145$:
;	main.c:983: if (cnt<300)
	clr	c
	mov	a,_cnt
	subb	a,#0x2c
	mov	a,(_cnt + 1)
	subb	a,#0x01
	jnc	00117$
;	main.c:985: P4_6 = !P4_6;         //Flash once per second
	cpl	_P4_6
	sjmp	00119$
00117$:
;	main.c:987: else if (cnt<600)
	clr	c
	mov	a,_cnt
	subb	a,#0x58
	mov	a,(_cnt + 1)
	subb	a,#0x02
	jnc	00114$
;	main.c:989: P4_6 = P4_6;        
;	assignBit
	mov	c,_P4_6
	mov	_P4_6,c
	sjmp	00119$
00114$:
;	main.c:991: else if (cnt<900)
	clr	c
	mov	a,_cnt
	subb	a,#0x84
	mov	a,(_cnt + 1)
	subb	a,#0x03
	jnc	00111$
;	main.c:993: P4_6 = !P4_6;         //Flash once per second
	cpl	_P4_6
	sjmp	00119$
00111$:
;	main.c:995: else if (cnt<1200)
	clr	c
	mov	a,_cnt
	subb	a,#0xb0
	mov	a,(_cnt + 1)
	subb	a,#0x04
	jnc	00108$
;	main.c:997: P4_6 = P4_6;         
;	assignBit
	mov	c,_P4_6
	mov	_P4_6,c
	sjmp	00119$
00108$:
;	main.c:999: else if (cnt<1500)
	clr	c
	mov	a,_cnt
	subb	a,#0xdc
	mov	a,(_cnt + 1)
	subb	a,#0x05
	jnc	00105$
;	main.c:1001: P4_6 = !P4_6;         //Flash once per second
	cpl	_P4_6
	sjmp	00119$
00105$:
;	main.c:1003: else if (cnt<1800)
	clr	c
	mov	a,_cnt
	subb	a,#0x08
	mov	a,(_cnt + 1)
	subb	a,#0x07
	jnc	00102$
;	main.c:1005: P4_6 = P4_6;         
;	assignBit
	mov	c,_P4_6
	mov	_P4_6,c
	sjmp	00119$
00102$:
;	main.c:1009: cnt = 0;
	clr	a
	mov	_cnt,a
	mov	(_cnt + 1),a
;	main.c:1010: CR = 0;
;	assignBit
	clr	_CR
00119$:
;	main.c:1012: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
_nums:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x40	; 64
_win:
	.ascii ">You have succcessfully landed on the surface of Mars, resea"
	.ascii "rch will start imeadiately."
	.db 0x00
_lose:
	.ascii ">You have crashed on the surface of Mars. You are the lone s"
	.ascii "urvivor of the module. Good luck."
	.db 0x00
_start1:
	.ascii ">[12:43PM Houston]: This is Houston, you have successfully d"
	.ascii "etached from Command Module. Over >[12:43PM You]: Copy that."
	.ascii " Awaiting manual engine control initiation. Over >[12:45PM Y"
	.ascii "ou]: Come in Houston, engine control to manual. Initiating l"
	.ascii "anding procedure >[12:46PM Houston]: Statistic report on Lan"
	.ascii "ding Module. Awaiting >[12:46PM You]:We have full control of"
	.ascii " the module. Fuel is at 99%. Ship integrity is at 100%. Heig"
	.ascii "ht at 1005 meters above the surface. Over >[12:47PM Houston]"
	.ascii ": Copy that, you are go for landing. Good luck, this mission"
	.ascii " depends on you."
	.db 0x00
_engine1:
	.ascii ">[Module Intercom] Commander, our engines are overheating. T"
	.ascii "hey are experiencing damage, engine thrust decreases by 10 p"
	.ascii "ercent."
	.db 0x00
_turb1:
	.ascii ">[Houston Misson Control]: Come in Artemis. We have detected"
	.ascii " a level 2 sandstorm heading west at 83 m/s. Estimated impac"
	.ascii "t time is unknown. Prepare imediately. I repeat prepare imed"
	.ascii "iately!"
	.db 0x00
_turb2:
	.ascii ">[You]: Come in Houston. We have full impact, our accelerati"
	.ascii "on is fluctuating rapidily"
	.db 0x00
_turb3:
	.ascii ">[You]: Come in Houston. We are out of the sandstorm. There "
	.ascii "seems to be only minor damages."
	.db 0x00
_leak1:
	.ascii ">[Module Intercom] Commander, we have detected a fuel leak o"
	.ascii "n the side of the module. Fuel is decreasing rapidly. There "
	.ascii "is no current way of fixing it"
	.db 0x00
_vel1:
	.ascii ">[Module Intercom] Commander, our velocity is too high. We a"
	.ascii "re experiencing damage to the module."
	.db 0x00
_disp:
	.ascii ">[Module Intercom] Commander, our display circuitry is encon"
	.ascii "tering problems. The acceleration and fuel displays are brok"
	.ascii "en."
	.db 0x00
_ship_mass:
	.byte #0x00,#0x20,#0x4b,#0x46	;  1.300000e+04
___str_0:
	.ascii "hello"
	.db 0x00
___str_1:
	.ascii "byebye"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
