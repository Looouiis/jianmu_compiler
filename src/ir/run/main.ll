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
define dso_local i32 @main() {
	br label %bb0
bb0:
	%r4 = icmp ne i32 1,0
	br i1 %r4,label %bb2,label %bb3
bb1:
	%r9 = phi i32 [ 0,%bb4 ]
	ret i32 %r9
bb2:
	br label %bb4
bb3:
	br label %bb4
bb4:
	%r13 = phi i32 [ 1,%bb2 ], [ 2,%bb3 ]
	%r12 = phi i32 [ 1,%bb2 ], [ 2,%bb3 ]
	%r11 = phi i32 [ 1,%bb2 ], [ 2,%bb3 ]
	%r10 = phi i32 [ 1,%bb2 ], [ 2,%bb3 ]
	call void @putint(i32 %r10)
	call void @putch(i32 10)
	call void @putint(i32 %r11)
	call void @putch(i32 10)
	call void @putint(i32 %r12)
	call void @putch(i32 10)
	call void @putint(i32 %r13)
	call void @putch(i32 10)
	br label %bb1
}
