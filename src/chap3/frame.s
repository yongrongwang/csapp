	.file	"frame.c"
	.text
	.globl	vframe
	.type	vframe, @function
vframe:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	22(,%rdi,8), %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	7(%rsp), %rax
	shrq	$3, %rax
	leaq	0(,%rax,8), %r8
	movq	%r8, %rcx
	leaq	-16(%rbp), %r9
	movq	%r9, 0(,%rax,8)
	movq	$1, -16(%rbp)
	jmp	.L2
.L3:
	movq	%rdx, (%rcx,%rax,8)
	addq	$1, -16(%rbp)
.L2:
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdi
	jg	.L3
	movq	(%r8,%rsi,8), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	jne	.L6
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE0:
	.size	vframe, .-vframe
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
