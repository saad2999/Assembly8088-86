[ORG 0X100]; INTERRUPT HOOKING
JMP MAIN

ZEROISR:
	PUSHA
	PUSH ES
	MOV AH,13H
	MOV AL,1
	MOV BH,0
	MOV BL,7
	MOV BP,CHAR
	MOV CX,[SIZE]
	PUSH DS
	POP ES
	MOV DX,0
	INT 10H
	POP ES
	POPA

	;POP AX ; ADDRESS(IP) OF DIV ITSELF ; 
	;ADD AX,2 
	;PUSH AX
IRET; INTERRUPT RETURN

MAIN:
; INTERUPT HOOKING
	MOV AX,0
	MOV ES,AX
	MOV WORD[ES:0x16*4],ZEROISR
	MOV WORD[ES:0x16*4+2],CS

	MOV AX,0XFFFF
	MOV BX,0X0 ; 
	DIV BX  ; INFINITE LOOP ; QUOTIENT> DESTINATION; INTERRUPT AFFILIATED 0 INTERRUPT 
int	16h

END:
    MOV AX,0X4C00
    INT 21H

 

CHAR: DB "PROGRAM TERMINATED"
SIZE: DW 22
SAVE: DD 0