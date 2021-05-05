
[org 0x100]

MOV AX,245
PUSHA
MOV BL,100
DIV BL
mov [var],ah
mov ah,0
mov bl,10
div bl
mov [var2],ah
mov [var3],al
popa

	
	MOV AX,0xb800
	MOV ES,DX 
	MOV AH,0x7                     
					
	mov di,0

	MOV AL,[var]
	MOV word[ES:di],AX  
	add di,160
	Add bx,1 
	
	MOV AL,[var2]
	MOV word[ES:di],AX  
	add di,160
	Add bx,1   

	MOV AL,[var3]
	MOV word[ES:di],AX  
	add di,160
	Add bx,1      



  	
End: 
      mov ax,0x4c00
      int 21h
var: db 0
var2: db 0
var3: db 0


      		