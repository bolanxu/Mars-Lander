#include <at89x52.h>
#include <stdlib.h>
//#include <string.h>

__sfr __at 0x94 P0M0;  
__sfr __at 0x93 P0M1;

__sfr __at 0x92 P1M0;  
__sfr __at 0x91 P1M1;

__sfr __at 0xB2 P3M0;  
__sfr __at 0xB1 P3M1;

__sfr __at 0x96 P2M0;  
__sfr __at 0x95 P2M1; 

__sfr __at 0xB4 P4M0;  
__sfr __at 0xB3 P4M1;

__sfr __at 0x8E AUXR;


__sfr __at 0xBC ADC_CONTR;        //ADC control register
__sfr __at 0xBD ADC_RES;          //ADC hight 8-bit result register
__sfr __at 0xBE ADC_LOW2;         //ADC low 2-bit result register
__sfr __at 0x9D P1ASF;            //P1 secondary function control register


 __sbit __at 0xAD EADC;
 

__sfr __at 0xB7 IPH;
__sfr __at 0xBB P4SW ; 
__sfr __at 0xC0 P4 ; //8 bitPort4          P4.7  P4.6  P4.5  P4.4  P4.3  P4.2  P4.1  P4.0       1111,1111
__sbit __at 0xC0 P4_0 ;
__sbit __at 0xC1 P4_1 ;
__sbit __at 0xC2 P4_2 ;
__sbit __at 0xC3 P4_3 ;
__sbit __at 0xC4 P4_4 ;
__sbit __at 0xC5 P4_5 ;
__sbit __at 0xC6 P4_6 ;
__sbit __at 0xC7 P4_7 ;

__sfr __at 0xD8 CCON ;           //PCA control register
__sbit __at 0xD8 CCF0 ;         //PCA module-0 interrupt flag
__sbit __at 0xD9 CCF1 ;        //PCA module-1 interrupt flag
__sbit __at 0xDE CR ;         //PCA timer run control bit
__sbit __at 0xDF CF ;         //PCA timer overflow flag
__sfr __at 0xD9 CMOD ;           //PCA mode register
__sfr __at 0xE9 CL ;           //PCA base timer LOW
__sfr __at 0xF9 CH ;           //PCA base timer HIGH
__sfr __at 0xDA CCAPM0 ;           //PCA module-0 mode register
__sfr __at 0xEA CCAP0L ;           //PCA module-0 capture register LOW
__sfr __at 0xFA CCAP0H ;           //PCA module-0 capture register HIGH
__sfr __at 0xDB CCAPM1 ;           //PCA module-1 mode registers
__sfr __at 0xEB CCAP1L ;           //PCA module-1 capture register LOW
__sfr __at 0xFB CCAP1H ;           //PCA module-1 capture register HIGH
__sfr __at 0xf2 PCAPWM0 ;
__sfr __at 0xf3 PCAPWM1 ;

#define FOSC    11059200L
#define T100Hz  (FOSC / 12 / 1000)

#define ADC_POWER 0x80 //ADC power control bit
#define ADC_FLAG 0x10 //ADC complete flag
#define ADC_START 0x08 //ADC start control bit
#define ADC_SPEEDLL 0x00 //540 clocks
#define ADC_SPEEDL 0x20 //360 clocks
#define ADC_SPEEDH 0x40 //180 clocks
#define ADC_SPEEDHH 0x60 //90 clocks

#define num0 0b00111111
#define num1 0b00000110
#define num2 0b01011011
#define num3 0b01001111
#define num4 0b01100110
#define num5 0b01101101
#define num6 0b01111101
#define num7 0b00000111
#define num8 0b01111111
#define num9 0b01101111
#define clear 0b00000000
#define negative 0b01000000

#define trigger P4_4


#define lcden P3_5
#define lcdrs P3_7
#define rw P3_6
#define B0 P3_2

__code unsigned char nums[12] = {num0,num1,num2,num3,num4,num5,num6,num7,num8,num9,clear,negative};


__code unsigned char win[] = ">You have succcessfully landed on the surface of Mars, research will start imeadiately.";
__code unsigned char lose[] = ">You have crashed on the surface of Mars. You are the lone survivor of the module. Good luck.";


