;ssize_t 	ft_write(int fd, const void *buf, size_t count);
;return = rax
;fd = rdi
;buf = rsi
;count = rdx

global		_ft_write
extern ___error

section		.text

_ft_write:	mov rax, 0x2000004
			syscall
			jc exit
			ret

exit:		push rax
			call ___error
			pop rdx
			mov [rax], rdx
			mov rax, -1
			ret