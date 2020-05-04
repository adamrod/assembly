.section .data

.section .text

.globl _start

_start:
pushl $5
call square
addl $4, %esp
cmpl $25, %eax
je _ok
movl $1, %ebx
movl $1, %eax
int $0x80

_ok:
movl $0, %ebx
movl $1, %eax
int $0x80
