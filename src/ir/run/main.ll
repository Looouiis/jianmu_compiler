define dso_local i32 @main() {
        %r83 = alloca i1 , align 4
        %r85 = alloca i1 , align 4
        %r87 = alloca i1 , align 4
        %r89 = alloca i1 , align 4
        %r91 = alloca i32 , align 4
        %r92 = alloca i32 , align 4
        %r93 = alloca i32 , align 4
        %r94 = alloca i32 , align 4
        %r95 = alloca i32 , align 4
        %r97 = alloca i32 , align 4
        %r98 = alloca i32 , align 4
        %r99 = alloca i32 , align 4
        %r100 = alloca i32 , align 4
        br label %bb0
bb0:
        br label %bb3
bb1:
        %r55 = phi i32 [ %r59,%bb2 ]
        ret i32 %r55
bb2:
        br label %bb1
bb3:
        %r60 = phi i32 [ 0,%bb0 ], [ %r53,%bb5 ]
        store i32 %r60, i32* %r95
        %r59 = phi i32 [ 0,%bb0 ], [ %r58,%bb5 ]
        %r96 = load i32, i32* %r95
        %r3 = icmp slt i32 %r96,20
        br i1 %r3,label %bb4,label %bb2
bb4:
        store i32 0, i32* %r94
        br label %bb6
bb5:
        %r53 = add nsw i32 %r60, 1
        br label %bb3
bb6:
        store i32 %r62, i32* %r97
        %r58 = phi i32 [ %r59,%bb4 ], [ %r57,%bb8 ]
        %r62 = load i32, i32* %r94
        %r6 = icmp slt i32 %r62,10
        store i1 %r6, i1* %r83
        %r84 = load i1, i1* %r83
        br i1 %r84,label %bb7,label %bb5
bb7:
        store i32 0, i32* %r93
        br label %bb9
bb8:
        %r50 = add nsw i32 %r62, 1
        store i32 %r50, i32* %r94
        br label %bb6
bb9:
        store i32 %r65, i32* %r100
        %r57 = phi i32 [ %r58,%bb7 ], [ %r56,%bb30 ]
        store i32 %r57, i32* %r99
        %r65 = load i32, i32* %r93
        %r9 = icmp slt i32 %r65,5
        br i1 %r9,label %bb10,label %bb8
bb10:
        store i32 %r57, i32* %r92
        br label %bb12
bb11:
        br label %bb31
bb12:
        store i32 %r56, i32* %r98
        %r69 = phi i32 [ 0,%bb10 ], [ %r39,%bb27 ]
        %r56 = load i32, i32* %r92
        %r12 = icmp slt i32 %r69,3
        store i1 %r12, i1* %r85
        %r86 = load i1, i1* %r85
        br i1 %r86,label %bb13,label %bb11
bb13:
        %r15 = add nsw i32 %r69, 1
        %r16 = icmp sge i32 %r15,3
        br i1 %r16,label %bb14,label %bb26
bb14:
        %r18 = icmp ne i32 %r69,0
        br i1 %r18,label %bb15,label %bb25
bb15:
        br label %bb16
bb16:
        %r21 = icmp ne i32 %r69,0
        br i1 %r21,label %bb18,label %bb17
bb17:
        %r24 = icmp ne i32 %r69,0
        store i1 %r24, i1* %r89
        %r90 = load i1, i1* %r89
        %r23 = xor i1 %r90, true
        store i1 %r23, i1* %r87
        %r88 = load i1, i1* %r87
        br i1 %r88,label %bb18,label %bb19
bb18:
        br label %bb20
bb19:
        br label %bb20
bb20:
        %r70 = phi i1 [ 1,%bb18 ], [ 0,%bb19 ]
        br i1 %r70,label %bb21,label %bb24
bb21:
        %r27 = mul i32 1, -1
        %r29 = sub nsw i32 %r69, %r27
        %r30 = icmp sge i32 %r29,3
        br i1 %r30,label %bb22,label %bb23
bb22:
        br label %bb11
bb23:
        br label %bb24
bb24:
        br label %bb25
bb25:
        br label %bb26
bb26:
        store i32 0, i32* %r91
        br label %bb28
bb27:
        %r39 = add nsw i32 %r69, 1
        %r42 = add nsw i32 %r56, 1
        store i32 %r42, i32* %r92
        br label %bb12
bb28:
        %r82 = load i32, i32* %r91
        %r33 = icmp slt i32 %r82,2
        br i1 %r33,label %bb29,label %bb27
bb29:
        %r36 = add nsw i32 %r82, 1
        store i32 %r36, i32* %r91
        br label %bb28
bb30:
        %r47 = add nsw i32 %r65, 1
        store i32 %r47, i32* %r93
        br label %bb9
bb31:
        %r43 = icmp ne i32 1,0
        br i1 %r43,label %bb32,label %bb30
bb32:
        br label %bb34
bb33:
        br label %bb30
bb34:
        %r44 = icmp ne i32 1,0
        br i1 %r44,label %bb35,label %bb33
bb35:
        br label %bb33
}