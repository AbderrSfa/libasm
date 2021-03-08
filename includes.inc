STDIN		equ 0
STDOUT		equ 1
STDERR		equ 2

SYS_READ	equ 0x2000003
SYS_WRITE	equ 0x2000004
SYS_EXIT	equ 0x2000001

%macro	exit_program 0
		mov rax, SYS_EXIT
		mov rdi, 0
		syscall
%endmacro

%macro	write 3
		mov rax, SYS_WRITE
		mov rdi, %1
		mov rsi, %2
		mov rdx, %3
		syscall
%endmacro

%macro	read 3
		mov rax, SYS_READ
		mov rdi, %1
		mov rsi, %2
		mov rdx, %3
		syscall
%endmacro