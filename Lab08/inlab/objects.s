	.file	"objects.cpp"
	.intel_syntax noprefix
	.text
.Ltext0:
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	main
	.type	main, @function
main:
.LFB971:
	.file 1 "objects.cpp"
	.loc 1 9 0
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA971
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	esi
	push	ebx
	and	esp, -16
	sub	esp, 80
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LBB2:
	.loc 1 11 0
	lea	eax, [esp+32]
	mov	DWORD PTR [esp], eax
.LEHB0:
	call	_ZN8subclassC1Ev
	.loc 1 12 0
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+56], eax
	mov	DWORD PTR [esp], 24
	call	_Znwj
.LEHE0:
	mov	ebx, eax
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], ebx
.LEHB1:
	call	_ZN9testclassC1E8subclass
.LEHE1:
	.loc 1 12 0 is_stmt 0 discriminator 2
	mov	DWORD PTR [esp+40], ebx
	.loc 1 13 0 is_stmt 1 discriminator 2
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+56]
	mov	DWORD PTR [esp], eax
.LEHB2:
	call	_ZN9testclassC1E8subclass
	.loc 1 16 0 discriminator 2
	mov	eax, DWORD PTR [esp+40]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [esp+44], eax
	.loc 1 17 0 discriminator 2
	mov	eax, DWORD PTR [esp+40]
	movzx	eax, BYTE PTR [eax+4]
	mov	BYTE PTR [esp+30], al
	.loc 1 18 0 discriminator 2
	mov	eax, DWORD PTR [esp+40]
	mov	eax, DWORD PTR [eax+8]
	mov	DWORD PTR [esp+36], eax
	.loc 1 21 0 discriminator 2
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp], eax
	call	_ZN9testclass6getintEv
	mov	DWORD PTR [esp+48], eax
	.loc 1 22 0 discriminator 2
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp], eax
	call	_ZN9testclass7getcharEv
	mov	BYTE PTR [esp+31], al
	.loc 1 24 0 discriminator 2
	call	_Z6markerv
	.loc 1 25 0 discriminator 2
	lea	eax, [esp+56]
	mov	DWORD PTR [esp], eax
	call	_ZN9testclass6getintEv
	mov	DWORD PTR [esp+52], eax
	.loc 1 27 0 discriminator 2
	mov	eax, 0
	jmp	.L5
.L4:
	mov	esi, eax
	.loc 1 12 0
	mov	DWORD PTR [esp], ebx
	call	_ZdlPv
	mov	eax, esi
	mov	DWORD PTR [esp], eax
	call	_Unwind_Resume
.LEHE2:
.L5:
.LBE2:
	.loc 1 28 0
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
.LFE971:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA971:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE971-.LLSDACSB971
.LLSDACSB971:
	.uleb128 .LEHB0-.LFB971
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB971
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB971
	.uleb128 0
	.uleb128 .LEHB2-.LFB971
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE971:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB972:
	.loc 1 28 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	.loc 1 28 0
	cmp	DWORD PTR [ebp+8], 1
	jne	.L6
	.loc 1 28 0 is_stmt 0 discriminator 1
	cmp	DWORD PTR [ebp+12], 65535
	jne	.L6
	.file 2 "/usr/include/c++/4.8/iostream"
	.loc 2 74 0 is_stmt 1
	mov	DWORD PTR [esp], OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	DWORD PTR [esp+8], OFFSET FLAT:__dso_handle
	mov	DWORD PTR [esp+4], OFFSET FLAT:_ZStL8__ioinit
	mov	DWORD PTR [esp], OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit
.L6:
	.loc 1 28 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE972:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB973:
	.loc 1 28 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	.loc 1 28 0
	mov	DWORD PTR [esp+4], 65535
	mov	DWORD PTR [esp], 1
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE973:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I_main
	.text
