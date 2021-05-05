[org 0x100]
jmp start


array dw 1,2,3,4,5,6,7,8,9,10
array2 dw 0,0,0,0,0,0,0,0,0,0,0

start:
mov bx,0
mov cx,0
mov cx,10
mov ax,0
mov bp,array2


mov bx,array
fun:
mov dx,[bx]
add bx,2
add dx,[bx]
mov [bp],dx
mov bp,2
dec cx
jnz l1;


mov ax,0x4c00 ; program terminate
int 21h

l1:
call fun