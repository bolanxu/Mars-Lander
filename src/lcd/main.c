#include "at89x52.h"

#define lcden P1_0
#define lcdrs P1_2
#define rw P1_1
#define speaker P0_0
#define thrustkey P3_2

unsigned char num=0;

__code unsigned char win[] = "You Win!";
__code unsigned char lose[] = "You Crashed!";
__code unsigned char gameover[] = "Game Over.";

__code unsigned char start1[] = "Mission:";
__code unsigned char start2[] = "Land Artemis saf";
__code unsigned char start3[] = "ely on the surfa";
__code unsigned char start4[] = "ce of mars. Land";
__code unsigned char start5[] = " with a velocity";
__code unsigned char start6[] = "higher than -10.";
__code unsigned char start7[] = " Information:";
__code unsigned char start8[] = "Gravity: 3.7";
__code unsigned char start9[] = " We wish you luck ";
__code unsigned char start10[] = "Our mission depe";
__code unsigned char start11[] = "nds on you.";

__code unsigned char enginep1[] = " Sir! Rocket boos";
__code unsigned char enginep2[] = "ters are overheat";
__code unsigned char enginep3[] = "ing!    Engine p";
__code unsigned char enginep4[] = "power decreases ";
__code unsigned char enginep5[] = "by 25%.";

__code unsigned char turb1[] = " Sir! We are expe";
__code unsigned char turb2[] = "riencing a sands";
__code unsigned char turb3[] = "torm! Buckle up!";

__code unsigned char leak1[] = " Sir! We have a f";
__code unsigned char leak2[] = "uel leak. Fuel d";
__code unsigned char leak3[] = "decreases by 20%";

__code unsigned char em1[] = "Sir! throttle ma";
__code unsigned char em2[] = "lafunction! No t";
__code unsigned char em3[] = "hrottle control.";

__code unsigned char emb1[] = "Throttle control";
__code unsigned char emb2[] = "is back.";

float velocity = 0.0;
float thrust = 0.0;
float ship_thrust = 600.0;
float ship_mass = 500.0;
float height = 1000.0;
float gravity = 3.7;
float fuel = 100.0;
float delta_v = 0.0;
float delta_d = 0.0;
float delta_t = 1.0/12.0;
float a;
float delta_h;

char digit1 = 0;
char digit2 = 0;
char digit3 = 0;
char digit4 = 0;

int x;
unsigned int n = 0;
unsigned int s = 0;
__bit l = 1;

void digit (float input);
void sign();
void displaynum();

void Timer0Init()		//5ms@11.0592MHz
{
	TMOD = 0x11;		//Set timer work mode
	TL0 = 0x00;		//Initial timer value
	TH0 = 0x28;		//Initial timer value
	TL1 = 0x50;
	TH1 = 0xF0;
	TF0 = 0;		//Clear TF0 flag
	EA  = 1;
	ET0 = 1;
	ET1 = 1;
	IT0 = 1;
	EX0 = 1;
	TR0 = 1;		//Timer0 start run
}


void delay(unsigned int z)
{
	unsigned int x,y;
	for(x=z;x>0;x--)
	for(y=50;y>0;y--);
}
 
void write_com(unsigned char com)
{
	lcdrs=0;
	rw=0;
	P2=com;
	delay(5);
	lcden=1;
	delay(5);
	lcden=0;
}
 
void write_data(unsigned char date)
{
	lcdrs=1;
 	rw=0;
	P2=date;
	delay(5);
	lcden=1;
	delay(5);
	lcden=0;
}

void init()
{
	lcden=0;
	write_com(0x38);
	write_com(0x0f);
	write_com(0x06);
	write_com(0X01);
	write_com(0X80); 
}

