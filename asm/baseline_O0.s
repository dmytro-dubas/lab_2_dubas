	.file	"main.c"
# GNU C23 (GCC) version 15.2.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.0, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FORTIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -mtune=generic -march=x86-64 -g -O2 -O0 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -frandom-seed=524j579gsb --param=ssp-buffer-size=4
	.text
.Ltext0:
	.file 0 "/home/Dmytro/lab_2_dubas/lab_2_dubas" "src/main.c"
	.local	input_a
	.comm	input_a,16777216,32
	.local	input_b
	.comm	input_b,16777216,32
	.local	output_res
	.comm	output_res,16777216,32
	.globl	init_dataset
	.type	init_dataset, @function
init_dataset:
.LFB6:
	.file 1 "src/main.c"
	.loc 1 14 49
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# n, n
.LBB2:
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 17
	movq	$0, -8(%rbp)	#, i
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 5
	jmp	.L2	#
.L7:
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27
	movq	-8(%rbp), %rax	# i, tmp111
	andl	$1023, %eax	#, _1
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16
	testq	%rax, %rax	# _1
	js	.L3	#,
	pxor	%xmm0, %xmm0	# _2
	cvtsi2ssq	%rax, %xmm0	# _1, _2
	jmp	.L4	#
.L3:
	movq	%rax, %rdx	# _1, tmp113
	shrq	%rdx	# tmp113
	andl	$1, %eax	#, tmp114
	orq	%rax, %rdx	# tmp114, tmp113
	pxor	%xmm0, %xmm0	# tmp112
	cvtsi2ssq	%rdx, %xmm0	# tmp113, tmp112
	addss	%xmm0, %xmm0	# tmp112, _2
.L4:
	movss	.LC0(%rip), %xmm1	#, tmp115
	mulss	%xmm0, %xmm1	# _2, _3
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 10
	movq	-8(%rbp), %rax	# i, tmp116
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# a, tmp117
	addq	%rdx, %rax	# _4, _5
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51
	movss	.LC1(%rip), %xmm0	#, tmp118
	addss	%xmm1, %xmm0	# _3, _6
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 14
	movss	%xmm0, (%rax)	# _6, *_5
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28
	movq	-8(%rbp), %rax	# i, tmp119
	addq	$7, %rax	#, _7
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33
	andl	$511, %eax	#, _8
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16
	testq	%rax, %rax	# _8
	js	.L5	#,
	pxor	%xmm0, %xmm0	# _9
	cvtsi2ssq	%rax, %xmm0	# _8, _9
	jmp	.L6	#
.L5:
	movq	%rax, %rdx	# _8, tmp121
	shrq	%rdx	# tmp121
	andl	$1, %eax	#, tmp122
	orq	%rax, %rdx	# tmp122, tmp121
	pxor	%xmm0, %xmm0	# tmp120
	cvtsi2ssq	%rdx, %xmm0	# tmp121, tmp120
	addss	%xmm0, %xmm0	# tmp120, _9
.L6:
	movss	.LC2(%rip), %xmm1	#, tmp123
	mulss	%xmm0, %xmm1	# _9, _10
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 10
	movq	-8(%rbp), %rax	# i, tmp124
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-32(%rbp), %rax	# b, tmp125
	addq	%rdx, %rax	# _11, _12
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55
	movss	.LC3(%rip), %xmm0	#, tmp126
	addss	%xmm1, %xmm0	# _10, _13
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 14
	movss	%xmm0, (%rax)	# _13, *_12
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 32 discriminator 3
	addq	$1, -8(%rbp)	#, i
.L2:
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 26 discriminator 1
	movq	-8(%rbp), %rax	# i, tmp127
	cmpq	-40(%rbp), %rax	# n, tmp127
	jb	.L7	#,
.LBE2:
# src/main.c:19: }
	.loc 1 19 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
	.cfi_endproc
.LFE6:
	.size	init_dataset, .-init_dataset
	.globl	process_subtask_a
	.type	process_subtask_a, @function
process_subtask_a:
.LFB7:
	.loc 1 22 78
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# out, out
	movq	%rcx, -48(%rbp)	# n, n
