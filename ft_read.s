%include "includes.inc"

		section		.bss
name:	resb	10

		section		.text
		global		_main
_main:
		read 0, name, 10
		write 1, name, 10
		exit_program