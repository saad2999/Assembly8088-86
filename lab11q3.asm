[org 0x100]
jmp main
copyReverse:
mov ax,0
mov bp,sp
mov bx,[bp+2]
mov cx,[bx]
mov bx,[bp+4]
mov si,bx
add bx,cx

l1:
mov ax,[bx]
lodsb 
sub bx,1 
loop l1
ret
main:
push String1
push siz
call copyReverse


mov ax,0x4c00
int 21h
String1: db 'Hello World!',0
siz dw 11