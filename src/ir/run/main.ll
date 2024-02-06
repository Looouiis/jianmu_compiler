define dso_local i32 @main() {
bb0:
        %r0 = alloca [3 x [3 x [3 x i32]]] , align 4
        %r1 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 0, i32 0
        store i32 1, i32* %r1
        %r2 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 0, i32 1
        store i32 2, i32* %r2
        %r3 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 0, i32 2
        store i32 0, i32* %r3
        %r4 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 1, i32 0
        store i32 0, i32* %r4
        %r5 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 1, i32 1
        store i32 0, i32* %r5
        %r6 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 1, i32 2
        store i32 0, i32* %r6
        %r7 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 2, i32 0
        store i32 0, i32* %r7
        %r8 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 2, i32 1
        store i32 0, i32* %r8
        %r9 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 0, i32 2, i32 2
        store i32 0, i32* %r9
        %r10 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 0, i32 0
        store i32 3, i32* %r10
        %r11 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 0, i32 2
        store i32 0, i32* %r11
        %r12 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 0, i32 2
        store i32 0, i32* %r12
        %r13 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 1, i32 0
        store i32 0, i32* %r13
        %r14 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 1, i32 1
        store i32 0, i32* %r14
        %r15 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 1, i32 2
        store i32 0, i32* %r15
        %r16 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 2, i32 0
        store i32 0, i32* %r16
        %r17 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 2, i32 1
        store i32 0, i32* %r17
        %r18 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 1, i32 2, i32 2
        store i32 0, i32* %r18
        %r19 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 0, i32 0
        store i32 0, i32* %r19
        %r20 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 0, i32 1
        store i32 0, i32* %r20
        %r21 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 0, i32 2
        store i32 0, i32* %r21
        %r22 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 1, i32 0
        store i32 0, i32* %r22
        %r23 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 1, i32 1
        store i32 0, i32* %r23
        %r24 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 1, i32 2
        store i32 0, i32* %r24
        %r25 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 2, i32 0
        store i32 0, i32* %r25
        %r26 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 2, i32 1
        store i32 0, i32* %r26
        %r27 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* %r0, i32 0, i32 2, i32 2, i32 2
        store i32 0, i32* %r27
        br label %bb1
bb1:
        %r28 = phi i32 [ 0,%bb0 ]
        ret i32 %r28
}