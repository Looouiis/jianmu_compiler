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
	pcalau12i	$a0, %pc_hi20(.Lg1$local)
	addi.d	$a0, $a0, %pc_lo12(.Lg1$local)
	ori	$a1, $zero, 8
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.Lg0$local)
	addi.d	$a0, $a0, %pc_lo12(.Lg0$local)
	st.w	$a1, $a0, 0
	lu12i.w	$a0, 263312
	ori	$a0, $a0, 4059
	pcalau12i	$a1, %pc_hi20(.Lg5$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg5$local)
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 265360
	ori	$a0, $a0, 4059
	pcalau12i	$a1, %pc_hi20(.Lg6$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg6$local)
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 219235
	ori	$a0, $a0, 1981
	pcalau12i	$a1, %pc_hi20(.Lg7$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg7$local)
	st.w	$a0, $a1, 0
	ret
.Lfunc_end0:
	.size	global_init, .Lfunc_end0-global_init
	.size	.Lglobal_init$local, .Lfunc_end0-global_init
	.cfi_endproc
                                        # -- End function
	.globl	my_fabs                         # -- Begin function my_fabs
	.p2align	2
	.type	my_fabs,@function
my_fabs:                                # @my_fabs
.Lmy_fabs$local:
	.type	.Lmy_fabs$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.w	$a0, $sp, 4
	bstrpick.d	$a0, $a0, 31, 0
	move	$a1, $zero
	bl	%plt(__gtsf2)
	addi.w	$a0, $a0, 0
	bge	$zero, $a0, .LBB1_2
# %bb.1:                                # %bb3
	ld.w	$a0, $sp, 4
	b	.LBB1_3
.LBB1_2:                                # %bb2
	lu12i.w	$a0, -524288
	ld.w	$a1, $sp, 4
	xor	$a0, $a1, $a0
.LBB1_3:                                # %bb1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	my_fabs, .Lfunc_end1-my_fabs
	.size	.Lmy_fabs$local, .Lfunc_end1-my_fabs
	.cfi_endproc
                                        # -- End function
	.globl	p                               # -- Begin function p
	.p2align	2
	.type	p,@function
p:                                      # @p
.Lp$local:
	.type	.Lp$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	st.w	$a0, $sp, 4
	bstrpick.d	$fp, $a0, 31, 0
	lu12i.w	$a1, 263168
	move	$a0, $fp
	bl	%plt(__mulsf3)
	move	$s0, $a0
	lu12i.w	$a1, -260096
	lu32i.d	$a1, 0
	move	$a0, $fp
	bl	%plt(__mulsf3)
	move	$a1, $fp
	bl	%plt(__mulsf3)
	move	$a1, $fp
	bl	%plt(__mulsf3)
	move	$a1, $a0
	move	$a0, $s0
	bl	%plt(__addsf3)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	p, .Lfunc_end2-p
	.size	.Lp$local, .Lfunc_end2-p
	.cfi_endproc
                                        # -- End function
	.globl	my_sin_impl                     # -- Begin function my_sin_impl
	.p2align	2
	.type	my_sin_impl,@function
my_sin_impl:                            # @my_sin_impl
.Lmy_sin_impl$local:
	.type	.Lmy_sin_impl$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.w	$a0, $sp, 4
	bl	.Lmy_fabs$local
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(.Lg7$local)
	addi.d	$a1, $a1, %pc_lo12(.Lg7$local)
	ld.wu	$a1, $a1, 0
	bl	%plt(__lesf2)
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB3_2
# %bb.1:                                # %bb3
	ld.w	$a0, $sp, 4
	b	.LBB3_3
.LBB3_2:                                # %bb2
	ld.wu	$a0, $sp, 4
	lu12i.w	$a1, 263168
	bl	%plt(__divsf3)
	bl	.Lmy_sin_impl$local
	bl	.Lp$local
.LBB3_3:                                # %bb1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	my_sin_impl, .Lfunc_end3-my_sin_impl
	.size	.Lmy_sin_impl$local, .Lfunc_end3-my_sin_impl
	.cfi_endproc
                                        # -- End function
	.globl	my_sin                          # -- Begin function my_sin
	.p2align	2
	.type	my_sin,@function
