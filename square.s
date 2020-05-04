.section .data

.section .text

.globl square

.type square,@function
square:
pushl %ebp
movl %esp, %ebp
movl 8(%ebp), %eax
movl 8(%ebp), %ebx
imull %ebx, %eax
jmp end_square

end_square:
movl %ebp, %esp
popl %ebp
ret