.LBB3:
# src/main.c:23:     for (size_t i = 0; i < n; i++) {
	.loc 1 23 17
	movq	$0, -8(%rbp)	#, i
# src/main.c:23:     for (size_t i = 0; i < n; i++) {
	.loc 1 23 5
	jmp	.L9	#
.L10:
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 20
	movq	-8(%rbp), %rax	# i, tmp109
	leaq	0(,%rax,4), %rdx	#, _1
	movq	-24(%rbp), %rax	# a, tmp110
	addq	%rdx, %rax	# _1, _2
	movss	(%rax), %xmm1	# *_2, _3
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24
	movss	.LC4(%rip), %xmm0	#, tmp111
	mulss	%xmm0, %xmm1	# tmp111, _4
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 37
	movq	-8(%rbp), %rax	# i, tmp112
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-32(%rbp), %rax	# b, tmp113
	addq	%rdx, %rax	# _5, _6
	movss	(%rax), %xmm2	# *_6, _7
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41
	movss	.LC5(%rip), %xmm0	#, tmp114
	mulss	%xmm2, %xmm0	# _7, _8
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 12
	movq	-8(%rbp), %rax	# i, tmp115
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-40(%rbp), %rax	# out, tmp116
	addq	%rdx, %rax	# _9, _10
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 33
	addss	%xmm1, %xmm0	# _4, _11
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 16
	movss	%xmm0, (%rax)	# _11, *_10
# src/main.c:23:     for (size_t i = 0; i < n; i++) {
	.loc 1 23 32 discriminator 3
	addq	$1, -8(%rbp)	#, i
.L9:
# src/main.c:23:     for (size_t i = 0; i < n; i++) {
	.loc 1 23 26 discriminator 1
	movq	-8(%rbp), %rax	# i, tmp117
	cmpq	-48(%rbp), %rax	# n, tmp117
	jb	.L10	#,
.LBE3:
# src/main.c:26: }
	.loc 1 26 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
	.cfi_endproc
.LFE7:
	.size	process_subtask_a, .-process_subtask_a
	.globl	compute_heavy_workload
	.type	compute_heavy_workload, @function
compute_heavy_workload:
.LFB8:
	.loc 1 29 84
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# out, out
	movq	%rcx, -48(%rbp)	# n, n
# src/main.c:30:     float accumulator = 0.0f;
	.loc 1 30 11
	pxor	%xmm0, %xmm0	# tmp118
	movss	%xmm0, -16(%rbp)	# tmp118, accumulator
.LBB4:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 17
	movq	$0, -8(%rbp)	#, i
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 5
	jmp	.L12	#
.L13:
.LBB5:
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 24
	movq	-8(%rbp), %rax	# i, tmp119
	leaq	0(,%rax,4), %rdx	#, _1
	movq	-24(%rbp), %rax	# a, tmp120
	addq	%rdx, %rax	# _1, _2
	movss	(%rax), %xmm1	# *_2, _3
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 31
	movq	-8(%rbp), %rax	# i, tmp121
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-32(%rbp), %rax	# b, tmp122
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm0	# *_5, _6
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28
	mulss	%xmm0, %xmm1	# _6, _7
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 15
	movss	.LC7(%rip), %xmm0	#, tmp124
	addss	%xmm1, %xmm0	# _7, term_29
	movss	%xmm0, -12(%rbp)	# term_29, term
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 22
	movq	-8(%rbp), %rax	# i, tmp125
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-40(%rbp), %rax	# out, tmp126
	addq	%rdx, %rax	# _8, _9
	movss	(%rax), %xmm1	# *_9, _10
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26
	movss	.LC1(%rip), %xmm0	#, tmp127
	mulss	%xmm1, %xmm0	# _10, _11
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 12
	movq	-8(%rbp), %rax	# i, tmp128
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# out, tmp129
	addq	%rdx, %rax	# _12, _13
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 34
	addss	-12(%rbp), %xmm0	# term, _14
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 16
	movss	%xmm0, (%rax)	# _14, *_13
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 27
	movq	-8(%rbp), %rax	# i, tmp130
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-40(%rbp), %rax	# out, tmp131
	addq	%rdx, %rax	# _15, _16
	movss	(%rax), %xmm1	# *_16, _17
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31
	movss	.LC8(%rip), %xmm0	#, tmp132
	mulss	%xmm1, %xmm0	# _17, _18
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 21
	movss	-16(%rbp), %xmm1	# accumulator, tmp134
	addss	%xmm1, %xmm0	# tmp134, accumulator_32
	movss	%xmm0, -16(%rbp)	# accumulator_32, accumulator
