[org 0x100]
jmp main
myfun:
pusha
mov sp,bp
mov bx, [bp+18]
mov cx,[bp+20]
mov ax,[bp+20]
mov si,[bp+22]
l1:
mov dx,[si]
cmp dx,0x5A
ja s
add dx,0x20
mov [bx],dx
add bx,1 
s:
sub dx,0x20
mov [bx],dx
add bx,1 
sub bx,ax



loop l1
sub bx,ax
mov cx,ax
l2:
mov ax, 0xb800
mov es,ax
mov ah,0x15
mov al,[bx]
mov [es:di],ax
add bx,1
add di,2


loop l2

ret 

main:
push string
push size
push Output
call myfun
end:
mov ax,0x4c00
int 21h
string: db ' wE ARE THE bEST',0
size: dw 12 
Output: db 0,0,0,0,0,0,0,0,0,0,0,0
Vowel: db 0
