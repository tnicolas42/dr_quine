section .data
fileName:  db 'Grace_kid.s',0
fileFlags: dq 0202h; jul
fileMode:  dq 00666o
fileDescriptor: dq 0
s:
.str db "section .data%2$cfileName:  db 'Grace_kid.s',0%2$cfileFlags: dq 0202h; jul%2$cfileMode:  dq 00666o%2$cfileDescriptor: dq 0%2$cs:%2$c.str db %3$c%1$s%3$c%2$csection .text%2$cglobal _main%2$cextern _dprintf%2$c_main:%2$cpush rbp%2$cmov rax,0x2000005%2$clea rdi,[rel fileName]%2$cmov rsi,[rel fileFlags]%2$cmov rdx,[rel fileMode]%2$csyscall%2$cmov [rel fileDescriptor], rax%2$c%2$cmov rdi,[rel fileDescriptor]%2$clea rsi,[rel s.str]%2$clea rdx,[rel s.str]%2$cmov rcx,10%2$cmov r8,34%2$ccall _dprintf%2$ccall usefull%2$c%2$cmov rax,0x2000003%2$cmov rdi,[rel fileDescriptor]%2$csyscall%2$cpop rbp%2$cmov rax,0%2$cret%2$cusefull:%2$cret%2$c"
section .text
global _main
extern _dprintf
_main:
push rbp
mov rax,0x2000005
lea rdi,[rel fileName]
mov rsi,[rel fileFlags]
mov rdx,[rel fileMode]
syscall
mov [rel fileDescriptor], rax

mov rdi,[rel fileDescriptor]
lea rsi,[rel s.str]
lea rdx,[rel s.str]
mov rcx,10
mov r8,34
call _dprintf
call usefull

mov rax,0x2000003
mov rdi,[rel fileDescriptor]
syscall
pop rbp
mov rax,0
ret
usefull:
ret
