; 1st arg           Stack           EBX               RDI            RDI
; 2nd arg           Stack           ECX               RSI            RSI
; 3rd arg           Stack           EDX               RDX            RDX
; 4th arg           Stack           ESI               RCX            R10
; 5th arg           Stack           EDI               R8             R8
; 6th arg           Stack           EBP               R9  
; cl in the low byte of CX (16 bits)
bits 64

global ft_strcpy

section .text
; ft_strcpy(arg0 = rdi = dst, arg1 = rsi = src)
; rdi will be dest and rsi will be src
ft_strcpy:
    ; we set rax to zero
    mov rax, 0                  
loop:
    mov cl, byte[rsi + rax]     ; cl will store our src[i] data
    cmp cl, 0                   ; if src[i] == 0 and means that the src string ends
    je exit                     ; jump to finish condition
    mov byte[rdi + rax], cl     ; copy src[i] on dst[i] 
    inc rax                     ; i++
    jmp loop                    ; start over again
exit:
	mov byte[rdi + rax], 0      ; \0 to end the dst string
    mov rax, rdi                ; returns a pointer to destination string (dest)
    ret
