		global	ft_strdup
		extern	ft_strlen
		extern	ft_strcpy
		extern	malloc
;char *strdup(const char *s)
;rdi = s
;char *strcpy(char *dest, const char *src);
;rdi = dest
;rsi = src


		section .text
ft_strdup:
		xor		rax, rax
		xor		rbx, rbx
		call	ft_strlen
		mov		rbx, rdi		
		inc		rax
		mov		rdi, rax
		call	malloc WRT ..plt
		xor		rdi, rdi
		mov		rdi, rax
		mov		rsi, rbx
		xor		rax, rax
		call	ft_strcpy
		ret
