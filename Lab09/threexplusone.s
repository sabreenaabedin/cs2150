; Sabreena Abedin (sa7cx) 4/12/16 threexplusone.s - final
; optimizations: writing less lines (no push/pop of unsed registers), remove jump to even, remove jump to done from end of recursion, used shift for divide and and for mod
	global conjecture
	section .text
conjecture: 
	push  ebp		; Save the old base pointer
	mov   ebp, esp		; Set new value of the base pointer
	mov   edx, [ebp+8]	; Put the arg x in edx  (eax is count)
	
conjecture_body:	
	mov eax, 0		; set count to 0
	cmp  edx, 1		; check if x = 1
	jle  conjecture_done	; base case

	mov ecx, edx		; x mod 2
	and ecx, 1
	cmp ecx, 1		 
	je odd			; check if odd
				; continue if even
	shr edx, 1		; x/2
	jmp recurse
odd: 
	imul edx, 3		; edx = 3x + 1
	add edx, 1
	jmp recurse
 
recurse:
	push edx		; push parameter -> x 
	
	call conjecture		; call method
	add eax, 1		; increment count
							
	add esp, 4		; "pop" parameter
				
conjecture_done: 		; callee epilogue
	pop   ebp		; Restore the caller's base pointer.
	ret			; Return to the caller.


