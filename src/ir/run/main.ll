define dso_local i32 @a(i32* %r0) {
bb0:
        %r1 = getelementptr [2 x i32], [2 x i32]* %r0, i32 1, i32 0
        %r2 = load i32, i32* %r1
        %r3 = add nsw i32 %r2, 6
        br label %bb1
bb1:
        %r4 = phi i32 [ %r3,%bb0 ], [ 0,%bb2 ]
        ret i32 %r4
bb2:
        br label %bb1
}
define dso_local void @vt() {
bb0:
        %r0 = alloca i32 , align 4
        store i32 3, i32* %r0
        br label %bb1
bb1:
        ret void
bb2:
        br label %bb1
}
define dso_local i32 @main() {
bb0:
        %r0 = alloca [4 x [2 x [2 x i32]]] , align 4
        %r1 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 0, i32 0, i32 0
        store i32 3, i32* %r1
        %r2 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 0, i32 0, i32 1
        store i32 2, i32* %r2
        %r3 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 0, i32 1, i32 0
        store i32 3, i32* %r3
        %r4 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 0, i32 1, i32 1
        store i32 0, i32* %r4
        %r5 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 1, i32 0, i32 0
        store i32 3, i32* %r5
        %r6 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 1, i32 0, i32 1
        store i32 0, i32* %r6
        %r7 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 1, i32 1, i32 0
        store i32 0, i32* %r7
        %r8 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 1, i32 1, i32 1
        store i32 0, i32* %r8
        %r9 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 2, i32 0, i32 0
        store i32 5, i32* %r9
        %r10 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 2, i32 0, i32 1
        store i32 0, i32* %r10
        %r11 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 2, i32 1, i32 0
        store i32 0, i32* %r11
        %r12 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 2, i32 1, i32 1
        store i32 0, i32* %r12
        %r13 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 3, i32 0, i32 0
        store i32 0, i32* %r13
        %r14 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 3, i32 0, i32 1
        store i32 0, i32* %r14
        %r15 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 3, i32 1, i32 0
        store i32 0, i32* %r15
        %r16 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 3, i32 1, i32 1
        store i32 0, i32* %r16
        call void @vt()
        %r17 = getelementptr [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* %r0, i32 0, i32 0
        %r18 = call i32 @a(i32* %r17)
        br label %bb1
bb1:
        %r19 = phi i32 [ %r18,%bb0 ], [ 0,%bb2 ]
        ret i32 %r19
bb2:
        br label %bb1
}