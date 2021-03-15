;char	*ft_strcpy(char * dst, const char * src);
;return = rax
;dst = rdi
;src = rsi

global		_ft_strcpy

section		.text

_ft_strcpy:	mov rcx, 0
			jmp looper

looper:		mov dl, BYTE [rsi + rcx]
			mov BYTE [rdi + rcx], dl
			cmp BYTE [rsi + rcx], 0
			je exit
			inc rcx
			jmp looper

exit:		mov rax, rdi
			ret