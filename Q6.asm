[org 0x100]
mov ax,0 ;0 is move to ax
mov bx,0  ;0 is move to bx
mov cx,0  ;0 is move to cx
mov dx,0  ;0 is move to dx
mov bx, var1 ; var1(address of var1) is move to bx 
mov ax,[bx] ; 3c(hex of 60) move to bx 
mov cx,[bx+2] ; ([bx+2)=var2)05 move to cx
add ax,cx  ; cx is added to ax and 6441 is store in ax
mov [bx],ax; 6441 move to var2 (because bx is holding address of var2) 
mov [bx+2], word 0 ;(indirct accessing) 0 move to bx
mov dx,[bx+3] ;0000 is move to dx
add dx,[bx+3] ;0000 is add to dx 
mov [bx+3],dx  ;0000 is move var3 (becuase bx+3=var3)
mov ax,0x4c00 ; program terminate
int 21h

var1: dw 60
var2: db 5
var3: dw 100