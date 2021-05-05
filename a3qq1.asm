[org 0x100]
jmp main
physial:
pusha
mov bp,sp
mov ax,0x10
mov bx,[bp+20]
mov dx,[bx]
mov bx,[bp+18]
mov bx,[bx]
mul dx
add ax,bx
cmp dx,0
jz l1
add dx,bx
l1:
popa 
ret
main:
push offsetAddress
push segmentAddress
call physial
int 16h
mov ax,0x4c00
int 21h
segmentAddress dw 5600
offsetAddress dw 7800