__code unsigned char start1[] = ">[12:43PM Houston]: This is Houston, you have successfully detached from Command Module. Over >[12:43PM You]: Copy that. Awaiting manual engine control initiation. Over >[12:45PM You]: Come in Houston, engine control to manual. Initiating landing procedure >[12:46PM Houston]: Statistic report on Landing Module. Awaiting >[12:46PM You]:We have full control of the module. Fuel is at 99%. Ship integrity is at 100%. Height at 1005 meters above the surface. Over >[12:47PM Houston]: Copy that, you are go for landing. Good luck, this mission depends on you.";

__code unsigned char engine1[] = ">[Module Intercom] Commander, our engines are overheating. They are experiencing damage, engine thrust decreases by 10 percent.";

__code unsigned char turb1[] = ">[Houston Misson Control]: Come in Artemis. We have detected a level 2 sandstorm heading west at 83 m/s. Estimated impact time is unknown. Prepare imediately. I repeat prepare imediately!";
__code unsigned char turb2[] = ">[You]: Come in Houston. We have full impact, our acceleration is fluctuating rapidily";
__code unsigned char turb3[] = ">[You]: Come in Houston. We are out of the sandstorm. There seems to be only minor damages.";

__code unsigned char leak1[] = ">[Module Intercom] Commander, we have detected a fuel leak on the side of the module. Fuel is decreasing rapidly. There is no current way of fixing it";

__code unsigned char vel1[] = ">[Module Intercom] Commander, our velocity is too high. We are experiencing damage to the module.";

__code unsigned char disp[] = ">[Module Intercom] Commander, our display circuitry is encontering problems. The acceleration and fuel displays are broken.";
//unsigned char digits[4];


//unsigned char seconds;
//unsigned char minutes;

//int number = 0;

//int number3 = 0;



unsigned char velocityBit = 1;
__bit leakBit = 0;
unsigned int velTime = 0;



unsigned char digit1;
unsigned char digit2;
unsigned char digit3;
unsigned char digit4;

unsigned char digit1_1;
unsigned char digit1_2;
unsigned char digit1_3;
unsigned char digit1_4;
unsigned char digit1_5;

unsigned char digit2_1;
unsigned char digit2_2;
unsigned char digit2_3;
unsigned char digit2_4;
unsigned char digit2_5;
unsigned char digit2_6;

unsigned char digit3_1;
unsigned char digit3_2;
unsigned char digit3_3;
unsigned char digit3_4;


unsigned int rndNum = 100;

unsigned char w = 1;

unsigned int value;

unsigned int cnt = 0;


unsigned long runtime = 0;
//unsigned char runtime1 = 0;
unsigned long currentTime;
//unsigned char runtime1 = 0;

unsigned int i;

unsigned char enginebit = 0;
unsigned char stormBit = 0;
__bit bit1 = 0;
__bit bit2 = 1;
__bit bit3 = 1;
//unsigned char startbit;

float velocity = 0.0;
float in_thrust = 100000.0;
float thrust = 0.0;
float ship_thrust = 100000.0;
__code float ship_mass = 13000.0;
float height = 1000.0;
float gravity = 3.72;
float fuel = 8.2;
float delta_v = 0.0;
float delta_d = 0.0;
float delta_t = 1.0/20.0;
float a;
float delta_h;


unsigned int thrust_time = 0;


void Delay1ms()		//@11.0592MHz
{
	unsigned char i, j;
	i = 11;
	j = 190;
	do
	{
		while (--j);
	} while (--i);
}


void DelaySmalltest()		//@11.0592MHz
{
	unsigned char i, j;
	i = 2;
	j = 4;
	do
	{
		while (--j);
	} while (--i);
}


void delay(unsigned int time)
{
	unsigned int aa;
	for(aa=0;aa<time+1;aa++)
	{
		Delay1ms();
	}
}

void display(unsigned int num)
{
	P0 = nums[num];
}


void write_com(unsigned char com)
{
	lcdrs=0;
	rw=0;
	delay(5);
	P2=com;
	delay(5);
	lcden=1;
	delay(5);
	lcden=0;
}
 
