[org 0x100]
mov si,Mystring
mov cx,[siz]
mov di,reverse
cld 
 
rep movsb
push siz
push off
push reverse
mov ax,0x4c00
int 21h


Mystring: db 'Muhammad Ahmad L1F19BSCS0000',0
siz: dw 29
reverse times  29 dw '0' 
off  dw 0
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