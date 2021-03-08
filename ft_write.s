%include "includes.inc"

		section		.data
text	db "Hello"

		section		.text
		global		_main
_main:
		write 1, text, 5
		exit_program