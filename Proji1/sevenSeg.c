#define ONS Delay_ms(1000)

int num[12]= {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10, 0x3F};

void show(int dig){
     PORTA = num[dig];
     ONS;
     
     PORTA = 0xFF;
     Delay_ms(500);
}

void main() {
     int i = 0;
     DDRA = 0xFF;
     while(1){
              show(1);
              show(2);
              show(10);
              show(2);
              show(0);
              show(9);
              show(7);
              show(8);
              show(10);
              show(1);
              
              ONS;
              ONS;
     }

}