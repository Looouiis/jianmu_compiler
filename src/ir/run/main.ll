.data
g0:
	.space	4
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
swap :
.entry_swap:
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r3 , $r3 , $r20 
	st.d $r1 , $r3 ,24
	st.d $r22 , $r3 ,16
	addi.d $r22 , $r3 , 32
	add.d $r14 , $r4 , $r0 
	add.d $r12 , $r5 , $r0 
	add.d $r13 , $r6 , $r0 
	b .L1
.L1:
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	st.w $r12 , $r20 , 0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	st.w $r13 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	add.d $r12 , $r14 , $r0 
	slli.d $r13 , $r13 , 2
	add.d $r12 , $r12 , $r13 
	ldptr.w $r12 , $r12 ,0
	lu12i.w $r20 , -24>>12
	ori $r20 , $r20 , 4072
	add.d $r20 , $r22 , $r20 
	st.w $r12 , $r20 , 0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	add.d $r12 , $r14 , $r0 
	slli.d $r13 , $r13 , 2
	add.d $r12 , $r12 , $r13 
	ldptr.w $r12 , $r12 ,0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	add.d $r6 , $r14 , $r0 
	slli.d $r13 , $r13 , 2
	add.d $r6 , $r6 , $r13 
	st.w $r12 , $r6 ,0
	lu12i.w $r20 , -24>>12
	ori $r20 , $r20 , 4072
	add.d $r20 , $r22 , $r20 
	ldptr.w $r12 , $r20 , 0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	add.d $r5 , $r14 , $r0 
	slli.d $r13 , $r13 , 2
	add.d $r5 , $r5 , $r13 
	st.w $r12 , $r5 ,0
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L2
.L2:
	or $r4 , $r12 , $r0 
	ld.d $r22 , $r3 ,16
	ld.d $r1 , $r3 ,24
	addi.d $r3 , $r3 , 32
	jr	$ra
.L3:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L2
heap_ajust :
.entry_heap_ajust:
	lu12i.w $r20 , -160>>12
	ori $r20 , $r20 , 3936
	add.d $r3 , $r3 , $r20 
	st.d $r1 , $r3 ,152
	st.d $r22 , $r3 ,144
	addi.d $r22 , $r3 , 160
	add.d $r12 , $r4 , $r0 
	add.d $r17 , $r5 , $r0 
	lu12i.w $r20 , -84>>12
	ori $r20 , $r20 , 4012
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	add.d $r17 , $r6 , $r0 
	lu12i.w $r20 , -92>>12
	ori $r20 , $r20 , 4004
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
.L5:
	lu12i.w $r20 , -84>>12
	ori $r20 , $r20 , 4012
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	st.w $r18 , $r20 , 0
	lu12i.w $r20 , -92>>12
	ori $r20 , $r20 , 4004
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	st.w $r19 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	st.w $r13 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r16 , $r0, 2
	mul.w $r13 , $r13 , $r16 
	ori $r16 , $r0, 1
	add.w $r13 , $r13 , $r16 
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	st.w $r13 , $r20 , 0
	b .L7
.L6:
	or $r4 , $r12 , $r0 
	ld.d $r22 , $r3 ,144
	ld.d $r1 , $r3 ,152
	addi.d $r3 , $r3 , 160
	jr	$ra
.L7:
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r14 , $r20 , 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r16 , $r0, 1
	add.w $r13 , $r13 , $r16 
	slt $r17 , $r14 , $r13 
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	bnez $r18 , .L9
	b .L8
.L8:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L6
.L9:
	b .L10
.L10:
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -52>>12
	ori $r20 , $r20 , 4044
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -48>>12
	ori $r20 , $r20 , 4048
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -52>>12
	ori $r20 , $r20 , 4044
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	lu12i.w $r20 , -48>>12
	ori $r20 , $r20 , 4048
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	slt $r9 , $r19 , $r18 
	bnez $r9 , .L11
	b .L13
