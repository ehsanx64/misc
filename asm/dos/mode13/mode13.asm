; Using MS-DOS Mode 13 in assembly
; Changed from original source code to NASM syntax

; TODO: It is not working as expected so must be fixed in future
org 0x100

main:
	call say_hello
	call mode13
	call say_hello
	call text_mode
	call say_hello

; Exit to DOS
exit:
	mov ah,0x4c
	int 0x21

; Enable Mode 13
mode13:
	mov ax, 0x13
	int 0x10
	ret
	
; Enable text mode
text_mode:
	mov ax, 0x3
	int 0x10
	ret

; Display a simple message
say_hello:
	mov ah, 0x9
	mov dx, msg
	int 0x21

; Message to be displayed
msg db 'Hello', 0xa, 0xd, '$'
