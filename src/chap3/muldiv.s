	.file	"muldiv.c"
	.text
	.globl	store_uprod
	.type	store_uprod, @function
store_uprod:
.LFB4:
	.cfi_startproc
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	ret
	.cfi_endproc
.LFE4:
	.size	store_uprod, .-store_uprod
	.globl	remdiv
	.type	remdiv, @function
remdiv:
.LFB5:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rdx, %rdi
	cqto
	idivq	%rsi
	movq	%rax, (%rdi)
	movq	%rdx, (%rcx)
	ret
	.cfi_endproc
.LFE5:
	.size	remdiv, .-remdiv
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
