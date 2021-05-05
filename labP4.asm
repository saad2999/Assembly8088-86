[org 0x100]
jmp main

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
main:
mov cx,0xffff
l2:
pusha
mov bx,arr
mov cx,5
ll:
mov ax, 0xb800
mov es,ax
mov ah,0x42
mov al,[bx]
call DELAY
mov [es:di],ax
add bx,1
add di,2

loop ll
call CLEAR
popa
loop l2
mov ax,0x4c00
int 21h
arr: db 'saad',0 