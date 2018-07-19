	.file	"postlab9.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	_Z14multiplicationii
	.type	_Z14multiplicationii, @function
_Z14multiplicationii:
.LFB0:
	.cfi_startproc
	mov	eax, DWORD PTR [esp+8]
	imul	eax, DWORD PTR [esp+4]
	ret
	.cfi_endproc
.LFE0:
	.size	_Z14multiplicationii, .-_Z14multiplicationii
	.p2align 4,,15
	.globl	_Z4propv
	.type	_Z4propv, @function
_Z4propv:
.LFB1:
	.cfi_startproc
	mov	eax, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z4propv, .-_Z4propv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	xor	eax, eax
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
