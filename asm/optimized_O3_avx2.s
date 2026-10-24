	.file	"main.c"
# GNU C23 (GCC) version 15.2.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.0, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FORTIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -mtune=generic -march=x86-64 -g -O2 -O3 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -ffast-math -frandom-seed=524j579gsb --param=ssp-buffer-size=4
	.text
.Ltext0:
	.file 0 "/home/Dmytro/lab_2_dubas/lab_2_dubas" "src/main.c"
	.p2align 4
	.globl	init_dataset
	.type	init_dataset, @function
init_dataset:
.LVL0:
.LFB39:
	.file 1 "src/main.c"
	.loc 1 14 49 view -0
	.cfi_startproc
	.loc 1 15 5 view .LVU1
.LBB5:
	.loc 1 15 10 view .LVU2
	.loc 1 15 26 discriminator 1 view .LVU3
	testq	%rdx, %rdx	# n
	je	.L1	#,
	leaq	-1(%rdx), %rax	#, _40
	cmpq	$2, %rax	#, _40
	jbe	.L9	#,
	leaq	-4(%rsi), %rax	#, _49
	subq	%rdi, %rax	# a, _35
	cmpq	$8, %rax	#, _35
	jbe	.L9	#,
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 is_stmt 0 view .LVU4
	movl	$1023, %r8d	#, tmp194
	movl	$2, %r9d	#, tmp198
	movq	%rdx, %rcx	# n, bnd.11_78
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 26 discriminator 1 view .LVU5
	xorl	%eax, %eax	# ivtmp.45
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 view .LVU6
	movq	%r8, %xmm3	# tmp194, tmp194
	movq	%r9, %xmm7	# tmp198, tmp198
	shrq	$2, %rcx	#, bnd.11_78
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU7
	movl	$7, %r10d	#, tmp214
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU8
	movl	$511, %r11d	#, tmp218
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU9
	movl	$9, %r8d	#, tmp222
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 26 discriminator 1 view .LVU10
	movl	$4, %r9d	#, tmp237
	movss	.LC4(%rip), %xmm11	#, tmp295
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU11
	movq	%r10, %xmm6	# tmp214, tmp214
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU12
	movq	%r11, %xmm2	# tmp218, tmp218
	movss	.LC6(%rip), %xmm10	#, tmp296
	movss	.LC11(%rip), %xmm9	#, tmp291
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU13
	movq	%r8, %xmm5	# tmp222, tmp222
	salq	$4, %rcx	#, _1
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 view .LVU14
	punpcklqdq	%xmm3, %xmm3	# tmp193
	movss	.LC13(%rip), %xmm8	#, tmp292
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 26 discriminator 1 view .LVU15
	movq	%r9, %xmm4	# tmp237, tmp237
	movdqa	.LC0(%rip), %xmm1	#, vect_vec_iv_.14
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 view .LVU16
	punpcklqdq	%xmm7, %xmm7	# tmp197
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU17
	punpcklqdq	%xmm6, %xmm6	# tmp213
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU18
	punpcklqdq	%xmm2, %xmm2	# tmp217
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU19
	punpcklqdq	%xmm5, %xmm5	# tmp221
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 26 discriminator 1 view .LVU20
	punpcklqdq	%xmm4, %xmm4	# tmp236
	shufps	$0, %xmm11, %xmm11	# tmp295
	shufps	$0, %xmm10, %xmm10	# tmp296
	shufps	$0, %xmm9, %xmm9	# tmp291
	shufps	$0, %xmm8, %xmm8	# tmp292
.LVL1:
	.p2align 4
	.p2align 3
.L4:
	.loc 1 16 9 is_stmt 1 view .LVU21
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 is_stmt 0 view .LVU22
	movdqa	%xmm1, %xmm12	# vect_vec_iv_.14, _82
	movdqa	%xmm1, %xmm0	# vect_vec_iv_.14, vect__1.15_83
	paddq	%xmm7, %xmm12	# tmp197, _82
	pand	%xmm3, %xmm0	# tmp193, vect__1.15_83
	pand	%xmm3, %xmm12	# tmp193, vect__1.15_84
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU23
	shufps	$136, %xmm12, %xmm0	#, vect__1.15_84, vect__2.17_87
	cvtdq2ps	%xmm0, %xmm0	# vect__2.17_87, vect__2.18_88
	mulps	%xmm11, %xmm0	# tmp295, vect__3.19_89
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU24
	movdqa	%xmm1, %xmm12	# vect_vec_iv_.14, vect__7.23_95
	paddq	%xmm5, %xmm12	# tmp221, vect__7.23_95
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU25
	pand	%xmm2, %xmm12	# tmp217, vect__8.24_97
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51 view .LVU26
	addps	%xmm10, %xmm0	# tmp296, vect__6.20_90
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 14 view .LVU27
	movups	%xmm0, (%rdi,%rax)	# vect__6.20_90, MEM <vector(4) float> [(float *)a_18(D) + ivtmp.45_34 * 1]
	.loc 1 17 9 is_stmt 1 view .LVU28
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 is_stmt 0 view .LVU29
	movdqa	%xmm1, %xmm0	# vect_vec_iv_.14, vect__7.23_94
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 26 discriminator 1 view .LVU30
	paddq	%xmm4, %xmm1	# tmp236, vect_vec_iv_.14
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU31
	paddq	%xmm6, %xmm0	# tmp213, vect__7.23_94
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU32
	pand	%xmm2, %xmm0	# tmp217, vect__8.24_96
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 view .LVU33
	shufps	$136, %xmm12, %xmm0	#, vect__8.24_97, vect__9.26_100
	cvtdq2ps	%xmm0, %xmm0	# vect__9.26_100, vect__9.27_101
	mulps	%xmm9, %xmm0	# tmp291, vect__10.28_102
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55 view .LVU34
	addps	%xmm8, %xmm0	# tmp292, vect__12.29_103
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 14 view .LVU35
	movups	%xmm0, (%rsi,%rax)	# vect__12.29_103, MEM <vector(4) float> [(float *)b_20(D) + ivtmp.45_34 * 1]
	.loc 1 15 32 is_stmt 1 discriminator 3 view .LVU36
	.loc 1 15 26 discriminator 1 view .LVU37
	addq	$16, %rax	#, ivtmp.45
	cmpq	%rax, %rcx	# ivtmp.45, _1
	jne	.L4	#,
	testb	$3, %dl	#, n
	je	.L1	#,
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 is_stmt 0 view .LVU38
	movq	%rdx, %rcx	# n, _15
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU39
	pxor	%xmm0, %xmm0	# _3
	movq	%rdx, %rax	# n, niters_vector_mult_vf.12
	movss	.LC4(%rip), %xmm4	#, tmp242
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 view .LVU40
	andl	$1020, %ecx	#, _15
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51 view .LVU41
	movss	.LC6(%rip), %xmm3	#, tmp244
	andq	$-4, %rax	#, niters_vector_mult_vf.12
.LVL2:
	.loc 1 16 9 is_stmt 1 view .LVU42
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 is_stmt 0 view .LVU43
	movss	.LC11(%rip), %xmm2	#, tmp249
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU44
	cvtsi2ssq	%rcx, %xmm0	# _15, _3
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU45
	leaq	7(%rax), %rcx	#, _23
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55 view .LVU46
	movss	.LC13(%rip), %xmm1	#, tmp251
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU47
	andl	$511, %ecx	#, _9
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU48
	mulss	%xmm4, %xmm0	# tmp242, _4
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51 view .LVU49
	addss	%xmm3, %xmm0	# tmp244, _7
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 14 view .LVU50
	movss	%xmm0, (%rdi,%rax,4)	# _7, *_6
	.loc 1 17 9 is_stmt 1 view .LVU51
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 is_stmt 0 view .LVU52
	pxor	%xmm0, %xmm0	# _11
	cvtsi2ssq	%rcx, %xmm0	# _9, _11
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 32 discriminator 3 view .LVU53
	leaq	1(%rax), %rcx	#, i
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 view .LVU54
	mulss	%xmm2, %xmm0	# tmp249, _12
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55 view .LVU55
	addss	%xmm1, %xmm0	# tmp251, _74
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 14 view .LVU56
	movss	%xmm0, (%rsi,%rax,4)	# _74, *_22
	.loc 1 15 32 is_stmt 1 discriminator 3 view .LVU57
.LVL3:
	.loc 1 15 26 discriminator 1 view .LVU58
	cmpq	%rdx, %rcx	# n, i
	jnb	.L1	#,
	.loc 1 16 9 view .LVU59
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 is_stmt 0 view .LVU60
	andl	$1023, %ecx	#, _111
.LVL4:
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU61
	pxor	%xmm0, %xmm0	# _113
	cvtsi2ssq	%rcx, %xmm0	# _111, _113
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU62
	leaq	8(%rax), %rcx	#, _119
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU63
	andl	$511, %ecx	#, _120
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU64
	mulss	%xmm4, %xmm0	# tmp242, _114
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51 view .LVU65
	addss	%xmm3, %xmm0	# tmp244, _117
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 14 view .LVU66
	movss	%xmm0, 4(%rdi,%rax,4)	# _117, *_116
	.loc 1 17 9 is_stmt 1 view .LVU67
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 is_stmt 0 view .LVU68
	pxor	%xmm0, %xmm0	# _122
	cvtsi2ssq	%rcx, %xmm0	# _120, _122
