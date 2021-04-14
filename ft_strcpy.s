global _ft_strcpy
    section .text

; ft_strcpy  [arg0 = rdi = dst, arg1 = rsi = src]
; https://www.cs.uaf.edu/courses/cs301/2014-fall/notes/pointer-arithmetic/#:~:text=Pointers%20in%20assembly%20language%20have,just%20a%20number%20in%20rax.&text=To%20get%20to%20the%20next%2064%2Dbit%20long%2C%20add,eight%20bytes%20to%20the%20pointer.

_ft_strcpy:
    xor rax, rax            

loop:
    mov cl, byte[rsi + rax]     ; cl will store our src[i] data
    cmp cl, 0
    je  exit
    mov byte[rdi + rax], cl     ; copy src[i] on dst[i] 
    inc rax                     ; increment rax (rax works here as a pointer)
    jmp loop

exit:
	mov byte[rdi + rax], 0
    mov rax, rdi                ; returns a pointer to destination string (dest)
    ret