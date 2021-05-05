[org 0x100] 

MOV DX,0
MOV DL,10
MOV BX,ARR
JMP START
PRINT:
	PUSHA
	mov bp,sp
	MOV AH,0x9
	MOV dx,[bp+18]
	   
	INT 21H  ; 
	POPA
RET 
input:
pusha
mov bp,sp
mov bx, [bp+18]
MOV AH,0 
	INT 16H ;; ASCII OF INPUT CHARACTER---> AL
	MOV [BX],AL
	ADD BX,1
	PUSH BX
; DISPLAY AT THE CURSOR POSITION
	CMP AL,'0'
	JE End
	MOV AH,0XA ; AL(ASCII) ---> PRINT THE AT THE CURSOR POSITION
	MOV CX,1
	MOV BX,0
	INT 10H 
 	
	ADD DH,1
	POP BX
	popa
ret
START:
mov cx,4
l1:
push Char
call PRINT
push ARR	
call input
push Char
call PRINT
push arr2
call input
loop l1
pop  di
pop  bx
;mov bx,ARR
;mov di,arr2
mov ax,[bx]
add ax,[di]

mov [sum],ax

push sum
call PRINT



jmp End
	




End:	
mov ax,0x4c00
int 21h																
Char: db 'ENTER THE number $'  
SIZE: dw 19
ARR: DB 0,0,0,0
arr2 db 0,0,0,0
sum dw 0

