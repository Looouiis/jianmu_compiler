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
define dso_local i32 @sum(i32* %r0, i32* %r1, i32* %r2, i32* %r3, i32* %r4, i32* %r5, i32* %r6, i32* %r7, i32* %r8, i32* %r9, i32* %r10, i32* %r11, i32* %r12, i32* %r13, i32* %r14, i32* %r15, i32* %r16, i32* %r17, i32* %r18) {
	br label %bb22081
bb22081:
	%r19 = getelementptr i32, ptr %r0, i32 0
	%r20 = load i32, i32* %r19
	%r21 = getelementptr [2 x i32], [2 x i32]* %r1, i32 1, i32 0
	%r22 = load i32, i32* %r21
	%r24 = add nsw i32 %r20, %r22
	%r25 = getelementptr [2 x [2 x i32]], [2 x [2 x i32]*]* %r2, i32 0, i32 0, i32 1
	%r26 = load i32, i32* %r25
	%r28 = add nsw i32 %r24, %r26
	%r29 = getelementptr [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]*]*]* %r3, i32 1, i32 0, i32 1, i32 0
	%r30 = load i32, i32* %r29
	%r32 = add nsw i32 %r28, %r30
	%r33 = getelementptr [2 x [2 x [2 x [2 x i32]]]], [2 x [2 x [2 x [2 x i32]*]*]*]* %r4, i32 0, i32 0, i32 1, i32 1, i32 0
	%r34 = load i32, i32* %r33
	%r36 = add nsw i32 %r32, %r34
	%r37 = getelementptr [2 x [2 x [2 x [2 x [2 x i32]]]]], [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]* %r5, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
	%r38 = load i32, i32* %r37
	%r40 = add nsw i32 %r36, %r38
	%r41 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]* %r6, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0
	%r42 = load i32, i32* %r41
	%r44 = add nsw i32 %r40, %r42
	%r45 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]* %r7, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
	%r46 = load i32, i32* %r45
	%r48 = add nsw i32 %r44, %r46
	%r49 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]* %r8, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0
	%r50 = load i32, i32* %r49
	%r52 = add nsw i32 %r48, %r50
	%r53 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]* %r9, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
	%r54 = load i32, i32* %r53
	%r56 = add nsw i32 %r52, %r54
	%r57 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]* %r10, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1
	%r58 = load i32, i32* %r57
	%r60 = add nsw i32 %r56, %r58
	%r61 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]* %r11, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0
	%r62 = load i32, i32* %r61
	%r64 = add nsw i32 %r60, %r62
	%r65 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]* %r12, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
	%r66 = load i32, i32* %r65
	%r68 = add nsw i32 %r64, %r66
	%r69 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]* %r13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1
	%r70 = load i32, i32* %r69
	%r72 = add nsw i32 %r68, %r70
	%r73 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1
	%r74 = load i32, i32* %r73
	%r76 = add nsw i32 %r72, %r74
	%r77 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r15, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0
	%r78 = load i32, i32* %r77
	%r80 = add nsw i32 %r76, %r78
	%r81 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
	%r82 = load i32, i32* %r81
	%r84 = add nsw i32 %r80, %r82
	%r85 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r17, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1
	%r86 = load i32, i32* %r85
	%r88 = add nsw i32 %r84, %r86
	%r89 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r18, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r90 = load i32, i32* %r89
	%r92 = add nsw i32 %r88, %r90
	br label %bb22082
bb22082:
	%r93 = phi i32 [ %r92,%bb22081 ], [ 0,%bb22083 ]
	ret i32 %r93
bb22083:
	br label %bb22082
}
define dso_local i32 @main() {
	%r0 = alloca [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]] , align 4
	%r1 = alloca i32 , align 4
	%r2 = alloca i32 , align 4
	%r5 = alloca i32 , align 4
	%r8 = alloca i32 , align 4
	%r11 = alloca i32 , align 4
	%r14 = alloca i32 , align 4
	%r17 = alloca i32 , align 4
	%r20 = alloca i32 , align 4
	%r23 = alloca i32 , align 4
	%r26 = alloca i32 , align 4
	%r29 = alloca i32 , align 4
	%r32 = alloca i32 , align 4
	%r35 = alloca i32 , align 4
	%r38 = alloca i32 , align 4
	%r41 = alloca i32 , align 4
	%r44 = alloca i32 , align 4
	%r47 = alloca i32 , align 4
	%r50 = alloca i32 , align 4
	%r53 = alloca i32 , align 4
	%r56 = alloca i32 , align 4
	br label %bb22081
bb22081:
	call void @llvm.memset.p0.i64(i32* %r0, i8 0, i64 2097152, i1 false)
	store i32 0, i32* %r1
	store i32 0, i32* %r2
	br label %bb22083
bb22082:
	%r160 = phi i32 [ 0,%bb22084 ], [ 0,%bb22140 ]
	ret i32 %r160
