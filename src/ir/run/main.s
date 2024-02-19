	.text
	.file	"main.ll"
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
.Lmain$local:
	.type	.Lmain$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	lu12i.w	$a0, 260096
	st.w	$a0, $sp, 8
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 12
	beqz	$a0, .LBB0_2
# %bb.1:                                # %bb1
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	move	$a0, $zero
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.size	.Lmain$local, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
