%include "includes.inc"

		global _main

		section		.data
string	db	"Hel"

		section		.text
_main:
		mov rax, string
		mov rbx, 0
		call _ft_strlen

		exit_program

_ft_strlen:
		inc rax
		inc rbx
		mov cl, [rax]
		cmp cl, 0
		jne _ft_strlen
		cmp rbx, 3

_print_hello:
		write 1, string, 6
		ret