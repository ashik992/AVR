
_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;LCD.c,12 :: 		void main()
;LCD.c,14 :: 		DDRA = 0xFF;
	PUSH       R2
	PUSH       R3
	LDI        R27, 255
	OUT        DDRA+0, R27
;LCD.c,15 :: 		DDRC = 0xFF;
	LDI        R27, 255
	OUT        DDRC+0, R27
;LCD.c,16 :: 		DDRD = 0xFF;
	LDI        R27, 255
	OUT        DDRD+0, R27
;LCD.c,18 :: 		Delay_us(2000);
	LDI        R17, 3
	LDI        R16, 152
L_main0:
	DEC        R16
	BRNE       L_main0
	DEC        R17
	BRNE       L_main0
	NOP
;LCD.c,19 :: 		sendCommand(0x38) ;
	LDI        R27, 56
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,20 :: 		sendCommand(0x0C);
	LDI        R27, 12
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,21 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,22 :: 		Delay_us(2000) ;
	LDI        R17, 3
	LDI        R16, 152
L_main2:
	DEC        R16
	BRNE       L_main2
	DEC        R17
	BRNE       L_main2
	NOP
;LCD.c,24 :: 		while(1)
L_main4:
;LCD.c,26 :: 		ss(1);
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,27 :: 		name();
	CALL       _name+0
;LCD.c,28 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main6:
	DEC        R16
	BRNE       L_main6
	DEC        R17
	BRNE       L_main6
	DEC        R18
	BRNE       L_main6
	NOP
	NOP
;LCD.c,30 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,31 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main8:
	DEC        R16
	BRNE       L_main8
	DEC        R17
	BRNE       L_main8
	DEC        R18
	BRNE       L_main8
	NOP
	NOP
;LCD.c,33 :: 		ss(2);
	LDI        R27, 2
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,34 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main10:
	DEC        R16
	BRNE       L_main10
	DEC        R17
	BRNE       L_main10
	DEC        R18
	BRNE       L_main10
	NOP
	NOP
;LCD.c,36 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,37 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main12:
	DEC        R16
	BRNE       L_main12
	DEC        R17
	BRNE       L_main12
	DEC        R18
	BRNE       L_main12
	NOP
	NOP
;LCD.c,39 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,40 :: 		dept();
	CALL       _dept+0
;LCD.c,41 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main14:
	DEC        R16
	BRNE       L_main14
	DEC        R17
	BRNE       L_main14
	DEC        R18
	BRNE       L_main14
	NOP
	NOP
;LCD.c,43 :: 		ss(10);
	LDI        R27, 10
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,44 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main16:
	DEC        R16
	BRNE       L_main16
	DEC        R17
	BRNE       L_main16
	DEC        R18
	BRNE       L_main16
	NOP
	NOP
;LCD.c,46 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,47 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main18:
	DEC        R16
	BRNE       L_main18
	DEC        R17
	BRNE       L_main18
	DEC        R18
	BRNE       L_main18
	NOP
	NOP
;LCD.c,49 :: 		ss(2);
	LDI        R27, 2
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,50 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,51 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main20:
	DEC        R16
	BRNE       L_main20
	DEC        R17
	BRNE       L_main20
	DEC        R18
	BRNE       L_main20
	NOP
	NOP
;LCD.c,53 :: 		name();
	CALL       _name+0
;LCD.c,54 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main22:
	DEC        R16
	BRNE       L_main22
	DEC        R17
	BRNE       L_main22
	DEC        R18
	BRNE       L_main22
	NOP
	NOP
;LCD.c,56 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,57 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main24:
	DEC        R16
	BRNE       L_main24
	DEC        R17
	BRNE       L_main24
	DEC        R18
	BRNE       L_main24
	NOP
	NOP
;LCD.c,59 :: 		ss(0);
	CLR        R2
	CLR        R3
	CALL       _ss+0
;LCD.c,60 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main26:
	DEC        R16
	BRNE       L_main26
	DEC        R17
	BRNE       L_main26
	DEC        R18
	BRNE       L_main26
	NOP
	NOP
;LCD.c,62 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,63 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,64 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main28:
	DEC        R16
	BRNE       L_main28
	DEC        R17
	BRNE       L_main28
	DEC        R18
	BRNE       L_main28
	NOP
	NOP