void write_data(unsigned char data)
{
	lcdrs=1;
 	rw=0;
 	delay(5);
	P2=data;
	delay(5);
	lcden=1;
	delay(5);
	lcden=0;
}


void start()
{
	
	write_com(0x01);
	for (i=0;i<529;i++)
	{
		delay(50);
		if (i%32 == 0)
		{
			//delay(1000);
			write_com(0x01);
		}
		//else
		//{
		else if (i%16 == 0)
		{
			write_com(0x80+0x40);
		}
		//}
		if (start1[i]=='>')
		{
			write_com(0x01);
			CR=1;
		}
		write_data(start1[i]);
		
		if (i > 111)
		{
			//startbit = 0;
		}
		if (start1[i]==']')
		{
			delay(1000);
		}
	}
	delay(2000);
	write_com(0x01);
	//startbit = 1;
	i=0;
}


void Timer0Init(void)		//20ms@11.0592MHz
{
	AUXR = 0x00;		//Timer clock is 12T mode
	//TMOD = 0x01;		//Set timer work mode
	TL0 = 0x00;		//Initial timer value
	TH0 = 0x00;
	TF0 = 0;		//Clear TF0 flag
			//Timer0 start run
	ET0 = 1;
	EA = 1;
}

void Timer1Init(void)		//50ms@11.0592MHz
{
	//AUXR &= 0xBF;		//Timer clock is 12T mode
	TMOD = 0b00010001;		//Set timer work mode
	TL1 = 0x00;		//Initial timer value
	TH1 = 0x4C;		//Initial timer value
	TF1 = 0;		//Clear TF1 flag
	//TR1 = 1;		//Timer1 start run
	ET1 = 1;
	PT1= 1;
	IPH = 0x08;
}


void PcaInit(void)
{
	CCON = 0;                       //Initial PCA control register
    //CCAPM0 = 0b1001101;                                //PCA timer stop running
                                    //Clear CF flag
                                    //Clear all module interrupt flag
    CL = 0x00;                        //Reset PCA base timer
    CH = 0x00;
    CMOD = 0x00;                    //Set PCA timer clock source as Fosc/12
                                    //Disable PCA timer overflow interrupt
    value = T100Hz;
    CCAP0L = value;
    CCAP0H = value >> 8;            //Initial PCA module-0
    value += T100Hz;
    CCAPM0 = 0x49;                  //PCA module-0 work in 16-bit timer mode and enable PCA interrupt

    //CR = 1;                         //PCA timer start run
    EA = 1;
    //cnt = 0;
}


void InitADC( )
{
  P1ASF = 0b00000001; 
  ADC_RES = 0; //Clear previous result
  ADC_CONTR = ADC_POWER | ADC_SPEEDLL | ADC_START | 0;
  EADC = 1;
  delay(2); //ADC power-on delay and Start A/D conversion
}


void printLCD(char *ptr_stringPointer_u8)
{
	unsigned int charNum = 0;
	write_com(0x01);
    while((*ptr_stringPointer_u8)!=0)
  	{
    	charNum++;
    	if (charNum % 32 == 0)
    	{
    		write_com(0x01);
    	}
    	else if (charNum % 16 == 0)
    	{
    		write_com(0xc0);
    	}
        write_data(*ptr_stringPointer_u8++); // Loop through the string and display char by char
        delay(20);
    }
}

void init()
{
	lcden=0; //使能端为低电平
	write_com(0x38);
	/*显示模式设置  00111000  设置16*2显示  5*7点阵  8位数据接口*/
	write_com(0x0F);
	/*显示开关及光标设置   00001DCB
	D=1，开显示     D=0， 关显示
	C=1，显示光标   C=0，不显示光标
	B=1，光标闪烁   B=0，光标不闪烁*/
	write_com(0x06);//地址指针自动+1且光标+1，写字符屏幕不会移动
	write_com(0X01);
	write_com(0X80); 
}

