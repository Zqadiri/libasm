; 1st arg           Stack           EBX               RDI            RDI
; 2nd arg           Stack           ECX               RSI            RSI
; 3rd arg           Stack           EDX               RDX            RDX
; 4th arg           Stack           ESI               RCX            R10
; 5th arg           Stack           EDI               R8             R8
; 6th arg           Stack           EBP               R9  

; Copies the contents of the source operand (register or memory location) to the destination 
; operand (register) and zero extends the value to 16 or 32 bits
; Sign extension  is the operation  of increasing the number of bits of a binary number 
; while preserving the number's sign (positive/negative) and value. 
; A similar concept is zero extension (abbreviated as zext). In a move or convert operation,
; zero extension refers to setting the high bits of the destination to zero, 
; rather than setting them to a copy of the most significant bit of the source. 
; If the source of the operation is an unsigned number, 
; then zero extension is usually the correct way to move it to a larger field while
; preserving its numeric value,
; while sign extension is correct for signed numbers.

bits 64

global ft_strcmp

section .text

ft_strcmp:
	mov 	rax, 0		; set rax to 0
	jmp		compare		; call compare

compare:
	mov		al, BYTE [rdi]	; al is the least significant byte in ax (8 bits)
	mov		bl, BYTE [rsi]	; bl is the least significant byte in bx (8 bits)
	cmp		al, 0			; check if we are not in the EOS  of the arg0 (rdi)  
	je		exit			; jump to exit
	cmp		bl, 0			; check if we are not in the EOS  of the arg0 (rsi)
	je		exit			; jump to exit
	cmp 	al, bl			; compare al and bl
	jne 	exit			; jump to exit if not equal
	inc 	rdi				; increment the rdi pointer
	inc 	rsi				; increment the rsi pointer
	jmp 	compare			; call compare

exit:
	
    movzx	rax, al			
    movzx	rbx, bl
    sub		rax, rbx		; stock the difference of rax and rbx in rax
    ;return the difference  
	ret