# src/main.c:15:     for (size_t i = 0; i < n; i++) {
	.loc 1 15 32 discriminator 3 view .LVU69
	leaq	2(%rax), %rcx	#, i
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 view .LVU70
	mulss	%xmm2, %xmm0	# tmp249, _123
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55 view .LVU71
	addss	%xmm1, %xmm0	# tmp251, _125
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 14 view .LVU72
	movss	%xmm0, 4(%rsi,%rax,4)	# _125, *_124
	.loc 1 15 32 is_stmt 1 discriminator 3 view .LVU73
.LVL5:
	.loc 1 15 26 discriminator 1 view .LVU74
	cmpq	%rdx, %rcx	# n, i
	jnb	.L1	#,
	.loc 1 16 9 view .LVU75
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 is_stmt 0 view .LVU76
	andl	$1023, %ecx	#, _56
.LVL6:
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU77
	pxor	%xmm0, %xmm0	# _58
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU78
	leaq	9(%rax), %rdx	#, _64
.LVL7:
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU79
	cvtsi2ssq	%rcx, %xmm0	# _56, _58
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU80
	andl	$511, %edx	#, _65
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU81
	mulss	%xmm4, %xmm0	# tmp242, _59
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51 view .LVU82
	addss	%xmm3, %xmm0	# tmp244, _62
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 14 view .LVU83
	movss	%xmm0, 8(%rdi,%rax,4)	# _62, *_61
	.loc 1 17 9 is_stmt 1 view .LVU84
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 is_stmt 0 view .LVU85
	pxor	%xmm0, %xmm0	# _67
	cvtsi2ssq	%rdx, %xmm0	# _65, _67
	mulss	%xmm2, %xmm0	# tmp249, _68
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55 view .LVU86
	addss	%xmm1, %xmm0	# tmp251, _70
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 14 view .LVU87
	movss	%xmm0, 8(%rsi,%rax,4)	# _70, *_69
	.loc 1 15 32 is_stmt 1 discriminator 3 view .LVU88
.LVL8:
	.loc 1 15 26 discriminator 1 view .LVU89
.LVL9:
	.loc 1 15 26 is_stmt 0 discriminator 1 view .LVU90
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	xorl	%r9d, %r9d	#
	xorl	%r10d, %r10d	#
	xorl	%r11d, %r11d	#
	ret	
.LVL10:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 15 26 discriminator 1 view .LVU91
	movss	.LC4(%rip), %xmm4	#, tmp297
	movss	.LC6(%rip), %xmm3	#, tmp298
	xorl	%eax, %eax	# i
	movss	.LC11(%rip), %xmm2	#, tmp293
	movss	.LC13(%rip), %xmm1	#, tmp294
.LVL11:
	.p2align 4
	.p2align 3
.L6:
	.loc 1 16 9 is_stmt 1 view .LVU92
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 is_stmt 0 view .LVU93
	movq	%rax, %rcx	# i, _30
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU94
	pxor	%xmm0, %xmm0	# _25
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 27 view .LVU95
	andl	$1023, %ecx	#, _30
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU96
	cvtsi2ssq	%rcx, %xmm0	# _30, _25
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 28 view .LVU97
	leaq	7(%rax), %rcx	#, _44
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 33 view .LVU98
	andl	$511, %ecx	#, _45
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 16 view .LVU99
	mulss	%xmm4, %xmm0	# tmp297, _24
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 51 view .LVU100
	addss	%xmm3, %xmm0	# tmp298, _42
# src/main.c:16:         a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
	.loc 1 16 14 view .LVU101
	movss	%xmm0, (%rdi,%rax,4)	# _42, MEM[(float *)a_18(D) + i_32 * 4]
	.loc 1 17 9 is_stmt 1 view .LVU102
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 16 is_stmt 0 view .LVU103
	pxor	%xmm0, %xmm0	# _47
	cvtsi2ssq	%rcx, %xmm0	# _45, _47
	mulss	%xmm2, %xmm0	# tmp293, _48
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 55 view .LVU104
	addss	%xmm1, %xmm0	# tmp294, _50
# src/main.c:17:         b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
	.loc 1 17 14 view .LVU105
	movss	%xmm0, (%rsi,%rax,4)	# _50, MEM[(float *)b_20(D) + i_32 * 4]
	.loc 1 15 32 is_stmt 1 discriminator 3 view .LVU106
	addq	$1, %rax	#, i
.LVL12:
	.loc 1 15 26 discriminator 1 view .LVU107
	cmpq	%rax, %rdx	# i, n
	jne	.L6	#,
.LVL13:
.L1:
	.loc 1 15 26 is_stmt 0 discriminator 1 view .LVU108
.LBE5:
# src/main.c:19: }
	.loc 1 19 1 view .LVU109
.LVL14:
	.loc 1 19 1 view .LVU110
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	xorl	%r9d, %r9d	#
	xorl	%r10d, %r10d	#
	xorl	%r11d, %r11d	#
	ret	
	.cfi_endproc
.LFE39:
	.size	init_dataset, .-init_dataset
	.p2align 4
	.globl	process_subtask_a
	.type	process_subtask_a, @function
process_subtask_a:
.LVL15:
.LFB40:
	.loc 1 22 78 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 23 5 view .LVU112
.LBB6:
	.loc 1 23 10 view .LVU113
	.loc 1 23 26 discriminator 1 view .LVU114
.LBE6:
# src/main.c:22: void process_subtask_a(const float *a, const float *b, float *out, size_t n) {
	.loc 1 22 78 is_stmt 0 view .LVU115
	movq	%rdi, %r8	# a, a
	movq	%rdx, %rdi	# out, out
.LVL16:
	.loc 1 22 78 view .LVU116
	movq	%rcx, %rdx	# n, n
.LVL17:
.LBB7:
# src/main.c:23:     for (size_t i = 0; i < n; i++) {
	.loc 1 23 26 discriminator 1 view .LVU117
	testq	%rcx, %rcx	# n
	je	.L19	#,
	cmpq	$1, %rcx	#, n
	je	.L30	#,
	leaq	-4(%rdi), %rax	#, _70
	movq	%rax, %rcx	# _70, _19
.LVL18:
	.loc 1 23 26 discriminator 1 view .LVU118
	subq	%rsi, %rcx	# b, _19
	cmpq	$8, %rcx	#, _19
	jbe	.L30	#,
	subq	%r8, %rax	# a, _28
	cmpq	$8, %rax	#, _28
	jbe	.L30	#,
	leaq	-1(%rdx), %rax	#, _63
	cmpq	$2, %rax	#, _63
	jbe	.L31	#,
	movq	%rdx, %rcx	# n, bnd.55_66
	movss	.LC16(%rip), %xmm3	#, tmp201
	movss	.LC18(%rip), %xmm2	#, tmp198
	xorl	%eax, %eax	# ivtmp.97
	shrq	$2, %rcx	#, bnd.55_66
	salq	$4, %rcx	#, _123
	shufps	$0, %xmm3, %xmm3	# tmp201
	shufps	$0, %xmm2, %xmm2	# tmp198
.LVL19:
	.loc 1 23 26 discriminator 1 view .LVU119
	.p2align 5
	.p2align 4
	.p2align 3
.L23:
	.loc 1 24 9 is_stmt 1 view .LVU120
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 20 is_stmt 0 view .LVU121
	movups	(%r8,%rax), %xmm0	# MEM <const vector(4) float> [(const float *)a_14(D) + ivtmp.97_110 * 1], vect__3.60_72
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 37 view .LVU122
	movups	(%rsi,%rax), %xmm1	# MEM <const vector(4) float> [(const float *)b_15(D) + ivtmp.97_110 * 1], vect__6.64_76
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 view .LVU123
	mulps	%xmm3, %xmm0	# tmp201, vect__4.61_73
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU124
	mulps	%xmm2, %xmm1	# tmp198, vect__7.65_77
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 33 view .LVU125
	addps	%xmm1, %xmm0	# vect__7.65_77, vect__9.66_78
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 16 view .LVU126
	movups	%xmm0, (%rdi,%rax)	# vect__9.66_78, MEM <vector(4) float> [(float *)out_16(D) + ivtmp.97_110 * 1]
	.loc 1 23 32 is_stmt 1 discriminator 3 view .LVU127
	.loc 1 23 26 discriminator 1 view .LVU128
	addq	$16, %rax	#, ivtmp.97
	cmpq	%rcx, %rax	# _123, ivtmp.97
	jne	.L23	#,
	testb	$3, %dl	#, n
	je	.L19	#,
	movq	%rdx, %rax	# n, tmp.72
	andq	$-4, %rax	#, tmp.72
	subq	%rax, %rdx	# tmp.72, n
.LVL20:
	.loc 1 23 26 is_stmt 0 discriminator 1 view .LVU129
	cmpq	$1, %rdx	#, n
	je	.L25	#,
.L22:
	.loc 1 24 9 is_stmt 1 view .LVU130
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 is_stmt 0 view .LVU131
	movq	.LC19(%rip), %xmm1	#, tmp168
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 20 view .LVU132
	movq	(%r8,%rax,4), %xmm0	# MEM <const vector(2) float> [(const float *)vectp_a.74_107], vect__52.75_111
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU133
	movq	.LC20(%rip), %xmm2	#, tmp174
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 view .LVU134
	mulps	%xmm1, %xmm0	# tmp168, tmp171
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 37 view .LVU135
	movq	(%rsi,%rax,4), %xmm1	# MEM <const vector(2) float> [(const float *)vectp_b.78_113], vect__55.79_117
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU136
	mulps	%xmm2, %xmm1	# tmp174, tmp177
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 33 view .LVU137
	addps	%xmm1, %xmm0	# tmp177, tmp181
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 16 view .LVU138
	movlps	%xmm0, (%rdi,%rax,4)	# vect__58.81_119, MEM <vector(2) float> [(float *)vectp_out.83_120]
	.loc 1 23 32 is_stmt 1 discriminator 3 view .LVU139
	.loc 1 23 26 discriminator 1 view .LVU140
	testb	$1, %dl	#, n
	je	.L19	#,
	andq	$-2, %rdx	#, niters_vector_mult_vf.71_105
	addq	%rdx, %rax	# niters_vector_mult_vf.71_105, tmp.72
