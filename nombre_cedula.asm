.model small 
.data
    nombre db "Alejandro Morales Diez",'$'
    cedula db '8027594','$'
    mensaje db 10,13 ,"Nombre: $"
    mensaje2 db 10,13 ,"Cedula: $"
.code
main PROC
    mov ax, @data
    mov ds, ax
    lea dx, mensaje
    mov ah, 9
    int 21h

    lea dx, nombre
    mov ah, 9
    int 21h

    lea dx, mensaje2
    mov ah, 9
    int 21h

    lea dx, cedula
    mov ah, 9
    int 21h

    mov ah, 4ch
    int 21h
main ENDP
end main