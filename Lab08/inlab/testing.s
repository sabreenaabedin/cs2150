	.file	"testing.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z13methodbyvalueicPif8TreeNode
	.type	_Z13methodbyvalueicPif8TreeNode, @function
_Z13methodbyvalueicPif8TreeNode:		; method by value callee
.LFB556:
	.cfi_startproc
	push	ebp				; callee prologue
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 4				; does something??
	mov	eax, DWORD PTR [ebp+12]		; DIFFERENT FROM "BY REFERENCE"
	mov	BYTE PTR [ebp-4], al
	leave					; callee epilogue
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE556:
	.size	_Z13methodbyvalueicPif8TreeNode, .-_Z13methodbyvalueicPif8TreeNode
	.globl	_Z17methodbyreferenceRiRcRPiRfR8TreeNode
	.type	_Z17methodbyreferenceRiRcRPiRfR8TreeNode, @function
_Z17methodbyreferenceRiRcRPiRfR8TreeNode:	; method by reference callee
.LFB557:
	.cfi_startproc		
	push	ebp				; callee prologue
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5			; does nothing 
	pop	ebp				; callee epilogue
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE557:
	.size	_Z17methodbyreferenceRiRcRPiRfR8TreeNode, .-_Z17methodbyreferenceRiRcRPiRfR8TreeNode
	.globl	_Z12arraybyvaluePi
	.type	_Z12arraybyvaluePi, @function
_Z12arraybyvaluePi:				; array by value callee
.LFB558:
	.cfi_startproc
	push	ebp				; callee prologue
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5			; does nothing
	pop	ebp				; callee epilogue
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE558:
	.size	_Z12arraybyvaluePi, .-_Z12arraybyvaluePi
	.globl	_Z16arraybyreferenceRA3_i
	.type	_Z16arraybyreferenceRA3_i, @function
_Z16arraybyreferenceRA3_i:			; array by reference callee
.LFB559:
	.cfi_startproc
	push	ebp				; callee prologue
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5			; does nothing
	pop	ebp				; callee epilogue
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE559:
	.size	_Z16arraybyreferenceRA3_i, .-_Z16arraybyreferenceRA3_i
	.section	.text._ZN8TreeNodeD2Ev,"axG",@progbits,_ZN8TreeNodeD5Ev,comdat
	.align 2
	.weak	_ZN8TreeNodeD2Ev
	.type	_ZN8TreeNodeD2Ev, @function
_ZN8TreeNodeD2Ev:				; tree node callee
.LFB562:
	.cfi_startproc
	push	ebp				; callee prologue
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24				
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZNSsD1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE562:
	.size	_ZN8TreeNodeD2Ev, .-_ZN8TreeNodeD2Ev
	.weak	_ZN8TreeNodeD1Ev
	.set	_ZN8TreeNodeD1Ev,_ZN8TreeNodeD2Ev
	.section	.text._ZN8TreeNodeC2ERKS_,"axG",@progbits,_ZN8TreeNodeC5ERKS_,comdat
	.align 2
	.weak	_ZN8TreeNodeC2ERKS_
	.type	_ZN8TreeNodeC2ERKS_, @function
_ZN8TreeNodeC2ERKS_:
.LFB565:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	edx, DWORD PTR [ebp+12]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_ZNSsC1ERKSs
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [eax+8]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+8], edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE565:
	.size	_ZN8TreeNodeC2ERKS_, .-_ZN8TreeNodeC2ERKS_
	.weak	_ZN8TreeNodeC1ERKS_
	.set	_ZN8TreeNodeC1ERKS_,_ZN8TreeNodeC2ERKS_
	.text
	.globl	main
	.type	main, @function
main:
.LFB560:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA560
	push	ebp					; callee epilogue
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi					
	push	ebx					; end callee epilogue
	and	esp, -16				; make space for local variables
	sub	esp, 96
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	DWORD PTR [esp+44], 6			; insert int a = 6 into [stack + 44]
	mov	BYTE PTR [esp+43], 98			; insert 'b' into [stack + 43]
	lea	eax, [esp+44]				; insert get effective address of int a = 6
	mov	DWORD PTR [esp+48], eax			; put that address into pointer variable [stack + 48]
	mov	eax, DWORD PTR .LC0			; create a float and place it in eax- float d = 1.0 
	mov	DWORD PTR [esp+52], eax			; put that value into pointer variable [stack + 52]
	lea	eax, [esp+60]				; load effective address of arr[0]
	mov	DWORD PTR [esp], eax			; put address into pointer variable [stack]
