define dso_local i32 @main() {
bb0:
        %r0 = alloca i32 , align 4
        store i32 0, i32* %r0
        br label %bb2
bb1:
        %r15 = phi i32 [ %r9,%bb9 ], [ %r14,%bb4 ], [ 0,%bb15 ]
        ret i32 %r15
bb2:
        %r1 = load i32, i32* %r0
        %r2 = icmp slt i32 %r1,5
        br i1 %r2,label %bb3,label %bb4
bb3:
        %r3 = load i32, i32* %r0
        %r4 = icmp eq i32 %r3,1
        br i1 %r4,label %bb6,label %bb5
bb4:
        %r14 = load i32, i32* %r0
        br label %bb1
bb5:
        %r7 = load i32, i32* %r0
        %r8 = icmp eq i32 %r7,2
        br i1 %r8,label %bb9,label %bb8
bb6:
        %r5 = load i32, i32* %r0
        %r6 = add nsw i32 %r5, 2
        store i32 %r6, i32* %r0
        br label %bb2
        br label %bb5
bb8:
        %r10 = load i32, i32* %r0
        %r11 = icmp eq i32 %r10,3
        br i1 %r11,label %bb13,label %bb12
bb9:
        %r9 = mul i32 1, -1
        br label %bb1
bb11:
        br label %bb8
bb12:
        %r12 = load i32, i32* %r0
        %r13 = add nsw i32 %r12, 1
        store i32 %r13, i32* %r0
        br label %bb2
bb13:
        br label %bb4
        br label %bb12
bb15:
        br label %bb1
}