.L25:
.LVL21:
	.loc 1 24 9 view .LVU141
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 is_stmt 0 view .LVU142
	movss	.LC16(%rip), %xmm0	#, tmp186
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU143
	movss	.LC18(%rip), %xmm1	#, tmp189
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 view .LVU144
	mulss	(%r8,%rax,4), %xmm0	# *_89, _91
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU145
	mulss	(%rsi,%rax,4), %xmm1	# *_92, _94
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 33 view .LVU146
	addss	%xmm1, %xmm0	# _94, _96
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 16 view .LVU147
	movss	%xmm0, (%rdi,%rax,4)	# _96, *_95
	.loc 1 23 32 is_stmt 1 discriminator 3 view .LVU148
.LVL22:
	.loc 1 23 26 discriminator 1 view .LVU149
.LVL23:
	.loc 1 23 26 is_stmt 0 discriminator 1 view .LVU150
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	ret	
.LVL24:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 23 26 discriminator 1 view .LVU151
	movss	.LC16(%rip), %xmm3	#, tmp199
	movss	.LC18(%rip), %xmm2	#, tmp200
	xorl	%eax, %eax	# i
.LVL25:
	.loc 1 23 26 discriminator 1 view .LVU152
	.p2align 6
	.p2align 4
	.p2align 3
.L27:
.LVL26:
	.loc 1 24 9 is_stmt 1 view .LVU153
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 is_stmt 0 view .LVU154
	movss	(%r8,%rax,4), %xmm0	# MEM[(const float *)a_14(D) + i_34 * 4], _39
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU155
	movss	(%rsi,%rax,4), %xmm1	# MEM[(const float *)b_15(D) + i_34 * 4], _42
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 24 view .LVU156
	mulss	%xmm3, %xmm0	# tmp199, _39
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 41 view .LVU157
	mulss	%xmm2, %xmm1	# tmp200, _42
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 33 view .LVU158
	addss	%xmm1, %xmm0	# _42, _44
# src/main.c:24:         out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
	.loc 1 24 16 view .LVU159
	movss	%xmm0, (%rdi,%rax,4)	# _44, MEM[(float *)out_16(D) + i_34 * 4]
	.loc 1 23 32 is_stmt 1 discriminator 3 view .LVU160
	addq	$1, %rax	#, i
.LVL27:
	.loc 1 23 26 discriminator 1 view .LVU161
	cmpq	%rax, %rdx	# i, n
	jne	.L27	#,
.LVL28:
.L19:
	.loc 1 23 26 is_stmt 0 discriminator 1 view .LVU162
.LBE7:
# src/main.c:26: }
	.loc 1 26 1 view .LVU163
.LVL29:
	.loc 1 26 1 view .LVU164
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	ret	
.LVL30:
.L31:
.LBB8:
# src/main.c:23:     for (size_t i = 0; i < n; i++) {
	.loc 1 23 17 view .LVU165
	xorl	%eax, %eax	# tmp.72
	jmp	.L22	#
.LBE8:
	.cfi_endproc
.LFE40:
	.size	process_subtask_a, .-process_subtask_a
	.p2align 4
	.globl	compute_heavy_workload
	.type	compute_heavy_workload, @function
compute_heavy_workload:
.LVL31:
.LFB41:
	.loc 1 29 84 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 30 5 view .LVU167
	.loc 1 31 5 view .LVU168
.LBB9:
	.loc 1 31 10 view .LVU169
	.loc 1 31 26 discriminator 1 view .LVU170
.LBE9:
# src/main.c:29: float compute_heavy_workload(const float *a, const float *b, float *out, size_t n) {
	.loc 1 29 84 is_stmt 0 view .LVU171
	movq	%rcx, %r8	# n, n
.LBB15:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 26 discriminator 1 view .LVU172
	testq	%rcx, %rcx	# n
	je	.L63	#,
	cmpq	$1, %rcx	#, n
	je	.L65	#,
	leaq	-4(%rdx), %rax	#, _90
	movq	%rax, %rcx	# _90, _35
.LVL32:
	.loc 1 31 26 discriminator 1 view .LVU173
	subq	%rsi, %rcx	# b, _35
	cmpq	$8, %rcx	#, _35
	jbe	.L65	#,
	subq	%rdi, %rax	# a, _41
	cmpq	$8, %rax	#, _41
	jbe	.L65	#,
	leaq	-1(%r8), %rax	#, _82
	cmpq	$2, %rax	#, _82
	jbe	.L66	#,
	movq	%r8, %rcx	# n, bnd.109_86
	xorl	%eax, %eax	# ivtmp.167
	pxor	%xmm2, %xmm2	# vect_accumulator_22.129
	movss	.LC6(%rip), %xmm5	#, tmp260
	movss	.LC23(%rip), %xmm4	#, tmp258
	movss	.LC25(%rip), %xmm3	#, tmp259
	shrq	$2, %rcx	#, bnd.109_86
	salq	$4, %rcx	#, _158
	shufps	$0, %xmm5, %xmm5	# tmp260
	shufps	$0, %xmm4, %xmm4	# tmp258
	shufps	$0, %xmm3, %xmm3	# tmp259
.LVL33:
	.loc 1 31 26 discriminator 1 view .LVU174
	.p2align 6
	.p2align 4
	.p2align 3
.L56:
.LBB10:
	.loc 1 32 9 is_stmt 1 view .LVU175
.LVL34:
	.loc 1 33 9 view .LVU176
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28 is_stmt 0 view .LVU177
	movups	(%rdi,%rax), %xmm0	# MEM <const vector(4) float> [(const float *)a_17(D) + ivtmp.167_147 * 1], vect__6.118_96
	movups	(%rsi,%rax), %xmm6	# MEM <const vector(4) float> [(const float *)b_18(D) + ivtmp.167_147 * 1], tmp276
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 22 view .LVU178
	movups	(%rdx,%rax), %xmm1	# MEM <vector(4) float> [(float *)out_20(D) + ivtmp.167_147 * 1], vect__8.121_99
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28 view .LVU179
	mulps	%xmm6, %xmm0	# tmp276, vect__6.118_96
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 view .LVU180
	mulps	%xmm5, %xmm1	# tmp260, vect__9.122_100
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 34 view .LVU181
	addps	%xmm1, %xmm0	# vect__9.122_100, vect__14.123_101
	addps	%xmm4, %xmm0	# tmp258, vect__10.124
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31 view .LVU182
	movaps	%xmm0, %xmm1	# vect__10.124, vect__11.127_106
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 16 view .LVU183
	movups	%xmm0, (%rdx,%rax)	# vect__10.124, MEM <vector(4) float> [(float *)out_20(D) + ivtmp.167_147 * 1]
	.loc 1 33 16 view .LVU184
	addq	$16, %rax	#, ivtmp.167
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31 view .LVU185
	mulps	%xmm3, %xmm1	# tmp259, vect__11.127_106
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 21 view .LVU186
	addps	%xmm1, %xmm2	# vect__11.127_106, vect_accumulator_22.129
	.loc 1 34 9 is_stmt 1 view .LVU187
.LBE10:
	.loc 1 31 32 discriminator 3 view .LVU188
	.loc 1 31 26 discriminator 1 view .LVU189
	cmpq	%rcx, %rax	# _158, ivtmp.167
	jne	.L56	#,
	movaps	%xmm2, %xmm0	# vect_accumulator_22.129, tmp192
	movhlps	%xmm2, %xmm0	# vect_accumulator_22.129, tmp192
	addps	%xmm2, %xmm0	# vect_accumulator_22.129, tmp193
	movaps	%xmm0, %xmm1	# tmp193, tmp194
	shufps	$85, %xmm0, %xmm1	#, tmp193, tmp194
	addps	%xmm0, %xmm1	# tmp193, tmp191
	testb	$3, %r8b	#, n
	je	.L52	#,
	movq	%r8, %rax	# n, tmp.134
	andq	$-4, %rax	#, tmp.134
	subq	%rax, %r8	# tmp.134, n
.LVL35:
	.loc 1 31 26 is_stmt 0 discriminator 1 view .LVU190
	cmpq	$1, %r8	#, n
	je	.L59	#,
	movhlps	%xmm2, %xmm0	# vect_accumulator_22.129, _172
	addps	%xmm0, %xmm2	# _172, tmp200
.LVL36:
.L55:
.LBB11:
	.loc 1 32 9 is_stmt 1 view .LVU191
	.loc 1 33 9 view .LVU192
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 31 is_stmt 0 view .LVU193
	movq	(%rsi,%rax,4), %xmm0	# MEM <const vector(2) float> [(const float *)vectp_b.139_149], vect__68.140_153
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 24 view .LVU194
	movq	(%rdi,%rax,4), %xmm1	# MEM <const vector(2) float> [(const float *)vectp_a.136_144], vect__66.137_148
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 view .LVU195
	movq	.LC26(%rip), %xmm3	#, tmp211
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28 view .LVU196
	mulps	%xmm0, %xmm1	# vect__68.140_153, tmp208
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 22 view .LVU197
	movq	(%rdx,%rax,4), %xmm0	# MEM <vector(2) float> [(float *)vectp_out.143_155], vect__71.144_159
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 view .LVU198
	mulps	%xmm3, %xmm0	# tmp211, tmp214
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 34 view .LVU199
	addps	%xmm0, %xmm1	# tmp214, tmp218
	movq	.LC27(%rip), %xmm0	#, tmp219
	addps	%xmm0, %xmm1	# tmp219, tmp222
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31 view .LVU200
	movq	.LC28(%rip), %xmm0	#, tmp224
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 34 view .LVU201
	movq	%xmm1, %r9	# tmp222, vect__74.147
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31 view .LVU202
	mulps	%xmm0, %xmm1	# tmp224, tmp227
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 16 view .LVU203
	movq	%r9, (%rdx,%rax,4)	# vect__74.147, MEM <vector(2) float> [(float *)vectp_out.143_155]
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 21 view .LVU204
	addps	%xmm2, %xmm1	# _97, tmp230
	movaps	%xmm1, %xmm0	# tmp230, vect_accumulator_77.152
	.loc 1 34 9 is_stmt 1 view .LVU205
