; System call is a way to securely switch from user to kernel mode
bits 64

section .text
 
    global _ft_read
    ; extern ___error

_ft_read:
	mov 	rax, 0x2000003	; set call to read
	syscall					; call rax (read)
	jc exit_error		    ; if doesn't work, read set flags carry to errno so jmp exit error
	jmp exit				; jump exit

exit_error:
	mov 	rax, -1			; set return to -1
	ret						; return
	
exit:
	ret	