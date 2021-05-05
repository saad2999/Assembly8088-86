[org 0x100]
; Display Memory , There is a Number corresponding to every symbol, ASCII->VGA
; Home Task: Write a program to display a byte type number on screen.
;Num: db 245  ;; divide number and separate the digits 2 4 5 , add 40 --> 42 44 45

A 65decimal, 0x41 --- Z 90 decimal, 5A  size 8bit
; 0 48, 0x30
; 0xb8000 physical address 20 bits----> segment address=b800    offset=0
; 'A'----> [b8000]  , 'B'--->[b8000+2] , 2?(Character Ascii, Attribute byte)  ; 160*2=320
; Attribute byte= 8bits    (0--------7)   
; DS, SS, CS ,ES? 
; lower byte contian ASCII of Character
; Highter byte contain Attribute information , [ES:0] 


	MOV CX,[Size]
	MOV BX,Charater
	MOV AX,0xb800
	MOV ES,AX 
	MOV AH,0x7                      ; Row# 5 , col 10  ---> offset 820
					; 5*160=800 +20  820
	mov di,0
L1:
	MOV AL,[BX]
	MOV word[ES:di],AX  ;;; offset must be variable ;; ES(Segment): DI( offset) ---> physical (Actual) location   B800:0--> B8000
	add di,160
	Add bx,2            
loop L1
  	
End: 
      mov ax,0x4c00
      int 21h

Charater: dd 'All is WelZ'
Size: dw 11
      ; 	col0 col1 col2  col3   col4.....................col79   ;;; starting offset of a row is 160 * row#
;Row 0  	0     2    4      6     8 			 158
;Row 1 		160
;Row2 		320
;Row 3 		480
;1		