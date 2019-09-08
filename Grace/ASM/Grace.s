%define MAIN _main
%define FILE "Grace_kid.s"
%define RFLAG "w"

section .data
	msg:	db "%1$chello%2$c", 0
	rflag:	db RFLAG, 0
	file:	db FILE, 0

section .text
	extern _fopen
	extern _fclose
	extern _fprintf
	global MAIN
; com1
MAIN:
	push rbp
	mov rbp, rsp

	mov rdi, file
	mov rsi, rflag
	call _fopen

	cmp rax, 0
	je end

	mov rbx, rax
	mov rdi, rax
	mov rsi, msg
	mov rdx, 9
	mov rcx, 10
	mov r8, 34
	mov r9, 59
	mov r10, msg
	call _fprintf

	call _fclose
	je end

end:
	pop rbp
	mov rax, 0
	ret