;LCD.c,66 :: 		ss(9);
	LDI        R27, 9
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,67 :: 		dept();
	CALL       _dept+0
;LCD.c,68 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main30:
	DEC        R16
	BRNE       L_main30
	DEC        R17
	BRNE       L_main30
	DEC        R18
	BRNE       L_main30
	NOP
	NOP
;LCD.c,70 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,71 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main32:
	DEC        R16
	BRNE       L_main32
	DEC        R17
	BRNE       L_main32
	DEC        R18
	BRNE       L_main32
	NOP
	NOP
;LCD.c,73 :: 		ss(7);
	LDI        R27, 7
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,74 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main34:
	DEC        R16
	BRNE       L_main34
	DEC        R17
	BRNE       L_main34
	DEC        R18
	BRNE       L_main34
	NOP
	NOP
;LCD.c,76 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,77 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main36:
	DEC        R16
	BRNE       L_main36
	DEC        R17
	BRNE       L_main36
	DEC        R18
	BRNE       L_main36
	NOP
	NOP
;LCD.c,79 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,80 :: 		name();
	CALL       _name+0
;LCD.c,81 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main38:
	DEC        R16
	BRNE       L_main38
	DEC        R17
	BRNE       L_main38
	DEC        R18
	BRNE       L_main38
	NOP
	NOP
;LCD.c,83 :: 		ss(8);
	LDI        R27, 8
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,84 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main40:
	DEC        R16
	BRNE       L_main40
	DEC        R17
	BRNE       L_main40
	DEC        R18
	BRNE       L_main40
	NOP
	NOP
;LCD.c,86 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,87 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main42:
	DEC        R16
	BRNE       L_main42
	DEC        R17
	BRNE       L_main42
	DEC        R18
	BRNE       L_main42
	NOP
	NOP
;LCD.c,89 :: 		ss(10);
	LDI        R27, 10
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,90 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,91 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main44:
	DEC        R16
	BRNE       L_main44
	DEC        R17
	BRNE       L_main44
	DEC        R18
	BRNE       L_main44
	NOP
	NOP
;LCD.c,93 :: 		dept();
	CALL       _dept+0
;LCD.c,94 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main46:
	DEC        R16
	BRNE       L_main46
	DEC        R17
	BRNE       L_main46
	DEC        R18
	BRNE       L_main46
	NOP
	NOP
;LCD.c,96 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,97 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main48:
	DEC        R16
	BRNE       L_main48
	DEC        R17
	BRNE       L_main48
	DEC        R18
	BRNE       L_main48
	NOP
	NOP
;LCD.c,99 :: 		ss(1);
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,100 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main50:
	DEC        R16
	BRNE       L_main50
	DEC        R17
	BRNE       L_main50
	DEC        R18
	BRNE       L_main50
	NOP
	NOP
;LCD.c,102 :: 		sendCommand(0x01);
	LDI        R27, 1
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,103 :: 		ss(11);
	LDI        R27, 11
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _ss+0
;LCD.c,104 :: 		HFS;
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_main52:
	DEC        R16
	BRNE       L_main52
	DEC        R17
	BRNE       L_main52
	DEC        R18
	BRNE       L_main52
	NOP
	NOP
;LCD.c,106 :: 		}
	JMP        L_main4
;LCD.c,107 :: 		}
L_end_main:
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main

_sendCommand:

;LCD.c,109 :: 		void sendCommand (unsigned char command)
;LCD.c,111 :: 		PORTD = command;
	OUT        PORTD+0, R2
;LCD.c,112 :: 		PORTC = 0b00000000;
	LDI        R27, 0
	OUT        PORTC+0, R27
;LCD.c,113 :: 		PORTC = 0b01000000;
	LDI        R27, 64
	OUT        PORTC+0, R27
;LCD.c,114 :: 		Delay_us(1);
	NOP
;LCD.c,115 :: 		PORTC = 0b00000000;
	LDI        R27, 0
	OUT        PORTC+0, R27
;LCD.c,116 :: 		Delay_us(100);
	LDI        R16, 33
L_sendCommand54:
	DEC        R16
	BRNE       L_sendCommand54
	NOP
