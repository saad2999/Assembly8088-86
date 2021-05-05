[org 0x100]
mov ax,0
mov bx,0
mov bx,[value]
rcr bx,2
shr bx,ax
mov dx ,[find]
cmp ax,dx
je l1



Find: db 101
Value: dw 1100101101110100

mov ax,0x4c00 ; program terminate
int 21h
 