void main()
{
	
	P4SW = 0x70;
	P4_6 = 1;
	P0 = 0x00;
	init(); 
	
	printLCD("hello");
	write_com(0xc0);
	printLCD("byebye");
	write_com(0x01);
	
	P0M0 = 0xFF;
	P0M1 = 0x00;
	P2M0 = 0xFF;
	P2M1 = 0x00;
	P3M0 = 0b11100000;
	P3M1 = 0x00;
	P4M0 = 0b01000000;
	P4M1 = 0b00100000;
	P4_4 = 0;
	P4_6=0;
	
	//w=0;
	P0 = 0xff;
	while(P4_5==0)
	{
		trigger = 1;
		trigger = 0;
		//delay(50);
	}
	for (i=0;i<18;i++)
	{
		trigger = 1;
		delay(50);
		trigger = 0;
		delay(50);
	}
	delay(500);
	P0 = 0x00;
	while(P4_5==0)
	{
		trigger = 1;
		trigger = 0;
		//delay(50);
	}
	//while(1);
	
	Timer0Init();
	Timer1Init();
	
	
	
	PcaInit();
	
	
	
	P0M0 = 0xFF;
	P0M1 = 0x00;
	P4M0 = 0b01000000;
	P4M1 = 0x00;
	P4_4 = 0;
	//CR = 1;
	//printLCD(win);
	start();
	
	
	
	TR0 = 1;
	TR1 = 1;
	
	InitADC();
	srand((ADC_RES+10)*10);
	rndNum = 10;
	while (1)
	{
		//number++;
		//number1++;
		//srand(1);
		if ((runtime % 2 == 0)&&(runtime > 20000))
			rndNum = rand();
		
		runtime++;
		if (runtime % 5000 == 0)
			srand((ADC_RES+10)*10);
		//if(runtime > )
		//{
		//	runtime1++;
		//	runtime = 0;
		//}
		
		if ((runtime == (currentTime + 10000)) && (bit3 == 0))
		{
			stormBit = 0;
			TR1 = 0;
			TR0 = 0;
			EADC = 0;
			P0 = 0x00;
			CR = 1;
			printLCD(turb3);
			//stormBit = 0;
			TR0 = 1;
			TR1 = 1;
			EADC = 1;
			bit3 = 1;
		}
		
		
		if ((rndNum*20) < 10)
		{
			if (bit1 == 0)
			{
				TR1 = 0;
				TR0 = 0;
				EADC = 0;
				P0 = 0x00;
				CR = 1;
				write_data(rndNum+0x30);
				delay(1000);
				write_com(0x01);
				printLCD(turb1);
				//stormBit = 0;
				TR0 = 1;
				TR1 = 1;
				EADC = 1; 
				bit1 = 1;
				bit2 = 0;
				currentTime = runtime;
			}
		}
		if ((runtime == (currentTime + 10000)) && (bit2 == 0))
		{
			
			TR1 = 0;
			TR0 = 0;
			EADC = 0;
			P0 = 0x00;
			CR = 1;
			printLCD(turb2);
			//stormBit = 0;
			TR0 = 1;
			TR1 = 1;
			EADC = 1;
			stormBit = 1;
			//bit1 = 1;
			bit2 = 1;
			bit3 = 0;
			currentTime = runtime;
		}
		if (thrust > 50000.0)
		{
			thrust_time++;
			if (thrust_time > 4000)
			{
				CR = 1;
				enginebit = 1;
				thrust_time = 0;
			}
		}
		else
		{
			thrust_time = 0;
		}
		
		if (velocity > 50.0 || velocity <-50.0)
		{
			velTime++;
			
			if (velocityBit == 1)
			{
				velocityBit = 0;
				TR1 = 0;
				TR0 = 0;
				EADC = 0;
				P0 = 0x00;
				CR = 1;
				printLCD(vel1);
				TR0 = 1;
				TR1 = 1;
				EADC = 1;
				velocityBit = 0;
			}
			if (velTime > 5000)
			{	
				
				if (leakBit == 0)
				{
					TR1 = 0;
					TR0 = 0;
					EADC = 0;
					P0 = 0x00;
					CR = 1;
					velTime = 0;
					printLCD(leak1);
					leakBit = 1;
					TR0 = 1;
					TR1 = 1;
					EADC = 1;
				}
			}
		}
		if (velocity < 48.0 && velocity > -48.0)
		{
			velocityBit = 1;
		}
		if (height < 1.0)
		{
			TR1 = 0;
			TR0 = 0;
			P0 = 0x00;
			if (velocity > -10.0)
			{
				TR1 = 0;
				TR0 = 0;
				EADC = 0;
				P0 = 0x00;
				CR = 1;
				printLCD(win);
				while(1);
			}
			else
			{
				TR1 = 0;
				TR0 = 0;
				EADC = 0;
				P0 = 0x00;
				CR = 1;
				printLCD(lose);
				while(1);
			}
		}
		
///////////////////////////////////////////////
		
		if (enginebit == 1)
		{
			TR1 = 0;
			TR0 = 0;
			EADC = 0;
			P0 = 0x00;
			CR = 1;
			printLCD(engine1);
			in_thrust = in_thrust*0.9;
			enginebit = 0;
			TR0 = 1;
			TR1 = 1;
			EADC = 1;
		}
		
		if (leakBit == 1)
		{
			fuel = fuel - 0.00002;
		}
		if (B0 == 0)
		{
			
			ship_thrust = in_thrust;
		}
		else
		{
			ship_thrust = in_thrust/2.0;
		}
//////////////////////////////////	
		
		//delay(5);
	}


}

