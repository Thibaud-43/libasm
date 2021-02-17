		global		ft_write
		extern		ft_strlen
		extern		__errno_location

section .text

;size_t write(int fd, const void *buf, size_t count)
; fd = rdi
; buf = rsi
; count = rdx

ft_write:
			mov rax, 1
			syscall
			cmp rax, 0
			jl error_exit
			ret

error_exit:
			neg		rax
			mov		rdi, rax
			call	__errno_location wrt ..plt
			mov		[rax], rdi
			mov rax, -1
			ret
