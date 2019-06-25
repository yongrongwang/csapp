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
.L4:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jg	.L4
	rep ret
	.cfi_endproc
.LFE1:
	.size	fact_do_goto, .-fact_do_goto
	.globl	fact_while
	.type	fact_while, @function
fact_while:
.LFB2:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L6
.L7:
	imulq	%rdi, %rax
	subq	$1, %rdi
.L6:
	cmpq	$1, %rdi
	jg	.L7
	rep ret
	.cfi_endproc
.LFE2:
	.size	fact_while, .-fact_while
	.globl	fact_while_jm_goto
	.type	fact_while_jm_goto, @function
fact_while_jm_goto:
.LFB3:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L9
.L10:
	imulq	%rdi, %rax
	subq	$1, %rdi
.L9:
	cmpq	$1, %rdi
	jg	.L10
	rep ret
	.cfi_endproc
.LFE3:
	.size	fact_while_jm_goto, .-fact_while_jm_goto
	.globl	fact_while_gd_goto
	.type	fact_while_gd_goto, @function
fact_while_gd_goto:
.LFB4:
	.cfi_startproc
	cmpq	$1, %rdi
	jle	.L14
	movl	$1, %eax
.L13:
	imulq	%rdi, %rax
	subq	$1, %rdi
	cmpq	$1, %rdi
	jne	.L13
	rep ret
.L14:
	movl	$1, %eax
.L12:
	ret
	.cfi_endproc
.LFE4:
	.size	fact_while_gd_goto, .-fact_while_gd_goto
	.globl	fact_for
	.type	fact_for, @function
fact_for:
.LFB5:
	.cfi_startproc
	movl	$1, %eax
	movl	$2, %edx
	jmp	.L16
.L17:
	imulq	%rdx, %rax
	addq	$1, %rdx
.L16:
	cmpq	%rdi, %rdx
	jle	.L17
	rep ret
	.cfi_endproc
.LFE5:
	.size	fact_for, .-fact_for
	.globl	fact_for_while
	.type	fact_for_while, @function
fact_for_while:
.LFB6:
	.cfi_startproc
	movl	$1, %eax
	movl	$2, %edx
	jmp	.L19
.L20:
	imulq	%rdx, %rax
	addq	$1, %rdx
.L19:
	cmpq	%rdi, %rdx
	jle	.L20
	rep ret
	.cfi_endproc
.LFE6:
	.size	fact_for_while, .-fact_for_while
	.globl	fact_for_jm_goto
	.type	fact_for_jm_goto, @function
fact_for_jm_goto:
.LFB7:
	.cfi_startproc
	movl	$1, %eax
	movl	$2, %edx
	jmp	.L22
.L23:
	imulq	%rdx, %rax
	addq	$1, %rdx
.L22:
	cmpq	%rdi, %rdx
	jle	.L23
	rep ret
	.cfi_endproc
.LFE7:
	.size	fact_for_jm_goto, .-fact_for_jm_goto
	.globl	rfact
	.type	rfact, @function
rfact:
.LFB8:
	.cfi_startproc
	cmpq	$1, %rdi
	jg	.L31
	movl	$1, %eax
	ret
.L31:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	-1(%rdi), %rdi
	call	rfact
	imulq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8:
	.size	rfact, .-rfact
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
