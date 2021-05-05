[org 0x100]
jmp start
str1 db 'HELLO'
str2 db ' WORLD'
start:
mov ax, 0xb800
mov es ,ax
mov di,500
mov di,498
size1:dw 5
mov si,str1
mov ah,0x0F
mov cx,[size1]
l1:
mov al,[si]
inc si
mov [es:di],ax
add di,2
cmp cx,0
jnz l1
mov si,str2
mov bl,0x0F
size2:
mov cx,0
l2:
mov bl,[si]
inc si
add si,2
add di,2
mov ax,0x4c00
int 21h