[org 0x100]
mov dx,0  
JMP START
; INT 8   ----> TIMEER  ;  INT 9---- KEYBOARD
	; INT  9<---
; FOR A SPECIFIC KEY: 
; 
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

CLEAR:
	PUSHA
	MOV AX,0XB800
	MOV ES,AX
	MOV AX,0X720 ; SPACE ASCII =0X20
	MOV CX,2000   ; 25*80=2000
	L2:
MOV WORD[ES:DI],AX
		ADD DI,2
	LOOP L2
	POPA
RET
g:
mov di,0
call CLEAR
jmp l1

KEY: 


mov bx,var1
mov cx,44
jmp l1


l1:
	IN AL,0X60	; SCAN CODE ; PRESS OR RELEASE
	SHL AL,1
	JC EOI
	skip:
	inc dx
	MOV AX,0XB800
	MOV ES,AX
	MOV AH,0X7
	MOV AL,[bx]
	MOV WORD[ES:DI],AX
	add bx,1
	ADD DI,2
	cmp di,160
	je g
	loop l1
	
EOI:  ; END OF INTERRUPT ---> SEND THE SIGNAL EOI TO PIC
	MOV AL,0X20
	OUT 0X20,AL
	
call CLEAR
IRET
START:

	MOV AX,0
	MOV ES,AX

	CLI	; DISABLE INTERRUPT FLAG
	MOV WORD[ES:9*4],KEY  

	MOV WORD[ES:9*4+2],CS ; 
	STI   ; ENABLE INTRRUPT FLAG
	MOV DI,0
L1:
JMP L1  ; INFINITE LOOP 

	

	
mov ax,0x4c00
int 21h
var1: db " I have started my preparation for the exam",0

