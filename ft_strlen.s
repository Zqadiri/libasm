bits 64

section .text

    global _ft_strlen

_ft_strlen:
    mov     rax, 0

start:
    cmp     byte [rdi + rax], 0 
    je      exit
    inc     rax
    jmp     start
 
exit:
    ret