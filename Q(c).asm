[org 0x100]
mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov bx, var1
mov al,[bx]
mov cl,[bx+1]
mov ch,[bx+2]
sub ch,cl; PF is active because after subtraction result is 72(1001000) number ones is even
; carry flag is active because carry gernated
;   PF is active because MSB is one
mov ax,0x4c00
int 21h
var1: db 10
var2: db 55h
var3: db 13 