.L11:
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	add.d $r10 , $r12 , $r0 
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	slli.d $r19 , $r19 , 2
	add.d $r10 , $r10 , $r19 
	ldptr.w $r8 , $r10 ,0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -72>>12
	ori $r20 , $r20 , 4024
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -72>>12
	ori $r20 , $r20 , 4024
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	ori $r16 , $r0, 1
	add.w $r7 , $r18 , $r16 
	add.d $r5 , $r12 , $r0 
	slli.d $r7 , $r7 , 2
	add.d $r5 , $r5 , $r7 
	ldptr.w $r17 , $r5 ,0
	lu12i.w $r20 , -56>>12
	ori $r20 , $r20 , 4040
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -56>>12
	ori $r20 , $r20 , 4040
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	slt $r17 , $r8 , $r19 
	lu12i.w $r20 , -108>>12
	ori $r20 , $r20 , 3988
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -108>>12
	ori $r20 , $r20 , 3988
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	bnez $r18 , .L12
	b .L13
.L12:
	ori $r15 , $r0, 1
	lu12i.w $r20 , -24>>12
	ori $r20 , $r20 , 4072
	add.d $r20 , $r22 , $r20 
	st.w $r15 , $r20 , 0
	b .L14
.L13:
	ori $r15 , $r0, 0
	lu12i.w $r20 , -24>>12
	ori $r20 , $r20 , 4072
	add.d $r20 , $r22 , $r20 
	st.w $r15 , $r20 , 0
	b .L14
.L14:
	lu12i.w $r20 , -24>>12
	ori $r20 , $r20 , 4072
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	bnez $r13 , .L16
	b .L15
.L15:
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -128>>12
	ori $r20 , $r20 , 3968
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	add.d $r17 , $r12 , $r0 
	lu12i.w $r20 , -128>>12
	ori $r20 , $r20 , 3968
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	slli.d $r19 , $r19 , 2
	add.d $r17 , $r17 , $r19 
	lu12i.w $r20 , -124>>12
	ori $r20 , $r20 , 3972
	add.d $r20 , $r22 , $r20 
	st.d $r17 , $r20 , 0
	lu12i.w $r20 , -124>>12
	ori $r20 , $r20 , 3972
	add.d $r20 , $r22 , $r20 
	ld.d $r18 , $r20 , 0
	ldptr.w $r11 , $r18 ,0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -132>>12
	ori $r20 , $r20 , 3964
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	add.d $r17 , $r12 , $r0 
	lu12i.w $r20 , -132>>12
	ori $r20 , $r20 , 3964
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	slli.d $r19 , $r19 , 2
	add.d $r17 , $r17 , $r19 
	lu12i.w $r20 , -140>>12
	ori $r20 , $r20 , 3956
	add.d $r20 , $r22 , $r20 
	st.d $r17 , $r20 , 0
	lu12i.w $r20 , -140>>12
	ori $r20 , $r20 , 3956
	add.d $r20 , $r22 , $r20 
	ld.d $r18 , $r20 , 0
	ldptr.w $r17 , $r18 ,0
	lu12i.w $r20 , -60>>12
	ori $r20 , $r20 , 4036
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -60>>12
	ori $r20 , $r20 , 4036
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	slt $r17 , $r19 , $r11 
	lu12i.w $r20 , -112>>12
	ori $r20 , $r20 , 3984
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -112>>12
	ori $r20 , $r20 , 3984
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	bnez $r18 , .L19
	b .L20
.L16:
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -144>>12
	ori $r20 , $r20 , 3952
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -144>>12
	ori $r20 , $r20 , 3952
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	ori $r16 , $r0, 1
	add.w $r14 , $r19 , $r16 
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	st.w $r14 , $r20 , 0
	b .L15
.L17:
.L18:
	b .L7
