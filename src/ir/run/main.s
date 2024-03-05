	.text
	.file	"main.ll"
	.globl	global_init                     # -- Begin function global_init
	.p2align	2
	.type	global_init,@function
global_init:                            # @global_init
.Lglobal_init$local:
	.type	.Lglobal_init$local,@function
	.cfi_startproc
# %bb.0:                                # %bba
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	addi.d	$fp, $sp, 64
	.cfi_def_cfa 22, 0
	bl	%plt(getch)
	st.w	$a0, $fp, -52
	st.w	$zero, $fp, -56
	st.w	$zero, $fp, -60
	ori	$s0, $zero, 48
	ori	$s1, $zero, 1
	ori	$s2, $zero, 45
	ori	$s3, $zero, 58
	b	.LBB1_2
.LBB1_1:                                # %bb10
                                        #   in Loop: Header=BB1_2 Depth=1
	bl	%plt(getch)
	st.w	$a0, $fp, -52
.LBB1_2:                                # %bb2
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, -16
	move	$sp, $a0
	ld.w	$a1, $fp, -52
	blt	$a1, $s0, .LBB1_4
# %bb.3:                                # %bb6
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.w	$a1, $fp, -52
	blt	$a1, $s3, .LBB1_5
.LBB1_4:                                # %bb7
                                        #   in Loop: Header=BB1_2 Depth=1
	st.b	$s1, $a0, 0
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB1_6
	b	.LBB1_8
.LBB1_5:                                # %bb8
                                        #   in Loop: Header=BB1_2 Depth=1
	st.b	$zero, $a0, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB1_8
.LBB1_6:                                # %bb3
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.wu	$a0, $fp, -52
	bne	$a0, $s2, .LBB1_1
# %bb.7:                                # %bb11
                                        #   in Loop: Header=BB1_2 Depth=1
	st.w	$s1, $fp, -60
	b	.LBB1_1
.LBB1_8:
	ori	$s2, $zero, 57
	ori	$s3, $zero, 10
.LBB1_9:                                # %bb13
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, -16
	move	$sp, $a0
	ld.w	$a1, $fp, -52
	blt	$a1, $s0, .LBB1_12
# %bb.10:                               # %bb17
                                        #   in Loop: Header=BB1_9 Depth=1
	ld.w	$a1, $fp, -52
	blt	$s2, $a1, .LBB1_12
# %bb.11:                               # %bb18
                                        #   in Loop: Header=BB1_9 Depth=1
	st.b	$s1, $a0, 0
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB1_13
	b	.LBB1_14
.LBB1_12:                               # %bb19
                                        #   in Loop: Header=BB1_9 Depth=1
	st.b	$zero, $a0, 0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB1_14
.LBB1_13:                               # %bb14
                                        #   in Loop: Header=BB1_9 Depth=1
	ld.w	$a0, $fp, -56
	mul.d	$a0, $a0, $s3
	ld.w	$a1, $fp, -52
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, -48
	st.w	$a0, $fp, -56
	bl	%plt(getch)
	st.w	$a0, $fp, -52
	b	.LBB1_9
.LBB1_14:                               # %bb15
	ld.wu	$a0, $fp, -60
	beqz	$a0, .LBB1_16
# %bb.15:                               # %bb22
	ld.w	$a0, $fp, -56
	sub.d	$a0, $zero, $a0
	b	.LBB1_17
.LBB1_16:                               # %bb23
	ld.w	$a0, $fp, -56
.LBB1_17:                               # %bb1
	addi.d	$sp, $fp, -64
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
	.globl	add_edge                        # -- Begin function add_edge
	.p2align	2
	.type	add_edge,@function
add_edge:                               # @add_edge
.Ladd_edge$local:
	.type	.Ladd_edge$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	addi.w	$a2, $a0, 0
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.Lg7$local)
	addi.d	$a3, $a3, %pc_lo12(.Lg7$local)
	ldx.w	$a4, $a3, $a2
	pcalau12i	$a5, %pc_hi20(.Lg8$local)
	addi.d	$a5, $a5, %pc_lo12(.Lg8$local)
	ld.w	$a6, $a5, 0
	slli.d	$a7, $a6, 2
	pcalau12i	$t0, %pc_hi20(.Lg6$local)
	addi.d	$t0, $t0, %pc_lo12(.Lg6$local)
	stx.w	$a4, $t0, $a7
	pcalau12i	$a4, %pc_hi20(.Lg5$local)
	addi.d	$a4, $a4, %pc_lo12(.Lg5$local)
	stx.w	$a1, $a4, $a7
	stx.w	$a6, $a3, $a2
	addi.d	$a2, $a6, 1
	st.w	$a2, $a5, 0
	st.w	$a1, $sp, 8
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 80
	mul.d	$a1, $a1, $a2
	st.w	$a0, $sp, 12
	pcalau12i	$a2, %pc_hi20(.Lg3$local)
	addi.d	$a2, $a2, %pc_lo12(.Lg3$local)
	stx.w	$a0, $a2, $a1
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	add_edge, .Lfunc_end2-add_edge
	.size	.Ladd_edge$local, .Lfunc_end2-add_edge
	.cfi_endproc
                                        # -- End function
	.globl	init                            # -- Begin function init
	.p2align	2
	.type	init,@function
