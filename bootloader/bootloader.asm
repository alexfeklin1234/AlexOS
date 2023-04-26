[bits 16]           ; tell assembler that working in real mode(16 bit mode)
section .text
	mov ax, 0x07c0
	mov es, ax
	mov ds, ax
	
	mov bp, hello_world

	mov ah, 0x13
	mov al, 0x01
	mov bh, 0x00
	mov bl, 0x0C ;color atributes
	mov cx, [string_len]
	mov dh, 0x0B
	mov dl, 0x00
	
	int 0x10

	jmp $

hello_world: db 'Hello, world!', 0x0D, 0x0A
string_len: db 15
zero_fill: times 510-($-$$) db 0x00
magic_number: dw 0xAA55





; mov ah, 0x0e




; mov al, '*'
; int 0x10
; mov al, 'H'
; int 0x10
; mov al, 'e'
; int 0x10
; mov al, 'l'
; int 0x10
; mov al, 'l'
; int 0x10
; mov al, 'o'
; int 0x10
; mov al, '!'
; int 0x10
; mov al, '*'
; int 0x10


; jmp $

; times 510-($-$$) db 0
; dw 0xaa55







; ; loop:
; ; 	jmp loop

; ; times 510-($-$$) db 0
; ; dw 0xaa55
