	.text
	.file	"main.ll"
	.globl	FourWhile                       # -- Begin function FourWhile
	.p2align	2
	.type	FourWhile,@function
FourWhile:                              # @FourWhile
.LFourWhile$local:
	.type	.LFourWhile$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	ori	$a6, $zero, 5
	ori	$a0, $zero, 6
	ori	$a2, $zero, 7
	ori	$a1, $zero, 10
	ori	$a4, $zero, 19
	ori	$a5, $zero, 9
	move	$a3, $a2
	b	.LBB0_2
.LBB0_1:                                # %bb5
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a0, $a0, -2
.LBB0_2:                                # %bb3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_10 Depth 4
	st.w	$a6, $sp, 8
	addi.w	$a6, $a6, 0
	blt	$a4, $a6, .LBB0_12
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a6, $sp, 8
	st.w	$a6, $sp, 0
	addi.d	$a6, $a6, 3
	b	.LBB0_5
.LBB0_4:                                # %bb8
                                        #   in Loop: Header=BB0_5 Depth=2
	addi.d	$a3, $a3, 1
.LBB0_5:                                # %bb6
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_10 Depth 4
	addi.w	$a7, $a0, 0
	blt	$a5, $a7, .LBB0_1
# %bb.6:                                # %bb7
                                        #   in Loop: Header=BB0_5 Depth=2
	addi.d	$a0, $a0, 1
	b	.LBB0_8
.LBB0_7:                                # %bb11
                                        #   in Loop: Header=BB0_8 Depth=3
	addi.d	$a1, $a1, -1
.LBB0_8:                                # %bb9
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_10 Depth 4
	bstrpick.d	$a7, $a3, 31, 0
	bne	$a7, $a2, .LBB0_4
# %bb.9:                                # %bb10
                                        #   in Loop: Header=BB0_8 Depth=3
	addi.d	$a3, $a3, -1
.LBB0_10:                               # %bb12
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$a1, $sp, 4
	addi.w	$a7, $a1, 0
	slti	$t0, $a7, 20
	st.b	$t0, $sp, 12
	blt	$a4, $a7, .LBB0_7
# %bb.11:                               # %bb13
                                        #   in Loop: Header=BB0_10 Depth=4
	addi.d	$a1, $a1, 3
	b	.LBB0_10
.LBB0_12:                               # %bb2
	add.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 8
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a3
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	FourWhile, .Lfunc_end0-FourWhile
	.size	.LFourWhile$local, .Lfunc_end0-FourWhile
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
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	bl	.LFourWhile$local
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.size	.Lmain$local, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
