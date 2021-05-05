[org 0x100]
cmp word [num1],50
jb ju
cmp word [num1],10
ja ju
cmp word [num1],10
jae jum
cmp word [num1],50
jge jump
mov bx,result
mov ax,[bx]
ju:
mov  bx,60
jum:
mov  bx,10
jump:
mov  bx,50


mov ax,0x4c00
int 21h


num1: dw 12
result: dw 0
