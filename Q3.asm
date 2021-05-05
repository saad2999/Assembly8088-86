[org 0x100]
mov ax,0; 0 is move to ax
mov bx,0; 0 is move to bx
mov cx,0; 0 is move to cx
mov dx,0; 0 is move to dx
mov bx, var1; var1 is move to bx
mov al,[bx] ; 0A(hex of 10) is move to lower part of ax
mov cl,[bx+1];(accessing var2 using address of var1) 55 move to lower part of cx
mov ch,[bx+2];(accessing var3 using address of var1) 0 D (hex of 13) move to higher part of cx
sub ch,cl    ; lower part of cx is subtract from higher part of cx and B8(result) store in higher part of cx
mov ax,0x4c00; program terminate
int 21h

var1: db 10
var2: db 55h
var3: db 13 

;note in line 10 ch-cl=FFB8, FF wasted because of overflow 