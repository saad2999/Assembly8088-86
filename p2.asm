[org 0x100]
jmp start
num: dw 0xA,0xffff,0x9,0x4,0x5,0x3
count: dw 0
start:
mov cx,6
mov ax,0
mov bx,num
repit:

mov dx,[bx]
rol dx,1
jnc l1
add ax,1

l1:


add bx,2
loop repit
mov [count],ax

mov ax,0x4c00
int 21h