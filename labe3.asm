[org 0x100]
jmp start
ISR0:
 MOV AX, 0XB800
 MOV ES, AX;
 MOV word [ES:2], 0X0741;
IRET
start:
XOR DI, DI;
MOV ES, DI
mov AX, ISR0;
MOV [ES:17h*4],AX;
MOV [ES:17h*4+2], CS;
Pushf ;push flag register
push cs ;push code segment
push continue ;push IP (address of next instruction where to return)
jmp far [es:17h*4] ;calling interrupt
continue:
mov ax,0x4c00
int 21h