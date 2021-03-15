;char *	ft_strdup(const char *s1);
;return = rax
;s1 = rdi

			extern _malloc

			section		.text
			global		_ft_strdup
_ft_strdup:
			push rdi
			call _ft_strlen
			mov rsi, rax

			mov rdi, rax
			call _malloc

			pop rdi
			mov rdx, 0
			jmp _looper
		
_looper:
			mov cl, [rdi]
			mov [rax], cl
			inc rax
			inc rdi
			cmp rdx, rsi
			inc rdx
			jne _looper
			ret


_ft_strlen:
		mov rax, -1
		jmp _loop

_loop:
		mov cl, [rdi]
		inc rdi
		inc rax
		cmp cl, 0
		jne _loop
		ret