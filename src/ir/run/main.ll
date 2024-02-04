define dso_local i32 @main(i32* %r0, i32* %r1) {
bb0:
        br label %bb1
bb1:
        %r2 = phi i32 [ 0,%bb0 ], [ 0,%bb2 ]
        ret i32 %r2
bb2:
        br label %bb1
}