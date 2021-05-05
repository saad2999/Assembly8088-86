[org 0x100]
mov ax,0x5433; because 5433+ABCD=1000
;AX =0000,CF=1,PF=1,ZF=1 and AF=1
sub ax,0xabcd
;and after subtraction OF,SF AF,PF=1 
mov ax,0x4c00
int 21h