.LBE11:
	.loc 1 31 32 discriminator 3 view .LVU206
	.loc 1 31 26 discriminator 1 view .LVU207
	psrlq	$32, %xmm0	#, _179
	addps	%xmm0, %xmm1	# _179, tmp236
	testb	$1, %r8b	#, n
	je	.L52	#,
	andq	$-2, %r8	#, niters_vector_mult_vf.133_142
	addq	%r8, %rax	# niters_vector_mult_vf.133_142, tmp.134
.LVL37:
.L59:
.LBB12:
	.loc 1 32 9 view .LVU208
	.loc 1 33 9 view .LVU209
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28 is_stmt 0 view .LVU210
	movss	(%rdi,%rax,4), %xmm0	# *_120, *_120
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 view .LVU211
	movss	.LC6(%rip), %xmm2	#, tmp243
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28 view .LVU212
	mulss	(%rsi,%rax,4), %xmm0	# *_122, _124
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 view .LVU213
	mulss	(%rdx,%rax,4), %xmm2	# *_125, _127
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 34 view .LVU214
	addss	%xmm2, %xmm0	# _127, _128
	addss	.LC23(%rip), %xmm0	#, _129
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 16 view .LVU215
	movss	%xmm0, (%rdx,%rax,4)	# _129, *_125
.LVL38:
	.loc 1 34 9 is_stmt 1 view .LVU216
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31 is_stmt 0 view .LVU217
	mulss	.LC25(%rip), %xmm0	#, _131
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 21 view .LVU218
	addss	%xmm0, %xmm1	# _131, <retval>
.LVL39:
	.loc 1 34 21 view .LVU219
.LBE12:
	.loc 1 31 32 is_stmt 1 discriminator 3 view .LVU220
	.loc 1 31 26 discriminator 1 view .LVU221
.L52:
	.loc 1 31 26 is_stmt 0 discriminator 1 view .LVU222
.LBE15:
# src/main.c:37: }
	.loc 1 37 1 view .LVU223
	movaps	%xmm1, %xmm0	# <retval>,
.LVL40:
	.loc 1 37 1 view .LVU224
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	xorl	%r9d, %r9d	#
	ret	
.LVL41:
	.p2align 4,,10
	.p2align 3
.L65:
	.loc 1 37 1 view .LVU225
	movss	.LC6(%rip), %xmm5	#, tmp263
	movss	.LC23(%rip), %xmm4	#, tmp261
.LBB16:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 26 discriminator 1 view .LVU226
	xorl	%eax, %eax	# i
	pxor	%xmm1, %xmm1	# <retval>
	movss	.LC25(%rip), %xmm3	#, tmp262
.LVL42:
	.loc 1 31 26 discriminator 1 view .LVU227
	.p2align 6
	.p2align 4
	.p2align 3
.L61:
.LVL43:
.LBB13:
	.loc 1 32 9 is_stmt 1 view .LVU228
	.loc 1 33 9 view .LVU229
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 is_stmt 0 view .LVU230
	movss	(%rdx,%rax,4), %xmm2	# MEM[(float *)out_20(D) + i_26 * 4], _52
# src/main.c:32:         float term = (a[i] * b[i]) + 0.125f;
	.loc 1 32 28 view .LVU231
	movss	(%rdi,%rax,4), %xmm0	# MEM[(const float *)a_17(D) + i_26 * 4], MEM[(const float *)a_17(D) + i_26 * 4]
	mulss	(%rsi,%rax,4), %xmm0	# MEM[(const float *)b_18(D) + i_26 * 4], _49
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 26 view .LVU232
	mulss	%xmm5, %xmm2	# tmp263, _52
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 34 view .LVU233
	addss	%xmm2, %xmm0	# _52, _53
	addss	%xmm4, %xmm0	# tmp261, _54
# src/main.c:33:         out[i] = (out[i] * 0.5f) + term;
	.loc 1 33 16 view .LVU234
	movss	%xmm0, (%rdx,%rax,4)	# _54, MEM[(float *)out_20(D) + i_26 * 4]
.LVL44:
	.loc 1 34 9 is_stmt 1 view .LVU235
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 31 is_stmt 0 view .LVU236
	mulss	%xmm3, %xmm0	# tmp262, _56
.LBE13:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 32 discriminator 3 view .LVU237
	addq	$1, %rax	#, i
.LVL45:
.LBB14:
# src/main.c:34:         accumulator += out[i] * 0.0001f;
	.loc 1 34 21 view .LVU238
	addss	%xmm0, %xmm1	# _56, <retval>
.LVL46:
	.loc 1 34 21 view .LVU239
.LBE14:
	.loc 1 31 32 is_stmt 1 discriminator 3 view .LVU240
	.loc 1 31 26 discriminator 1 view .LVU241
	cmpq	%rax, %r8	# i, n
	jne	.L61	#,
.LBE16:
# src/main.c:37: }
	.loc 1 37 1 is_stmt 0 view .LVU242
	movaps	%xmm1, %xmm0	# <retval>,
.LVL47:
	.loc 1 37 1 view .LVU243
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	xorl	%r9d, %r9d	#
	ret	
.LVL48:
	.p2align 4,,10
	.p2align 3
.L63:
# src/main.c:30:     float accumulator = 0.0f;
	.loc 1 30 11 view .LVU244
	pxor	%xmm1, %xmm1	# <retval>
	.loc 1 36 5 is_stmt 1 view .LVU245
# src/main.c:37: }
	.loc 1 37 1 is_stmt 0 view .LVU246
	movaps	%xmm1, %xmm0	# <retval>,
.LVL49:
	.loc 1 37 1 view .LVU247
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	xorl	%r8d, %r8d	#
	xorl	%r9d, %r9d	#
	ret	
.LVL50:
.L66:
.LBB17:
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 26 discriminator 1 view .LVU248
	xorps	%xmm2, %xmm2	# _97
# src/main.c:31:     for (size_t i = 0; i < n; i++) {
	.loc 1 31 17 view .LVU249
	xorl	%eax, %eax	# tmp.134
	jmp	.L55	#
.LBE17:
	.cfi_endproc
.LFE41:
	.size	compute_heavy_workload, .-compute_heavy_workload
	.p2align 4
	.globl	process_subtask_b
	.type	process_subtask_b, @function
process_subtask_b:
.LVL51:
.LFB42:
	.loc 1 40 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 41 5 view .LVU251
	.loc 1 42 5 view .LVU252
.LBB18:
	.loc 1 42 10 view .LVU253
	.loc 1 42 26 discriminator 1 view .LVU254
	testq	%rsi, %rsi	# n
	je	.L90	#,
	leaq	-1(%rsi), %rax	#, _17
	cmpq	$2, %rax	#, _17
	jbe	.L91	#,
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 is_stmt 0 view .LVU255
	movl	$15, %ecx	#, tmp153
	movq	%rsi, %rdx	# n, bnd.179_8
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 26 discriminator 1 view .LVU256
	pxor	%xmm3, %xmm3	# vect_local_sum_14.193
	movq	%rdi, %rax	# out, ivtmp.199
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 view .LVU257
	movq	%rcx, %xmm4	# tmp153, tmp153
	movl	$2, %ecx	#, tmp157
	shrq	$2, %rdx	#, bnd.179_8
	movss	.LC31(%rip), %xmm7	#, tmp193
	movq	%rcx, %xmm6	# tmp157, tmp157
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 26 discriminator 1 view .LVU258
	movl	$4, %ecx	#, tmp171
	salq	$4, %rdx	#, _34
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 view .LVU259
	punpcklqdq	%xmm4, %xmm4	# tmp152
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 26 discriminator 1 view .LVU260
	movq	%rcx, %xmm5	# tmp171, tmp171
	addq	%rdi, %rdx	# out, _20
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 view .LVU261
	punpcklqdq	%xmm6, %xmm6	# tmp156
	shufps	$0, %xmm7, %xmm7	# tmp193
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 26 discriminator 1 view .LVU262
	movdqa	.LC0(%rip), %xmm1	#, vect_vec_iv_.185
	punpcklqdq	%xmm5, %xmm5	# tmp170
.LVL52:
	.loc 1 42 26 discriminator 1 view .LVU263
	.p2align 6
	.p2align 4
	.p2align 3