.Letext0:
	.file 3 "/usr/include/stdio.h"
	.file 4 "/usr/lib/gcc/i686-linux-gnu/4.8/include/stdarg.h"
	.file 5 "/usr/lib/gcc/i686-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/wchar.h"
	.file 7 "/usr/include/c++/4.8/cwchar"
	.file 8 "/usr/include/i386-linux-gnu/c++/4.8/bits/c++config.h"
	.file 9 "/usr/include/c++/4.8/clocale"
	.file 10 "/usr/include/c++/4.8/bits/ios_base.h"
	.file 11 "/usr/include/c++/4.8/cwctype"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/c++/4.8/ext/new_allocator.h"
	.file 14 "/usr/include/c++/4.8/ext/numeric_traits.h"
	.file 15 "/usr/include/c++/4.8/debug/debug.h"
	.file 16 "/usr/include/locale.h"
	.file 17 "/usr/include/i386-linux-gnu/bits/types.h"
	.file 18 "/usr/include/i386-linux-gnu/c++/4.8/bits/atomic_word.h"
	.file 19 "/usr/include/wctype.h"
	.file 20 "subclass.h"
	.file 21 "testclass.h"
	.file 22 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x13a4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF225
	.byte	0x4
	.long	.LASF226
	.long	.LASF227
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF228
	.uleb128 0x3
	.long	.LASF0
	.byte	0x3
	.byte	0x40
	.long	0x25
	.uleb128 0x3
	.long	.LASF1
	.byte	0x4
	.byte	0x28
	.long	0x40
	.uleb128 0x4
	.byte	0x4
	.long	.LASF229
	.long	0x4a
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF2
	.byte	0x5
	.byte	0xd4
	.long	0x5c
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.long	.LASF5
	.byte	0x5
	.value	0x161
	.long	0x5c
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x53
	.long	.LASF230
	.long	0xb3
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0x56
	.long	0x9a
	.uleb128 0x9
	.long	.LASF6
	.byte	0x6
	.byte	0x58
	.long	0x5c
	.uleb128 0x9
	.long	.LASF7
	.byte	0x6
	.byte	0x5c
	.long	0xb3
	.byte	0
	.uleb128 0xa
	.long	.LASF8
	.byte	0x6
	.byte	0x54
	.long	0xca
	.byte	0
	.uleb128 0xa
	.long	.LASF9
	.byte	0x6
	.byte	0x5d
	.long	0x7b
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	0x4a
	.long	0xc3
	.uleb128 0xc
	.long	0xc3
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF11
	.byte	0x6
	.byte	0x5e
	.long	0x6f
	.uleb128 0x3
	.long	.LASF12
	.byte	0x6
	.byte	0x6a
	.long	0xd1
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF13
	.uleb128 0xe
	.long	0xca
	.uleb128 0xf
	.byte	0x4
	.long	0xf9
	.uleb128 0xe
	.long	0x4a
	.uleb128 0x10
	.string	"std"
	.byte	0x16
	.byte	0
	.long	0x64e
	.uleb128 0x11
	.byte	0x7
	.byte	0x40
	.long	0xdc
	.uleb128 0x11
	.byte	0x7
	.byte	0x8b
	.long	0x63
	.uleb128 0x11
	.byte	0x7
	.byte	0x8d
	.long	0x64e
	.uleb128 0x11
	.byte	0x7
	.byte	0x8e
	.long	0x664
	.uleb128 0x11
	.byte	0x7
	.byte	0x8f
	.long	0x680
	.uleb128 0x11
	.byte	0x7
	.byte	0x90
	.long	0x6ad
	.uleb128 0x11
	.byte	0x7
	.byte	0x91
	.long	0x6c8
	.uleb128 0x11
	.byte	0x7
	.byte	0x92
	.long	0x6ee
	.uleb128 0x11
	.byte	0x7
	.byte	0x93
	.long	0x709
	.uleb128 0x11
	.byte	0x7
	.byte	0x94
	.long	0x725
	.uleb128 0x11
	.byte	0x7
	.byte	0x95
	.long	0x741
	.uleb128 0x11
	.byte	0x7
	.byte	0x96
	.long	0x757
	.uleb128 0x11
	.byte	0x7
	.byte	0x97
	.long	0x763
	.uleb128 0x11
	.byte	0x7
	.byte	0x98
	.long	0x789
	.uleb128 0x11
	.byte	0x7
	.byte	0x99
	.long	0x7ae
	.uleb128 0x11
	.byte	0x7
	.byte	0x9a
	.long	0x7cf
	.uleb128 0x11
	.byte	0x7
	.byte	0x9b
	.long	0x7fa
	.uleb128 0x11
	.byte	0x7
	.byte	0x9c
	.long	0x815
	.uleb128 0x11
	.byte	0x7
	.byte	0x9e
	.long	0x82b
	.uleb128 0x11
	.byte	0x7
	.byte	0xa0
	.long	0x84c
	.uleb128 0x11
	.byte	0x7
	.byte	0xa1
	.long	0x868
	.uleb128 0x11
	.byte	0x7
	.byte	0xa2
	.long	0x883
	.uleb128 0x11
	.byte	0x7
	.byte	0xa4
	.long	0x8a3
	.uleb128 0x11
	.byte	0x7
	.byte	0xa7
	.long	0x8c3
	.uleb128 0x11
	.byte	0x7
	.byte	0xaa
	.long	0x8e8
	.uleb128 0x11
	.byte	0x7
	.byte	0xac
	.long	0x908
	.uleb128 0x11
	.byte	0x7
	.byte	0xae
	.long	0x923
	.uleb128 0x11
	.byte	0x7
	.byte	0xb0
	.long	0x93e
	.uleb128 0x11
	.byte	0x7
	.byte	0xb1
	.long	0x964
	.uleb128 0x11
	.byte	0x7
	.byte	0xb2
	.long	0x97e
	.uleb128 0x11
	.byte	0x7
	.byte	0xb3
	.long	0x998
	.uleb128 0x11
	.byte	0x7
	.byte	0xb4
	.long	0x9b2
	.uleb128 0x11
	.byte	0x7
	.byte	0xb5
	.long	0x9cc
	.uleb128 0x11
	.byte	0x7
	.byte	0xb6
	.long	0x9e6
	.uleb128 0x11
	.byte	0x7
	.byte	0xb7
	.long	0xaa6
	.uleb128 0x11
	.byte	0x7
	.byte	0xb8
	.long	0xabc
	.uleb128 0x11
	.byte	0x7
	.byte	0xb9
	.long	0xadb
	.uleb128 0x11
	.byte	0x7
	.byte	0xba
	.long	0xafa
	.uleb128 0x11
	.byte	0x7
	.byte	0xbb
	.long	0xb19
	.uleb128 0x11
	.byte	0x7
	.byte	0xbc
	.long	0xb44
	.uleb128 0x11
	.byte	0x7
	.byte	0xbd
	.long	0xb5f
	.uleb128 0x11
	.byte	0x7
	.byte	0xbf
	.long	0xb87
	.uleb128 0x11
	.byte	0x7
	.byte	0xc1
	.long	0xba9
	.uleb128 0x11
	.byte	0x7
	.byte	0xc2
	.long	0xbc9
	.uleb128 0x11
	.byte	0x7
	.byte	0xc3
	.long	0xbf0
	.uleb128 0x11
	.byte	0x7
	.byte	0xc4
	.long	0xc17
	.uleb128 0x11
	.byte	0x7
	.byte	0xc5
	.long	0xc36
	.uleb128 0x11
	.byte	0x7
	.byte	0xc6
	.long	0xc4c
	.uleb128 0x11
	.byte	0x7
	.byte	0xc7
	.long	0xc6c
	.uleb128 0x11
	.byte	0x7
	.byte	0xc8
	.long	0xc8c
	.uleb128 0x11
	.byte	0x7
	.byte	0xc9
	.long	0xcac
	.uleb128 0x11
	.byte	0x7
	.byte	0xca
	.long	0xccc
	.uleb128 0x11
	.byte	0x7
	.byte	0xcb
	.long	0xce3
	.uleb128 0x11
	.byte	0x7
	.byte	0xcc
	.long	0xcfa
	.uleb128 0x11
	.byte	0x7
	.byte	0xcd
	.long	0xd18
	.uleb128 0x11
	.byte	0x7
	.byte	0xce
	.long	0xd37
	.uleb128 0x11
	.byte	0x7
	.byte	0xcf
	.long	0xd55
	.uleb128 0x11
	.byte	0x7
	.byte	0xd0
	.long	0xd74
	.uleb128 0x12
	.byte	0x7
	.value	0x108
	.long	0xecd
	.uleb128 0x12
	.byte	0x7
	.value	0x109
	.long	0xeef
	.uleb128 0x12
	.byte	0x7
	.value	0x10a
	.long	0xf16
	.uleb128 0x13
	.long	.LASF231
	.byte	0xf
	.byte	0x30
	.uleb128 0x3
	.long	.LASF2
	.byte	0x8
	.byte	0xba
	.long	0x5c
	.uleb128 0x11
	.byte	0x9
	.byte	0x35
	.long	0xf6c
	.uleb128 0x11
	.byte	0x9
	.byte	0x36
	.long	0x1099
	.uleb128 0x11
	.byte	0x9
	.byte	0x37
	.long	0x10b3
	.uleb128 0x3
	.long	.LASF14
	.byte	0x8
	.byte	0xbb
	.long	0xca
	.uleb128 0x14
	.long	.LASF34
	.byte	0x4
	.byte	0xa
	.byte	0x33
	.long	0x378
	.uleb128 0x15
	.long	.LASF15
	.sleb128 1
	.uleb128 0x15
	.long	.LASF16
	.sleb128 2
	.uleb128 0x15
	.long	.LASF17
	.sleb128 4
	.uleb128 0x15
	.long	.LASF18
	.sleb128 8
	.uleb128 0x15
	.long	.LASF19
	.sleb128 16
	.uleb128 0x15
	.long	.LASF20
	.sleb128 32
	.uleb128 0x15
	.long	.LASF21
	.sleb128 64
	.uleb128 0x15
	.long	.LASF22
	.sleb128 128
	.uleb128 0x15
	.long	.LASF23
	.sleb128 256
	.uleb128 0x15
	.long	.LASF24
	.sleb128 512
	.uleb128 0x15
	.long	.LASF25
	.sleb128 1024
	.uleb128 0x15
	.long	.LASF26
	.sleb128 2048
	.uleb128 0x15
	.long	.LASF27
	.sleb128 4096
	.uleb128 0x15
	.long	.LASF28
	.sleb128 8192
	.uleb128 0x15
	.long	.LASF29
	.sleb128 16384
	.uleb128 0x15
	.long	.LASF30
	.sleb128 176
	.uleb128 0x15
	.long	.LASF31
	.sleb128 74
	.uleb128 0x15
	.long	.LASF32
	.sleb128 260
	.uleb128 0x15
	.long	.LASF33
	.sleb128 65536
	.byte	0
	.uleb128 0x14
	.long	.LASF35
	.byte	0x4
	.byte	0xa
	.byte	0x67
	.long	0x3b1
	.uleb128 0x15
	.long	.LASF36
	.sleb128 1
	.uleb128 0x15
	.long	.LASF37
	.sleb128 2
	.uleb128 0x15
	.long	.LASF38
	.sleb128 4
	.uleb128 0x15
	.long	.LASF39
	.sleb128 8
	.uleb128 0x15
	.long	.LASF40
	.sleb128 16
	.uleb128 0x15
	.long	.LASF41
	.sleb128 32
	.uleb128 0x15
	.long	.LASF42
	.sleb128 65536
	.byte	0
	.uleb128 0x14
	.long	.LASF43
	.byte	0x4
	.byte	0xa
	.byte	0x8f
	.long	0x3de
	.uleb128 0x15
	.long	.LASF44
	.sleb128 0
	.uleb128 0x15
	.long	.LASF45
	.sleb128 1
	.uleb128 0x15
	.long	.LASF46
	.sleb128 2
	.uleb128 0x15
	.long	.LASF47
	.sleb128 4
	.uleb128 0x15
	.long	.LASF48
	.sleb128 65536
	.byte	0
	.uleb128 0x14
	.long	.LASF49
	.byte	0x4
	.byte	0xa
	.byte	0xb5
	.long	0x405
	.uleb128 0x15
	.long	.LASF50
	.sleb128 0
	.uleb128 0x15
	.long	.LASF51
	.sleb128 1
	.uleb128 0x15
	.long	.LASF52
	.sleb128 2
	.uleb128 0x15
	.long	.LASF53
	.sleb128 65536
	.byte	0
	.uleb128 0x16
	.long	.LASF232
	.long	0x611
	.uleb128 0x17
	.long	.LASF146
	.byte	0x1
	.byte	0xa
	.value	0x215
	.byte	0x1
	.long	0x464
	.uleb128 0x18
	.long	.LASF54
	.byte	0xa
	.value	0x21d
	.long	0x10d1
	.uleb128 0x18
	.long	.LASF55
	.byte	0xa
	.value	0x21e
	.long	0xf65
	.uleb128 0x19
	.long	.LASF146
	.byte	0xa
	.value	0x219
	.byte	0x1
	.long	0x445
	.long	0x44b
	.uleb128 0x1a
	.long	0x10e6
	.byte	0
	.uleb128 0x1b
	.long	.LASF79
	.byte	0xa
	.value	0x21a
	.byte	0x1
	.long	0x458
	.uleb128 0x1a
	.long	0x10e6
	.uleb128 0x1a
	.long	0xca
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF71
	.byte	0xa
	.byte	0xff
	.long	0x2e9
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF56
	.byte	0xa
	.value	0x102
	.long	0x47e
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x464
	.uleb128 0x1e
	.string	"dec"
	.byte	0xa
	.value	0x105
	.long	0x47e
	.byte	0x1
	.byte	0x2
	.uleb128 0x1d
	.long	.LASF57
	.byte	0xa
	.value	0x108
	.long	0x47e
	.byte	0x1
	.byte	0x4
	.uleb128 0x1e
	.string	"hex"
	.byte	0xa
	.value	0x10b
	.long	0x47e
	.byte	0x1
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF58
	.byte	0xa
	.value	0x110
	.long	0x47e
	.byte	0x1
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF59
	.byte	0xa
	.value	0x114
	.long	0x47e
	.byte	0x1
	.byte	0x20
	.uleb128 0x1e
	.string	"oct"
	.byte	0xa
	.value	0x117
	.long	0x47e
	.byte	0x1
	.byte	0x40
	.uleb128 0x1d
	.long	.LASF60
	.byte	0xa
	.value	0x11b
	.long	0x47e
	.byte	0x1
	.byte	0x80
	.uleb128 0x1f
	.long	.LASF61
	.byte	0xa
	.value	0x11e
	.long	0x47e
	.byte	0x1
	.value	0x100
	.uleb128 0x1f
	.long	.LASF62
	.byte	0xa
	.value	0x122
	.long	0x47e
	.byte	0x1
	.value	0x200
	.uleb128 0x1f
	.long	.LASF63
	.byte	0xa
	.value	0x126
	.long	0x47e
	.byte	0x1
	.value	0x400
	.uleb128 0x1f
	.long	.LASF64
	.byte	0xa
	.value	0x129
	.long	0x47e
	.byte	0x1
	.value	0x800
	.uleb128 0x1f
	.long	.LASF65
	.byte	0xa
	.value	0x12c
	.long	0x47e
	.byte	0x1
	.value	0x1000
	.uleb128 0x1f
	.long	.LASF66
	.byte	0xa
	.value	0x12f
	.long	0x47e
	.byte	0x1
	.value	0x2000
	.uleb128 0x1f
	.long	.LASF67
	.byte	0xa
	.value	0x133
	.long	0x47e
	.byte	0x1
	.value	0x4000
	.uleb128 0x1d
	.long	.LASF68
	.byte	0xa
	.value	0x136
	.long	0x47e
	.byte	0x1
	.byte	0xb0
	.uleb128 0x1d
	.long	.LASF69
	.byte	0xa
	.value	0x139
	.long	0x47e
	.byte	0x1
	.byte	0x4a
	.uleb128 0x1f
	.long	.LASF70
	.byte	0xa
	.value	0x13c
	.long	0x47e
	.byte	0x1
	.value	0x104
	.uleb128 0x20
	.long	.LASF72
	.byte	0xa
	.value	0x14a
	.long	0x3b1
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF73
	.byte	0xa
	.value	0x14e
	.long	0x594
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x579
	.uleb128 0x1d
	.long	.LASF74
	.byte	0xa
	.value	0x151
	.long	0x594
	.byte	0x1
	.byte	0x2
	.uleb128 0x1d
	.long	.LASF75
	.byte	0xa
	.value	0x156
	.long	0x594
	.byte	0x1
	.byte	0x4
	.uleb128 0x1d
	.long	.LASF76
	.byte	0xa
	.value	0x159
	.long	0x594
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.long	.LASF77
	.byte	0xa
	.value	0x169
	.long	0x378
	.byte	0x1
	.uleb128 0x1e
	.string	"in"
	.byte	0xa
	.value	0x177
	.long	0x5dd
	.byte	0x1
	.byte	0x8
	.uleb128 0xe
	.long	0x5c3
	.uleb128 0x1e
	.string	"out"
	.byte	0xa
	.value	0x17a
	.long	0x5dd
	.byte	0x1
	.byte	0x10
	.uleb128 0x20
	.long	.LASF78
	.byte	0xa
	.value	0x189
	.long	0x3de
	.byte	0x1
	.uleb128 0x1e
	.string	"cur"
	.byte	0xa
	.value	0x18f
	.long	0x60b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x5f0
	.byte	0
	.uleb128 0x11
	.byte	0xb
	.byte	0x52
	.long	0x10f7
	.uleb128 0x11
	.byte	0xb
	.byte	0x53
	.long	0x10ec
	.uleb128 0x11
	.byte	0xb
	.byte	0x54
	.long	0x63
	.uleb128 0x11
	.byte	0xb
	.byte	0x5c
	.long	0x110d
	.uleb128 0x11
	.byte	0xb
	.byte	0x65
	.long	0x1127
	.uleb128 0x11
	.byte	0xb
	.byte	0x68
	.long	0x1141
	.uleb128 0x11
	.byte	0xb
	.byte	0x69
	.long	0x1156
	.uleb128 0x21
	.long	.LASF215
	.byte	0x2
	.byte	0x4a
	.long	0x40e
	.byte	0
	.uleb128 0x22
	.long	.LASF80
	.byte	0x6
	.value	0x161
	.long	0x63
	.long	0x664
	.uleb128 0x23
	.long	0xca
	.byte	0
	.uleb128 0x22
	.long	.LASF81
	.byte	0x6
	.value	0x2e9
	.long	0x63
	.long	0x67a
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x2a
	.uleb128 0x22
	.long	.LASF82
	.byte	0x6
	.value	0x306
	.long	0x6a0
	.long	0x6a0
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0xca
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x6a6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.long	.LASF83
	.uleb128 0x22
	.long	.LASF84
	.byte	0x6
	.value	0x2f7
	.long	0x63
	.long	0x6c8
	.uleb128 0x23
	.long	0x6a6
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0x22
	.long	.LASF85
	.byte	0x6
	.value	0x30d
	.long	0xca
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x6e9
	.uleb128 0xe
	.long	0x6a6
	.uleb128 0x22
	.long	.LASF86
	.byte	0x6
	.value	0x24b
	.long	0xca
	.long	0x709
	.uleb128 0x23
	.long	0x67a
	.uleb128 0x23
	.long	0xca
	.byte	0
	.uleb128 0x22
	.long	.LASF87
	.byte	0x6
	.value	0x252
	.long	0xca
	.long	0x725
	.uleb128 0x23
	.long	0x67a
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.long	.LASF88
	.byte	0x6
	.value	0x27b
	.long	0xca
	.long	0x741
	.uleb128 0x23
	.long	0x67a
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.long	.LASF89
	.byte	0x6
	.value	0x2ea
	.long	0x63
	.long	0x757
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0x25
	.long	.LASF198
	.byte	0x6
	.value	0x2f0
	.long	0x63
	.uleb128 0x22
	.long	.LASF90
	.byte	0x6
	.value	0x178
	.long	0x51
	.long	0x783
	.uleb128 0x23
	.long	0xf3
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x783
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0xdc
	.uleb128 0x22
	.long	.LASF91
	.byte	0x6
	.value	0x16d
	.long	0x51
	.long	0x7ae
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0xf3
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x783
	.byte	0
	.uleb128 0x22
	.long	.LASF92
	.byte	0x6
	.value	0x169
	.long	0xca
	.long	0x7c4
	.uleb128 0x23
	.long	0x7c4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x7ca
	.uleb128 0xe
	.long	0xdc
	.uleb128 0x22
	.long	.LASF93
	.byte	0x6
	.value	0x198
	.long	0x51
	.long	0x7f4
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x7f4
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x783
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0xf3
	.uleb128 0x22
	.long	.LASF94
	.byte	0x6
	.value	0x2f8
	.long	0x63
	.long	0x815
	.uleb128 0x23
	.long	0x6a6
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0x22
	.long	.LASF95
	.byte	0x6
	.value	0x2fe
	.long	0x63
	.long	0x82b
	.uleb128 0x23
	.long	0x6a6
	.byte	0
	.uleb128 0x22
	.long	.LASF96
	.byte	0x6
	.value	0x25c
	.long	0xca
	.long	0x84c
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.long	.LASF97
	.byte	0x6
	.value	0x285
	.long	0xca
	.long	0x868
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.long	.LASF98
	.byte	0x6
	.value	0x315
	.long	0x63
	.long	0x883
	.uleb128 0x23
	.long	0x63
	.uleb128 0x23
	.long	0x67a
	.byte	0
	.uleb128 0x22
	.long	.LASF99
	.byte	0x6
	.value	0x264
	.long	0xca
	.long	0x8a3
	.uleb128 0x23
	.long	0x67a
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x35
	.byte	0
	.uleb128 0x22
	.long	.LASF100
	.byte	0x6
	.value	0x2b1
	.long	0xca
	.long	0x8c3
	.uleb128 0x23
	.long	0x67a
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x35
	.byte	0
	.uleb128 0x22
	.long	.LASF101
	.byte	0x6
	.value	0x271
	.long	0xca
	.long	0x8e8
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x35
	.byte	0
	.uleb128 0x22
	.long	.LASF102
	.byte	0x6
	.value	0x2bd
	.long	0xca
	.long	0x908
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x35
	.byte	0
	.uleb128 0x22
	.long	.LASF103
	.byte	0x6
	.value	0x26c
	.long	0xca
	.long	0x923
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x35
	.byte	0
	.uleb128 0x22
	.long	.LASF104
	.byte	0x6
	.value	0x2b9
	.long	0xca
	.long	0x93e
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x35
	.byte	0
	.uleb128 0x22
	.long	.LASF105
	.byte	0x6
	.value	0x172
	.long	0x51
	.long	0x95e
	.uleb128 0x23
	.long	0x95e
	.uleb128 0x23
	.long	0x6a6
	.uleb128 0x23
	.long	0x783
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x4a
	.uleb128 0x26
	.long	.LASF106
	.byte	0x6
	.byte	0x9b
	.long	0x6a0
	.long	0x97e
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x26
	.long	.LASF107
	.byte	0x6
	.byte	0xa3
	.long	0xca
	.long	0x998
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x26
	.long	.LASF108
	.byte	0x6
	.byte	0xc0
	.long	0xca
	.long	0x9b2
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x26
	.long	.LASF109
	.byte	0x6
	.byte	0x93
	.long	0x6a0
	.long	0x9cc
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x26
	.long	.LASF110
	.byte	0x6
	.byte	0xfc
	.long	0x51
	.long	0x9e6
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x22
	.long	.LASF111
	.byte	0x6
	.value	0x357
	.long	0x51
	.long	0xa0b
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xa0b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0xa11
	.uleb128 0xe
	.long	0xa16
	.uleb128 0x27
	.string	"tm"
	.byte	0x2c
	.byte	0xc
	.byte	0x85
	.long	0xaa6
	.uleb128 0xa
	.long	.LASF112
	.byte	0xc
	.byte	0x87
	.long	0xca
	.byte	0
	.uleb128 0xa
	.long	.LASF113
	.byte	0xc
	.byte	0x88
	.long	0xca
	.byte	0x4
	.uleb128 0xa
	.long	.LASF114
	.byte	0xc
	.byte	0x89
	.long	0xca
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0xc
	.byte	0x8a
	.long	0xca
	.byte	0xc
	.uleb128 0xa
	.long	.LASF116
	.byte	0xc
	.byte	0x8b
	.long	0xca
	.byte	0x10
	.uleb128 0xa
	.long	.LASF117
	.byte	0xc
	.byte	0x8c
	.long	0xca
	.byte	0x14
	.uleb128 0xa
	.long	.LASF118
	.byte	0xc
	.byte	0x8d
	.long	0xca
	.byte	0x18
	.uleb128 0xa
	.long	.LASF119
	.byte	0xc
	.byte	0x8e
	.long	0xca
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF120
	.byte	0xc
	.byte	0x8f
	.long	0xca
	.byte	0x20
	.uleb128 0xa
	.long	.LASF121
	.byte	0xc
	.byte	0x92
	.long	0xbe9
	.byte	0x24
	.uleb128 0xa
	.long	.LASF122
	.byte	0xc
	.byte	0x93
	.long	0xf3
	.byte	0x28
	.byte	0
	.uleb128 0x22
	.long	.LASF123
	.byte	0x6
	.value	0x11f
	.long	0x51
	.long	0xabc
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x26
	.long	.LASF124
	.byte	0x6
	.byte	0x9e
	.long	0x6a0
	.long	0xadb
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x26
	.long	.LASF125
	.byte	0x6
	.byte	0xa6
	.long	0xca
	.long	0xafa
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x26
	.long	.LASF126
	.byte	0x6
	.byte	0x96
	.long	0x6a0
	.long	0xb19
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF127
	.byte	0x6
	.value	0x19e
	.long	0x51
	.long	0xb3e
	.uleb128 0x23
	.long	0x95e
	.uleb128 0x23
	.long	0xb3e
	.uleb128 0x23
	.long	0x51
	.uleb128 0x23
	.long	0x783
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x6e3
	.uleb128 0x22
	.long	.LASF128
	.byte	0x6
	.value	0x100
	.long	0x51
	.long	0xb5f
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x22
	.long	.LASF129
	.byte	0x6
	.value	0x1c2
	.long	0xb7a
	.long	0xb7a
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF130
	.uleb128 0xf
	.byte	0x4
	.long	0x6a0
	.uleb128 0x22
	.long	.LASF131
	.byte	0x6
	.value	0x1c9
	.long	0xba2
	.long	0xba2
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF132
	.uleb128 0x22
	.long	.LASF133
	.byte	0x6
	.value	0x11a
	.long	0x6a0
	.long	0xbc9
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.byte	0
	.uleb128 0x22
	.long	.LASF134
	.byte	0x6
	.value	0x1d4
	.long	0xbe9
	.long	0xbe9
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.uleb128 0x23
	.long	0xca
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.long	.LASF135
	.uleb128 0x22
	.long	.LASF136
	.byte	0x6
	.value	0x1d9
	.long	0xc10
	.long	0xc10
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.uleb128 0x23
	.long	0xca
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF137
	.uleb128 0x26
	.long	.LASF138
	.byte	0x6
	.byte	0xc4
	.long	0x51
	.long	0xc36
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF139
	.byte	0x6
	.value	0x165
	.long	0xca
	.long	0xc4c
	.uleb128 0x23
	.long	0x63
	.byte	0
	.uleb128 0x22
	.long	.LASF140
	.byte	0x6
	.value	0x145
	.long	0xca
	.long	0xc6c
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF141
	.byte	0x6
	.value	0x149
	.long	0x6a0
	.long	0xc8c
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF142
	.byte	0x6
	.value	0x14e
	.long	0x6a0
	.long	0xcac
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF143
	.byte	0x6
	.value	0x152
	.long	0x6a0
	.long	0xccc
	.uleb128 0x23
	.long	0x6a0
	.uleb128 0x23
	.long	0x6a6
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF144
	.byte	0x6
	.value	0x259
	.long	0xca
	.long	0xce3
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.long	.LASF145
	.byte	0x6
	.value	0x282
	.long	0xca
	.long	0xcfa
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x24
	.byte	0
	.uleb128 0x28
	.long	.LASF147
	.byte	0x6
	.byte	0xe0
	.long	.LASF147
	.long	0x6e3
	.long	0xd18
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6a6
	.byte	0
	.uleb128 0x29
	.long	.LASF148
	.byte	0x6
	.value	0x106
	.long	.LASF148
	.long	0x6e3
	.long	0xd37
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x28
	.long	.LASF149
	.byte	0x6
	.byte	0xea
	.long	.LASF149
	.long	0x6e3
	.long	0xd55
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6a6
	.byte	0
	.uleb128 0x29
	.long	.LASF150
	.byte	0x6
	.value	0x111
	.long	.LASF150
	.long	0x6e3
	.long	0xd74
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6e3
	.byte	0
	.uleb128 0x29
	.long	.LASF151
	.byte	0x6
	.value	0x13c
	.long	.LASF151
	.long	0x6e3
	.long	0xd98
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0x6a6
	.uleb128 0x23
	.long	0x51
	.byte	0
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x7
	.byte	0xf2
	.long	0xecd
	.uleb128 0x11
	.byte	0x7
	.byte	0xf8
	.long	0xecd
	.uleb128 0x12
	.byte	0x7
	.value	0x101
	.long	0xeef
	.uleb128 0x12
	.byte	0x7
	.value	0x102
	.long	0xf16
	.uleb128 0x11
	.byte	0xd
	.byte	0x2c
	.long	0x2be
	.uleb128 0x11
	.byte	0xd
	.byte	0x2d
	.long	0x2de
	.uleb128 0x2b
	.long	.LASF153
	.byte	0x1
	.byte	0xe
	.byte	0x37
	.long	0xe0a
	.uleb128 0x2c
	.long	.LASF154
	.byte	0xe
	.byte	0x3a
	.long	0xee
	.uleb128 0x2c
	.long	.LASF155
	.byte	0xe
	.byte	0x3b
	.long	0xee
	.uleb128 0x2c
	.long	.LASF156
	.byte	0xe
	.byte	0x3f
	.long	0x10dc
	.uleb128 0x2c
	.long	.LASF157
	.byte	0xe
	.byte	0x40
	.long	0xee
	.uleb128 0x2d
	.long	.LASF159
	.long	0xca
	.byte	0
	.uleb128 0x2b
	.long	.LASF158
	.byte	0x1
	.byte	0xe
	.byte	0x37
	.long	0xe4c
	.uleb128 0x2c
	.long	.LASF154
	.byte	0xe
	.byte	0x3a
	.long	0x10e1
	.uleb128 0x2c
	.long	.LASF155
	.byte	0xe
	.byte	0x3b
	.long	0x10e1
	.uleb128 0x2c
	.long	.LASF156
	.byte	0xe
	.byte	0x3f
	.long	0x10dc
	.uleb128 0x2c
	.long	.LASF157
	.byte	0xe
	.byte	0x40
	.long	0xee
	.uleb128 0x2d
	.long	.LASF159
	.long	0xc10
	.byte	0
	.uleb128 0x2b
	.long	.LASF160
	.byte	0x1
	.byte	0xe
	.byte	0x37
	.long	0xe8e
	.uleb128 0x2c
	.long	.LASF154
	.byte	0xe
	.byte	0x3a
	.long	0xf9
	.uleb128 0x2c
	.long	.LASF155
	.byte	0xe
	.byte	0x3b
	.long	0xf9
	.uleb128 0x2c
	.long	.LASF156
	.byte	0xe
	.byte	0x3f
	.long	0x10dc
	.uleb128 0x2c
	.long	.LASF157
	.byte	0xe
	.byte	0x40
	.long	0xee
	.uleb128 0x2d
	.long	.LASF159
	.long	0x4a
	.byte	0
	.uleb128 0x2e
	.long	.LASF233
	.byte	0x1
	.byte	0xe
	.byte	0x37
	.uleb128 0x2c
	.long	.LASF154
	.byte	0xe
	.byte	0x3a
	.long	0x116b
	.uleb128 0x2c
	.long	.LASF155
	.byte	0xe
	.byte	0x3b
	.long	0x116b
	.uleb128 0x2c
	.long	.LASF156
	.byte	0xe
	.byte	0x3f
	.long	0x10dc
	.uleb128 0x2c
	.long	.LASF157
	.byte	0xe
	.byte	0x40
	.long	0xee
	.uleb128 0x2d
	.long	.LASF159
	.long	0xf4b
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF161
	.byte	0x6
	.value	0x1cb
	.long	0xee8
	.long	0xee8
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.byte	0
	.uleb128 0x5
	.byte	0xc
	.byte	0x4
	.long	.LASF162
	.uleb128 0x22
	.long	.LASF163
	.byte	0x6
	.value	0x1e3
	.long	0xf0f
	.long	0xf0f
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.uleb128 0x23
	.long	0xca
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF164
	.uleb128 0x22
	.long	.LASF165
	.byte	0x6
	.value	0x1ea
	.long	0xf36
	.long	0xf36
	.uleb128 0x23
	.long	0x6e3
	.uleb128 0x23
	.long	0xb81
	.uleb128 0x23
	.long	0xca
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF166
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF167
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF168
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF169
	.uleb128 0x2a
	.long	.LASF170
	.byte	0xf
	.byte	0x37
	.long	0xf65
	.uleb128 0x2f
	.byte	0xf
	.byte	0x38
	.long	0x2b7
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF171
	.uleb128 0x2b
	.long	.LASF172
	.byte	0x38
	.byte	0x10
	.byte	0x35
	.long	0x1099
	.uleb128 0xa
	.long	.LASF173
	.byte	0x10
	.byte	0x39
	.long	0x95e
	.byte	0
	.uleb128 0xa
	.long	.LASF174
	.byte	0x10
	.byte	0x3a
	.long	0x95e
	.byte	0x4
	.uleb128 0xa
	.long	.LASF175
	.byte	0x10
	.byte	0x40
	.long	0x95e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF176
	.byte	0x10
	.byte	0x46
	.long	0x95e
	.byte	0xc
	.uleb128 0xa
	.long	.LASF177
	.byte	0x10
	.byte	0x47
	.long	0x95e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF178
	.byte	0x10
	.byte	0x48
	.long	0x95e
	.byte	0x14
	.uleb128 0xa
	.long	.LASF179
	.byte	0x10
	.byte	0x49
	.long	0x95e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF180
	.byte	0x10
	.byte	0x4a
	.long	0x95e
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF181
	.byte	0x10
	.byte	0x4b
	.long	0x95e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF182
	.byte	0x10
	.byte	0x4c
	.long	0x95e
	.byte	0x24
	.uleb128 0xa
	.long	.LASF183
	.byte	0x10
	.byte	0x4d
	.long	0x4a
	.byte	0x28
	.uleb128 0xa
	.long	.LASF184
	.byte	0x10
	.byte	0x4e
	.long	0x4a
	.byte	0x29
	.uleb128 0xa
	.long	.LASF185
	.byte	0x10
	.byte	0x50
	.long	0x4a
	.byte	0x2a
	.uleb128 0xa
	.long	.LASF186
	.byte	0x10
	.byte	0x52
	.long	0x4a
	.byte	0x2b
	.uleb128 0xa
	.long	.LASF187
	.byte	0x10
	.byte	0x54
	.long	0x4a
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF188
	.byte	0x10
	.byte	0x56
	.long	0x4a
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF189
	.byte	0x10
	.byte	0x5d
	.long	0x4a
	.byte	0x2e
	.uleb128 0xa
	.long	.LASF190
	.byte	0x10
	.byte	0x5e
	.long	0x4a
	.byte	0x2f
	.uleb128 0xa
	.long	.LASF191
	.byte	0x10
	.byte	0x61
	.long	0x4a
	.byte	0x30
	.uleb128 0xa
	.long	.LASF192
	.byte	0x10
	.byte	0x63
	.long	0x4a
	.byte	0x31
	.uleb128 0xa
	.long	.LASF193
	.byte	0x10
	.byte	0x65
	.long	0x4a
	.byte	0x32
	.uleb128 0xa
	.long	.LASF194
	.byte	0x10
	.byte	0x67
	.long	0x4a
	.byte	0x33
	.uleb128 0xa
	.long	.LASF195
	.byte	0x10
	.byte	0x6e
	.long	0x4a
	.byte	0x34
	.uleb128 0xa
	.long	.LASF196
	.byte	0x10
	.byte	0x6f
	.long	0x4a
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.long	.LASF197
	.byte	0x10
	.byte	0x7c
	.long	0x95e
	.long	0x10b3
	.uleb128 0x23
	.long	0xca
	.uleb128 0x23
	.long	0xf3
	.byte	0
	.uleb128 0x30
	.long	.LASF199
	.byte	0x10
	.byte	0x7f
	.long	0x10be
	.uleb128 0xf
	.byte	0x4
	.long	0xf6c
	.uleb128 0x3
	.long	.LASF200
	.byte	0x11
	.byte	0x28
	.long	0xca
	.uleb128 0x31
	.byte	0x4
	.uleb128 0x3
	.long	.LASF201
	.byte	0x12
	.byte	0x20
	.long	0xca
	.uleb128 0xe
	.long	0xf65
	.uleb128 0xe
	.long	0xc10
	.uleb128 0xf
	.byte	0x4
	.long	0x40e
	.uleb128 0x3
	.long	.LASF202
	.byte	0x13
	.byte	0x34
	.long	0xc10
	.uleb128 0x3
	.long	.LASF203
	.byte	0x13
	.byte	0xba
	.long	0x1102
	.uleb128 0xf
	.byte	0x4
	.long	0x1108
	.uleb128 0xe
	.long	0x10c4
	.uleb128 0x26
	.long	.LASF204
	.byte	0x13
	.byte	0xaf
	.long	0xca
	.long	0x1127
	.uleb128 0x23
	.long	0x63
	.uleb128 0x23
	.long	0x10ec
	.byte	0
	.uleb128 0x26
	.long	.LASF205
	.byte	0x13
	.byte	0xdd
	.long	0x63
	.long	0x1141
	.uleb128 0x23
	.long	0x63
	.uleb128 0x23
	.long	0x10f7
	.byte	0
	.uleb128 0x26
	.long	.LASF206
	.byte	0x13
	.byte	0xda
	.long	0x10f7
	.long	0x1156
	.uleb128 0x23
	.long	0xf3
	.byte	0
	.uleb128 0x26
	.long	.LASF207
	.byte	0x13
	.byte	0xab
	.long	0x10ec
	.long	0x116b
	.uleb128 0x23
	.long	0xf3
	.byte	0
	.uleb128 0xe
	.long	0xf4b
	.uleb128 0x2f
	.byte	0x14
	.byte	0x7
	.long	0xfe
	.uleb128 0x32
	.long	.LASF208
	.byte	0x4
	.byte	0x14
	.byte	0x9
	.long	0x11a1
	.uleb128 0x33
	.string	"a"
	.byte	0x14
	.byte	0xb
	.long	0xca
	.byte	0
	.byte	0x1
	.uleb128 0x34
	.long	.LASF208
	.byte	0x14
	.byte	0xc
	.byte	0x1
	.long	0x119a
	.uleb128 0x1a
	.long	0x11a1
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x1177
	.uleb128 0x2f
	.byte	0x15
	.byte	0x6
	.long	0xfe
	.uleb128 0x32
	.long	.LASF209
	.byte	0x18
	.byte	0x15
	.byte	0x8
	.long	0x126c
	.uleb128 0x33
	.string	"a"
	.byte	0x15
	.byte	0xa
	.long	0xca
	.byte	0
	.byte	0x1
	.uleb128 0x33
	.string	"b"
	.byte	0x15
	.byte	0xb
	.long	0x4a
	.byte	0x4
	.byte	0x1
	.uleb128 0x33
	.string	"c"
	.byte	0x15
	.byte	0xc
	.long	0x1177
	.byte	0x8
	.byte	0x1
	.uleb128 0x33
	.string	"f"
	.byte	0x15
	.byte	0x12
	.long	0xca
	.byte	0xc
	.byte	0x1
	.uleb128 0x35
	.string	"d"
	.byte	0x15
	.byte	0x15
	.long	0xca
	.byte	0x10
	.uleb128 0x35
	.string	"e"
	.byte	0x15
	.byte	0x16
	.long	0xba2
	.byte	0x14
	.uleb128 0x36
	.long	.LASF209
	.byte	0x15
	.byte	0xd
	.byte	0x1
	.long	0x120a
	.long	0x1215
	.uleb128 0x1a
	.long	0x126c
	.uleb128 0x23
	.long	0x1177
	.byte	0
	.uleb128 0x37
	.long	.LASF210
	.byte	0x15
	.byte	0xe
	.long	.LASF212
	.long	0xca
	.byte	0x1
	.long	0x122d
	.long	0x1233
	.uleb128 0x1a
	.long	0x126c
	.byte	0
	.uleb128 0x37
	.long	.LASF211
	.byte	0x15
	.byte	0xf
	.long	.LASF213
	.long	0x4a
	.byte	0x1
	.long	0x124b
	.long	0x1251
	.uleb128 0x1a
	.long	0x126c
	.byte	0
	.uleb128 0x38
	.long	.LASF234
	.byte	0x15
	.byte	0x10
	.long	.LASF235
	.long	0xba2
	.byte	0x1
	.long	0x1265
	.uleb128 0x1a
	.long	0x126c
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x11ae
	.uleb128 0x2f
	.byte	0x1
	.byte	0x5
	.long	0xfe
	.uleb128 0x39
	.long	.LASF214
	.byte	0x1
	.byte	0x9
	.long	0xca
	.long	.LFB971
	.long	.LFE971-.LFB971
	.uleb128 0x1
	.byte	0x9c
	.long	0x130e
	.uleb128 0x3a
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0x3b
	.string	"s"
	.byte	0x1
	.byte	0xb
	.long	0x1177
	.uleb128 0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x3b
	.string	"tc"
	.byte	0x1
	.byte	0xc
	.long	0x126c
	.uleb128 0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0x3b
	.string	"tc2"
	.byte	0x1
	.byte	0xd
	.long	0x11ae
	.uleb128 0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0x3b
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0xca
	.uleb128 0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0x3b
	.string	"b"
	.byte	0x1
	.byte	0x11
	.long	0x4a
	.uleb128 0x2
	.byte	0x74
	.sleb128 30
	.uleb128 0x3b
	.string	"sub"
	.byte	0x1
	.byte	0x12
	.long	0x1177
	.uleb128 0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0x3b
	.string	"f"
	.byte	0x1
	.byte	0x15
	.long	0xca
	.uleb128 0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0x3b
	.string	"g"
	.byte	0x1
	.byte	0x16
	.long	0x4a
	.uleb128 0x2
	.byte	0x74
	.sleb128 31
	.uleb128 0x3b
	.string	"k"
	.byte	0x1
	.byte	0x19
	.long	0xca
	.uleb128 0x2
	.byte	0x74
	.sleb128 52
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF236
	.long	.LFB972
	.long	.LFE972-.LFB972
	.uleb128 0x1
	.byte	0x9c
	.long	0x133e
	.uleb128 0x3d
	.long	.LASF216
	.byte	0x1
	.byte	0x1c
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.long	.LASF217
	.byte	0x1
	.byte	0x1c
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x3e
	.long	.LASF237
	.long	.LFB973
	.long	.LFE973-.LFB973
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.long	.LASF218
	.long	0x10cf
	.uleb128 0x40
	.long	0x642
	.uleb128 0x5
	.byte	0x3
	.long	_ZStL8__ioinit
	.uleb128 0x41
	.long	0xdd4
	.long	.LASF219
	.sleb128 -2147483648
	.uleb128 0x42
	.long	0xddf
	.long	.LASF220
	.long	0x7fffffff
	.uleb128 0x43
	.long	0xe37
	.long	.LASF221
	.byte	0x20
	.uleb128 0x43
	.long	0xe63
	.long	.LASF222
	.byte	0x7f
	.uleb128 0x41
	.long	0xe96
	.long	.LASF223
	.sleb128 -32768
	.uleb128 0x44
	.long	0xea1
	.long	.LASF224
	.value	0x7fff
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF237:
	.string	"_GLOBAL__sub_I_main"
