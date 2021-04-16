; system calls are requests the program can pass to an OS to carry out
; some tasks the the program itself can't do

global _ft_write
extern ___error

    section .text

_ft_write:
    mov     rax,  0x02000004   ;  mov the syscall number to the register
    syscall                     
    ; the kernel syscall will set or clear the carry flag {to 1} according to whether an error occurred
    jc      exit_error
   	ret                        ; if no error occurred, rax contains the system call's return value in this case the number of bytes written is returned

exit_error:
    push    rax                ; if an error did occur, eax contains the error code (it's normally a 32-bit value, since errno is an int)
    call    ___error           ; retrieve address to errno
    pop     qword[rax]         ; The QWORD PTR is just a size specifier (It means that a 64 bit value is read from the address)
    mov     rax, -1
	ret