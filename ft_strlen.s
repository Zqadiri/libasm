 
global _ft_strlen

section .text

_ft_strlen:
    ; move 0 to rax (Values are returned from functions in this register)
    mov rax, 0
    ; jump to strlen function
    jmp start

start:
    ; check if at rdi(string arg) + rax (count arg) equal to 0 
    cmp byte [rdi + rax], 0 
    ;jump to exit if equal to zero
    je  exit
    ; incremant rax by 1
    inc rax
    ; jump to strlen and start again with rax + 1
    jmp start
 
exit:
    ;return rax
    ret