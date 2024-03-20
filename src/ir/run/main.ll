-----------------------PASS ----------------------
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
declare void @_sysy_starttime(...)
declare void @_sysy_stoptime(...)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg)
@g0 = dso_local global i32 zeroinitializer, align 4
@g1 = dso_local global i32 zeroinitializer, align 4
@g2 = dso_local global i32 zeroinitializer, align 4
define dso_local void @global_init() {
	br label %bb1663049760
bb1663049760:
	store i32 4, i32* @g0
	store i32 32, i32* @g1
	store i32 10, i32* @g2
	ret void
}
define dso_local void @printSolution(i32* %r3) {
	br label %bb0
bb0:
	br label %bb3
bb1:
	ret void
bb2:
	%r15 = load i32, i32* @g2
	call void @putch(i32 %r15)
	br label %bb1
bb3:
	%r16 = phi i32 [ 0,%bb0 ], [ %r14,%bb4 ]
	%r6 = load i32, i32* @g0
	%r7 = icmp slt i32 %r16,%r6
	br i1 %r7,label %bb4,label %bb2
bb4:
	%r8 = getelementptr i32, ptr %r3, i32 %r16
	%r10 = load i32, i32* %r8
	call void @putint(i32 %r10)
	%r11 = load i32, i32* @g1
	call void @putch(i32 %r11)
	%r14 = add nsw i32 %r16, 1
	br label %bb3
}
define dso_local void @printMessage() {
	br label %bb0
bb0:
	call void @putch(i32 78)
	call void @putch(i32 111)
	call void @putch(i32 116)
	%r3 = load i32, i32* @g1
	call void @putch(i32 %r3)
	call void @putch(i32 101)
	call void @putch(i32 120)
	call void @putch(i32 105)
	call void @putch(i32 115)
	call void @putch(i32 116)
	br label %bb1
bb1:
	ret void
}
define dso_local i32 @isSafe(i32* %r3, i32* %r4) {
	br label %bb0
bb0:
	br label %bb3
bb1:
	%r36 = phi i32 [ 0,%bb13 ], [ 1,%bb2 ]
	ret i32 %r36
bb2:
	br label %bb1
bb3:
	%r42 = phi i1 [ 0,%bb0 ], [ %r41,%bb5 ]
	%r38 = phi i32 [ 0,%bb0 ], [ %r39,%bb5 ]
	%r37 = phi i32 [ 0,%bb0 ], [ %r35,%bb5 ]
	%r7 = load i32, i32* @g0
	%r8 = icmp slt i32 %r37,%r7
	br i1 %r8,label %bb4,label %bb2
bb4:
	%r12 = add nsw i32 %r37, 1
	br label %bb6
bb5:
	%r35 = add nsw i32 %r37, 1
	br label %bb3
bb6:
	%r41 = phi i1 [ %r42,%bb4 ], [ %r40,%bb14 ]
	%r39 = phi i32 [ %r12,%bb4 ], [ %r32,%bb14 ]
	%r14 = load i32, i32* @g0
	%r15 = icmp slt i32 %r39,%r14
	br i1 %r15,label %bb7,label %bb5
bb7:
	br label %bb8
bb8:
	%r17 = getelementptr [4 x i32], [4 x i32]* %r3, i32 %r37, i32 %r39
	%r20 = load i32, i32* %r17
	%r21 = icmp ne i32 %r20,0
	br i1 %r21,label %bb9,label %bb11
bb9:
	%r22 = getelementptr i32, ptr %r4, i32 %r39
	%r24 = load i32, i32* %r22
	%r25 = getelementptr i32, ptr %r4, i32 %r37
	%r27 = load i32, i32* %r25
	%r28 = icmp eq i32 %r24,%r27
	br i1 %r28,label %bb10,label %bb11
bb10:
	br label %bb12
bb11:
	br label %bb12
bb12:
	%r40 = phi i1 [ 1,%bb10 ], [ 0,%bb11 ]
	br i1 %r40,label %bb13,label %bb14
bb13:
	br label %bb1
bb14:
	%r32 = add nsw i32 %r39, 1
	br label %bb6
}
define dso_local i32 @graphColoring(i32* %r3, i32 %r4, i32 %r6, i32* %r8) {
	br label %bb0
bb0:
	%r10 = load i32, i32* @g0
	%r11 = icmp eq i32 %r6,%r10
	br i1 %r11,label %bb2,label %bb5
bb1:
	%r37 = phi i32 [ 1,%bb3 ], [ 0,%bb4 ], [ 1,%bb9 ], [ 0,%bb6 ]
	ret i32 %r37
bb2:
	%r12 = getelementptr [4 x i32], [4 x i32]* %r3
	%r13 = getelementptr i32, ptr %r8
	%r14 = call i32 @isSafe(i32* %r12, i32* %r13)
	%r15 = icmp ne i32 %r14,0
	br i1 %r15,label %bb3,label %bb4
bb3:
	%r16 = getelementptr i32, ptr %r8
	call void @printSolution(i32* %r16)
	br label %bb1
bb4:
	br label %bb1
bb5:
	br label %bb7
bb6:
	br label %bb1
bb7:
	%r38 = phi i32 [ 1,%bb5 ], [ %r36,%bb10 ]
	%r20 = icmp sle i32 %r38,%r4
	br i1 %r20,label %bb8,label %bb6
bb8:
	%r22 = getelementptr i32, ptr %r8, i32 %r6
	store i32 %r38, i32* %r22
	%r24 = getelementptr [4 x i32], [4 x i32]* %r3
	%r28 = add nsw i32 %r6, 1
	%r29 = getelementptr i32, ptr %r8
	%r30 = call i32 @graphColoring(i32* %r24, i32 %r4, i32 %r28, i32* %r29)
	%r31 = icmp ne i32 %r30,0
	br i1 %r31,label %bb9,label %bb10
bb9:
	br label %bb1
bb10:
	%r32 = getelementptr i32, ptr %r8, i32 %r6
	store i32 0, i32* %r32
	%r36 = add nsw i32 %r38, 1
	br label %bb7
}
define dso_local i32 @main() {
	%r3 = alloca [4 x [4 x i32]] , align 4
	%r15 = alloca [4 x i32] , align 4
	br label %bb0
bb0:
	call void @global_init()
	call void @llvm.memset.p0.i64(i32* %r3, i8 0, i64 64, i1 false)
	%r4 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 0, i32 1
	store i32 1, i32* %r4
	%r5 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 0, i32 2
	store i32 1, i32* %r5
	%r6 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 0, i32 3
	store i32 1, i32* %r6
	%r7 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 1, i32 0
	store i32 1, i32* %r7
	%r8 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 1, i32 2
	store i32 1, i32* %r8
	%r9 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 2, i32 0
	store i32 1, i32* %r9
	%r10 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 2, i32 1
	store i32 1, i32* %r10
	%r11 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 2, i32 3
	store i32 1, i32* %r11
	%r12 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 3, i32 0
	store i32 1, i32* %r12
	%r13 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 3, i32 2
	store i32 1, i32* %r13
	br label %bb3
bb1:
	%r31 = phi i32 [ 0,%bb6 ]
	ret i32 %r31
bb2:
	%r25 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0
	%r27 = getelementptr [4 x i32], [4 x i32]* %r15, i32 0
	%r28 = call i32 @graphColoring(i32* %r25, i32 3, i32 0, i32* %r27)
	%r30 = icmp ne i32 %r28,0
	%r29 = xor i1 %r30, true
	br i1 %r29,label %bb5,label %bb6
bb3:
	%r32 = phi i32 [ 0,%bb0 ], [ %r24,%bb4 ]
	%r18 = load i32, i32* @g0
	%r19 = icmp slt i32 %r32,%r18
	br i1 %r19,label %bb4,label %bb2
bb4:
	%r20 = getelementptr [4 x i32], [4 x i32]* %r15, i32 0, i32 %r32
	store i32 0, i32* %r20
	%r24 = add nsw i32 %r32, 1
	br label %bb3
bb5:
	call void @printMessage()
	br label %bb6
bb6:
	br label %bb1
}
-----------------------PASS ----------------------
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
declare void @_sysy_starttime(...)
declare void @_sysy_stoptime(...)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg)
@g0 = dso_local global i32 zeroinitializer, align 4
@g1 = dso_local global i32 zeroinitializer, align 4
@g2 = dso_local global i32 zeroinitializer, align 4
define dso_local void @global_init() {
	br label %bb1663049760
bb1663049760:
	store i32 4, i32* @g0
	store i32 32, i32* @g1
	store i32 10, i32* @g2
	ret void
}
define dso_local void @printSolution(i32* %r3) {
	br label %bb0
bb0:
	br label %bb3
bb1:
	ret void
bb2:
	%r15 = load i32, i32* @g2
	call void @putch(i32 %r15)
	br label %bb1
bb3:
	%r16 = phi i32 [ 0,%bb0 ], [ %r14,%bb4 ]
	%r6 = load i32, i32* @g0
	%r7 = icmp slt i32 %r16,%r6
	br i1 %r7,label %bb4,label %bb2
bb4:
	%r8 = getelementptr i32, ptr %r3, i32 %r16
	%r10 = load i32, i32* %r8
	call void @putint(i32 %r10)
	%r11 = load i32, i32* @g1
	call void @putch(i32 %r11)
	%r14 = add nsw i32 %r16, 1
	br label %bb3
}
define dso_local void @printMessage() {
	br label %bb0
bb0:
	call void @putch(i32 78)
	call void @putch(i32 111)
	call void @putch(i32 116)
	%r3 = load i32, i32* @g1
	call void @putch(i32 %r3)
	call void @putch(i32 101)
	call void @putch(i32 120)
	call void @putch(i32 105)
	call void @putch(i32 115)
	call void @putch(i32 116)
	br label %bb1
bb1:
	ret void
}
define dso_local i32 @isSafe(i32* %r3, i32* %r4) {
	br label %bb0
bb0:
	br label %bb3
bb1:
	%r36 = phi i32 [ 0,%bb13 ], [ 1,%bb2 ]
	ret i32 %r36
bb2:
	br label %bb1
bb3:
	%r37 = phi i32 [ 0,%bb0 ], [ %r35,%bb5 ]
	%r7 = load i32, i32* @g0
	%r8 = icmp slt i32 %r37,%r7
	br i1 %r8,label %bb4,label %bb2
bb4:
	%r12 = add nsw i32 %r37, 1
	br label %bb6
bb5:
	%r35 = add nsw i32 %r37, 1
	br label %bb3
bb6:
	%r39 = phi i32 [ %r12,%bb4 ], [ %r32,%bb14 ]
	%r14 = load i32, i32* @g0
	%r15 = icmp slt i32 %r39,%r14
	br i1 %r15,label %bb7,label %bb5
bb7:
	br label %bb8
bb8:
	%r17 = getelementptr [4 x i32], [4 x i32]* %r3, i32 %r37, i32 %r39
	%r20 = load i32, i32* %r17
	%r21 = icmp ne i32 %r20,0
	br i1 %r21,label %bb9,label %bb11
bb9:
	%r22 = getelementptr i32, ptr %r4, i32 %r39
	%r24 = load i32, i32* %r22
	%r25 = getelementptr i32, ptr %r4, i32 %r37
	%r27 = load i32, i32* %r25
	%r28 = icmp eq i32 %r24,%r27
	br i1 %r28,label %bb10,label %bb11
bb10:
	br label %bb12
bb11:
	br label %bb12
bb12:
	%r40 = phi i1 [ 1,%bb10 ], [ 0,%bb11 ]
	br i1 %r40,label %bb13,label %bb14
bb13:
	br label %bb1
bb14:
	%r32 = add nsw i32 %r39, 1
	br label %bb6
}
define dso_local i32 @graphColoring(i32* %r3, i32 %r4, i32 %r6, i32* %r8) {
	br label %bb0
bb0:
	%r10 = load i32, i32* @g0
	%r11 = icmp eq i32 %r6,%r10
	br i1 %r11,label %bb2,label %bb5
bb1:
	%r37 = phi i32 [ 1,%bb3 ], [ 0,%bb4 ], [ 1,%bb9 ], [ 0,%bb6 ]
	ret i32 %r37
bb2:
	%r12 = getelementptr [4 x i32], [4 x i32]* %r3
	%r13 = getelementptr i32, ptr %r8
	%r14 = call i32 @isSafe(i32* %r12, i32* %r13)
	%r15 = icmp ne i32 %r14,0
	br i1 %r15,label %bb3,label %bb4
bb3:
	%r16 = getelementptr i32, ptr %r8
	call void @printSolution(i32* %r16)
	br label %bb1
bb4:
	br label %bb1
bb5:
	br label %bb7
bb6:
	br label %bb1
bb7:
	%r38 = phi i32 [ 1,%bb5 ], [ %r36,%bb10 ]
	%r20 = icmp sle i32 %r38,%r4
	br i1 %r20,label %bb8,label %bb6
bb8:
	%r22 = getelementptr i32, ptr %r8, i32 %r6
	store i32 %r38, i32* %r22
	%r24 = getelementptr [4 x i32], [4 x i32]* %r3
	%r28 = add nsw i32 %r6, 1
	%r29 = getelementptr i32, ptr %r8
	%r30 = call i32 @graphColoring(i32* %r24, i32 %r4, i32 %r28, i32* %r29)
	%r31 = icmp ne i32 %r30,0
	br i1 %r31,label %bb9,label %bb10
bb9:
	br label %bb1
bb10:
	%r32 = getelementptr i32, ptr %r8, i32 %r6
	store i32 0, i32* %r32
	%r36 = add nsw i32 %r38, 1
	br label %bb7
}
define dso_local i32 @main() {
	%r3 = alloca [4 x [4 x i32]] , align 4
	%r15 = alloca [4 x i32] , align 4
	br label %bb0
bb0:
	call void @global_init()
	%r4 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 0, i32 1
	store i32 1, i32* %r4
	%r5 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 0, i32 2
	store i32 1, i32* %r5
	%r6 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 0, i32 3
	store i32 1, i32* %r6
	%r7 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 1, i32 0
	store i32 1, i32* %r7
	%r8 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 1, i32 2
	store i32 1, i32* %r8
	%r9 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 2, i32 0
	store i32 1, i32* %r9
	%r10 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 2, i32 1
	store i32 1, i32* %r10
	%r11 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 2, i32 3
	store i32 1, i32* %r11
	%r12 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 3, i32 0
	store i32 1, i32* %r12
	%r13 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0, i32 3, i32 2
	store i32 1, i32* %r13
	br label %bb3
bb1:
	%r31 = phi i32 [ 0,%bb6 ]
	ret i32 %r31
bb2:
	%r25 = getelementptr [4 x [4 x i32]], [4 x [4 x i32]*]* %r3, i32 0
	%r27 = getelementptr [4 x i32], [4 x i32]* %r15, i32 0
	%r28 = call i32 @graphColoring(i32* %r25, i32 3, i32 0, i32* %r27)
	%r30 = icmp ne i32 %r28,0
	%r29 = xor i1 %r30, true
	br i1 %r29,label %bb5,label %bb6
bb3:
	%r32 = phi i32 [ 0,%bb0 ], [ %r24,%bb4 ]
	%r18 = load i32, i32* @g0
	%r19 = icmp slt i32 %r32,%r18
	br i1 %r19,label %bb4,label %bb2
bb4:
	%r20 = getelementptr [4 x i32], [4 x i32]* %r15, i32 0, i32 %r32
	store i32 0, i32* %r20
	%r24 = add nsw i32 %r32, 1
	br label %bb3
bb5:
	call void @printMessage()
	br label %bb6
bb6:
	br label %bb1
}
