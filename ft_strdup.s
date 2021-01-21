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

_ft_strdup:
    call _ft_strlen   ; rax get the length of arg0
    mov  rcx, rax    ; move the length to rcx
    inc  rcx         ; inc rcx so we can add \0
    push rdi         ; save the string address into the stack
    mov  rdi, rcx
    call _malloc
    cmp  rax, 0
    je   exit
    pop  rsi 
    mov  rdi, rax
    call _ft_strcpy
    jmp  exit

exit:
    ret