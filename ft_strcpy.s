; cl in the low byte of CX (16 bits)

bits 64

section .text

global _ft_strcpy


; ft_strcpy(arg0 = rdi = dst, arg1 = rsi = src)
; rdi will be dest and rsi will be src

_ft_strcpy:
    ; we set rax to zero
    mov rax, 0                  
loop:
    mov cl, byte[rsi + rax]     ; cl will store our src[i] data
    cmp cl, 0                   ; if src[i] == 0 and means that the src string ends
    je exit                     ; jump to finish condition
    mov byte[rdi + rax], cl     ; copy src[i] on dst[i] 
    inc rax
    jmp loop                    ; start over again
exit:
	mov byte[rdi + rax], 0      ; \0 to end the dst string
    mov rax, rdi                ; returns a pointer to destination string (dest)
    ret
