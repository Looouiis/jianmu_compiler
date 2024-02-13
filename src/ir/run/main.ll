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
define dso_local i32 @main() {
bb0:
	%r0 = alloca i32 , align 4
	store i32 1, i32* %r0
	%r1 = load i32, i32* %r0
	%r2 = icmp eq i32 %r1,0
	br i1 %r2,label %bb3,label %bb2
bb1:
	%r3 = phi i32 [ 0,%bb3 ], [ 1,%bb2 ], [ 0,%bb6 ]
	ret i32 %r3
bb2:
	br label %bb1
bb3:
	br label %bb1
bb5:
	br label %bb2
bb6:
	br label %bb1
}
