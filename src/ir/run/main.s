	.text
	.file	"main.ll"
	.globl	global_init                     # -- Begin function global_init
	.p2align	2
	.type	global_init,@function
global_init:                            # @global_init
.Lglobal_init$local:
	.type	.Lglobal_init$local,@function
	.cfi_startproc
# %bb.0:
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1701
	pcalau12i	$a1, %pc_hi20(.Lg1$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg1$local)
	st.w	$a0, $a1, 0
	ret
.Lfunc_end0:
	.size	global_init, .Lfunc_end0-global_init
	.size	.Lglobal_init$local, .Lfunc_end0-global_init
	.cfi_endproc
                                        # -- End function
	.globl	quick_read                      # -- Begin function quick_read
	.p2align	2
	.type	quick_read,@function
quick_read:                             # @quick_read
.Lquick_read$local:
	.type	.Lquick_read$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	bl	%plt(getch)
	ori	$s0, $zero, 1
	ori	$s1, $zero, 48
	ori	$s2, $zero, 45
	ori	$s3, $zero, 57
	move	$fp, $zero
	b	.LBB1_2
.LBB1_1:                                # %bb11
                                        #   in Loop: Header=BB1_2 Depth=1
	bl	%plt(getch)
.LBB1_2:                                # %bb3
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a0, 0
	move	$a1, $s0
	blt	$a2, $s1, .LBB1_5
# %bb.3:                                # %bb6
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a1, $s0
	blt	$s3, $a2, .LBB1_5
# %bb.4:                                # %bb8
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$a1, $zero
.LBB1_5:                                # %bb9
                                        #   in Loop: Header=BB1_2 Depth=1
	beqz	$a1, .LBB1_8
# %bb.6:                                # %bb4
                                        #   in Loop: Header=BB1_2 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	bne	$a0, $s2, .LBB1_1
# %bb.7:                                # %bb10
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$fp, $s0
	b	.LBB1_1
.LBB1_8:                                # %bb2
	ori	$s0, $zero, 47
	ori	$s1, $zero, 1
	ori	$s2, $zero, 58
	ori	$s3, $zero, 10
	move	$a1, $zero
	addi.w	$a3, $a0, 0
	bge	$s0, $a3, .LBB1_10
.LBB1_9:                                # %bb16
	move	$a2, $s1
	blt	$a3, $s2, .LBB1_11
.LBB1_10:                               # %bb18
	move	$a2, $zero
.LBB1_11:                               # %bb19
	beqz	$a2, .LBB1_13
# %bb.12:                               # %bb14
	mul.d	$a1, $a1, $s3
	add.d	$s4, $a1, $a0
	bl	%plt(getch)
	addi.d	$a1, $s4, -48
	addi.w	$a3, $a0, 0
	blt	$s0, $a3, .LBB1_9
	b	.LBB1_10
.LBB1_13:                               # %bb12
	bstrpick.d	$a0, $fp, 31, 0
	beqz	$a0, .LBB1_15
# %bb.14:                               # %bb20
	sub.d	$a1, $zero, $a1
.LBB1_15:                               # %bb1
	move	$a0, $a1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	quick_read, .Lfunc_end1-quick_read
	.size	.Lquick_read$local, .Lfunc_end1-quick_read
	.cfi_endproc
                                        # -- End function
	.globl	sortA                           # -- Begin function sortA
	.p2align	2
	.type	sortA,@function
sortA:                                  # @sortA
.LsortA$local:
	.type	.LsortA$local,@function
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.Lg0$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg0$local)
	move	$a2, $zero
	b	.LBB2_2
.LBB2_1:                                # %bb5
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a2, $a2, 1
.LBB2_2:                                # %bb3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	ld.w	$a4, $a1, 0
	addi.w	$a3, $a2, 0
	bge	$a3, $a4, .LBB2_8
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a4, $a2, 1
	b	.LBB2_5
.LBB2_4:                                # %bb9
                                        #   in Loop: Header=BB2_5 Depth=2
	addi.d	$a4, $a4, 1
.LBB2_5:                                # %bb6
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a1, 0
	addi.w	$a6, $a4, 0
	bge	$a6, $a5, .LBB2_1
# %bb.6:                                # %bb7
                                        #   in Loop: Header=BB2_5 Depth=2
	slli.d	$a5, $a3, 2
	ldx.w	$a7, $a0, $a5
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $a0, $a6
	bge	$t0, $a7, .LBB2_4
# %bb.7:                                # %bb8
                                        #   in Loop: Header=BB2_5 Depth=2
	ldx.w	$a7, $a0, $a5
	ldx.w	$t0, $a0, $a6
	stx.w	$t0, $a0, $a5
	stx.w	$a7, $a0, $a6
	b	.LBB2_4
.LBB2_8:                                # %bb2
	ret
.Lfunc_end2:
	.size	sortA, .Lfunc_end2-sortA
	.size	.LsortA$local, .Lfunc_end2-sortA
	.cfi_endproc
                                        # -- End function
	.globl	sortB                           # -- Begin function sortB
	.p2align	2
	.type	sortB,@function
sortB:                                  # @sortB
.LsortB$local:
	.type	.LsortB$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	addi.w	$a1, $zero, -100
	lu32i.d	$a1, 0
	pcalau12i	$a2, %pc_hi20(.Lg0$local)
	addi.d	$a2, $a2, %pc_lo12(.Lg0$local)
	pcalau12i	$a3, %pc_hi20(.Lg2$local)
	addi.d	$a3, $a3, %pc_lo12(.Lg2$local)
	move	$a4, $zero
	b	.LBB3_2
