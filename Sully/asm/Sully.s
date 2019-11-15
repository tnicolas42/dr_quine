section .data
s db "section .data%2$cs db %3$c%1$s%3$c, 0%2$clens equ $ - s%2$ci dq %4$d%2$cfilename db %3$cSully_%3$c, %4$d, %3$c.s%3$c, 0%2$cfd dq 0%2$csyscmd db %3$cnasm -f macho64 Sully_%3$c, %4$d, %3$c.s -o Sully_%3$c, %4$d, %3$c.o && gcc Sully_%3$c, %4$d, %3$c.o -o Sully_%3$c, %4$d, %3$c && ./Sully_%3$c, %4$d, 0%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$cextern _system%2$c_main:%2$cpush rbp%2$cmov rax, 0x2000005%2$clea rdi, [rel filename]%2$cmov rsi, 0202h%2$cmov rdx, 00666o%2$csyscall%2$cmov [rel fd], rax%2$cmov rdi, [rel fd]%2$clea rsi, [rel s]%2$clea rdx, [rel s]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, [rel i]%2$csub r9, 1%2$ccall _dprintf%2$clea rdi, [rel fd]%2$cmov rax, 0x2000003%2$csyscall%2$cmov r10, [rel i]%2$ccmp r10, 48%2$cje no_syscall%2$clea rdi, [rel syscmd]%2$ccall _system%2$cno_syscall:%2$ccall usefull%2$cpop rbp%2$cmov rax, 0%2$cret%2$cusefull:%2$cret%2$c", 0
lens equ $ - s
i dq 53
filename db "Sully_", 53, ".s", 0
fd dq 0
syscmd db "nasm -f macho64 Sully_", 53, ".s -o Sully_", 53, ".o && gcc Sully_", 53, ".o -o Sully_", 53, " && ./Sully_", 53, 0
section .text
global _main
extern _dprintf
extern _system
_main:
push rbp
mov rax, 0x2000005
lea rdi, [rel filename]
mov rsi, 0202h
mov rdx, 00666o
syscall
mov [rel fd], rax
mov rdi, [rel fd]
lea rsi, [rel s]
lea rdx, [rel s]
mov rcx, 10
mov r8, 34
mov r9, [rel i]
sub r9, 1
call _dprintf
lea rdi, [rel fd]
mov rax, 0x2000003
syscall
mov r10, [rel i]
cmp r10, 48
je no_syscall
lea rdi, [rel syscmd]
call _system
no_syscall:
call usefull
pop rbp
mov rax, 0
ret
usefull:
ret
