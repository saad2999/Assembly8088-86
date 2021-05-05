[org 0x100]
jmp main
arr: dw 7,1,8,9,19,15,4,4,4,4,4,4,4,5,5
smallest: dw 0
main:
mov ax,0
mov bx,0
mov cx,15
mov bx,arr
mov dx,0
l1:
mov ax,[bx]
cmp ax,[bx+2]
jb l2
add bx,2


l2:
mov dx,[bx]
add bx,2
loop l1
mov [smallest],dx

mov ax,0x4c00
int 21