	.file	"fact.c"
	.text
	.globl	fact_do
	.type	fact_do, @function
fact_do:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
.L2:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jg	.L2
	rep ret
	.cfi_endproc
.LFE0:
	.size	fact_do, .-fact_do
	.globl	fact_do_goto
	.type	fact_do_goto, @function
fact_do_goto:
.LFB1:
	.cfi_startproc
	movl	$1, %eax
.L5:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jg	.L5
	rep ret
	.cfi_endproc
.LFE1:
	.size	fact_do_goto, .-fact_do_goto
	.globl	fact_while
	.type	fact_while, @function
fact_while:
.LFB2:
	.cfi_startproc
	cmpq	$1, %rdi
	jle	.L10
	movl	$1, %eax
.L9:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jne	.L9
	rep ret
.L10:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	fact_while, .-fact_while
	.globl	fact_while_jm_goto
	.type	fact_while_jm_goto, @function
fact_while_jm_goto:
.LFB3:
	.cfi_startproc
	cmpq	$1, %rdi
	jle	.L15
	movl	$1, %eax
.L14:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jne	.L14
	rep ret
.L15:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	fact_while_jm_goto, .-fact_while_jm_goto
	.globl	fact_while_gd_goto
	.type	fact_while_gd_goto, @function
fact_while_gd_goto:
.LFB4:
	.cfi_startproc
	movl	$1, %eax
.L18:
	cmpq	$1, %rdi
	jle	.L17
.L19:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jne	.L19
.L17:
	rep ret
	.cfi_endproc
.LFE4:
	.size	fact_while_gd_goto, .-fact_while_gd_goto
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
