;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Sat Mar 11 13:47:00 2023
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _emb2
	.globl _emb1
	.globl _em3
	.globl _em2
	.globl _em1
	.globl _leak3
	.globl _leak2
	.globl _leak1
	.globl _turb3
	.globl _turb2
	.globl _turb1
	.globl _enginep5
	.globl _enginep4
	.globl _enginep3
	.globl _enginep2
	.globl _enginep1
	.globl _start11
	.globl _start10
	.globl _start9
	.globl _start8
	.globl _start7
	.globl _start6
	.globl _start5
	.globl _start4
	.globl _start3
	.globl _start2
	.globl _start1
	.globl _gameover
	.globl _lose
	.globl _win
	.globl _timer1
	.globl _INT0_INT
	.globl _timer0
	.globl _main
	.globl _enginepower
	.globl _turb
	.globl _fuelleak
	.globl _start
	.globl _init
	.globl _write_data
	.globl _write_com
	.globl _delay
	.globl _Timer0Init
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
	.globl _l
	.globl _s
	.globl _n
	.globl _x
	.globl _digit4
	.globl _digit3
	.globl _digit2
	.globl _digit1
	.globl _delta_h
	.globl _a
	.globl _delta_t
	.globl _delta_d
	.globl _delta_v
	.globl _fuel
	.globl _gravity
	.globl _height
	.globl _ship_mass
	.globl _ship_thrust
	.globl _thrust
	.globl _velocity
	.globl _num
	.globl _digit
	.globl _sign
	.globl _displaynum
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
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
_num::
	.ds 1
_velocity::
	.ds 4
_thrust::
	.ds 4
_ship_thrust::
	.ds 4
_ship_mass::
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
_digit1::
	.ds 1
_digit2::
	.ds 1
_digit3::
	.ds 1
_digit4::
	.ds 1
_x::
	.ds 2
_n::
	.ds 2
_s::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_l::
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
	ljmp	_INT0_INT
	.ds	5
	ljmp	_timer0
	.ds	5
	reti
	.ds	7
	ljmp	_timer1
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
;	main.c:9: unsigned char num=0;
	mov	_num,#0x00
;	main.c:48: float velocity = 0.0;
	clr	a
	mov	_velocity,a
	mov	(_velocity + 1),a
	mov	(_velocity + 2),a
	mov	(_velocity + 3),a
;	main.c:49: float thrust = 0.0;
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
;	main.c:50: float ship_thrust = 600.0;
	mov	_ship_thrust,a
	mov	(_ship_thrust + 1),a
	mov	(_ship_thrust + 2),#0x16
	mov	(_ship_thrust + 3),#0x44
;	main.c:51: float ship_mass = 500.0;
	mov	_ship_mass,a
	mov	(_ship_mass + 1),a
	mov	(_ship_mass + 2),#0xFA
	mov	(_ship_mass + 3),#0x43
;	main.c:52: float height = 1000.0;
	mov	_height,a
	mov	(_height + 1),a
	mov	(_height + 2),#0x7A
	mov	(_height + 3),#0x44
;	main.c:53: float gravity = 3.7;
	mov	_gravity,#0xCD
	mov	(_gravity + 1),#0xCC
	mov	(_gravity + 2),#0x6C
	mov	(_gravity + 3),#0x40
;	main.c:54: float fuel = 100.0;
	mov	_fuel,a
	mov	(_fuel + 1),a
	mov	(_fuel + 2),#0xC8
	mov	(_fuel + 3),#0x42
;	main.c:55: float delta_v = 0.0;
	mov	_delta_v,a
	mov	(_delta_v + 1),a
	mov	(_delta_v + 2),a
	mov	(_delta_v + 3),a
;	main.c:56: float delta_d = 0.0;
	mov	_delta_d,a
	mov	(_delta_d + 1),a
	mov	(_delta_d + 2),a
	mov	(_delta_d + 3),a
;	main.c:57: float delta_t = 1.0/12.0;
	mov	_delta_t,#0xAB
	mov	(_delta_t + 1),#0xAA
	mov	(_delta_t + 2),#0xAA
	mov	(_delta_t + 3),#0x3D
;	main.c:61: char digit1 = 0;
;	1-genFromRTrack replaced	mov	_digit1,#0x00
	mov	_digit1,a
;	main.c:62: char digit2 = 0;
;	1-genFromRTrack replaced	mov	_digit2,#0x00
	mov	_digit2,a
