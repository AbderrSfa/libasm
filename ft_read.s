;ssize_t 	ft_read(int fd, void *buf, size_t count);
;return = rax
;fd = rdi
;buf = rsi
;count = rdx

global		_ft_read
extern 		___error

section		.text

_ft_read:	mov rax, 0x2000003
			syscall
			jc exit
			ret

exit:		push rax
			call ___error
			pop rdx
			mov [rax], rdx
			mov rax, -1
			ret