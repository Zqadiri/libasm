; 1st arg           Stack           EBX               RDI            RDI
; 2nd arg           Stack           ECX               RSI            RSI
; 3rd arg           Stack           EDX               RDX            RDX
; 4th arg           Stack           ESI               RCX            R10
; 5th arg           Stack           EDI               R8             R8
; 6th arg           Stack           EBP               R9  

bits 64

global ft_strlen

section .text

start:
    ; move 0 to rax (Values are returned from functions in this register)
    mov rax, 0
    ; jump to strlen function
    jmp strlen

strlen:
    ; check if at rdi(string arg) + rax (count arg) equal to 0 
    cmp byte [rdi + rax], 0 
    ;jump to exit if equal to zero
    je  exit
    ; incremant rax by 1
    inc rax
    ; jump to strlen and start again with rax + 1
    jmp strlen
    
exit:
    ;return rax
    ret
