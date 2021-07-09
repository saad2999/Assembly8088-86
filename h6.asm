
    [org 0X0100]
   
   
   
    mov dx ,msg        ;print mes(for first number)
    mov ah,9
    int 21h
   
   
    mov ah,1        ;take first input
    int 21h
    mov cl,al
   
    mov dx ,msg1
    mov ah,9        ;print mes(for second number)
    int 21h
   
    mov ah,1        ;take second input
    int 21h
   
    Add cl,al         ;add the values of which is in the reg of cl and al
    sub cl,48        ;sub the 48 from the asci values which comes from adding al and cl
   
   
    mov dx ,msg2
    mov ah,9        ;print mes(for sum these numbers)
    int 21h
   
    mov dl,cl
    mov ah,2        ;for output print
    int 21h
    mov ah,4ch
    int 21h
   
    MOV AX,0X4C00    ;PROGRAM TRAMINATE    
    INT 0X21;
   
    msg db "Please enetr first number #$"
    msg1 db "Please enetr second number #$"
    msg2 db "Sum of these numbers #$"
