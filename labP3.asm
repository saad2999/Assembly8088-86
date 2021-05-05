[org 0x100]
mov dx,43
mov cx,17
mov bx,Array1
mov di,0
l1:
mov ax, 0xb800
mov es,ax
mov ah,0x7
add si,[bx] 
mov al,[bx]
add al,48
mov [es:di],ax
add di,2
mov al,dl
mov [es:di],ax
add bx,1
cmp cx,1
jz o
add di,2
loop l1
o:
mov dl,61
mov al,dl
mov [es:di],ax
mov dx,si
mov al,dl
mov [es:di],ax
end:
mov ax,0x4c00
int 21h

Array1 db 1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1