.L19:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L6
.L20:
	add.d $r17 , $r12 , $r0 
	lu12i.w $r20 , -152>>12
	ori $r20 , $r20 , 3944
	add.d $r20 , $r22 , $r20 
	st.d $r17 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -100>>12
	ori $r20 , $r20 , 3996
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -156>>12
	ori $r20 , $r20 , 3940
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	lu12i.w $r20 , -152>>12
	ori $r20 , $r20 , 3944
	add.d $r20 , $r22 , $r20 
	ld.d $r18 , $r20 , 0
	add.d $r4 , $r18 , $r0 
	lu12i.w $r20 , -100>>12
	ori $r20 , $r20 , 3996
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	add.d $r5 , $r19 , $r0 
	lu12i.w $r20 , -156>>12
	ori $r20 , $r20 , 3940
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	add.d $r6 , $r18 , $r0 
	bl swap
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	add.d $r17 , $r4 , $r0 
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	st.w $r19 , $r20 , 0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -64>>12
	ori $r20 , $r20 , 4032
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -64>>12
	ori $r20 , $r20 , 4032
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	st.w $r18 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -88>>12
	ori $r20 , $r20 , 4008
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -88>>12
	ori $r20 , $r20 , 4008
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	ori $r16 , $r0, 2
	mul.w $r17 , $r19 , $r16 
	lu12i.w $r20 , -160>>12
	ori $r20 , $r20 , 3936
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -160>>12
	ori $r20 , $r20 , 3936
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	ori $r16 , $r0, 1
	add.w $r17 , $r18 , $r16 
	lu12i.w $r20 , -104>>12
	ori $r20 , $r20 , 3992
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -104>>12
	ori $r20 , $r20 , 3992
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	lu12i.w $r20 , -28>>12
	ori $r20 , $r20 , 4068
	add.d $r20 , $r22 , $r20 
	st.w $r19 , $r20 , 0
	b .L18
.L21:
.L22:
	b .L18
.L23:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L6
heap_sort :
.entry_heap_sort:
	lu12i.w $r20 , -96>>12
	ori $r20 , $r20 , 4000
	add.d $r3 , $r3 , $r20 
	st.d $r1 , $r3 ,88
	st.d $r22 , $r3 ,80
	addi.d $r22 , $r3 , 96
	add.d $r12 , $r4 , $r0 
	add.d $r17 , $r5 , $r0 
	lu12i.w $r20 , -56>>12
	ori $r20 , $r20 , 4040
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
.L25:
	lu12i.w $r20 , -56>>12
	ori $r20 , $r20 , 4040
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	lu12i.w $r20 , -48>>12
	ori $r20 , $r20 , 4048
	add.d $r20 , $r22 , $r20 
	st.w $r18 , $r20 , 0
	lu12i.w $r20 , -48>>12
	ori $r20 , $r20 , 4048
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r16 , $r0, 2
	div.w $r13 , $r13 , $r16 
	ori $r16 , $r0, 1
	sub.w $r13 , $r13 , $r16 
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	st.w $r13 , $r20 , 0
	b .L27
.L26:
	or $r4 , $r12 , $r0 
	ld.d $r22 , $r3 ,80
	ld.d $r1 , $r3 ,88
	addi.d $r3 , $r3 , 96
	jr	$ra
.L27:
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r15 , $r0, 1
	lu12i.w $r16 , -1>>12
	ori $r16 , $r16 , 4095
	mul.w $r14 , $r15 , $r16 
	slt $r14 , $r14 , $r13 
	bnez $r14 , .L29
	b .L28
.L28:
	lu12i.w $r20 , -48>>12
	ori $r20 , $r20 , 4048
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r16 , $r0, 1
	sub.w $r13 , $r13 , $r16 
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	st.w $r13 , $r20 , 0
	b .L30
.L29:
	lu12i.w $r20 , -48>>12
	ori $r20 , $r20 , 4048
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -52>>12
	ori $r20 , $r20 , 4044
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -52>>12
	ori $r20 , $r20 , 4044
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	ori $r16 , $r0, 1
	sub.w $r17 , $r19 , $r16 
	lu12i.w $r20 , -60>>12
	ori $r20 , $r20 , 4036
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -60>>12
	ori $r20 , $r20 , 4036
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	st.w $r18 , $r20 , 0
	add.d $r6 , $r12 , $r0 
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r11 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	ldptr.w $r9 , $r20 , 0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	ld.d $r4 , $r3 ,8
	ld.d $r5 , $r3 ,48
	ld.d $r6 , $r3 ,32
	bl heap_ajust
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	add.d $r13 , $r4 , $r0 
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	st.w $r13 , $r20 , 0
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -64>>12
	ori $r20 , $r20 , 4032
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -64>>12
	ori $r20 , $r20 , 4032
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	ori $r16 , $r0, 1
	sub.w $r5 , $r19 , $r16 
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	st.w $r5 , $r20 , 0
	b .L27
.L30:
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r16 , $r0, 0
	slt $r5 , $r16 , $r13 
	bnez $r5 , .L32
	b .L31