void timer0Interrupt(void) __interrupt 1// __using 1
{
	
	TL0 = 0x80;		//Initial timer value
	TH0 = 0xFC;
	//Delay1mstest();
		//P0 = 0;
	//w = 0;
	//while(P4_5==0)
	//{
		//P4_4 = 0;
		//delay(5);
		//P4_4 = 1;
		//delay(5);
	
	//while(P3_2==1);
	//	while(P3_2==0);
		//while(P3_2==0);
	//	delay(5);
	//	while(P3_2==0);
	//write_com(0x01);
	
	if (w==0)
	{
		//write_data('0');
		while(P4_5==0)
		{
			P0 = 0x00;
			trigger = 0;
			trigger = 1;
			DelaySmalltest();
			trigger = 0;
			DelaySmalltest();
		}
		for (i=0;i<16;i++)
		{
			P0 = 0x00;
			trigger = 0;
			trigger = 1;
			DelaySmalltest();
			trigger = 0;
			DelaySmalltest();
		}
		display(digit1);
	}
	if (w==1)
	{
		//write_data('1');
		while(P4_5==0)
		{
			//P0 = 0xFF;
			trigger = 0;
			trigger = 1;
			//delay(200);
			trigger = 0;
			//delay(200);
		}
		
		//trigger = 0;
		//trigger = 1;
		//trigger = 0;
		display(digit2);
	}
	if (w==2)
	{
		//write_data('2');
		display(digit3);
	}
	if (w==3)
	{
		//write_data('3');
		display(digit4);
	}
//////////////////////////////////	
	if (w==4)
	{
		//write_data('4');
		display(digit1_1);
	}
	if (w==5)
	{
		//write_data('5');
		display(digit1_3);
		
	}
	if (w==6)
	{
		//write_data('6');
		display(digit1_4);
		P0_7 = 1;
	}
	if (w==7)
	{
		//write_data('7');
		display(digit1_5);
	}
//////////////////////////////////
	if (w==8)
	{
		//write_data('8');
		display(digit2_1);
	}
	if (w==9)
	{
		//write_data('9');
		display(digit2_4);
		P0_7 = 1;
	}
	if (w==10)
	{
		//write_data('1');
		//write_data('0');
		display(digit2_5);
	}
	if (w==11)
	{
		//write_data('1');
		///write_data('1');
		display(digit2_6);
	}
////////////////////////////////////
	
	if (w==12)
	{
		//write_data('1');
		//write_data('2');
		display(digit2_1);
	}
	if (w==13)
	{
		//write_data('1');
		//write_data('3');
		display(digit3_2);
	}
	if (w==14)
	{
		//write_data('1');
		//write_data('4');
		display(digit3_3);
	}
	if (w==15)
	{
		//write_data('1');
		//write_data('5');
		display(digit3_4);
		//display(8);
	}
	if (w == 16)
	{
		///write_data('1');
		//write_data('6');
		P0 = 0xFF;
	}
	if (w<17)
	{
		w++;
	}
	if (w>16)
	{
		w=0;
	}
	
	trigger = 0;
	trigger = 1;
	DelaySmalltest();
	trigger = 0;
}

