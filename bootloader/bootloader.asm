mov ah, 0x0e




mov al, '*'
int 0x10
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
mov al, '!'
int 0x10
mov al, '*'
int 0x10


jmp $

times 510-($-$$) db 0
dw 0xaa55







; loop:
; 	jmp loop

; times 510-($-$$) db 0
; dw 0xaa55
