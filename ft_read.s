		global		ft_read
		extern		__errno_location
;size_t read(int fd, void *buf, size_t count)
;rdi = fd
;rsi = buf
;rdx = count

		section .text
ft_read:
		xor		rax, rax
		syscall
		cmp rax, 0
		jl error_exit
		mov rax, rdx
		ret	

error_exit:
		neg		rax
		mov		rdi, rax
		call	__errno_location wrt ..plt
		mov		[rax], rdi
		mov rax, -1
		ret
