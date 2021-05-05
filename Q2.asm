[org 0x100]
mov bl,[v] ; 35 is move to lower part bx
add bl,[v-1] ;(accessing 'u' uning 'v') 34 is add lower part of bx and 69 store in lower part of bx
add bl,[v+1] ;(accessing 'w' uning 'v') 34 is add lower part of bx and F9 store in lower part of bx
mov ax,0x4c00 ;Program terminate
int 21h

u: db 34h
v: db 35h
w: db 36h