.LBE5:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 32 discriminator 3
	addq	$1, -8(%rbp)	#, i
.L12:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 26 discriminator 1
	movq	-8(%rbp), %rax	# i, tmp135
	cmpq	-48(%rbp), %rax	# n, tmp135
	jb	.L13	#,
.LBE4:
# src/main.c:36:     return accumulator;
	.loc 1 36 12
	movss	-16(%rbp), %xmm0	# accumulator, _26
# src/main.c:37: }
	.loc 1 37 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
	.cfi_endproc
.LFE8:
	.size	compute_heavy_workload, .-compute_heavy_workload
	.globl	process_subtask_b
	.type	process_subtask_b, @function
process_subtask_b:
.LFB9:
	.loc 1 40 53
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# out, out
	movq	%rsi, -32(%rbp)	# n, n
# src/main.c:41:     float local_sum = 0.0f;
	.loc 1 41 11
	pxor	%xmm0, %xmm0	# tmp107
	movss	%xmm0, -12(%rbp)	# tmp107, local_sum
.LBB6:
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 17
	movq	$0, -8(%rbp)	#, i
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 5
	jmp	.L16	#
.L19:
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 25
	movq	-8(%rbp), %rax	# i, tmp108
	leaq	0(,%rax,4), %rdx	#, _1
	movq	-24(%rbp), %rax	# out, tmp109
	addq	%rdx, %rax	# _1, _2
	movss	(%rax), %xmm1	# *_2, _3
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41
	movq	-8(%rbp), %rax	# i, tmp110
	andl	$15, %eax	#, _4
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31
	testq	%rax, %rax	# _4
	js	.L17	#,
	pxor	%xmm0, %xmm0	# _5
	cvtsi2ssq	%rax, %xmm0	# _4, _5
	jmp	.L18	#
.L17:
	movq	%rax, %rdx	# _4, tmp112
	shrq	%rdx	# tmp112
	andl	$1, %eax	#, tmp113
	orq	%rax, %rdx	# tmp113, tmp112
	pxor	%xmm0, %xmm0	# tmp111
	cvtsi2ssq	%rdx, %xmm0	# tmp112, tmp111
	addss	%xmm0, %xmm0	# tmp111, _5
.L18:
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 29
	mulss	%xmm0, %xmm1	# _5, _6
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 47
	movss	.LC9(%rip), %xmm0	#, tmp114
	mulss	%xmm1, %xmm0	# _6, _7
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 19
	movss	-12(%rbp), %xmm1	# local_sum, tmp116
	addss	%xmm1, %xmm0	# tmp116, local_sum_16
	movss	%xmm0, -12(%rbp)	# local_sum_16, local_sum
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 32 discriminator 3
	addq	$1, -8(%rbp)	#, i
.L16:
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 26 discriminator 1
	movq	-8(%rbp), %rax	# i, tmp117
	cmpq	-32(%rbp), %rax	# n, tmp117
	jb	.L19	#,
.LBE6:
# src/main.c:45:     return local_sum;
	.loc 1 45 12
	movss	-12(%rbp), %xmm0	# local_sum, _13
# src/main.c:46: }
	.loc 1 46 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
	.cfi_endproc
.LFE9:
	.size	process_subtask_b, .-process_subtask_b
	.globl	benchmark_pipeline
	.type	benchmark_pipeline, @function
benchmark_pipeline:
.LFB10:
	.loc 1 49 45
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# iterations, iterations
# src/main.c:50:     float total_checksum = 0.0f;
	.loc 1 50 11
	pxor	%xmm0, %xmm0	# tmp102
	movss	%xmm0, -20(%rbp)	# tmp102, total_checksum
.LBB7:
# src/main.c:52:     for (size_t it = 0; it < iterations; it++) {
	.loc 1 52 17
	movq	$0, -8(%rbp)	#, it
