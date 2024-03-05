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
@g0 = dso_local global i32 10005, align 4
@g1 = dso_local global i32 zeroinitializer, align 4
@g2 = dso_local global i32 zeroinitializer, align 4
@g3 = dso_local global [20 x i32] zeroinitializer, align 4
@g4 = dso_local global [10005 x i32] zeroinitializer, align 4
@g5 = dso_local global [10005 x i32] zeroinitializer, align 4
@g6 = dso_local global [10005 x i32] zeroinitializer, align 4
@g7 = dso_local global [10005 x i32] zeroinitializer, align 4
@g8 = dso_local global i32 0, align 4
define dso_local void @global_init() {
bba:
	ret void
}
define dso_local i32 @quick_read() {
bb0:
	%r0 = alloca i32 , align 4
	%r1 = call i32 @getch()
	store i32 %r1, i32* %r0
	%r2 = alloca i32 , align 4
	store i32 0, i32* %r2
	%r3 = alloca i32 , align 4
	store i32 0, i32* %r3
	br label %bb2
bb1:
	%r33 = phi i32 [ %r31,%bb22 ], [ %r32,%bb23 ], [ 0,%bb21 ]
	ret i32 %r33
bb2:
	%r4 = alloca i1 , align 4
	br label %bb5
bb3:
	%r10 = load i32, i32* %r0
	%r11 = icmp eq i32 %r10,45
	br i1 %r11,label %bb11,label %bb10
bb4:
	br label %bb13
bb5:
	%r5 = load i32, i32* %r0
	%r6 = icmp slt i32 %r5,48
	br i1 %r6,label %bb7,label %bb6
bb6:
	%r7 = load i32, i32* %r0
	%r8 = icmp sgt i32 %r7,57
	br i1 %r8,label %bb7,label %bb8
bb7:
	store i1 1, i1* %r4
	br label %bb9
bb8:
	store i1 0, i1* %r4
	br label %bb9
bb9:
	%r9 = load i1, i1* %r4
	br i1 %r9,label %bb3,label %bb4
bb10:
	%r12 = call i32 @getch()
	store i32 %r12, i32* %r0
	br label %bb2
bb11:
	store i32 1, i32* %r3
	br label %bb10
bb13:
	%r13 = alloca i1 , align 4
	br label %bb16
bb14:
	%r19 = load i32, i32* %r2
	%r21 = mul nsw i32 %r19, 10
	%r22 = load i32, i32* %r0
	%r24 = add nsw i32 %r21, %r22
	%r26 = sub nsw i32 %r24, 48
	store i32 %r26, i32* %r2
	%r27 = call i32 @getch()
	store i32 %r27, i32* %r0
	br label %bb13
bb15:
	%r28 = load i32, i32* %r3
	%r29 = icmp ne i32 %r28,0
	br i1 %r29,label %bb22,label %bb23
bb16:
	%r14 = load i32, i32* %r0
	%r15 = icmp sge i32 %r14,48
	br i1 %r15,label %bb17,label %bb19
bb17:
	%r16 = load i32, i32* %r0
	%r17 = icmp sle i32 %r16,57
	br i1 %r17,label %bb18,label %bb19
bb18:
	store i1 1, i1* %r13
	br label %bb20
bb19:
	store i1 0, i1* %r13
	br label %bb20
bb20:
	%r18 = load i1, i1* %r13
	br i1 %r18,label %bb14,label %bb15
bb21:
	br label %bb1
bb22:
	%r30 = load i32, i32* %r2
	%r31 = mul i32 %r30, -1
	br label %bb1
bb23:
	%r32 = load i32, i32* %r2
	br label %bb1
bb25:
	br label %bb21
bb26:
	br label %bb21
}
define dso_local void @add_edge(i32 %r9, i32 %r11) {
bb0:
	%r10 = alloca i32 , align 4
	store i32 %r9, i32* %r10
	%r12 = alloca i32 , align 4
	store i32 %r11, i32* %r12
	%r13 = load i32, i32* %r12
	%r15 = load i32, i32* @g8
	%r14 = getelementptr [10005 x i32], [10005 x i32]* @g5, i32 0, i32 %r15
	store i32 %r13, i32* %r14
	%r17 = load i32, i32* %r10
	%r16 = getelementptr [10005 x i32], [10005 x i32]* @g7, i32 0, i32 %r17
	%r18 = load i32, i32* %r16
	%r20 = load i32, i32* @g8
	%r19 = getelementptr [10005 x i32], [10005 x i32]* @g6, i32 0, i32 %r20
	store i32 %r18, i32* %r19
	%r21 = load i32, i32* @g8
	%r23 = load i32, i32* %r10
	%r22 = getelementptr [10005 x i32], [10005 x i32]* @g7, i32 0, i32 %r23
	store i32 %r21, i32* %r22
	%r24 = load i32, i32* @g8
	%r26 = add nsw i32 %r24, 1
	store i32 %r26, i32* @g8
	%r27 = load i32, i32* %r10
	%r29 = load i32, i32* %r12
	%r28 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r29, i32 0
	store i32 %r27, i32* %r28
	br label %bb1
bb1:
	ret void
}
define dso_local void @init() {
bb0:
	%r9 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 0
	store i32 1061109567, i32* %r9
	%r10 = alloca i32 , align 4
	store i32 1, i32* %r10
	br label %bb2
bb1:
	ret void
bb2:
	%r11 = load i32, i32* %r10
	%r12 = load i32, i32* @g1
	%r13 = icmp sle i32 %r11,%r12
	br i1 %r13,label %bb3,label %bb4
bb3:
	%r14 = mul i32 1, -1
	%r16 = load i32, i32* %r10
	%r15 = getelementptr [10005 x i32], [10005 x i32]* @g7, i32 0, i32 %r16
	store i32 %r14, i32* %r15
	%r17 = load i32, i32* %r10
	%r19 = add nsw i32 %r17, 1
	store i32 %r19, i32* %r10
	br label %bb2
bb4:
	br label %bb1
}
define dso_local void @tree(i32 %r9, i32 %r11) {
bb0:
	%r10 = alloca i32 , align 4
	store i32 %r9, i32* %r10
	%r12 = alloca i32 , align 4
	store i32 %r11, i32* %r12
	%r13 = alloca i32 , align 4
	store i32 0, i32* %r13
	%r15 = load i32, i32* %r10
	%r16 = load i32, i32* %r13
	%r14 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r15, i32 %r16
	%r17 = load i32, i32* %r14
	call void @putint(i32 %r17)
	br label %bb1
bb1:
	ret void
}
define dso_local i32 @LCA(i32 %r9, i32 %r11) {
bb0:
	%r10 = alloca i32 , align 4
	store i32 %r9, i32* %r10
	%r12 = alloca i32 , align 4
	store i32 %r11, i32* %r12
	%r14 = load i32, i32* %r10
	%r13 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 %r14
	%r15 = load i32, i32* %r13
	%r17 = load i32, i32* %r12
	%r16 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 %r17
	%r18 = load i32, i32* %r16
	%r19 = icmp slt i32 %r15,%r18
	br i1 %r19,label %bb3,label %bb2
bb1:
	%r85 = phi i32 [ %r59,%bb17 ], [ %r84,%bb22 ], [ 0,%bb26 ]
	ret i32 %r85
bb2:
	%r24 = alloca i32 , align 4
	store i32 19, i32* %r24
	br label %bb5
bb3:
	%r20 = alloca i32 , align 4
	%r21 = load i32, i32* %r10
	store i32 %r21, i32* %r20
	%r22 = load i32, i32* %r12
	store i32 %r22, i32* %r10
	%r23 = load i32, i32* %r20
	store i32 %r23, i32* %r12
	br label %bb2
bb5:
	%r26 = load i32, i32* %r10
	%r25 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 %r26
	%r27 = load i32, i32* %r25
	%r29 = load i32, i32* %r12
	%r28 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 %r29
	%r30 = load i32, i32* %r28
	%r31 = icmp sgt i32 %r27,%r30
	br i1 %r31,label %bb6,label %bb7
bb6:
	%r32 = alloca i1 , align 4
	br label %bb8
bb7:
	%r56 = load i32, i32* %r10
	%r57 = load i32, i32* %r12
	%r58 = icmp eq i32 %r56,%r57
	br i1 %r58,label %bb17,label %bb16
bb8:
	%r34 = load i32, i32* %r10
	%r35 = load i32, i32* %r24
	%r33 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r34, i32 %r35
	%r36 = load i32, i32* %r33
	%r37 = icmp ne i32 %r36,0
	br i1 %r37,label %bb9,label %bb11
bb9:
	%r40 = load i32, i32* %r10
	%r41 = load i32, i32* %r24
	%r39 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r40, i32 %r41
	%r42 = load i32, i32* %r39
	%r38 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 %r42
	%r43 = load i32, i32* %r38
	%r45 = load i32, i32* %r12
	%r44 = getelementptr [10005 x i32], [10005 x i32]* @g4, i32 0, i32 %r45
	%r46 = load i32, i32* %r44
	%r47 = icmp sge i32 %r43,%r46
	br i1 %r47,label %bb10,label %bb11
bb10:
	store i1 1, i1* %r32
	br label %bb12
bb11:
	store i1 0, i1* %r32
	br label %bb12
bb12:
	%r48 = load i1, i1* %r32
	br i1 %r48,label %bb14,label %bb13
bb13:
	%r53 = load i32, i32* %r24
	%r55 = sub nsw i32 %r53, 1
	store i32 %r55, i32* %r24
	br label %bb5
bb14:
	%r50 = load i32, i32* %r10
	%r51 = load i32, i32* %r24
	%r49 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r50, i32 %r51
	%r52 = load i32, i32* %r49
	store i32 %r52, i32* %r10
	br label %bb13
bb16:
	store i32 19, i32* %r24
	br label %bb20
bb17:
	%r59 = load i32, i32* %r10
	br label %bb1
bb19:
	br label %bb16
bb20:
	%r60 = load i32, i32* %r24
	%r61 = icmp sge i32 %r60,0
	br i1 %r61,label %bb21,label %bb22
bb21:
	%r63 = load i32, i32* %r10
	%r64 = load i32, i32* %r24
	%r62 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r63, i32 %r64
	%r65 = load i32, i32* %r62
	%r67 = load i32, i32* %r12
	%r68 = load i32, i32* %r24
	%r66 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r67, i32 %r68
	%r69 = load i32, i32* %r66
	%r70 = icmp ne i32 %r65,%r69
	br i1 %r70,label %bb24,label %bb23
bb22:
	%r83 = load i32, i32* %r10
	%r82 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r83, i32 0
	%r84 = load i32, i32* %r82
	br label %bb1
bb23:
	%r79 = load i32, i32* %r24
	%r81 = sub nsw i32 %r79, 1
	store i32 %r81, i32* %r24
	br label %bb20
bb24:
	%r72 = load i32, i32* %r10
	%r73 = load i32, i32* %r24
	%r71 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r72, i32 %r73
	%r74 = load i32, i32* %r71
	store i32 %r74, i32* %r10
	%r76 = load i32, i32* %r12
	%r77 = load i32, i32* %r24
	%r75 = getelementptr [10005 x [20 x i32]], [10005 x [20 x i32]*]* @g3, i32 0, i32 %r76, i32 %r77
	%r78 = load i32, i32* %r75
	store i32 %r78, i32* %r12
	br label %bb23
bb26:
	br label %bb1
}
define dso_local i32 @main() {
bb0:
	call void @global_init()
	%r9 = call i32 @quick_read()
	store i32 %r9, i32* @g1
	%r10 = call i32 @quick_read()
	store i32 %r10, i32* @g2
	call void @init()
	%r11 = alloca i32 , align 4
	store i32 1, i32* %r11
	br label %bb2
bb1:
	%r24 = phi i32 [ 0,%bb4 ], [ 0,%bb5 ]
	ret i32 %r24
bb2:
	%r12 = load i32, i32* %r11
	%r13 = load i32, i32* @g1
	%r14 = icmp ne i32 %r12,%r13
	br i1 %r14,label %bb3,label %bb4
bb3:
	%r15 = alloca i32 , align 4
	%r16 = call i32 @quick_read()
	store i32 %r16, i32* %r15
	%r17 = alloca i32 , align 4
	%r18 = call i32 @quick_read()
	store i32 %r18, i32* %r17
	%r19 = load i32, i32* %r15
	%r20 = load i32, i32* %r17
	call void @add_edge(i32 %r19, i32 %r20)
	%r21 = load i32, i32* %r11
	%r23 = add nsw i32 %r21, 1
	store i32 %r23, i32* %r11
	br label %bb2
bb4:
	call void @tree(i32 1, i32 1)
	br label %bb1
bb5:
	br label %bb1
}