my_sin:                                 # @my_sin
.Lmy_sin$local:
	.type	.Lmy_sin$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	st.w	$a0, $sp, 12
	pcalau12i	$a0, %pc_hi20(.Lg6$local)
	addi.d	$s1, $a0, %pc_lo12(.Lg6$local)
	ld.wu	$a1, $s1, 0
	ld.wu	$a0, $sp, 12
	bl	%plt(__gtsf2)
	addi.w	$a0, $a0, 0
	blt	$zero, $a0, .LBB4_2
# %bb.1:                                # %bb3
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	ld.wu	$a1, $s1, 0
	xor	$a1, $a1, $a0
	ld.wu	$a0, $sp, 12
	bl	%plt(__ltsf2)
	addi.w	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB4_9
.LBB4_2:                                # %bb4
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 8
	ld.bu	$a0, $sp, 8
	beqz	$a0, .LBB4_4
.LBB4_3:                                # %bb8
	ld.wu	$fp, $s1, 0
	ld.wu	$s0, $sp, 12
	move	$a0, $s0
	move	$a1, $fp
	bl	%plt(__divsf3)
	bl	%plt(__fixsfsi)
	st.w	$a0, $sp, 4
	addi.w	$a0, $a0, 0
	bl	%plt(__floatsisf)
	bstrpick.d	$a0, $a0, 31, 0
	move	$a1, $fp
	bl	%plt(__mulsf3)
	move	$a1, $a0
	move	$a0, $s0
	bl	%plt(__subsf3)
	st.w	$a0, $sp, 12
.LBB4_4:                                # %bb7
	pcalau12i	$a0, %pc_hi20(.Lg5$local)
	addi.d	$fp, $a0, %pc_lo12(.Lg5$local)
	ld.wu	$a1, $fp, 0
	ld.wu	$a0, $sp, 12
	bl	%plt(__gtsf2)
	addi.w	$a0, $a0, 0
	bge	$zero, $a0, .LBB4_6
# %bb.5:                                # %bb11
	ld.wu	$a1, $s1, 0
	ld.wu	$a0, $sp, 12
	bl	%plt(__subsf3)
	st.w	$a0, $sp, 12
.LBB4_6:                                # %bb10
	lu12i.w	$a0, -524288
	lu32i.d	$a0, 0
	ld.wu	$a1, $fp, 0
	xor	$a1, $a1, $a0
	ld.wu	$a0, $sp, 12
	bl	%plt(__ltsf2)
	addi.w	$a0, $a0, 0
	bge	$a0, $zero, .LBB4_8
# %bb.7:                                # %bb14
	ld.wu	$a1, $s1, 0
	ld.wu	$a0, $sp, 12
	bl	%plt(__addsf3)
	st.w	$a0, $sp, 12
.LBB4_8:                                # %bb13
	ld.w	$a0, $sp, 12
	bl	.Lmy_sin_impl$local
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_9:                                # %bb5
	st.b	$zero, $sp, 8
	ld.bu	$a0, $sp, 8
	bnez	$a0, .LBB4_3
	b	.LBB4_4
.Lfunc_end4:
	.size	my_sin, .Lfunc_end4-my_sin
	.size	.Lmy_sin$local, .Lfunc_end4-my_sin
	.cfi_endproc
                                        # -- End function
	.globl	my_cos                          # -- Begin function my_cos
	.p2align	2
	.type	my_cos,@function
my_cos:                                 # @my_cos
.Lmy_cos$local:
	.type	.Lmy_cos$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	st.w	$a0, $sp, 12
	pcalau12i	$a0, %pc_hi20(.Lg5$local)
	addi.d	$a0, $a0, %pc_lo12(.Lg5$local)
	ld.wu	$a0, $a0, 0
	lu12i.w	$a1, 262144
	bl	%plt(__divsf3)
	move	$a1, $a0
	bstrpick.d	$a0, $fp, 31, 0
	bl	%plt(__addsf3)
	bl	.Lmy_sin$local
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	my_cos, .Lfunc_end5-my_cos
	.size	.Lmy_cos$local, .Lfunc_end5-my_cos
	.cfi_endproc
                                        # -- End function
	.globl	write_mat                       # -- Begin function write_mat
	.p2align	2
	.type	write_mat,@function
