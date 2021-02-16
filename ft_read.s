		global		ft_read

;size_t read(int fd, void *buf, size_t count)
;rdi = fd
;rsi = buf
;rdx = count

		section .text
ft_read:
		xor		rax, rax
		syscall
		ret		