init:                                   # @init
.Linit$local:
	.type	.Linit$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	lu12i.w	$a0, 259059
	ori	$a0, $a0, 3903
	pcalau12i	$a1, %pc_hi20(.Lg4$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg4$local)
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 12
	pcalau12i	$a0, %pc_hi20(.Lg1$local)
	addi.d	$a0, $a0, %pc_lo12(.Lg1$local)
	addi.w	$a1, $zero, -1
	pcalau12i	$a2, %pc_hi20(.Lg7$local)
	addi.d	$a2, $a2, %pc_lo12(.Lg7$local)
.LBB3_1:                                # %bb2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	ld.w	$a4, $sp, 12
	blt	$a3, $a4, .LBB3_3
# %bb.2:                                # %bb3
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$a3, $a1
	lu32i.d	$a3, 0
	ld.w	$a4, $sp, 12
	slli.d	$a5, $a4, 2
	stx.w	$a3, $a2, $a5
	addi.d	$a3, $a4, 1
	st.w	$a3, $sp, 12
	b	.LBB3_1
.LBB3_3:                                # %bb4
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	init, .Lfunc_end3-init
	.size	.Linit$local, .Lfunc_end3-init
	.cfi_endproc
                                        # -- End function
	.globl	tree                            # -- Begin function tree
	.p2align	2
	.type	tree,@function
tree:                                   # @tree
.Ltree$local:
	.type	.Ltree$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.w	$a1, $sp, 16
	st.w	$zero, $sp, 12
	st.w	$a0, $sp, 20
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 80
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.Lg3$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg3$local)
	ldx.w	$a0, $a1, $a0
	bl	%plt(putint)
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	tree, .Lfunc_end4-tree
	.size	.Ltree$local, .Lfunc_end4-tree
	.cfi_endproc
                                        # -- End function
	.globl	LCA                             # -- Begin function LCA
	.p2align	2
	.type	LCA,@function
LCA:                                    # @LCA
.LLCA$local:
	.type	.LLCA$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$fp, $sp, 32
	.cfi_def_cfa 22, 0
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	addi.w	$a1, $a1, 0
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.Lg4$local)
	addi.d	$a3, $a2, %pc_lo12(.Lg4$local)
	ldx.w	$a1, $a3, $a1
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	bge	$a0, $a1, .LBB5_2
# %bb.1:                                # %bb3
	move	$a0, $sp
	addi.d	$sp, $a0, -16
	ld.w	$a1, $fp, -20
	st.w	$a1, $a0, -16
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -20
	ld.w	$a0, $a0, -16
	st.w	$a0, $fp, -24
.LBB5_2:                                # %bb2
	move	$a1, $sp
	addi.d	$a0, $a1, -16
	move	$sp, $a0
	ori	$a4, $zero, 19
	st.w	$a4, $a1, -16
	ori	$a1, $zero, 80
	pcalau12i	$a2, %pc_hi20(.Lg3$local)
	addi.d	$a2, $a2, %pc_lo12(.Lg3$local)
	ori	$a5, $zero, 1
	b	.LBB5_4
.LBB5_3:                                # %bb13
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a6, $a0, 0
	addi.d	$a6, $a6, -1
	st.w	$a6, $a0, 0
.LBB5_4:                                # %bb5
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $fp, -20
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	ld.w	$a7, $fp, -24
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	bge	$a7, $a6, .LBB5_10
# %bb.5:                                # %bb6
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $sp, -16
	move	$sp, $a6
	ld.w	$a7, $fp, -20
	mul.d	$a7, $a7, $a1
	add.d	$a7, $a2, $a7
	ld.w	$t0, $a0, 0
	slli.d	$t0, $t0, 2
	ldx.wu	$a7, $a7, $t0
	beqz	$a7, .LBB5_8
# %bb.6:                                # %bb9
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a7, $fp, -20
	mul.d	$a7, $a7, $a1
	add.d	$a7, $a2, $a7
	ld.w	$t0, $a0, 0
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a7, $t0
	ld.w	$t0, $fp, -24
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a3, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	blt	$a7, $t0, .LBB5_8
# %bb.7:                                # %bb10
                                        #   in Loop: Header=BB5_4 Depth=1
	st.b	$a5, $a6, 0
	ld.bu	$a6, $a6, 0
	beqz	$a6, .LBB5_3
	b	.LBB5_9
.LBB5_8:                                # %bb11
                                        #   in Loop: Header=BB5_4 Depth=1
	st.b	$zero, $a6, 0
	ld.bu	$a6, $a6, 0
	beqz	$a6, .LBB5_3
.LBB5_9:                                # %bb14
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a6, $fp, -20
	mul.d	$a6, $a6, $a1
	add.d	$a6, $a2, $a6
	ld.w	$a7, $a0, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a6, $a6, $a7
	st.w	$a6, $fp, -20
	b	.LBB5_3
