.section .data

.section .text

.globl maximum

.type maximum,@function
maximum:
pushl %ebp
movl %esp, %ebp

movl 8(%ebp), %ebx
movl (%ebx), %eax
jmp loop_maximum

loop_maximum:
cmpl $0, (%ebx)
je end_maximum
addl $4, %ebx
cmpl %eax, (%ebx)
jle loop_maximum
movl (%ebx), %eax
jmp loop_maximum

end_maximum:
movl %ebp, %esp
popl %ebp
ret
