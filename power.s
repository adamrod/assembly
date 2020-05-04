.section .data

.globl _start
_start:
pushl $2
pushl $5
call power
addl $8, %esp
pushl %eax

pushl $2
pushl $0
call power
addl $8, %esp
pushl %eax

pushl $2
pushl $2
call power
addl $8, %esp
popl %ebx
popl %ecx

addl %eax, %ebx
addl %ecx, %ebx
movl $1, %eax
int $0x80

.type power, @function
power:
pushl %ebp
movl %esp, %ebp
subl $4, %esp

movl 12(%ebp), %ecx # %ecx - base
movl 8(%ebp), %ebx  # %ebx - power

movl %ecx, -4(%ebp)

power_loop_start:
cmpl $1, %ebx
je end_power
cmp $0, %ebx
je end_power2
movl -4(%ebp), %eax
imull %ecx, %eax
movl %eax, -4(%ebp)
decl %ebx
jmp power_loop_start

end_power2:
movl $1, -4(%ebp)
jmp end_power

end_power:
movl -4(%ebp), %eax
movl %ebp, %esp
popl %ebp
ret
