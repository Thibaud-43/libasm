		global	ft_strlen

		section	.text

ft_strlen:
		xor	rax, rax
		jmp	debut
debut:
		cmp BYTE [rdi], 0
		je	fin
		inc rax
		inc rdi
		jmp debut
fin:
	ret

