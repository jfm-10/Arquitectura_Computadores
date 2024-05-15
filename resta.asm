.model small
.stack 100h

.data
    mensaje1 db 10,13, 'Ingrese el primer numero: $'
    mensaje2 db 10,13, 'Ingrese el segundo numero: $'
    resultado db 10,13, 'El resultado es: $'
    num db 10,13, '  $'

    n1 db ?
    n2 db ?

.code
main PROC
    mov ax,@data
    mov ds,ax

    ; Solicitar el primer número
    mov ah, 09h
    lea dx, mensaje1
    int 21h
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl end
    cmp al, '9'
    jg end
    sub al, '0'
    mov n1, al

    ; Solicitar el segundo número
    mov ah, 09h
    lea dx, mensaje2
    int 21h
    mov ah, 01h
    int 21h
    cmp al, '0'
    jl end
    cmp al, '9'
    jg end
    sub al, '0'
    mov n2, al

    ; Restar los números
    mov al, n1
    sub al, n2
    add al, '0'
    mov [num+1], al

    ; Mostrar el resultado
    mov ah, 09h
    lea dx, resultado
    int 21h
    mov ah, 09h
    lea dx, num
    int 21h

    ; Terminar el programa
end:
    mov ah, 4ch
    int 21h
main ENDP
end main