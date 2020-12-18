; 1st arg           Stack           EBX               RDI            RDI
; 2nd arg           Stack           ECX               RSI            RSI
; 3rd arg           Stack           EDX               RDX            RDX
; 4th arg           Stack           ESI               RCX            R10
; 5th arg           Stack           EDI               R8             R8
; 6th arg           Stack           EBP               R9  

bits 64

section .text

global ft_strcmp
extern ft_strlen
extern _malloc
extern ft_strcpy

ft_strdup:
    call ft_strlen   ; rax get the length of arg0
    mov  rcx, rax    ; move the length to rcx
    inc  rcx         ; inc rcx so we can add \0
    push rdi         ; save the string address into the stack
    mov  rdi, rcx
    call _malloc
    cmp  rax, 0
    je   exit
    pop  rsi 
    mov  rdi, rax
    call ft_strcpy
    jmp  exit

exit:
    ret