[org 0x100]; if find print y else n 
jmp s
f:
pusha
MOV AX,0XB800
	MOV ES, AX
	MOV DI,0
	MOV AX,0X789
	MOV [ES:DI],AX
popa
ret
n:
pusha
MOV AX,0XB800
	MOV ES, AX
	MOV DI,0
	MOV AX,0X778
	MOV [ES:DI],AX
	popa
	ret

s:
	push ds
	pop es  ; ds---->es means both segments point the same memory locations
	mov di,Message
	MOV CX,[size_m]
	mov si,find
	repe cmpsb  ; repeat untill equal and CX is non zero
	JZ FOUND
	call n
FOUND:
	call f


END:	
mov ax,0x4c00
int 21h
Message: DB 'Coal is a very easy subject only if when do your work by yourself and do not plaigrize it',0
find: db 'do'
size_m dw 91
size_f db 2