.LASF52:
	.string	"_S_end"
.LASF2:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF114:
	.string	"tm_hour"
.LASF9:
	.string	"__value"
.LASF153:
	.string	"__numeric_traits_integer<int>"
.LASF220:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE"
.LASF56:
	.string	"boolalpha"
.LASF61:
	.string	"scientific"
.LASF155:
	.string	"__max"
.LASF110:
	.string	"wcscspn"
.LASF199:
	.string	"localeconv"
.LASF184:
	.string	"frac_digits"
.LASF176:
	.string	"int_curr_symbol"
.LASF76:
	.string	"goodbit"
.LASF147:
	.string	"wcschr"
.LASF15:
	.string	"_S_boolalpha"
.LASF75:
	.string	"failbit"
.LASF227:
	.string	"/home/student/Dropbox/CS2150/Lab08/inlab"
.LASF187:
	.string	"n_cs_precedes"
.LASF91:
	.string	"mbrtowc"
.LASF138:
	.string	"wcsxfrm"
.LASF183:
	.string	"int_frac_digits"
.LASF208:
	.string	"subclass"
.LASF50:
	.string	"_S_beg"
.LASF108:
	.string	"wcscoll"
.LASF65:
	.string	"skipws"
.LASF6:
	.string	"__wch"
.LASF67:
	.string	"uppercase"
