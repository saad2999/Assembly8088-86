[org 0x100]
jmp start
ISR0:
 MOV AX, 0XB800
 MOV ES, AX;
 MOV word [ES:0], 0X0741;
IRET
start:
XOR DI, DI;
MOV ES, DI
mov AX, ISR0;
MOV [ES:16h*4],AX;
MOV [ES:16h*4+2], CS;
mov ah,0;
int 0x16;
mov ax,0x4c00
int 21h