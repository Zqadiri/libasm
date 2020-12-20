; A system call allows a userspace program to interface with kernel.
; The protection mechanism provided by Linux doesn’t allow a userspace program to directly 
; invoke the Kernel. Instead it needs cooperation with some hardware via software interrupts 
; to transition from userspace to kernel space. 
; This prevents userspace program to interfere with the kernel protection mechanisms.
; https://fasterthanli.me/series/reading-files-the-hard-way/part-2

section .text
    global ft_write

ft_write:
	mov r8, rdx				; save rdx = len in r8
	mov rax, 4		        ; set call to write
    syscall					; call rax (write)
	jc exit_error		    ; if doesn't work, write set flags carry to 1 so jmp exit error
	jmp exit				; jump exit

exit_error:
	mov rax, -1				; set return to -1
	ret						; return

exit:
	mov rax, r8				; set previous value of rdx save in r8, in return value
	ret						; return 