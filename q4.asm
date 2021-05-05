;Copy this code and observe what’s wrong with that and correct it.
; there are two ways of correcting this code 
; 1: change the datatype of var1
; 2: using al in place of ax
[org 0x100]
MOV ax,[var1];5 is move to ax
MOV bx,[var2]; 6 is move to bx
add ax,bx   ; ax is added to bx and 0B  is store in ax
MOV [var3],ax; value of ax (0B)is move var3
MOV cx,[var4]; 8 is move to cx
mov ax,0x4c00 ; code terminate
int 21h
var1: dw 5
var2: dw 6
var3: dw 7
var4: dw 8 