write_mat:                              # @write_mat
.Lwrite_mat$local:
	.type	.Lwrite_mat$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	st.w	$a2, $sp, 16
	st.w	$a1, $sp, 20
	st.w	$zero, $sp, 12
	ori	$s2, $zero, 1
	ori	$s0, $zero, 32
	ori	$s1, $zero, 10
	b	.LBB6_2
.LBB6_1:                                # %bb6
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a0, $s1
	bl	%plt(putch)
	ld.w	$a0, $sp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 12
.LBB6_2:                                # %bb2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	ld.w	$a0, $sp, 20
	ld.w	$a1, $sp, 12
	bge	$a1, $a0, .LBB6_6
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB6_2 Depth=1
	ld.w	$a0, $sp, 12
	slli.d	$a0, $a0, 5
	ldx.w	$a0, $fp, $a0
	bl	%plt(putfloat)
	st.w	$s2, $sp, 8
.LBB6_4:                                # %bb5
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 16
	ld.w	$a1, $sp, 8
	bge	$a1, $a0, .LBB6_1
# %bb.5:                                # %bb7
                                        #   in Loop: Header=BB6_4 Depth=2
	move	$a0, $s0
	bl	%plt(putch)
	ld.w	$a0, $sp, 12
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	ld.w	$a1, $sp, 8
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	bl	%plt(putfloat)
	ld.w	$a0, $sp, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 8
	b	.LBB6_4
.LBB6_6:                                # %bb3
	ori	$a0, $zero, 10
	bl	%plt(putch)
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	write_mat, .Lfunc_end6-write_mat
	.size	.Lwrite_mat$local, .Lfunc_end6-write_mat
	.cfi_endproc
                                        # -- End function
	.globl	dct                             # -- Begin function dct
	.p2align	2
	.type	dct,@function
dct:                                    # @dct
.Ldct$local:
	.type	.Ldct$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	st.w	$a3, $sp, 24
	st.w	$a2, $sp, 28
	st.w	$zero, $sp, 20
	pcalau12i	$a0, %pc_hi20(.Lg5$local)
	addi.d	$s5, $a0, %pc_lo12(.Lg5$local)
	ori	$s0, $zero, 32
	ori	$s1, $zero, 10
	b	.LBB7_2
.LBB7_1:                                # %bb6
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.w	$a0, $sp, 20
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 20
.LBB7_2:                                # %bb2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
                                        #       Child Loop BB7_8 Depth 3
                                        #         Child Loop BB7_10 Depth 4
	ld.w	$a0, $sp, 28
	ld.w	$a1, $sp, 20
	bge	$a1, $a0, .LBB7_12
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB7_2 Depth=1
	st.w	$zero, $sp, 16
	b	.LBB7_5
.LBB7_4:                                # %bb9
                                        #   in Loop: Header=BB7_5 Depth=2
	ld.w	$a0, $sp, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 16
.LBB7_5:                                # %bb5
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_8 Depth 3
                                        #         Child Loop BB7_10 Depth 4
	ld.w	$a0, $sp, 24
	ld.w	$a1, $sp, 16
	bge	$a1, $a0, .LBB7_1
# %bb.6:                                # %bb7
                                        #   in Loop: Header=BB7_5 Depth=2
	ld.w	$a0, $sp, 20
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	ld.w	$a1, $sp, 16
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a0, $a1
	st.w	$zero, $sp, 12
	b	.LBB7_8
.LBB7_7:                                # %bb12
                                        #   in Loop: Header=BB7_8 Depth=3
	move	$a0, $s1
	bl	%plt(putch)
	ld.w	$a0, $sp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 12
.LBB7_8:                                # %bb8
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_10 Depth 4
	ld.w	$a0, $sp, 28
	ld.w	$a1, $sp, 12
	bge	$a1, $a0, .LBB7_4
# %bb.9:                                # %bb10
                                        #   in Loop: Header=BB7_8 Depth=3
	st.w	$zero, $sp, 8
.LBB7_10:                               # %bb11
                                        #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        #       Parent Loop BB7_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $sp, 24
	ld.w	$a1, $sp, 8
	bge	$a1, $a0, .LBB7_7
