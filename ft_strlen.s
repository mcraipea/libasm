section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0        ;compare rdi et 0, fait rdi - 0
	jle null          ;jump si lower ou egal vers null

	push rdi          ;pousse rdi au sommet de la pile, rdi adresse pour comparaison
	xor rcx, rcx      ;initialise a zero rcx ->compteur de boucle
	not rcx           ;vaeur negative donc inverse
	xor al, al        ;initialise a zero al
	cld               ;indicateur de direction a 0 pour que scasb incremente
	repne scasb       ;analyse les octets de la chaine jusqua /0, met dans rcx
	not rcx
	dec rcx           ;decremente rcx car le zero a ete compte 
	mov rax, rcx      ;rax = rcx, rax contient la valeur de retour 
	pop rdi           ;pointe le sommet de la pile vers rdi
	ret               ;return le sommet de la pile

null:
	mov rax, 0        ; rax = 0, rax contient la valeur de retour 
	ret
