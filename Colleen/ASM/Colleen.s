section .data
	code:	db	"section .data%2$c%1$ccode:%1$cdb%1$c%3$c%5$s%3$c%2$csection .text%2$c%1$cextern _printf%2$c%1$cglobal _main%2$c%4$c com1%2$cfunc:%2$c%1$cpush rbp%2$c%1$cmov rbp, rsp%2$c%1$cmov rdi, code%2$c%1$cmov rsi, 9%2$c%1$cmov rdx, 10%2$c%1$cmov rcx, 34%2$c%1$cmov r8, 59%2$c%1$cmov r9, code%2$c%1$ccall _printf%2$c%1$cleave%2$c%1$cret%2$c_main:%2$c%1$cpush rbp%4$c com2%2$c%1$ccall func%2$c%1$cpop rbp%2$c%1$cmov rax, 0%2$c%1$cret%2$c"
section .text
	extern _printf
	global _main
; com1
func:
	push rbp
	mov rbp, rsp
	mov rdi, code
	mov rsi, 9
	mov rdx, 10
	mov rcx, 34
	mov r8, 59
	mov r9, code
	call _printf
	leave
	ret
_main:
	push rbp; com2
	call func
	pop rbp
	mov rax, 0
	ret
