[org 0x100]
JMP MAIN
; STRING INSTRUCTION--> COMPLEX INSTRUCTION LODSB
; LODSB AL<---[DS:SI], SI--->SI+1
; LODSW AX<---[DS:SI], SI--->SI+2
; CLASS ACTIVITY: COPY THE CONTENT OF Char ARRAY INTO CHAR1 ARRAY USING STOSB AND LODSB?

Char: db 'All is well',0 ; DATA SEGMENT----> EXTRA SEGMENT
Siz: dw 11
CHAR1:DB 0

MAIN: ; PLACE ZERO ON THE EACH INDEX OF THE ARRAY USING STOSB ?
mov bx,Char
mov si,bx
mov ax,0
mov bx,CHAR1
mov cx,[Siz]
l1:
lodsb
mov [bx],ax
add bx,1
loop l1
End:
mov ax,0x4c00
int 21h
