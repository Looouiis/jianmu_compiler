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
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.w	$zero, $sp, 20
	st.w	$zero, $sp, 16
	st.w	$zero, $sp, 12
	lu12i.w	$a0, 262348
	ori	$a0, $a0, 3277
	st.w	$a0, $sp, 8
	lu12i.w	$a0, 260300
	ori	$a0, $a0, 3277
	st.w	$a0, $sp, 4
	bl	%plt(putfloat)
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.size	.Lmain$local, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
