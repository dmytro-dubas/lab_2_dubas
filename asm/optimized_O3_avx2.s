	.file	"main.c"
	.text
	.p2align 4
	.globl	compute_heavy_workload
	.type	compute_heavy_workload, @function
compute_heavy_workload:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	testq	%rcx, %rcx
	je	.L7
	vbroadcastss	.LC2(%rip), %ymm5
	vbroadcastss	.LC3(%rip), %ymm4
	vbroadcastss	.LC4(%rip), %ymm3
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	vmovups	(%rdi,%rax,4), %ymm0
	vmovups	(%rsi,%rax,4), %ymm1
	vfmadd213ps	%ymm5, %ymm1, %ymm0
	vmovups	(%rdx,%rax,4), %ymm1
	vfmadd213ps	%ymm0, %ymm4, %ymm1
	vmovups	%ymm1, (%rdx,%rax,4)
	vfmadd231ps	%ymm3, %ymm1, %ymm2
	addq	$8, %rax
	cmpq	%rcx, %rax
	jb	.L4
	vextractf128	$1, %ymm2, %xmm0
	vaddps	%xmm0, %xmm2, %xmm2
	vhaddps	%xmm2, %xmm2, %xmm2
	vhaddps	%xmm2, %xmm2, %xmm0
	vzeroupper
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
.L7:
	vxorps	%xmm0, %xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	compute_heavy_workload, .-compute_heavy_workload
	.section	.rodata.cst4,"aM",@progbits,4
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
