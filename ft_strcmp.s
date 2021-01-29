bits 64

section .text

	global _ft_strcmp

_ft_strcmp:
	mov 	rax, 0
	jmp		compare

compare:
	mov		al, BYTE[rdi] 
	mov		bl, BYTE[rsi] 
	cmp		al, 0			  
	je		exit			
	cmp		bl, 0
	je		exit			
	cmp 	al, bl
	jne 	exit
	inc 	rdi
	inc 	rsi
	jmp 	compare

exit:	
    movzx	rax, al			
    movzx	rbx, bl
    sub		rax, rbx		; stock the difference of rax and rbx in rax
	ret