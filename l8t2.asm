[org 0x100]
mov bx,1234h
mov ax,[bx]
shl ax,1
rcr bx,4
mov ax,0x4c00 
int 0x21


