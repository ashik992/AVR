#line 1 "Z:/home/ahmed/stuff/AVR/Proji1/sevenSeg.c"


int none = 0xFF;
int num[11]= {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};

void main() {
 int i = 0;
 DDRA = 0xFF;
 while(1){
 for(i=0; i<10; i++){
 PORTA = num[i];
  Delay_ms(1000) ;
 PORTA = none;
  Delay_ms(1000) ;
 }
 }

}