bb22083:
	%r3 = load i32, i32* %r2
	%r4 = icmp slt i32 %r3,2
	br i1 %r4,label %bb22085,label %bb22084
bb22084:
	%r140 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r141 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r142 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r143 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r144 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r145 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r146 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r147 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r148 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r149 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r150 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r151 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r152 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r153 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r154 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0, i32 0
	%r155 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0, i32 0
	%r156 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0, i32 0
	%r157 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 0
	%r158 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0
	%r159 = call i32 @sum(i32* %r140, i32* %r141, i32* %r142, i32* %r143, i32* %r144, i32* %r145, i32* %r146, i32* %r147, i32* %r148, i32* %r149, i32* %r150, i32* %r151, i32* %r152, i32* %r153, i32* %r154, i32* %r155, i32* %r156, i32* %r157, i32* %r158)
	call void @putint(i32 %r159)
	br label %bb22082
bb22085:
	store i32 0, i32* %r5
	br label %bb22086
bb22086:
	%r6 = load i32, i32* %r5
	%r7 = icmp slt i32 %r6,2
	br i1 %r7,label %bb22088,label %bb22087
bb22087:
	%r137 = load i32, i32* %r2
	%r139 = add nsw i32 %r137, 1
	store i32 %r139, i32* %r2
	br label %bb22083
bb22088:
	store i32 0, i32* %r8
	br label %bb22089
bb22089:
	%r9 = load i32, i32* %r8
	%r10 = icmp slt i32 %r9,2
	br i1 %r10,label %bb22091,label %bb22090
bb22090:
	%r134 = load i32, i32* %r5
	%r136 = add nsw i32 %r134, 1
	store i32 %r136, i32* %r5
	br label %bb22086
bb22091:
	store i32 0, i32* %r11
	br label %bb22092
bb22092:
	%r12 = load i32, i32* %r11
	%r13 = icmp slt i32 %r12,2
	br i1 %r13,label %bb22094,label %bb22093
bb22093:
	%r131 = load i32, i32* %r8
	%r133 = add nsw i32 %r131, 1
	store i32 %r133, i32* %r8
	br label %bb22089
bb22094:
	store i32 0, i32* %r14
	br label %bb22095
bb22095:
	%r15 = load i32, i32* %r14
	%r16 = icmp slt i32 %r15,2
	br i1 %r16,label %bb22097,label %bb22096
bb22096:
	%r128 = load i32, i32* %r11
	%r130 = add nsw i32 %r128, 1
	store i32 %r130, i32* %r11
	br label %bb22092
bb22097:
	store i32 0, i32* %r17
	br label %bb22098
bb22098:
	%r18 = load i32, i32* %r17
	%r19 = icmp slt i32 %r18,2
	br i1 %r19,label %bb22100,label %bb22099
bb22099:
	%r125 = load i32, i32* %r14
	%r127 = add nsw i32 %r125, 1
	store i32 %r127, i32* %r14
	br label %bb22095
bb22100:
	store i32 0, i32* %r20
	br label %bb22101
bb22101:
	%r21 = load i32, i32* %r20
	%r22 = icmp slt i32 %r21,2
	br i1 %r22,label %bb22103,label %bb22102
bb22102:
	%r122 = load i32, i32* %r17
	%r124 = add nsw i32 %r122, 1
	store i32 %r124, i32* %r17
	br label %bb22098
bb22103:
	store i32 0, i32* %r23
	br label %bb22104
bb22104:
	%r24 = load i32, i32* %r23
	%r25 = icmp slt i32 %r24,2
	br i1 %r25,label %bb22106,label %bb22105
bb22105:
	%r119 = load i32, i32* %r20
	%r121 = add nsw i32 %r119, 1
	store i32 %r121, i32* %r20
	br label %bb22101
bb22106:
	store i32 0, i32* %r26
	br label %bb22107
bb22107:
	%r27 = load i32, i32* %r26
	%r28 = icmp slt i32 %r27,2
	br i1 %r28,label %bb22109,label %bb22108
bb22108:
	%r116 = load i32, i32* %r23
	%r118 = add nsw i32 %r116, 1
	store i32 %r118, i32* %r23
	br label %bb22104
bb22109:
	store i32 0, i32* %r29
	br label %bb22110
bb22110:
	%r30 = load i32, i32* %r29
	%r31 = icmp slt i32 %r30,2
	br i1 %r31,label %bb22112,label %bb22111
bb22111:
	%r113 = load i32, i32* %r26
	%r115 = add nsw i32 %r113, 1
	store i32 %r115, i32* %r26
	br label %bb22107
bb22112:
	store i32 0, i32* %r32
	br label %bb22113
bb22113:
	%r33 = load i32, i32* %r32
	%r34 = icmp slt i32 %r33,2
	br i1 %r34,label %bb22115,label %bb22114
bb22114:
	%r110 = load i32, i32* %r29
	%r112 = add nsw i32 %r110, 1
	store i32 %r112, i32* %r29
	br label %bb22110
