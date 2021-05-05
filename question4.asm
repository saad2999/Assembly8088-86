[org 0x100]
jmp start
num: dw 0xA,0x2,0x9,0x4,0x5,0x3
evencount: dw 0
oddcount
start:
mov cx,6
mov ax,0
mov si,0
mov bx,num
repit:

mov dx,[bx]
ror dx,1
jnc l1
add ax,1

l1:
add si,1

add bx,2
loop repit
mov [evencount],si
mov [oddcount],ax


mov ax,0x4c00
int 21h