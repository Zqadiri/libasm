; add enomem
; it tries to allocate enough memory to hold the old string
; (plus a '\0' character to mark the end of the string).

; If the allocation failed, it sets errno to ENOMEM and returns NULL immediately. 
;Setting of errno to ENOMEM is something malloc does in POSIX so we don't need to explicitly do it in our strdup. If you're not POSIX compliant, ISO C doesn't actually mandate the existence of ENOMEM so I haven't included that here(b).

; Otherwise the allocation worked so we copy the old string to the new string(c)
; and return the new address (which the caller is responsible for freeing at some point).

bits 64

section .text

global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_strcpy
extern ___error

_ft_strdup:
	call _ft_strlen
	cmp rax, 0
	inc rax
	push rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je _exit
	pop rdi
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	ret
_exit:
	call ___error
	mov rdi, 12
	mov [rax], rdi
	mov rax, 0
	ret