bb22115:
	store i32 0, i32* %r35
	br label %bb22116
bb22116:
	%r36 = load i32, i32* %r35
	%r37 = icmp slt i32 %r36,2
	br i1 %r37,label %bb22118,label %bb22117
bb22117:
	%r107 = load i32, i32* %r32
	%r109 = add nsw i32 %r107, 1
	store i32 %r109, i32* %r32
	br label %bb22113
bb22118:
	store i32 0, i32* %r38
	br label %bb22119
bb22119:
	%r39 = load i32, i32* %r38
	%r40 = icmp slt i32 %r39,2
	br i1 %r40,label %bb22121,label %bb22120
bb22120:
	%r104 = load i32, i32* %r35
	%r106 = add nsw i32 %r104, 1
	store i32 %r106, i32* %r35
	br label %bb22116
bb22121:
	store i32 0, i32* %r41
	br label %bb22122
bb22122:
	%r42 = load i32, i32* %r41
	%r43 = icmp slt i32 %r42,2
	br i1 %r43,label %bb22124,label %bb22123
bb22123:
	%r101 = load i32, i32* %r38
	%r103 = add nsw i32 %r101, 1
	store i32 %r103, i32* %r38
	br label %bb22119
bb22124:
	store i32 0, i32* %r44
	br label %bb22125
bb22125:
	%r45 = load i32, i32* %r44
	%r46 = icmp slt i32 %r45,2
	br i1 %r46,label %bb22127,label %bb22126
bb22126:
	%r98 = load i32, i32* %r41
	%r100 = add nsw i32 %r98, 1
	store i32 %r100, i32* %r41
	br label %bb22122
bb22127:
	store i32 0, i32* %r47
	br label %bb22128
bb22128:
	%r48 = load i32, i32* %r47
	%r49 = icmp slt i32 %r48,2
	br i1 %r49,label %bb22130,label %bb22129
bb22129:
	%r95 = load i32, i32* %r44
	%r97 = add nsw i32 %r95, 1
	store i32 %r97, i32* %r44
	br label %bb22125
bb22130:
	store i32 0, i32* %r50
	br label %bb22131
bb22131:
	%r51 = load i32, i32* %r50
	%r52 = icmp slt i32 %r51,2
	br i1 %r52,label %bb22133,label %bb22132
bb22132:
	%r92 = load i32, i32* %r47
	%r94 = add nsw i32 %r92, 1
	store i32 %r94, i32* %r47
	br label %bb22128
bb22133:
	store i32 0, i32* %r53
	br label %bb22134
bb22134:
	%r54 = load i32, i32* %r53
	%r55 = icmp slt i32 %r54,2
	br i1 %r55,label %bb22136,label %bb22135
bb22135:
	%r89 = load i32, i32* %r50
	%r91 = add nsw i32 %r89, 1
	store i32 %r91, i32* %r50
	br label %bb22131
bb22136:
	store i32 0, i32* %r56
	br label %bb22137
bb22137:
	%r57 = load i32, i32* %r56
	%r58 = icmp slt i32 %r57,2
	br i1 %r58,label %bb22139,label %bb22138
bb22138:
	%r86 = load i32, i32* %r53
	%r88 = add nsw i32 %r86, 1
	store i32 %r88, i32* %r53
	br label %bb22134
bb22139:
	%r59 = load i32, i32* %r1
	%r61 = load i32, i32* %r2
	%r62 = load i32, i32* %r5
	%r63 = load i32, i32* %r8
	%r64 = load i32, i32* %r11
	%r65 = load i32, i32* %r14
	%r66 = load i32, i32* %r17
	%r67 = load i32, i32* %r20
	%r68 = load i32, i32* %r23
	%r69 = load i32, i32* %r26
	%r70 = load i32, i32* %r29
	%r71 = load i32, i32* %r32
	%r72 = load i32, i32* %r35
	%r73 = load i32, i32* %r38
	%r74 = load i32, i32* %r41
	%r75 = load i32, i32* %r44
	%r76 = load i32, i32* %r47
	%r77 = load i32, i32* %r50
	%r78 = load i32, i32* %r53
	%r79 = load i32, i32* %r56
	%r60 = getelementptr [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]]]]]]]]]]]]]]]]]]], [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x [2 x i32]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]*]* %r0, i32 0, i32 %r61, i32 %r62, i32 %r63, i32 %r64, i32 %r65, i32 %r66, i32 %r67, i32 %r68, i32 %r69, i32 %r70, i32 %r71, i32 %r72, i32 %r73, i32 %r74, i32 %r75, i32 %r76, i32 %r77, i32 %r78, i32 %r79
	store i32 %r59, i32* %r60
	%r80 = load i32, i32* %r1
	%r82 = add nsw i32 %r80, 1
	store i32 %r82, i32* %r1
	%r83 = load i32, i32* %r56
	%r85 = add nsw i32 %r83, 1
	store i32 %r85, i32* %r56
	br label %bb22137
bb22140:
	br label %bb22082
}
