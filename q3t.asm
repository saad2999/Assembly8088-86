[org 0x100]
mov ax,0
mov bx,0
mov cx,0
mov dx,0x1000
mov bx,number
mov ax,[bx]
jump1:

inc cx
sub ax,0x1000
ja jump1

;add and because loop executing one 
add ax,0x1000
sub cx,1
mov [digit1],cx
mov [Remainder1],ax
mov cx,0

jump2:


inc cx
sub ax,0x100
ja jump2

add ax,0x100
sub cx,1
mov [digit2],cx
mov [Remainder1],ax
mov cx,0

jump3:


inc cx
sub ax,0x10
ja jump3

add ax,0x10
sub cx,1
mov [digit3],cx
mov [Remainder1],ax
mov cx,0

jump4:


inc cx
sub ax,0x1
ja jump4

add ax,0x1
sub cx,1
mov [digit4],cx
mov [Remainder1],ax
mov cx,0

mov cx,[digit4]
mov ax,0
multiply1:



add ax,0x1000
dec cx
jnz multiply1
 add bx,ax
 
 
mov cx,[digit3]
mov ax,0
multiply2:



add ax,0x100
dec cx
jnz multiply2
 add bx,ax
 
 
mov cx,[digit2]
mov ax,0
multiply3:



add ax,0x10
dec cx
jnz multiply3
 add bx,ax
 
 
mov cx,[digit1]
mov ax,0
multiply4:



add ax,0x1
dec cx
jnz multiply4
 add bx,ax




mov ax,0x4c00
int 21h

digit1: dw 0
number: dw 0xABCD	
Remainder1:dw 0	
digit2: dw 0
digit3: dw 0
digit4: dw 0