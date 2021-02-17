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
	push	rdi
	call	ft_strlen wrt ..plt
	mov	rdi, rax
	inc	rdi
	call	malloc wrt ..plt
	cmp	rax, 0
	je	exit
	mov	rdi, rax
	pop	rsi
	call	ft_strcpy wrt ..plt
	ret
exit:
	ret
