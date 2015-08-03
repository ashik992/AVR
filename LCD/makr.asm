
_send_command:

;makr.c,1 :: 		void send_command (unsigned char command)
;makr.c,3 :: 		PORTD = command;
	OUT        PORTD+0, R2
;makr.c,4 :: 		PORTC = 0b00000000;
	LDI        R27, 0
	OUT        PORTC+0, R27
;makr.c,5 :: 		PORTC = 0b01000000;
	LDI        R27, 64
	OUT        PORTC+0, R27
;makr.c,6 :: 		Delay_us(1);
	NOP
;makr.c,7 :: 		PORTC = 0b00000000;
	LDI        R27, 0
	OUT        PORTC+0, R27
;makr.c,8 :: 		Delay_us(100);
	LDI        R16, 33
L_send_command0:
	DEC        R16
	BRNE       L_send_command0
	NOP
;makr.c,9 :: 		}
L_end_send_command:
	RET
; end of _send_command

_send_data:

;makr.c,11 :: 		void send_data (unsigned char dat)
;makr.c,13 :: 		PORTD = dat;
	OUT        PORTD+0, R2
;makr.c,14 :: 		PORTC = 0b00000001;
	LDI        R27, 1
	OUT        PORTC+0, R27
;makr.c,15 :: 		PORTC = 0b01000001;
	LDI        R27, 65
	OUT        PORTC+0, R27
;makr.c,16 :: 		Delay_us(1);
	NOP
;makr.c,17 :: 		PORTC = 0b00000001;
	LDI        R27, 1
	OUT        PORTC+0, R27
;makr.c,18 :: 		Delay_us(100);
	LDI        R16, 33
L_send_data2:
	DEC        R16
	BRNE       L_send_data2
	NOP
;makr.c,19 :: 		}
L_end_send_data:
	RET
; end of _send_data

_send_string:

