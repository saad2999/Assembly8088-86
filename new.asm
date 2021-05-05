[org 0x100]
jmp start
str1 db 'I am a student of University of Central Punjab',0
start:
mov ax, 0xb800; ;segment address from where video memory starts.
Mov es, ax;
mov di, 0; ;location on screen where we want to start displaying our string.
mov cx, 46; ; string length, 11 characters.
mov si, str1;
mov ah, 0x1A; ; Attribute byte for the characters to be displayed.
label:
Mov al, [si]; ;reading the characters in al.
Inc si ; pointing to next character in string
Mov [es:di],ax; ; printing message on the screen, whole register of size word is written at
Add di,2;
cmp cx,30
jne skip
change_blinking:
mov ah,0x9A
skip:
loop label
mov ax,0x4c00
int 21h