.L87:
	.loc 1 43 9 is_stmt 1 view .LVU264
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 is_stmt 0 view .LVU265
	movdqa	%xmm1, %xmm2	# vect_vec_iv_.185, _42
	movdqa	%xmm1, %xmm0	# vect_vec_iv_.185, vect__4.186_43
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 26 discriminator 1 view .LVU266
	paddq	%xmm5, %xmm1	# tmp170, vect_vec_iv_.185
	addq	$16, %rax	#, ivtmp.199
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 view .LVU267
	paddq	%xmm6, %xmm2	# tmp156, _42
	pand	%xmm4, %xmm0	# tmp152, vect__4.186_43
	pand	%xmm4, %xmm2	# tmp152, vect__4.186_44
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31 view .LVU268
	shufps	$136, %xmm2, %xmm0	#, vect__4.186_44, vect__5.188_47
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 25 view .LVU269
	movups	-16(%rax), %xmm2	# MEM <const vector(4) float> [(const float *)_22], vect__3.184_39
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31 view .LVU270
	cvtdq2ps	%xmm0, %xmm0	# vect__5.188_47, vect__5.189_48
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 47 view .LVU271
	mulps	%xmm7, %xmm2	# tmp193, _53
	mulps	%xmm2, %xmm0	# _53, vect__7.191_50
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 19 view .LVU272
	addps	%xmm0, %xmm3	# vect__7.191_50, vect_local_sum_14.193
	.loc 1 42 32 is_stmt 1 discriminator 3 view .LVU273
	.loc 1 42 26 discriminator 1 view .LVU274
	cmpq	%rdx, %rax	# _20, ivtmp.199
	jne	.L87	#,
	movaps	%xmm3, %xmm1	# vect_local_sum_14.193, tmp173
	movhlps	%xmm3, %xmm1	# vect_local_sum_14.193, tmp173
	addps	%xmm3, %xmm1	# vect_local_sum_14.193, tmp174
	movaps	%xmm1, %xmm0	# tmp174, tmp175
	shufps	$85, %xmm1, %xmm0	#, tmp174, tmp175
	addps	%xmm1, %xmm0	# tmp174, tmp172
	testb	$3, %sil	#, n
	je	.L84	#,
	movq	%rsi, %rax	# n, niters_vector_mult_vf.180
	andq	$-4, %rax	#, niters_vector_mult_vf.180
.L86:
.LVL53:
	.loc 1 43 9 view .LVU275
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 is_stmt 0 view .LVU276
	movq	%rax, %rdx	# niters_vector_mult_vf.180, _4
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31 view .LVU277
	pxor	%xmm1, %xmm1	# _5
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 47 view .LVU278
	movss	.LC31(%rip), %xmm2	#, tmp181
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 view .LVU279
	andl	$15, %edx	#, _4
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31 view .LVU280
	cvtsi2ssq	%rdx, %xmm1	# _4, _5
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 29 view .LVU281
	mulss	(%rdi,%rax,4), %xmm1	# *_2, _6
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 32 discriminator 3 view .LVU282
	leaq	1(%rax), %rdx	#, i
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 47 view .LVU283
	mulss	%xmm2, %xmm1	# tmp181, _7
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 19 view .LVU284
	addss	%xmm1, %xmm0	# _7, <retval>
.LVL54:
	.loc 1 42 32 is_stmt 1 discriminator 3 view .LVU285
	.loc 1 42 26 discriminator 1 view .LVU286
	cmpq	%rsi, %rdx	# n, i
	jnb	.L84	#,
	.loc 1 43 9 view .LVU287
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 is_stmt 0 view .LVU288
	andl	$15, %edx	#, _60
.LVL55:
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31 view .LVU289
	pxor	%xmm1, %xmm1	# _62
	cvtsi2ssq	%rdx, %xmm1	# _60, _62
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 29 view .LVU290
	mulss	4(%rdi,%rax,4), %xmm1	# *_58, _63
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 32 discriminator 3 view .LVU291
	leaq	2(%rax), %rdx	#, i
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 47 view .LVU292
	mulss	%xmm2, %xmm1	# tmp181, _64
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 19 view .LVU293
	addss	%xmm1, %xmm0	# _64, <retval>
.LVL56:
	.loc 1 42 32 is_stmt 1 discriminator 3 view .LVU294
	.loc 1 42 26 discriminator 1 view .LVU295
	cmpq	%rsi, %rdx	# n, i
	jnb	.L84	#,
	.loc 1 43 9 view .LVU296
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 41 is_stmt 0 view .LVU297
	andl	$15, %edx	#, _29
.LVL57:
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 31 view .LVU298
	pxor	%xmm1, %xmm1	# _27
	cvtsi2ssq	%rdx, %xmm1	# _29, _27
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 29 view .LVU299
	mulss	8(%rdi,%rax,4), %xmm1	# *_31, _26
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 47 view .LVU300
	mulss	%xmm2, %xmm1	# tmp181, _25
# src/main.c:43:         local_sum += out[i] * (float)(i & 15) * 0.0625f;
	.loc 1 43 19 view .LVU301
	addss	%xmm1, %xmm0	# _25, <retval>
.LVL58:
	.loc 1 42 32 is_stmt 1 discriminator 3 view .LVU302
	.loc 1 42 26 discriminator 1 view .LVU303
.LVL59:
	.loc 1 42 26 is_stmt 0 discriminator 1 view .LVU304
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
.LVL60:
	.p2align 4,,10
	.p2align 3
.L90:
	.loc 1 42 26 discriminator 1 view .LVU305
.LBE18:
# src/main.c:41:     float local_sum = 0.0f;
	.loc 1 41 11 view .LVU306
	pxor	%xmm0, %xmm0	# <retval>
	.loc 1 45 5 is_stmt 1 view .LVU307
.LVL61:
.L84:
# src/main.c:46: }
	.loc 1 46 1 is_stmt 0 view .LVU308
.LVL62:
	.loc 1 46 1 view .LVU309
	xorl	%eax, %eax	#
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
.LVL63:
.L91:
.LBB19:
# src/main.c:42:     for (size_t i = 0; i < n; i++) {
	.loc 1 42 17 view .LVU310
	xorl	%eax, %eax	# niters_vector_mult_vf.180
.LBE19:
# src/main.c:41:     float local_sum = 0.0f;
	.loc 1 41 11 view .LVU311
	pxor	%xmm0, %xmm0	# <retval>
	jmp	.L86	#
	.cfi_endproc
.LFE42:
	.size	process_subtask_b, .-process_subtask_b
	.p2align 4
	.globl	benchmark_pipeline
	.type	benchmark_pipeline, @function
benchmark_pipeline:
.LVL64:
.LFB43:
	.loc 1 49 45 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 50 5 view .LVU313
	.loc 1 52 5 view .LVU314
.LBB20:
	.loc 1 52 10 view .LVU315
	.loc 1 52 28 discriminator 1 view .LVU316
	testq	%rdi, %rdi	# iterations
	je	.L99	#,
.LBE20:
# src/main.c:49: float benchmark_pipeline(size_t iterations) {
	.loc 1 49 45 is_stmt 0 view .LVU317
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# src/main.c:50:     float total_checksum = 0.0f;
	.loc 1 50 11 view .LVU318
	pxor	%xmm1, %xmm1	# <retval>
# src/main.c:49: float benchmark_pipeline(size_t iterations) {
	.loc 1 49 45 view .LVU319
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	.cfi_offset 12, -24
	movq	%rdi, %r12	# iterations, iterations
	pushq	%rbx	#
	.cfi_offset 3, -32
.LBB23:
# src/main.c:52:     for (size_t it = 0; it < iterations; it++) {
	.loc 1 52 17 view .LVU320
	xorl	%ebx, %ebx	# it
.LBE23:
# src/main.c:49: float benchmark_pipeline(size_t iterations) {
	.loc 1 49 45 view .LVU321
	subq	$16, %rsp	#,
.LVL65:
	.p2align 4
	.p2align 3
.L98:
.LBB24:
.LBB21:
# src/main.c:53:         process_subtask_a(input_a, input_b, output_res, DATA_SIZE);
	.loc 1 53 9 view .LVU322
	movl	$4194304, %ecx	#,
	movss	%xmm1, -24(%rbp)	# <retval>, %sfp
.LVL66:
	.loc 1 53 9 is_stmt 1 view .LVU323
.LBE21:
# src/main.c:52:     for (size_t it = 0; it < iterations; it++) {
	.loc 1 52 44 is_stmt 0 discriminator 3 view .LVU324
	addq	$1, %rbx	#, it
.LVL67:
.LBB22:
# src/main.c:53:         process_subtask_a(input_a, input_b, output_res, DATA_SIZE);
	.loc 1 53 9 view .LVU325
	leaq	output_res(%rip), %rdx	#,
	leaq	input_b(%rip), %rsi	#,
	leaq	input_a(%rip), %rdi	#,
	call	process_subtask_a@PLT	#
.LVL68:
	.loc 1 54 9 is_stmt 1 view .LVU326
# src/main.c:54:         float acc = compute_heavy_workload(input_a, input_b, output_res, DATA_SIZE);
	.loc 1 54 21 is_stmt 0 view .LVU327
	movl	$4194304, %ecx	#,
	leaq	output_res(%rip), %rdx	#,
	leaq	input_b(%rip), %rsi	#,
	leaq	input_a(%rip), %rdi	#,
	call	compute_heavy_workload@PLT	#
.LVL69:
	.loc 1 55 9 is_stmt 1 view .LVU328
# src/main.c:55:         float sub_b = process_subtask_b(output_res, DATA_SIZE);
	.loc 1 55 23 is_stmt 0 view .LVU329
	movl	$4194304, %esi	#,
	leaq	output_res(%rip), %rdi	#,
# src/main.c:54:         float acc = compute_heavy_workload(input_a, input_b, output_res, DATA_SIZE);
	.loc 1 54 21 view .LVU330
	movss	%xmm0, -20(%rbp)	#, %sfp
.LVL70:
# src/main.c:55:         float sub_b = process_subtask_b(output_res, DATA_SIZE);
	.loc 1 55 23 view .LVU331
	call	process_subtask_b@PLT	#