.LASF31:
	.string	"_S_basefield"
.LASF209:
	.string	"testclass"
.LASF149:
	.string	"wcsrchr"
.LASF178:
	.string	"mon_decimal_point"
.LASF135:
	.string	"long int"
.LASF160:
	.string	"__numeric_traits_integer<char>"
.LASF103:
	.string	"vwprintf"
.LASF35:
	.string	"_Ios_Openmode"
.LASF214:
	.string	"main"
.LASF193:
	.string	"int_n_cs_precedes"
.LASF205:
	.string	"towctrans"
.LASF12:
	.string	"mbstate_t"
.LASF215:
	.string	"__ioinit"
.LASF45:
	.string	"_S_badbit"
.LASF55:
	.string	"_S_synced_with_stdio"
.LASF159:
	.string	"_Value"
.LASF46:
	.string	"_S_eofbit"
.LASF119:
	.string	"tm_yday"
.LASF168:
	.string	"signed char"
.LASF228:
	.string	"_IO_FILE"
.LASF202:
	.string	"wctype_t"
.LASF210:
	.string	"getint"
.LASF81:
	.string	"fgetwc"
.LASF198:
	.string	"getwchar"
.LASF82:
	.string	"fgetws"
.LASF22:
	.string	"_S_right"
.LASF167:
	.string	"unsigned char"