# src/main.c:52:     for (size_t it = 0; it < iterations; it++) {
	.loc 1 52 5
	jmp	.L22	#
.L23:
.LBB8:
# src/main.c:53:         process_subtask_a(input_a, input_b, output_res, DATA_SIZE);
	.loc 1 53 9
	leaq	output_res(%rip), %rdx	#, tmp103
	leaq	input_b(%rip), %rsi	#, tmp104
	leaq	input_a(%rip), %rax	#, tmp105
	movl	$4194304, %ecx	#,
	movq	%rax, %rdi	# tmp105,
	call	process_subtask_a@PLT	#
# src/main.c:54:         float acc = compute_heavy_workload(input_a, input_b, output_res, DATA_SIZE);
	.loc 1 54 21
	leaq	output_res(%rip), %rdx	#, tmp106
	leaq	input_b(%rip), %rsi	#, tmp107
	leaq	input_a(%rip), %rax	#, tmp108
	movl	$4194304, %ecx	#,
	movq	%rax, %rdi	# tmp108,
	call	compute_heavy_workload@PLT	#
	movd	%xmm0, %eax	#, tmp109
	movl	%eax, -16(%rbp)	# tmp109, acc
# src/main.c:55:         float sub_b = process_subtask_b(output_res, DATA_SIZE);
	.loc 1 55 23
	leaq	output_res(%rip), %rax	#, tmp110
	movl	$4194304, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	process_subtask_b@PLT	#
	movd	%xmm0, %eax	#, tmp111
	movl	%eax, -12(%rbp)	# tmp111, sub_b
# src/main.c:56:         total_checksum += acc + (sub_b * 0.00001f);
	.loc 1 56 40
	movss	-12(%rbp), %xmm1	# sub_b, tmp112
	movss	.LC10(%rip), %xmm0	#, tmp113
	mulss	%xmm1, %xmm0	# tmp112, _1
# src/main.c:56:         total_checksum += acc + (sub_b * 0.00001f);
	.loc 1 56 31
	addss	-16(%rbp), %xmm0	# acc, _2
# src/main.c:56:         total_checksum += acc + (sub_b * 0.00001f);
	.loc 1 56 24
	movss	-20(%rbp), %xmm1	# total_checksum, tmp115
	addss	%xmm1, %xmm0	# tmp115, total_checksum_16
	movss	%xmm0, -20(%rbp)	# total_checksum_16, total_checksum
.LBE8:
# src/main.c:52:     for (size_t it = 0; it < iterations; it++) {
	.loc 1 52 44 discriminator 3
	addq	$1, -8(%rbp)	#, it
.L22:
# src/main.c:52:     for (size_t it = 0; it < iterations; it++) {
	.loc 1 52 28 discriminator 1
	movq	-8(%rbp), %rax	# it, tmp116
	cmpq	-40(%rbp), %rax	# iterations, tmp116
	jb	.L23	#,
.LBE7:
# src/main.c:59:     return total_checksum;
	.loc 1 59 12
	movss	-20(%rbp), %xmm0	# total_checksum, _10
# src/main.c:60: }
	.loc 1 60 1
	leave	
	.cfi_def_cfa 7, 8
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
	.cfi_endproc
.LFE10:
	.size	benchmark_pipeline, .-benchmark_pipeline
	.section	.rodata
	.align 8
.LC11:
	.string	"Iterations: %zu | Data items: %d | Checksum: %.6f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.loc 1 62 33
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
# src/main.c:63:     size_t iterations = NUM_ITERATIONS;
	.loc 1 63 12
	movq	$120, -16(%rbp)	#, iterations
# src/main.c:65:     if (argc > 1) {
	.loc 1 65 8
	cmpl	$1, -36(%rbp)	#, argc
	jle	.L26	#,
.LBB9:
# src/main.c:66:         long custom_it = strtol(argv[1], NULL, 10);
	.loc 1 66 37
	movq	-48(%rbp), %rax	# argv, tmp103
	addq	$8, %rax	#, _1
# src/main.c:66:         long custom_it = strtol(argv[1], NULL, 10);
	.loc 1 66 26
	movq	(%rax), %rax	# *_1, _2
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _2,
	call	__isoc23_strtol@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, custom_it
