[org 0x100]

;NOTE: arrows keys are not working that why W,S,A,D work as up down,right,left
    mov ax,0
    mov ah,1
    mov cx,0
    mov di,0
	
	mov ah, 0x2
    mov bh, 0
    mov dl, 0               
    inc dh     
    int 10h
    
    call CLEAR
repeater:

    
    mov ah,0h
    int 16h
	push ax
    mov ah, 0x2
    add di,1
    mov bh, 0          
    inc dl  
    int 10h
    mov ah,0ah
    mov cx,1
    int 10h
	pop ax  
    cmp al,27
    je end
    cmp al,0xD        ;check if Enter is pressed
    je Enter
    cmp al,0x8
    je backspace
    cmp al,87
    je up
    cmp ah,68
    je left
    cmp al ,65
    je right
    cmp al ,83
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
    dec dh     
    int 10h
    jmp repeater
left:
    mov ah, 0x2
    mov bh, 0
    dec dl              
    int 10h
    jmp repeater


right:
    mov ah, 0x2
    mov bh, 0
    inc dl              
          
    int 10h
    jmp repeater
down:
    mov ah, 0x2
    mov bh, 0             
    inc dh,   
    int 10h
    jmp repeater


    jmp repeater
Enter:
    mov ah, 0x2
    mov bh, 0
    mov dl, 0               
    inc dh     
    int 10h
    jmp repeater
CLEAR:
	PUSHA
	MOV AX,0XB800
	MOV ES,AX
	MOV AX,0X720 ; SPACE ASCII =0X20
	MOV CX,2000    ; 25*80=2000
	L2:
		MOV WORD[ES:DI],AX
		ADD DI,2
	LOOP L2
	POPA
RET



end:
    mov ax,0x4c00
    int 21h








