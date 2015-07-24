
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
	PUSH       R2
	PUSH       R3
;sevenSeg.c,15 :: 		DDRA = 0xFF;
	LDI        R27, 255
	OUT        DDRA+0, R27
;sevenSeg.c,16 :: 		while(1){
L_main4:
;sevenSeg.c,17 :: 		show(1);
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,18 :: 		show(2);
	LDI        R27, 2
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,19 :: 		show(10);
	LDI        R27, 10
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,20 :: 		show(2);
	LDI        R27, 2
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,21 :: 		show(0);
	CLR        R2
	CLR        R3
	CALL       _show+0
;sevenSeg.c,22 :: 		show(9);
	LDI        R27, 9
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,23 :: 		show(7);
	LDI        R27, 7
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,24 :: 		show(8);
	LDI        R27, 8
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,25 :: 		show(10);
	LDI        R27, 10
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,26 :: 		show(1);
	LDI        R27, 1
	MOV        R2, R27
	LDI        R27, 0
	MOV        R3, R27
	CALL       _show+0
;sevenSeg.c,28 :: 		Delay_ms(2000);
	LDI        R18, 11
	LDI        R17, 38
	LDI        R16, 94
L_main6:
	DEC        R16
	BRNE       L_main6
	DEC        R17
	BRNE       L_main6
	DEC        R18
	BRNE       L_main6
	NOP
	NOP
;sevenSeg.c,29 :: 		}
	JMP        L_main4
;sevenSeg.c,31 :: 		}
L_end_main:
	POP        R3
	POP        R2
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