void adc_isr( ) __interrupt 5 __using 1
{
  ADC_CONTR &= !ADC_FLAG; //Clear ADC interrupt flag
  //SendData(ch); //Show Channel NO.
  //SendData(); //Get ADC high 8-bit result and Send to UART
  if (fuel < 0.1)
	thrust = 0;
  else 
  {
  
	thrust = (ADC_RES - 0) * (ship_thrust - 0) / (255 - 0);
	
	//thrust = in_thrust;
  }
  
  //ch = 0; //switch to next channel
  ADC_CONTR = ADC_POWER | ADC_SPEEDLL | ADC_START | 0;
  
  
  
}

void timer1interrupt(void) __interrupt 3
{
	unsigned int b, int_input;
	int number1 = 0;
	int number2 = 0;	
	
	TL1 = 0x00;		//Initial timer value
	TH1 = 0x4C;		
	
	if (stormBit == 1)
	{
		EADC = 0;
		//velocity = -5.0;
		thrust = 0;
		//a = 5.67;
		a = ((float)rndNum) / 100.0;
	}
	else
		a = (1.2*thrust / (ship_mass + fuel) - gravity);
	delta_v = delta_t * a;
	velocity = velocity + delta_v;
	delta_h = velocity * delta_t;
	height = height + delta_h;
	if (fuel < 0.1)
		fuel = 0.0;
	else
		fuel = fuel-(thrust/20000000);
	
	
		if (velocity < 0)
		{
			digit1_1 = 11;
			number1 = velocity*-10;
		}
		else 
		{
			digit1_1 = 10;
			number1 = velocity*10;
		}
		if (a < 0)
		{
			digit2_1 = 11;
			number2 = a*-100;
		}
		else 
		{
			digit2_1 = 10;
			number2 = a*100;
		}
		//number = height;
		
		int_input = (int) height;
	
		digit4 = int_input % 10;
		b = int_input / 10;
		
		digit3 = b % 10;
		b = b / 10;
		
		digit2 = b % 10;
		b = b / 10;
		
		digit1 = (int)b;
		
		//number1 = number1;
		int_input = (int) (number1);
	
		digit1_5= int_input % 10;
		b = int_input / 10;
		
		digit1_4 = b % 10;
		b = b / 10;
		
		digit1_3 = b % 10;
		b = b / 10;
		
		digit1_2 = b % 10;
		b = b / 10;
		
		//digit1_1 = b % 10;
		
		
		int_input = (int) number2;
	
		digit2_6= int_input % 10;
		b = int_input / 10;
		
		digit2_5 = b % 10;
		b = b / 10;
		
		digit2_4 = b % 10;
		b = b / 10;
		
		digit2_3 = b % 10;
		b = b / 10;
		
		digit2_2 = b % 10;
		b = b / 10;
		
		//digit2_1 = b % 10;
		
		
		//number3 = ;
		int_input = (int) ((fuel/8.2)*100);
		
		digit3_4 = int_input % 10;
		b = int_input / 10;
		
		digit3_3 = b % 10;
		b = b / 10;
		
		digit3_2 = b % 10;
		b = b / 10;
		
		digit3_1 = b % 10;
}


void PCA_isr() __interrupt 7
{
	
    CCF0 = 0;                       //Clear interrupt flag
    CCAP0L = value;
    CCAP0H = value >> 8;            //Update compare value
    value += T100Hz;
    cnt++;
    
	if (cnt<300)
	{
        P4_6 = !P4_6;         //Flash once per second
	}
	else if (cnt<600)
	{
        P4_6 = P4_6;        
	}
	else if (cnt<900)
	{
        P4_6 = !P4_6;         //Flash once per second
	}
	else if (cnt<1200)
	{
        P4_6 = P4_6;         
	}
	else if (cnt<1500)
	{
        P4_6 = !P4_6;         //Flash once per second
	}
	else if (cnt<1800)
	{
        P4_6 = P4_6;         
	}
	else 
	{
		cnt = 0;
		CR = 0;
	}
}