.LASF188:
	.string	"n_sep_by_space"
.LASF151:
	.string	"wmemchr"
.LASF44:
	.string	"_S_goodbit"
.LASF224:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE"
.LASF38:
	.string	"_S_bin"
.LASF107:
	.string	"wcscmp"
.LASF229:
	.string	"__builtin_va_list"
.LASF96:
	.string	"swprintf"
.LASF1:
	.string	"__gnuc_va_list"
.LASF156:
	.string	"__is_signed"
.LASF40:
	.string	"_S_out"
.LASF3:
	.string	"char"
.LASF36:
	.string	"_S_app"
.LASF207:
	.string	"wctype"
.LASF77:
	.string	"openmode"
.LASF125:
	.string	"wcsncmp"
.LASF196:
	.string	"int_n_sign_posn"
.LASF190:
	.string	"n_sign_posn"
.LASF142:
	.string	"wmemmove"
.LASF154:
	.string	"__min"
.LASF80:
	.string	"btowc"
.LASF145:
	.string	"wscanf"
.LASF179:
	.string	"mon_thousands_sep"
.LASF98:
	.string	"ungetwc"
.LASF14:
	.string	"ptrdiff_t"
.LASF219:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE"
.LASF203:
	.string	"wctrans_t"
.LASF90:
	.string	"mbrlen"
