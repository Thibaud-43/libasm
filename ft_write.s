		global		ft_write
		extern		ft_strlen

section .text

;size_t write(int fd, const void *buf, size_t count)
; fd = rdi
; buf = rsi
; count = rdx

ft_write:
			mov rax, 1
			syscall
			ret
	
