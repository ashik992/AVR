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

void main()
{
    int i;

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

         PORTA = 0x06; //1
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x5B; //2
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x40;
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x5B;
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x06;
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x3F;
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x07;
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x5B; //2
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x40;
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);


         PORTA = 0x06; //1
         Delay_ms(1000);


         PORTA = 0x00;
         Delay_ms(500);
         
         sendString("Tasneem Ahmed Turash");
         sendCommand(0xC0);
         sendString("  12-21072-1");
         Delay_ms(2000);
         
         
         sendCommand(0x01);
         Delay_ms(500);
         
         sendString("    EEE");
         sendCommand(0xC0);
         sendString("    119");
         Delay_ms(2000);

         sendCommand(0x01);
         Delay_ms(500);
    }
}
