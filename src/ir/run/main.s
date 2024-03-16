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
	bnez	$zero, .LBB0_2
# %bb.1:
	ori	$a0, $zero, 1
	ret
.LBB0_2:                                # %bb4
	ori	$a0, $zero, 2
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.size	.Lmain$local, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