.LEHB0:
	call	_ZN8TreeNodeC1Ev			; call tree node to create "n"
.LEHE0:
	mov	DWORD PTR [esp+72], 0			; place arr[0] = 0 into a pointer variable [stack + 72]
	mov	DWORD PTR [esp+76], 1			; place arr[1] = 1 into a pointer variable [stack + 76]
	mov	DWORD PTR [esp+80], 2			; place arr[2] = 2 into a pointer variable [stack + 80]
	mov	eax, DWORD PTR [esp+72]			; load the pointer address of arr[0] into eax
	mov	DWORD PTR [esp+56], eax			; place the address in eax into a pointer variable [stack + 56]
	lea	eax, [esp+60]				; load address of arr[0], which was stored at [stack + 60]
	mov	DWORD PTR [esp+4], eax			; put it in the variable [stack + 4] so int e = arr[0]
	lea	eax, [esp+84]				; load effective address of 
	mov	DWORD PTR [esp], eax
.LEHB1:
	call	_ZN8TreeNodeC1ERKS_
	mov	eax, DWORD PTR [esp+52]
	mov	ebx, DWORD PTR [esp+48]
	movzx	edx, BYTE PTR [esp+43]
	movsx	ecx, dl
	mov	edx, DWORD PTR [esp+44]			; put int a = 6 into edx
	lea	esi, [esp+84]
	mov	DWORD PTR [esp+16], esi			; place 
	mov	DWORD PTR [esp+12], eax			; place
	mov	DWORD PTR [esp+8], ebx			; place
	mov	DWORD PTR [esp+4], ecx			; place
	mov	DWORD PTR [esp], edx			; place
	call	_Z13methodbyvalueicPif8TreeNode		; call method by value
	lea	eax, [esp+84]				; 
	mov	DWORD PTR [esp], eax
	call	_ZN8TreeNodeD1Ev
.LEHE1:							; loading up parameters for call method by reference
	lea	eax, [esp+60]				; load effective address of TreeNode n
	mov	DWORD PTR [esp+16], eax			; place it in variable [stack + 16]
	lea	eax, [esp+52]				; load effective address of d
	mov	DWORD PTR [esp+12], eax			; place it in variable [stack + 12]
	lea	eax, [esp+48]				; load effective address of c (which is the address of a)
	mov	DWORD PTR [esp+8], eax			; place it in variable [stack + 8]
	lea	eax, [esp+43]				; load effective address of 
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+44]
	mov	DWORD PTR [esp], eax
	call	_Z17methodbyreferenceRiRcRPiRfR8TreeNode; call method by reference
	lea	eax, [esp+72]
	mov	DWORD PTR [esp], eax
	call	_Z12arraybyvaluePi			; call array by value
	lea	eax, [esp+72]
	mov	DWORD PTR [esp], eax
	call	_Z16arraybyreferenceRA3_i		; call array by reference
	mov	ebx, 0
	lea	eax, [esp+60]
	mov	DWORD PTR [esp], eax
.LEHB2:
	call	_ZN8TreeNodeD1Ev
.LEHE2:
	mov	eax, ebx
	jmp	.L12
.L11:
	mov	ebx, eax
	lea	eax, [esp+60]
	mov	DWORD PTR [esp], eax
	call	_ZN8TreeNodeD1Ev
	mov	eax, ebx
	mov	DWORD PTR [esp], eax
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L12:
	lea	esp, [ebp-8]
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE560:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA560:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE560-.LLSDACSB560
.LLSDACSB560:
	.uleb128 .LEHB0-.LFB560
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB560
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB560
	.uleb128 0
	.uleb128 .LEHB2-.LFB560
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB560
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE560:
	.text
	.size	main, .-main
	.section	.rodata
	.align 4
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.long	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
