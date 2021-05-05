
    [org 0x100]
    jmp main
    Arr :db 2,3,5,6,78,0,7,3,5,4
    Arr1: db 0
    Arr2: db 0
    size: db 10
    start:
    mov cx,5
    mov ax,Arr
    mov bx, Arr1
    mov di,0
    L1:
    mov dx,[Arr+di]
    mov [Arr1+di],dx
    inc di
    Loop L1
    mov bx, Arr2
    mov cx,5
    mov si,0
    L2:
    mov dx,[Arr+di]
    mov [Arr2+si],dx
    inc di
    inc si
    Loop L2
    mov si,0
    mov di,0
    mov cx,5
    mov si,Arr1
    mov cx,5
    mov dx,0
    mov bx,0
    roll:
        mov bx,Arr1
        mov ax,[bx]
        push cx
        mov cx,5
        L12:
            mov dx,[bx+1]
            mov [bx],dx
            add bx,1
            Loop L12
        pop cx
        mov [bx+5],ax
        loop roll
    mov bx,0
    mov bx,Arr2
    mov cx,5
    mov dx,0
    rollr:
        mov bx,[bx+5]
        mov ax,[bx]
        push cx
        mov cx,10
        L21:
            mov dx,[bx-2]
            mov [bx],dx
            add bx,2
            Loop L21
        pop cx
        mov [Arr2],ax
        loop rollr
    mov cx,5
    mov di,0
    L13:
    mov dx,[Arr1+di]
    mov [Arr+di],dx
    inc di
    Loop l3
    mov cx,5
    mov si,0
    L23:
    mov dx,[Arr2+si]
    mov [Arr+di],dx
    inc di
    inc si
    Loop L0
mov ax,0x4c00
int 21h
   

