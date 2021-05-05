[org 0x100]
mov bx, 0
mov ax, 0
mov bh,0x10
mov al,0x2
mul bh
mov [result],ax

mov ax, 0x4c00 
int 0x21

result: dw 0
