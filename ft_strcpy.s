bits 64

section .text

    global _ft_strcpy

; ft_strcpy(arg0 = rdi = dst, arg1 = rsi = src)
; rdi will be dest and rsi will be src
; cl in the low byte of rcx (16 bits)

_ft_strcpy:
    mov rax, 0            

loop:
    mov cl, byte[rsi + rax]     ; cl will store our src[i] data
    cmp cl, 0
    je exit
    mov byte[rdi + rax], cl     ; copy src[i] on dst[i] 
    inc rax
    jmp loop

exit:
	mov byte[rdi + rax], 0
    mov rax, rdi                ; returns a pointer to destination string (dest)
    ret