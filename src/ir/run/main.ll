.data
.LC0:
        .word   0x00000000
.LC1:
        .word   0x3f800000
.LC2:
        .word   0x3f99999a
.LC3:
        .word   0x3f800000
.text
.globl main
.extern getint
.extern getch
.extern getarray
.extern getfloat
.extern getfarray
.extern putint
.extern putch
.extern putarray
.extern putfloat
.extern putfarray
.extern putf
getf :
.entry_getf:
        addi.d $r3 , $r3 , -24
        st.d $r1 , $r3 ,16
        st.d $r22 , $r3 ,8
        addi.d $r22 , $r3 , 24
        add.d $r12 , $r4 , $r0 
        fmov.s $f8 , $f0 
        b .L1
.L1:
        st.w $r12 , $r22 ,-24
        fst.s $f8 , $r22 ,-20
        fld.s $f9 , $r22 ,-20
        fmov.s $f15 , $f9 
        fmov.s $f8 , $f15 
        b .L2
.L2:
        fmov.s $f0 , $f8 
        ld.d $r22 , $r3 ,8
        ld.d $r1 , $r3 ,16
        addi.d $r3 , $r3 , 24
        jr      $ra
.L3:
        la.local $r16 , .LC0
        fld.s $f16 , $r16 ,0
        fmov.s $f15 , $f16 
        fmov.s $f8 , $f15 
        b .L2
main :
.entry_main:
        addi.d $r3 , $r3 , -60
        st.d $r1 , $r3 ,52
        st.d $r22 , $r3 ,44
        addi.d $r22 , $r3 , 60
.L5:
        addi.w $r15 , $r0, 1
        st.w $r15 , $r22 ,-36
        addi.w $r15 , $r0, 1
        add.d $r4 , $r15 , $r0 
        la.local $r15 , .LC1
        fld.s $f15 , $r15 ,0
        fmov.s $f0 , $f15 
        bl getf
        fmov.s $f9 , $f0 
        fst.s $f9 , $r22 ,-60
        la.local $r15 , .LC2
        fld.s $f15 , $r15 ,0
        fst.s $f15 , $r22 ,-56
        fld.s $f17 , $r22 ,-56
        fst.s $f17 , $r22 ,-56
        fld.s $f18 , $r22 ,-56
        fneg.s $f17 , $f18 
        fst.s $f17 , $r22 ,-60
        fld.s $f19 , $r22 ,-60
        fst.s $f19 , $r22 ,-24
        fld.s $f9 , $r22 ,-60
        fld.s $f10 , $r22 ,-56
        fdiv.s $f9 , $f9 , $f10 
        fst.s $f9 , $r22 ,-20
        fld.s $f8 , $r22 ,-60
        la.local $r16 , .LC3
        fld.s $f16 , $r16 ,0
        fcmp.ceq.s $fcc0 , $f8 , $f16 
        bcnez $fcc0 , .L8
        b .L7
.L6:
        or $r4 , $r12 , $r0 
        ld.d $r22 , $r3 ,44
        ld.d $r1 , $r3 ,52
        addi.d $r3 , $r3 , 60
        jr      $ra
.L7:
        addi.w $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L6
.L8:
        addi.w $r16 , $r0, 1
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L6
.L9:
.L10:
        b .L7
.L11:
        addi.w $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L6