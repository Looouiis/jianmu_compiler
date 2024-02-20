.data
.LC0:
        .word   0x00000000
.LC1:
        .word   0x4121999a
.LC2:
        .word   0x4131c28f
.LC3:
        .word   0x3f8ccccd
.LC4:
        .word   0x3f8ccccd
.LC5:
        .word   0x3f8ccccd
.LC6:
        .word   0x3f8ccccd
.LC7:
        .word   0x3f8ccccd
.LC8:
        .word   0x3f8ccccd
.LC9:
        .word   0x3f8ccccd
.LC10:
        .word   0x3f8ccccd
.LC11:
        .word   0x400ccccd
.LC12:
        .word   0x3f8ccccd
.LC13:
        .word   0x4131c28f
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
        addi.d $r3 , $r3 , -100
        st.d $r1 , $r3 ,92
        st.d $r22 , $r3 ,84
        addi.d $r22 , $r3 , 100
        add.d $r17 , $r4 , $r0 
        st.w $r17 , $r22 ,-88
        add.d $r17 , $r5 , $r0 
        st.w $r17 , $r22 ,-80
        add.d $r17 , $r6 , $r0 
        st.w $r17 , $r22 ,-76
        add.d $r13 , $r7 , $r0 
        st.w $r13 , $r22 ,-88
        add.d $r17 , $r8 , $r0 
        st.w $r17 , $r22 ,-72
        add.d $r17 , $r9 , $r0 
        st.w $r17 , $r22 ,-64
        add.d $r17 , $r10 , $r0 
        st.w $r17 , $r22 ,-60
        add.d $r17 , $r11 , $r0 
        st.w $r17 , $r22 ,-56
        ldptr.d $r12 , $r22 ,0
        ld.d $r14 , $r22 ,8
        b .L1
.L1:
        st.w $r17 , $r22 ,-52
        ld.w $r18 , $r22 ,-80
        st.w $r18 , $r22 ,-48
        ld.w $r19 , $r22 ,-76
        st.w $r19 , $r22 ,-44
        st.w $r13 , $r22 ,-40
        ld.w $r18 , $r22 ,-72
        st.w $r18 , $r22 ,-36
        ld.w $r19 , $r22 ,-64
        st.w $r19 , $r22 ,-32
        ld.w $r18 , $r22 ,-60
        st.w $r18 , $r22 ,-28
        ld.w $r19 , $r22 ,-56
        st.w $r19 , $r22 ,-24
        st.w $r12 , $r22 ,-20
        ldptr.w $r12 , $r22 ,-20
        addi.w $r15 , $r12 , 0
        addi.w $r13 , $r15 , 0
        st.w $r13 , $r22 ,-88
        b .L2
.L2:
        or $r4 , $r13 , $r0 
        ld.d $r22 , $r3 ,84
        ld.d $r1 , $r3 ,92
        addi.d $r3 , $r3 , 100
        jr      $ra
.L3:
        addi.w $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r13 , $r15 , 0
        st.w $r13 , $r22 ,-88
        b .L2
tstfloat :
.entry_tstfloat:
        addi.d $r3 , $r3 , -192
        st.d $r1 , $r3 ,184
        st.d $r22 , $r3 ,176
        addi.d $r22 , $r3 , 192
        add.d $r17 , $r4 , $r0 
        st.w $r17 , $r22 ,-136
        add.d $r17 , $r5 , $r0 
        st.w $r17 , $r22 ,-140
        add.d $r17 , $r6 , $r0 
        st.w $r17 , $r22 ,-156
        add.d $r17 , $r7 , $r0 
        st.w $r17 , $r22 ,-152
        add.d $r13 , $r8 , $r0 
        st.w $r13 , $r22 ,-136
        add.d $r12 , $r9 , $r0 
        add.d $r17 , $r10 , $r0 
        st.w $r17 , $r22 ,-92
        add.d $r17 , $r11 , $r0 
        st.w $r17 , $r22 ,-168
        fmov.s $f17 , $f0 
        fst.s $f17 , $r22 ,-180
        fmov.s $f17 , $f1 
        fst.s $f17 , $r22 ,-160
        fmov.s $f17 , $f2 
        fst.s $f17 , $r22 ,-124
        fmov.s $f17 , $f3 
        fst.s $f17 , $r22 ,-172
        fmov.s $f17 , $f4 
        fst.s $f17 , $r22 ,-184
        fmov.s $f17 , $f5 
        fst.s $f17 , $r22 ,-116
        fmov.s $f17 , $f6 
        fst.s $f17 , $r22 ,-112
        fmov.s $f17 , $f7 
        fst.s $f17 , $r22 ,-108
        fld.s $f17 , $r22 ,0
        fst.s $f17 , $r22 ,-100
        fld.s $f17 , $r22 ,8
        fst.s $f17 , $r22 ,-96
        ld.d $r17 , $r22 ,16
        st.d $r17 , $r22 ,-148
