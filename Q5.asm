[org 0x100]
mov ax,0 ; 0 is move to ax
mov bx,0 ; 0 is move to bx
mov cx,0 ; 0 is move to cx
mov dx,0 ; 0 is move to dx
mov bx, var1 ; var1(address of var1) is  move to bx 
mov ax,[bx]  ;0A is move to ax
mov cx,[bx+2];20 is move to cx
mov dx,[bx+4];0D is move to cx
add ax,dx   ; dx is added to ax and 17(hex of 23)  is store in ax
mov [bx+2],ax ;ax is store in var2 ([bx+2]=var2) 
mov ax,0x4c00 ; program terminate
int 21h
 
var1: dw 10
var2: dw 20h
var3: dw 13