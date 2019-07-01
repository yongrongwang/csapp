	.file	"absdiff.c"
	.text
	.globl	absdiff
	.type	absdiff, @function
absdiff:
.LFB0:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jl	.L4
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
.L4:
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff, .-absdiff
	.globl	cmovdiff
	.type	cmovdiff, @function
cmovdiff:
.LFB1:
	.cfi_startproc
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	movq	%rdi, %rax
	subq	%rsi, %rax
	cmpq	%rdi, %rsi
	jg	.L7
.L5:
	rep ret
.L7:
	movq	%rdx, %rax
	jmp	.L5
	.cfi_endproc
.LFE1:
	.size	cmovdiff, .-cmovdiff
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
