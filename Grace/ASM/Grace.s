%define MAIN _main
%define FILE "Grace_kid.s"
%define RFLAG "w"

section .data
	code:	db "%%define MAIN _main%2$c%%define FILE %3$cGrace_kid.s%3$c%2$c%%define RFLAG %3$cw%3$c%2$c%2$csection .data%2$c%1$ccode:%1$cdb %3$c%4$s%3$c, 0%2$c%1$crflag:%1$cdb RFLAG, 0%2$c%1$cfile:%1$cdb FILE, 0%2$c%2$csection .text%2$c%1$cextern _fopen%2$c%1$cextern _fclose%2$c%1$cextern _fprintf%2$c%1$cglobal MAIN%2$c; com1%2$cMAIN:%2$c%1$cpush rbp%2$c%1$cmov rbp, rsp%2$c%2$c%1$cmov rdi, file%2$c%1$cmov rsi, rflag%2$c%1$ccall _fopen%2$c%2$c%1$ccmp rax, 0%2$c%1$cje end%2$c%2$c%1$cmov rbx, rax%2$c%1$cmov rdi, rax%2$c%1$cmov rsi, code%2$c%1$cmov rdx, 9%2$c%1$cmov rcx, 10%2$c%1$cmov r8, 34%2$c%1$cmov r9, code%2$c%1$ccall _fprintf%2$c%2$c%1$ccall _fclose%2$c%1$cjmp end%2$c%2$cend:%2$c%1$cpop rbp%2$c%1$cmov rax, 0%2$c%1$cret%2$c", 0
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
	mov rsi, code
	mov rdx, 9
	mov rcx, 10
	mov r8, 34
	mov r9, code
	call _fprintf

	call _fclose
	jmp end

end:
	pop rbp
	mov rax, 0
	ret