;LCD.c,117 :: 		}
L_end_sendCommand:
	RET
; end of _sendCommand

_sendData:

;LCD.c,119 :: 		void sendData (unsigned char dat)
;LCD.c,121 :: 		PORTD = dat;
	OUT        PORTD+0, R2
;LCD.c,122 :: 		PORTC = 0b00000001;
	LDI        R27, 1
	OUT        PORTC+0, R27
;LCD.c,123 :: 		PORTC = 0b01000001;
	LDI        R27, 65
	OUT        PORTC+0, R27
;LCD.c,124 :: 		Delay_us(1);
	NOP
;LCD.c,125 :: 		PORTC = 0b00000001;
	LDI        R27, 1
	OUT        PORTC+0, R27
;LCD.c,126 :: 		Delay_us(100);
	LDI        R16, 33
L_sendData56:
	DEC        R16
	BRNE       L_sendData56
	NOP
;LCD.c,127 :: 		}
L_end_sendData:
	RET
; end of _sendData

_sendString:

;LCD.c,129 :: 		void sendString(char *str){
;LCD.c,132 :: 		for(i=0;str[i]!='\0'; i++){
; i start address is: 18 (R18)
	LDI        R18, 0
	LDI        R19, 0
; i end address is: 18 (R18)
L_sendString58:
; i start address is: 18 (R18)
	MOVW       R30, R18
	ADD        R30, R2
	ADC        R31, R3
	LD         R16, Z
	CPI        R16, 0
	BRNE       L__sendString66
	JMP        L_sendString59
L__sendString66:
;LCD.c,133 :: 		sendData(str[i]);
	MOVW       R30, R18
	ADD        R30, R2
	ADC        R31, R3
	LD         R16, Z
	PUSH       R19
	PUSH       R18
	PUSH       R3
	PUSH       R2
	MOV        R2, R16
	CALL       _sendData+0
	POP        R2
	POP        R3
	POP        R18
	POP        R19
;LCD.c,132 :: 		for(i=0;str[i]!='\0'; i++){
	MOVW       R16, R18
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R18, R16
;LCD.c,134 :: 		}
; i end address is: 18 (R18)
	JMP        L_sendString58
L_sendString59:
;LCD.c,135 :: 		}
L_end_sendString:
	RET
; end of _sendString

_ss:

;LCD.c,137 :: 		void ss(int nm){
;LCD.c,138 :: 		PORTA = num[nm];
	MOVW       R18, R2
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(_num+0)
	LDI        R17, hi_addr(_num+0)
	MOVW       R30, R18
	ADD        R30, R16
	ADC        R31, R17
	LD         R16, Z
	OUT        PORTA+0, R16
;LCD.c,139 :: 		}
L_end_ss:
	RET
; end of _ss

_name:

;LCD.c,141 :: 		void name(){
;LCD.c,142 :: 		sendString("  Ashik Ahmed");
	PUSH       R2
	PUSH       R3
	LDI        R27, #lo_addr(?lstr1_LCD+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr1_LCD+0)
	MOV        R3, R27
	CALL       _sendString+0
;LCD.c,143 :: 		sendCommand(0xC0);
	LDI        R27, 192
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,144 :: 		sendString("   12-20978-1");
	LDI        R27, #lo_addr(?lstr2_LCD+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr2_LCD+0)
	MOV        R3, R27
	CALL       _sendString+0
;LCD.c,145 :: 		}
L_end_name:
	POP        R3
	POP        R2
	RET
; end of _name

_dept:

;LCD.c,147 :: 		void dept(){
;LCD.c,148 :: 		sendString("      CSE");
	PUSH       R2
	PUSH       R3
	LDI        R27, #lo_addr(?lstr3_LCD+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr3_LCD+0)
	MOV        R3, R27
	CALL       _sendString+0
;LCD.c,149 :: 		sendCommand(0xC0);
	LDI        R27, 192
	MOV        R2, R27
	CALL       _sendCommand+0
;LCD.c,150 :: 		sendString("      131");
	LDI        R27, #lo_addr(?lstr4_LCD+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr4_LCD+0)
	MOV        R3, R27
	CALL       _sendString+0
;LCD.c,151 :: 		}
L_end_dept:
	POP        R3
	POP        R2
	RET
; end of _dept
