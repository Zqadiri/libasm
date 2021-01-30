bits 64

section .text

	global _ft_strcmp
; al the lower 8bits of the rax 
; bl the lower 8bits of the rbx

_ft_strcmp:
	mov 	rax, 0

compare:
	mov		al, byte[rdi] 
	mov		bl, byte[rsi] 
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
    sub		rax, rbx		
	ret