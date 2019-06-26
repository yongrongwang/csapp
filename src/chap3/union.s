	.file	"union.c"
	.text
	.globl	double2bits
	.type	double2bits, @function
double2bits:
.LFB0:
	.cfi_startproc
	movq	%xmm0, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	double2bits, .-double2bits
	.globl	uu2double
	.type	uu2double, @function
uu2double:
.LFB1:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	salq	$32, %rsi
	movl	%edi, %edi
	orq	%rsi, %rdi
	movq	%rdi, 8(%rsp)
	movsd	8(%rsp), %xmm0
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L5
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	uu2double, .-uu2double
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
