[org 0x100]
mov dx,0xffff
mov di,strings
mov cx ,0xffff
mov si,strings

repne scasb
sub dx,cx


mov ax,0x4c00
int 21h
strings db 'saad',0