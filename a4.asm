[org 0x100]
jmp main
input:
mov ax,0
mov ah,1
l1:
int 21
loop l1:
    cmp al,13;check if Enter is pressed
je Enter

Enter:
mov ah, 0x2
add di,160
mov bh, 0
mov dl, 0               ; move the cursor to the far left of the                 ; screen
inc dh     ; move the cursor onto the next line
int 10h
jmp end
end:
​ret


main:

call input

mov ax,0x4c00
int 21h

