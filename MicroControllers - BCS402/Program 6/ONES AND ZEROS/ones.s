	AREA ONESANDZERO, CODE, READONLY
ENTRY
	MOV R1, #0;
	MOV R2, #0; 
	MOV R3, #2; 
	LDR R4, =VALUE
LOOP2
	MOV R5, #32;
	LDR R6, [R4];
LOOP0
	MOVS R6, R6, ROR #1;
	BHI ONES
	ADD R2, R2, #1;
	B LOOP1
ONES
	ADD R1, R1,#1;
LOOP1
	SUBS R5, R5, #1;
	BNE LOOP0
	SUBS R3, R3, #1;
	LDR R4, =VALUE1
	BNE LOOP2
STOP B STOP
VALUE DCD 0X3
VALUE1 DCD 0X2
END