.L5:
        ld.w $r18 , $r22 ,-136
        st.w $r18 , $r22 ,-88
        ld.w $r19 , $r22 ,-140
        st.w $r19 , $r22 ,-84
        ld.w $r18 , $r22 ,-156
        st.w $r18 , $r22 ,-80
        ld.w $r19 , $r22 ,-152
        st.w $r19 , $r22 ,-76
        st.w $r13 , $r22 ,-72
        st.w $r12 , $r22 ,-68
        ld.w $r18 , $r22 ,-92
        st.w $r18 , $r22 ,-64
        ld.w $r19 , $r22 ,-168
        st.w $r19 , $r22 ,-60
        fld.s $f18 , $r22 ,-180
        fst.s $f18 , $r22 ,-56
        fld.s $f19 , $r22 ,-160
        fst.s $f19 , $r22 ,-52
        fld.s $f18 , $r22 ,-124
        fst.s $f18 , $r22 ,-48
        fld.s $f19 , $r22 ,-172
        fst.s $f19 , $r22 ,-44
        fld.s $f18 , $r22 ,-184
        fst.s $f18 , $r22 ,-40
        fld.s $f19 , $r22 ,-116
        fst.s $f19 , $r22 ,-36
        fld.s $f18 , $r22 ,-112
        fst.s $f18 , $r22 ,-32
        fld.s $f19 , $r22 ,-108
        fst.s $f19 , $r22 ,-28
        fld.s $f18 , $r22 ,-100
        fst.s $f18 , $r22 ,-24
        fld.s $f19 , $r22 ,-96
        fst.s $f19 , $r22 ,-20
        add.d $r12 , $r17 , $r0 
        addi.w $r15 , $r0, 1
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        fld.s $f8 , $r12 ,0
        fmov.s $f15 , $f8 
        fmov.s $f9 , $f15 
        st.w $f9 , $r22 ,-136
        b .L6
.L6:
        fmov.s $f0 , $f9 
        ld.d $r22 , $r3 ,176
        ld.d $r1 , $r3 ,184
        addi.d $r3 , $r3 , 192
        jr      $ra
.L7:
        la.local $r16 , .LC0
        fld.s $f16 , $r16 ,0
        fmov.s $f15 , $f16 
        fmov.s $f9 , $f15 
        st.w $f9 , $r22 ,-136
        b .L6
main :
.entry_main:
        addi.d $r3 , $r3 , -68
        st.d $r1 , $r3 ,60
        st.d $r22 , $r3 ,52
        addi.d $r22 , $r3 , 68
