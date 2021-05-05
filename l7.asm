[org 0x100]
mov bh,0
mov bl,[array]
push bx
mov bl,[array+1]
push bx

mov bl,[array+2]
push bx
mov bl,[array+3]
push bx
mov bl,[array+4]
push bx
mov bl,[array+5]
push bx
mov bl,[array+6]
push bx
mov bl,[array+7]
push bx

mov bl,[array+8]
push bx
mov bl,[array+9]
push bx

pop bx
mov [array],bl


pop bx
mov [array+1],bl

pop bx
mov [array+2],bl

pop bx
mov [array+3],bl

pop bx
mov [array+4],bl


pop bx
mov [array+5],bl

pop bx
mov [array+6],bl

pop bx
mov [array+7],bl
pop bx
mov [array+8],bl


pop bx
mov [array+9],bl
















mov ax,0x4c00 ; code terminate
int 21h
 array: db 1,2,3,4,5,6,7,8,9,10