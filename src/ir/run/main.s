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
        addi.d $r3 , $r3 , -64
        st.d $r1 , $r3 ,56
        st.d $r22 , $r3 ,48
        addi.d $r22 , $r3 , 64
        b .L1
.L1:
        ori $r15 , $r0, 0
        lu12i.w $r20 , -24>>12
        ori $r20 , $r20 , 4072
        add.d $r20 , $r22 , $r20 
        st.w $r15 , $r20 , 0
        lu12i.w $r20 , -24>>12
        ori $r20 , $r20 , 4072
        add.d $r20 , $r22 , $r20 
        ldptr.w $r17 , $r20 , 0
        lu12i.w $r20 , -44>>12
        ori $r20 , $r20 , 4052
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -44>>12
        ori $r20 , $r20 , 4052
        add.d $r20 , $r22 , $r20 
        ld.w $r18 , $r20 , 0
        lu12i.w $r20 , -20>>12
        ori $r20 , $r20 , 4076
        add.d $r20 , $r22 , $r20 
        st.w $r18 , $r20 , 0
        lu12i.w $r20 , -24>>12
        ori $r20 , $r20 , 4072
        add.d $r20 , $r22 , $r20 
        ldptr.w $r17 , $r20 , 0
        lu12i.w $r20 , -32>>12
        ori $r20 , $r20 , 4064
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -32>>12
        ori $r20 , $r20 , 4064
        add.d $r20 , $r22 , $r20 
        ld.w $r19 , $r20 , 0
        ori $r16 , $r0, 1
        add.w $r17 , $r19 , $r16 
        lu12i.w $r20 , -48>>12
        ori $r20 , $r20 , 4048
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -48>>12
        ori $r20 , $r20 , 4048
        add.d $r20 , $r22 , $r20 
        ld.w $r18 , $r20 , 0
        lu12i.w $r20 , -24>>12
        ori $r20 , $r20 , 4072
        add.d $r20 , $r22 , $r20 
        st.w $r18 , $r20 , 0
        lu12i.w $r20 , -20>>12
        ori $r20 , $r20 , 4076
        add.d $r20 , $r22 , $r20 
        ldptr.w $r17 , $r20 , 0
        lu12i.w $r20 , -52>>12
        ori $r20 , $r20 , 4044
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -24>>12
        ori $r20 , $r20 , 4072
        add.d $r20 , $r22 , $r20 
        ldptr.w $r17 , $r20 , 0
        lu12i.w $r20 , -56>>12
        ori $r20 , $r20 , 4040
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -52>>12
        ori $r20 , $r20 , 4044
        add.d $r20 , $r22 , $r20 
        ld.w $r19 , $r20 , 0
        lu12i.w $r20 , -56>>12
        ori $r20 , $r20 , 4040
        add.d $r20 , $r22 , $r20 
        ld.w $r18 , $r20 , 0
        add.w $r17 , $r19 , $r18 
        lu12i.w $r20 , -60>>12
        ori $r20 , $r20 , 4036
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -60>>12
        ori $r20 , $r20 , 4036
        add.d $r20 , $r22 , $r20 
        ld.w $r19 , $r20 , 0
        lu12i.w $r20 , -20>>12
        ori $r20 , $r20 , 4076
        add.d $r20 , $r22 , $r20 
        st.w $r19 , $r20 , 0
        lu12i.w $r20 , -20>>12
        ori $r20 , $r20 , 4076
        add.d $r20 , $r22 , $r20 
        ldptr.w $r17 , $r20 , 0
        lu12i.w $r20 , -40>>12
        ori $r20 , $r20 , 4056
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        lu12i.w $r20 , -40>>12
        ori $r20 , $r20 , 4056
        add.d $r20 , $r22 , $r20 
        ld.w $r19 , $r20 , 0
        addi.w $r15 , $r19 , 0
        addi.w $r17 , $r15 , 0
        lu12i.w $r20 , -64>>12
        ori $r20 , $r20 , 4032
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        b .L2
.L2:
        lu12i.w $r20 , -64>>12
        ori $r20 , $r20 , 4032
        add.d $r20 , $r22 , $r20 
        ld.w $r18 , $r20 , 0
        or $r4 , $r18 , $r0 
        ld.d $r22 , $r3 ,48
        ld.d $r1 , $r3 ,56
        addi.d $r3 , $r3 , 64
        jr      $ra
.L3:
        ori $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r17 , $r15 , 0
        lu12i.w $r20 , -64>>12
        ori $r20 , $r20 , 4032
        add.d $r20 , $r22 , $r20 
        st.w $r17 , $r20 , 0
        b .L2