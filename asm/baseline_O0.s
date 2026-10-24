	.file	"main.c"
	.text
	.globl	compute_heavy_workload
	.type	compute_heavy_workload, @function
compute_heavy_workload:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L6
.L7:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC2(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	-8(%rbp), %xmm0
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movss	%xmm0, (%rdx)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	addq	$1, -16(%rbp)
.L6:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L7
	movss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	compute_heavy_workload, .-compute_heavy_workload
	.section	.rodata
	.align 4
.LC2:
	.long	1040187392
	.align 4
.LC3:
	.long	1056964608
	.align 4
.LC4:
	.long	990057071
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
