;size_t	ft_strlen(const char *s);
;return = rax
;char *s = rdi

global		_ft_strlen

		section		.text
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