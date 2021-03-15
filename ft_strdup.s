;char *	ft_strdup(const char *s1);
;return = rax
;s1 = rdi

global		_ft_strdup
extern 		_malloc

section		.text

_ft_strdup:	push rdi
			call ft_strlen

			mov rdi, rax
			call _malloc

			pop rsi
			mov rdi, rax
			call ft_strcpy

			ret

ft_strcpy:	mov rcx, 0
			jmp looper2

looper2:	mov dl, BYTE [rsi + rcx]
			mov BYTE [rdi + rcx], dl
			cmp BYTE [rsi + rcx], 0
			je exit
			inc rcx
			jmp looper2

exit:		mov rax, rdi
			ret

ft_strlen:	mov rax, -1
			jmp looper

looper:		mov cl, [rdi]
			inc rdi
			inc rax
			cmp cl, 0
			jne looper
			ret