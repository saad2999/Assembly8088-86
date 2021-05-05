[org 0x100]

mov ax,0
mov ah,1
mov cx,0
mov di,0
repeater:
mov ax,1
int 16h
mov ah, 0x2
add di,1
mov bh, 0          
inc dl  
int 10h
mov ah,0ah
mov cx,1
int 10h
cmp al,27
je end
cmp al,0xD;check if Enter is pressed
je Ente
cmp al,0x8
je backspace
cmp al,0x1E 
je up
cmp ax,0
je left
cmp ax ,4d00h
je right
cmp ax ,5000h
je down
jmp repeater

   backspace:
   mov ax,0xb800
   mov es,ax
   sub di,1
   mov ax,0x720
   mov [es:di],ax
   jmp repeater
up:
mov ah, 0x2
mov bh, 0
;mov dl, 0               
dec dh     
int 10h
jmp repeater
left:
mov ah, 0x2
mov bh, 0
dec dl              
mov dh,  0   
int 10h
jmp repeater

right:
mov ah, 0x2
mov bh, 0
inc dl              
mov dh,  0   
int 10h
jmp repeater
down:
mov ah, 0x2
mov bh, 0
mov dl,0              
inc dh,   
int 10h
jmp repeater



jmp repeater
Ente:
mov ah, 0x2
mov bh, 0
mov dl, 0               
inc dh     
int 10h
jmp repeater

l1:
jmp repeater

end:
mov ax,0x4c00
int 21h

