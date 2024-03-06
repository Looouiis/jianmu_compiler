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
define dso_local i32 @main() {
	%r0 = alloca [4 x i32] , align 4
	br label %bb0
bb0:
	call void @llvm.memset.p0.i64(i32* %r0, i8 0, i64 16, i1 false)
	br label %bb1
bb1:
	%r1 = phi i32 [ 0,%bb0 ], [ 0,%bb2 ]
	ret i32 %r1
bb2:
	br label %bb1
}