.LVL71:
	.loc 1 56 9 is_stmt 1 view .LVU332
# src/main.c:56:         total_checksum += acc + (sub_b * 0.00001f);
	.loc 1 56 40 is_stmt 0 view .LVU333
	mulss	.LC32(%rip), %xmm0	#, _1
.LVL72:
# src/main.c:56:         total_checksum += acc + (sub_b * 0.00001f);
	.loc 1 56 24 view .LVU334
	movss	-24(%rbp), %xmm1	# %sfp, <retval>
	addss	-20(%rbp), %xmm0	# %sfp, _4
	addss	%xmm0, %xmm1	# _4, <retval>
.LVL73:
	.loc 1 56 24 view .LVU335
.LBE22:
	.loc 1 52 44 is_stmt 1 discriminator 3 view .LVU336
	.loc 1 52 28 discriminator 1 view .LVU337
	cmpq	%rbx, %r12	# it, iterations
	jne	.L98	#,
.LBE24:
# src/main.c:60: }
	.loc 1 60 1 is_stmt 0 view .LVU338
	addq	$16, %rsp	#,
	movaps	%xmm1, %xmm0	# <retval>,
	popq	%rbx	#
.LVL74:
	.loc 1 60 1 view .LVU339
	popq	%r12	#
.LVL75:
	.loc 1 60 1 view .LVU340
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
.LVL76:
	.p2align 4,,10
	.p2align 3
.L99:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
# src/main.c:50:     float total_checksum = 0.0f;
	.loc 1 50 11 view .LVU341
	pxor	%xmm1, %xmm1	# <retval>
	.loc 1 59 5 is_stmt 1 view .LVU342
# src/main.c:60: }
	.loc 1 60 1 is_stmt 0 view .LVU343
	movaps	%xmm1, %xmm0	# <retval>,
.LVL77:
	.loc 1 60 1 view .LVU344
	xorl	%edx, %edx	#
	xorl	%ecx, %ecx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	ret	
	.cfi_endproc
.LFE43:
	.size	benchmark_pipeline, .-benchmark_pipeline
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC33:
	.string	"Iterations: %zu | Data items: %d | Checksum: %.6f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL78:
.LFB44:
	.loc 1 62 33 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 63 5 view .LVU346
	.loc 1 65 5 view .LVU347
# src/main.c:62: int main(int argc, char **argv) {
	.loc 1 62 33 is_stmt 0 view .LVU348
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
# src/main.c:65:     if (argc > 1) {
	.loc 1 65 8 view .LVU349
	cmpl	$1, %edi	#, argc
	jg	.L106	#,
.LVL79:
.L108:
# src/main.c:63:     size_t iterations = NUM_ITERATIONS;
	.loc 1 63 12 view .LVU350
	movl	$120, %ebx	#, iterations
.L107:
.LVL80:
	.loc 1 72 5 is_stmt 1 view .LVU351
	movl	$4194304, %edx	#,
	leaq	input_b(%rip), %rsi	#,
	leaq	input_a(%rip), %rdi	#,
	call	init_dataset@PLT	#
.LVL81:
	.loc 1 74 5 view .LVU352
# src/main.c:74:     float result = benchmark_pipeline(iterations);
	.loc 1 74 20 is_stmt 0 view .LVU353
	movq	%rbx, %rdi	# iterations,
	call	benchmark_pipeline@PLT	#
.LVL82:
	.loc 1 76 5 is_stmt 1 view .LVU354
.LBB25:
.LBI25:
	.file 2 "/nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/bits/stdio2.h"
	.loc 2 116 1 view .LVU355
.LBB26:
	.loc 2 118 3 view .LVU356
# /nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/bits/stdio2.h:118:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 118 10 is_stmt 0 view .LVU357
	movq	%rbx, %rdx	# iterations,
	movl	$4194304, %ecx	#,
	leaq	.LC33(%rip), %rsi	#,
	movl	$2, %edi	#,
	movl	$1, %eax	#,
.LBE26:
.LBE25:
# src/main.c:76:     printf("Iterations: %zu | Data items: %d | Checksum: %.6f\n", iterations, DATA_SIZE, result);
	.loc 1 76 5 view .LVU358
	cvtss2sd	%xmm0, %xmm0	# result, _3
.LVL83:
.LBB28:
.LBB27:
# /nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/bits/stdio2.h:118:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	.loc 2 118 10 view .LVU359
	call	__printf_chk@PLT	#
.LVL84:
	.loc 2 118 10 view .LVU360
.LBE27:
.LBE28:
	.loc 1 78 5 is_stmt 1 view .LVU361
# src/main.c:79: }
	.loc 1 79 1 is_stmt 0 view .LVU362
	addq	$8, %rsp	#,
	xorl	%eax, %eax	#
	popq	%rbx	#
.LVL85:
	.loc 1 79 1 view .LVU363
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.LVL86:
.L106:
	.cfi_restore_state
.LBB29:
	.loc 1 66 9 is_stmt 1 view .LVU364
# src/main.c:66:         long custom_it = strtol(argv[1], NULL, 10);
	.loc 1 66 26 is_stmt 0 view .LVU365
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_8(D) + 8B], MEM[(char * *)argv_8(D) + 8B]
.LVL87:
	.loc 1 66 26 view .LVU366
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
.LVL88:
	.loc 1 66 26 view .LVU367
	call	__isoc23_strtol@PLT	#
.LVL89:
	.loc 1 67 9 is_stmt 1 view .LVU368
# src/main.c:67:         if (custom_it > 0) {
	.loc 1 67 12 is_stmt 0 view .LVU369
	testq	%rax, %rax	# custom_it
	jle	.L108	#,
	.loc 1 68 13 is_stmt 1 view .LVU370
# src/main.c:68:             iterations = (size_t)custom_it;
	.loc 1 68 24 is_stmt 0 view .LVU371
	movq	%rax, %rbx	# custom_it, iterations
	jmp	.L107	#
.LBE29:
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.local	output_res
	.comm	output_res,16777216,32
	.local	input_b
	.comm	input_b,16777216,32
	.local	input_a
	.comm	input_a,16777216,32
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.quad	0
	.quad	1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	989855744
	.set	.LC6,.LC26
	.align 4
.LC11:
	.long	998244352
	.align 4
.LC13:
	.long	1048576000
	.set	.LC16,.LC19
	.set	.LC18,.LC20
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC19:
	.long	1065772646
	.long	1065772646
	.align 8
.LC20:
	.long	1064514355
	.long	1064514355
	.set	.LC23,.LC27
	.set	.LC25,.LC28
	.align 8
.LC26:
	.long	1056964608
	.long	1056964608
	.align 8
.LC27:
	.long	1040187392
	.long	1040187392
	.align 8
.LC28:
	.long	953267991
	.long	953267991
	.section	.rodata.cst4
	.align 4
.LC31:
	.long	1031798784
	.align 4
.LC32:
	.long	925353388
	.text
