[org 0x100]
jmp start
Number:dw 0x7846 
Position:db 6
temp:dw 0
start:
mov bx,word[Number]
mov cl,byte[Position]
mov dx,[Number]
mov [temp],dx
shl word[temp],cl
mov ax,word[temp]
mov word[Number],ax
mov ax,0x4c00
int 21hm