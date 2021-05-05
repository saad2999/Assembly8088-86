[org 0x100]
jmp start
String_1: db 'ABC193zxy&*^',0
String_2: db 'ABC123zxy&*^',0

start:
mov dx,0
mov di, String_1
mov si, String_2
MOV CX, 11;
REPE CMPSB
jz l1
jmp en
l1:
add dx,1
en:
mov ax,0x4c00
int 21h
