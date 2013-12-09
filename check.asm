include \masm32\include\masm32rt.inc

.data
    fo      db '%d', 13, 10, 0

.code

start:

    mov al, 15
    mov bl, 9
    mul bl
    invoke crt_printf, addr fo, ax

    mov al, 255
    mov bl, 2
    mul bl
    invoke crt_printf, addr fo, ax

    mov al, -12
    mov bl, 2
    mul bl
    invoke crt_printf, addr fo, ax

    mov al, 12
    mov bl, -2
    mul bl
    invoke crt_printf, addr fo, ax

    mov al, -12
    mov bl, -2
    mul bl
    invoke crt_printf, addr fo, ax

    mov al, 134
    mov bl, 111
    div bl
    invoke crt_printf, addr fo, al

    mov al, 134
    mov bl, 111
    div bl
    invoke crt_printf, addr fo, ah

    mov al, 12
    mov bl, 2
    imul bl
    invoke crt_printf, addr fo, ax

    mov al, 32
    mov bl, 8
    imul bl
    invoke crt_printf, addr fo, ax

    mov al, -12
    mov bl, 2
    imul bl
    invoke crt_printf, addr fo, ax

    mov al, 12
    mov bl, -2
    imul bl
    invoke crt_printf, addr fo, ax

    mov al, -12
    mov bl, -2
    imul bl
    invoke crt_printf, addr fo, ax

    mov al, -127
    mov bl, 50
    idiv bl
    invoke crt_printf, addr fo, al

    mov al, -127
    mov bl, 50
    idiv bl
    invoke crt_printf, addr fo, ah

    mov al, 127
    mov bl, -50
    idiv bl
    invoke crt_printf, addr fo, al

    mov al, 127
    mov bl, -50
    idiv bl
    invoke crt_printf, addr fo, ah

    inkey
    exit

end start
