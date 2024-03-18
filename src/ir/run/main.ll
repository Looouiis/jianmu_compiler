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
	br label %bb1131704943
bb1131704943:
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
	%r47 = phi i1 [ %r48,%bb3 ], [ %r46,%bb9 ]
	br label %bb13
bb3:
	%r48 = phi i1 [ 0,%bb0 ], [ %r46,%bb11 ]
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
	%r50 = phi i1 [ %r51,%bb13 ], [ %r49,%bb19 ]
	%r36 = icmp ne i32 %r45,0
	br i1 %r36,label %bb20,label %bb21
bb13:
	%r51 = phi i1 [ 0,%bb2 ], [ %r49,%bb14 ]
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
	%r49 = phi i32 [ 0,%bb0 ], [ %r48,%bb5 ]
	%r45 = phi i32 [ 0,%bb0 ], [ %r46,%bb5 ]
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
	%r48 = phi i32 [ %r49,%bb4 ], [ %r47,%bb9 ]
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
	%r29 = load i32, i32* %r27	; t、a[i]
	%r30 = getelementptr i32, ptr %r7, i32 %r46
	%r32 = load i32, i32* %r30	; a[j]
	%r33 = getelementptr i32, ptr %r7, i32 %r44
	store i32 %r32, i32* %r33
	%r36 = getelementptr i32, ptr %r7, i32 %r46
	store i32 %r29, i32* %r36
	br label %bb9
