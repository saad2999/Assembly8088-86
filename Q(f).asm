[org 0x100]
mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov bx, var1
mov ax,[bx]
mov cx,[bx+2]
add ax,cx; after addition result is 160
;  SF is active because MSB is one
;OF is because overflow is occur
mov [bx],ax
mov [bx+2], word 0
mov dx,[bx+3]
add dx,[bx+3]
mov [bx+3],dx
mov ax,0x4c00
int 21h
var1: dw 60
var2: db 5
var3: dw 100