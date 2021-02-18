	.file	"isPalindrome.cpp"
	.text
	.globl	_Z12isPalindromeii
	.type	_Z12isPalindromeii, @function
_Z12isPalindromeii:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.L5:
	cmpl	$0, -20(%rbp)
	je	.L4
	movl	-8(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%eax, -20(%rbp)
	jmp	.L5
.L4:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	sete	%al
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z12isPalindromeii, .-_Z12isPalindromeii
	.section	.rodata
.LC0:
	.string	"%d"
	.align 8
.LC1:
	.string	"Num: %d in Cov: %d is a reverse num!\n"
.LC2:
	.string	"NO! It's not a reverse num!"
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
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	_Z12isPalindromeii
	testb	%al, %al
	je	.L7
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.L8:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
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
