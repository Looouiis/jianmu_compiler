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
define dso_local i32 @main() {
	%r0 = alloca i32 , align 4
	%r3 = alloca i32 , align 4
	%r6 = alloca i32 , align 4
	%r9 = alloca i32 , align 4
	%r12 = alloca i32 , align 4
	%r15 = alloca i32 , align 4
	%r18 = alloca i32 , align 4
	%r21 = alloca i32 , align 4
	%r24 = alloca i32 , align 4
	%r27 = alloca i32 , align 4
	%r30 = alloca i32 , align 4
	%r33 = alloca i32 , align 4
	%r36 = alloca i32 , align 4
	%r39 = alloca i32 , align 4
	%r42 = alloca i32 , align 4
	%r45 = alloca i32 , align 4
	%r48 = alloca i32 , align 4
	%r51 = alloca i32 , align 4
	%r54 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 0, i32* %r0
	br label %bb2
bb1:
	%r110 = phi i32 [ 0,%bb4 ], [ 0,%bb56 ]
	ret i32 %r110
bb2:
	%r1 = load i32, i32* %r0
	%r2 = icmp slt i32 %r1,2
	br i1 %r2,label %bb3,label %bb4
bb3:
	store i32 0, i32* %r3
	br label %bb5
bb4:
	br label %bb1
bb5:
	%r4 = load i32, i32* %r3
	%r5 = icmp slt i32 %r4,2
	br i1 %r5,label %bb6,label %bb7
bb6:
	store i32 0, i32* %r6
	br label %bb8
bb7:
	%r107 = load i32, i32* %r0
	%r109 = add nsw i32 %r107, 1
	store i32 %r109, i32* %r0
	br label %bb2
bb8:
	%r7 = load i32, i32* %r6
	%r8 = icmp slt i32 %r7,2
	br i1 %r8,label %bb9,label %bb10
bb9:
	store i32 0, i32* %r9
	br label %bb11
bb10:
	%r104 = load i32, i32* %r3
	%r106 = add nsw i32 %r104, 1
	store i32 %r106, i32* %r3
	br label %bb5
bb11:
	%r10 = load i32, i32* %r9
	%r11 = icmp slt i32 %r10,2
	br i1 %r11,label %bb12,label %bb13
bb12:
	store i32 0, i32* %r12
	br label %bb14
bb13:
	%r101 = load i32, i32* %r6
	%r103 = add nsw i32 %r101, 1
	store i32 %r103, i32* %r6
	br label %bb8
bb14:
	%r13 = load i32, i32* %r12
	%r14 = icmp slt i32 %r13,2
	br i1 %r14,label %bb15,label %bb16
bb15:
	store i32 0, i32* %r15
	br label %bb17
bb16:
	%r98 = load i32, i32* %r9
	%r100 = add nsw i32 %r98, 1
	store i32 %r100, i32* %r9
	br label %bb11
bb17:
	%r16 = load i32, i32* %r15
	%r17 = icmp slt i32 %r16,2
	br i1 %r17,label %bb18,label %bb19
bb18:
	store i32 0, i32* %r18
	br label %bb20
bb19:
	%r95 = load i32, i32* %r12
	%r97 = add nsw i32 %r95, 1
	store i32 %r97, i32* %r12
	br label %bb14
bb20:
	%r19 = load i32, i32* %r18
	%r20 = icmp slt i32 %r19,2
	br i1 %r20,label %bb21,label %bb22
bb21:
	store i32 0, i32* %r21
	br label %bb23
bb22:
	%r92 = load i32, i32* %r15
	%r94 = add nsw i32 %r92, 1
	store i32 %r94, i32* %r15
	br label %bb17
bb23:
	%r22 = load i32, i32* %r21
	%r23 = icmp slt i32 %r22,2
	br i1 %r23,label %bb24,label %bb25
bb24:
	store i32 0, i32* %r24
	br label %bb26
bb25:
	%r89 = load i32, i32* %r18
	%r91 = add nsw i32 %r89, 1
	store i32 %r91, i32* %r18
	br label %bb20
bb26:
	%r25 = load i32, i32* %r24
	%r26 = icmp slt i32 %r25,2
	br i1 %r26,label %bb27,label %bb28
bb27:
	store i32 0, i32* %r27
	br label %bb29
bb28:
	%r86 = load i32, i32* %r21
	%r88 = add nsw i32 %r86, 1
	store i32 %r88, i32* %r21
	br label %bb23
bb29:
	%r28 = load i32, i32* %r27
	%r29 = icmp slt i32 %r28,2
	br i1 %r29,label %bb30,label %bb31
bb30:
	store i32 0, i32* %r30
	br label %bb32
bb31:
	%r83 = load i32, i32* %r24
	%r85 = add nsw i32 %r83, 1
	store i32 %r85, i32* %r24
	br label %bb26
bb32:
	%r31 = load i32, i32* %r30
	%r32 = icmp slt i32 %r31,2
	br i1 %r32,label %bb33,label %bb34
bb33:
	store i32 0, i32* %r33
	br label %bb35
bb34:
	%r80 = load i32, i32* %r27
	%r82 = add nsw i32 %r80, 1
	store i32 %r82, i32* %r27
	br label %bb29
bb35:
	%r34 = load i32, i32* %r33
	%r35 = icmp slt i32 %r34,2
	br i1 %r35,label %bb36,label %bb37
bb36:
	store i32 0, i32* %r36
	br label %bb38
bb37:
	%r77 = load i32, i32* %r30
	%r79 = add nsw i32 %r77, 1
	store i32 %r79, i32* %r30
	br label %bb32
bb38:
	%r37 = load i32, i32* %r36
	%r38 = icmp slt i32 %r37,2
	br i1 %r38,label %bb39,label %bb40
bb39:
	store i32 0, i32* %r39
	br label %bb41
bb40:
	%r74 = load i32, i32* %r33
	%r76 = add nsw i32 %r74, 1
	store i32 %r76, i32* %r33
	br label %bb35
bb41:
	%r40 = load i32, i32* %r39
	%r41 = icmp slt i32 %r40,2
	br i1 %r41,label %bb42,label %bb43
bb42:
	store i32 0, i32* %r42
	br label %bb44
bb43:
	%r71 = load i32, i32* %r36
	%r73 = add nsw i32 %r71, 1
	store i32 %r73, i32* %r36
	br label %bb38
bb44:
	%r43 = load i32, i32* %r42
	%r44 = icmp slt i32 %r43,2
	br i1 %r44,label %bb45,label %bb46
bb45:
	store i32 0, i32* %r45
	br label %bb47
bb46:
	%r68 = load i32, i32* %r39
	%r70 = add nsw i32 %r68, 1
	store i32 %r70, i32* %r39
	br label %bb41
bb47:
	%r46 = load i32, i32* %r45
	%r47 = icmp slt i32 %r46,2
	br i1 %r47,label %bb48,label %bb49
bb48:
	store i32 0, i32* %r48
	br label %bb50
bb49:
	%r65 = load i32, i32* %r42
	%r67 = add nsw i32 %r65, 1
	store i32 %r67, i32* %r42
	br label %bb44
bb50:
	%r49 = load i32, i32* %r48
	%r50 = icmp slt i32 %r49,2
	br i1 %r50,label %bb51,label %bb52
bb51:
	store i32 0, i32* %r51
	br label %bb53
bb52:
	%r62 = load i32, i32* %r45
	%r64 = add nsw i32 %r62, 1
	store i32 %r64, i32* %r45
	br label %bb47
bb53:
	%r52 = load i32, i32* %r51
	%r53 = icmp slt i32 %r52,2
	br i1 %r53,label %bb54,label %bb55
bb54:
	%r55 = load i32, i32* %r51
	store i32 %r55, i32* %r54
	%r56 = load i32, i32* %r51
	%r58 = add nsw i32 %r56, 1
	store i32 %r58, i32* %r51
	br label %bb53
bb55:
	%r59 = load i32, i32* %r48
	%r61 = add nsw i32 %r59, 1
	store i32 %r61, i32* %r48
	br label %bb50
bb56:
	br label %bb1
}
