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
define dso_local i32 @exgcd(i32 %r0, i32 %r2, ptr %r4, ptr %r6) {
bb0:
        %r1 = alloca i32 , align 4
        store i32 %r0, i32* %r1
        %r3 = alloca i32 , align 4
        store i32 %r2, i32* %r3
        %r5 = alloca ptr , align 4
        store ptr %r4, ptr %r5
        %r7 = alloca ptr , align 4
        store ptr %r6, ptr %r7
        %r8 = load i32, i32* %r3
        %r9 = icmp eq i32 %r8,0
        br i1 %r9,label %bb3,label %bb4
bb1:
        %r41 = phi i32 [ %r12,%bb3 ], [ %r40,%bb4 ], [ 0,%bb2 ]
        ret i32 %r41
bb2:
        br label %bb1
bb3:
        %r10 = getelementptr i32, ptr %r4, i32 0
        store i32 1, ptr %r10
        %r11 = getelementptr i32, ptr %r6, i32 0
        store i32 0, ptr %r11
        %r12 = load i32, i32* %r1
        br label %bb1
bb4:
        %r13 = alloca i32 , align 4
        %r14 = load i32, i32* %r3
        %r15 = load i32, i32* %r1
        %r16 = load i32, i32* %r3
        %r18 = add nsw i32 %r15, %r16
        %r19 = getelementptr i32, ptr %r4
        %r20 = getelementptr i32, ptr %r6
        %r21 = call i32 @exgcd(i32 %r14, i32 %r18, ptr %r19, ptr %r20)
        store i32 %r21, i32* %r13
        %r22 = alloca i32 , align 4
        %r23 = getelementptr i32, ptr %r4, i32 0
        %r24 = load i32, ptr %r23
        store i32 %r24, i32* %r22
        %r25 = getelementptr i32, ptr %r6, i32 0
        %r26 = load i32, ptr %r25
        %r27 = getelementptr i32, ptr %r4, i32 0
        store i32 %r26, ptr %r27
        %r28 = load i32, i32* %r22
        %r29 = load i32, i32* %r1
        %r30 = load i32, i32* %r3
        %r32 = sdiv i32 %r29, %r30
        %r33 = getelementptr i32, ptr %r6, i32 0
        %r34 = load i32, ptr %r33
        %r36 = mul nsw i32 %r32, %r34
        %r38 = sub nsw i32 %r28, %r36
        %r39 = getelementptr i32, ptr %r6, i32 0
        store i32 %r38, ptr %r39
        %r40 = load i32, i32* %r13
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