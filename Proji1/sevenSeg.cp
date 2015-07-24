#line 1 "Z:/home/ahmed/stuff/AVR/Proji1/sevenSeg.c"


int none = 0xFF;
int num[10]= {0x40, 0x79};

void main() {
 int i = 0;
 DDRA = 0xFF;

 for(i=0; i<2; i++){
 PORTA = num[i];
  Delay_ms(1000) ;
 PORTA = none;
  Delay_ms(1000) ;
 }

}
