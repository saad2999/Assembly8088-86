[org 0x100]
jmp start
 message db 'Your message for divide overflow',0;

isr0:
pop ax ;pop the IP of div instruction
push continue ;push the IP of next instruction after “DIV”
 mov ax, 0xb800
 mov es, ax;
 mov si, message;
 mov ah,7
 nextchar:
 lodsb;
 cmp al, 0
 je skip
 stosw
 jmp nextchar
 skip:
iret
start:
xor di, di;
mov es, di
mov ax, isr0;
mov [es:0h*4],ax;
mov [es:0H*4+2], cs;
mov ax, 100
div bl ;when div interrupt is called it pushes the IP value of itself
 ;instead of the next instruction from where our code
 ; should continue after returning from interrupt.
continue:
mov ax,0x4c00
int 21h