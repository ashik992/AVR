#define ONS Delay_ms(1000)

int none = 0xFF;
int num[10]= {0x40, 0x79};

void main() {
     int i = 0;
     DDRA = 0xFF;
     
     for(i=0; i<2; i++){
              PORTA = num[i];
              ONS;
              PORTA = none;
              ONS;
     }

}