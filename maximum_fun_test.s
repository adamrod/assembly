.section .data
list1:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
list2:
.long 4,45,77,0
list3:
.long 121,55,0

.section .text

.globl _start

_start:
pushl $list1
call maximum
addl $4, %esp

pushl $list2
call maximum
addl $4, %esp

pushl $list3
call maximum
addl $4, %esp

movl %eax, %ebx
movl $1, %eax
int $0x80
