[org 0x100]
jmp start
stri: dw 'saad',0
start:
mov dx,25
mov di,0 
l2:

mov cx,4
mov bx,0
mov bx,stri

l:
mov ax, 0xb800
mov es,ax
mov ah,0x7
mov al,[bx]
mov [es:di],ax

add di,2
add bx,1
loop l

add di, 6
sub dx,1
cmp dx,0
jnz l2
mov ax,0x4c00
int 21h