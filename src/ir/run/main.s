	.text
	.file	"main.ll"
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 20
	b	.LBB0_1
.LBB0_1:                                # %bb1
	move	$a0, $zero
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
