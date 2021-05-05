[org 0x100] 
JMP MAIN

PRINT:
	;[SP]----> IP
	PUSHA ; PUSHES 8 REGISTER IN STACK, 
	;[SP+16+2]--->IP
	MOV BP,SP
	MOV CX,[BP+18]  ; SIZE 
	MOV DI,[BP+20]  ; OFFSET
	MOV BX,[BP+22] ; ADDRESS OF CHARACTER ARRAY
	MOV AX,0XB800
	MOV ES,AX
	L1:
		MOV AL,[BX]
		MOV AH,0X7
		MOV WORD[ES:DI],AX
		ADD DI,2
		ADD BX,1
	LOOP L1
	POPA
RET 6           

CLEAR:
	PUSHA
	MOV AX,0XB800
	MOV ES,AX
	MOV AX,0X720 ; SPACE ASCII =0X20
	MOV CX,2000    ; 25*80=2000
	L2:
		MOV WORD[ES:DI],AX
		ADD DI,2
	LOOP L2
	POPA
RET

DELAY:
	PUSHA
	MOV CX,10
L5:
	PUSH CX
	MOV CX,0XFFFF
	L3:
	LOOP L3 ;; iNNER LOOP 
	POP CX
LOOP L5  ;; OUTER LOOP
	POPA
RET		

MAIN:
	MOV DI,0
	MOV CX, 160 ;Rows
	L4:	
		PUSH Char ; Char array address
		PUSH DI   ; offset
		PUSH WORD[Size] ; Size of char array
		CALL PRINT ; This will print string on the scree at desired offset
		CALL DELAY  ; This subroutine will produce delay
		CALL CLEAR  ; Will clear character from the screen 
		ADD DI,1
	LOOP L4
JMP MAIN

End:	
mov ax,0x4c00
int 21h																
Char: db 'All is well',0  ; Row0 Print----Delay--->Clear--->Row1 Print-----Delay--Clear---> Row2 Print-----Dealy--Clear---> ,  ..........Row24 Print--- Delay--Clear
Size: dw 11

; Row0  0 offset
; Row1  160 offset














