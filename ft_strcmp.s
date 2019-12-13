section .text
		global _ft_strcmp

_ft_strcmp:
		push rdi
		push rsi

loop:
		mov al, byte[rdi]
		cmp al, byte[rsi]
		jne not_eq
		cmp byte[rdi], 0
		je eq
		inc rdi
		inc rsi
		jmp loop

not_eq:
		mov al, byte[rdi]
		sub al, byte[rsi]
		jmp end

eq:
		mov rax, 0
		jmp end

end:
		pop rsi
		pop rdi
		ret

