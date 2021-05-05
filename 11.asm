[org 0x100]
jmp main:
num1 dw 0xb
num2 dw 0
result: dw 0
product:
pusha
mov bp,sp
mov cx,[bp+18]
mov word[bp+22]
jcxz return
mov ax,[bp+20]
l1:
add [bp+22],ax
loop l1:
return: 
popa
ret,4
main:
push word [result]
push word [num1]
push word [num2]
call product:
pop word [result]

mov ax 0x4c00
int 21h
