	.file	"abs.c"
	.text
	.globl	absdiff_se
	.type	absdiff_se, @function
absdiff_se:
.LFB0:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jl	.L4
	addq	$1, ge_cnt(%rip)
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
.L4:
	addq	$1, lt_cnt(%rip)
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff_se, .-absdiff_se
	.globl	gotodiff_se
	.type	gotodiff_se, @function
gotodiff_se:
.LFB1:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jl	.L8
.L6:
	addq	$1, ge_cnt(%rip)
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
.L8:
	addq	$1, lt_cnt(%rip)
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE1:
	.size	gotodiff_se, .-gotodiff_se
	.globl	ge_cnt
	.bss
	.align 8
	.type	ge_cnt, @object
	.size	ge_cnt, 8
ge_cnt:
	.zero	8
	.globl	lt_cnt
	.align 8
	.type	lt_cnt, @object
	.size	lt_cnt, 8
lt_cnt:
	.zero	8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