.Letext0:
	.file 3 "/nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/bits/stdio2-decl.h"
	.file 4 "/nix/store/qxaq7jz61a6zkr2mq49i0zvqip2m2jj8-gcc-15.2.0/lib/gcc/x86_64-unknown-linux-gnu/15.2.0/include/stddef.h"
	.file 5 "/nix/store/15h9askp4k1lx44d9871wid23j2a8ijp-glibc-2.42-61-dev/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5ea
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x12
	.long	.LASF35
	.byte	0x1d
	.byte	0x3
	.long	0x31647
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL38
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x13
	.long	.LASF36
	.byte	0x4
	.byte	0xe5
	.byte	0x17
	.long	0x42
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0xe
	.long	0x7f
	.uleb128 0x7
	.long	0x86
	.uleb128 0xf
	.long	0x8b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0xe
	.long	0x2f
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x15
	.long	0x2f
	.long	0xc2
	.uleb128 0x16
	.long	0x42
	.long	0x3fffff
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x9
	.long	0xaf
	.uleb128 0x9
	.byte	0x3
	.quad	input_a
	.uleb128 0xb
	.long	.LASF15
	.byte	0xa
	.long	0xaf
	.uleb128 0x9
	.byte	0x3
	.quad	input_b
	.uleb128 0xb
	.long	.LASF16
	.byte	0xb
	.long	0xaf
	.uleb128 0x9
	.byte	0x3
	.quad	output_res
	.uleb128 0x17
	.long	.LASF33
	.byte	0x3
	.byte	0x34
	.byte	0xc
	.long	0x6c
	.long	0x11a
	.uleb128 0x8
	.long	0x6c
	.uleb128 0x8
	.long	0x8b
	.uleb128 0x10
	.byte	0
	.uleb128 0x18
	.long	.LASF37
	.byte	0x5
	.byte	0xd7
	.byte	0x11
	.long	.LASF38
	.long	0x73
	.long	0x13e
	.uleb128 0x8
	.long	0x90
	.uleb128 0x8
	.long	0x143
	.uleb128 0x8
	.long	0x6c
	.byte	0
	.uleb128 0x7
	.long	0x7a
	.uleb128 0xf
	.long	0x13e
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3e
	.byte	0x5
	.long	0x6c
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x292
	.uleb128 0xc
	.long	.LASF17
	.byte	0x3e
	.byte	0xe
	.long	0x6c
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0xc
	.long	.LASF18
	.byte	0x3e
	.byte	0x1b
	.long	0x13e
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x4
	.long	.LASF19
	.byte	0x3f
	.byte	0xc
	.long	0x36
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4a
	.byte	0xb
	.long	0x2f
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x19
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x1f6
	.uleb128 0x4
	.long	.LASF21
	.byte	0x42
	.byte	0xe
	.long	0x73
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0xa
	.quad	.LVL89
	.long	0x11a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x5d2
	.quad	.LBI25
	.byte	.LVU355
	.long	.LLRL35
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.long	0x24a
	.uleb128 0x1b
	.long	0x5df
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0xa
	.quad	.LVL84
	.long	0xfe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0xd
	.quad	.LVL81
	.long	0x55f
	.long	0x27d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	input_a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	input_b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.quad	.LVL82
	.long	0x292
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF23
	.byte	0x31
	.byte	0x7
	.long	0x2f
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c0
	.uleb128 0xc
	.long	.LASF19
	.byte	0x31
	.byte	0x21
	.long	0x36
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x4
	.long	.LASF24
	.byte	0x32
	.byte	0xb
	.long	0x2f
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x5
	.long	.LLRL26
	.uleb128 0x6
	.string	"it"
	.byte	0x34
	.byte	0x11
	.long	0x36
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x5
	.long	.LLRL28
	.uleb128 0x6
	.string	"acc"
	.byte	0x36
	.byte	0xf
	.long	0x2f
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x4
	.long	.LASF25
	.byte	0x37
	.byte	0xf
	.long	0x2f
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0xd
	.quad	.LVL68
	.long	0x4e5
	.long	0x35b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	input_a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	input_b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	output_res
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.quad	.LVL69
	.long	0x435
	.long	0x39b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	input_a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	input_b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	output_res
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.quad	.LVL71
	.long	0x3c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	output_res
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x28
	.byte	0x7
	.long	0x2f
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x430
	.uleb128 0x2
	.string	"out"
	.byte	0x28
	.byte	0x26
	.long	0x430
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x2
	.string	"n"
	.byte	0x28
	.byte	0x32
	.long	0x36
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x4
	.long	.LASF27
	.byte	0x29
	.byte	0xb
	.long	0x2f
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x5
	.long	.LLRL22
	.uleb128 0x6
	.string	"i"
	.byte	0x2a
	.byte	0x11
	.long	0x36
	.long	.LLST23
	.long	.LVUS23
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xa3
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1d
	.byte	0x7
	.long	0x2f
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e0
	.uleb128 0x2
	.string	"a"
	.byte	0x1d
	.byte	0x2b
	.long	0x430
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x2
	.string	"b"
	.byte	0x1d
	.byte	0x3b
	.long	0x430
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x2
	.string	"out"
	.byte	0x1d
	.byte	0x45
	.long	0x4e0
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x2
	.string	"n"
	.byte	0x1d
	.byte	0x51
	.long	0x36
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x4
	.long	.LASF29
	.byte	0x1e
	.byte	0xb
	.long	0x2f
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x5
	.long	.LLRL15
	.uleb128 0x6
	.string	"i"
	.byte	0x1f
	.byte	0x11
	.long	0x36
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x5
	.long	.LLRL17
	.uleb128 0x4
	.long	.LASF30
	.byte	0x20
	.byte	0xf
	.long	0x2f
	.long	.LLST18
	.long	.LVUS18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x2f
	.uleb128 0x11
	.long	.LASF31
	.byte	0x16
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x55f
	.uleb128 0x2
	.string	"a"
	.byte	0x16
	.byte	0x25
	.long	0x430
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2
	.string	"b"
	.byte	0x16
	.byte	0x35
	.long	0x430
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2
	.string	"out"
	.byte	0x16
	.byte	0x3f
	.long	0x4e0
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.string	"n"
	.byte	0x16
	.byte	0x4b
	.long	0x36
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x5
	.long	.LLRL8
	.uleb128 0x6
	.string	"i"
	.byte	0x17
	.byte	0x11
	.long	0x36
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF32
	.byte	0xe
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d2
	.uleb128 0x2
	.string	"a"
	.byte	0xe
	.byte	0x1a
	.long	0x4e0
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2
	.string	"b"
	.byte	0xe
	.byte	0x24
	.long	0x4e0
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2
	.string	"n"
	.byte	0xe
	.byte	0x2e
	.long	0x36
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x6
	.string	"i"
	.byte	0xf
	.byte	0x11
	.long	0x36
	.long	.LLST3
	.long	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF34
	.byte	0x2
	.byte	0x74
	.byte	0x1
	.long	0x6c
	.byte	0x3
	.uleb128 0x1e
	.long	.LASF39
	.byte	0x2
	.byte	0x74
	.byte	0x20
	.long	0x90
	.uleb128 0x10
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.sleb128 6
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
	.uleb128 0x12
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS31:
	.uleb128 0
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 0
.LLST31:
	.byte	0x6
	.quad	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL79-.LVL78
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL79-.LVL78
	.uleb128 .LVL86-.LVL78
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.LVL78
	.uleb128 .LVL87-.LVL78
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL87-.LVL78
	.uleb128 .LFE44-.LVL78
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU367
	.uleb128 .LVU367
	.uleb128 0
.LLST32:
	.byte	0x6
	.quad	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL79-.LVL78
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL79-.LVL78
	.uleb128 .LVL86-.LVL78
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.LVL78
	.uleb128 .LVL88-.LVL78
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL88-.LVL78
	.uleb128 .LFE44-.LVL78
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU347
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU363
	.uleb128 .LVU364
	.uleb128 0
.LLST33:
	.byte	0x6
	.quad	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL80-.LVL78
	.uleb128 0x3
	.byte	0x8
	.byte	0x78
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.LVL78
	.uleb128 .LVL85-.LVL78
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL86-.LVL78
	.uleb128 .LFE44-.LVL78
	.uleb128 0x3
	.byte	0x8
	.byte	0x78
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU354
	.uleb128 .LVU359
.LLST34:
	.byte	0x8
	.quad	.LVL82
	.uleb128 .LVL83-.LVL82
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS37:
	.uleb128 .LVU368
	.uleb128 0
.LLST37:
	.byte	0x8
	.quad	.LVL89
	.uleb128 .LFE44-.LVL89
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS36:
	.uleb128 .LVU355
	.uleb128 .LVU360
.LLST36:
	.byte	0x8
	.quad	.LVL82
	.uleb128 .LVL84-.LVL82
	.uleb128 0xa
	.byte	0x3
	.quad	.LC33
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 0
.LLST24:
	.byte	0x6
	.quad	.LVL64
	.byte	0x4
	.uleb128 .LVL64-.LVL64
	.uleb128 .LVL65-.LVL64
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL65-.LVL64
	.uleb128 .LVL75-.LVL64
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL75-.LVL64
	.uleb128 .LVL76-.LVL64
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.LVL64
	.uleb128 .LVL77-.LVL64
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL77-.LVL64
	.uleb128 .LFE43-.LVL64
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU316
	.uleb128 .LVU322
	.uleb128 .LVU323
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 0
.LLST25:
	.byte	0x6
	.quad	.LVL64
	.byte	0x4
	.uleb128 .LVL64-.LVL64
	.uleb128 .LVL65-.LVL64
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL66-.LVL64
	.uleb128 .LVL68-1-.LVL64
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL68-1-.LVL64
	.uleb128 .LVL73-.LVL64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x4
	.uleb128 .LVL73-.LVL64
	.uleb128 .LVL76-.LVL64
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL76-.LVL64
	.uleb128 .LFE43-.LVL64
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0
.LVUS27:
	.uleb128 .LVU316
	.uleb128 .LVU322
	.uleb128 .LVU323
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU339
	.uleb128 .LVU341
	.uleb128 0
.LLST27:
	.byte	0x6
	.quad	.LVL64
	.byte	0x4
	.uleb128 .LVL64-.LVL64
	.uleb128 .LVL65-.LVL64
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.LVL64
	.uleb128 .LVL67-.LVL64
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL67-.LVL64
	.uleb128 .LVL73-.LVL64
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.LVL64
	.uleb128 .LVL74-.LVL64
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL76-.LVL64
	.uleb128 .LFE43-.LVL64
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU328
	.uleb128 .LVU331
.LLST29:
	.byte	0x8
	.quad	.LVL69
	.uleb128 .LVL70-.LVL69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
.LVUS30:
	.uleb128 .LVU332
	.uleb128 .LVU334
.LLST30:
	.byte	0x8
	.quad	.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 0
.LLST19:
	.byte	0x6
	.quad	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL59-.LVL51
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL59-.LVL51
	.uleb128 .LVL60-.LVL51
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.LVL51
	.uleb128 .LVL62-.LVL51
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL62-.LVL51
	.uleb128 .LVL63-.LVL51
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.LVL51
	.uleb128 .LFE42-.LVL51
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 0
.LLST20:
	.byte	0x6
	.quad	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL59-.LVL51
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL59-.LVL51
	.uleb128 .LVL60-.LVL51
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.LVL51
	.uleb128 .LVL62-.LVL51
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL62-.LVL51
	.uleb128 .LVL63-.LVL51
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.LVL51
	.uleb128 .LFE42-.LVL51
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS21:
	.uleb128 .LVU254
	.uleb128 .LVU263
	.uleb128 .LVU275
	.uleb128 .LVU302
	.uleb128 .LVU303
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU308
	.uleb128 .LVU310
	.uleb128 0
.LLST21:
	.byte	0x6
	.quad	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL53-.LVL51
	.uleb128 .LVL58-.LVL51
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL58-.LVL51
	.uleb128 .LVL60-.LVL51
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL60-.LVL51
	.uleb128 .LVL61-.LVL51
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL63-.LVL51
	.uleb128 .LFE42-.LVL51
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0
.LVUS23:
	.uleb128 .LVU254
	.uleb128 .LVU263
	.uleb128 .LVU286
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU303
	.uleb128 .LVU305
	.uleb128 .LVU308
	.uleb128 .LVU310
	.uleb128 0
