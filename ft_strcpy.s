global _ft_strcpy
   
    section .text

; ft_strcpy  [arg0 = rdi = dst, arg1 = rsi = src]

_ft_strcpy:
    xor rax, rax            

loop:
    mov cl, byte[rsi + rax]     ; cl will store our src[i] data
    cmp cl, 0
    je  exit
    mov byte[rdi + rax], cl     ; copy src[i] on dst[i] 
    inc rax                     ; rax works here as a pointer 
    jmp loop

exit:
	mov byte[rdi + rax], 0
    mov rax, rdi 
    ret