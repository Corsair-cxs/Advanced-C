	.file	"union.c"
	.text
	.globl	is_little
	.type	is_little, @function
is_little:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	num.2323(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	is_little, .-is_little
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"%d.%d.%d.%d"
.LC2:
	.string	"%u\n"
.LC3:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	is_little
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L4
.L5:
	leaq	-128(%rbp), %rcx
	addq	$12, %rcx
	leaq	-128(%rbp), %rdx
	addq	$8, %rdx
	leaq	-128(%rbp), %rax
	addq	$4, %rax
	leaq	-128(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	-128(%rbp), %eax
	movb	%al, -132(%rbp)
	movl	-124(%rbp), %eax
	movb	%al, -131(%rbp)
	movl	-120(%rbp), %eax
	movb	%al, -130(%rbp)
	movl	-116(%rbp), %eax
	movb	%al, -129(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	cmpl	$-1, %eax
	jne	.L5
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 4
	.type	num.2323, @object
	.size	num.2323, 4
num.2323:
	.long	1
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
