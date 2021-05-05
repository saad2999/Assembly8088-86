[org 0x100]


    mov ax,0
    mov ah,1
    mov cx,0
    mov di,0
    call clrscr 
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
    cmp al,0xD        ;check if Enter is pressed
    je Enter
    cmp al,0x8
    je backspace
    cmp al,87
    je up
    cmp al,65
    je left
    cmp al ,68
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
clrscr:
    push es          
    push ax   
    push cx               
    push di         
    mov  ax, 0xb800
    mov  es, ax             ; point es to video base   
    xor  di, di             ; point di to top left column
    mov  ax, 0x0720         ; space char in normal attribute
    mov  cx, 2000           ; number of screen locations 
    cld                     ; auto increment mode   
    rep  stosw              ; clear the whole screen 
    pop  di 
    pop  cx
    pop  ax   
    pop  es 
    ret 
l1:
    jmp repeater


end:
    mov ax,0x4c00
    int 21h








