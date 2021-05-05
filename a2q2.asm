[org 0x100]
jmp start
array dw 4, 5, 7, 6, 8
fact dw 0, 0, 0, 0, 0
factCount: dw 0
start:
mov bx,0
mov ax,0
mov cx,0
mov dx,0
mov si,0
mov di,0

push fact 
push array
mov bp,sp
fun:
pop bx

;mov cx,[bx]
mov ax,[bx]
mov si,3
l2:
mov cx,si
l1:
add dx,ax
loop l1
add [factCount],dx
dec si
cmp si,0
loop l2
mov ax, 0x4c00 
 int 0x21
 