

.model small
.stack 100h

.data
prompt db 'Nhap x (0-1): $'
result db 0Dh, 0Ah, 'f(x)=$'
x db ?
temp db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov x, al

    mov bl, 4
    mov bh, 3
    mov cl, 2
    mov ch, 1

    mov al, x
    mul bl
    sub al, bh
    mul x
    sub al, cl
    mul x
    add al, ch

    mov temp, al

    mov ah, 09h
    lea dx, result
    int 21h

    mov al, temp
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    mov ax, 4C00h
    int 21h
main endp

end main