.L9:
        addi.d $r13 , $r22 , -40
        addi.w $r16 , $r0, 0
        slli.d $r16 , $r16 , 2
        add.d $r13 , $r13 , $r16 
        addi.w $r15 , $r0, 10
        st.w $r15 , $r13 ,0
        addi.d $r13 , $r22 , -40
        addi.w $r15 , $r0, 1
        slli.d $r15 , $r15 , 2
        add.d $r13 , $r13 , $r15 
        addi.w $r15 , $r0, 11
        st.w $r15 , $r13 ,0
        addi.d $r13 , $r22 , -40
        addi.w $r15 , $r0, 1
        add.d $r4 , $r15 , $r0 
        addi.w $r15 , $r0, 2
        add.d $r5 , $r15 , $r0 
        addi.w $r15 , $r0, 3
        add.d $r6 , $r15 , $r0 
        addi.w $r15 , $r0, 4
        add.d $r7 , $r15 , $r0 
        addi.w $r15 , $r0, 5
        add.d $r8 , $r15 , $r0 
        addi.w $r15 , $r0, 6
        add.d $r9 , $r15 , $r0 
        addi.w $r15 , $r0, 7
        add.d $r10 , $r15 , $r0 
        addi.w $r15 , $r0, 8
        add.d $r11 , $r15 , $r0 
        addi.w $r15 , $r0, 9
        stptr.d $r15 , $r3 ,0
        st.d $r13 , $r3 ,8
        bl getf
        add.d $r12 , $r4 , $r0 
        st.w $r12 , $r22 ,-32
        addi.d $r12 , $r22 , -28
        addi.w $r15 , $r0, 0
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        la.local $r15 , .LC1
        fld.s $f15 , $r15 ,0
        fst.s $f15 , $r12 ,0
        addi.d $r12 , $r22 , -28
        addi.w $r15 , $r0, 1
        slli.d $r15 , $r15 , 2
        add.d $r12 , $r12 , $r15 
        la.local $r15 , .LC2
        fld.s $f15 , $r15 ,0
        fst.s $f15 , $r12 ,0
        addi.d $r12 , $r22 , -28
        addi.w $r15 , $r0, 1
        add.d $r4 , $r15 , $r0 
        addi.w $r15 , $r0, 2
        add.d $r5 , $r15 , $r0 
        addi.w $r15 , $r0, 3
        add.d $r6 , $r15 , $r0 
        addi.w $r15 , $r0, 4
        add.d $r7 , $r15 , $r0 
        addi.w $r15 , $r0, 5
        add.d $r8 , $r15 , $r0 
        addi.w $r15 , $r0, 6
        add.d $r9 , $r15 , $r0 
        addi.w $r15 , $r0, 7
        add.d $r10 , $r15 , $r0 
        addi.w $r15 , $r0, 8
        add.d $r11 , $r15 , $r0 
        la.local $r15 , .LC3
        fld.s $f15 , $r15 ,0
        fmov.s $f0 , $f15 
        la.local $r15 , .LC4
        fld.s $f15 , $r15 ,0
        fmov.s $f1 , $f15 
        la.local $r15 , .LC5
        fld.s $f15 , $r15 ,0
        fmov.s $f2 , $f15 
        la.local $r15 , .LC6
        fld.s $f15 , $r15 ,0
        fmov.s $f3 , $f15 
        la.local $r15 , .LC7
        fld.s $f15 , $r15 ,0
        fmov.s $f4 , $f15 
        la.local $r15 , .LC8
        fld.s $f15 , $r15 ,0
        fmov.s $f5 , $f15 
        la.local $r15 , .LC9
        fld.s $f15 , $r15 ,0
        fmov.s $f6 , $f15 
        la.local $r15 , .LC10
        fld.s $f15 , $r15 ,0
        fmov.s $f7 , $f15 
        la.local $r15 , .LC11
        fld.s $f15 , $r15 ,0
        fst.s $f15 , $r3 ,0
        la.local $r15 , .LC12
        fld.s $f15 , $r15 ,0
        fst.s $f15 , $r3 ,8
        st.d $r12 , $r3 ,16
        bl tstfloat
        fmov.s $f8 , $f0 
        fst.s $f8 , $r22 ,-20
        ldptr.w $r12 , $r22 ,-32
        addi.w $r16 , $r0, 10
        sub.w $r12 , $r12 , $r16 
        sltui $r12 , $r12 , 1
        bnez $r12 , .L12
        b .L11
.L10:
        or $r4 , $r12 , $r0 
        ld.d $r22 , $r3 ,52
        ld.d $r1 , $r3 ,60
        addi.d $r3 , $r3 , 68
        jr      $ra
.L11:
        fld.s $f8 , $r22 ,-20
        la.local $r16 , .LC13
        fld.s $f16 , $r16 ,0
        fcmp.ceq.s $fcc0 , $f8 , $f16 
        bcnez $fcc0 , .L16
        b .L15
.L12:
        addi.w $r16 , $r0, 1
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L10
.L13:
.L14:
        b .L11
.L15:
        addi.w $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L10
.L16:
        addi.w $r16 , $r0, 2
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L10
.L17:
.L18:
        b .L15
.L19:
        addi.w $r16 , $r0, 0
        add.w $r15 , $r16 , $r0 
        addi.w $r12 , $r15 , 0
        b .L10
int getf(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j[]) {
    return i;
}

float tstfloat(int ia, int ib, int ic, int id, int ie, int iif, int ig, int ih, float a, float b, float c, float d, float e, float f, float g, float h, float i, float j, float k[]) {
    return k[1];
}

int main() {
    int b[2] = {10, 11};
    int a = getf(1, 2, 3, 4, 5, 6, 7, 8, 9, b);
    float fb[2] = {10.10, 11.11};
    float c = tstfloat(1, 2, 3, 4, 5, 6, 7, 8, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 2.2, 1.1, fb);
    if(a == 10) {
        return 1;
    }
    if(c == 11.11) {
        return 2;
    }
    return 0;
}