.LASF182:
	.string	"negative_sign"
.LASF18:
	.string	"_S_hex"
.LASF191:
	.string	"int_p_cs_precedes"
.LASF87:
	.string	"fwprintf"
.LASF165:
	.string	"wcstoull"
.LASF19:
	.string	"_S_internal"
.LASF181:
	.string	"positive_sign"
.LASF115:
	.string	"tm_mday"
.LASF69:
	.string	"basefield"
.LASF109:
	.string	"wcscpy"
.LASF57:
	.string	"fixed"
.LASF101:
	.string	"vswprintf"
.LASF143:
	.string	"wmemset"
.LASF78:
	.string	"seekdir"
.LASF86:
	.string	"fwide"
.LASF59:
	.string	"left"
.LASF226:
	.string	"objects.cpp"
.LASF112:
	.string	"tm_sec"
.LASF120:
	.string	"tm_isdst"
.LASF126:
	.string	"wcsncpy"
.LASF95:
	.string	"putwchar"
.LASF140:
	.string	"wmemcmp"
.LASF37:
	.string	"_S_ate"
.LASF17:
	.string	"_S_fixed"
.LASF194:
	.string	"int_n_sep_by_space"
.LASF217:
	.string	"__priority"
.LASF24:
	.string	"_S_showbase"
