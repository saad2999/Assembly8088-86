[org 0x100]

mov cx,9
mov bx,48
mov di,0
call CLEAR
l1:
mov ax, 0xb800
mov es,ax
mov ah,0x07
mov al,[bx]
mov [es:di],ax
add bx,1
add di,163
loop l1
end:
mov ax,0x4c00
int 21h

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


