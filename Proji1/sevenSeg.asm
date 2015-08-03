
_show:

;sevenSeg.c,5 :: 		void show(int dig){
;sevenSeg.c,6 :: 		PORTA = num[dig];
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
;sevenSeg.c,7 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_show0:
	DEC        R16
	BRNE       L_show0
	DEC        R17
	BRNE       L_show0
	DEC        R18
	BRNE       L_show0
	NOP
	NOP
;sevenSeg.c,9 :: 		PORTA = 0xFF;
	LDI        R27, 255
	OUT        PORTA+0, R27
;sevenSeg.c,10 :: 		Delay_ms(500);
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_show2:
	DEC        R16
	BRNE       L_show2
	DEC        R17
	BRNE       L_show2
	DEC        R18
	BRNE       L_show2
	NOP
	NOP
;sevenSeg.c,11 :: 		}
L_end_show:
	RET
; end of _show

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;sevenSeg.c,13 :: 		void main() {
;sevenSeg.c,14 :: 		int i = 0;
;sevenSeg.c,15 :: 		DDRA = 0xFF;
	LDI        R27, 255
	OUT        DDRA+0, R27
;sevenSeg.c,17 :: 		DDRA = 0xFF;
	LDI        R27, 255
	OUT        DDRA+0, R27
;sevenSeg.c,19 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
