.data
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
main :
.entry_main:
        addi.d $r3 , $r3 , -92
        st.d $r1 , $r3 ,84
        st.d $r22 , $r3 ,76
        addi.d $r22 , $r3 , 92
        b .L1
.L1:
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 1
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 1
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 2
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 3
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 1
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 0
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 2
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 5
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 2
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 1
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 0
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 3
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 1
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 3
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 1
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 8
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -80
        addi.w $r15 , $r0, 2
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 1
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        ldptr.w $r12 , $r12 ,0
        addi.d $r17 , $r22 , -48
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r17 , $r17 , $r15 
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r17 , $r17 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r17 , $r17 , $r16 
        st.d $r17 , $r22 ,-92
        ld.d $r18 , $r22 ,-92
        st.w $r12 , $r18 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 1
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 3
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 4
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 2
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 5
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 2
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 6
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 3
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 7
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 3
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        addi.w $r15 , $r0, 8
        st.w $r15 , $r12 ,0
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 3
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        ldptr.w $r12 , $r12 ,0
        addi.d $r14 , $r22 , -48
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r14 , $r14 , $r15 
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r14 , $r14 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r14 , $r14 , $r16 
        ldptr.w $r14 , $r14 ,0
        add.w $r14 , $r12 , $r14 
        addi.d $r12 , $r22 , -48
        addi.w $r15 , $r0, 0
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r15 , $r0, 1
        addi.w $r16 , $r0, 1
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r12 , $r12 , $r16 
        ldptr.w $r12 , $r12 ,0
        add.w $r12 , $r14 , $r12 
        addi.d $r14 , $r22 , -80
        addi.w $r15 , $r0, 3
        addi.w $r16 , $r0, 2
        mul.d $r15 , $r15 , $r16 
        slli.d $r15 , $r15 , 2
        add.d $r14 , $r14 , $r15 
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r14 , $r14 , $r16 
        ldptr.w $r13 , $r14 ,0
        add.w $r12 , $r12 , $r13 
        addi.w $r15 , $r12 , 0
        addi.w $r13 , $r15 , 0
        b .L2
.L2:
        or $r4 , $r13 , $r0 
        ld.d $r22 , $r3 ,76
        ld.d $r1 , $r3 ,84
        addi.d $r3 , $r3 , 92
        jr      $ra
.L3:
        addi.w $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r13 , $r15 , 0
        b .L2