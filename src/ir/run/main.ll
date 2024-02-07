define dso_local i32 @main() {
bb0:
        %r0 = alloca [4 x [2 x i32]] , align 4
        %r1 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 0, i32 0
        store i32 1, i32* %r1
        %r2 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 0, i32 1
        store i32 2, i32* %r2
        %r3 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 1, i32 0
        store i32 3, i32* %r3
        %r4 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 1, i32 1
        store i32 0, i32* %r4
        %r5 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 2, i32 0
        store i32 0, i32* %r5
        %r6 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 2, i32 1
        store i32 0, i32* %r6
        %r7 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 3, i32 0
        store i32 0, i32* %r7
        %r8 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 3, i32 1
        store i32 0, i32* %r8
        %r10 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 0, i32 1
        %r9 = load i32, i32* %r10
        br label %bb1
bb1:
        %r11 = phi i32 [ %r9,%bb0 ], [ 0,%bb2 ]
        ret i32 %r11
bb2:
        br label %bb1
}