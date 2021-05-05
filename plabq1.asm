[org 0x100]
mov ax,0
mov cx,1
mov ax,1
int 16h
mov ah,0Ah
add al,1
mov bh,0
int 10h


mov ax,0x4c00
    int 21h
