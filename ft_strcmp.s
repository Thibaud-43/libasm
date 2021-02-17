	global	ft_strcmp

	section .text

ft_strcmp:
	xor	rcx, rcx
	xor	rax, rax
	xor	rbx, rbx
	jmp begin

begin:
	mov al, BYTE [rdi + rcx]
	mov bl, BYTE [rsi + rcx]
	cmp al, 0
	je stop
	cmp bl, 0
	je stop
	cmp	al, bl
	jne stop
	inc rcx
	jmp	begin

stop:
	movzx rcx, al
	movzx rbx, bl
	sub	rcx, rbx
	mov	rax, rcx
	ret 