.L31:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L26
.L32:
	ori $r15 , $r0, 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	st.w $r15 , $r20 , 0
	add.d $r14 , $r12 , $r0 
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r9 , $r20 , 0
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	add.d $r4 , $r14 , $r0 
	ld.d $r5 , $r3 ,32
	add.d $r6 , $r13 , $r0 
	bl swap
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	add.d $r6 , $r4 , $r0 
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	st.w $r6 , $r20 , 0
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -84>>12
	ori $r20 , $r20 , 4012
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -84>>12
	ori $r20 , $r20 , 4012
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	ori $r16 , $r0, 1
	sub.w $r17 , $r18 , $r16 
	lu12i.w $r20 , -88>>12
	ori $r20 , $r20 , 4008
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -88>>12
	ori $r20 , $r20 , 4008
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	st.w $r19 , $r20 , 0
	add.d $r17 , $r12 , $r0 
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r20 , $r22 , $r20 
	st.d $r17 , $r20 , 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	ldptr.w $r10 , $r20 , 0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r20 , $r22 , $r20 
	ld.d $r18 , $r20 , 0
	add.d $r4 , $r18 , $r0 
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	add.d $r5 , $r19 , $r0 
	ld.d $r6 , $r3 ,40
	bl heap_ajust
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	add.d $r17 , $r4 , $r0 
	lu12i.w $r20 , -92>>12
	ori $r20 , $r20 , 4004
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -92>>12
	ori $r20 , $r20 , 4004
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	lu12i.w $r20 , -40>>12
	ori $r20 , $r20 , 4056
	add.d $r20 , $r22 , $r20 
	st.w $r18 , $r20 , 0
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	ldptr.w $r17 , $r20 , 0
	lu12i.w $r20 , -96>>12
	ori $r20 , $r20 , 4000
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -96>>12
	ori $r20 , $r20 , 4000
	add.d $r20 , $r22 , $r20 
	ld.w $r19 , $r20 , 0
	ori $r16 , $r0, 1
	sub.w $r11 , $r19 , $r16 
	lu12i.w $r20 , -44>>12
	ori $r20 , $r20 , 4052
	add.d $r20 , $r22 , $r20 
	st.w $r11 , $r20 , 0
	b .L30
.L33:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L26
main :
.entry_main:
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r3 , $r3 , $r20 
	st.d $r1 , $r3 ,72
	st.d $r22 , $r3 ,64
	addi.d $r22 , $r3 , 80
.L35:
	ori $r15 , $r0, 10
	la.local $r16 , g0
	stptr.w $r15 , $r16 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 0
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 4
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 1
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 3
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 2
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 9
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 3
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 2
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 4
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 0
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 5
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 1
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 6
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 6
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 7
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 5
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 8
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 7
	st.w $r15 , $r6 ,0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r6 , $r22 , $r20 
	ori $r15 , $r0, 9
	slli.d $r15 , $r15 , 2
	add.d $r6 , $r6 , $r15 
	ori $r15 , $r0, 8
	st.w $r15 , $r6 ,0
	ori $r15 , $r0, 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	st.w $r15 , $r20 , 0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r7 , $r22 , $r20 
	la.local $r16 , g0
	ldptr.w $r6 , $r16 ,0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	ld.d $r4 , $r3 ,16
	ld.d $r5 , $r3 ,8
	bl heap_sort
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	add.d $r6 , $r4 , $r0 
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	st.w $r6 , $r20 , 0
	b .L37
.L36:
	or $r4 , $r12 , $r0 
	ld.d $r22 , $r3 ,64
	ld.d $r1 , $r3 ,72
	addi.d $r3 , $r3 , 80
	jr	$ra
.L37:
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r6 , $r20 , 0
	la.local $r16 , g0
	ldptr.w $r13 , $r16 ,0
	slt $r8 , $r6 , $r13 
	bnez $r8 , .L39
	b .L38
