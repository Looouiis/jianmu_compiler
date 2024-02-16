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
        %r0 = alloca [5 x i32] , align 4
        %r1 = getelementptr [5 x i32], [5 x i32]* %r0, i32 0, i32 2
        store i32 1, i32* %r1
        br label %bb1
bb1:
        %r2 = phi i32 [ 0,%bb0 ], [ 0,%bb2 ]
        ret i32 %r2
bb2:
        br label %bb1
}