# src/main.c:67:         if (custom_it > 0) {
	.loc 1 67 12
	cmpq	$0, -8(%rbp)	#, custom_it
	jle	.L26	#,
# src/main.c:68:             iterations = (size_t)custom_it;
	.loc 1 68 24
	movq	-8(%rbp), %rax	# custom_it, tmp105
	movq	%rax, -16(%rbp)	# tmp105, iterations
.L26:
.LBE9:
# src/main.c:72:     init_dataset(input_a, input_b, DATA_SIZE);
	.loc 1 72 5
	leaq	input_b(%rip), %rcx	#, tmp106
	leaq	input_a(%rip), %rax	#, tmp107
	movl	$4194304, %edx	#,
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	init_dataset@PLT	#
# src/main.c:74:     float result = benchmark_pipeline(iterations);
	.loc 1 74 20
	movq	-16(%rbp), %rax	# iterations, tmp108
	movq	%rax, %rdi	# tmp108,
	call	benchmark_pipeline@PLT	#
	movd	%xmm0, %eax	#, tmp109
	movl	%eax, -20(%rbp)	# tmp109, result
# src/main.c:76:     printf("Iterations: %zu | Data items: %d | Checksum: %.6f\n", iterations, DATA_SIZE, result);
	.loc 1 76 5
	pxor	%xmm1, %xmm1	# _3
	cvtss2sd	-20(%rbp), %xmm1	# result, _3
	movq	%xmm1, %rdx	# _3, _3
	movq	-16(%rbp), %rax	# iterations, tmp110
	leaq	.LC11(%rip), %rcx	#, tmp111
	movq	%rdx, %xmm0	# _3,
	movl	$4194304, %edx	#,
	movq	%rax, %rsi	# tmp110,
	movq	%rcx, %rdi	# tmp111,
	movl	$1, %eax	#,
	call	printf@PLT	#
# src/main.c:78:     return 0;
	.loc 1 78 12
	movl	$0, %eax	#, _17
# src/main.c:79: }
	.loc 1 79 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	989855744
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC2:
	.long	998244352
	.align 4
.LC3:
	.long	1048576000
	.align 4
.LC4:
	.long	1065772646
	.align 4
.LC5:
	.long	1064514355
	.align 4
.LC7:
	.long	1040187392
	.align 4
.LC8:
	.long	953267991
	.align 4
.LC9:
	.long	1031798784
	.align 4
.LC10:
	.long	925353388
	.text
