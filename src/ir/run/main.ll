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
define dso_local i32 @FourWhile() {
	%r54 = alloca i1 , align 4
	%r56 = alloca i32 , align 4
	%r60 = alloca i32 , align 4
	%r62 = alloca i32 , align 4
	br label %bb0
bb0:
	br label %bb3
bb1:
	%r43 = phi i32 [ %r42,%bb2 ]
	ret i32 %r43
bb2:
	%r37 = add nsw i32 %r45, %r52
	%r59 = load i32, i32* %r56
	%r39 = add nsw i32 %r59, %r37
	%r42 = add nsw i32 %r39, %r48
	br label %bb1
bb3:
	%r52 = phi i32 [ 10,%bb0 ], [ %r51,%bb5 ]
	%r48 = phi i32 [ 7,%bb0 ], [ %r47,%bb5 ]
	%r45 = phi i32 [ 6,%bb0 ], [ %r32,%bb5 ]
	%r44 = phi i32 [ 5,%bb0 ], [ %r8,%bb5 ]
	store i32 %r44, i32* %r56
	%r57 = load i32, i32* %r56
	%r5 = icmp slt i32 %r57,20
	br i1 %r5,label %bb4,label %bb2
bb4:
	%r58 = load i32, i32* %r56
	store i32 %r58, i32* %r62
	%r63 = load i32, i32* %r62
	%r8 = add nsw i32 %r63, 3
	br label %bb6
bb5:
	%r32 = sub nsw i32 %r46, 2
	br label %bb3
bb6:
	%r51 = phi i32 [ %r52,%bb4 ], [ %r50,%bb8 ]
	%r47 = phi i32 [ %r48,%bb4 ], [ %r29,%bb8 ]
	%r46 = phi i32 [ %r45,%bb4 ], [ %r13,%bb8 ]
	%r10 = icmp slt i32 %r46,10
	br i1 %r10,label %bb7,label %bb5
bb7:
	%r13 = add nsw i32 %r46, 1
	br label %bb9
bb8:
	%r29 = add nsw i32 %r49, 1
	br label %bb6
bb9:
	%r50 = phi i32 [ %r51,%bb7 ], [ %r26,%bb11 ]
	%r49 = phi i32 [ %r47,%bb7 ], [ %r18,%bb11 ]
	%r15 = icmp eq i32 %r49,7
	br i1 %r15,label %bb10,label %bb8
bb10:
	%r18 = sub nsw i32 %r49, 1
	br label %bb12
bb11:
	%r26 = sub nsw i32 %r53, 1
	br label %bb9
bb12:
	%r53 = phi i32 [ %r50,%bb10 ], [ %r23,%bb13 ]
	store i32 %r53, i32* %r60
	%r61 = load i32, i32* %r60
	%r20 = icmp slt i32 %r61,20
	store i1 %r20, i1* %r54
	%r55 = load i1, i1* %r54
	br i1 %r55,label %bb13,label %bb11
bb13:
	%r23 = add nsw i32 %r53, 3
	br label %bb12
}
define dso_local i32 @main() {
	br label %bb0
bb0:
	%r0 = call i32 @FourWhile()
	br label %bb1
bb1:
	%r1 = phi i32 [ %r0,%bb0 ]
	ret i32 %r1
}
