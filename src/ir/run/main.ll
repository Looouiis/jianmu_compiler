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
define dso_local i32 @exgcd(i32 %r0, i32 %r2, i32* %r4, i32* %r5) {
bb0:
        %r1 = alloca i32 , align 4
        store i32 %r0, i32* %r1
        %r3 = alloca i32 , align 4
        store i32 %r2, i32* %r3
        %r6 = load i32, i32* %r3
        %r7 = icmp eq i32 %r6,0
        br i1 %r7,label %bb3,label %bb4
bb1:
        %r39 = phi i32 [ %r10,%bb3 ], [ %r38,%bb4 ], [ 0,%bb2 ]
        ret i32 %r39
bb2:
        br label %bb1
bb3:
        %r8 = getelementptr i32, ptr %r4, i32 0
        store i32 1, i32* %r8
        %r9 = getelementptr i32, ptr %r5, i32 0
        store i32 0, i32* %r9
        %r10 = load i32, i32* %r1
        br label %bb1
bb4:
        %r11 = alloca i32 , align 4
        %r12 = load i32, i32* %r3
        %r13 = load i32, i32* %r1
        %r14 = load i32, i32* %r3
        %r16 = add nsw i32 %r13, %r14
        %r17 = getelementptr i32, ptr %r4
        %r18 = getelementptr i32, ptr %r5
        %r19 = call i32 @exgcd(i32 %r12, i32 %r16, i32* %r17, i32* %r18)
        store i32 %r19, i32* %r11
        %r20 = alloca i32 , align 4
        %r21 = getelementptr i32, ptr %r4, i32 0
        %r22 = load i32, i32* %r21
        store i32 %r22, i32* %r20
        %r23 = getelementptr i32, ptr %r5, i32 0
        %r24 = load i32, i32* %r23
        %r25 = getelementptr i32, ptr %r4, i32 0
        store i32 %r24, i32* %r25
        %r26 = load i32, i32* %r20
        %r27 = load i32, i32* %r1
        %r28 = load i32, i32* %r3
        %r30 = sdiv i32 %r27, %r28
        %r31 = getelementptr i32, ptr %r5, i32 0
        %r32 = load i32, i32* %r31
        %r34 = mul nsw i32 %r30, %r32
        %r36 = sub nsw i32 %r26, %r34
        %r37 = getelementptr i32, ptr %r5, i32 0
        store i32 %r36, i32* %r37
        %r38 = load i32, i32* %r11
        br label %bb1
bb6:
        br label %bb2
bb7:
        br label %bb2
}
define dso_local i32 @main() {
bb0:
        %r0 = alloca i32 , align 4
        store i32 7, i32* %r0
        %r1 = alloca i32 , align 4
        store i32 15, i32* %r1
        %r2 = alloca [1 x i32] , align 4
        %r3 = getelementptr [1 x i32], [1 x i32]* %r2, i32 0, i32 0
        store i32 1, i32* %r3
        %r4 = alloca [1 x i32] , align 4
        %r5 = getelementptr [1 x i32], [1 x i32]* %r4, i32 0, i32 0
        store i32 1, i32* %r5
        %r6 = load i32, i32* %r0
        %r7 = load i32, i32* %r1
        %r8 = getelementptr [1 x i32], [1 x i32]* %r2, i32 0
        %r9 = getelementptr [1 x i32], [1 x i32]* %r4, i32 0
        %r10 = call i32 @exgcd(i32 %r6, i32 %r7, i32* %r8, i32* %r9)
        %r11 = getelementptr [1 x i32], [1 x i32]* %r2, i32 0, i32 0
        %r12 = load i32, i32* %r11
        %r13 = load i32, i32* %r1
        %r15 = add nsw i32 %r12, %r13
        %r16 = load i32, i32* %r1
        %r18 = add nsw i32 %r15, %r16
        %r19 = load i32, i32* %r1
        %r21 = add nsw i32 %r18, %r19
        %r22 = getelementptr [1 x i32], [1 x i32]* %r2, i32 0, i32 0
        store i32 %r21, i32* %r22
        %r23 = getelementptr [1 x i32], [1 x i32]* %r2, i32 0, i32 0
        %r24 = load i32, i32* %r23
        call void @putint(i32 %r24)
        br label %bb1
bb1:
        %r25 = phi i32 [ 0,%bb0 ], [ 0,%bb2 ]
        ret i32 %r25
bb2:
        br label %bb1
}