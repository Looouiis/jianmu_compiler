	.text
	.file	"main.ll"
	.globl	func                            # -- Begin function func
	.p2align	2
	.type	func,@function
func:                                   # @func
.Lfunc$local:
	.type	.Lfunc$local,@function
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1856
	.cfi_def_cfa_offset 7984
	ori	$t0, $zero, 2544
	add.d	$t0, $sp, $t0
	st.d	$a7, $t0, 0                     # 8-byte Folded Spill
	ori	$a7, $zero, 2512
	add.d	$a7, $sp, $a7
	st.d	$a6, $a7, 0                     # 8-byte Folded Spill
	ori	$a6, $zero, 2520
	add.d	$a6, $sp, $a6
	st.d	$a5, $a6, 0                     # 8-byte Folded Spill
	ori	$a5, $zero, 2480
	add.d	$a5, $sp, $a5
	st.d	$a4, $a5, 0                     # 8-byte Folded Spill
	ori	$a4, $zero, 2488
	add.d	$a4, $sp, $a4
	st.d	$a3, $a4, 0                     # 8-byte Folded Spill
	ori	$a3, $zero, 2440
	add.d	$a3, $sp, $a3
	st.d	$a2, $a3, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ori	$a1, $zero, 2448
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1088
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1072
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1064
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 1000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1056
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1040
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1032
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1024
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1016
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1008
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1000
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 992
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 984
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 976
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 968
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 960
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 952
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 944
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 936
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 928
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 920
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 912
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 904
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 896
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 888
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 880
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 872
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 864
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 856
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 848
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 840
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 832
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 824
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 816
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 808
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 800
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 792
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 784
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 776
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 768
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 760
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 752
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 744
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 736
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 728
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 720
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 712
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 704
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 696
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 688
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 680
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 672
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 664
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 656
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 648
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 640
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 632
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 624
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 616
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 608
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 600
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 584
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 576
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 560
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 552
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 544
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 528
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 512
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 496
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 488
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 480
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 464
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 456
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 448
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 432
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 424
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 416
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 408
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 400
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 392
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 384
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 368
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 360
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 352
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 336
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 328
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 320
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 312
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 296
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 288
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 280
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 272
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 264
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 256
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 240
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 232
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 224
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 216
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 208
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 200
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 192
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 184
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 176
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 168
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 152
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 144
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 136
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 128
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 64
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 120
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 112
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 104
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 96
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 88
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 80
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 72
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 8
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 64
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 3
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 56
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 48
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 40
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 32
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 24
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 16
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 8
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4088
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4072
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4064
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4056
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4040
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4032
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4024
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4016
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4008
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4000
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3992
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3984
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3976
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3968
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3960
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3952
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3944
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3936
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3928
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3920
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3912
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3904
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3896
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3888
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3880
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3872
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3864
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3856
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3848
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3840
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3832
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3824
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3816
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3808
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3800
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3792
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3784
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3776
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3768
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3760
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3752
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3744
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3736
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3728
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3720
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3712
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3704
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3696
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3688
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3680
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3672
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3664
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3656
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3648
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3640
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3632
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3624
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3616
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3608
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3600
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3576
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3560
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3552
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3544
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3528
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3520
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3512
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3496
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3488
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3480
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3464
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3456
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3448
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3432
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3424
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3416
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3408
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3400
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3392
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3384
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3368
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3352
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3336
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3328
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3320
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3312
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3288
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3280
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3272
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3264
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3256
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3240
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3232
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3224
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3216
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3208
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3200
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3192
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3184
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3176
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3168
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3096
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3152
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3144
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3136
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3128
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3120
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3112
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3104
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3096
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3088
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3072
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3064
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3056
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3040
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3032
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3024
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3016
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3008
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3000
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2992
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2984
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2976
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2968
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2960
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2952
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2944
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2936
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2928
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2920
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2912
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2904
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2896
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2888
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2880
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2872
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2864
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2856
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2848
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2840
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2832
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2824
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2816
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2808
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2792
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2784
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2776
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2768
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2760
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2752
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2744
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2736
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2728
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2720
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2712
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2704
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2696
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2688
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2680
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2672
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2664
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2640
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2632
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2624
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2616
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2608
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2600
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2576
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2560
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2528
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2496
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2464
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2432
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2424
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2416
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2408
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2400
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2392
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2384
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2368
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2360
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2352
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2336
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2328
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2320
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2312
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2296
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2288
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2280
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2272
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2264
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2256
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2240
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2232
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2224
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2216
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2208
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2200
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2192
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2184
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2176
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2168
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2160
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2152
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2144
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2136
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2128
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2120
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2112
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2104
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2096
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2096
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2088
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2072
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2064
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2056
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 2040                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 2032                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 2024                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 2008                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 2000                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1992                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1976                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1968                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1960                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1952                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1936                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1928                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1920                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1912                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1904                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1896                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1888                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1880                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1872                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1864                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1856                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1848                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1840                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1832                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1824                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1816                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1808                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1800                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1792                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1784                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1776                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1768                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1760                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1752                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1744                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1736                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1728                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1720                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1712                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1704                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1696                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1688                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1680                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1672                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1664                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1656                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1648                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1640                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1632                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1624                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1616                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1608                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1600                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1592                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1584                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1576                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1568                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1560                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1552                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1544                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1536                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1528                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1520                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1512                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1504                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1496                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1488                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1480                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1472                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1464                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1456                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1448                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1440                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1432                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1424                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1416                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1408                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1400                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1392                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1384                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1376                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1368                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1360                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1352                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1344                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1336                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1328                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1320                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1312                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1304                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1296                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1288                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1280                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1272                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1264                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1096
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 856                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 808                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 64
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 8
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 2
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4088
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4080
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4072
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4064
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4056
	add.d	$a0, $sp, $a0
	ld.d	$t0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4048
	add.d	$a0, $sp, $a0
	ld.d	$s2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4040
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4032
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4024
	add.d	$a0, $sp, $a0
	ld.d	$s4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4016
	add.d	$a0, $sp, $a0
	ld.d	$s5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4008
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4000
	add.d	$a0, $sp, $a0
	ld.d	$s7, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3992
	add.d	$a0, $sp, $a0
	ld.d	$s8, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3984
	add.d	$a0, $sp, $a0
	ld.d	$t1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3976
	add.d	$a0, $sp, $a0
	ld.d	$ra, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3968
	add.d	$a0, $sp, $a0
	ld.d	$t2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3960
	add.d	$a0, $sp, $a0
	ld.d	$t3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3952
	add.d	$a0, $sp, $a0
	ld.d	$t4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3944
	add.d	$a0, $sp, $a0
	ld.d	$t5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3936
	add.d	$a0, $sp, $a0
	ld.d	$t6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3920
	add.d	$a5, $sp, $a5
	ld.d	$a7, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3912
	add.d	$a5, $sp, $a5
	ld.d	$t7, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3904
	add.d	$a5, $sp, $a5
	ld.d	$a6, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3896
	add.d	$a5, $sp, $a5
	ld.d	$t8, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3888
	add.d	$a5, $sp, $a5
	ld.d	$a5, $a5, 0
	st.d	$a0, $sp, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3792
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3796
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3788
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3784
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3780
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3776
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3772
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3768
	add.d	$a0, $sp, $a0
	st.w	$fp, $a0, 0
	ld.d	$a0, $sp, 0
	lu12i.w	$fp, 1
	ori	$fp, $fp, 3764
	add.d	$fp, $sp, $fp
	st.w	$a5, $fp, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3760
	add.d	$a5, $sp, $a5
	st.w	$t8, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3756
	add.d	$a5, $sp, $a5
	st.w	$a6, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3752
	add.d	$a5, $sp, $a5
	st.w	$t7, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3748
	add.d	$a5, $sp, $a5
	st.w	$a7, $a5, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3744
	add.d	$a5, $sp, $a5
	st.w	$a0, $a5, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3740
	add.d	$a0, $sp, $a0
	st.w	$t6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3736
	add.d	$a0, $sp, $a0
	st.w	$t5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3732
	add.d	$a0, $sp, $a0
	st.w	$t4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3728
	add.d	$a0, $sp, $a0
	st.w	$t3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3724
	add.d	$a0, $sp, $a0
	st.w	$t2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3716
	add.d	$a0, $sp, $a0
	st.w	$t1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3720
	add.d	$a0, $sp, $a0
	st.w	$ra, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3712
	add.d	$a0, $sp, $a0
	st.w	$s8, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3708
	add.d	$a0, $sp, $a0
	st.w	$s7, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3704
	add.d	$a0, $sp, $a0
	st.w	$s6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3700
	add.d	$a0, $sp, $a0
	st.w	$s5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3696
	add.d	$a0, $sp, $a0
	st.w	$s4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3692
	add.d	$a0, $sp, $a0
	st.w	$s3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3688
	add.d	$a0, $sp, $a0
	st.w	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3684
	add.d	$a0, $sp, $a0
	st.w	$s2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3680
	add.d	$a0, $sp, $a0
	st.w	$t0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3676
	add.d	$a0, $sp, $a0
	st.w	$a2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3672
	add.d	$a0, $sp, $a0
	st.w	$s1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3668
	add.d	$a0, $sp, $a0
	st.w	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3664
	add.d	$a0, $sp, $a0
	st.w	$s0, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3660
	add.d	$a0, $sp, $a0
	st.w	$a4, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3656
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3652
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3648
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3644
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3640
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3636
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3632
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3628
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3624
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3620
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3616
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3612
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3608
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3604
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3600
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3596
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3592
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3588
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3584
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3580
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3576
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3572
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3568
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3564
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3560
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3556
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3552
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3548
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3544
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3540
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3536
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3532
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3528
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3524
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3520
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3516
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3512
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3508
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3504
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3500
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3496
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3492
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3488
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3484
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3480
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3476
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3472
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3468
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3464
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3460
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3456
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3452
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3448
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3444
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3440
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3436
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3432
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3428
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3424
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3420
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3416
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3412
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3408
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3404
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3400
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3396
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3392
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3388
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3384
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3380
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3376
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3372
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3368
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3364
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3360
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3356
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3352
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3348
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3344
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3340
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3336
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3332
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3328
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3324
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3320
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3316
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3312
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3308
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3304
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3300
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3296
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3292
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3288
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3284
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3280
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3276
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3272
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3268
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3264
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3260
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3256
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3252
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3248
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3244
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3240
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3236
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3232
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3228
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3224
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3220
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3216
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3212
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3208
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3204
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 920                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3200
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3196
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 936                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3192
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3188
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3184
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3180
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3176
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3172
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3168
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3164
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3160
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3156
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3152
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3148
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3144
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3140
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3136
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1056                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3132
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3128
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1072                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3124
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3120
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3116
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1096                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3112
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3108
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1112                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3104
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3100
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1128                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3096
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3092
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1144                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3088
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1152                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3084
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1160                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3080
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3076
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3072
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1184                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3068
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3064
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1200                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3060
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1208                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3056
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1216                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3052
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1224                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3048
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1232                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3044
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3040
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1248                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3036
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1256                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3032
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1264                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3028
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1272                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3024
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1280                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3020
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1288                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3016
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1296                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3012
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1304                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3008
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1312                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3004
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1320                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3000
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1328                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2996
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1336                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2992
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1344                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2988
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1352                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2984
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1360                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2980
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1368                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2976
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1376                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2972
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1384                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2968
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1392                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2964
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1400                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2960
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1408                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2956
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1416                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2952
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1424                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2948
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1432                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2944
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1440                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2940
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1448                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2936
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1456                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2932
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1464                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2928
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1472                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2924
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1480                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2920
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1488                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2916
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1496                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2912
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1504                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2908
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1512                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2904
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1520                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2900
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1528                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2896
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1536                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2892
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1544                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2888
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1552                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2884
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1560                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2880
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1568                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2876
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1576                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2872
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1584                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2868
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1592                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2864
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1600                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2860
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1608                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2856
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1616                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2852
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1624                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2848
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1632                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2844
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1640                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2840
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1648                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2836
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1656                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2832
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1664                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2828
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1672                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2824
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1680                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2820
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1688                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2816
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1696                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2812
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1704                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2808
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1712                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2804
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1720                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2800
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1728                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2796
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1736                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2792
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1744                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2788
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1752                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2784
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1760                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2780
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1768                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2776
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1776                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2772
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1784                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2768
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1792                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2764
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1800                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2760
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1808                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2756
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1816                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2752
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1824                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2748
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1832                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2744
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1840                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2740
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1848                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2736
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1856                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2732
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1864                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2728
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1872                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2724
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1880                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2720
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1888                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2716
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1896                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2712
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1904                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2708
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1912                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2704
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1920                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2700
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1928                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2696
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1936                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2692
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1944                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2688
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1952                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2684
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1960                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2680
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1968                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2676
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1976                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2672
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1984                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2668
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 1992                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2664
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 2000                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2660
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 2008                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2656
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 2016                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2652
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 2024                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2648
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 2032                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2644
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 2040                  # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2640
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2636
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2632
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2628
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2624
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2620
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2616
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2096
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2612
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2608
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2604
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2600
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2596
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2592
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2588
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2584
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2580
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2576
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2572
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2568
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2564
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2560
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2556
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2552
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2548
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2544
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2540
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2536
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2532
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2528
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2524
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2520
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2516
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2512
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2508
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2504
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2500
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2496
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2492
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2488
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2484
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2480
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2476
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2472
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2468
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2464
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2460
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2456
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2452
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2448
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2444
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2440
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2436
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2432
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2428
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2424
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2420
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2416
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2412
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2408
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2404
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2400
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2396
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2392
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2388
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2384
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2380
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2376
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2372
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2364
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2360
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2356
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2352
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2348
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2344
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2340
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2336
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2332
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2328
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2324
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2320
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2316
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2312
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2308
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2304
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2300
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2296
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2292
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2288
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2284
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2280
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2276
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2272
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2268
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2264
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2260
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2256
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2252
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2248
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2244
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2236
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2232
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2228
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2224
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2220
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2216
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2212
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2208
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2204
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2200
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2196
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 2992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2192
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2188
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2184
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2180
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2176
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2172
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2168
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2164
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2160
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2156
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2152
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2148
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2144
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3096
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2140
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2136
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2132
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2128
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2124
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2120
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2116
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2112
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2108
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2104
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2100
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2096
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2092
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2088
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2084
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2080
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2076
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2072
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2068
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2064
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2060
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2056
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2052
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2048
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2044
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2040
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2036
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2032
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2028
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2024
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2020
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2016
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2012
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2008
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2004
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2000
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1996
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1992
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1988
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1984
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1980
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1976
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1972
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1968
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1964
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1960
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1956
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1952
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1948
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1944
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1940
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1936
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1932
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1928
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1924
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1920
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1916
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1912
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1908
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1904
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1900
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1896
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1892
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1888
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1884
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1880
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1876
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1872
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1868
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1864
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1860
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1856
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1852
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1848
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1844
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1840
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1836
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1832
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1828
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1824
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1820
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1816
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1812
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1808
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1804
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1800
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1796
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1792
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1788
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1784
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1780
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1776
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1772
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1768
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1764
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1760
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1756
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1752
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1748
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1744
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1740
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1736
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1732
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1728
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1724
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1720
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1716
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1712
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1708
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1704
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1700
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1696
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 3992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1692
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1688
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1684
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1680
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1676
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1672
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1668
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1664
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1660
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1656
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1652
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1648
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 4088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1644
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1640
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 8
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1636
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1632
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1628
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1624
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1620
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1616
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1612
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 64
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1608
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 72
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1604
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1600
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1596
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1592
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1588
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 112
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1584
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 120
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1580
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 128
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1576
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 136
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1572
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 144
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1568
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 152
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1564
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 160
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1560
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 168
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1556
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 176
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1552
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 184
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1548
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 192
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1544
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 200
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1540
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 208
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1536
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 216
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1532
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 224
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1528
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 232
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1524
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 240
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1520
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1516
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 256
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1512
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 264
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1508
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 272
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1504
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1500
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 288
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1496
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 296
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1492
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 304
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1488
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1484
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 320
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1480
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 328
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1476
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 336
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1472
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1468
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1464
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1460
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 368
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1456
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 376
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1452
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 384
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1448
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 392
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1444
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 400
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1436
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 416
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1432
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1428
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 432
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1424
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1420
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 448
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1416
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 456
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1412
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 464
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1408
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1404
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1400
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 488
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1396
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 496
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1392
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1388
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 512
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1384
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1380
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 528
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1376
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1372
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 544
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1368
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 552
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1364
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 560
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1360
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1356
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 576
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1352
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1348
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 592
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1344
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1340
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 608
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1336
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 616
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1332
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 624
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1328
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 632
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1324
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 640
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1320
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 648
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1316
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 656
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1312
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 664
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1308
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1304
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1300
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 688
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1296
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 696
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1292
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 704
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1288
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 712
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1284
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 720
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1280
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 728
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1276
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 736
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1272
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 744
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1268
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 752
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1264
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 760
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1260
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 768
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1256
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 776
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1252
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 784
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1248
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 792
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1244
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 800
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1240
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 808
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1236
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 816
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1232
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 824
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1228
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 832
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1224
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 840
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1220
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 848
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1216
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 856
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1212
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 864
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1208
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 872
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1204
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 880
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1200
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 888
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1196
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 896
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1192
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 904
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1188
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 912
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1184
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 920
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1180
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1176
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 936
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1172
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 944
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1168
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 952
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1164
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 960
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1160
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 968
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1156
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 976
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1152
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 984
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1148
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 992
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1144
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1000
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1140
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1008
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1136
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1016
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1132
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1128
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1032
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1124
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1040
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1120
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1048
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1116
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1056
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1112
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1064
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1108
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1072
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1104
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1080
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1100
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1088
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0                     # 8-byte Folded Reload
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1096
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1856
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end0:
	.size	func, .Lfunc_end0-func
	.size	.Lfunc$local, .Lfunc_end0-func
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
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1280
	.cfi_def_cfa_offset 5360
	ori	$a0, $zero, 3
	stptr.d	$a0, $sp, 5288
	stptr.d	$a0, $sp, 5224
	stptr.d	$a0, $sp, 5056
	stptr.d	$a0, $sp, 4992
	stptr.d	$a0, $sp, 4976
	stptr.d	$a0, $sp, 4952
	stptr.d	$a0, $sp, 4936
	stptr.d	$a0, $sp, 4896
	stptr.d	$a0, $sp, 4808
	stptr.d	$a0, $sp, 4776
	stptr.d	$a0, $sp, 4768
	stptr.d	$a0, $sp, 4656
	stptr.d	$a0, $sp, 4592
	stptr.d	$a0, $sp, 4512
	stptr.d	$a0, $sp, 4496
	stptr.d	$a0, $sp, 4448
	stptr.d	$a0, $sp, 4416
	stptr.d	$a0, $sp, 4400
	stptr.d	$a0, $sp, 4320
	stptr.d	$a0, $sp, 4296
	stptr.d	$a0, $sp, 4200
	stptr.d	$a0, $sp, 4168
	stptr.d	$a0, $sp, 4136
	stptr.d	$a0, $sp, 4096
	stptr.d	$a0, $sp, 3936
	stptr.d	$a0, $sp, 3824
	stptr.d	$a0, $sp, 3512
	stptr.d	$a0, $sp, 3480
	stptr.d	$a0, $sp, 3288
	stptr.d	$a0, $sp, 3232
	stptr.d	$a0, $sp, 3152
	stptr.d	$a0, $sp, 3048
	stptr.d	$a0, $sp, 3040
	stptr.d	$a0, $sp, 2936
	stptr.d	$a0, $sp, 2904
	stptr.d	$a0, $sp, 2880
	stptr.d	$a0, $sp, 2864
	stptr.d	$a0, $sp, 2832
	stptr.d	$a0, $sp, 2624
	stptr.d	$a0, $sp, 2568
	stptr.d	$a0, $sp, 2536
	stptr.d	$a0, $sp, 2504
	stptr.d	$a0, $sp, 2464
	stptr.d	$a0, $sp, 2448
	stptr.d	$a0, $sp, 2392
	stptr.d	$a0, $sp, 2360
	stptr.d	$a0, $sp, 2184
	stptr.d	$a0, $sp, 2176
	stptr.d	$a0, $sp, 2152
	stptr.d	$a0, $sp, 2080
	st.d	$a0, $sp, 1808
	st.d	$a0, $sp, 1680
	st.d	$a0, $sp, 1552
	st.d	$a0, $sp, 1336
	st.d	$a0, $sp, 1096
	st.d	$a0, $sp, 992
	st.d	$a0, $sp, 896
	st.d	$a0, $sp, 704
	st.d	$a0, $sp, 584
	st.d	$a0, $sp, 496
	st.d	$a0, $sp, 488
	st.d	$a0, $sp, 464
	st.d	$a0, $sp, 456
	st.d	$a0, $sp, 424
	st.d	$a0, $sp, 392
	st.d	$a0, $sp, 384
	st.d	$a0, $sp, 200
	st.d	$a0, $sp, 104
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 56
	ori	$a0, $zero, 7
	stptr.d	$a0, $sp, 5272
	stptr.d	$a0, $sp, 5256
	stptr.d	$a0, $sp, 5208
	stptr.d	$a0, $sp, 5128
	stptr.d	$a0, $sp, 5048
	stptr.d	$a0, $sp, 5040
	stptr.d	$a0, $sp, 4968
	stptr.d	$a0, $sp, 4888
	stptr.d	$a0, $sp, 4864
	stptr.d	$a0, $sp, 4728
	stptr.d	$a0, $sp, 4712
	stptr.d	$a0, $sp, 4648
	stptr.d	$a0, $sp, 4600
	stptr.d	$a0, $sp, 4576
	stptr.d	$a0, $sp, 4520
	stptr.d	$a0, $sp, 4432
	stptr.d	$a0, $sp, 4344
	stptr.d	$a0, $sp, 4304
	stptr.d	$a0, $sp, 4280
	stptr.d	$a0, $sp, 4000
	stptr.d	$a0, $sp, 3848
	stptr.d	$a0, $sp, 3800
	stptr.d	$a0, $sp, 3760
	stptr.d	$a0, $sp, 3752
	stptr.d	$a0, $sp, 3688
	stptr.d	$a0, $sp, 3680
	stptr.d	$a0, $sp, 3632
	stptr.d	$a0, $sp, 3472
	stptr.d	$a0, $sp, 3352
	stptr.d	$a0, $sp, 3320
	stptr.d	$a0, $sp, 3304
	stptr.d	$a0, $sp, 3272
	stptr.d	$a0, $sp, 3240
	stptr.d	$a0, $sp, 3136
	stptr.d	$a0, $sp, 3096
	stptr.d	$a0, $sp, 3056
	stptr.d	$a0, $sp, 2792
	stptr.d	$a0, $sp, 2784
	stptr.d	$a0, $sp, 2744
	stptr.d	$a0, $sp, 2736
	stptr.d	$a0, $sp, 2680
	stptr.d	$a0, $sp, 2592
	stptr.d	$a0, $sp, 2560
	stptr.d	$a0, $sp, 2472
	stptr.d	$a0, $sp, 2440
	stptr.d	$a0, $sp, 2320
	stptr.d	$a0, $sp, 2120
	stptr.d	$a0, $sp, 2088
	st.d	$a0, $sp, 1712
	st.d	$a0, $sp, 1600
	st.d	$a0, $sp, 1568
	st.d	$a0, $sp, 1544
	st.d	$a0, $sp, 1464
	st.d	$a0, $sp, 1376
	st.d	$a0, $sp, 1344
	st.d	$a0, $sp, 1240
	st.d	$a0, $sp, 1200
	st.d	$a0, $sp, 1080
	st.d	$a0, $sp, 984
	st.d	$a0, $sp, 840
	st.d	$a0, $sp, 776
	st.d	$a0, $sp, 768
	st.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	st.d	$a0, $sp, 592
	st.d	$a0, $sp, 280
	st.d	$a0, $sp, 248
	st.d	$a0, $sp, 224
	st.d	$a0, $sp, 24
	ori	$a0, $zero, 4
	stptr.d	$a0, $sp, 5320
	stptr.d	$a0, $sp, 5312
	stptr.d	$a0, $sp, 5216
	stptr.d	$a0, $sp, 5120
	stptr.d	$a0, $sp, 4904
	stptr.d	$a0, $sp, 4872
	stptr.d	$a0, $sp, 4856
	stptr.d	$a0, $sp, 4760
	stptr.d	$a0, $sp, 4544
	stptr.d	$a0, $sp, 4392
	stptr.d	$a0, $sp, 4376
	stptr.d	$a0, $sp, 4352
	stptr.d	$a0, $sp, 4328
	stptr.d	$a0, $sp, 4312
	stptr.d	$a0, $sp, 3992
	stptr.d	$a0, $sp, 3968
	stptr.d	$a0, $sp, 3856
	stptr.d	$a0, $sp, 3768
	stptr.d	$a0, $sp, 3624
	stptr.d	$a0, $sp, 3400
	stptr.d	$a0, $sp, 3248
	stptr.d	$a0, $sp, 3216
	stptr.d	$a0, $sp, 3200
	stptr.d	$a0, $sp, 3008
	stptr.d	$a0, $sp, 2928
	stptr.d	$a0, $sp, 2888
	stptr.d	$a0, $sp, 2840
	stptr.d	$a0, $sp, 2720
	stptr.d	$a0, $sp, 2696
	stptr.d	$a0, $sp, 2376
	stptr.d	$a0, $sp, 2336
	stptr.d	$a0, $sp, 2256
	stptr.d	$a0, $sp, 2048
	st.d	$a0, $sp, 2016
	st.d	$a0, $sp, 2000
	st.d	$a0, $sp, 1984
	st.d	$a0, $sp, 1928
	st.d	$a0, $sp, 1824
	st.d	$a0, $sp, 1776
	st.d	$a0, $sp, 1672
	st.d	$a0, $sp, 1592
	st.d	$a0, $sp, 1560
	st.d	$a0, $sp, 1536
	st.d	$a0, $sp, 1400
	st.d	$a0, $sp, 1280
	st.d	$a0, $sp, 1272
	st.d	$a0, $sp, 1224
	st.d	$a0, $sp, 1168
	st.d	$a0, $sp, 1120
	st.d	$a0, $sp, 1016
	st.d	$a0, $sp, 904
	st.d	$a0, $sp, 824
	st.d	$a0, $sp, 680
	st.d	$a0, $sp, 640
	st.d	$a0, $sp, 568
	st.d	$a0, $sp, 480
	st.d	$a0, $sp, 416
	st.d	$a0, $sp, 368
	st.d	$a0, $sp, 312
	st.d	$a0, $sp, 264
	st.d	$a0, $sp, 192
	st.d	$a0, $sp, 176
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 16
	ori	$a0, $zero, 6
	stptr.d	$a0, $sp, 5032
	stptr.d	$a0, $sp, 5016
	stptr.d	$a0, $sp, 4920
	stptr.d	$a0, $sp, 4832
	stptr.d	$a0, $sp, 4640
	stptr.d	$a0, $sp, 4528
	stptr.d	$a0, $sp, 4440
	stptr.d	$a0, $sp, 4384
	stptr.d	$a0, $sp, 4152
	stptr.d	$a0, $sp, 4048
	stptr.d	$a0, $sp, 4040
	stptr.d	$a0, $sp, 4016
	stptr.d	$a0, $sp, 4008
	stptr.d	$a0, $sp, 3984
	stptr.d	$a0, $sp, 3880
	stptr.d	$a0, $sp, 3864
	stptr.d	$a0, $sp, 3840
	stptr.d	$a0, $sp, 3808
	stptr.d	$a0, $sp, 3720
	stptr.d	$a0, $sp, 3712
	stptr.d	$a0, $sp, 3672
	stptr.d	$a0, $sp, 3520
	stptr.d	$a0, $sp, 3504
	stptr.d	$a0, $sp, 3408
	stptr.d	$a0, $sp, 3344
	stptr.d	$a0, $sp, 3088
	stptr.d	$a0, $sp, 2912
	stptr.d	$a0, $sp, 2872
	stptr.d	$a0, $sp, 2856
	stptr.d	$a0, $sp, 2808
	stptr.d	$a0, $sp, 2776
	stptr.d	$a0, $sp, 2768
	stptr.d	$a0, $sp, 2616
	stptr.d	$a0, $sp, 2584
	stptr.d	$a0, $sp, 2416
	stptr.d	$a0, $sp, 2344
	stptr.d	$a0, $sp, 2240
	stptr.d	$a0, $sp, 2192
	stptr.d	$a0, $sp, 2160
	stptr.d	$a0, $sp, 2064
	st.d	$a0, $sp, 2024
	st.d	$a0, $sp, 1752
	st.d	$a0, $sp, 1728
	st.d	$a0, $sp, 1688
	st.d	$a0, $sp, 1648
	st.d	$a0, $sp, 1632
	st.d	$a0, $sp, 1424
	st.d	$a0, $sp, 1416
	st.d	$a0, $sp, 1232
	st.d	$a0, $sp, 1040
	st.d	$a0, $sp, 832
	st.d	$a0, $sp, 800
	st.d	$a0, $sp, 760
	st.d	$a0, $sp, 552
	st.d	$a0, $sp, 544
	st.d	$a0, $sp, 472
	st.d	$a0, $sp, 344
	st.d	$a0, $sp, 336
	st.d	$a0, $sp, 328
	st.d	$a0, $sp, 304
	st.d	$a0, $sp, 232
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 0
	ori	$a4, $zero, 9
	stptr.d	$a4, $sp, 5336
	stptr.d	$zero, $sp, 5328
	ori	$a3, $zero, 8
	stptr.d	$a3, $sp, 5304
	ori	$a5, $zero, 5
	stptr.d	$a5, $sp, 5296
	ori	$a1, $zero, 1
	stptr.d	$a1, $sp, 5280
	stptr.d	$a3, $sp, 5264
	ori	$a6, $zero, 2
	stptr.d	$a6, $sp, 5248
	stptr.d	$a6, $sp, 5240
	stptr.d	$a4, $sp, 5232
	stptr.d	$zero, $sp, 5200
	stptr.d	$zero, $sp, 5192
	stptr.d	$a4, $sp, 5184
	stptr.d	$a6, $sp, 5176
	stptr.d	$a4, $sp, 5168
	stptr.d	$zero, $sp, 5160
	stptr.d	$a4, $sp, 5152
	stptr.d	$a4, $sp, 5144
	stptr.d	$a3, $sp, 5136
	stptr.d	$a3, $sp, 5112
	stptr.d	$a5, $sp, 5104
	stptr.d	$a4, $sp, 5096
	stptr.d	$a1, $sp, 5088
	stptr.d	$a3, $sp, 5080
	stptr.d	$a4, $sp, 5072
	stptr.d	$a6, $sp, 5064
	stptr.d	$a3, $sp, 5024
	stptr.d	$a4, $sp, 5008
	stptr.d	$a1, $sp, 5000
	stptr.d	$a3, $sp, 4984
	stptr.d	$a5, $sp, 4960
	stptr.d	$a1, $sp, 4944
	stptr.d	$zero, $sp, 4928
	stptr.d	$zero, $sp, 4912
	stptr.d	$a4, $sp, 4880
	stptr.d	$zero, $sp, 4848
	stptr.d	$a6, $sp, 4840
	stptr.d	$a1, $sp, 4824
	stptr.d	$a5, $sp, 4816
	stptr.d	$zero, $sp, 4800
	stptr.d	$zero, $sp, 4792
	stptr.d	$zero, $sp, 4784
	stptr.d	$a5, $sp, 4752
	stptr.d	$zero, $sp, 4744
	stptr.d	$a4, $sp, 4736
	stptr.d	$a4, $sp, 4720
	stptr.d	$a5, $sp, 4704
	stptr.d	$a1, $sp, 4696
	stptr.d	$a5, $sp, 4688
	stptr.d	$a5, $sp, 4680
	stptr.d	$a4, $sp, 4672
	stptr.d	$a6, $sp, 4664
	stptr.d	$a5, $sp, 4632
	stptr.d	$a3, $sp, 4624
	stptr.d	$a3, $sp, 4616
	stptr.d	$a5, $sp, 4608
	stptr.d	$a3, $sp, 4584
	stptr.d	$a4, $sp, 4568
	stptr.d	$a4, $sp, 4560
	stptr.d	$zero, $sp, 4552
	stptr.d	$a6, $sp, 4536
	stptr.d	$a1, $sp, 4504
	stptr.d	$a6, $sp, 4488
	stptr.d	$a5, $sp, 4480
	stptr.d	$a3, $sp, 4472
	stptr.d	$a1, $sp, 4464
	stptr.d	$a6, $sp, 4456
	stptr.d	$a3, $sp, 4424
	stptr.d	$a3, $sp, 4408
	stptr.d	$a1, $sp, 4368
	stptr.d	$a4, $sp, 4360
	stptr.d	$zero, $sp, 4336
	stptr.d	$a4, $sp, 4288
	stptr.d	$a6, $sp, 4272
	stptr.d	$a1, $sp, 4264
	stptr.d	$a1, $sp, 4256
	stptr.d	$a5, $sp, 4248
	stptr.d	$a3, $sp, 4240
	stptr.d	$a4, $sp, 4232
	stptr.d	$a1, $sp, 4224
	stptr.d	$a3, $sp, 4216
	stptr.d	$a3, $sp, 4208
	stptr.d	$a4, $sp, 4192
	stptr.d	$a4, $sp, 4184
	stptr.d	$a6, $sp, 4176
	stptr.d	$a6, $sp, 4160
	stptr.d	$a4, $sp, 4144
	stptr.d	$a1, $sp, 4128
	stptr.d	$a4, $sp, 4120
	stptr.d	$a6, $sp, 4112
	stptr.d	$a3, $sp, 4104
	stptr.d	$zero, $sp, 4088
	stptr.d	$a6, $sp, 4080
	stptr.d	$a5, $sp, 4072
	stptr.d	$a6, $sp, 4064
	stptr.d	$a1, $sp, 4056
	stptr.d	$a4, $sp, 4032
	stptr.d	$a3, $sp, 4024
	stptr.d	$a4, $sp, 3976
	stptr.d	$a1, $sp, 3960
	stptr.d	$a4, $sp, 3952
	stptr.d	$a1, $sp, 3944
	stptr.d	$zero, $sp, 3928
	stptr.d	$a4, $sp, 3920
	stptr.d	$a5, $sp, 3912
	stptr.d	$a3, $sp, 3904
	stptr.d	$a3, $sp, 3896
	stptr.d	$a6, $sp, 3888
	stptr.d	$a5, $sp, 3872
	stptr.d	$a1, $sp, 3832
	stptr.d	$a3, $sp, 3816
	stptr.d	$a3, $sp, 3792
	stptr.d	$zero, $sp, 3784
	stptr.d	$a4, $sp, 3776
	stptr.d	$a4, $sp, 3744
	stptr.d	$a3, $sp, 3736
	stptr.d	$a3, $sp, 3728
	stptr.d	$a6, $sp, 3704
	stptr.d	$a5, $sp, 3696
	stptr.d	$a4, $sp, 3664
	stptr.d	$a6, $sp, 3656
	stptr.d	$a3, $sp, 3648
	stptr.d	$zero, $sp, 3640
	stptr.d	$zero, $sp, 3616
	stptr.d	$a5, $sp, 3608
	stptr.d	$a6, $sp, 3600
	stptr.d	$a3, $sp, 3592
	stptr.d	$a5, $sp, 3584
	stptr.d	$a4, $sp, 3576
	stptr.d	$a6, $sp, 3568
	stptr.d	$a6, $sp, 3560
	stptr.d	$a1, $sp, 3552
	stptr.d	$a3, $sp, 3544
	stptr.d	$zero, $sp, 3536
	stptr.d	$a4, $sp, 3528
	stptr.d	$a4, $sp, 3496
	stptr.d	$a3, $sp, 3488
	stptr.d	$a6, $sp, 3464
	stptr.d	$a6, $sp, 3456
	stptr.d	$zero, $sp, 3448
	stptr.d	$a1, $sp, 3440
	stptr.d	$a6, $sp, 3432
	stptr.d	$a4, $sp, 3424
	stptr.d	$a6, $sp, 3416
	stptr.d	$a5, $sp, 3392
	stptr.d	$a6, $sp, 3384
	stptr.d	$zero, $sp, 3376
	stptr.d	$a4, $sp, 3368
	stptr.d	$a3, $sp, 3360
	stptr.d	$zero, $sp, 3336
	stptr.d	$zero, $sp, 3328
	stptr.d	$a1, $sp, 3312
	stptr.d	$a6, $sp, 3296
	stptr.d	$a1, $sp, 3280
	stptr.d	$a6, $sp, 3264
	stptr.d	$zero, $sp, 3256
	stptr.d	$a5, $sp, 3224
	stptr.d	$a4, $sp, 3208
	stptr.d	$a5, $sp, 3192
	stptr.d	$a1, $sp, 3184
	stptr.d	$a4, $sp, 3176
	stptr.d	$a6, $sp, 3168
	stptr.d	$zero, $sp, 3160
	stptr.d	$a3, $sp, 3144
	stptr.d	$a5, $sp, 3128
	stptr.d	$a3, $sp, 3120
	stptr.d	$a1, $sp, 3112
	stptr.d	$zero, $sp, 3104
	stptr.d	$a4, $sp, 3080
	stptr.d	$a5, $sp, 3072
	stptr.d	$a6, $sp, 3064
	stptr.d	$a6, $sp, 3032
	stptr.d	$a3, $sp, 3024
	stptr.d	$a5, $sp, 3016
	stptr.d	$a3, $sp, 3000
	stptr.d	$a3, $sp, 2992
	stptr.d	$zero, $sp, 2984
	stptr.d	$a6, $sp, 2976
	stptr.d	$a6, $sp, 2968
	stptr.d	$zero, $sp, 2960
	stptr.d	$a4, $sp, 2952
	stptr.d	$zero, $sp, 2944
	stptr.d	$a4, $sp, 2920
	stptr.d	$a1, $sp, 2896
	stptr.d	$a6, $sp, 2848
	stptr.d	$a5, $sp, 2824
	stptr.d	$zero, $sp, 2816
	stptr.d	$a1, $sp, 2800
	stptr.d	$a4, $sp, 2760
	stptr.d	$a3, $sp, 2752
	stptr.d	$zero, $sp, 2728
	stptr.d	$zero, $sp, 2712
	stptr.d	$a6, $sp, 2704
	stptr.d	$a5, $sp, 2688
	stptr.d	$a3, $sp, 2672
	stptr.d	$a6, $sp, 2664
	stptr.d	$a3, $sp, 2656
	stptr.d	$a3, $sp, 2648
	stptr.d	$a1, $sp, 2640
	stptr.d	$a3, $sp, 2632
	stptr.d	$a4, $sp, 2608
	stptr.d	$a1, $sp, 2600
	stptr.d	$a4, $sp, 2576
	stptr.d	$a5, $sp, 2552
	stptr.d	$a3, $sp, 2544
	stptr.d	$a4, $sp, 2528
	stptr.d	$a6, $sp, 2520
	stptr.d	$a1, $sp, 2512
	stptr.d	$a6, $sp, 2496
	stptr.d	$a4, $sp, 2488
	stptr.d	$zero, $sp, 2480
	stptr.d	$a1, $sp, 2456
	stptr.d	$a4, $sp, 2432
	stptr.d	$zero, $sp, 2424
	stptr.d	$a3, $sp, 2408
	stptr.d	$zero, $sp, 2400
	stptr.d	$a6, $sp, 2384
	stptr.d	$a4, $sp, 2368
	stptr.d	$a1, $sp, 2352
	stptr.d	$a4, $sp, 2328
	stptr.d	$a5, $sp, 2312
	stptr.d	$a3, $sp, 2304
	stptr.d	$zero, $sp, 2296
	stptr.d	$a5, $sp, 2288
	stptr.d	$a1, $sp, 2280
	stptr.d	$a5, $sp, 2272
	stptr.d	$a1, $sp, 2264
	stptr.d	$a6, $sp, 2248
	stptr.d	$a4, $sp, 2232
	stptr.d	$a1, $sp, 2224
	stptr.d	$a4, $sp, 2216
	stptr.d	$a4, $sp, 2208
	stptr.d	$a6, $sp, 2200
	stptr.d	$zero, $sp, 2168
	stptr.d	$a5, $sp, 2144
	stptr.d	$zero, $sp, 2136
	stptr.d	$a1, $sp, 2128
	stptr.d	$a5, $sp, 2112
	stptr.d	$a5, $sp, 2104
	stptr.d	$a3, $sp, 2096
	stptr.d	$a4, $sp, 2072
	stptr.d	$a6, $sp, 2056
	st.d	$zero, $sp, 2040
	st.d	$zero, $sp, 2032
	st.d	$a4, $sp, 2008
	st.d	$a4, $sp, 1992
	st.d	$zero, $sp, 1976
	st.d	$a5, $sp, 1968
	st.d	$a1, $sp, 1960
	st.d	$zero, $sp, 1952
	st.d	$zero, $sp, 1944
	st.d	$a6, $sp, 1936
	st.d	$a4, $sp, 1920
	st.d	$zero, $sp, 1912
	st.d	$a5, $sp, 1904
	st.d	$a6, $sp, 1896
	st.d	$a5, $sp, 1888
	st.d	$a6, $sp, 1880
	st.d	$a4, $sp, 1872
	st.d	$a3, $sp, 1864
	st.d	$a5, $sp, 1856
	st.d	$a4, $sp, 1848
	st.d	$zero, $sp, 1840
	st.d	$zero, $sp, 1832
	st.d	$a6, $sp, 1816
	st.d	$a6, $sp, 1800
	st.d	$a5, $sp, 1792
	st.d	$zero, $sp, 1784
	st.d	$a3, $sp, 1768
	st.d	$a5, $sp, 1760
	st.d	$a3, $sp, 1744
	st.d	$a4, $sp, 1736
	st.d	$a5, $sp, 1720
	st.d	$a4, $sp, 1704
	st.d	$a6, $sp, 1696
	st.d	$a3, $sp, 1664
	st.d	$a4, $sp, 1656
	st.d	$zero, $sp, 1640
	st.d	$zero, $sp, 1624
	st.d	$a4, $sp, 1616
	st.d	$a1, $sp, 1608
	st.d	$a4, $sp, 1584
	st.d	$a4, $sp, 1576
	st.d	$a6, $sp, 1528
	st.d	$a4, $sp, 1520
	st.d	$a3, $sp, 1512
	st.d	$a1, $sp, 1504
	st.d	$a5, $sp, 1496
	st.d	$a3, $sp, 1488
	st.d	$a4, $sp, 1480
	st.d	$a3, $sp, 1472
	st.d	$zero, $sp, 1456
	st.d	$a4, $sp, 1448
	st.d	$a4, $sp, 1440
	st.d	$zero, $sp, 1432
	st.d	$zero, $sp, 1408
	st.d	$a6, $sp, 1392
	st.d	$a1, $sp, 1384
	st.d	$a1, $sp, 1368
	st.d	$a6, $sp, 1360
	st.d	$a6, $sp, 1352
	st.d	$a6, $sp, 1328
	st.d	$a1, $sp, 1320
	st.d	$a3, $sp, 1312
	st.d	$a4, $sp, 1304
	st.d	$a4, $sp, 1296
	st.d	$a6, $sp, 1288
	st.d	$a6, $sp, 1264
	st.d	$a3, $sp, 1256
	st.d	$a4, $sp, 1248
	st.d	$a3, $sp, 1216
	st.d	$a3, $sp, 1208
	st.d	$zero, $sp, 1192
	st.d	$a5, $sp, 1184
	st.d	$a6, $sp, 1176
	st.d	$a3, $sp, 1160
	st.d	$a4, $sp, 1152
	st.d	$a5, $sp, 1144
	st.d	$zero, $sp, 1136
	st.d	$a4, $sp, 1128
	st.d	$a4, $sp, 1112
	st.d	$a3, $sp, 1104
	st.d	$a3, $sp, 1088
	st.d	$a5, $sp, 1072
	st.d	$a5, $sp, 1064
	st.d	$a6, $sp, 1056
	st.d	$a4, $sp, 1048
	st.d	$a4, $sp, 1032
	st.d	$a4, $sp, 1024
	st.d	$a5, $sp, 1008
	st.d	$a6, $sp, 1000
	st.d	$a6, $sp, 976
	st.d	$a1, $sp, 968
	st.d	$a5, $sp, 960
	st.d	$a3, $sp, 952
	st.d	$a4, $sp, 944
	st.d	$a5, $sp, 936
	st.d	$zero, $sp, 928
	st.d	$a4, $sp, 920
	st.d	$a3, $sp, 912
	st.d	$zero, $sp, 888
	st.d	$zero, $sp, 880
	st.d	$a3, $sp, 872
	st.d	$a3, $sp, 864
	st.d	$a4, $sp, 856
	st.d	$a6, $sp, 848
	st.d	$a4, $sp, 816
	st.d	$a3, $sp, 808
	st.d	$a6, $sp, 792
	st.d	$a3, $sp, 784
	st.d	$a5, $sp, 752
	st.d	$zero, $sp, 736
	st.d	$zero, $sp, 720
	st.d	$a5, $sp, 712
	st.d	$zero, $sp, 696
	st.d	$a5, $sp, 688
	st.d	$a5, $sp, 672
	st.d	$a6, $sp, 664
	st.d	$a5, $sp, 656
	st.d	$a3, $sp, 648
	st.d	$a3, $sp, 632
	st.d	$a4, $sp, 624
	st.d	$a1, $sp, 616
	st.d	$a1, $sp, 608
	st.d	$a6, $sp, 600
	st.d	$zero, $sp, 576
	st.d	$a4, $sp, 560
	st.d	$a5, $sp, 536
	st.d	$a6, $sp, 528
	st.d	$zero, $sp, 520
	st.d	$a5, $sp, 512
	st.d	$zero, $sp, 504
	st.d	$a4, $sp, 448
	st.d	$a5, $sp, 440
	st.d	$a4, $sp, 432
	st.d	$a5, $sp, 408
	st.d	$zero, $sp, 400
	st.d	$a6, $sp, 376
	st.d	$zero, $sp, 360
	st.d	$a3, $sp, 352
	st.d	$a4, $sp, 320
	st.d	$a5, $sp, 296
	st.d	$a5, $sp, 288
	st.d	$zero, $sp, 272
	st.d	$a5, $sp, 256
	st.d	$a1, $sp, 240
	st.d	$a4, $sp, 216
	st.d	$a5, $sp, 208
	st.d	$a1, $sp, 184
	st.d	$a5, $sp, 168
	st.d	$a5, $sp, 160
	st.d	$a4, $sp, 152
	st.d	$a3, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$a4, $sp, 128
	st.d	$a5, $sp, 120
	st.d	$a4, $sp, 96
	st.d	$a3, $sp, 88
	st.d	$zero, $sp, 80
	st.d	$a5, $sp, 72
	st.d	$a4, $sp, 48
	st.d	$a1, $sp, 32
	st.d	$a6, $sp, 8
	move	$a0, $zero
	move	$a2, $a1
	move	$a7, $zero
	bl	.Lfunc$local
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1296
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.size	.Lmain$local, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
