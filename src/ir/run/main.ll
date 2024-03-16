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
        %r0 = icmp ne i32 1,0
        br i1 %r0,label %bb3,label %bb4
bb1:
        %r1 = phi i32 [ 1,%bb3 ], [ 2,%bb4 ]
        ret i32 %r1
bb3:
        br label %bb1
bb4:
        br label %bb1
}