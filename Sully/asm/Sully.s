I_VAL equ 5
I_CHAR equ I_VAL - DECREMENT + 48
section .data
s db "I_VAL equ %4$d%2$cI_CHAR equ I_VAL - DECREMENT + 48%2$csection .data%2$cs db %3$c%1$s%3$c, 0%2$clens equ $ - s%2$cfilename db %3$cSully_%3$c, I_CHAR, %3$c.s%3$c, 0%2$cfd dq 0%2$csyscmd db %3$cnasm -f macho64 -dDECREMENT=1 Sully_%3$c, I_CHAR, %3$c.s -o Sully_%3$c, I_CHAR, %3$c.o && gcc Sully_%3$c, I_CHAR, %3$c.o -o Sully_%3$c, I_CHAR, %3$c && rm ./Sully_%3$c, I_CHAR, %3$c.o && ./Sully_%3$c, I_CHAR, 0%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$cextern _system%2$c_main:%2$cpush rbp%2$cmov r10, I_VAL%2$ccmp r10, 0%2$cje no_syscall%2$cmov rax, 0x2000005%2$clea rdi, [rel filename]%2$cmov rsi, 0202h%2$cmov rdx, 00666o%2$csyscall%2$cmov [rel fd], rax%2$cmov rdi, [rel fd]%2$clea rsi, [rel s]%2$clea rdx, [rel s]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, I_VAL%2$csub r9, DECREMENT%2$ccall _dprintf%2$clea rdi, [rel fd]%2$cmov rax, 0x2000003%2$csyscall%2$clea rdi, [rel syscmd]%2$ccall _system%2$cno_syscall:%2$ccall usefull%2$cpop rbp%2$cmov rax, 0%2$cret%2$cusefull:%2$cret%2$c", 0
lens equ $ - s
filename db "Sully_", I_CHAR, ".s", 0
fd dq 0
syscmd db "nasm -f macho64 -dDECREMENT=1 Sully_", I_CHAR, ".s -o Sully_", I_CHAR, ".o && gcc Sully_", I_CHAR, ".o -o Sully_", I_CHAR, " && rm ./Sully_", I_CHAR, ".o && ./Sully_", I_CHAR, 0
section .text
global _main
extern _dprintf
extern _system
_main:
push rbp
mov r10, I_VAL
cmp r10, 0
je no_syscall
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
mov r9, I_VAL
sub r9, DECREMENT
call _dprintf
lea rdi, [rel fd]
mov rax, 0x2000003
syscall
lea rdi, [rel syscmd]
call _system
no_syscall:
call usefull
pop rbp
mov rax, 0
ret
usefull:
ret
