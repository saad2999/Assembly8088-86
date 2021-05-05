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

;add and subtraction because loop executing one iteration extra
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

mov [digit4],cx
mov [Remainder1],ax
mov cx,0

mov bx,0

mov ax,[digit4]
shl ax,12; the value of ax is D  shift 12 mean D*2^12 and 2^12=0x1000 hence D*01000
;same process repeat for  digit3,digit2 and digit1
add bx,ax

mov ax,[digit3]
shl ax,8
add bx, ax

mov ax,[digit2]
shl ax,4
add bx,ax

mov ax,[digit1]
add bx,ax
 mov [number] ,bx

mov ax,0x4c00
int 21h

digit1: dw 0
number: dw 0xABCD	
Remainder1:dw 0	
digit2: dw 0
digit3: dw 0
digit4: dw 0