;makr.c,21 :: 		void send_string(char *str){
;makr.c,24 :: 		for(i=0;str[i]!='\0'; i++){
; i start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
; i end address is: 18 (R18)
L_send_string4:
; i start address is: 18 (R18)
	MOVW       R30, R18
	ADD        R30, R2
	ADC        R31, R3
	LD         R16, Z
	CPI        R16, 0
	BRNE       L__send_string64
	JMP        L_send_string5
L__send_string64:
;makr.c,25 :: 		send_data(str[i]);
	MOVW       R30, R18
	ADD        R30, R2
	ADC        R31, R3
	LD         R16, Z
	PUSH       R19
	PUSH       R18
	PUSH       R3
	PUSH       R2
	MOV        R2, R16
	CALL       _send_data+0
	POP        R2
	POP        R3
	POP        R18
	POP        R19
;makr.c,24 :: 		for(i=0;str[i]!='\0'; i++){
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R18, R16
;makr.c,26 :: 		}
; i end address is: 18 (R18)
	JMP        L_send_string4
L_send_string5:
;makr.c,27 :: 		}
L_end_send_string:
	RET
; end of _send_string

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;makr.c,29 :: 		void main()
;makr.c,33 :: 		DDRA = 0xFF;
	PUSH       R2
	PUSH       R3
	LDI        R27, 255
	OUT        DDRA+0, R27
;makr.c,34 :: 		DDRC = 0xFF;
	LDI        R27, 255
	OUT        DDRC+0, R27
;makr.c,35 :: 		DDRD = 0xFF;
	LDI        R27, 255
	OUT        DDRD+0, R27
;makr.c,37 :: 		Delay_us(2000);
	LDI        R17, 3
	LDI        R16, 152
L_main7:
	DEC        R16
	BRNE       L_main7
	DEC        R17
	BRNE       L_main7
	NOP
;makr.c,38 :: 		send_command(0x38);
	LDI        R27, 56
	MOV        R2, R27
	CALL       _send_command+0
;makr.c,39 :: 		send_command(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_command+0
;makr.c,40 :: 		Delay_us(2000) ;
	LDI        R17, 3
	LDI        R16, 152
L_main9:
	DEC        R16
	BRNE       L_main9
	DEC        R17
	BRNE       L_main9
	NOP
;makr.c,44 :: 		while(1)
L_main11:
;makr.c,47 :: 		PORTA = 0x06; //1
	LDI        R27, 6
	OUT        PORTA+0, R27
;makr.c,48 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main13:
	DEC        R16
	BRNE       L_main13
	DEC        R17
	BRNE       L_main13
	DEC        R18
	BRNE       L_main13
	NOP
	NOP
;makr.c,51 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,52 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main15:
	DEC        R16
	BRNE       L_main15
	DEC        R17
	BRNE       L_main15
	DEC        R18
	BRNE       L_main15
	NOP
	NOP
;makr.c,55 :: 		PORTA = 0x5B; //2
	LDI        R27, 91
	OUT        PORTA+0, R27
;makr.c,56 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main17:
	DEC        R16
	BRNE       L_main17
	DEC        R17
	BRNE       L_main17
	DEC        R18
	BRNE       L_main17
	NOP
	NOP
;makr.c,59 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,60 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main19:
	DEC        R16
	BRNE       L_main19
	DEC        R17
	BRNE       L_main19
	DEC        R18
	BRNE       L_main19
	NOP
	NOP
;makr.c,63 :: 		PORTA = 0x40;
	LDI        R27, 64
	OUT        PORTA+0, R27
;makr.c,64 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main21:
	DEC        R16
	BRNE       L_main21
	DEC        R17
	BRNE       L_main21
	DEC        R18
	BRNE       L_main21
	NOP
	NOP
;makr.c,67 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,68 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main23:
	DEC        R16
	BRNE       L_main23
	DEC        R17
	BRNE       L_main23
	DEC        R18
	BRNE       L_main23
	NOP
	NOP
;makr.c,71 :: 		PORTA = 0x5B;
	LDI        R27, 91
	OUT        PORTA+0, R27
;makr.c,72 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main25:
	DEC        R16
	BRNE       L_main25
	DEC        R17
	BRNE       L_main25
	DEC        R18
	BRNE       L_main25
	NOP
	NOP
;makr.c,75 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,76 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main27:
	DEC        R16
	BRNE       L_main27
	DEC        R17
	BRNE       L_main27
	DEC        R18
	BRNE       L_main27
	NOP
	NOP
;makr.c,79 :: 		PORTA = 0x06;
	LDI        R27, 6
	OUT        PORTA+0, R27
;makr.c,80 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main29:
	DEC        R16
	BRNE       L_main29
	DEC        R17
	BRNE       L_main29
	DEC        R18
	BRNE       L_main29
	NOP
	NOP
;makr.c,83 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,84 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main31:
	DEC        R16
	BRNE       L_main31
	DEC        R17
	BRNE       L_main31
	DEC        R18
	BRNE       L_main31
	NOP
	NOP
;makr.c,87 :: 		PORTA = 0x3F;
	LDI        R27, 63
	OUT        PORTA+0, R27
;makr.c,88 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main33:
	DEC        R16
	BRNE       L_main33
	DEC        R17
	BRNE       L_main33
	DEC        R18
	BRNE       L_main33
	NOP
	NOP
;makr.c,91 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,92 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main35:
	DEC        R16
	BRNE       L_main35
	DEC        R17
	BRNE       L_main35
	DEC        R18
	BRNE       L_main35
	NOP
	NOP
;makr.c,95 :: 		PORTA = 0x07;
	LDI        R27, 7
	OUT        PORTA+0, R27
;makr.c,96 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main37:
	DEC        R16
	BRNE       L_main37
	DEC        R17
	BRNE       L_main37
	DEC        R18
	BRNE       L_main37
	NOP
	NOP
;makr.c,99 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,100 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main39:
	DEC        R16
	BRNE       L_main39
	DEC        R17
	BRNE       L_main39
	DEC        R18
	BRNE       L_main39
	NOP
	NOP
;makr.c,103 :: 		PORTA = 0x5B; //2
	LDI        R27, 91
	OUT        PORTA+0, R27
;makr.c,104 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main41:
	DEC        R16
	BRNE       L_main41
	DEC        R17
	BRNE       L_main41
	DEC        R18
	BRNE       L_main41
	NOP
	NOP
;makr.c,107 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,108 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main43:
	DEC        R16
	BRNE       L_main43
	DEC        R17
	BRNE       L_main43
	DEC        R18
	BRNE       L_main43
	NOP
	NOP
;makr.c,111 :: 		PORTA = 0x40;
	LDI        R27, 64
	OUT        PORTA+0, R27
;makr.c,112 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main45:
	DEC        R16
	BRNE       L_main45
	DEC        R17
	BRNE       L_main45
	DEC        R18
	BRNE       L_main45
	NOP
	NOP
;makr.c,115 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,116 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main47:
	DEC        R16
	BRNE       L_main47
	DEC        R17
	BRNE       L_main47
	DEC        R18
	BRNE       L_main47
	NOP
	NOP
;makr.c,119 :: 		PORTA = 0x06; //1
	LDI        R27, 6
	OUT        PORTA+0, R27
;makr.c,120 :: 		Delay_ms(1000);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main49:
	DEC        R16
	BRNE       L_main49
	DEC        R17
	BRNE       L_main49
	DEC        R18
	BRNE       L_main49
	NOP
	NOP
;makr.c,123 :: 		PORTA = 0x00;
	LDI        R27, 0
	OUT        PORTA+0, R27
;makr.c,124 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main51:
	DEC        R16
	BRNE       L_main51
	DEC        R17
	BRNE       L_main51
	DEC        R18
	BRNE       L_main51
	NOP
	NOP
;makr.c,126 :: 		send_string("Tasneem Ahmed Turash");
	LDI        R27, #lo_addr(?lstr1_makr+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr1_makr+0)
	MOV        R3, R27
	CALL       _send_string+0
;makr.c,127 :: 		send_command(0xC0);
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_command+0
;makr.c,128 :: 		send_string("  12-21072-1");
	LDI        R27, #lo_addr(?lstr2_makr+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr2_makr+0)
	MOV        R3, R27
	CALL       _send_string+0
;makr.c,129 :: 		Delay_ms(2000);
	LDI        R18, 11
	LDI        R17, 38
	LDI        R16, 94
L_main53:
	DEC        R16
	BRNE       L_main53
	DEC        R17
	BRNE       L_main53
	DEC        R18
	BRNE       L_main53
	NOP
	NOP
;makr.c,132 :: 		send_command(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_command+0
;makr.c,133 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main55:
	DEC        R16
	BRNE       L_main55
	DEC        R17
	BRNE       L_main55
	DEC        R18
	BRNE       L_main55
	NOP
	NOP
;makr.c,135 :: 		send_string("    EEE");
	LDI        R27, #lo_addr(?lstr3_makr+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr3_makr+0)
	MOV        R3, R27
	CALL       _send_string+0
;makr.c,136 :: 		send_command(0xC0);
	LDI        R27, 192
	MOV        R2, R27
	CALL       _send_command+0
;makr.c,137 :: 		send_string("    119");
	LDI        R27, #lo_addr(?lstr4_makr+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr4_makr+0)
	MOV        R3, R27
	CALL       _send_string+0
;makr.c,138 :: 		Delay_ms(2000);
	LDI        R18, 11
	LDI        R17, 38
	LDI        R16, 94
L_main57:
	DEC        R16
	BRNE       L_main57
	DEC        R17
	BRNE       L_main57
	DEC        R18
	BRNE       L_main57
	NOP
	NOP
;makr.c,140 :: 		send_command(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _send_command+0
;makr.c,141 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main59:
	DEC        R16
	BRNE       L_main59
	DEC        R17
	BRNE       L_main59
	DEC        R18
	BRNE       L_main59
	NOP
	NOP
;makr.c,142 :: 		}
	JMP        L_main11
;makr.c,143 :: 		}
L_end_main:
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
