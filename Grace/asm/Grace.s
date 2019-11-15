;  comment
section .data
s:
.str db ";  comment%2$csection .data%2$cs:%2$c.str db %3$c%1$s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _printf%2$c_main:  ; comment%2$cpush rbp  ; set up stack frame%2$cmov rbp, rsp%2$clea rdi, [rel s.str]  ; arg 1%2$clea rsi, [rel s.str]  ; arg 2%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall _printf%2$ccall usefull%2$cpop rbp  ; restore stack%2$cmov rax, 0  ; return value%2$cret%2$cusefull:%2$cret%2$c", 0
fileName:  db "testFile.txt",0
fileFlags: dq 0102o         ; create file + read and write mode
fileMode:  dq 00666o
fileDescriptor: dq 0

section .text
global _main
_main:  ; comment
push rbp  ; set up stack frame


mov rax,2               ;   sys_open
lea rdi,[rel fileName]        ;   const char *filename
lea rsi,[rel fileFlags]       ;   int flags
lea rdx,[rel fileMode]        ;   int mode
syscall
mov [rel fileDescriptor],rax
mov rax,3                 ; sys_close
lea rdi,[rel fileDescriptor]
syscall


pop rbp  ; restore stack
mov rax, 0  ; return value
ret

usefull:
ret