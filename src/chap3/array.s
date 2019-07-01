	.file	"array.c"
	.text
	.globl	fix_prod_ele
	.type	fix_prod_ele, @function
fix_prod_ele:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	movl	$0, %r9d
	jmp	.L2
.L3:
	movq	%rdx, %r10
	salq	$6, %r10
	addq	%rdi, %r10
	movq	%r9, %r8
	salq	$6, %r8
	addq	%rsi, %r8
	movl	(%r8,%rcx,4), %r8d
	imull	(%r10,%r9,4), %r8d
	movslq	%r8d, %r8
	addq	%r8, %rax
	addq	$1, %r9
.L2:
	cmpq	$15, %r9
	jle	.L3
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
	movl	(%rdx), %ecx
	imull	(%rdi), %ecx
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
	movq	%rdi, %r11
	movl	$0, %eax
	movl	$0, %r9d
	cmpq	%r9, %rdi
	jle	.L12
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L8:
	movq	%rcx, %r10
	imulq	%r11, %r10
	leaq	(%rsi,%r10,4), %rbx
	movq	%r9, %r10
	imulq	%r11, %r10
	leaq	(%rdx,%r10,4), %r10
	movl	(%r10,%r8,4), %r10d
	imull	(%rbx,%r9,4), %r10d
	addl	%r10d, %eax
	addq	$1, %r9
	cmpq	%r9, %rdi
	jg	.L8
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE2:
	.size	var_prod_ele, .-var_prod_ele
	.globl	var_prod_ele_opt
	.type	var_prod_ele_opt, @function
var_prod_ele_opt:
.LFB3:
	.cfi_startproc
	leaq	0(,%rdi,4), %r11
	imulq	%rdi, %rcx
	leaq	0(,%rcx,4), %r10
	leaq	(%rdx,%r8,4), %r8
	movl	$0, %edx
	movl	$0, %eax
	jmp	.L14
.L15:
	leaq	(%rsi,%r10), %r9
	movl	(%r8), %ecx
	imull	(%r9,%rdx,4), %ecx
	addl	%ecx, %eax
	addq	%r11, %r8
	addq	$1, %rdx
.L14:
	cmpq	%rdx, %rdi
	jg	.L15
	rep ret
	.cfi_endproc
.LFE3:
	.size	var_prod_ele_opt, .-var_prod_ele_opt
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
