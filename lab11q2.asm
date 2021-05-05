
jmp start
encryption:
mov bp,sp
mov bx,0
mov cx,0
mov dx,0
mov bx,[bp+2]
mov dx,[bx]
mov bx,[bp+4]
mov cx,[bx]
mov bx,[bp+6] 



l1:
add [bx],dx
add bx,1
loop l1
ret
start:
[org 0x100]
push Array
push arraySize
push Value
call encryption

mov ax,0x4c00
int 21h

Array: db 'A quick brown fox jumps over the lazy dog.',0
Value: dw 5
arraySize dw 41