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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg)
@g0 = dso_local global float zeroinitializer, align 4
@g1 = dso_local global float zeroinitializer, align 4
@g2 = dso_local global float zeroinitializer, align 4
@g3 = dso_local global float zeroinitializer, align 4
@g4 = dso_local global float zeroinitializer, align 4
@g5 = dso_local global float zeroinitializer, align 4
@g6 = dso_local global float zeroinitializer, align 4
@g7 = dso_local global float zeroinitializer, align 4
@g8 = dso_local global float zeroinitializer, align 4
@g9 = dso_local global float zeroinitializer, align 4
@g10 = dso_local global float zeroinitializer, align 4
@g11 = dso_local global i32 zeroinitializer, align 4
@g12 = dso_local global i32 zeroinitializer, align 4
@g13 = dso_local global i32 zeroinitializer, align 4
@g14 = dso_local global i32 zeroinitializer, align 4
define dso_local void @global_init() {
	br label %bb1818632308
bb1818632308:
	store float 0x4016000000000000, float* @g0
	store float 0x400921fb60000000, float* @g1
	store float 0x3eb0c6f7a0000000, float* @g2
	store float 0x400921fb60000000, float* @g3
	store float 0x3fb4000000000000, float* @g4
	%r1 = fmul float 0x40e01d0000000000, 0xbff0000000000000
	store float %r1, float* @g5
	%r2 = load float, float* @g1
	%r3 = load float, float* @g0
	%r5 = fmul float %r2, %r3
	%r6 = load float, float* @g0
	%r8 = fmul float %r5, %r6
	store float %r8, float* @g6
	%r9 = load float, float* @g3
	%r11 = sitofp i32 2 to float
	%r12 = fmul float %r11, %r9
	%r13 = load float, float* @g0
	%r15 = fmul float %r12, %r13
	store float %r15, float* @g7
	%r16 = load float, float* @g1
	%r18 = sitofp i32 2 to float
	%r19 = fmul float %r16, %r18
	%r20 = load float, float* @g0
	%r22 = fmul float %r19, %r20
	store float %r22, float* @g8
	%r23 = sitofp i32 233 to float
	store float %r23, float* @g9
	%r24 = sitofp i32 4095 to float
	store float %r24, float* @g10
	%r25 = fptosi float 0x41cdcd6500000000 to i32
	store i32 %r25, i32* @g11
	%r26 = fptosi float 0x4007333340000000 to i32
	store i32 %r26, i32* @g12
	%r27 = fptosi float 0x40099999a0000000 to i32
	store i32 %r27, i32* @g13
	%r28 = load i32, i32* @g12
	%r29 = load i32, i32* @g13
	%r31 = add nsw i32 %r28, %r29
	store i32 %r31, i32* @g14
	ret void
}
define dso_local float @float_abs(float %r15) {
	%r16 = alloca float , align 4
	br label %bb0
bb0:
	store float %r15, float* %r16
	%r17 = load float, float* %r16
	%r18 = sitofp i32 0 to float
	%r19 = fcmp olt float %r17,%r18
	br i1 %r19,label %bb3,label %bb2
bb1:
	%r23 = phi float [ %r21,%bb3 ], [ %r22,%bb2 ], [ 0x0000000000000000,%bb6 ]
	ret float %r23
bb2:
	%r22 = load float, float* %r16
	br label %bb1
bb3:
	%r20 = load float, float* %r16
	%r21 = fmul float %r20, 0xbff0000000000000
	br label %bb1
bb5:
	br label %bb2
bb6:
	br label %bb1
}
define dso_local float @circle_area(i32 %r15) {
	%r16 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r15, i32* %r16
	%r17 = load float, float* @g1
	%r18 = load i32, i32* %r16
	%r20 = sitofp i32 %r18 to float
	%r21 = fmul float %r17, %r20
	%r22 = load i32, i32* %r16
	%r24 = sitofp i32 %r22 to float
	%r25 = fmul float %r21, %r24
	%r26 = load i32, i32* %r16
	%r27 = load i32, i32* %r16
	%r29 = mul nsw i32 %r26, %r27
	%r30 = load float, float* @g1
	%r32 = sitofp i32 %r29 to float
	%r33 = fmul float %r32, %r30
	%r35 = fadd float %r25, %r33
	%r37 = sitofp i32 2 to float
	%r38 = fdiv float %r35, %r37
	br label %bb1
bb1:
	%r39 = phi float [ %r38,%bb0 ], [ 0x0000000000000000,%bb2 ]
	ret float %r39
bb2:
	br label %bb1
}
define dso_local i32 @float_eq(float %r15, float %r17) {
	%r16 = alloca float , align 4
	%r18 = alloca float , align 4
	br label %bb0
bb0:
	store float %r15, float* %r16
	store float %r17, float* %r18
	%r19 = load float, float* %r16
	%r20 = load float, float* %r18
	%r22 = fsub float %r19, %r20
	%r23 = call float @float_abs(float %r22)
	%r24 = load float, float* @g2
	%r25 = fcmp olt float %r23,%r24
	br i1 %r25,label %bb3,label %bb4
bb1:
	%r33 = phi i32 [ %r32,%bb3 ], [ 0,%bb4 ], [ 0,%bb2 ]
	ret i32 %r33
bb2:
	br label %bb1
bb3:
	%r27 = sitofp i32 1 to float
	%r28 = fmul float %r27, 0x4000000000000000
	%r30 = sitofp i32 2 to float
	%r31 = fdiv float %r28, %r30
	%r32 = fptosi float %r31 to i32
	br label %bb1
bb4:
	br label %bb1
bb6:
	br label %bb2
bb7:
	br label %bb2
}
define dso_local void @error() {
	br label %bb0
bb0:
	call void @putch(i32 101)
	call void @putch(i32 114)
	call void @putch(i32 114)
	call void @putch(i32 111)
	call void @putch(i32 114)
	call void @putch(i32 10)
	br label %bb1
bb1:
	ret void
}
define dso_local void @ok() {
	br label %bb0
bb0:
	call void @putch(i32 111)
	call void @putch(i32 107)
	call void @putch(i32 10)
	br label %bb1
bb1:
	ret void
}
define dso_local void @assert(i32 %r15) {
	%r16 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r15, i32* %r16
	%r17 = load i32, i32* %r16
	%r19 = icmp ne i32 %r17,0
	%r18 = xor i1 %r19, true
	br i1 %r18,label %bb3,label %bb4
bb1:
	ret void
bb2:
	br label %bb1
bb3:
	call void @error()
	br label %bb2
bb4:
	call void @ok()
	br label %bb2
}
define dso_local void @assert_not(i32 %r15) {
	%r16 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r15, i32* %r16
	%r17 = load i32, i32* %r16
	%r18 = icmp ne i32 %r17,0
	br i1 %r18,label %bb3,label %bb4
bb1:
	ret void
bb2:
	br label %bb1
bb3:
	call void @error()
	br label %bb2
bb4:
	call void @ok()
	br label %bb2
}
define dso_local i32 @main() {
	%r37 = alloca i1 , align 4
	%r41 = alloca i1 , align 4
	%r45 = alloca i32 , align 4
	%r46 = alloca i32 , align 4
	%r47 = alloca [10 x float] , align 4
	%r67 = alloca i32 , align 4
	%r73 = alloca float , align 4
	%r75 = alloca float , align 4
	%r83 = alloca float , align 4
	br label %bb0
bb0:
	call void @global_init()
	%r15 = load float, float* @g4
	%r16 = load float, float* @g5
	%r17 = call i32 @float_eq(float %r15, float %r16)
	call void @assert_not(i32 %r17)
	%r18 = load float, float* @g6
	%r19 = load float, float* @g7
	%r20 = call i32 @float_eq(float %r18, float %r19)
	call void @assert_not(i32 %r20)
	%r21 = load float, float* @g7
	%r22 = load float, float* @g8
	%r23 = call i32 @float_eq(float %r21, float %r22)
	call void @assert(i32 %r23)
	%r24 = load float, float* @g0
	%r25 = fptosi float %r24 to i32
	%r26 = call float @circle_area(i32 %r25)
	%r27 = load i32, i32* @g14
	%r28 = call float @circle_area(i32 %r27)
	%r29 = call i32 @float_eq(float %r26, float %r28)
	call void @assert(i32 %r29)
	%r30 = load float, float* @g9
	%r31 = load float, float* @g10
	%r32 = call i32 @float_eq(float %r30, float %r31)
	call void @assert_not(i32 %r32)
	%r33 = fcmp one float 0x3ff8000000000000,0x0000000000000000
	br i1 %r33,label %bb3,label %bb2
bb1:
	%r110 = phi i32 [ 0,%bb26 ], [ 0,%bb27 ]
	ret i32 %r110
bb2:
	%r35 = fcmp one float 0x400a666660000000,0x0000000000000000
	%r34 = xor i1 %r35, true
	%r36 = xor i1 %r34, true
	br i1 %r36,label %bb6,label %bb5
bb3:
	call void @ok()
	br label %bb2
bb5:
	br label %bb8
bb6:
	call void @ok()
	br label %bb5
bb8:
	%r38 = fcmp one float 0x0000000000000000,0x0000000000000000
	br i1 %r38,label %bb9,label %bb11
bb9:
	%r39 = icmp ne i32 3,0
	br i1 %r39,label %bb10,label %bb11
bb10:
	store i1 1, i1* %r37
	br label %bb12
bb11:
	store i1 0, i1* %r37
	br label %bb12
bb12:
	%r40 = load i1, i1* %r37
	br i1 %r40,label %bb14,label %bb13
bb13:
	br label %bb16
bb14:
	call void @error()
	br label %bb13
bb16:
	%r42 = icmp ne i32 0,0
	br i1 %r42,label %bb18,label %bb17
bb17:
	%r43 = fcmp one float 0x3fd3333340000000,0x0000000000000000
	br i1 %r43,label %bb18,label %bb19
bb18:
	store i1 1, i1* %r41
	br label %bb20
bb19:
	store i1 0, i1* %r41
	br label %bb20
bb20:
	%r44 = load i1, i1* %r41
	br i1 %r44,label %bb22,label %bb21
bb21:
	store i32 1, i32* %r45
	store i32 0, i32* %r46
	call void @llvm.memset.p0.i64(float* %r47, i8 0, i64 40, i1 false)
	%r48 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 0
	store float 0x3ff0000000000000, float* %r48
	%r49 = sitofp i32 2 to float
	%r50 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 1
	store float %r49, float* %r50
	%r51 = sitofp i32 0 to float
	%r52 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 2
	store float %r51, float* %r52
	%r53 = sitofp i32 0 to float
	%r54 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 3
	store float %r53, float* %r54
	%r55 = sitofp i32 0 to float
	%r56 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 4
	store float %r55, float* %r56
	%r57 = sitofp i32 0 to float
	%r58 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 5
	store float %r57, float* %r58
	%r59 = sitofp i32 0 to float
	%r60 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 6
	store float %r59, float* %r60
	%r61 = sitofp i32 0 to float
	%r62 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 7
	store float %r61, float* %r62
	%r63 = sitofp i32 0 to float
	%r64 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 8
	store float %r63, float* %r64
	%r65 = sitofp i32 0 to float
	%r66 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 9
	store float %r65, float* %r66
	%r68 = getelementptr [10 x float], [10 x float]* %r47, i32 0
	%r69 = call i32 @getfarray(float* %r68)
	store i32 %r69, i32* %r67
	br label %bb24
bb22:
	call void @ok()
	br label %bb21
bb24:
	%r70 = load i32, i32* %r45
	%r71 = load i32, i32* @g11
	%r72 = icmp slt i32 %r70,%r71
	br i1 %r72,label %bb25,label %bb26
bb25:
	%r74 = call float @getfloat()
	store float %r74, float* %r73
	%r76 = load float, float* @g1
	%r77 = load float, float* %r73
	%r79 = fmul float %r76, %r77
	%r80 = load float, float* %r73
	%r82 = fmul float %r79, %r80
	store float %r82, float* %r75
	%r84 = load float, float* %r73
	%r85 = fptosi float %r84 to i32
	%r86 = call float @circle_area(i32 %r85)
	store float %r86, float* %r83
	%r88 = load i32, i32* %r46
	%r87 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 %r88
	%r89 = load float, float* %r87
	%r90 = load float, float* %r73
	%r92 = fadd float %r89, %r90
	%r94 = load i32, i32* %r46
	%r93 = getelementptr [10 x float], [10 x float]* %r47, i32 0, i32 %r94
	store float %r92, float* %r93
	%r95 = load float, float* %r75
	call void @putfloat(float %r95)
	call void @putch(i32 32)
	%r96 = load float, float* %r83
	%r97 = fptosi float %r96 to i32
	call void @putint(i32 %r97)
	call void @putch(i32 10)
	%r98 = load i32, i32* %r45
	%r99 = fmul float 0x4024000000000000, 0xbff0000000000000
	%r100 = fmul float %r99, 0xbff0000000000000
	%r102 = sitofp i32 %r98 to float
	%r103 = fmul float %r102, %r100
	%r104 = fptosi float %r103 to i32
	store i32 %r104, i32* %r45
	%r105 = load i32, i32* %r46
	%r107 = add nsw i32 %r105, 1
	store i32 %r107, i32* %r46
	br label %bb24
bb26:
	%r108 = load i32, i32* %r67
	%r109 = getelementptr [10 x float], [10 x float]* %r47, i32 0
	call void @putfarray(i32 %r108, float* %r109)
	br label %bb1
bb27:
	br label %bb1
}
