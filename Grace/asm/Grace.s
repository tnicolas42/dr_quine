section .data
s db "section .data%2$cs db %3$c%1$s%3$c, 0%2$clens equ $ - s%2$cfilename db %3$cGrace_kid.s%3$c, 0%2$cfd dq 0%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$c_main:%2$cpush rbp%2$cmov rax, 0x2000005%2$clea rdi, [rel filename]%2$cmov rsi, 0202h%2$cmov rdx, 00666o%2$csyscall%2$cmov [rel fd], rax%2$cmov rdi, [rel fd]%2$clea rsi, [rel s]  ; arg 1%2$clea rdx, [rel s]  ; arg 2%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$clea rdi, [rel fd]%2$cmov rax, 0x2000003%2$csyscall%2$ccall usefull%2$cpop rbp%2$cmov rax, 0%2$cret%2$cusefull:%2$cret%2$c", 0
lens equ $ - s
filename db "Grace_kid.s", 0
fd dq 0
section .text
global _main
extern _dprintf
_main:
push rbp
mov rax, 0x2000005
lea rdi, [rel filename]
mov rsi, 0202h
mov rdx, 00666o
syscall
mov [rel fd], rax
mov rdi, [rel fd]
lea rsi, [rel s]  ; arg 1
lea rdx, [rel s]  ; arg 2
mov rcx, 10
mov r8, 34
call _dprintf
lea rdi, [rel fd]
mov rax, 0x2000003
syscall
call usefull
pop rbp
mov rax, 0
ret
usefull:
ret
