    .section .data
msg:
    .string "Hello, World!\n"

    .section .text
    .globl main
    .extern printf

main:
    lea msg(%rip), %rdi      # load address of msg into %rdi
    xor %eax, %eax           # clear %eax (varargs ABI requirement)
    call printf
    mov $0, %eax
    ret
