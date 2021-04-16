global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcpy
extern ___error

	section .text

; ft_strcpy [arg0 = rdi = dst, arg1 = rsi = src]

_ft_strdup:
	call	_ft_strlen
	inc 	rax
	push	rdi				;# rdi --> #1 argument
	mov 	rdi, rax		
	call 	_malloc
	cmp 	rax, 0
	je 		exit
	pop 	rsi
	mov 	rdi, rax
	call 	_ft_strcpy
	ret

exit:
	call 	___error
	mov 	rdi, 12
	mov 	[rax], rdi
	mov 	rax, 0
	ret