bb9:
	%r47 = phi i32 [ %r48,%bb7 ], [ %r29,%bb8 ]
	%r40 = add nsw i32 %r46, 1
	br label %bb6
}
define dso_local void @sortB(i32* %r7) {
	br label %bb0
bb0:
	%r10 = mul i32 100, -1
	br label %bb3
bb1:
	ret void
bb2:
	br label %bb8
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
	%r18 = load i32, i32* %r14
	%r20 = add nsw i32 %r18, 1
	%r22 = getelementptr i32, ptr %r7, i32 %r58
	%r24 = load i32, i32* %r22
	%r21 = getelementptr [400020 x i32], [400020 x i32]* @g2, i32 0, i32 %r24
	store i32 %r20, i32* %r21
	%r25 = getelementptr i32, ptr %r7, i32 %r58
	%r27 = load i32, i32* %r25
	%r29 = icmp sgt i32 %r27,%r61
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
bb8:
	%r64 = phi i32 [ 0,%bb2 ], [ %r65,%bb10 ]
	%r63 = phi i32 [ 0,%bb2 ], [ %r62,%bb10 ]
	%r59 = phi i32 [ 0,%bb2 ], [ %r57,%bb10 ]
	%r39 = icmp sle i32 %r59,%r61
	br i1 %r39,label %bb9,label %bb7
bb9:
	%r41 = getelementptr [400020 x i32], [400020 x i32]* @g2, i32 0, i32 %r59
	%r43 = load i32, i32* %r41
	br label %bb11
bb10:
	%r57 = add nsw i32 %r59, 1
	br label %bb8
bb11:
	%r65 = phi i32 [ %r43,%bb9 ], [ %r54,%bb12 ]
	%r62 = phi i32 [ %r63,%bb9 ], [ %r51,%bb12 ]
	%r45 = icmp ne i32 %r65,0
	br i1 %r45,label %bb12,label %bb10
bb12:
	%r47 = getelementptr i32, ptr %r7, i32 %r62
	store i32 %r59, i32* %r47
	%r51 = add nsw i32 %r62, 1
	%r54 = sub nsw i32 %r65, 1
	br label %bb11
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
	%r53 = phi i32 [ 0,%bb0 ], [ %r35,%bb5 ]
	%r51 = phi i32 [ 0,%bb0 ], [ %r52,%bb5 ]
	%r48 = phi i32 [ 0,%bb0 ], [ %r50,%bb5 ]
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
	%r99 = phi i32 [ 1,%bb11 ], [ 2,%bb13 ], [ %r98,%bb8 ]
	ret i32 %r99
bb2:
	%r28 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0
	call void @sortA(i32* %r28)
	%r29 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 0
	%r30 = load i32, i32* %r29
	call void @putint(i32 %r30)
	call void @putch(i32 32)
	%r31 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 1
	%r32 = load i32, i32* %r31
	call void @putint(i32 %r32)
	call void @putch(i32 32)
	%r33 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 2
	%r34 = load i32, i32* %r33
	call void @putint(i32 %r34)
	call void @putch(i32 10)
	%r35 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0
	call void @sortB(i32* %r35)
	%r36 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 0
	%r37 = load i32, i32* %r36
	call void @putint(i32 %r37)
	call void @putch(i32 32)
	%r38 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 1
	%r39 = load i32, i32* %r38
	call void @putint(i32 %r39)
	call void @putch(i32 32)
	%r40 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 2
	%r41 = load i32, i32* %r40
	call void @putint(i32 %r41)
	call void @putch(i32 10)
	%r42 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0
	call void @sortC(i32* %r42)
	%r43 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 0
	%r44 = load i32, i32* %r43
	call void @putint(i32 %r44)
	call void @putch(i32 32)
	%r45 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 1
	%r46 = load i32, i32* %r45
	call void @putint(i32 %r46)
	call void @putch(i32 32)
	%r47 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 2
	%r48 = load i32, i32* %r47
	call void @putint(i32 %r48)
	call void @putch(i32 10)
	br label %bb6
bb3:
	%r100 = phi i32 [ 0,%bb0 ], [ %r27,%bb4 ]
	%r10 = load i32, i32* @g0
	%r11 = icmp ne i32 %r100,%r10
	br i1 %r11,label %bb4,label %bb2
bb4:
	%r12 = call i32 @quick_read()
	%r13 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 %r100
	store i32 %r12, i32* %r13
	%r15 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 %r100
	%r17 = load i32, i32* %r15
	%r18 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r100
	store i32 %r17, i32* %r18
	%r20 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r100
	%r22 = load i32, i32* %r20
	%r23 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 %r100
	store i32 %r22, i32* %r23
	%r27 = add nsw i32 %r100, 1
	br label %bb3
bb5:
	br label %bb9
bb6:
	%r101 = phi i32 [ 0,%bb2 ], [ %r81,%bb7 ]
	%r49 = load i32, i32* @g0
	%r52 = sub nsw i32 %r49, %r101
	%r53 = icmp ne i32 %r52,0
	br i1 %r53,label %bb7,label %bb5
bb7:
	%r54 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r101
	%r56 = load i32, i32* %r54
	%r57 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 %r101
	%r59 = load i32, i32* %r57
	%r61 = sub nsw i32 %r56, %r59
	%r62 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r101
	store i32 %r61, i32* %r62
	%r64 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 %r101
	%r66 = load i32, i32* %r64
	%r67 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r101
	%r69 = load i32, i32* %r67
	%r71 = sub nsw i32 %r66, %r69
	%r72 = getelementptr [100005 x i32], [100005 x i32]* @g4, i32 0, i32 %r101
	%r74 = load i32, i32* %r72
	%r76 = sub nsw i32 %r71, %r74
	%r77 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 %r101
	store i32 %r76, i32* %r77
	%r81 = add nsw i32 %r101, 1
	br label %bb6
bb8:
	%r98 = mul i32 123, -1
	br label %bb1
bb9:
	%r102 = phi i32 [ 0,%bb5 ], [ %r97,%bb14 ]
	%r83 = load i32, i32* @g0
	%r85 = sub nsw i32 %r102, %r83
	%r86 = icmp ne i32 %r85,0
	br i1 %r86,label %bb10,label %bb8
bb10:
	%r87 = getelementptr [100005 x i32], [100005 x i32]* @g5, i32 0, i32 %r102
	%r89 = load i32, i32* %r87
	%r90 = icmp ne i32 %r89,0
	br i1 %r90,label %bb11,label %bb12
bb11:
	br label %bb1
bb12:
	%r91 = getelementptr [100005 x i32], [100005 x i32]* @g6, i32 0, i32 %r102
	%r93 = load i32, i32* %r91
	%r94 = icmp ne i32 %r93,0
	br i1 %r94,label %bb13,label %bb14
bb13:
	br label %bb1
bb14:
	%r97 = add nsw i32 %r102, 1
	br label %bb9
}
