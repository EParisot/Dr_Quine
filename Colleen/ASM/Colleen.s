section .data
	msg:	db	"%ctest%c", 10, 0
section .text
	extern _printf
	global _main
; com1
func:
	push rbp
	mov rbp, rsp
	mov rdi, msg
	mov rsi, 9
	mov rdx, 10
	call _printf
	leave
	ret
_main:
	push rbp; com2
	call func
	pop rbp
	mov rax, 0
	ret
