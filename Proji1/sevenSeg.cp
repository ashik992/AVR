#line 1 "Z:/home/ahmed/stuff/AVR/Proji1/sevenSeg.c"


int num[12]= {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10, 0x3F};

void show(int dig){
 PORTA = num[dig];
  Delay_ms(1000) ;

 PORTA = 0xFF;
 Delay_ms(500);
}

void main() {
 int i = 0;
 DDRA = 0xFF;

 DDRA = 0xFF;

}
