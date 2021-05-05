
    [org 0x100]
jmp start
number:dw 245
Denum: dw 10
Quotient: dw 0
Remainder: dw 0
siz:dw 3
start:
 mov ax,0xb800
 mov es,ax
 mov ah,0x7
 mov cx,[siz]
 divi:
 MOV bp, [number]
        Divide:
            cmp bp,[Denum]
        jb skip
            inc word[Quotient]
            sub bp,[Denum]
        jmp Divide
        skip:
            mov [Remainder],bp
 label:
 mov al,[bp]
 add al,0x30
 cmp word[Quotient],0
 jnz label
 next:
 mov di,0
 mov [es:di],bp
 add di,2
 loop divi
 mov ax,0x4c00
 int 21h
