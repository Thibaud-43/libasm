	global		ft_strdup
	extern		ft_strlen
	extern		ft_strcpy
	extern		malloc

;char *strdup(const char *s)
;rdi = s
;char *strcpy(char *dest, const char *src);
;rdi = dest
;rsi = src


section .text

ft_strdup:
	xor	rax, rax
	call	ft_strlen
	push	rdi
	mov	rdi, rax
	inc	rdi
	call	malloc WRT ..plt
	cmp	rax, 0
	je	exit
	pop	rdi
	mov	rdi, rax
	mov	rsi, rdi
	call	ft_strcpy
	ret
exit:
	ret
