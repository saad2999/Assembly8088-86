[org 0x100]
jmp start
num: dw 0xA
start:
mov dx,[num]
sal dx,1
jnc l1
mov bx,1

l1:
mov bx,0

 
mov ax,0x4c00
int 21h
