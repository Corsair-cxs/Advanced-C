	.file	"main.c"
	.text
	.globl	add_lf
	.type	add_lf, @function
add_lf:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	add_lf, .-add_lf
	.globl	add
	.type	add, @function
add:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	add, .-add
	.section	.rodata
.LC0:
	.string	"testfunc_add"
	.text
	.globl	add_TEST_testfunc_add
	.type	add_TEST_testfunc_add, @function
add_TEST_testfunc_add:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rsi
	leaq	testfunc_add(%rip), %rdi
	call	add_function@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	add_TEST_testfunc_add, .-add_TEST_testfunc_add
	.section	.init_array,"aw"
	.align 8
	.quad	add_TEST_testfunc_add
	.section	.rodata
.LC4:
	.string	"\033[32m[   TRUE    ]\033[0m"
.LC5:
	.string	"\033[31m[   FALSE   ]\033[0m"
.LC6:
	.string	"%s "
.LC7:
	.string	"5.0"
.LC8:
	.string	"=="
.LC9:
	.string	"add_lf(2.1,2.9)"
.LC10:
	.string	"%-10s %-3s %5s\n"
.LC11:
	.string	"main.c"
.LC12:
	.string	"\033[1;31m\t %s:%d: failure\n\033[0m"
.LC13:
	.string	"_b"
.LC14:
	.string	"_a"
	.align 8
.LC15:
	.string	"\033[33m\t\t expect : %-10s %-3s %5s\n\033[0m"
.LC16:
	.string	"\t\t"
.LC17:
	.string	"%d"
.LC18:
	.string	"\033[1;33m%s\033[0m"
.LC19:
	.string	"\033[1;33m vs \033[0m"
.LC20:
	.string	"%lf"
.LC21:
	.string	"\n"
.LC25:
	.string	"5.1"
.LC26:
	.string	"add_lf(1.1,3.9)"
.LC27:
	.string	"5"
.LC30:
	.string	"1.0"
.LC31:
	.string	"add_lf(0,1)"
	.text
	.globl	testfunc_add
	.type	testfunc_add, @function
