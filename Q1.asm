[org 0x100]
MOV ah,[var1];0A is move to higher part ax
MOV bx,[var2];20(14) is move to bx
add ax,bx ;  ax is added to bx and 0A14 is store in ax
MOV [var3],ax ;0A14 is move to var3
MOV cx,[var4]; 40(var4 value) is move to cx
Mov ax,[var5];EF56(last 2 bytes of var5 value) is move to ax
Mov bx,[var5+2];ABCD(first  2 byte of var5) is move bx
mov ax,0x4c00
int 21h
var1: db 10 ;
var2: dw 20
var3: dw 20h
var4: dw 40h
var5: dd 0xABCDEF56
; note: the size of var5 is 4 byte and size registers is 2bytes  that why half value store in bx and half value store in ax  