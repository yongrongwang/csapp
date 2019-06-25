	.file	"structure.c"
	.text
	.globl	copy
	.type	copy, @function
copy:
.LFB0:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	%eax, 4(%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	copy, .-copy
	.globl	link_p
	.type	link_p, @function
link_p:
.LFB1:
	.cfi_startproc
	movl	4(%rdi), %eax
	addl	(%rdi), %eax
	cltq
	leaq	8(%rdi,%rax,4), %rax
	movq	%rax, 16(%rdi)
	ret
	.cfi_endproc
.LFE1:
	.size	link_p, .-link_p
	.comm	p,8,8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
