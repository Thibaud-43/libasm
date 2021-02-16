		global ft_strcpy

section .text

;char *strcpy(char *dest, const char *src)
; rdi = dest
; rsi = src

ft_strcpy:
	xor rcx, rcx
	jmp debut

debut:
	mov dl, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], dl
	cmp dl, 0
	je	fin
	inc rcx
	jmp debut

fin:
	mov rax, rdi
	ret