.LBB5_10:                               # %bb7
	ld.wu	$a3, $fp, -24
	ld.wu	$a5, $fp, -20
	bne	$a5, $a3, .LBB5_12
# %bb.11:                               # %bb17
	ld.w	$a0, $fp, -20
	b	.LBB5_18
.LBB5_12:                               # %bb16
	st.w	$a4, $a0, 0
	b	.LBB5_14
.LBB5_13:                               # %bb23
                                        #   in Loop: Header=BB5_14 Depth=1
	ld.w	$a3, $a0, 0
	addi.d	$a3, $a3, -1
	st.w	$a3, $a0, 0
.LBB5_14:                               # %bb20
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	blt	$a3, $zero, .LBB5_17
# %bb.15:                               # %bb21
                                        #   in Loop: Header=BB5_14 Depth=1
	ld.w	$a3, $fp, -24
	mul.d	$a3, $a3, $a1
	ld.w	$a4, $fp, -20
	mul.d	$a4, $a4, $a1
	add.d	$a4, $a2, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a5, $a0, 0
	slli.d	$a5, $a5, 2
	ldx.wu	$a3, $a3, $a5
	ldx.wu	$a4, $a4, $a5
	beq	$a4, $a3, .LBB5_13
# %bb.16:                               # %bb24
                                        #   in Loop: Header=BB5_14 Depth=1
	ld.w	$a3, $fp, -20
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a2, $a3
	ld.w	$a4, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $fp, -20
	ld.w	$a3, $fp, -24
	mul.d	$a3, $a3, $a1
	add.d	$a3, $a2, $a3
	ld.w	$a4, $a0, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	st.w	$a3, $fp, -24
	b	.LBB5_13
.LBB5_17:                               # %bb22
	ld.w	$a0, $fp, -20
	mul.d	$a0, $a0, $a1
	ldx.w	$a0, $a2, $a0
.LBB5_18:                               # %bb1
	addi.d	$sp, $fp, -32
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	LCA, .Lfunc_end5-LCA
	.size	.LLCA$local, .Lfunc_end5-LCA
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	addi.d	$fp, $sp, 48
	.cfi_def_cfa 22, 0
	bl	.Lglobal_init$local
	bl	.Lquick_read$local
	pcalau12i	$a1, %pc_hi20(.Lg1$local)
	addi.d	$s0, $a1, %pc_lo12(.Lg1$local)
	st.w	$a0, $s0, 0
	bl	.Lquick_read$local
	pcalau12i	$a1, %pc_hi20(.Lg2$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg2$local)
	st.w	$a0, $a1, 0
	bl	.Linit$local
	ori	$a0, $zero, 1
.LBB6_1:                                # %bb2
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $fp, -44
	ld.wu	$a0, $s0, 0
	ld.wu	$a1, $fp, -44
	beq	$a1, $a0, .LBB6_3
# %bb.2:                                # %bb3
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $sp
	addi.d	$sp, $s1, -16
	bl	.Lquick_read$local
	st.w	$a0, $s1, -16
	move	$s2, $sp
	addi.d	$sp, $s2, -16
	bl	.Lquick_read$local
	move	$a1, $a0
	st.w	$a0, $s2, -16
	ld.w	$a0, $s1, -16
	bl	.Ladd_edge$local
	ld.w	$a0, $fp, -44
	addi.d	$a0, $a0, 1
	b	.LBB6_1
.LBB6_3:                                # %bb4
	ori	$a0, $zero, 1
	move	$a1, $a0
	bl	.Ltree$local
	move	$a0, $zero
	addi.d	$sp, $fp, -48
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.size	.Lmain$local, .Lfunc_end6-main
	.cfi_endproc
                                        # -- End function
	.type	g0,@object                      # @g0
	.data
	.globl	g0
	.p2align	2, 0x0
g0:
.Lg0$local:
	.word	10005                           # 0x2715
	.size	g0, 4

	.type	g1,@object                      # @g1
	.bss
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
	.word	0                               # 0x0
	.size	g2, 4

	.type	g3,@object                      # @g3
	.globl	g3
	.p2align	2, 0x0
g3:
.Lg3$local:
	.space	80
	.size	g3, 80

	.type	g4,@object                      # @g4
	.globl	g4
	.p2align	2, 0x0
g4:
.Lg4$local:
	.space	40020
	.size	g4, 40020

	.type	g5,@object                      # @g5
	.globl	g5
	.p2align	2, 0x0
g5:
.Lg5$local:
	.space	40020
	.size	g5, 40020

	.type	g6,@object                      # @g6
	.globl	g6
	.p2align	2, 0x0
g6:
.Lg6$local:
	.space	40020
	.size	g6, 40020

	.type	g7,@object                      # @g7
	.globl	g7
	.p2align	2, 0x0
g7:
.Lg7$local:
	.space	40020
	.size	g7, 40020

	.type	g8,@object                      # @g8
	.globl	g8
	.p2align	2, 0x0
g8:
.Lg8$local:
	.word	0                               # 0x0
	.size	g8, 4

	.section	".note.GNU-stack","",@progbits
