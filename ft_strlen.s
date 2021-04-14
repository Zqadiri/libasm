global _ft_strlen
    section .text

_ft_strlen:
    xor     rax, rax
    ; XORing an operand with itself changes the operand to 0. This is used to clear a register

start:
    cmp     byte [rdi + rax], 0 ; if the first byte equal to 0 (null) jump to ret
    ; byte [register] means go out to memory and grab one byte at the address stored in the register
    je      exit
    inc     rax                 ; increment rax (rax works here as a pointer)
    jmp     start

exit:
    ret