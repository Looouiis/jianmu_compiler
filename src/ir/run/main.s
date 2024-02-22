	.text
	.file	"main.ll"
	.globl	exgcd                           # -- Begin function exgcd
	.p2align	2
	.type	exgcd,@function
exgcd:                                  # @exgcd
.Lexgcd$local:
	.type	.Lexgcd$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$fp, $sp, 48
	.cfi_def_cfa 22, 0
	st.w	$a0, $fp, -28
	st.d	$a2, $fp, -36
	st.d	$a3, $fp, -40
	st.w	$a1, $fp, -32
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %bb4
	move	$s0, $sp
	addi.d	$sp, $s0, -16
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	mod.d	$a1, $a1, $a0
	addi.d	$a2, $fp, -36
	addi.d	$a3, $fp, -40
	bl	.Lexgcd$local
	st.w	$a0, $s0, -16
	move	$a0, $sp
	addi.d	$sp, $a0, -16
	ld.w	$a1, $fp, -36
	st.w	$a1, $a0, -16
	ld.w	$a1, $fp, -32
	ld.w	$a2, $fp, -28
	div.d	$a1, $a2, $a1
	ld.w	$a2, $fp, -40
	st.w	$a2, $fp, -36
	mul.d	$a1, $a1, $a2
	ld.w	$a0, $a0, -16
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, -40
	ld.w	$a0, $s0, -16
	b	.LBB0_3
.LBB0_2:                                # %bb3
	st.w	$zero, $fp, -40
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -28
.LBB0_3:                                # %bb1
	addi.d	$sp, $fp, -48
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	exgcd, .Lfunc_end0-exgcd
	.size	.Lexgcd$local, .Lfunc_end0-exgcd
	.cfi_endproc
                                        # -- End function
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
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 12
	st.w	$a0, $sp, 8
	ori	$a1, $zero, 15
	st.w	$a1, $sp, 16
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 20
	addi.d	$a2, $sp, 12
	addi.d	$a3, $sp, 8
	bl	.Lexgcd$local
	ld.w	$a0, $sp, 16
	ld.w	$a1, $sp, 12
	mod.d	$a1, $a1, $a0
	add.w	$a1, $a1, $a0
	mod.d	$a0, $a1, $a0
	st.w	$a0, $sp, 12
	bl	%plt(putint)
	move	$a0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.size	.Lmain$local, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