.LASF39:
	.string	"_S_in"
.LASF170:
	.string	"__gnu_debug"
.LASF99:
	.string	"vfwprintf"
.LASF102:
	.string	"vswscanf"
.LASF186:
	.string	"p_sep_by_space"
.LASF54:
	.string	"_S_refcount"
.LASF41:
	.string	"_S_trunc"
.LASF216:
	.string	"__initialize_p"
.LASF234:
	.string	"getfloat"
.LASF60:
	.string	"right"
.LASF26:
	.string	"_S_showpos"
.LASF11:
	.string	"__mbstate_t"
.LASF141:
	.string	"wmemcpy"
.LASF116:
	.string	"tm_mon"
.LASF16:
	.string	"_S_dec"
.LASF34:
	.string	"_Ios_Fmtflags"
.LASF130:
	.string	"double"
.LASF58:
	.string	"internal"
.LASF223:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE"
.LASF139:
	.string	"wctob"
.LASF25:
	.string	"_S_showpoint"
.LASF27:
	.string	"_S_skipws"
.LASF30:
	.string	"_S_adjustfield"
.LASF221:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE"
.LASF132:
	.string	"float"
.LASF113:
	.string	"tm_min"
.LASF20:
	.string	"_S_left"
.LASF4:
	.string	"unsigned int"
