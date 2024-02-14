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
define dso_local i32 @a(i32* %r0) {
bb0:
	%r1 = alloca ptr , align 4
	store i32* %r0, ptr %r1
	%r2 = getelementptr [6 x i32], [6 x i32]* %r0, i32 6, i32 1
	%r3 = load i32, ptr %r2
	br label %bb1
bb1:
	%r4 = phi i32 [ %r3,%bb0 ], [ 0,%bb2 ]
	ret i32 %r4
bb2:
	br label %bb1
}
define dso_local i32 @main() {
bb0:
	%r0 = alloca [7 x [2 x i32]] , align 4
	%r1 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 0, i32 0
	store i32 0, i32* %r1
	%r2 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 0, i32 1
	store i32 0, i32* %r2
	%r3 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 1, i32 0
	store i32 0, i32* %r3
	%r4 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 1, i32 1
	store i32 0, i32* %r4
	%r5 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 2, i32 0
	store i32 0, i32* %r5
	%r6 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 2, i32 1
	store i32 0, i32* %r6
	%r7 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 3, i32 0
	store i32 0, i32* %r7
	%r8 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 3, i32 1
	store i32 0, i32* %r8
	%r9 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 4, i32 0
	store i32 0, i32* %r9
	%r10 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 4, i32 1
	store i32 0, i32* %r10
	%r11 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 5, i32 0
	store i32 0, i32* %r11
	%r12 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 5, i32 1
	store i32 0, i32* %r12
	%r13 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 6, i32 0
	store i32 0, i32* %r13
	%r14 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 6, i32 1
	store i32 0, i32* %r14
	%r15 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0, i32 6, i32 1
	store i32 7, i32* %r15
	%r16 = getelementptr [7 x [2 x i32]], [7 x [2 x i32]*]* %r0, i32 0
	%r17 = call i32 @a(i32* %r16)
	br label %bb1
bb1:
	%r18 = phi i32 [ %r17,%bb0 ], [ 0,%bb2 ]
	ret i32 %r18
bb2:
	br label %bb1
}
