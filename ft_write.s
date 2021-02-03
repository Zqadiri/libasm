;https://stackoverflow.com/questions/64820365/what-is-the-relation-between-carry-flag-and-syscall-in-assembly-x64-intel-syn

bits 64

section .text

	global _ft_write
	extern ___error

_ft_write:
    mov     rax,  0x02000004   ;  set call to write
    syscall
    jc      exit_error         ; if doesn't work, write set flags carry to 1 so jmp exit error
   	ret                        ; ex 9 EBADF Bad file descriptor.

exit_error:
    push    rax                ; save errno in the top of the stack 
    call    ___error           ; rax is now points to external variable errno.
    pop     qword[rax]         ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    ; mov     [rax], rax
    mov     rax, -1 
	ret
