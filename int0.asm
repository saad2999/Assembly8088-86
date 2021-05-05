start: mov ah, 0
int 16h ; wait for any key....
cmp al, 27 ; if key is 'esc' then exit.
je stop
;al contains ascii of pressed key
mov ah, 0Eh ; print it.
int 10h
jmp start
stop:
mov ax,0x4c00
int 21h