[org 0x100]
mov cx,10
push array
call fun

fun:
mov bp, sp
mov bx,array
l1:
add bp,2
mov bx,[bp]
add bx,2

loop l1
ret array

mov ax,0x4c00
int 21h

array dw 1,2,3,4,5,6,7,8,9, 10
array2 dw 0,0,0,0,0,0,0,0,0,0