.LBB3_1:                                # %bb6
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a4, $a4, 1
.LBB3_2:                                # %bb3
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	addi.w	$a5, $a4, 0
	bge	$a5, $a6, .LBB3_5
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB3_2 Depth=1
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a0, $a5
	alsl.d	$a7, $a6, $a3, 2
	st.d	$a7, $sp, 16
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	addi.d	$a6, $a6, 1
	ldx.w	$a7, $a0, $a5
	slli.d	$t0, $a7, 2
	stx.w	$a6, $a3, $t0
	alsl.d	$a6, $a7, $a3, 2
	st.d	$a6, $sp, 24
	ldx.w	$a6, $a0, $a5
	addi.w	$a7, $a1, 0
	st.w	$a6, $sp, 8
	bge	$a7, $a6, .LBB3_1
# %bb.4:                                # %bb5
                                        #   in Loop: Header=BB3_2 Depth=1
	ldx.w	$a1, $a0, $a5
	b	.LBB3_1
.LBB3_5:                                # %bb2
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	sortB, .Lfunc_end3-sortB
	.size	.LsortB$local, .Lfunc_end3-sortB
	.cfi_endproc
                                        # -- End function
	.globl	sortC                           # -- Begin function sortC
	.p2align	2
	.type	sortC,@function
sortC:                                  # @sortC
.LsortC$local:
	.type	.LsortC$local,@function
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.Lg0$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg0$local)
	move	$a2, $zero
	b	.LBB4_2
.LBB4_1:                                # %bb5
                                        #   in Loop: Header=BB4_2 Depth=1
	slli.d	$a4, $a7, 2
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a0, $a3
	ldx.w	$a6, $a0, $a4
	stx.w	$a6, $a0, $a3
	stx.w	$a5, $a0, $a4
	addi.d	$a2, $a2, 1
.LBB4_2:                                # %bb3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	ld.w	$a4, $a1, 0
	addi.w	$a3, $a2, 0
	bge	$a3, $a4, .LBB4_8
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.d	$a4, $a2, 1
	move	$a5, $a2
	b	.LBB4_5
.LBB4_4:                                # %bb9
                                        #   in Loop: Header=BB4_5 Depth=2
	addi.d	$a4, $a4, 1
.LBB4_5:                                # %bb6
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a1, 0
	addi.w	$a6, $a4, 0
	addi.w	$a7, $a5, 0
	bge	$a6, $t0, .LBB4_1
# %bb.6:                                # %bb7
                                        #   in Loop: Header=BB4_5 Depth=2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	bge	$a6, $a7, .LBB4_4
# %bb.7:                                # %bb8
                                        #   in Loop: Header=BB4_5 Depth=2
	move	$a5, $a4
	b	.LBB4_4
.LBB4_8:                                # %bb2
	ret
.Lfunc_end4:
	.size	sortC, .Lfunc_end4-sortC
	.size	.LsortC$local, .Lfunc_end4-sortC
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
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	bl	.Lglobal_init$local
	bl	.Lquick_read$local
	pcalau12i	$a1, %pc_hi20(.Lg0$local)
	addi.d	$fp, $a1, %pc_lo12(.Lg0$local)
	st.w	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.Lg4$local)
	addi.d	$s0, $a0, %pc_lo12(.Lg4$local)
	pcalau12i	$a0, %pc_hi20(.Lg5$local)
	addi.d	$s1, $a0, %pc_lo12(.Lg5$local)
	move	$s2, $zero
.LBB5_1:                                # %bb3
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, 0
	bstrpick.d	$a1, $s2, 31, 0
	beq	$a1, $a0, .LBB5_3
# %bb.2:                                # %bb4
                                        #   in Loop: Header=BB5_1 Depth=1
	addi.w	$a0, $s2, 0
	slli.d	$s3, $a0, 2
	bl	.Lquick_read$local
	stx.w	$a0, $s0, $s3
	stx.w	$a0, $s1, $s3
	addi.d	$s2, $s2, 1
	b	.LBB5_1
.LBB5_3:                                # %bb2
	pcalau12i	$a0, %pc_hi20(.Lg4$local)
	addi.d	$a0, $a0, %pc_lo12(.Lg4$local)
	bl	.LsortB$local
	move	$a0, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.size	.Lmain$local, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	g0,@object                      # @g0
	.bss
	.globl	g0
	.p2align	2, 0x0
g0:
.Lg0$local:
	.word	0                               # 0x0
	.size	g0, 4

	.type	g1,@object                      # @g1
	.globl	g1
	.p2align	2, 0x0
g1:
.Lg1$local:
	.word	0                               # 0x0
	.size	g1, 4

	.type	g2,@object                      # @g2
	.globl	g2
	.p2align	2, 0x0
g2:
.Lg2$local:
	.space	1600080
	.size	g2, 1600080

	.type	g3,@object                      # @g3
	.globl	g3
	.p2align	2, 0x0
g3:
.Lg3$local:
	.space	400020
	.size	g3, 400020

	.type	g4,@object                      # @g4
	.globl	g4
	.p2align	2, 0x0
g4:
.Lg4$local:
	.space	400020
	.size	g4, 400020

	.type	g5,@object                      # @g5
	.globl	g5
	.p2align	2, 0x0
g5:
.Lg5$local:
	.space	400020
	.size	g5, 400020

	.type	g6,@object                      # @g6
	.globl	g6
	.p2align	2, 0x0
g6:
.Lg6$local:
	.space	400020
	.size	g6, 400020

	.section	".note.GNU-stack","",@progbits