.L38:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L36
.L39:
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r9 , $r20 , 0
	lu12i.w $r20 , -76>>12
	ori $r20 , $r20 , 4020
	add.d $r10 , $r22 , $r20 
	slli.d $r9 , $r9 , 2
	add.d $r10 , $r10 , $r9 
	ldptr.w $r6 , $r10 ,0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	st.w $r6 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r7 , $r20 , 0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	ld.d $r4 , $r3 ,16
	bl putint
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	ori $r15 , $r0, 10
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	st.w $r15 , $r20 , 0
	lu12i.w $r20 , -32>>12
	ori $r20 , $r20 , 4064
	add.d $r20 , $r22 , $r20 
	ldptr.w $r11 , $r20 , 0
	lu12i.w $r20 , -256>>12
	ori $r20 , $r20 , 3840
	add.d $r3 , $r3 , $r20 
	st.d $r5 , $r3 ,0
	st.d $r6 , $r3 ,8
	st.d $r7 , $r3 ,16
	st.d $r8 , $r3 ,24
	st.d $r9 , $r3 ,32
	st.d $r10 , $r3 ,40
	st.d $r11 , $r3 ,48
	st.d $r12 , $r3 ,56
	st.d $r13 , $r3 ,64
	st.d $r14 , $r3 ,72
	st.d $r15 , $r3 ,80
	st.d $r16 , $r3 ,88
	st.d $r17 , $r3 ,96
	st.d $r18 , $r3 ,104
	st.d $r19 , $r3 ,112
	st.d $r20 , $r3 ,120
	fst.s $f8 , $r3 ,128
	fst.s $f9 , $r3 ,136
	fst.s $f10 , $r3 ,144
	fst.s $f11 , $r3 ,152
	fst.s $f12 , $r3 ,160
	fst.s $f13 , $r3 ,168
	fst.s $f14 , $r3 ,176
	fst.s $f15 , $r3 ,184
	fst.s $f16 , $r3 ,192
	fst.s $f17 , $r3 ,200
	fst.s $f18 , $r3 ,208
	fst.s $f19 , $r3 ,216
	fst.s $f20 , $r3 ,224
	fst.s $f21 , $r3 ,232
	fst.s $f22 , $r3 ,240
	fst.s $f23 , $r3 ,248
	ld.d $r4 , $r3 ,48
	bl putch
	ld.d $r5 , $r3 ,0
	ld.d $r6 , $r3 ,8
	ld.d $r7 , $r3 ,16
	ld.d $r8 , $r3 ,24
	ld.d $r9 , $r3 ,32
	ld.d $r10 , $r3 ,40
	ld.d $r11 , $r3 ,48
	ld.d $r12 , $r3 ,56
	ld.d $r13 , $r3 ,64
	ld.d $r14 , $r3 ,72
	ld.d $r15 , $r3 ,80
	ld.d $r16 , $r3 ,88
	ld.d $r17 , $r3 ,96
	ld.d $r18 , $r3 ,104
	ld.d $r19 , $r3 ,112
	ld.d $r20 , $r3 ,120
	fld.s $f8 , $r3 ,128
	fld.s $f9 , $r3 ,136
	fld.s $f10 , $r3 ,144
	fld.s $f11 , $r3 ,152
	fld.s $f12 , $r3 ,160
	fld.s $f13 , $r3 ,168
	fld.s $f14 , $r3 ,176
	fld.s $f15 , $r3 ,184
	fld.s $f16 , $r3 ,192
	fld.s $f17 , $r3 ,200
	fld.s $f18 , $r3 ,208
	fld.s $f19 , $r3 ,216
	fld.s $f20 , $r3 ,224
	fld.s $f21 , $r3 ,232
	fld.s $f22 , $r3 ,240
	fld.s $f23 , $r3 ,248
	addi.d $r3 , $r3 , 256
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	ldptr.w $r13 , $r20 , 0
	ori $r16 , $r0, 1
	add.w $r17 , $r13 , $r16 
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r20 , $r22 , $r20 
	st.w $r17 , $r20 , 0
	lu12i.w $r20 , -80>>12
	ori $r20 , $r20 , 4016
	add.d $r20 , $r22 , $r20 
	ld.w $r18 , $r20 , 0
	lu12i.w $r20 , -36>>12
	ori $r20 , $r20 , 4060
	add.d $r20 , $r22 , $r20 
	st.w $r18 , $r20 , 0
	b .L37
.L40:
	ori $r16 , $r0, 0
	add.w $r15 , $r16 , $r0 
	addi.w $r12 , $r15 , 0
	b .L36
