bits 64

section .text
 
    global _ft_read
    extern ___error

_ft_read:
    mov rax,  0x02000003
    syscall
    jc  exit_error
    ret

exit_error:
    push rax
    call ___error
    pop qword[rax]          ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    mov 	rax, -1			; set return to -1  
	ret