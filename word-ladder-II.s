	.file	"word-ladder-II.c"
	.text
	.globl	addWord
	.p2align	4
	.type	addWord,@function
addWord:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	shll	%ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	12(%rax), %rsi
	shlq	$3, %rsi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	addWord, .Lfunc_end0-addWord
	.cfi_endproc

	.globl	addPath
	.p2align	4
	.type	addPath,@function
addPath:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jne	.LBB1_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	shll	%ecx
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	20(%rax), %rsi
	shlq	$3, %rsi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	20(%rax), %rsi
	shlq	$2, %rsi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB1_2:
	movslq	-20(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, -24(%rbp)
.LBB1_3:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_6
# %bb.4:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.5:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_3
.LBB1_6:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	addPath, .Lfunc_end1-addPath
	.cfi_endproc

	.globl	diffByOne
	.p2align	4
	.type	diffByOne,@function
diffByOne:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB2_1:
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_7
# %bb.2:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB2_4
# %bb.3:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB2_4:
	cmpl	$1, -28(%rbp)
	jle	.LBB2_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB2_8
.LBB2_6:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_7:
	cmpl	$1, -28(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB2_8:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	diffByOne, .Lfunc_end2-diffByOne
	.cfi_endproc

	.globl	findLaddersHelper
	.p2align	4
	.type	findLaddersHelper,@function
findLaddersHelper:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	-36(%rbp), %eax
	cmpl	24(%rbp), %eax
	jle	.LBB3_2
# %bb.1:
	jmp	.LBB3_11
.LBB3_2:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB3_4
# %bb.3:
	movq	16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	addPath
	jmp	.LBB3_11
.LBB3_4:
	movl	$0, -52(%rbp)
.LBB3_5:
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB3_11
# %bb.6:
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB3_9
# %bb.7:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	diffByOne
	cmpl	$0, %eax
	je	.LBB3_9
# %bb.8:
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movq	-48(%rbp), %r9
	movq	16(%rbp), %r10
	movl	24(%rbp), %eax
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	callq	findLaddersHelper
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
.LBB3_9:
	jmp	.LBB3_10
.LBB3_10:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_5
.LBB3_11:
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	findLaddersHelper, .Lfunc_end3-findLaddersHelper
	.cfi_endproc

	.globl	findLadders
	.p2align	4
	.type	findLadders,@function
findLadders:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$960, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -864(%rbp)
	movq	%rsi, -872(%rbp)
	movq	%rdx, -880(%rbp)
	movl	%ecx, -884(%rbp)
	movq	%r8, -896(%rbp)
	movq	%r9, -904(%rbp)
	movslq	-884(%rbp), %rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -912(%rbp)
	movq	-880(%rbp), %rax
	movq	%rax, -832(%rbp)
	movl	-884(%rbp), %eax
	movl	%eax, -824(%rbp)
	movl	-884(%rbp), %eax
	movl	%eax, -820(%rbp)
	movl	$128, %edi
	callq	malloc@PLT
	movq	%rax, -856(%rbp)
	movl	$64, %edi
	callq	malloc@PLT
	movq	%rax, -848(%rbp)
	movl	$0, -840(%rbp)
	movl	$16, -836(%rbp)
	movl	$2147483647, -916(%rbp)
	movl	$0, -920(%rbp)
.LBB4_1:
	movl	-920(%rbp), %eax
	cmpl	-884(%rbp), %eax
	jge	.LBB4_6
# %bb.2:
	movq	-880(%rbp), %rax
	movslq	-920(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-872(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB4_4
# %bb.3:
	movq	-864(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-864(%rbp), %rdi
	movq	-872(%rbp), %rsi
	leaq	-816(%rbp), %rcx
	movq	-912(%rbp), %r9
	movl	-916(%rbp), %eax
	leaq	-832(%rbp), %rdx
	movl	$1, %r8d
	leaq	-856(%rbp), %r10
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	callq	findLaddersHelper
	jmp	.LBB4_6
.LBB4_4:
	jmp	.LBB4_5
.LBB4_5:
	movl	-920(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -920(%rbp)
	jmp	.LBB4_1
.LBB4_6:
	movslq	-840(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -928(%rbp)
	movslq	-840(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	-904(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$0, -932(%rbp)
.LBB4_7:
	movl	-932(%rbp), %eax
	cmpl	-840(%rbp), %eax
	jge	.LBB4_10
# %bb.8:
	movq	-856(%rbp), %rax
	movslq	-932(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-928(%rbp), %rax
	movslq	-932(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-848(%rbp), %rax
	movslq	-932(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-904(%rbp), %rax
	movq	(%rax), %rax
	movslq	-932(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.9:
	movl	-932(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -932(%rbp)
	jmp	.LBB4_7
.LBB4_10:
	movl	-840(%rbp), %ecx
	movq	-896(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-912(%rbp), %rdi
	callq	free@PLT
	movq	-856(%rbp), %rdi
	callq	free@PLT
	movq	-848(%rbp), %rdi
	callq	free@PLT
	movq	-928(%rbp), %rax
	movq	%rax, -944(%rbp)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_12
# %bb.11:
	movq	-944(%rbp), %rax
	addq	$960, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_12:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end4:
	.size	findLadders, .Lfunc_end4-findLadders
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -80(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	.L__const.main.wordList(%rip), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	movl	$6, -100(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	-100(%rbp), %ecx
	leaq	-76(%rbp), %r8
	leaq	-72(%rbp), %r9
	callq	findLadders
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
.LBB5_1:

	movl	-116(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB5_8
# %bb.2:
	movl	$0, -120(%rbp)
.LBB5_3:

	movl	-120(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	-116(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB5_6
# %bb.4:
	movq	-112(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-120(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.5:
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB5_3
.LBB5_6:
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.7:
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB5_1
.LBB5_8:
	movl	$0, -124(%rbp)
.LBB5_9:

	movl	-124(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB5_16
# %bb.10:
	movl	$0, -128(%rbp)
.LBB5_11:

	movl	-128(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB5_14
# %bb.12:
	movq	-112(%rbp), %rax
	movslq	-124(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-128(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.13:
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_11
.LBB5_14:
	movq	-112(%rbp), %rax
	movslq	-124(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.15:
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_9
.LBB5_16:
	movq	-112(%rbp), %rdi
	callq	free@PLT
	movq	-72(%rbp), %rdi
	callq	free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_18
# %bb.17:
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_18:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hit"
	.size	.L.str, 4

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"cog"
	.size	.L.str.1, 4

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"hot"
	.size	.L.str.2, 4

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"dot"
	.size	.L.str.3, 4

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"dog"
	.size	.L.str.4, 4

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"lot"
	.size	.L.str.5, 4

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"log"
	.size	.L.str.6, 4

	.type	.L__const.main.wordList,@object
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
.L__const.main.wordList:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.1
	.size	.L__const.main.wordList, 48

	.type	.L.str.7,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%s "
	.size	.L.str.7, 4

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"\n"
	.size	.L.str.8, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc
	.addrsig_sym strdup
	.addrsig_sym addPath
	.addrsig_sym malloc
	.addrsig_sym diffByOne
	.addrsig_sym findLaddersHelper
	.addrsig_sym strcmp
	.addrsig_sym findLadders
	.addrsig_sym calloc
	.addrsig_sym free
	.addrsig_sym printf
	.addrsig_sym __stack_chk_fail