testfunc_add:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	.LC1(%rip), %xmm0
	movq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	add_lf
	movl	%eax, -1052(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -1032(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movsd	.LC1(%rip), %xmm0
	movq	.LC2(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	add_lf
	cmpl	$5, %eax
	jne	.L7
	leaq	.LC4(%rip), %rax
	jmp	.L8
.L7:
	leaq	.LC5(%rip), %rax
.L8:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cvtsi2sdl	-1052(%rbp), %xmm0
	ucomisd	-1032(%rbp), %xmm0
	jp	.L9
	ucomisd	-1032(%rbp), %xmm0
	jne	.L9
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L11
.L9:
	movl	$10, %edi
	call	putchar@PLT
	movl	$18, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1052(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-1032(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L11:
	movsd	.LC22(%rip), %xmm0
	movq	.LC23(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	add_lf
	movl	%eax, -1048(%rbp)
	movsd	.LC24(%rip), %xmm0
	movsd	%xmm0, -1024(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movsd	.LC22(%rip), %xmm0
	movq	.LC23(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	add_lf
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC26(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cvtsi2sdl	-1048(%rbp), %xmm0
	ucomisd	-1024(%rbp), %xmm0
	jp	.L12
	ucomisd	-1024(%rbp), %xmm0
	jne	.L12
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L14
.L12:
	movl	$10, %edi
	call	putchar@PLT
	movl	$19, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1048(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-1024(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L14:
	movsd	.LC22(%rip), %xmm0
	movq	.LC23(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	add_lf
	movl	%eax, -1044(%rbp)
	movl	$5, -1040(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movsd	.LC22(%rip), %xmm0
	movq	.LC23(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	add_lf
	cmpl	$5, %eax
	jne	.L15
	leaq	.LC4(%rip), %rax
	jmp	.L16
.L15:
	leaq	.LC5(%rip), %rax
.L16:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC27(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC26(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1044(%rbp), %eax
	cmpl	-1040(%rbp), %eax
	jne	.L17
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L18
.L17:
	movl	$10, %edi
	call	putchar@PLT
	movl	$20, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1044(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1040(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L18:
	movsd	.LC28(%rip), %xmm0
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	call	add_lf
	movl	%eax, -1036(%rbp)
	movsd	.LC28(%rip), %xmm0
	movsd	%xmm0, -1016(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movsd	.LC28(%rip), %xmm0
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	call	add_lf
	cmpl	$1, %eax
	jne	.L19
	leaq	.LC4(%rip), %rax
	jmp	.L20
.L19:
	leaq	.LC5(%rip), %rax
.L20:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC30(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cvtsi2sdl	-1036(%rbp), %xmm0
	ucomisd	-1016(%rbp), %xmm0
	jp	.L21
	ucomisd	-1016(%rbp), %xmm0
	jne	.L21
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L28
.L21:
	movl	$10, %edi
	call	putchar@PLT
	movl	$21, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1036(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-1016(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L28:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	testfunc_add, .-testfunc_add
	.section	.rodata
.LC32:
	.string	"test_funcadd"
	.text
	.globl	add_TEST_test_funcadd
	.type	add_TEST_test_funcadd, @function
add_TEST_test_funcadd:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC32(%rip), %rsi
	leaq	test_funcadd(%rip), %rdi
	call	add_function@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_TEST_test_funcadd, .-add_TEST_test_funcadd
	.section	.init_array
	.align 8
	.quad	add_TEST_test_funcadd
	.section	.rodata
.LC33:
	.string	"2"
.LC34:
	.string	"add(0,-1)"
.LC35:
	.string	"4"
.LC36:
	.string	"add(1,3)"
.LC37:
	.string	"add(2,2)"
.LC38:
	.string	"1"
.LC39:
	.string	"add(0,1)"
	.text
	.globl	test_funcadd
	.type	test_funcadd, @function
test_funcadd:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1040, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$-1, %esi
	movl	$0, %edi
	call	add
	movl	%eax, -1040(%rbp)
	movl	$2, -1036(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$-1, %esi
	movl	$0, %edi
	call	add
	cmpl	$2, %eax
	jne	.L31
	leaq	.LC4(%rip), %rax
	jmp	.L32
.L31:
	leaq	.LC5(%rip), %rax
.L32:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC33(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC34(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1040(%rbp), %eax
	cmpl	-1036(%rbp), %eax
	jne	.L33
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L34
.L33:
	movl	$10, %edi
	call	putchar@PLT
	movl	$25, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1040(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1036(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L34:
	movl	$3, %esi
	movl	$1, %edi
	call	add
	movl	%eax, -1032(%rbp)
	movl	$4, -1028(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$3, %esi
	movl	$1, %edi
	call	add
	cmpl	$4, %eax
	jne	.L35
	leaq	.LC4(%rip), %rax
	jmp	.L36
.L35:
	leaq	.LC5(%rip), %rax
.L36:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC35(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1032(%rbp), %eax
	cmpl	-1028(%rbp), %eax
	jne	.L37
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L38
.L37:
	movl	$10, %edi
	call	putchar@PLT
	movl	$26, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1032(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1028(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L38:
	movl	$2, %esi
	movl	$2, %edi
	call	add
	movl	%eax, -1024(%rbp)
	movl	$2, -1020(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$2, %esi
	movl	$2, %edi
	call	add
	cmpl	$2, %eax
	jne	.L39
	leaq	.LC4(%rip), %rax
	jmp	.L40
.L39:
	leaq	.LC5(%rip), %rax
.L40:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC33(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC37(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1024(%rbp), %eax
	cmpl	-1020(%rbp), %eax
	jne	.L41
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L42
.L41:
	movl	$10, %edi
	call	putchar@PLT
	movl	$27, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1024(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1020(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L42:
	movl	$1, %esi
	movl	$0, %edi
	call	add
	movl	%eax, -1016(%rbp)
	movl	$1, -1012(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$1, %esi
	movl	$0, %edi
	call	add
	cmpl	$1, %eax
	jne	.L43
	leaq	.LC4(%rip), %rax
	jmp	.L44
.L43:
	leaq	.LC5(%rip), %rax
.L44:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC38(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC39(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1016(%rbp), %eax
	cmpl	-1012(%rbp), %eax
	jne	.L45
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L48
.L45:
	movl	$10, %edi
	call	putchar@PLT
	movl	$28, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1016(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1012(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L48:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L47
	call	__stack_chk_fail@PLT
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test_funcadd, .-test_funcadd
	.section	.rodata
.LC40:
	.string	"testfunc_add2"
	.text
	.globl	add_TEST_testfunc_add2
	.type	add_TEST_testfunc_add2, @function
add_TEST_testfunc_add2:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC40(%rip), %rsi
	leaq	testfunc_add2(%rip), %rdi
	call	add_function@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_TEST_testfunc_add2, .-add_TEST_testfunc_add2
	.section	.init_array
	.align 8
	.quad	add_TEST_testfunc_add2
	.section	.rodata
.LC41:
	.string	"add(2,3)"
	.text
	.globl	testfunc_add2
	.type	testfunc_add2, @function
testfunc_add2:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1040, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, %esi
	movl	$2, %edi
	call	add
	movl	%eax, -1040(%rbp)
	movl	$2, -1036(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$3, %esi
	movl	$2, %edi
	call	add
	cmpl	$2, %eax
	jne	.L51
	leaq	.LC4(%rip), %rax
	jmp	.L52
.L51:
	leaq	.LC5(%rip), %rax
.L52:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC33(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC41(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1040(%rbp), %eax
	cmpl	-1036(%rbp), %eax
	jne	.L53
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L54
.L53:
	movl	$10, %edi
	call	putchar@PLT
	movl	$32, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1040(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1036(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L54:
	movl	$3, %esi
	movl	$1, %edi
	call	add
	movl	%eax, -1032(%rbp)
	movl	$4, -1028(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$3, %esi
	movl	$1, %edi
	call	add
	cmpl	$4, %eax
	jne	.L55
	leaq	.LC4(%rip), %rax
	jmp	.L56
.L55:
	leaq	.LC5(%rip), %rax
.L56:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC35(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1032(%rbp), %eax
	cmpl	-1028(%rbp), %eax
	jne	.L57
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L58
.L57:
	movl	$10, %edi
	call	putchar@PLT
	movl	$33, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1032(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1028(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L58:
	movl	$2, %esi
	movl	$2, %edi
	call	add
	movl	%eax, -1024(%rbp)
	movl	$2, -1020(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$2, %esi
	movl	$2, %edi
	call	add
	cmpl	$2, %eax
	jne	.L59
	leaq	.LC4(%rip), %rax
	jmp	.L60
.L59:
	leaq	.LC5(%rip), %rax
.L60:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC33(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC37(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1024(%rbp), %eax
	cmpl	-1020(%rbp), %eax
	jne	.L61
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L62
.L61:
	movl	$10, %edi
	call	putchar@PLT
	movl	$34, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1024(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1020(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L62:
	movl	$1, %esi
	movl	$0, %edi
	call	add
	movl	%eax, -1016(%rbp)
	movl	$1, -1012(%rbp)
	movl	haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, haizei_test_info(%rip)
	movl	$1, %esi
	movl	$0, %edi
	call	add
	cmpl	$1, %eax
	jne	.L63
	leaq	.LC4(%rip), %rax
	jmp	.L64
.L63:
	leaq	.LC5(%rip), %rax
.L64:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC38(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC39(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1016(%rbp), %eax
	cmpl	-1012(%rbp), %eax
	jne	.L65
	movl	4+haizei_test_info(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+haizei_test_info(%rip)
	jmp	.L68
.L65:
	movl	$10, %edi
	call	putchar@PLT
	movl	$35, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC13(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1016(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1008(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-1012(%rbp), %edx
	leaq	-1008(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
.L68:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	testfunc_add2, .-testfunc_add2
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	.LC42(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, %eax
	call	RUN_ALL_TESTS@PLT
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	858993459
	.long	1074213683
	.align 8
.LC2:
	.long	3435973837
	.long	1073794252
	.align 8
.LC3:
	.long	0
	.long	1075052544
	.align 8
.LC22:
	.long	858993459
	.long	1074737971
	.align 8
.LC23:
	.long	2576980378
	.long	1072798105
	.align 8
.LC24:
	.long	1717986918
	.long	1075078758
	.align 8
.LC28:
	.long	0
	.long	1072693248
	.align 8
.LC42:
	.long	0
	.long	1075970048
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
