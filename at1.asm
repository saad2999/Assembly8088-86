[org 0x100]
jmp start
num1 dw 3
num2 dw 2
num3 dw 0
start:
mov bp,sp
push num1
push num2
push num3


mov dx,0

fun:

mov bx,[bp-4]
mov ax ,[bx]
mov bx,[bp-2]
mov cx ,[bx]
l1:
add dx,ax
loop l1

mov [bp],dx
ret
call fun
mov ax,0x4c00
int 21h


