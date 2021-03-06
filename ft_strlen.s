		global _main

		section		.data
string	db	"Hel"

		section		.text
_main:
		mov rax, string
		mov rbx, 0
		call _ft_strlen

		mov rax, 0x2000001
		mov rdi, 0
		syscall

_ft_strlen:
		inc rax
		inc rbx
		mov cl, [rax]
		cmp cl, 0
		jne _ft_strlen
		cmp rbx, 3
		je _print_hello
		ret

_print_hello:
		mov	rax, 0x2000004
		mov	rdi, 1
		mov rsi, string
		mov rdx, 7
		syscall
		ret