;	main.c:63: char digit3 = 0;
;	1-genFromRTrack replaced	mov	_digit3,#0x00
	mov	_digit3,a
;	main.c:64: char digit4 = 0;
;	1-genFromRTrack replaced	mov	_digit4,#0x00
	mov	_digit4,a
;	main.c:67: unsigned int n = 0;
	mov	_n,a
	mov	(_n + 1),a
;	main.c:68: unsigned int s = 0;
	mov	_s,a
	mov	(_s + 1),a
;	main.c:69: __bit l = 1;
	setb	_l
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
;Allocation info for local variables in function 'Timer0Init'
;------------------------------------------------------------
;	main.c:75: void Timer0Init()		//5ms@11.0592MHz
;	-----------------------------------------
;	 function Timer0Init
;	-----------------------------------------
_Timer0Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:77: TMOD = 0x11;		//Set timer work mode
	mov	_TMOD,#0x11
;	main.c:78: TL0 = 0x00;		//Initial timer value
	mov	_TL0,#0x00
;	main.c:79: TH0 = 0x28;		//Initial timer value
	mov	_TH0,#0x28
;	main.c:80: TL1 = 0x50;
	mov	_TL1,#0x50
;	main.c:81: TH1 = 0xF0;
	mov	_TH1,#0xF0
;	main.c:82: TF0 = 0;		//Clear TF0 flag
	clr	_TF0
;	main.c:83: EA  = 1;
	setb	_EA
;	main.c:84: ET0 = 1;
	setb	_ET0
;	main.c:85: ET1 = 1;
	setb	_ET1
;	main.c:86: IT0 = 1;
	setb	_IT0
;	main.c:87: EX0 = 1;
	setb	_EX0
;	main.c:88: TR0 = 1;		//Timer0 start run
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;z                         Allocated to registers 
;x                         Allocated to registers r6 r7 
;y                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:92: void delay(unsigned int z)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:95: for(x=z;x>0;x--)
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	main.c:96: for(y=50;y>0;y--);
	mov	r4,#0x32
	mov	r5,#0x00
00104$:
	mov	a,r4
	add	a,#0xFF
	mov	r2,a
	mov	a,r5
	addc	a,#0xFF
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00104$
;	main.c:95: for(x=z;x>0;x--)
	dec	r6
	cjne	r6,#0xFF,00129$
	dec	r7
00129$:
	sjmp	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_com'
;------------------------------------------------------------
;com                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:99: void write_com(unsigned char com)
;	-----------------------------------------
;	 function write_com
;	-----------------------------------------
_write_com:
	mov	r7,dpl
;	main.c:101: lcdrs=0;
	clr	_P1_2
;	main.c:102: rw=0;
	clr	_P1_1
;	main.c:103: P2=com;
	mov	_P2,r7
;	main.c:104: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:105: lcden=1;
	setb	_P1_0
;	main.c:106: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:107: lcden=0;
	clr	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_data'
;------------------------------------------------------------
;date                      Allocated to registers r7 
;------------------------------------------------------------
;	main.c:110: void write_data(unsigned char date)
;	-----------------------------------------
;	 function write_data
;	-----------------------------------------
_write_data:
	mov	r7,dpl
;	main.c:112: lcdrs=1;
	setb	_P1_2
;	main.c:113: rw=0;
	clr	_P1_1
;	main.c:114: P2=date;
	mov	_P2,r7
;	main.c:115: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:116: lcden=1;
	setb	_P1_0
;	main.c:117: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
;	main.c:118: lcden=0;
	clr	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	main.c:121: void init()
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main.c:123: lcden=0;
	clr	_P1_0
;	main.c:124: write_com(0x38);
	mov	dpl,#0x38
	lcall	_write_com
;	main.c:125: write_com(0x0f);
	mov	dpl,#0x0F
	lcall	_write_com
;	main.c:126: write_com(0x06);
	mov	dpl,#0x06
	lcall	_write_com
