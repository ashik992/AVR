#line 1 "Z:/home/ahmed/stuff/AVR/LCD/LCD.c"



int num[12]= {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10, 0x3F, 0xFF};
void sendCommand(unsigned char command);
void sendData(unsigned char dat);
void sendString(char *str);
void name();
void dept();
void ss(int num);

void main()
{
DDRA = 0xFF;
DDRC = 0xFF;
DDRD = 0xFF;

Delay_us(2000);
sendCommand(0x38) ;
sendCommand(0x0C);
sendCommand(0x01);
Delay_us(2000) ;

while(1)
{
ss(1);
name();
 Delay_ms(1000) ;

ss(11);
 Delay_ms(500) ;

ss(2);
 Delay_ms(500) ;

sendCommand(0x01);
 Delay_ms(500) ;

ss(11);
dept();
 Delay_ms(500) ;

ss(10);
 Delay_ms(1000) ;

ss(11);
 Delay_ms(500) ;

ss(2);
sendCommand(0x01);
 Delay_ms(500) ;

name();
 Delay_ms(500) ;

ss(11);
 Delay_ms(500) ;

ss(0);
 Delay_ms(1000) ;

sendCommand(0x01);
ss(11);
 Delay_ms(500) ;

ss(9);
dept();
 Delay_ms(1000) ;

ss(11);
 Delay_ms(500) ;

ss(7);
 Delay_ms(500) ;

sendCommand(0x01);
 Delay_ms(500) ;

ss(11);
name();
 Delay_ms(500) ;

ss(8);
 Delay_ms(1000) ;

ss(11);
 Delay_ms(500) ;

ss(10);
sendCommand(0x01);
 Delay_ms(500) ;

dept();
 Delay_ms(500) ;

ss(11);
 Delay_ms(500) ;

ss(1);
 Delay_ms(1000) ;

sendCommand(0x01);
ss(11);
 Delay_ms(500) ;

}
}

void sendCommand (unsigned char command)
{
PORTD = command;
PORTC = 0b00000000;
PORTC = 0b01000000;
Delay_us(1);
PORTC = 0b00000000;
Delay_us(100);
}

void sendData (unsigned char dat)
{
PORTD = dat;
PORTC = 0b00000001;
PORTC = 0b01000001;
Delay_us(1);
PORTC = 0b00000001;
Delay_us(100);
}

void sendString(char *str){
 int i;

 for(i=0;str[i]!='\0'; i++){
 sendData(str[i]);
 }
}

void ss(int nm){
 PORTA = num[nm];
}

void name(){
sendString("  Ashik Ahmed");
sendCommand(0xC0);
sendString("   12-20978-1");
}

void dept(){
sendString("      CSE");
sendCommand(0xC0);
sendString("      131");
}
