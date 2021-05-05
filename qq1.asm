[org 0x100]
MOV AX, [0XBCD0]
MOV BX, [0XBCD2]
ADD AX, BX
MOV [0XBCD4], AX
ADD [0XBCD6], AX
INC  word[0XBCDD]

mov ax,0x4c00
int 21h

;A0000
;+
;BCD0
;=ABCD0
;So 0x15 store in AX
;A0000
;+
;=ABCD2
;So 0x25 is moved to BX
;after adding value of AX 3A
;A0000+BCD4=ABCD4
;so 3A is moved to ABCD4
;A0000+0XBCD6=ABCD6
;value on loction ABCD6 is 95h 
;95h+3A =CF 
;CF is mov to ABCD6
;A0000+BCDD=ABCDD
;value on  loction ABCDD=AA
;AA increment by =AB