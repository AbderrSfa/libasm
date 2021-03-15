;int		ft_strcmp(const char *s1, const char *s2);
;return = rax
;s1 = rdi
;s2 = rsi

global		_ft_strcmp

section		.text

_ft_strcmp:	mov rax, 0
			mov dl, [rdi]
			mov cl, [rsi]
			inc rdi
			inc rsi
			cmp dl, 0
			je _return
			cmp cl, 0
			je _return
			cmp dl, cl
			jl _lesser
			jg _greater
			je _ft_strcmp

_return:	cmp dl, cl
			jl _lesser
			jg _greater
			ret

_greater:	mov rax, 1
			ret

_lesser:	mov rax, -1
			ret