	.file	"file_in_stx.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	call	___main
/APP
 # 4 "file_in_stx.c" 1
	.intel_syntax noprefix
	push   rbp
	mov    rbp, rsp
	sub    rsp, 32
	lea    rcx, [rip + LC0]
	call   printf
	mov    eax, 0
	leave
	ret
	.section .rdata
	LC0:
	.string "hello"
	
 # 0 "" 2
/NO_APP
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