void start()
{
	char i;
	for (i=0;i<9;i++)
	{
		write_data(start1[i]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (i=0;i<17;i++)
	{
		write_data(start2[i]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (i=0;i<17;i++)
	{
		write_data(start3[i]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (i=0;i<17;i++)
	{
		write_data(start4[i]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (i=0;i<17;i++)
	{
		write_data(start5[i]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (i=0;i<17;i++)
	{
		write_data(start6[i]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (i=0;i<13;i++)
	{
		write_data(start7[i]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (i=0;i<13;i++)
	{
		write_data(start8[i]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (i=0;i<17;i++)
	{
		write_data(start9[i]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (i=0;i<17;i++)
	{
		write_data(start10[i]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (i=0;i<12;i++)
	{
		write_data(start11[i]);
		delay(100);
	}
	delay(800);
	write_com(0x01);
}

void fuelleak()
{
	unsigned char q;
	write_com(0x01);
	for (q=0;q<17;q++)
	{
		write_data(leak1[q]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (q=0;q<16;q++)
	{
		write_data(leak2[q]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (q=0;q<16;q++)
	{
		write_data(leak3[q]);
		delay(100);
	}
	delay(8);
	fuel = fuel - 20.0;
	write_com(0x01);
}

void turb()
{
	unsigned char t;
	write_com(0x01);
	for (t=0;t<17;t++)
	{
		write_data(turb1[t]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (t=0;t<16;t++)
	{
		write_data(turb2[t]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (t=0;t<16;t++)
	{
		write_data(turb3[t]);
		delay(100);
	}
	delay(800);
	gravity = gravity + 0.5;
	write_com(0x01);
}

void enginepower()
{
	unsigned char w;
	write_com(0x01);
	for (w=0;w<17;w++)
	{
		write_data(enginep1[w]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (w=0;w<16;w++)
	{
		write_data(enginep2[w]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (w=0;w<16;w++)
	{
		write_data(enginep3[w]);
		delay(100);
	}
	delay(500);
	write_com(0X80+0x40);
	for (w=0;w<16;w++)
	{
		write_data(enginep4[w]);
		delay(100);
	}
	delay(500);
	write_com(0x01);
	for (w=0;w<7;w++)
	{
		write_data(enginep5[w]);
		delay(100);
	}
	delay(800);
	ship_thrust = ship_thrust * 0.75;
	write_com(0x01);
}

void main()
{
	init();
	start();
	Timer0Init();
	while(1)
	{
		digit(height);
		write_data('h');
		write_data(':');
		sign();
		displaynum();
	
		digit(velocity);
		write_data(' ');
		write_data(' ');
		write_data('v');
		write_data(':');
		sign();
		displaynum();
		write_com(0X80+0x40);

		digit(a);
		write_data('a');
		write_data(':');
		sign();
		displaynum();

		digit(fuel);
		write_data(' ');
		write_data(' ');
		write_data('f');
		write_data(':');
		displaynum();
		write_data('%');
		
		write_com(0x02);
		
		delay(50);
		if (velocity > 20.0)
		{
			TR0 = 0;
			enginepower();
			velocity = 10.0;
			TR0 = 1;
		}
		if (velocity < - 20.0)
		{
			TR0 = 0;
			enginepower();
			velocity = 10.0;
			TR0 = 1;
		}
		if (thrustkey == 0)
		{
			n++;
			if (n % 200 == 0)
			{
				TR0 = 0;
				fuelleak();
				TR0 = 1;
			}
			if (n % 350 == 0)
			{
				TR0 = 0;
				turb();
				TR0 = 1;
			}
			if (n == 60000)
			{
				n = 0;
				s++;
			}
			if (s == 60000)
			{
				s = 0;
			}
			thrust = ship_thrust;
			fuel = fuel - 0.5;
		}
		else
		{
			thrust = 0;
		}
		if (fuel < 0.1)
		{
			thrust = 0;
			fuel = 0.0;
		}
		
		if (height < 0.1)
		{
			write_com(0x01);
			write_com(0x02);
			if (velocity > -10.0)
			{
				for(num=0;num<8;num++)
				{
					write_data(win[num]);
					delay(200);
				}
				delay(300);
				write_com(0X80+0x40);
				for(num=0;num<10;num++)
				{
					write_data(gameover[num]);
					delay(200);
				}
			}
			else
			{
				for(num=0;num<12;num++)
				{
					write_data(lose[num]);
					delay(200);
				}
				delay(300);
				write_com(0X80+0x40);
				for(num=0;num<10;num++)
				{
					write_data(gameover[num]);
					delay(200);
				}
			}
			while(1);
		}
	}
	
}

void digit (float input)
{
	int b, int_input;
	int_input = (int) input;
	digit4 = int_input % 10;
	b = int_input / 10;
	digit3 = b % 10;
	b = b / 10;
	digit2 = b % 10;
	b = b / 10;
	digit1 = b % 10;
}

void sign()
{
	if (digit4 < 0)
	{
		write_data('-');
		digit1 = digit1 + (-2*digit1);
		digit2 = digit2 + (-2*digit2);
		digit3 = digit3 + (-2*digit3);
		digit4 = digit4 + (-2*digit4);
	}
	else
	{
		write_data('+');
	}
}

void displaynum()
{
	write_data(digit1+48);
	write_data(digit2+48);
	write_data(digit3+48);
	write_data(digit4+48);
}

void timer0(void) __interrupt 1
{
	a = (8.0*thrust / (ship_mass + fuel) - gravity);
	delta_v = delta_t * (8.0*thrust / (ship_mass + fuel) - gravity);
	velocity = velocity + delta_v;
	delta_h = velocity * delta_t;
	height = height + delta_h;
}

void INT0_INT(void) __interrupt 0
{
	l = !l;
	if (l == 1)
	{
		thrust = ship_thrust;
		fuel = fuel - 0.2;
	}
	else 
	{
		thrust = 0;
	}
	
}

void timer1(void) __interrupt 3
{
	TL1 = 0x50;
	TH1 = 0xF0;
	speaker = !speaker;
}

