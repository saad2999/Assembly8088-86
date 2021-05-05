[org 0x100]
mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov bx, var1
mov ax,[bx]
mov cx,[bx+2]
mov dx,[bx+4]
add ax,dx; PF is active because after subtraction result is 23(10111) number ones is even
;AF is active because carry gernated after first nibble
mov [bx+2],ax
mov ax,0x4c00
int 21h
var1: dw 10
var2: dw 20h
var3: dw 13