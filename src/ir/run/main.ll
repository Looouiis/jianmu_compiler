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
declare void @_sysy_starttime(...)
declare void @_sysy_stoptime(...)
@g0 = dso_local global i32 zeroinitializer, align 4
@g1 = dso_local global i32 zeroinitializer, align 4
@g2 = dso_local global [400020 x i32] zeroinitializer, align 4
@g3 = dso_local global [100005 x i32] zeroinitializer, align 4
@g4 = dso_local global [100005 x i32] zeroinitializer, align 4
@g5 = dso_local global [100005 x i32] zeroinitializer, align 4
@g6 = dso_local global [100005 x i32] zeroinitializer, align 4
define dso_local void @global_init() {
	br label %bb151587369
bb151587369:
	store i32 100005, i32* @g1
	ret void
}
define dso_local i32 @quick_read() {
	br label %bb0
bb0:
	%r8 = call i32 @getch()
	br label %bb3
bb1:
	%r40 = phi i32 [ %r38,%bb20 ], [ %r43,%bb21 ]
	ret i32 %r40
bb2:
	br label %bb13
bb3:
	%r45 = phi i32 [ 0,%bb0 ], [ %r44,%bb11 ]
	%r41 = phi i32 [ %r8,%bb0 ], [ %r19,%bb11 ]
	br label %bb5
bb4:
	%r18 = icmp eq i32 %r41,45
	br i1 %r18,label %bb10,label %bb11
bb5:
	%r13 = icmp slt i32 %r41,48
	br i1 %r13,label %bb7,label %bb6
bb6:
	%r15 = icmp sgt i32 %r41,57
	br i1 %r15,label %bb7,label %bb8
bb7:
	br label %bb9
bb8:
	br label %bb9
bb9:
	%r46 = phi i1 [ 1,%bb7 ], [ 0,%bb8 ]
	br i1 %r46,label %bb4,label %bb2
bb10:
	br label %bb11
bb11:
	%r44 = phi i32 [ %r45,%bb4 ], [ 1,%bb10 ]
	%r19 = call i32 @getch()
	br label %bb3
bb12:
	%r36 = icmp ne i32 %r45,0
	br i1 %r36,label %bb20,label %bb21
bb13:
	%r43 = phi i32 [ 0,%bb2 ], [ %r33,%bb14 ]
	%r42 = phi i32 [ %r41,%bb2 ], [ %r34,%bb14 ]
	br label %bb15
bb14:
	%r28 = mul nsw i32 %r43, 10
	%r31 = add nsw i32 %r28, %r42
	%r33 = sub nsw i32 %r31, 48
	%r34 = call i32 @getch()
	br label %bb13
bb15:
	%r22 = icmp sge i32 %r42,48
	br i1 %r22,label %bb16,label %bb18
bb16:
	%r24 = icmp sle i32 %r42,57
	br i1 %r24,label %bb17,label %bb18
bb17:
	br label %bb19
bb18:
	br label %bb19
bb19:
	%r49 = phi i1 [ 1,%bb17 ], [ 0,%bb18 ]
	br i1 %r49,label %bb14,label %bb12
bb20:
	%r38 = mul i32 %r43, -1
	br label %bb1
bb21:
	br label %bb1
}
define dso_local void @sortA(i32* %r7) {
	br label %bb0
bb0:
	br label %bb3
bb1:
	ret void
bb2:
	br label %bb1
bb3:
	%r44 = phi i32 [ 0,%bb0 ], [ %r43,%bb5 ]
	%r11 = load i32, i32* @g0
	%r12 = icmp slt i32 %r44,%r11
	br i1 %r12,label %bb4,label %bb2
bb4:
	%r15 = add nsw i32 %r44, 1
	br label %bb6
bb5:
	%r43 = add nsw i32 %r44, 1
	br label %bb3
bb6:
	%r46 = phi i32 [ %r15,%bb4 ], [ %r40,%bb9 ]
	%r17 = load i32, i32* @g0
	%r18 = icmp slt i32 %r46,%r17
	br i1 %r18,label %bb7,label %bb5
bb7:
	%r19 = getelementptr i32, ptr %r7, i32 %r44
	%r21 = load i32, i32* %r19
	%r22 = getelementptr i32, ptr %r7, i32 %r46
	%r24 = load i32, i32* %r22
	%r25 = icmp sgt i32 %r21,%r24
	br i1 %r25,label %bb8,label %bb9
bb8:
	%r27 = getelementptr i32, ptr %r7, i32 %r44
	%r29 = load i32, i32* %r27
	%r30 = getelementptr i32, ptr %r7, i32 %r46
	%r32 = load i32, i32* %r30
	%r33 = getelementptr i32, ptr %r7, i32 %r44
	store i32 %r32, i32* %r33
	%r36 = getelementptr i32, ptr %r7, i32 %r46
	store i32 %r29, i32* %r36
	br label %bb9
bb9:
	%r40 = add nsw i32 %r46, 1
	br label %bb6
}
define dso_local void @sortB(i32* %r7) {
	%r66 = alloca i32 , align 8
	%r68 = alloca i32 , align 8
	%r70 = alloca i32 , align 8
	br label %bb0
bb0:
	%r10 = mul i32 100, -1
	br label %bb3
bb1:
	ret void
bb2:
	br label %bb1
bb3:
	%r61 = phi i32 [ %r10,%bb0 ], [ %r60,%bb6 ]
	%r58 = phi i32 [ 0,%bb0 ], [ %r35,%bb6 ]
	%r12 = load i32, i32* @g0
	%r13 = icmp slt i32 %r58,%r12
	br i1 %r13,label %bb4,label %bb2
bb4:
	%r15 = getelementptr i32, ptr %r7, i32 %r58
	%r17 = load i32, i32* %r15
	%r14 = getelementptr [400020 x i32], [400020 x i32]* @g2, i32 0, i32 %r17
	store i32* %r14, i32* %r68
	%r69 = load i32*, i32* %r68
	%r18 = load i32, i32* %r69
	%r20 = add nsw i32 %r18, 1
	%r22 = getelementptr i32, ptr %r7, i32 %r58
	%r24 = load i32, i32* %r22
	%r21 = getelementptr [400020 x i32], [400020 x i32]* @g2, i32 0, i32 %r24
	store i32* %r21, i32* %r66
	%r67 = load i32*, i32* %r66
	store i32 %r20, i32* %r67
	%r25 = getelementptr i32, ptr %r7, i32 %r58
	%r27 = load i32, i32* %r25
	store i32 %r27, i32* %r70
	%r71 = load i32, i32* %r70
	%r29 = icmp sgt i32 %r71,%r61
	br i1 %r29,label %bb5,label %bb6
bb5:
	%r30 = getelementptr i32, ptr %r7, i32 %r58
	%r32 = load i32, i32* %r30
	br label %bb6
bb6:
	%r60 = phi i32 [ %r61,%bb4 ], [ %r32,%bb5 ]
	%r35 = add nsw i32 %r58, 1
	br label %bb3
bb7:
	br label %bb1

}
define dso_local void @sortC(i32* %r7) {
	br label %bb0
bb0:
	br label %bb3
bb1:
	ret void
bb2:
	br label %bb1
bb3:
	%r47 = phi i32 [ 0,%bb0 ], [ %r46,%bb5 ]
	%r10 = load i32, i32* @g0
	%r11 = icmp slt i32 %r47,%r10
	br i1 %r11,label %bb4,label %bb2
bb4:
	%r17 = add nsw i32 %r47, 1
	br label %bb6
bb5:
	%r33 = getelementptr i32, ptr %r7, i32 %r47
	%r35 = load i32, i32* %r33
	%r36 = getelementptr i32, ptr %r7, i32 %r50
	%r38 = load i32, i32* %r36
	%r39 = getelementptr i32, ptr %r7, i32 %r47
	store i32 %r38, i32* %r39
	%r42 = getelementptr i32, ptr %r7, i32 %r50
	store i32 %r35, i32* %r42
	%r46 = add nsw i32 %r47, 1
	br label %bb3
bb6:
	%r52 = phi i32 [ %r17,%bb4 ], [ %r31,%bb9 ]
	%r50 = phi i32 [ %r47,%bb4 ], [ %r49,%bb9 ]
	%r19 = load i32, i32* @g0
	%r20 = icmp slt i32 %r52,%r19
	br i1 %r20,label %bb7,label %bb5
bb7:
	%r21 = getelementptr i32, ptr %r7, i32 %r52
	%r23 = load i32, i32* %r21
	%r24 = getelementptr i32, ptr %r7, i32 %r50
	%r26 = load i32, i32* %r24
	%r27 = icmp slt i32 %r23,%r26
	br i1 %r27,label %bb8,label %bb9
bb8:
	br label %bb9
bb9:
	%r49 = phi i32 [ %r50,%bb7 ], [ %r52,%bb8 ]
	%r31 = add nsw i32 %r52, 1
	br label %bb6
}
define dso_local i32 @main() {
	br label %bb0
bb0:
	call void @global_init()
	%r7 = call i32 @quick_read()
	store i32 %r7, i32* @g0
	br label %bb3
bb1:
	%r24 = phi i32 [ 0,%bb2 ]
	ret i32 %r24
bb2:
	%r23 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0
	call void @sortB(i32* %r23)
	br label %bb1
bb3:
	%r25 = phi i32 [ 0,%bb0 ], [ %r22,%bb4 ]
	%r10 = load i32, i32* @g0
	%r11 = icmp ne i32 %r25,%r10
	br i1 %r11,label %bb4,label %bb2
bb4:
	%r12 = call i32 @quick_read()
	%r13 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 %r25
	store i32 %r12, i32* %r13
	%r15 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 %r25
	%r17 = load i32, i32* %r15
	%r18 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r25
	store i32 %r17, i32* %r18
	%r22 = add nsw i32 %r25, 1
	br label %bb3
}
