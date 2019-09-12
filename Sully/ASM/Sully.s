section .data
rflag: db "w", 0
fmt_file: db "Sully_%d.s", 0
fmt_exe: db "Sully_%d", 0
fmt_com: db "nasm -f macho64 %1$s -o %2$s.o && ld -macosx_version_min 10.8 -lSystem %2$s.o -o %2$s && rm %2$s.o", 0
fmt_run: db "./%s", 0
code: db "section .data%1$crflag: db %2$cw%2$c, 0%1$cfmt_file: db %2$cSully_%%d.s%2$c, 0%1$cfmt_exe: db %2$cSully_%%d%2$c, 0%1$cfmt_com: db %2$cnasm -f macho64 %%1$s -o %%2$s.o && ld -macosx_version_min 10.8 -lSystem %%2$s.o -o %%2$s && rm %%2$s.o%2$c, 0%1$cfmt_run: db %2$c./%%s%2$c, 0%1$ccode: db %2$c%4$s%2$c, 0%1$c%1$csection .text%1$cglobal _main%1$cextern _fopen%1$cextern _fclose%1$cextern _fprintf%1$cextern _sprintf%1$cextern _malloc%1$cextern _free%1$cextern _system%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$c%1$cmov r12, %3$d%1$c%1$cmov rdi, 10%1$ccall _malloc%1$cmov r13, rax%1$c%1$cmov rdi, r13%1$cmov rsi, fmt_file%1$cmov rdx, r12%1$ccall _sprintf%1$c%1$cmov rdi, 8%1$ccall _malloc%1$cmov r14, rax%1$c%1$cmov rdi, r14%1$cmov rsi, fmt_exe%1$cmov rdx, r12%1$ccall _sprintf%1$c%1$cmov rdi, r13%1$cmov rsi, rflag%1$ccall _fopen%1$c%1$ccmp rax, 0%1$cje end%1$cmov rbx, rax%1$c%1$csub r12, 1%1$cmov rdi, rax%1$cmov rsi, code%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, r12%1$cmov r9, code%1$ccall _fprintf%1$cadd r12, 1%1$c%1$cmov rdi, rbx%1$ccall _fclose%1$c%1$cmov rdi, 128%1$ccall _malloc%1$cmov r15, rax%1$c%1$cmov rdi, r15%1$cmov rsi, fmt_com%1$cmov rdx, r13%1$cmov rcx, r14%1$ccall _sprintf%1$c%1$cmov rdi, r15%1$ccall _system%1$c%1$ccmp r12, 0%1$cjle end%1$c%1$cmov rdi, 10%1$ccall _malloc%1$cmov r12, rax%1$c%1$cmov rdi, r12%1$cmov rsi, fmt_run%1$cmov rdx, r14%1$ccall _sprintf%1$c%1$cmov rdi, r12%1$ccall _system%1$c%1$cmov rdi, r12%1$ccall _free%1$c%1$cend:%1$cmov rdi, r15%1$ccall _free%1$cmov rdi, r13%1$ccall _free%1$cmov rdi, r14%1$ccall _free%1$cmov rax, 0%1$cleave%1$cret%1$c", 0

section .text
global _main
extern _fopen
extern _fclose
extern _fprintf
extern _sprintf
extern _malloc
extern _free
extern _system

_main:
push rbp
mov rbp, rsp

mov r12, 5

mov rdi, 10
call _malloc
mov r13, rax

mov rdi, r13
mov rsi, fmt_file
mov rdx, r12
call _sprintf

mov rdi, 8
call _malloc
mov r14, rax

mov rdi, r14
mov rsi, fmt_exe
mov rdx, r12
call _sprintf

mov rdi, r13
mov rsi, rflag
call _fopen

cmp rax, 0
je end
mov rbx, rax

mov rdi, rax
mov rsi, code
mov rdx, 10
mov rcx, 34
sub r12, 1
mov r8, r12
mov r9, code
call _fprintf
add r12, 1

mov rdi, rbx
call _fclose

mov rdi, 128
call _malloc
mov r15, rax

mov rdi, r15
mov rsi, fmt_com
mov rdx, r13
mov rcx, r14
call _sprintf

mov rdi, r15
call _system

cmp r12, 0
jle end

mov rdi, 10
call _malloc
mov r12, rax

mov rdi, r12
mov rsi, fmt_run
mov rdx, r14
call _sprintf

mov rdi, r12
call _system

mov rdi, r12
call _free

end:
mov rdi, r15
call _free
mov rdi, r13
call _free
mov rdi, r14
call _free
mov rax, 0
leave
ret
