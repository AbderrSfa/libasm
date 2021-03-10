;char	*ft_strcpy(char * dst, const char * src);
;return = rax
;dst = rdi
;src = rsi

		section		.text
		global		_ft_strcpy
_ft_strcpy:
		mov rax, rsi
		ret