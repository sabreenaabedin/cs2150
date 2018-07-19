;Sabreena Abedin (sa7cx) 3/29/16 mathlib.s   - final

global product
global power

section .text
product:
; Standard prologue
	push  ebp		; Save the old base pointer
	mov   ebp, esp		; Set new value of the base pointer

	
	xor   eax, eax		; Place zero in EAX. 	
	mov   ebx, [ebp+8]	; Put the first arg in ebx
	mov   edx, [ebp+12]	; Put the second arg into EDX = n

	cmp   edx, 0		; If multiplying  by zero, skip to end 
	jle   product_done	; and return zero (already in EAX).
				
product_loop:	
				
	cmp edx, 0		; compare n to 0
	jle product_done	; end if n = 0
	add eax, ebx		; add arg1 
	dec edx			; decrement n
	jmp product_loop
	
product_done:

				; Note - no local variables to dealocate.
	pop   ebp		; Restore the caller's base pointer.
	ret			; Return to the caller.


	
	
power: ; callee prologue
	push  ebp		; Save the old base pointer
	mov   ebp, esp		; Set new value of the base pointer
	push  esi		; Save registers
	push  edi
	push  ecx
	
	xor   eax, eax		; Place zero in EAX. 
	mov   eax, 1
	mov   ebx, [ebp+8]	; Put the first arg in ebx = base
	mov   edx, [ebp+12]	; Put the second arg into ECX = n = exponent

	cmp   edx, 0		; If multiplying  by zero, skip to end 
	jle   power_done	; and return zero (already in EAX).	
	
power_body:	

	cmp  edx, 0		; check if exp = 0
	jle  base_case		; base case
 
	dec  edx		; decrement exponent

	; caller prologue
	push edx		; push parameters 
	push ebx 
	    
	call power		; call
	
	;caller epilogue			
	add esp, 8		; "pop" parameters
	
	
	push eax		; push parameters
	push ebx
	call product		; multiply base times result
	add esp, 8
	jmp power_done		; exit function
	
base_case:
	mov  eax, 1		; return 1
	jmp  power_done		; exit function
		
	
	
power_done: ; callee epilogue
	pop ecx			; Restore registers that we used.
	pop edi
	pop esi
				; Note - no local variables to dealocate.
	pop   ebp		; Restore the caller's base pointer.
	ret			; Return to the caller.


