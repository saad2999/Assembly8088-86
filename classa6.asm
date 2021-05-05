[org 0x100] 
;CLASS ACTIVITY: TAKE INPUT TWO 4 DIGIT NUMBERS(DECIMAL) AND CHECK WHETHER NUMBERS ARE EQUAL OR NOT. DISPLAY THE MESSAGE ACCORDINGLY.
MOV DX,0
MOV DL,10
MOV BX,ARR
JMP START
PRINT:
	PUSHA
	mov bp,sp
	MOV AH,0x9
	MOV dx,[bp+18]
	push cs
	pop es   ; 
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


mov bx,ARR
mov ax,[bx]
mov bx,arr2
mov ax,[bx]
cmp ax,cx
je equal
push char
call PRINT
jmp End
equal:
push char1
call PRINT
jmp End
	




End:	
mov ax,0x4c00
int 21h																
Char: db 'ENTER THE number $'  ; Row0 Print----Delay--->Clear--->Row1 Print-----Delay--Clear---> Row2 Print-----Dealy--Clear---> ,  ..........Row24 Print--- Delay--Clear
SIZE: dw 19
ARR: DB 0
arr2 db 0
char db 'not f$'
s1: dw 5
char1: db 'found$'
s: dw 5