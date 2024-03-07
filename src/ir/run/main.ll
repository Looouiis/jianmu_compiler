declare i32 @getint(...)
declare i32 @getch(...)
declare i32 @getarray(...)
declare float @getfloat(...)
declare i32 @getfarray(...)
declare void @putint(...)
declare void @putch(...)
declare void @putarray(...)
declare void @putfloat(...)
declare void @putfarray(...)
declare void @putf(...)
@g0 = dso_local global i32 zeroinitializer, align 4
@g1 = dso_local global i32 zeroinitializer, align 4
@g2 = dso_local global [8 x [8 x float]] zeroinitializer, align 4
@g3 = dso_local global [8 x [8 x float]] zeroinitializer, align 4
@g4 = dso_local global [8 x [8 x float]] zeroinitializer, align 4
@g5 = dso_local global float zeroinitializer, align 4
@g6 = dso_local global float zeroinitializer, align 4
@g7 = dso_local global float zeroinitializer, align 4
define dso_local void @global_init() {
	br label %bb171649400
bb171649400:
	store i32 8, i32* @g0
	store i32 8, i32* @g1
	store float 0x400921fb60000000, float* @g5
	store float 0x401921fb60000000, float* @g6
	store float 0x3eb0c6f7a0000000, float* @g7
	ret void
}
define dso_local float @my_fabs(float %r8) {
	%r9 = alloca float , align 4
	br label %bb0
bb0:
	store float %r8, float* %r9
	%r10 = load float, float* %r9
	%r11 = sitofp i32 0 to float
	%r12 = fcmp ogt float %r10,%r11
	br i1 %r12,label %bb3,label %bb2
bb1:
	%r16 = phi float [ %r13,%bb3 ], [ %r15,%bb2 ], [ 0x0000000000000000,%bb6 ]
	ret float %r16
bb2:
	%r14 = load float, float* %r9
	%r15 = fmul float %r14, 0xbff0000000000000
	br label %bb1
bb3:
	%r13 = load float, float* %r9
	br label %bb1
bb5:
	br label %bb2
bb6:
	br label %bb1
}
define dso_local float @p(float %r8) {
	%r9 = alloca float , align 4
	br label %bb0
bb0:
	store float %r8, float* %r9
	%r10 = load float, float* %r9
	%r12 = sitofp i32 3 to float
	%r13 = fmul float %r12, %r10
	%r14 = load float, float* %r9
	%r16 = sitofp i32 4 to float
	%r17 = fmul float %r16, %r14
	%r18 = load float, float* %r9
	%r20 = fmul float %r17, %r18
	%r21 = load float, float* %r9
	%r23 = fmul float %r20, %r21
	%r25 = fsub float %r13, %r23
	br label %bb1
bb1:
	%r26 = phi float [ %r25,%bb0 ], [ 0x0000000000000000,%bb2 ]
	ret float %r26
bb2:
	br label %bb1
}
define dso_local float @my_sin_impl(float %r8) {
	%r9 = alloca float , align 4
	br label %bb0
bb0:
	store float %r8, float* %r9
	%r10 = load float, float* %r9
	%r11 = call float @my_fabs(float %r10)
	%r12 = load float, float* @g7
	%r13 = fcmp ole float %r11,%r12
	br i1 %r13,label %bb3,label %bb2
bb1:
	%r20 = phi float [ %r14,%bb3 ], [ %r19,%bb2 ], [ 0x0000000000000000,%bb6 ]
	ret float %r20
bb2:
	%r15 = load float, float* %r9
	%r17 = fdiv float %r15, 0x4008000000000000
	%r18 = call float @my_sin_impl(float %r17)
	%r19 = call float @p(float %r18)
	br label %bb1
bb3:
	%r14 = load float, float* %r9
	br label %bb1
bb5:
	br label %bb2
bb6:
	br label %bb1
}
define dso_local float @my_sin(float %r8) {
	%r9 = alloca float , align 4
	%r10 = alloca i1 , align 4
	%r19 = alloca i32 , align 4
	br label %bb0
bb0:
	store float %r8, float* %r9
	br label %bb2
bb1:
	%r50 = phi float [ %r49,%bb13 ], [ 0x0000000000000000,%bb16 ]
	ret float %r50
bb2:
	%r11 = load float, float* %r9
	%r12 = load float, float* @g6
	%r13 = fcmp ogt float %r11,%r12
	br i1 %r13,label %bb4,label %bb3
bb3:
	%r14 = load float, float* %r9
	%r15 = load float, float* @g6
	%r16 = fmul float %r15, 0xbff0000000000000
	%r17 = fcmp olt float %r14,%r16
	br i1 %r17,label %bb4,label %bb5
bb4:
	store i1 1, i1* %r10
	br label %bb6
bb5:
	store i1 0, i1* %r10
	br label %bb6
bb6:
	%r18 = load i1, i1* %r10
	br i1 %r18,label %bb8,label %bb7
bb7:
	%r33 = load float, float* %r9
	%r34 = load float, float* @g5
	%r35 = fcmp ogt float %r33,%r34
	br i1 %r35,label %bb11,label %bb10
bb8:
	%r20 = load float, float* %r9
	%r21 = load float, float* @g6
	%r23 = fdiv float %r20, %r21
	%r24 = fptosi float %r23 to i32
	store i32 %r24, i32* %r19
	%r25 = load float, float* %r9
	%r26 = load i32, i32* %r19
	%r27 = load float, float* @g6
	%r29 = sitofp i32 %r26 to float
	%r30 = fmul float %r29, %r27
	%r32 = fsub float %r25, %r30
	store float %r32, float* %r9
	br label %bb7
bb10:
	%r40 = load float, float* %r9
	%r41 = load float, float* @g5
	%r42 = fmul float %r41, 0xbff0000000000000
	%r43 = fcmp olt float %r40,%r42
	br i1 %r43,label %bb14,label %bb13
bb11:
	%r36 = load float, float* %r9
	%r37 = load float, float* @g6
	%r39 = fsub float %r36, %r37
	store float %r39, float* %r9
	br label %bb10
bb13:
	%r48 = load float, float* %r9
	%r49 = call float @my_sin_impl(float %r48)
	br label %bb1
bb14:
	%r44 = load float, float* %r9
	%r45 = load float, float* @g6
	%r47 = fadd float %r44, %r45
	store float %r47, float* %r9
	br label %bb13
bb16:
	br label %bb1
}
define dso_local float @my_cos(float %r8) {
	%r9 = alloca float , align 4
	br label %bb0
bb0:
	store float %r8, float* %r9
	%r10 = load float, float* %r9
	%r11 = load float, float* @g5
	%r13 = sitofp i32 2 to float
	%r14 = fdiv float %r11, %r13
	%r16 = fadd float %r10, %r14
	%r17 = call float @my_sin(float %r16)
	br label %bb1
bb1:
	%r18 = phi float [ %r17,%bb0 ], [ 0x0000000000000000,%bb2 ]
	ret float %r18
bb2:
	br label %bb1
}
define dso_local void @write_mat(float* %r8, i32 %r9, i32 %r11) {
	%r10 = alloca i32 , align 4
	%r12 = alloca i32 , align 4
	%r13 = alloca i32 , align 4
	%r20 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r9, i32* %r10
	store i32 %r11, i32* %r12
	store i32 0, i32* %r13
	br label %bb2
bb1:
	ret void
bb2:
	%r14 = load i32, i32* %r13
	%r15 = load i32, i32* %r10
	%r16 = icmp slt i32 %r14,%r15
	br i1 %r16,label %bb4,label %bb3
bb3:
	call void @putch(i32 10)
	br label %bb1
bb4:
	%r18 = load i32, i32* %r13
	%r17 = getelementptr [8 x float], [8 x float]* %r8, i32 %r18, i32 0
	%r19 = load float, float* %r17
	call void @putfloat(float %r19)
	store i32 1, i32* %r20
	br label %bb5
bb5:
	%r21 = load i32, i32* %r20
	%r22 = load i32, i32* %r12
	%r23 = icmp slt i32 %r21,%r22
	br i1 %r23,label %bb7,label %bb6
bb6:
	call void @putch(i32 10)
	%r31 = load i32, i32* %r13
	%r33 = add nsw i32 %r31, 1
	store i32 %r33, i32* %r13
	br label %bb2
bb7:
	call void @putch(i32 32)
	%r25 = load i32, i32* %r13
	%r26 = load i32, i32* %r20
	%r24 = getelementptr [8 x float], [8 x float]* %r8, i32 %r25, i32 %r26
	%r27 = load float, float* %r24
	call void @putfloat(float %r27)
	%r28 = load i32, i32* %r20
	%r30 = add nsw i32 %r28, 1
	store i32 %r30, i32* %r20
	br label %bb5
}
define dso_local void @dct(float* %r8, float* %r9, i32 %r10, i32 %r12) {
	%r11 = alloca i32 , align 4
	%r13 = alloca i32 , align 4
	%r14 = alloca i32 , align 4
	%r18 = alloca i32 , align 4
	%r26 = alloca i32 , align 4
	%r30 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r10, i32* %r11
	store i32 %r12, i32* %r13
	store i32 0, i32* %r14
	br label %bb2
bb1:
	ret void
bb2:
	%r15 = load i32, i32* %r14
	%r16 = load i32, i32* %r11
	%r17 = icmp slt i32 %r15,%r16
	br i1 %r17,label %bb4,label %bb3
bb3:
	br label %bb1
bb4:
	store i32 0, i32* %r18
	br label %bb5
bb5:
	%r19 = load i32, i32* %r18
	%r20 = load i32, i32* %r13
	%r21 = icmp slt i32 %r19,%r20
	br i1 %r21,label %bb7,label %bb6
bb6:
	%r60 = load i32, i32* %r14
	%r62 = add nsw i32 %r60, 1
	store i32 %r62, i32* %r14
	br label %bb2
bb7:
	%r22 = sitofp i32 0 to float
	%r24 = load i32, i32* %r14
	%r25 = load i32, i32* %r18
	%r23 = getelementptr [8 x float], [8 x float]* %r8, i32 %r24, i32 %r25
	store float %r22, float* %r23
	store i32 0, i32* %r26
	br label %bb8
bb8:
	%r27 = load i32, i32* %r26
	%r28 = load i32, i32* %r11
	%r29 = icmp slt i32 %r27,%r28
	br i1 %r29,label %bb10,label %bb9
bb9:
	%r57 = load i32, i32* %r18
	%r59 = add nsw i32 %r57, 1
	store i32 %r59, i32* %r18
	br label %bb5
bb10:
	store i32 0, i32* %r30
	br label %bb11
bb11:
	%r31 = load i32, i32* %r30
	%r32 = load i32, i32* %r13
	%r33 = icmp slt i32 %r31,%r32
	br i1 %r33,label %bb13,label %bb12
bb12:
	call void @putch(i32 10)
	%r54 = load i32, i32* %r26
	%r56 = add nsw i32 %r54, 1
	store i32 %r56, i32* %r26
	br label %bb8
bb13:
	%r34 = load float, float* @g5
	%r35 = load i32, i32* %r11
	%r37 = sitofp i32 %r35 to float
	%r38 = fdiv float %r34, %r37
	%r39 = load i32, i32* %r26
	%r41 = fdiv float 0x3ff0000000000000, 0x4000000000000000
	%r43 = sitofp i32 %r39 to float
	%r44 = fadd float %r43, %r41
	%r46 = fmul float %r38, %r44
	%r47 = load i32, i32* %r14
	%r49 = sitofp i32 %r47 to float
	%r50 = fmul float %r46, %r49
	call void @putfloat(float %r50)
	call void @putch(i32 32)
	%r51 = load i32, i32* %r30
	%r53 = add nsw i32 %r51, 1
	store i32 %r53, i32* %r30
	br label %bb11
}
define dso_local void @idct(float* %r8, float* %r9, i32 %r10, i32 %r12) {
	%r11 = alloca i32 , align 4
	%r13 = alloca i32 , align 4
	%r14 = alloca i32 , align 4
	%r18 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r10, i32* %r11
	store i32 %r12, i32* %r13
	store i32 0, i32* %r14
	br label %bb2
bb1:
	ret void
bb2:
	%r15 = load i32, i32* %r14
	%r16 = load i32, i32* %r11
	%r17 = icmp slt i32 %r15,%r16
	br i1 %r17,label %bb4,label %bb3
bb3:
	br label %bb1
bb4:
	store i32 0, i32* %r18
	br label %bb5
bb5:
	%r19 = load i32, i32* %r18
	%r20 = load i32, i32* %r13
	%r21 = icmp slt i32 %r19,%r20
	br i1 %r21,label %bb7,label %bb6
bb6:
	call void @putch(i32 10)
	%r30 = load i32, i32* %r14
	%r32 = add nsw i32 %r30, 1
	store i32 %r32, i32* %r14
	br label %bb2
bb7:
	%r23 = load i32, i32* %r14
	%r24 = load i32, i32* %r18
	%r22 = getelementptr [8 x float], [8 x float]* %r9, i32 %r23, i32 %r24
	%r25 = load float, float* %r22
	%r26 = fptosi float %r25 to i32
	call void @putint(i32 %r26)
	call void @putch(i32 32)
	%r27 = load i32, i32* %r18
	%r29 = add nsw i32 %r27, 1
	store i32 %r29, i32* %r18
	br label %bb5
}
define dso_local i32 @main() {
	%r8 = alloca i32 , align 4
	%r10 = alloca i32 , align 4
	br label %bb0
bb0:
	call void @global_init()
	%r9 = call i32 @getint()
	store i32 %r9, i32* %r8
	%r11 = call i32 @getint()
	store i32 %r11, i32* %r10
	%r13 = fdiv float 0x3ff0000000000000, 0x4000000000000000
	call void @putfloat(float %r13)
	br label %bb1
bb1:
	%r14 = phi i32 [ 0,%bb0 ], [ 0,%bb2 ]
	ret i32 %r14
bb2:
	br label %bb1
}
