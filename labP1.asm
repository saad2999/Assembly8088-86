[org 0x100]

mov cx,4
mov bx,arr
mov di,0
l1:
mov ax, 0xb800
mov es,ax
mov ah,0x42
mov al,[bx]
mov [es:di],ax
add bx,1
add di,2
loop l1
end:
mov ax,0x4c00
int 21h

arr: db 'saad',0 