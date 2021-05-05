
    [org 0x100]
jmp start
str1 db 'HELLO WORLD',0
clearscreen:     
 push es            
 push ax            
 push di
 mov  ax, 0xb800          
 mov  es, ax                  
 mov  di, 0
increment:   
  mov  word [es:di], 0x0720         
  add  di, 2                       
  cmp  di, 4000                   
  jne  increment           
   pop  di           
   pop  ax            
   pop  es             
   ret
start:
label2:
call clearscreen
mov ax, 0xb800
Mov es, ax;
mov di, 0
mov cx, 46
mov si, str1
mov ah, 0x7
label1:
Mov al, [si]
Inc si
Mov [es:di],ax
Add di,2;
cmp cx,30
jne skip
BLINK:
mov ah,0x7
skip:
loop label1
jmp label2
mov ax,0x4c00
int 21h
