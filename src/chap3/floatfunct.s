	.file	"floatfunct.c"
	.text
	.globl	funct
	.type	funct, @function
funct:
.LFB0:
	.cfi_startproc
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	%edi, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm2, %xmm2
	vsubsd	%xmm2, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	funct, .-funct
	.globl	find_range
	.type	find_range, @function
find_range:
.LFB1:
	.cfi_startproc
	movl	$0, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm0, %xmm1
	ja	.L3
	vucomiss	%xmm1, %xmm0
	jp	.L8
	movl	$1, %eax
	je	.L3
.L8:
	vucomiss	.LC0(%rip), %xmm0
	setbe	%al
	movzbl	%al, %eax
	addl	$2, %eax
.L3:
	rep ret
	.cfi_endproc
.LFE1:
	.size	find_range, .-find_range
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
