define dso_local i32 @main() {
bb0:
        %r0 = alloca [4 x [2 x i32]] , align 4
        %r1 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 0
        store i32 1, i32* %r1
        %r2 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %r0, i32 0, i32 1
        store i32 2, i32* %r2

        br label %bb1
bb1:
        %r9 = phi i32 [ 0,%bb0 ]
        ret i32 %r9
}