	.file	"array.c"
	.text
	.globl	fix_prod_ele
	.type	fix_prod_ele, @function
fix_prod_ele:
.LFB0:
	.cfi_startproc
	salq	$6, %rdx
	addq	%rdx, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	leaq	1024(%rcx), %rsi
	movl	$0, %eax
.L2:
	movl	(%rdi), %edx
	imull	(%rcx), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	addq	$4, %rdi
	addq	$64, %rcx
	cmpq	%rsi, %rcx
	jne	.L2
	rep ret
	.cfi_endproc
.LFE0:
	.size	fix_prod_ele, .-fix_prod_ele
	.globl	fix_prod_ele_opt
	.type	fix_prod_ele_opt, @function
fix_prod_ele_opt:
.LFB1:
	.cfi_startproc
	salq	$6, %rdx
	addq	%rdx, %rdi
	salq	$2, %rcx
	leaq	(%rsi,%rcx), %rdx
	leaq	1024(%rsi,%rcx), %rsi
	movl	$0, %eax
.L5:
	movl	(%rdi), %ecx
	imull	(%rdx), %ecx
	addl	%ecx, %eax
	addq	$4, %rdi
	addq	$64, %rdx
	cmpq	%rdx, %rsi
	jne	.L5
	rep ret
	.cfi_endproc
.LFE1:
	.size	fix_prod_ele_opt, .-fix_prod_ele_opt
	.globl	var_prod_ele
	.type	var_prod_ele, @function
var_prod_ele:
.LFB2:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L10
	salq	$2, %rcx
	imulq	%rdi, %rcx
	addq	%rcx, %rsi
	leaq	0(,%rdi,4), %r9
	leaq	(%rdx,%r8,4), %r8
	movl	$0, %edx
	movl	$0, %eax
.L9:
	movl	(%rsi,%rdx,4), %ecx
	imull	(%r8), %ecx
	addl	%ecx, %eax
	addq	$1, %rdx
	addq	%r9, %r8
	cmpq	%rdx, %rdi
	jne	.L9
	rep ret
.L10:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	var_prod_ele, .-var_prod_ele
	.globl	var_prod_ele_opt
	.type	var_prod_ele_opt, @function
var_prod_ele_opt:
.LFB3:
	.cfi_startproc
	leaq	0(,%rdi,4), %r9
	salq	$2, %rcx
	imulq	%rdi, %rcx
	leaq	(%rdx,%r8,4), %r8
	testq	%rdi, %rdi
	jle	.L15
	leaq	(%rsi,%rcx), %rdx
	addq	%r9, %rcx
	addq	%rcx, %rsi
	movl	$0, %eax
.L14:
	movl	(%rdx), %ecx
	imull	(%r8), %ecx
	addl	%ecx, %eax
	addq	%r9, %r8
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	jne	.L14
	rep ret
.L15:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	var_prod_ele_opt, .-var_prod_ele_opt
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