.Letext0:
	.file 2 "/nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/stdlib.h"
	.file 3 "/nix/store/qxaq7jz61a6zkr2mq49i0zvqip2m2jj8-gcc-15.2.0/lib/gcc/x86_64-unknown-linux-gnu/15.2.0/include/stddef.h"
	.file 4 "/nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x426
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1d
	.byte	0x3
	.long	0x31647
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xf
	.long	.LASF34
	.byte	0x3
	.byte	0xe5
	.byte	0x17
	.long	0x3f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	0x7c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xa
	.long	0x7c
	.uleb128 0x6
	.long	0x83
	.uleb128 0xb
	.long	0x88
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0xa
	.long	0xa0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x11
	.long	0xa0
	.long	0xc6
	.uleb128 0x12
	.long	0x3f
	.long	0x3fffff
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x9
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	input_a
	.uleb128 0x8
	.long	.LASF15
	.byte	0xa
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	input_b
	.uleb128 0x8
	.long	.LASF16
	.byte	0xb
	.long	0xb3
	.uleb128 0x9
	.byte	0x3
	.quad	output_res
	.uleb128 0x13
	.long	.LASF35
	.byte	0x4
	.value	0x16e
	.byte	0xc
	.long	0x69
	.long	0x11a
	.uleb128 0x7
	.long	0x88
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.long	.LASF31
	.byte	0x2
	.byte	0xd7
	.byte	0x11
	.long	.LASF36
	.long	0x70
	.long	0x13e
	.uleb128 0x7
	.long	0x8d
	.uleb128 0x7
	.long	0x143
	.uleb128 0x7
	.long	0x69
	.byte	0
	.uleb128 0x6
	.long	0x77
	.uleb128 0xb
	.long	0x13e
	.uleb128 0xc
	.long	.LASF22
	.byte	0x3e
	.byte	0x5
	.long	0x69
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c2
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3e
	.byte	0xe
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF18
	.byte	0x3e
	.byte	0x1b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3f
	.byte	0xc
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4a
	.byte	0xb
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x3
	.long	.LASF21
	.byte	0x42
	.byte	0xe
	.long	0x70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x31
	.byte	0x7
	.long	0xa0
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x24d
	.uleb128 0x9
	.long	.LASF19
	.byte	0x31
	.byte	0x21
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.long	.LASF24
	.byte	0x32
	.byte	0xb
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x5
	.string	"it"
	.byte	0x34
	.byte	0x11
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x5
	.string	"acc"
	.byte	0x36
	.byte	0xf
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.long	.LASF25
	.byte	0x37
	.byte	0xf
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF26
	.byte	0x28
	.long	0xa0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b4
	.uleb128 0x1
	.string	"out"
	.byte	0x28
	.byte	0x26
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"n"
	.byte	0x28
	.byte	0x32
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.long	.LASF27
	.byte	0x29
	.byte	0xb
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x5
	.string	"i"
	.byte	0x2a
	.byte	0x11
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0xa7
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1d
	.long	0xa0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x358
	.uleb128 0x1
	.string	"a"
	.byte	0x1d
	.byte	0x2b
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"b"
	.byte	0x1d
	.byte	0x3b
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"out"
	.byte	0x1d
	.byte	0x45
	.long	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"n"
	.byte	0x1d
	.byte	0x51
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.long	.LASF29
	.byte	0x1e
	.byte	0xb
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x5
	.string	"i"
	.byte	0x1f
	.byte	0x11
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x3
	.long	.LASF30
	.byte	0x20
	.byte	0xf
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0xa0
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cc
	.uleb128 0x1
	.string	"a"
	.byte	0x16
	.byte	0x25
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"b"
	.byte	0x16
	.byte	0x35
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"out"
	.byte	0x16
	.byte	0x3f
	.long	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"n"
	.byte	0x16
	.byte	0x4b
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x5
	.string	"i"
	.byte	0x17
	.byte	0x11
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF32
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.string	"a"
	.byte	0xe
	.byte	0x1a
	.long	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"b"
	.byte	0xe
	.byte	0x24
	.long	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"n"
	.byte	0xe
	.byte	0x2e
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x5
	.string	"i"
	.byte	0xf
	.byte	0x11
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"local_sum"
.LASF34:
	.string	"size_t"
.LASF15:
	.string	"input_b"
.LASF29:
	.string	"accumulator"
.LASF13:
	.string	"double"
.LASF33:
	.ascii	"GNU C23 15.2.0 -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FOR"
	.ascii	"TIFY_SOURCE=3 -mno-omit-leaf-fra"
	.string	"me-pointer -mtune=generic -march=x86-64 -g -O2 -O0 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -frandom-seed=524j579gsb --param=ssp-buffer-size=4"
.LASF37:
	.string	"process_subtask_a"
.LASF26:
	.string	"process_subtask_b"
.LASF21:
	.string	"custom_it"
.LASF12:
	.string	"float"
.LASF4:
	.string	"unsigned char"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"iterations"
.LASF16:
	.string	"output_res"
.LASF24:
	.string	"total_checksum"
.LASF22:
	.string	"main"
.LASF20:
	.string	"result"
.LASF25:
	.string	"sub_b"
.LASF28:
	.string	"compute_heavy_workload"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF23:
	.string	"benchmark_pipeline"
.LASF14:
	.string	"input_a"
.LASF32:
	.string	"init_dataset"
.LASF36:
	.string	"__isoc23_strtol"
.LASF10:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF35:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF18:
	.string	"argv"
.LASF8:
	.string	"long int"
.LASF6:
	.string	"signed char"
.LASF31:
	.string	"strtol"
.LASF30:
	.string	"term"
.LASF17:
	.string	"argc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/Dmytro/lab_2_dubas/lab_2_dubas"
.LASF0:
	.string	"src/main.c"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
