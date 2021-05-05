[org 0x100]
mov ax,0
mov bx,0
mov cx,0
mov ax,Denominator
mov bx,Numerator
mov ax,[bx]
jump:

inc cx
sub ax,[bx+2]
ja jump
;add and subtraction because loop executing one iteration extra
mov si,[Remainder]
mov si, ax
add si,[Denominator]
mov [Remainder] ,si
sub cx,1
mov [Quotient],cx





mov ax,0x4c00
int 21h

Numerator dw 65
Denominator: dw 8
Quotient: dw 0
Remainder: dw 0

