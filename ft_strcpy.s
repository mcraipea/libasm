section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx,rcx
	xor rdx,rdx
	xor rax,rax
	cmp rsi,0
	je end
	jmp cpy

incremente:
	inc rcx

cpy:
	mov dl,BYTE [rsi + rcx]
	mov BYTE [rdi + rcx],dl
	cmp dl,0
	jnz incremente

end:
	mov rax,rdi                      ;return dest 
	ret