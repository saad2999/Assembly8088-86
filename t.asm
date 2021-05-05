[org 0x100]
jmp start
str1 db 'Hello world'
clear:
pusha
mov ax,0xb800
mov di,0
mov es,ax
mov cx,2000
l1:
mov word[es:di],0x720
add di,2
loop l1
popa 
ret
start:
call clear
mov cx,65
mov ax,0xb800
mov es,ax
mov di,0
l2:
mov ax,0x765
mov word[es:di],ax
add ax,2
add ax,1
loop l2
mov ax,0x4c00
int 21h