.LLST23:
	.byte	0x6
	.quad	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.LVL51
	.uleb128 .LVL55-.LVL51
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL55-.LVL51
	.uleb128 .LVL56-.LVL51
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.LVL51
	.uleb128 .LVL57-.LVL51
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL57-.LVL51
	.uleb128 .LVL58-.LVL51
	.uleb128 0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.LVL51
	.uleb128 .LVL61-.LVL51
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.LVL51
	.uleb128 .LFE42-.LVL51
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL40-.LVL31
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL40-.LVL31
	.uleb128 .LVL41-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL31
	.uleb128 .LVL47-.LVL31
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL47-.LVL31
	.uleb128 .LVL48-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL31
	.uleb128 .LVL49-.LVL31
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL49-.LVL31
	.uleb128 .LVL50-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL31
	.uleb128 .LFE41-.LVL31
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 0
.LLST11:
	.byte	0x6
	.quad	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL40-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL40-.LVL31
	.uleb128 .LVL41-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL31
	.uleb128 .LVL47-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL47-.LVL31
	.uleb128 .LVL48-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL31
	.uleb128 .LVL49-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL49-.LVL31
	.uleb128 .LVL50-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL31
	.uleb128 .LFE41-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 0
.LLST12:
	.byte	0x6
	.quad	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL40-.LVL31
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL40-.LVL31
	.uleb128 .LVL41-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL31
	.uleb128 .LVL47-.LVL31
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL47-.LVL31
	.uleb128 .LVL48-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL31
	.uleb128 .LVL49-.LVL31
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL49-.LVL31
	.uleb128 .LVL50-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL31
	.uleb128 .LFE41-.LVL31
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 0
.LLST13:
	.byte	0x6
	.quad	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL32-.LVL31
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL32-.LVL31
	.uleb128 .LVL35-.LVL31
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL35-.LVL31
	.uleb128 .LVL41-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL31
	.uleb128 .LVL47-.LVL31
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL47-.LVL31
	.uleb128 .LVL48-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL31
	.uleb128 .LVL49-.LVL31
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL49-.LVL31
	.uleb128 .LVL50-.LVL31
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL31
	.uleb128 .LFE41-.LVL31
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS14:
	.uleb128 .LVU170
	.uleb128 .LVU174
	.uleb128 .LVU208
	.uleb128 .LVU219
	.uleb128 .LVU221
	.uleb128 .LVU222
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU228
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST14:
	.byte	0x6
	.quad	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL33-.LVL31
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL37-.LVL31
	.uleb128 .LVL39-.LVL31
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL39-.LVL31
	.uleb128 .LVL39-.LVL31
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL41-.LVL31
	.uleb128 .LVL42-.LVL31
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL43-.LVL31
	.uleb128 .LVL48-.LVL31
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL48-.LVL31
	.uleb128 .LFE41-.LVL31
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0
.LVUS16:
	.uleb128 .LVU170
	.uleb128 .LVU174
	.uleb128 .LVU208
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU222
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU228
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 0
.LLST16:
	.byte	0x6
	.quad	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL33-.LVL31
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL37-.LVL31
	.uleb128 .LVL39-.LVL31
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL39-.LVL31
	.uleb128 .LVL39-.LVL31
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL31
	.uleb128 .LVL42-.LVL31
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL31
	.uleb128 .LVL45-.LVL31
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL45-.LVL31
	.uleb128 .LVL46-.LVL31
	.uleb128 0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL31
	.uleb128 .LVL47-.LVL31
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL48-.LVL31
	.uleb128 .LFE41-.LVL31
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU209
	.uleb128 .LVU216
	.uleb128 .LVU229
	.uleb128 .LVU235
.LLST18:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2f
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2f
	.byte	0x1e
	.byte	0xa4
	.uleb128 0x2f
	.byte	0x4
	.long	0x3e000000
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL37
	.uleb128 .LVL44-.LVL37
	.uleb128 0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2f
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2f
	.byte	0x1e
	.byte	0xa4
	.uleb128 0x2f
	.byte	0x4
	.long	0x3e000000
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL23-.LVL15
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL23-.LVL15
	.uleb128 .LVL24-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL15
	.uleb128 .LVL29-.LVL15
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL29-.LVL15
	.uleb128 .LVL30-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL15
	.uleb128 .LFE40-.LVL15
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL23-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL23-.LVL15
	.uleb128 .LVL24-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL15
	.uleb128 .LVL29-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL29-.LVL15
	.uleb128 .LVL30-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL15
	.uleb128 .LFE40-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL23-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.LVL15
	.uleb128 .LVL24-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL15
	.uleb128 .LVL29-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL29-.LVL15
	.uleb128 .LVL30-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL15
	.uleb128 .LFE40-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL18-.LVL15
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL18-.LVL15
	.uleb128 .LVL20-.LVL15
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.LVL15
	.uleb128 .LVL24-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL15
	.uleb128 .LVL28-.LVL15
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL28-.LVL15
	.uleb128 .LVL30-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL15
	.uleb128 .LFE40-.LVL15
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS9:
	.uleb128 .LVU114
	.uleb128 .LVU119
	.uleb128 .LVU141
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU153
	.uleb128 .LVU162
	.uleb128 .LVU165
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL19-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL15
	.uleb128 .LVL22-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL22-.LVL15
	.uleb128 .LVL23-.LVL15
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL15
	.uleb128 .LVL25-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL15
	.uleb128 .LVL28-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.LVL15
	.uleb128 .LFE40-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL14-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL14-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL14-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU21
	.uleb128 .LVU42
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU108
.LLST3:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL8:
	.byte	0x5
	.quad	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB7-.LBB6
	.uleb128 .LBE7-.LBB6
	.byte	0x4
	.uleb128 .LBB8-.LBB6
	.uleb128 .LBE8-.LBB6
	.byte	0
.LLRL15:
	.byte	0x5
	.quad	.LBB9
	.byte	0x4
	.uleb128 .LBB9-.LBB9
	.uleb128 .LBE9-.LBB9
	.byte	0x4
	.uleb128 .LBB15-.LBB9
	.uleb128 .LBE15-.LBB9
	.byte	0x4
	.uleb128 .LBB16-.LBB9
	.uleb128 .LBE16-.LBB9
	.byte	0x4
	.uleb128 .LBB17-.LBB9
	.uleb128 .LBE17-.LBB9
	.byte	0
.LLRL17:
	.byte	0x5
	.quad	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB11-.LBB10
	.uleb128 .LBE11-.LBB10
	.byte	0x4
	.uleb128 .LBB12-.LBB10
	.uleb128 .LBE12-.LBB10
	.byte	0x4
	.uleb128 .LBB13-.LBB10
	.uleb128 .LBE13-.LBB10
	.byte	0x4
	.uleb128 .LBB14-.LBB10
	.uleb128 .LBE14-.LBB10
	.byte	0
.LLRL22:
	.byte	0x5
	.quad	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB19-.LBB18
	.uleb128 .LBE19-.LBB18
	.byte	0
.LLRL26:
	.byte	0x5
	.quad	.LBB20
	.byte	0x4
	.uleb128 .LBB20-.LBB20
	.uleb128 .LBE20-.LBB20
	.byte	0x4
	.uleb128 .LBB23-.LBB20
	.uleb128 .LBE23-.LBB20
	.byte	0x4
	.uleb128 .LBB24-.LBB20
	.uleb128 .LBE24-.LBB20
	.byte	0
.LLRL28:
	.byte	0x5
	.quad	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB22-.LBB21
	.uleb128 .LBE22-.LBB21
	.byte	0
.LLRL35:
	.byte	0x5
	.quad	.LBB25
	.byte	0x4
	.uleb128 .LBB25-.LBB25
	.uleb128 .LBE25-.LBB25
	.byte	0x4
	.uleb128 .LBB28-.LBB25
	.uleb128 .LBE28-.LBB25
	.byte	0
.LLRL38:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB44
	.uleb128 .LFE44-.LFB44
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"local_sum"
.LASF36:
	.string	"size_t"
.LASF15:
	.string	"input_b"
.LASF29:
	.string	"accumulator"
.LASF13:
	.string	"double"
.LASF33:
	.string	"__printf_chk"
.LASF31:
	.string	"process_subtask_a"
.LASF26:
	.string	"process_subtask_b"
.LASF21:
	.string	"custom_it"
.LASF2:
	.string	"float"
.LASF5:
	.string	"unsigned char"
.LASF3:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"iterations"
.LASF16:
	.string	"output_res"
.LASF24:
	.string	"total_checksum"
.LASF35:
	.ascii	"GNU C23 15.2.0 -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FOR"
	.ascii	"TIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -"
	.string	"mtune=generic -march=x86-64 -g -O2 -O3 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -ffast-math -frandom-seed=524j579gsb --param=ssp-buffer-size=4"
.LASF22:
	.string	"main"
.LASF20:
	.string	"result"
.LASF25:
	.string	"sub_b"
.LASF28:
	.string	"compute_heavy_workload"
.LASF4:
	.string	"unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF23:
	.string	"benchmark_pipeline"
.LASF14:
	.string	"input_a"
.LASF32:
	.string	"init_dataset"
.LASF38:
	.string	"__isoc23_strtol"
.LASF11:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF34:
	.string	"printf"
.LASF8:
	.string	"short int"
.LASF18:
	.string	"argv"
.LASF9:
	.string	"long int"
.LASF7:
	.string	"signed char"
.LASF39:
	.string	"__fmt"
.LASF37:
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