;	main.c:127: write_com(0X01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:128: write_com(0X80); 
	mov	dpl,#0x80
	ljmp	_write_com
;------------------------------------------------------------
;Allocation info for local variables in function 'start'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:131: void start()
;	-----------------------------------------
;	 function start
;	-----------------------------------------
_start:
;	main.c:134: for (i=0;i<9;i++)
	mov	r7,#0x00
00112$:
;	main.c:136: write_data(start1[i]);
	mov	a,r7
	mov	dptr,#_start1
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:137: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:134: for (i=0;i<9;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x89
	jc	00112$
;	main.c:139: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:140: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:141: for (i=0;i<17;i++)
	mov	r7,#0x00
00114$:
;	main.c:143: write_data(start2[i]);
	mov	a,r7
	mov	dptr,#_start2
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:144: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:141: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00114$
;	main.c:146: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:147: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:148: for (i=0;i<17;i++)
	mov	r7,#0x00
00116$:
;	main.c:150: write_data(start3[i]);
	mov	a,r7
	mov	dptr,#_start3
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:151: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:148: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00116$
;	main.c:153: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:154: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:155: for (i=0;i<17;i++)
	mov	r7,#0x00
00118$:
;	main.c:157: write_data(start4[i]);
	mov	a,r7
	mov	dptr,#_start4
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:158: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:155: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00118$
;	main.c:160: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:161: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:162: for (i=0;i<17;i++)
	mov	r7,#0x00
00120$:
;	main.c:164: write_data(start5[i]);
	mov	a,r7
	mov	dptr,#_start5
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:165: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:162: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00120$
;	main.c:167: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:168: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:169: for (i=0;i<17;i++)
	mov	r7,#0x00
00122$:
;	main.c:171: write_data(start6[i]);
	mov	a,r7
	mov	dptr,#_start6
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:172: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:169: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00122$
;	main.c:174: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:175: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:176: for (i=0;i<13;i++)
	mov	r7,#0x00
00124$:
;	main.c:178: write_data(start7[i]);
	mov	a,r7
	mov	dptr,#_start7
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:179: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:176: for (i=0;i<13;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8d
	jc	00124$
;	main.c:181: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:182: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:183: for (i=0;i<13;i++)
	mov	r7,#0x00
00126$:
;	main.c:185: write_data(start8[i]);
	mov	a,r7
	mov	dptr,#_start8
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:186: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:183: for (i=0;i<13;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8d
	jc	00126$
;	main.c:188: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:189: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:190: for (i=0;i<17;i++)
	mov	r7,#0x00
00128$:
;	main.c:192: write_data(start9[i]);
	mov	a,r7
	mov	dptr,#_start9
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:193: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:190: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00128$
;	main.c:195: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:196: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:197: for (i=0;i<17;i++)
	mov	r7,#0x00
00130$:
;	main.c:199: write_data(start10[i]);
	mov	a,r7
	mov	dptr,#_start10
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:200: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:197: for (i=0;i<17;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x91
	jc	00130$
;	main.c:202: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:203: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:204: for (i=0;i<12;i++)
	mov	r7,#0x00
00132$:
;	main.c:206: write_data(start11[i]);
	mov	a,r7
	mov	dptr,#_start11
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:207: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:204: for (i=0;i<12;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8c
	jc	00132$
;	main.c:209: delay(800);
	mov	dptr,#0x0320
	lcall	_delay
;	main.c:210: write_com(0x01);
	mov	dpl,#0x01
	ljmp	_write_com
;------------------------------------------------------------
;Allocation info for local variables in function 'fuelleak'
;------------------------------------------------------------
;q                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:213: void fuelleak()
;	-----------------------------------------
;	 function fuelleak
;	-----------------------------------------
_fuelleak:
;	main.c:216: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:217: for (q=0;q<17;q++)
	mov	r7,#0x00
00104$:
;	main.c:219: write_data(leak1[q]);
	mov	a,r7
	mov	dptr,#_leak1
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:220: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:217: for (q=0;q<17;q++)
	inc	r7
	cjne	r7,#0x11,00133$
00133$:
	jc	00104$
;	main.c:222: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:223: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:224: for (q=0;q<16;q++)
	mov	r7,#0x00
00106$:
;	main.c:226: write_data(leak2[q]);
	mov	a,r7
	mov	dptr,#_leak2
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:227: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:224: for (q=0;q<16;q++)
	inc	r7
	cjne	r7,#0x10,00135$
00135$:
	jc	00106$
;	main.c:229: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:230: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:231: for (q=0;q<16;q++)
	mov	r7,#0x00
00108$:
;	main.c:233: write_data(leak3[q]);
	mov	a,r7
	mov	dptr,#_leak3
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:234: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:231: for (q=0;q<16;q++)
	inc	r7
	cjne	r7,#0x10,00137$
00137$:
	jc	00108$
;	main.c:236: delay(8);
	mov	dptr,#0x0008
	lcall	_delay
;	main.c:237: fuel = fuel - 20.0;
	clr	a
	push	acc
	push	acc
	mov	a,#0xA0
	push	acc
	rl	a
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
;	main.c:238: write_com(0x01);
	mov	dpl,#0x01
	ljmp	_write_com
;------------------------------------------------------------
;Allocation info for local variables in function 'turb'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:241: void turb()
;	-----------------------------------------
;	 function turb
;	-----------------------------------------
_turb:
;	main.c:244: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:245: for (t=0;t<17;t++)
	mov	r7,#0x00
00104$:
;	main.c:247: write_data(turb1[t]);
	mov	a,r7
	mov	dptr,#_turb1
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:248: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:245: for (t=0;t<17;t++)
	inc	r7
	cjne	r7,#0x11,00133$
00133$:
	jc	00104$
;	main.c:250: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:251: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:252: for (t=0;t<16;t++)
	mov	r7,#0x00
00106$:
;	main.c:254: write_data(turb2[t]);
	mov	a,r7
	mov	dptr,#_turb2
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:255: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:252: for (t=0;t<16;t++)
	inc	r7
	cjne	r7,#0x10,00135$
00135$:
	jc	00106$
;	main.c:257: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:258: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:259: for (t=0;t<16;t++)
	mov	r7,#0x00
00108$:
;	main.c:261: write_data(turb3[t]);
	mov	a,r7
	mov	dptr,#_turb3
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:262: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:259: for (t=0;t<16;t++)
	inc	r7
	cjne	r7,#0x10,00137$
00137$:
	jc	00108$
;	main.c:264: delay(800);
	mov	dptr,#0x0320
	lcall	_delay
;	main.c:265: gravity = gravity + 0.5;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_gravity
	mov	dph,(_gravity + 1)
	mov	b,(_gravity + 2)
	mov	a,(_gravity + 3)
	lcall	___fsadd
	mov	_gravity,dpl
	mov	(_gravity + 1),dph
	mov	(_gravity + 2),b
	mov	(_gravity + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:266: write_com(0x01);
	mov	dpl,#0x01
	ljmp	_write_com
;------------------------------------------------------------
;Allocation info for local variables in function 'enginepower'
;------------------------------------------------------------
;w                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:269: void enginepower()
;	-----------------------------------------
;	 function enginepower
;	-----------------------------------------
_enginepower:
;	main.c:272: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:273: for (w=0;w<17;w++)
	mov	r7,#0x00
00106$:
;	main.c:275: write_data(enginep1[w]);
	mov	a,r7
	mov	dptr,#_enginep1
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:276: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:273: for (w=0;w<17;w++)
	inc	r7
	cjne	r7,#0x11,00153$
00153$:
	jc	00106$
;	main.c:278: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:279: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:280: for (w=0;w<16;w++)
	mov	r7,#0x00
00108$:
;	main.c:282: write_data(enginep2[w]);
	mov	a,r7
	mov	dptr,#_enginep2
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:283: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:280: for (w=0;w<16;w++)
	inc	r7
	cjne	r7,#0x10,00155$
00155$:
	jc	00108$
;	main.c:285: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:286: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:287: for (w=0;w<16;w++)
	mov	r7,#0x00
00110$:
;	main.c:289: write_data(enginep3[w]);
	mov	a,r7
	mov	dptr,#_enginep3
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:290: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:287: for (w=0;w<16;w++)
	inc	r7
	cjne	r7,#0x10,00157$
00157$:
	jc	00110$
;	main.c:292: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:293: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:294: for (w=0;w<16;w++)
	mov	r7,#0x00
00112$:
;	main.c:296: write_data(enginep4[w]);
	mov	a,r7
	mov	dptr,#_enginep4
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:297: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:294: for (w=0;w<16;w++)
	inc	r7
	cjne	r7,#0x10,00159$
00159$:
	jc	00112$
;	main.c:299: delay(500);
	mov	dptr,#0x01F4
	lcall	_delay
;	main.c:300: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:301: for (w=0;w<7;w++)
	mov	r7,#0x00
00114$:
;	main.c:303: write_data(enginep5[w]);
	mov	a,r7
	mov	dptr,#_enginep5
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_write_data
;	main.c:304: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar7
;	main.c:301: for (w=0;w<7;w++)
	inc	r7
	cjne	r7,#0x07,00161$
00161$:
	jc	00114$
;	main.c:306: delay(800);
	mov	dptr,#0x0320
	lcall	_delay
;	main.c:307: ship_thrust = ship_thrust * 0.75;
	push	_ship_thrust
	push	(_ship_thrust + 1)
	push	(_ship_thrust + 2)
	push	(_ship_thrust + 3)
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x3F
	lcall	___fsmul
	mov	_ship_thrust,dpl
	mov	(_ship_thrust + 1),dph
	mov	(_ship_thrust + 2),b
	mov	(_ship_thrust + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:308: write_com(0x01);
	mov	dpl,#0x01
	ljmp	_write_com
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:311: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:313: init();
	lcall	_init
;	main.c:314: start();
	lcall	_start
;	main.c:315: Timer0Init();
	lcall	_Timer0Init
;	main.c:316: while(1)
00131$:
;	main.c:318: digit(height);
	mov	dpl,_height
	mov	dph,(_height + 1)
	mov	b,(_height + 2)
	mov	a,(_height + 3)
	lcall	_digit
;	main.c:319: write_data('h');
	mov	dpl,#0x68
	lcall	_write_data
;	main.c:320: write_data(':');
	mov	dpl,#0x3A
	lcall	_write_data
;	main.c:321: sign();
	lcall	_sign
;	main.c:322: displaynum();
	lcall	_displaynum
;	main.c:324: digit(velocity);
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	_digit
;	main.c:325: write_data(' ');
	mov	dpl,#0x20
	lcall	_write_data
;	main.c:326: write_data(' ');
	mov	dpl,#0x20
	lcall	_write_data
;	main.c:327: write_data('v');
	mov	dpl,#0x76
	lcall	_write_data
;	main.c:328: write_data(':');
	mov	dpl,#0x3A
	lcall	_write_data
;	main.c:329: sign();
	lcall	_sign
;	main.c:330: displaynum();
	lcall	_displaynum
;	main.c:331: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:333: digit(a);
	mov	dpl,_a
	mov	dph,(_a + 1)
	mov	b,(_a + 2)
	mov	a,(_a + 3)
	lcall	_digit
;	main.c:334: write_data('a');
	mov	dpl,#0x61
	lcall	_write_data
;	main.c:335: write_data(':');
	mov	dpl,#0x3A
	lcall	_write_data
;	main.c:336: sign();
	lcall	_sign
;	main.c:337: displaynum();
	lcall	_displaynum
;	main.c:339: digit(fuel);
	mov	dpl,_fuel
	mov	dph,(_fuel + 1)
	mov	b,(_fuel + 2)
	mov	a,(_fuel + 3)
	lcall	_digit
;	main.c:340: write_data(' ');
	mov	dpl,#0x20
	lcall	_write_data
;	main.c:341: write_data(' ');
	mov	dpl,#0x20
	lcall	_write_data
;	main.c:342: write_data('f');
	mov	dpl,#0x66
	lcall	_write_data
;	main.c:343: write_data(':');
	mov	dpl,#0x3A
	lcall	_write_data
;	main.c:344: displaynum();
	lcall	_displaynum
;	main.c:345: write_data('%');
	mov	dpl,#0x25
	lcall	_write_data
;	main.c:347: write_com(0x02);
	mov	dpl,#0x02
	lcall	_write_com
;	main.c:349: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:350: if (velocity > 20.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0xA0
	push	acc
	rl	a
	push	acc
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
;	main.c:352: TR0 = 0;
	clr	_TR0
;	main.c:353: enginepower();
	lcall	_enginepower
;	main.c:354: velocity = 10.0;
	clr	a
	mov	_velocity,a
	mov	(_velocity + 1),a
	mov	(_velocity + 2),#0x20
	mov	(_velocity + 3),#0x41
;	main.c:355: TR0 = 1;
	setb	_TR0
00102$:
;	main.c:357: if (velocity < - 20.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0xA0
	push	acc
	mov	a,#0xC1
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
	jz	00104$
;	main.c:359: TR0 = 0;
	clr	_TR0
;	main.c:360: enginepower();
	lcall	_enginepower
;	main.c:361: velocity = 10.0;
	clr	a
	mov	_velocity,a
	mov	(_velocity + 1),a
	mov	(_velocity + 2),#0x20
	mov	(_velocity + 3),#0x41
;	main.c:362: TR0 = 1;
	setb	_TR0
00104$:
;	main.c:364: if (thrustkey == 0)
	jnb	_P3_2,00202$
	ljmp	00114$
00202$:
;	main.c:366: n++;
	inc	_n
	clr	a
	cjne	a,_n,00203$
	inc	(_n + 1)
00203$:
;	main.c:367: if (n % 200 == 0)
	mov	__moduint_PARM_2,#0xC8
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_n
	mov	dph,(_n + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
;	main.c:369: TR0 = 0;
	clr	_TR0
;	main.c:370: fuelleak();
	lcall	_fuelleak
;	main.c:371: TR0 = 1;
	setb	_TR0
00106$:
;	main.c:373: if (n % 350 == 0)
	mov	__moduint_PARM_2,#0x5E
	mov	(__moduint_PARM_2 + 1),#0x01
	mov	dpl,_n
	mov	dph,(_n + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00108$
;	main.c:375: TR0 = 0;
	clr	_TR0
;	main.c:376: turb();
	lcall	_turb
;	main.c:377: TR0 = 1;
	setb	_TR0
00108$:
;	main.c:379: if (n == 60000)
	mov	r4,_n
	mov	r5,(_n + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	cjne	r4,#0x60,00110$
	cjne	r5,#0xEA,00110$
	cjne	r6,#0x00,00110$
	cjne	r7,#0x00,00110$
;	main.c:381: n = 0;
	clr	a
	mov	_n,a
	mov	(_n + 1),a
;	main.c:382: s++;
	inc	_s
;	genFromRTrack removed	clr	a
	cjne	a,_s,00208$
	inc	(_s + 1)
00208$:
00110$:
;	main.c:384: if (s == 60000)
	mov	r4,_s
	mov	r5,(_s + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	cjne	r4,#0x60,00112$
	cjne	r5,#0xEA,00112$
	cjne	r6,#0x00,00112$
	cjne	r7,#0x00,00112$
;	main.c:386: s = 0;
	clr	a
	mov	_s,a
	mov	(_s + 1),a
00112$:
;	main.c:388: thrust = ship_thrust;
	mov	_thrust,_ship_thrust
	mov	(_thrust + 1),(_ship_thrust + 1)
	mov	(_thrust + 2),(_ship_thrust + 2)
	mov	(_thrust + 3),(_ship_thrust + 3)
;	main.c:389: fuel = fuel - 0.5;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
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
	sjmp	00115$
00114$:
;	main.c:393: thrust = 0;
	clr	a
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
00115$:
;	main.c:395: if (fuel < 0.1)
	mov	a,#0xCD
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x3D
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
	jz	00117$
;	main.c:397: thrust = 0;
	clr	a
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
;	main.c:398: fuel = 0.0;
	mov	_fuel,a
	mov	(_fuel + 1),a
	mov	(_fuel + 2),a
	mov	(_fuel + 3),a
00117$:
;	main.c:401: if (height < 0.1)
	mov	a,#0xCD
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x3D
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
	jnz	00212$
	ljmp	00131$
00212$:
;	main.c:403: write_com(0x01);
	mov	dpl,#0x01
	lcall	_write_com
;	main.c:404: write_com(0x02);
	mov	dpl,#0x02
	lcall	_write_com
;	main.c:405: if (velocity > -10.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0x20
	push	acc
	mov	a,#0xC1
	push	acc
	mov	dpl,_velocity
	mov	dph,(_velocity + 1)
	mov	b,(_velocity + 2)
	mov	a,(_velocity + 3)
	lcall	___fsgt
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00123$
;	main.c:407: for(num=0;num<8;num++)
	mov	_num,#0x00
00133$:
;	main.c:409: write_data(win[num]);
	mov	a,_num
	mov	dptr,#_win
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_write_data
;	main.c:410: delay(200);
	mov	dptr,#0x00C8
	lcall	_delay
;	main.c:407: for(num=0;num<8;num++)
	inc	_num
	mov	a,#0x100 - 0x08
	add	a,_num
	jnc	00133$
;	main.c:412: delay(300);
	mov	dptr,#0x012C
	lcall	_delay
;	main.c:413: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:414: for(num=0;num<10;num++)
	mov	_num,#0x00
00135$:
;	main.c:416: write_data(gameover[num]);
	mov	a,_num
	mov	dptr,#_gameover
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_write_data
;	main.c:417: delay(200);
	mov	dptr,#0x00C8
	lcall	_delay
;	main.c:414: for(num=0;num<10;num++)
	inc	_num
	mov	a,#0x100 - 0x0A
	add	a,_num
	jnc	00135$
	sjmp	00126$
00123$:
;	main.c:422: for(num=0;num<12;num++)
	mov	_num,#0x00
00137$:
;	main.c:424: write_data(lose[num]);
	mov	a,_num
	mov	dptr,#_lose
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_write_data
;	main.c:425: delay(200);
	mov	dptr,#0x00C8
	lcall	_delay
;	main.c:422: for(num=0;num<12;num++)
	inc	_num
	mov	a,#0x100 - 0x0C
	add	a,_num
	jnc	00137$
;	main.c:427: delay(300);
	mov	dptr,#0x012C
	lcall	_delay
;	main.c:428: write_com(0X80+0x40);
	mov	dpl,#0xC0
	lcall	_write_com
;	main.c:429: for(num=0;num<10;num++)
	mov	_num,#0x00
00139$:
;	main.c:431: write_data(gameover[num]);
	mov	a,_num
	mov	dptr,#_gameover
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_write_data
;	main.c:432: delay(200);
	mov	dptr,#0x00C8
	lcall	_delay
;	main.c:429: for(num=0;num<10;num++)
	inc	_num
	mov	a,#0x100 - 0x0A
	add	a,_num
	jnc	00139$
;	main.c:435: while(1);
00126$:
	sjmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'digit'
;------------------------------------------------------------
;input                     Allocated to registers r4 r5 r6 r7 
;b                         Allocated to registers r6 r7 
;int_input                 Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:441: void digit (float input)
;	-----------------------------------------
;	 function digit
;	-----------------------------------------
_digit:
;	main.c:444: int_input = (int) input;
	lcall	___fs2sint
;	main.c:445: digit4 = int_input % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit4,r4
;	main.c:446: b = int_input / 10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
;	main.c:447: digit3 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit3,r4
;	main.c:448: b = b / 10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
;	main.c:449: digit2 = b % 10;
	mov	r6,dpl
	mov	r7,dph
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	_digit2,r4
;	main.c:450: b = b / 10;
	mov	__divsint_PARM_2,#0x0A
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
;	main.c:451: digit1 = b % 10;
	mov	__modsint_PARM_2,#0x0A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_digit1,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sign'
;------------------------------------------------------------
;	main.c:454: void sign()
;	-----------------------------------------
;	 function sign
;	-----------------------------------------
_sign:
;	main.c:456: if (digit4 < 0)
	mov	a,_digit4
	jnb	acc.7,00102$
;	main.c:458: write_data('-');
	mov	dpl,#0x2D
	lcall	_write_data
;	main.c:459: digit1 = digit1 + (-2*digit1);
	mov	a,_digit1
	mov	b,#0xFE
	mul	ab
	add	a,_digit1
	mov	_digit1,a
;	main.c:460: digit2 = digit2 + (-2*digit2);
	mov	a,_digit2
	mov	b,#0xFE
	mul	ab
	add	a,_digit2
	mov	_digit2,a
;	main.c:461: digit3 = digit3 + (-2*digit3);
	mov	a,_digit3
	mov	b,#0xFE
	mul	ab
	add	a,_digit3
	mov	_digit3,a
;	main.c:462: digit4 = digit4 + (-2*digit4);
	mov	a,_digit4
	mov	b,#0xFE
	mul	ab
	add	a,_digit4
	mov	_digit4,a
	ret
00102$:
;	main.c:466: write_data('+');
	mov	dpl,#0x2B
	ljmp	_write_data
;------------------------------------------------------------
;Allocation info for local variables in function 'displaynum'
;------------------------------------------------------------
;	main.c:470: void displaynum()
;	-----------------------------------------
;	 function displaynum
;	-----------------------------------------
_displaynum:
;	main.c:472: write_data(digit1+48);
	mov	a,#0x30
	add	a,_digit1
	mov	dpl,a
	lcall	_write_data
;	main.c:473: write_data(digit2+48);
	mov	a,#0x30
	add	a,_digit2
	mov	dpl,a
	lcall	_write_data
;	main.c:474: write_data(digit3+48);
	mov	a,#0x30
	add	a,_digit3
	mov	dpl,a
	lcall	_write_data
;	main.c:475: write_data(digit4+48);
	mov	a,#0x30
	add	a,_digit4
	mov	dpl,a
	ljmp	_write_data
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;	main.c:478: void timer0(void) __interrupt 1
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
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
;	main.c:480: a = (8.0*thrust / (ship_mass + fuel) - gravity);
	push	_thrust
	push	(_thrust + 1)
	push	(_thrust + 2)
	push	(_thrust + 3)
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_fuel
	push	(_fuel + 1)
	push	(_fuel + 2)
	push	(_fuel + 3)
	mov	dpl,_ship_mass
	mov	dph,(_ship_mass + 1)
	mov	b,(_ship_mass + 2)
	mov	a,(_ship_mass + 3)
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
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_a,r4
	mov	(_a + 1),r5
	mov	(_a + 2),r6
	mov	(_a + 3),r7
;	main.c:481: delta_v = delta_t * (8.0*thrust / (ship_mass + fuel) - gravity);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
;	main.c:482: velocity = velocity + delta_v;
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
;	main.c:483: delta_h = velocity * delta_t;
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
;	main.c:484: height = height + delta_h;
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
;Allocation info for local variables in function 'INT0_INT'
;------------------------------------------------------------
;	main.c:487: void INT0_INT(void) __interrupt 0
;	-----------------------------------------
;	 function INT0_INT
;	-----------------------------------------
_INT0_INT:
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
;	main.c:489: l = !l;
	cpl	_l
;	main.c:490: if (l == 1)
	jnb	_l,00102$
;	main.c:492: thrust = ship_thrust;
	mov	_thrust,_ship_thrust
	mov	(_thrust + 1),(_ship_thrust + 1)
	mov	(_thrust + 2),(_ship_thrust + 2)
	mov	(_thrust + 3),(_ship_thrust + 3)
;	main.c:493: fuel = fuel - 0.2;
	mov	a,#0xCD
	push	acc
	dec	a
	push	acc
	mov	a,#0x4C
	push	acc
	mov	a,#0x3E
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
	sjmp	00104$
00102$:
;	main.c:497: thrust = 0;
	clr	a
	mov	_thrust,a
	mov	(_thrust + 1),a
	mov	(_thrust + 2),a
	mov	(_thrust + 3),a
00104$:
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
;Allocation info for local variables in function 'timer1'
;------------------------------------------------------------
;	main.c:502: void timer1(void) __interrupt 3
;	-----------------------------------------
;	 function timer1
;	-----------------------------------------
_timer1:
;	main.c:504: TL1 = 0x50;
	mov	_TL1,#0x50
;	main.c:505: TH1 = 0xF0;
	mov	_TH1,#0xF0
;	main.c:506: speaker = !speaker;
	cpl	_P0_0
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
_win:
	.ascii "You Win!"
	.db 0x00
_lose:
	.ascii "You Crashed!"
	.db 0x00
_gameover:
	.ascii "Game Over."
	.db 0x00
_start1:
	.ascii "Mission:"
	.db 0x00
_start2:
	.ascii "Land Artemis saf"
	.db 0x00
_start3:
	.ascii "ely on the surfa"
	.db 0x00
_start4:
	.ascii "ce of mars. Land"
	.db 0x00
_start5:
	.ascii " with a velocity"
	.db 0x00
_start6:
	.ascii "higher than -10."
	.db 0x00
_start7:
	.ascii " Information:"
	.db 0x00
_start8:
	.ascii "Gravity: 3.7"
	.db 0x00
_start9:
	.ascii " We wish you luck "
	.db 0x00
_start10:
	.ascii "Our mission depe"
	.db 0x00
_start11:
	.ascii "nds on you."
	.db 0x00
_enginep1:
	.ascii " Sir! Rocket boos"
	.db 0x00
_enginep2:
	.ascii "ters are overheat"
	.db 0x00
_enginep3:
	.ascii "ing!    Engine p"
	.db 0x00
_enginep4:
	.ascii "power decreases "
	.db 0x00
_enginep5:
	.ascii "by 25%."
	.db 0x00
_turb1:
	.ascii " Sir! We are expe"
	.db 0x00
_turb2:
	.ascii "riencing a sands"
	.db 0x00
_turb3:
	.ascii "torm! Buckle up!"
	.db 0x00
_leak1:
	.ascii " Sir! We have a f"
	.db 0x00
_leak2:
	.ascii "uel leak. Fuel d"
	.db 0x00
_leak3:
	.ascii "decreases by 20%"
	.db 0x00
_em1:
	.ascii "Sir! throttle ma"
	.db 0x00
_em2:
	.ascii "lafunction! No t"
	.db 0x00
_em3:
	.ascii "hrottle control."
	.db 0x00
_emb1:
	.ascii "Throttle control"
	.db 0x00
_emb2:
	.ascii "is back."
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