# %bb.11:                               # %bb13
                                        #   in Loop: Header=BB7_10 Depth=4
	ld.w	$a0, $sp, 28
	bl	%plt(__floatsisf)
	move	$s2, $a0
	ld.w	$a0, $sp, 12
	bl	%plt(__floatsisf)
	move	$s3, $a0
	ld.w	$a0, $sp, 20
	bl	%plt(__floatsisf)
	move	$s4, $a0
	ld.wu	$a0, $s5, 0
	bstrpick.d	$a1, $s2, 31, 0
	bl	%plt(__divsf3)
	move	$s2, $a0
	bstrpick.d	$a0, $s3, 31, 0
	lu12i.w	$a1, 258048
	bl	%plt(__addsf3)
	move	$a1, $a0
	move	$a0, $s2
	bl	%plt(__mulsf3)
	bstrpick.d	$a1, $s4, 31, 0
	bl	%plt(__mulsf3)
	bl	%plt(putfloat)
	move	$a0, $s0
	bl	%plt(putch)
	ld.w	$a0, $sp, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 8
	b	.LBB7_10
.LBB7_12:                               # %bb3
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end7:
	.size	dct, .Lfunc_end7-dct
	.size	.Ldct$local, .Lfunc_end7-dct
	.cfi_endproc
                                        # -- End function
	.globl	idct                            # -- Begin function idct
	.p2align	2
	.type	idct,@function
idct:                                   # @idct
.Lidct$local:
	.type	.Lidct$local,@function
	.cfi_startproc
# %bb.0:                                # %bb0
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a1
	st.w	$a3, $sp, 8
	st.w	$a2, $sp, 12
	st.w	$zero, $sp, 4
	ori	$s0, $zero, 32
	ori	$s1, $zero, 10
	b	.LBB8_2
.LBB8_1:                                # %bb6
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a0, $s1
	bl	%plt(putch)
	ld.w	$a0, $sp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 4
.LBB8_2:                                # %bb2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	ld.w	$a0, $sp, 12
	ld.w	$a1, $sp, 4
	bge	$a1, $a0, .LBB8_6
# %bb.3:                                # %bb4
                                        #   in Loop: Header=BB8_2 Depth=1
	st.w	$zero, $sp, 0
.LBB8_4:                                # %bb5
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 8
	ld.w	$a1, $sp, 0
	bge	$a1, $a0, .LBB8_1
# %bb.5:                                # %bb7
                                        #   in Loop: Header=BB8_4 Depth=2
	ld.w	$a0, $sp, 4
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	ld.w	$a1, $sp, 0
	slli.d	$a1, $a1, 2
	ldx.wu	$a0, $a0, $a1
	bl	%plt(__fixsfsi)
	bl	%plt(putint)
	move	$a0, $s0
	bl	%plt(putch)
	ld.w	$a0, $sp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 0
	b	.LBB8_4
.LBB8_6:                                # %bb3
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	idct, .Lfunc_end8-idct
	.size	.Lidct$local, .Lfunc_end8-idct
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
.Lmain$local:
	.type	.Lmain$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	bl	.Lglobal_init$local
	bl	%plt(getint)
	st.w	$a0, $sp, 4
	bl	%plt(getint)
	st.w	$a0, $sp, 0
	lu12i.w	$a0, 258048
	bl	%plt(putfloat)
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
	.size	.Lmain$local, .Lfunc_end9-main
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
	.space	256
	.size	g2, 256

	.type	g3,@object                      # @g3
	.globl	g3
	.p2align	2, 0x0
g3:
.Lg3$local:
	.space	256
	.size	g3, 256

	.type	g4,@object                      # @g4
	.globl	g4
	.p2align	2, 0x0
g4:
.Lg4$local:
	.space	256
	.size	g4, 256

	.type	g5,@object                      # @g5
	.globl	g5
	.p2align	2, 0x0
g5:
.Lg5$local:
	.word	0x00000000                      # float 0
	.size	g5, 4

	.type	g6,@object                      # @g6
	.globl	g6
	.p2align	2, 0x0
g6:
.Lg6$local:
	.word	0x00000000                      # float 0
	.size	g6, 4

	.type	g7,@object                      # @g7
	.globl	g7
	.p2align	2, 0x0
g7:
.Lg7$local:
	.word	0x00000000                      # float 0
	.size	g7, 4

	.section	".note.GNU-stack","",@progbits
