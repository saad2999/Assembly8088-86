[org 0x100]
JMP MAIN
Char: db 'All is well',0 
Siz: dw 11
CHAR1:DB 0

MAIN: 
mov cx,[Siz]
mov si,Char
mov di,CHAR1

l1:
lodsb
stosb
loop l1
End:
mov ax,0x4c00
int 21h
