		global	hello

		section	.text
hello: 	
		mov rax, 1
		mov rdi, 1
		mov	rsi, message
		mov	rdx, 13
		syscall
		ret

	section	.data
message: db		"Hello, World", 10
