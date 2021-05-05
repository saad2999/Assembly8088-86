[org 0x100]
l1:
mov ah,0h
    int 16h
	mov ah,0xa
	mov bh,0
	mov cx,1
	int 10h
	cmp al,27
	jne l1
    mov ax,0x4c00
    int 21h
