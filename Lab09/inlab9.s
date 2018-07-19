	.file	"inlab9.cpp"
	.intel_syntax noprefix
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN6ParentC2Ev,"axG",@progbits,_ZN6ParentC5Ev,comdat
	.align 2
	.weak	_ZN6ParentC2Ev
	.type	_ZN6ParentC2Ev, @function
_ZN6ParentC2Ev:
.LFB972:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV6Parent+8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE972:
	.size	_ZN6ParentC2Ev, .-_ZN6ParentC2Ev
	.weak	_ZN6ParentC1Ev
	.set	_ZN6ParentC1Ev,_ZN6ParentC2Ev
	.section	.text._ZN6Parent3addEv,"axG",@progbits,_ZN6Parent3addEv,comdat
	.align 2
	.weak	_ZN6Parent3addEv
	.type	_ZN6Parent3addEv, @function
_ZN6Parent3addEv:
.LFB974:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax+4]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE974:
	.size	_ZN6Parent3addEv, .-_ZN6Parent3addEv
	.section	.text._ZN6Parent4multEv,"axG",@progbits,_ZN6Parent4multEv,comdat
	.align 2
	.weak	_ZN6Parent4multEv
	.type	_ZN6Parent4multEv, @function
_ZN6Parent4multEv:
.LFB975:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, edx
	sal	eax, 2
	add	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE975:
	.size	_ZN6Parent4multEv, .-_ZN6Parent4multEv
	.section	.text._ZN6MiddleC2Ev,"axG",@progbits,_ZN6MiddleC5Ev,comdat
	.align 2
	.weak	_ZN6MiddleC2Ev
	.type	_ZN6MiddleC2Ev, @function
_ZN6MiddleC2Ev:
.LFB977:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV6Middle+8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], 8
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE977:
	.size	_ZN6MiddleC2Ev, .-_ZN6MiddleC2Ev
	.weak	_ZN6MiddleC1Ev
	.set	_ZN6MiddleC1Ev,_ZN6MiddleC2Ev
	.section	.text._ZN6Middle3addEv,"axG",@progbits,_ZN6Middle3addEv,comdat
	.align 2
	.weak	_ZN6Middle3addEv
	.type	_ZN6Middle3addEv, @function
_ZN6Middle3addEv:
.LFB979:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax+4]
	lea	edx, [eax+2]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE979:
	.size	_ZN6Middle3addEv, .-_ZN6Middle3addEv
	.section	.text._ZN6Middle4multEv,"axG",@progbits,_ZN6Middle4multEv,comdat
	.align 2
	.weak	_ZN6Middle4multEv
	.type	_ZN6Middle4multEv, @function
_ZN6Middle4multEv:
.LFB980:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+4], edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE980:
	.size	_ZN6Middle4multEv, .-_ZN6Middle4multEv
	.section	.text._ZN5ChildC2Ev,"axG",@progbits,_ZN5ChildC5Ev,comdat
	.align 2
	.weak	_ZN5ChildC2Ev
	.type	_ZN5ChildC2Ev, @function
_ZN5ChildC2Ev:
.LFB982:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_ZN6ParentC2Ev
	mov	eax, DWORD PTR [ebp+8]
	add	eax, 8
	mov	DWORD PTR [esp], eax
	call	_ZN6MiddleC2Ev
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], OFFSET FLAT:_ZTV5Child+8
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+8], OFFSET FLAT:_ZTV5Child+24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+16], 9
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE982:
	.size	_ZN5ChildC2Ev, .-_ZN5ChildC2Ev
	.weak	_ZN5ChildC1Ev
	.set	_ZN5ChildC1Ev,_ZN5ChildC2Ev
	.section	.text._ZN5Child3addEv,"axG",@progbits,_ZN5Child3addEv,comdat
	.align 2
	.weak	_ZN5Child3addEv
	.type	_ZN5Child3addEv, @function
_ZN5Child3addEv:
.LFB984:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax+16]
	lea	edx, [eax+3]
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+16], edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE984:
	.size	_ZN5Child3addEv, .-_ZN5Child3addEv
	.set	.LTHUNK0,_ZN5Child3addEv
	.weak	_ZThn8_N5Child3addEv
	.type	_ZThn8_N5Child3addEv, @function
_ZThn8_N5Child3addEv:
.LFB997:
	.cfi_startproc
	sub	DWORD PTR [esp+4], 8
	jmp	.LTHUNK0
	.cfi_endproc
.LFE997:
	.size	_ZThn8_N5Child3addEv, .-_ZThn8_N5Child3addEv
	.section	.text._ZN5Child4multEv,"axG",@progbits,_ZN5Child4multEv,comdat
	.align 2
	.weak	_ZN5Child4multEv
	.type	_ZN5Child4multEv, @function
_ZN5Child4multEv:
.LFB985:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax+16]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	add	eax, eax
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax+16], edx
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE985:
	.size	_ZN5Child4multEv, .-_ZN5Child4multEv
	.set	.LTHUNK1,_ZN5Child4multEv
	.weak	_ZThn8_N5Child4multEv
	.type	_ZThn8_N5Child4multEv, @function
