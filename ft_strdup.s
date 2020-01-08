section .text
		global _ft_strdup
		extern _malloc
		extern _ft_strlen
		extern _ft_strcpy

_ft_strdup:
	cmp rdi,0x0          ;compare rdi a 0
	je malloc_fail		 ;return 0
	call _ft_strlen
	inc rax
	push rdi
	mov rdi,rax
	call _malloc
	cmp rax,0x0
	je malloc_fail
	pop rdi             ; retire la donne au sommet et incremente rsp de 8
	                    ; second part, align 16 bit on the stack
	push rsi
	mov rsi,rdi         ; put src in rsi
	mov rdi,rax         ; put dest in rdi
	call _ft_strcpy
	pop rsi
	ret
	
malloc_fail:
	mov rax,0x0
	ret