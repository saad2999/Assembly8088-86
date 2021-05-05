[org 0x100]
mov bx,numernator
mov ax,[bx]
mov dx,[bx+2]
mov cx,0
t:
inc cx
sub ax,dx

jnz t:

mov ax,0x4c00 
int 21h
numernator: dw 65
Denominator: dw 8
Quotient: dw 0
Remainder dw 0 