_ZThn8_N5Child4multEv:
.LFB998:
	.cfi_startproc
	sub	DWORD PTR [esp+4], 8
	jmp	.LTHUNK1
	.cfi_endproc
.LFE998:
	.size	_ZThn8_N5Child4multEv, .-_ZThn8_N5Child4multEv
	.section	.rodata
.LC0:
	.string	"enter 0 or 1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB986:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	and	esp, -16
	sub	esp, 32
	.cfi_offset 3, -12
	mov	DWORD PTR [esp+4], OFFSET FLAT:.LC0
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	DWORD PTR [esp], eax
	call	_ZNSolsEPFRSoS_E
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:_ZSt3cin
	call	_ZNSirsERi
	mov	eax, DWORD PTR [esp+24]
	test	eax, eax
	jne	.L11
	mov	DWORD PTR [esp], 8
	call	_Znwj
	mov	ebx, eax
	mov	DWORD PTR [esp], ebx
	call	_ZN6ParentC1Ev
	mov	DWORD PTR [esp+28], ebx
	jmp	.L12
.L11:
	mov	DWORD PTR [esp], 20
	call	_Znwj
	mov	ebx, eax
	mov	DWORD PTR [esp], ebx
	call	_ZN5ChildC1Ev
	mov	DWORD PTR [esp+28], ebx
.L12:
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [eax]
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], edx
	call	eax
	mov	eax, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [eax]
	add	eax, 4
	mov	eax, DWORD PTR [eax]
	mov	edx, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], edx
	call	eax
	mov	eax, 0
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE986:
	.size	main, .-main
	.weak	_ZTV5Child
	.section	.rodata._ZTV5Child,"aG",@progbits,_ZTV5Child,comdat
	.align 32
	.type	_ZTV5Child, @object
	.size	_ZTV5Child, 32
_ZTV5Child:
	.long	0
	.long	_ZTI5Child
	.long	_ZN5Child3addEv
	.long	_ZN5Child4multEv
	.long	-8
	.long	_ZTI5Child
	.long	_ZThn8_N5Child3addEv
	.long	_ZThn8_N5Child4multEv
	.weak	_ZTV6Middle
	.section	.rodata._ZTV6Middle,"aG",@progbits,_ZTV6Middle,comdat
	.align 8
	.type	_ZTV6Middle, @object
	.size	_ZTV6Middle, 16
_ZTV6Middle:
	.long	0
	.long	_ZTI6Middle
	.long	_ZN6Middle3addEv
	.long	_ZN6Middle4multEv
	.weak	_ZTV6Parent
	.section	.rodata._ZTV6Parent,"aG",@progbits,_ZTV6Parent,comdat
	.align 8
	.type	_ZTV6Parent, @object
	.size	_ZTV6Parent, 16
_ZTV6Parent:
	.long	0
	.long	_ZTI6Parent
	.long	_ZN6Parent3addEv
	.long	_ZN6Parent4multEv
	.weak	_ZTS5Child
	.section	.rodata._ZTS5Child,"aG",@progbits,_ZTS5Child,comdat
	.type	_ZTS5Child, @object
	.size	_ZTS5Child, 7
_ZTS5Child:
	.string	"5Child"
	.weak	_ZTI5Child
	.section	.rodata._ZTI5Child,"aG",@progbits,_ZTI5Child,comdat
	.align 32
	.type	_ZTI5Child, @object
	.size	_ZTI5Child, 32
_ZTI5Child:
	.long	_ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.long	_ZTS5Child
	.long	0
	.long	2
	.long	_ZTI6Parent
	.long	2
	.long	_ZTI6Middle
	.long	2050
	.weak	_ZTS6Middle
	.section	.rodata._ZTS6Middle,"aG",@progbits,_ZTS6Middle,comdat
	.type	_ZTS6Middle, @object
	.size	_ZTS6Middle, 8
_ZTS6Middle:
	.string	"6Middle"
	.weak	_ZTI6Middle
	.section	.rodata._ZTI6Middle,"aG",@progbits,_ZTI6Middle,comdat
	.align 4
	.type	_ZTI6Middle, @object
	.size	_ZTI6Middle, 8
_ZTI6Middle:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS6Middle
	.weak	_ZTS6Parent
	.section	.rodata._ZTS6Parent,"aG",@progbits,_ZTS6Parent,comdat
	.type	_ZTS6Parent, @object
	.size	_ZTS6Parent, 8
_ZTS6Parent:
	.string	"6Parent"
	.weak	_ZTI6Parent
	.section	.rodata._ZTI6Parent,"aG",@progbits,_ZTI6Parent,comdat
	.align 4
	.type	_ZTI6Parent, @object
	.size	_ZTI6Parent, 8
_ZTI6Parent:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS6Parent
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB995:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	cmp	DWORD PTR [ebp+8], 1
	jne	.L14
	cmp	DWORD PTR [ebp+12], 65535
	jne	.L14
	mov	DWORD PTR [esp], OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	DWORD PTR [esp+8], OFFSET FLAT:__dso_handle
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZStL8__ioinit
	mov	DWORD PTR [esp], OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit
.L14:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE995:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB996:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	DWORD PTR [esp+4], 65535
	mov	DWORD PTR [esp], 1
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE996:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
