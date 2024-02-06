define dso_local i32 @main() {
bb0:
        %r0 = alloca i32 , align 4
        store i32 1, i32* %r0
        br label %bb2
bb1:
        %r6 = phi i32 [ %r5,%bb4 ], [ 0,%bb5 ]
        ret i32 %r6
bb2:
        %r1 = load i32, i32* %r0
        %r2 = icmp slt i32 %r1,5
        br i1 %r2,label %bb3,label %bb4
bb3:
        %r3 = load i32, i32* %r0
        %r4 = add nsw i32 %r3, 1
        store i32 %r4, i32* %r0
        br label %bb2
bb4:
        %r5 = load i32, i32* %r0
        br label %bb1
bb5:
        br label %bb1
}