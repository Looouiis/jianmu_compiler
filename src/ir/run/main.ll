define dso_local i32 @main() {
bb0:
        %r0 = alloca i32, align 4
        store i32 0, i32* %r0
        %r1 = alloca i32, align 4
        store i32 1, i32* %r1
        %r2 = load i32, i32* %r0
        %r3 = icmp eq i32 %r2,0
        %r4 = load i32, i32* %r1
        %r5 = icmp eq i32 %r4,1
        %r6 = and i1 %r3, %r5
        br i1 %r6,label %bb3,label %bb2
bb1:
        %r7 = phi i32 [ 0,%bb3 ], [ 1,%bb2 ], [ 0,%bb6 ]
        ret i32 %r7
bb2:
        br label %bb1
bb3:
        br label %bb1
bb5:
        br label %bb2
bb6:
        br label %bb1
}