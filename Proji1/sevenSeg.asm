
_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;sevenSeg.c,6 :: 		void main() {
;sevenSeg.c,7 :: 		int i = 0;
;sevenSeg.c,8 :: 		DDRA = 0xFF;
	LDI        R27, 255
	OUT        DDRA+0, R27
;sevenSeg.c,9 :: 		while(1){
L_main0:
;sevenSeg.c,10 :: 		for(i=0; i<10; i++){
; i start address is: 20 (R20)
	LDI        R20, 0
	LDI        R21, 0
; i end address is: 20 (R20)
L_main2:
; i start address is: 20 (R20)
	LDI        R16, 10
	LDI        R17, 0
	CP         R20, R16
	CPC        R21, R17
	BRLT       L__main10
	JMP        L_main3
L__main10:
;sevenSeg.c,11 :: 		PORTA = num[i];
	MOVW       R18, R20
	LSL        R18
	ROL        R19
	LDI        R16, #lo_addr(_num+0)
	LDI        R17, hi_addr(_num+0)
	MOVW       R30, R18
	ADD        R30, R16
	ADC        R31, R17
	LD         R16, Z
	OUT        PORTA+0, R16
;sevenSeg.c,12 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main5:
	DEC        R16
	BRNE       L_main5
	DEC        R17
	BRNE       L_main5
	DEC        R18
	BRNE       L_main5
	NOP
	NOP
;sevenSeg.c,13 :: 		PORTA = none;
	LDS        R16, _none+0
	OUT        PORTA+0, R16
;sevenSeg.c,14 :: 		ONS;
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_main7:
	DEC        R16
	BRNE       L_main7
	DEC        R17
	BRNE       L_main7
	DEC        R18
	BRNE       L_main7
	NOP
	NOP
;sevenSeg.c,10 :: 		for(i=0; i<10; i++){
	MOVW       R16, R20
	SUBI       R16, 255
	SBCI       R17, 255
	MOVW       R20, R16
;sevenSeg.c,15 :: 		}
; i end address is: 20 (R20)
	JMP        L_main2
L_main3:
;sevenSeg.c,16 :: 		}
	JMP        L_main0
;sevenSeg.c,18 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
