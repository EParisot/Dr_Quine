section .data
code: db "%1$d%2$ctest%3$c%4$s", 0
rflag: db "w", 0
fmt_file: db "Sully_%d.s", 0
file: db "", 0
fmt_exe: db "Sully_%d", 0
exe: db "", 0
fmt_com: db "gcc -Wall -Wextra -Werror %s -o %s", 0
com: db "", 0
count: equ 5

section .text
extern _fopen
extern _fclose
extern _fprintf
extern _sprintf
extern _system
global _main

_main:
push rbp
mov rbp, rsp

mov rdx, count
sub rdx, 1

mov rdi, file
mov rsi, fmt_file
call _sprintf

mov rdi, exe
mov rsi, fmt_exe
call _sprintf

mov rdi, com
mov rsi, fmt_com
mov rdx, file
mov rcx, exe
call _sprintf

mov rdi, file
mov rsi, rflag
call _fopen

cmp rax, 0
je end

mov rbx, rax
mov rdi, rax
mov rsi, code
mov rdx, count
sub rdx, 1
mov rcx, 10
mov r8, 34
mov r9, code
call _fprintf

call _fclose
jmp end

;compile

end:
pop rbp
mov rax, 0
ret
