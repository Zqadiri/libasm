; A system call allows a userspace program to interface with kernel.
; The protection mechanism provided by Linux doesn’t allow a userspace program to directly 
; invoke the Kernel. Instead it needs cooperation with some hardware via software interrupts 
; to transition from userspace to kernel space. 
; This prevents userspace program to interfere with the kernel protection mechanisms.
; https://fasterthanli.me/series/reading-files-the-hard-way/part-2

section .text
 
    global _ft_read
    extern ___error

_ft_read:
    mov rax,  0x02000003    ;  set call to read
    syscall                 ; call rax (read)
    jc exit_error           ;  if doesn't work, read set flags carry to 1 so jmp exit error
   ret

exit_error:
    push rax                ; save errno in the top of the stack 
    call ___error           ; rax is now points to external variable errno.
    pop qword[rax]          ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    mov 	rax, -1			; set return to -1  
	ret