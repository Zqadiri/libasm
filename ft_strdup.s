bits 64

section .text

global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcpy
extern ___error

_ft_strdup:
	call _ft_strlen
	inc rax
	push rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je _exit
	pop rsi
	mov rdi, rax
	call _ft_strcpy
	ret
_exit:
	call ___error
	mov rdi, 12
	mov [rax], rdi
	mov rax, 0
	ret