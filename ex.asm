[org 0x100]
mov cx,740
mov ax,0x0720
mov di,0


l3:
    mov[es:di],ax
    add di,2
loop l3
mov ax, 0xb800
mov es,ax
mov di,0
mov ah,0x47
mov al,0x41
mov [es:di],ax

mov ax,0x4c00
int 21h