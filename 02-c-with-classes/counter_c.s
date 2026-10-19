	.file	"counter.c"
	.text
	.p2align 4
	.globl	counter_init
	.type	counter_init, @function
counter_init:
.LFB23:
	.cfi_startproc
	endbr64
	movl	$0, (%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	counter_init, .-counter_init
	.p2align 4
	.globl	counter_increment
	.type	counter_increment, @function
counter_increment:
.LFB24:
	.cfi_startproc
	endbr64
	addl	$1, (%rdi)
	ret
	.cfi_endproc
.LFE24:
	.size	counter_increment, .-counter_increment
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.text
	.p2align 4
	.globl	counter_show
	.type	counter_show, @function
counter_show:
.LFB25:
	.cfi_startproc
	endbr64
	movl	(%rdi), %edx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE25:
	.size	counter_show, .-counter_show
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC0(%rip), %rbx
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%rbx, %rsi
	movl	$2, %edi
	call	__printf_chk@PLT
	movq	%rbx, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	$2, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
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
