
    
[org 0x100]

mov ax,0xb800
mov es,ax
mov cx,[ize]
mov bx,arr
mov ah,0x7
mov di,0
mov dx,0
l1:


    mov al,[bx]
    cmp dx,0
    je true
    cmp dx,15
    je true
    mov [es:di],ax
   fun:
    add bx,1
    add di,2
    add dx,1
loop l1
jmp end
true:
mov ah,0x8F
mov [es:di],ax
mov ah,0x7
jmp fun
end:
mov ax,0x4c00
int 21h



arr: dw 'Mohsin Ali irfan'
ize: dw 16







