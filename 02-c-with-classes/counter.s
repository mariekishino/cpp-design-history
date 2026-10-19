	.file	"counter.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZN7CounterC2Ev,"axG",@progbits,_ZN7CounterC5Ev,comdat
	.align 2
	.weak	_ZN7CounterC2Ev
	.type	_ZN7CounterC2Ev, @function
_ZN7CounterC2Ev:
.LFB1097:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1097:
	.size	_ZN7CounterC2Ev, .-_ZN7CounterC2Ev
	.weak	_ZN7CounterC1Ev
	.set	_ZN7CounterC1Ev,_ZN7CounterC2Ev
	.section	.text._ZN7Counter9incrementEv,"axG",@progbits,_ZN7Counter9incrementEv,comdat
	.align 2
	.weak	_ZN7Counter9incrementEv
	.type	_ZN7Counter9incrementEv, @function
_ZN7Counter9incrementEv:
.LFB1099:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1099:
	.size	_ZN7Counter9incrementEv, .-_ZN7Counter9incrementEv
	.section	.text._ZNK7Counter4showEv,"axG",@progbits,_ZNK7Counter4showEv,comdat
	.align 2
	.weak	_ZNK7Counter4showEv
	.type	_ZNK7Counter4showEv, @function
_ZNK7Counter4showEv:
.LFB1100:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1100:
	.size	_ZNK7Counter4showEv, .-_ZNK7Counter4showEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB1101:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CounterC1Ev
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CounterC1Ev
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7Counter9incrementEv
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7Counter9incrementEv
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7Counter9incrementEv
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7Counter4showEv
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7Counter4showEv
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1101:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
