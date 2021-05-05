[org 0x100]
mov ax,0; 0 is move to ax
mov bx,0; 0 is move to bx
mov cx,0; 0 is move to cx
mov dx,0; 0 is move to dx

; add two variables their sum should be 5163 or 142B
;option1
Mov al,[var1]; 3c(hex of 60) move to lower part of ax  
Mov bl,[var2];EF  move to lower part of bx 
Add al,bl ; lower part of bx added to lower part of ax and 2B store in lower part of ax

;option2
Mov al,[var1] ;3c(hex of 60) move to  ax 
Mov bx,[var2];13EF  move to  bx
Add ax,bx ;bx added to ax and 142B store in ax
;option3
Mov ax,[var1] ;why ax is not showing the correct value of var1
; becase 3c move lower part of ax
Mov bx,[var2]; 13ef move to bx  
Add ax,bx
;option4
Mov al,[var1] ;3c is move to lower part of ax
Mov ah,0 ;already 0 in ah
Mov bx,[var2];3ef move to bx
Add ax,bx;bx added to ax and 142B store in ax
mov ax,0x4c00; code termitate
int 21h
var1: db 60 ;0x3C
var2: dw 5103 ;0x13EF