[org 0x100]
mov ax,0
mov bx,0
mov cx,0
mov dx,0

mov cx,16
mov bx,[mutiplier]
mov ax,[multipliend]
l1:

shr bx,1
jnc l2
mov dx, [multipliend]
add [result], dx
mov dx, [multipliend+2]
adc [result+2], dx
 
l2:
shl word [multipliend], 1
rcl word [multipliend+2], 1 



dec cx
jnz l1
mov ax,0x4c00
int 21h

mutiplier: dw 5
multipliend dw 10
result: dd 0