.LASF42:
	.string	"_S_ios_openmode_end"
.LASF128:
	.string	"wcsspn"
.LASF189:
	.string	"p_sign_posn"
.LASF29:
	.string	"_S_uppercase"
.LASF201:
	.string	"_Atomic_word"
.LASF62:
	.string	"showbase"
.LASF33:
	.string	"_S_ios_fmtflags_end"
.LASF146:
	.string	"Init"
.LASF173:
	.string	"decimal_point"
.LASF211:
	.string	"getchar"
.LASF8:
	.string	"__count"
.LASF152:
	.string	"__gnu_cxx"
.LASF171:
	.string	"bool"
.LASF162:
	.string	"long double"
.LASF94:
	.string	"putwc"
.LASF64:
	.string	"showpos"
.LASF32:
	.string	"_S_floatfield"
.LASF21:
	.string	"_S_oct"
.LASF7:
	.string	"__wchb"
.LASF236:
	.string	"__static_initialization_and_destruction_0"
.LASF166:
	.string	"long long unsigned int"
.LASF148:
	.string	"wcspbrk"
.LASF161:
	.string	"wcstold"
.LASF192:
	.string	"int_p_sep_by_space"
.LASF53:
	.string	"_S_ios_seekdir_end"
.LASF163:
	.string	"wcstoll"
.LASF150:
	.string	"wcsstr"
.LASF43:
	.string	"_Ios_Iostate"
.LASF225:
	.string	"GNU C++ 4.8.4 -m32 -masm=intel -mtune=generic -march=i686 -g -fstack-protector"
.LASF222:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE"
.LASF127:
	.string	"wcsrtombs"
.LASF68:
	.string	"adjustfield"
.LASF118:
	.string	"tm_wday"
.LASF28:
	.string	"_S_unitbuf"
.LASF70:
	.string	"floatfield"
.LASF97:
	.string	"swscanf"
.LASF157:
	.string	"__digits"
.LASF129:
	.string	"wcstod"
.LASF131:
	.string	"wcstof"
.LASF133:
	.string	"wcstok"
.LASF134:
	.string	"wcstol"
.LASF0:
	.string	"__FILE"
.LASF63:
	.string	"showpoint"
.LASF197:
	.string	"setlocale"
.LASF213:
	.string	"_ZN9testclass7getcharEv"
.LASF88:
	.string	"fwscanf"
.LASF5:
	.string	"wint_t"
.LASF232:
	.string	"ios_base"
.LASF73:
	.string	"badbit"
.LASF206:
	.string	"wctrans"
.LASF174:
	.string	"thousands_sep"
.LASF74:
	.string	"eofbit"
.LASF123:
	.string	"wcslen"
.LASF72:
	.string	"iostate"
.LASF231:
	.string	"__debug"
.LASF121:
	.string	"tm_gmtoff"
.LASF177:
	.string	"currency_symbol"
.LASF169:
	.string	"short int"
.LASF111:
	.string	"wcsftime"
.LASF180:
	.string	"mon_grouping"
.LASF51:
	.string	"_S_cur"
.LASF106:
	.string	"wcscat"
.LASF212:
	.string	"_ZN9testclass6getintEv"
.LASF230:
	.string	"11__mbstate_t"
.LASF195:
	.string	"int_p_sign_posn"
.LASF122:
	.string	"tm_zone"
.LASF104:
	.string	"vwscanf"
.LASF48:
	.string	"_S_ios_iostate_end"
.LASF105:
	.string	"wcrtomb"
.LASF172:
	.string	"lconv"
.LASF235:
	.string	"_ZN9testclass8getfloatEv"
.LASF66:
	.string	"unitbuf"
.LASF124:
	.string	"wcsncat"
.LASF233:
	.string	"__numeric_traits_integer<short int>"
.LASF218:
	.string	"__dso_handle"
.LASF164:
	.string	"long long int"
.LASF84:
	.string	"fputwc"
.LASF85:
	.string	"fputws"
.LASF79:
	.string	"~Init"
.LASF93:
	.string	"mbsrtowcs"
.LASF47:
	.string	"_S_failbit"
.LASF185:
	.string	"p_cs_precedes"
.LASF158:
	.string	"__numeric_traits_integer<long unsigned int>"
.LASF117:
	.string	"tm_year"
.LASF13:
	.string	"short unsigned int"
.LASF100:
	.string	"vfwscanf"
.LASF49:
	.string	"_Ios_Seekdir"
.LASF71:
	.string	"fmtflags"
.LASF200:
	.string	"__int32_t"
.LASF89:
	.string	"getwc"
.LASF92:
	.string	"mbsinit"
.LASF204:
	.string	"iswctype"
.LASF175:
	.string	"grouping"
.LASF144:
	.string	"wprintf"
.LASF23:
	.string	"_S_scientific"
.LASF83:
	.string	"wchar_t"
.LASF137:
	.string	"long unsigned int"
.LASF136:
	.string	"wcstoul"
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
