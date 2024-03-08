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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg)
@g0 = dso_local global i32 zeroinitializer, align 4
@g1 = dso_local global i32 zeroinitializer, align 4
define dso_local float @params_f40(float %r2, float %r4, float %r6, float %r8, float %r10, float %r12, float %r14, float %r16, float %r18, float %r20, float %r22, float %r24, float %r26, float %r28, float %r30, float %r32, float %r34, float %r36, float %r38, float %r40, float %r42, float %r44, float %r46, float %r48, float %r50, float %r52, float %r54, float %r56, float %r58, float %r60, float %r62, float %r64, float %r66, float %r68, float %r70, float %r72, float %r74, float %r76, float %r78, float %r80) {
	%r3 = alloca float , align 4
	%r5 = alloca float , align 4
	%r7 = alloca float , align 4
	%r9 = alloca float , align 4
	%r11 = alloca float , align 4
	%r13 = alloca float , align 4
	%r15 = alloca float , align 4
	%r17 = alloca float , align 4
	%r19 = alloca float , align 4
	%r21 = alloca float , align 4
	%r23 = alloca float , align 4
	%r25 = alloca float , align 4
	%r27 = alloca float , align 4
	%r29 = alloca float , align 4
	%r31 = alloca float , align 4
	%r33 = alloca float , align 4
	%r35 = alloca float , align 4
	%r37 = alloca float , align 4
	%r39 = alloca float , align 4
	%r41 = alloca float , align 4
	%r43 = alloca float , align 4
	%r45 = alloca float , align 4
	%r47 = alloca float , align 4
	%r49 = alloca float , align 4
	%r51 = alloca float , align 4
	%r53 = alloca float , align 4
	%r55 = alloca float , align 4
	%r57 = alloca float , align 4
	%r59 = alloca float , align 4
	%r61 = alloca float , align 4
	%r63 = alloca float , align 4
	%r65 = alloca float , align 4
	%r67 = alloca float , align 4
	%r69 = alloca float , align 4
	%r71 = alloca float , align 4
	%r73 = alloca float , align 4
	%r75 = alloca float , align 4
	%r77 = alloca float , align 4
	%r79 = alloca float , align 4
	%r81 = alloca float , align 4
	%r85 = alloca [10 x float] , align 4
	br label %bb1566257203
bb1566257203:
	store float %r2, float* %r3
	store float %r4, float* %r5
	store float %r6, float* %r7
	store float %r8, float* %r9
	store float %r10, float* %r11
	store float %r12, float* %r13
	store float %r14, float* %r15
	store float %r16, float* %r17
	store float %r18, float* %r19
	store float %r20, float* %r21
	store float %r22, float* %r23
	store float %r24, float* %r25
	store float %r26, float* %r27
	store float %r28, float* %r29
	store float %r30, float* %r31
	store float %r32, float* %r33
	store float %r34, float* %r35
	store float %r36, float* %r37
	store float %r38, float* %r39
	store float %r40, float* %r41
	store float %r42, float* %r43
	store float %r44, float* %r45
	store float %r46, float* %r47
	store float %r48, float* %r49
	store float %r50, float* %r51
	store float %r52, float* %r53
	store float %r54, float* %r55
	store float %r56, float* %r57
	store float %r58, float* %r59
	store float %r60, float* %r61
	store float %r62, float* %r63
	store float %r64, float* %r65
	store float %r66, float* %r67
	store float %r68, float* %r69
	store float %r70, float* %r71
	store float %r72, float* %r73
	store float %r74, float* %r75
	store float %r76, float* %r77
	store float %r78, float* %r79
	store float %r80, float* %r81
	%r82 = load float, float* %r81
	%r83 = sitofp i32 0 to float
	%r84 = fcmp one float %r82,%r83
	br i1 %r84,label %bb1566257206,label %bb1566257207
bb1566257204:
	%r247 = phi float [ %r199,%bb1566257206 ], [ %r246,%bb1566257207 ], [ 0x0000000000000000,%bb1566257205 ]
	ret float %r247
bb1566257205:
	br label %bb1566257204
bb1566257206:
	call void @llvm.memset.p0.i64(float* %r85, i8 0, i64 40, i1 false)
	%r86 = load float, float* %r3
	%r87 = load float, float* %r5
	%r89 = fadd float %r86, %r87
	%r90 = load float, float* %r7
	%r92 = fadd float %r89, %r90
	%r93 = load float, float* %r9
	%r95 = fadd float %r92, %r93
	%r96 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 0
	store float %r95, float* %r96
	%r97 = load float, float* %r11
	%r98 = load float, float* %r13
	%r100 = fadd float %r97, %r98
	%r101 = load float, float* %r15
	%r103 = fadd float %r100, %r101
	%r104 = load float, float* %r17
	%r106 = fadd float %r103, %r104
	%r107 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 1
	store float %r106, float* %r107
	%r108 = load float, float* %r19
	%r109 = load float, float* %r21
	%r111 = fadd float %r108, %r109
	%r112 = load float, float* %r23
	%r114 = fadd float %r111, %r112
	%r115 = load float, float* %r25
	%r117 = fadd float %r114, %r115
	%r118 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 2
	store float %r117, float* %r118
	%r119 = load float, float* %r27
	%r120 = load float, float* %r29
	%r122 = fadd float %r119, %r120
	%r123 = load float, float* %r31
	%r125 = fadd float %r122, %r123
	%r126 = load float, float* %r33
	%r128 = fadd float %r125, %r126
	%r129 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 3
	store float %r128, float* %r129
	%r130 = load float, float* %r35
	%r131 = load float, float* %r37
	%r133 = fadd float %r130, %r131
	%r134 = load float, float* %r39
	%r136 = fadd float %r133, %r134
	%r137 = load float, float* %r41
	%r139 = fadd float %r136, %r137
	%r140 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 4
	store float %r139, float* %r140
	%r141 = load float, float* %r43
	%r142 = load float, float* %r45
	%r144 = fadd float %r141, %r142
	%r145 = load float, float* %r47
	%r147 = fadd float %r144, %r145
	%r148 = load float, float* %r49
	%r150 = fadd float %r147, %r148
	%r151 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 5
	store float %r150, float* %r151
	%r152 = load float, float* %r51
	%r153 = load float, float* %r53
	%r155 = fadd float %r152, %r153
	%r156 = load float, float* %r55
	%r158 = fadd float %r155, %r156
	%r159 = load float, float* %r57
	%r161 = fadd float %r158, %r159
	%r162 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 6
	store float %r161, float* %r162
	%r163 = load float, float* %r59
	%r164 = load float, float* %r61
	%r166 = fadd float %r163, %r164
	%r167 = load float, float* %r63
	%r169 = fadd float %r166, %r167
	%r170 = load float, float* %r65
	%r172 = fadd float %r169, %r170
	%r173 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 7
	store float %r172, float* %r173
	%r174 = load float, float* %r67
	%r175 = load float, float* %r69
	%r177 = fadd float %r174, %r175
	%r178 = load float, float* %r71
	%r180 = fadd float %r177, %r178
	%r181 = load float, float* %r73
	%r183 = fadd float %r180, %r181
	%r184 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 8
	store float %r183, float* %r184
	%r185 = load float, float* %r75
	%r186 = load float, float* %r77
	%r188 = fadd float %r185, %r186
	%r189 = load float, float* %r79
	%r191 = fadd float %r188, %r189
	%r192 = load float, float* %r81
	%r194 = fadd float %r191, %r192
	%r195 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 9
	store float %r194, float* %r195
	%r196 = getelementptr [10 x float], [10 x float]* %r85, i32 0
	call void @putfarray(i32 10, float* %r196)
	%r198 = load i32, i32* @g0
	%r197 = getelementptr [10 x float], [10 x float]* %r85, i32 0, i32 %r198
	%r199 = load float, float* %r197
	br label %bb1566257204
bb1566257207:
	%r200 = load float, float* %r5
	%r201 = load float, float* %r7
	%r202 = load float, float* %r9
	%r203 = load float, float* %r11
	%r204 = load float, float* %r13
	%r205 = load float, float* %r15
	%r206 = load float, float* %r17
	%r207 = load float, float* %r19
	%r208 = load float, float* %r21
	%r209 = load float, float* %r23
	%r210 = load float, float* %r25
	%r211 = load float, float* %r27
	%r212 = load float, float* %r29
	%r213 = load float, float* %r31
	%r214 = load float, float* %r33
	%r215 = load float, float* %r35
	%r216 = load float, float* %r37
	%r217 = load float, float* %r39
	%r218 = load float, float* %r41
	%r219 = load float, float* %r43
	%r220 = load float, float* %r45
	%r221 = load float, float* %r47
	%r222 = load float, float* %r49
	%r223 = load float, float* %r51
	%r224 = load float, float* %r53
	%r225 = load float, float* %r55
	%r226 = load float, float* %r57
	%r227 = load float, float* %r59
	%r228 = load float, float* %r61
	%r229 = load float, float* %r63
	%r230 = load float, float* %r65
	%r231 = load float, float* %r67
	%r232 = load float, float* %r69
	%r233 = load float, float* %r71
	%r234 = load float, float* %r73
	%r235 = load float, float* %r75
	%r236 = load float, float* %r77
	%r237 = load float, float* %r79
	%r238 = load float, float* %r81
	%r239 = load float, float* %r3
	%r240 = load float, float* %r5
	%r242 = fadd float %r239, %r240
	%r243 = load float, float* %r7
	%r245 = fadd float %r242, %r243
	%r246 = call float @params_f40(float %r200, float %r201, float %r202, float %r203, float %r204, float %r205, float %r206, float %r207, float %r208, float %r209, float %r210, float %r211, float %r212, float %r213, float %r214, float %r215, float %r216, float %r217, float %r218, float %r219, float %r220, float %r221, float %r222, float %r223, float %r224, float %r225, float %r226, float %r227, float %r228, float %r229, float %r230, float %r231, float %r232, float %r233, float %r234, float %r235, float %r236, float %r237, float %r238, float %r245)
	br label %bb1566257204
bb1566257209:
	br label %bb1566257205
bb1566257210:
	br label %bb1566257205
}
define dso_local float @params_f40_i24(i32 %r2, i32 %r4, i32 %r6, float %r8, i32 %r10, i32 %r12, i32 %r14, float %r16, float %r18, float %r20, i32 %r22, float %r24, float %r26, i32 %r28, float %r30, i32 %r32, float %r34, float %r36, float %r38, float %r40, float %r42, float %r44, i32 %r46, float %r48, i32 %r50, i32 %r52, float %r54, float %r56, float %r58, float %r60, float %r62, i32 %r64, float %r66, i32 %r68, float %r70, float %r72, float %r74, float %r76, i32 %r78, i32 %r80, float %r82, float %r84, float %r86, i32 %r88, float %r90, i32 %r92, i32 %r94, float %r96, float %r98, float %r100, float %r102, i32 %r104, i32 %r106, i32 %r108, float %r110, float %r112, float %r114, float %r116, float %r118, float %r120, i32 %r122, float %r124, i32 %r126, float %r128) {
	%r3 = alloca i32 , align 4
	%r5 = alloca i32 , align 4
	%r7 = alloca i32 , align 4
	%r9 = alloca float , align 4
	%r11 = alloca i32 , align 4
	%r13 = alloca i32 , align 4
	%r15 = alloca i32 , align 4
	%r17 = alloca float , align 4
	%r19 = alloca float , align 4
	%r21 = alloca float , align 4
	%r23 = alloca i32 , align 4
	%r25 = alloca float , align 4
	%r27 = alloca float , align 4
	%r29 = alloca i32 , align 4
	%r31 = alloca float , align 4
	%r33 = alloca i32 , align 4
	%r35 = alloca float , align 4
	%r37 = alloca float , align 4
	%r39 = alloca float , align 4
	%r41 = alloca float , align 4
	%r43 = alloca float , align 4
	%r45 = alloca float , align 4
	%r47 = alloca i32 , align 4
	%r49 = alloca float , align 4
	%r51 = alloca i32 , align 4
	%r53 = alloca i32 , align 4
	%r55 = alloca float , align 4
	%r57 = alloca float , align 4
	%r59 = alloca float , align 4
	%r61 = alloca float , align 4
	%r63 = alloca float , align 4
	%r65 = alloca i32 , align 4
	%r67 = alloca float , align 4
	%r69 = alloca i32 , align 4
	%r71 = alloca float , align 4
	%r73 = alloca float , align 4
	%r75 = alloca float , align 4
	%r77 = alloca float , align 4
	%r79 = alloca i32 , align 4
	%r81 = alloca i32 , align 4
	%r83 = alloca float , align 4
	%r85 = alloca float , align 4
	%r87 = alloca float , align 4
	%r89 = alloca i32 , align 4
	%r91 = alloca float , align 4
	%r93 = alloca i32 , align 4
	%r95 = alloca i32 , align 4
	%r97 = alloca float , align 4
	%r99 = alloca float , align 4
	%r101 = alloca float , align 4
	%r103 = alloca float , align 4
	%r105 = alloca i32 , align 4
	%r107 = alloca i32 , align 4
	%r109 = alloca i32 , align 4
	%r111 = alloca float , align 4
	%r113 = alloca float , align 4
	%r115 = alloca float , align 4
	%r117 = alloca float , align 4
	%r119 = alloca float , align 4
	%r121 = alloca float , align 4
	%r123 = alloca i32 , align 4
	%r125 = alloca float , align 4
	%r127 = alloca i32 , align 4
	%r129 = alloca float , align 4
	%r132 = alloca [10 x float] , align 4
	%r243 = alloca [8 x i32] , align 4
	%r310 = alloca i32 , align 4
	br label %bb0
bb0:
	store i32 %r2, i32* %r3
	store i32 %r4, i32* %r5
	store i32 %r6, i32* %r7
	store float %r8, float* %r9
	store i32 %r10, i32* %r11
	store i32 %r12, i32* %r13
	store i32 %r14, i32* %r15
	store float %r16, float* %r17
	store float %r18, float* %r19
	store float %r20, float* %r21
	store i32 %r22, i32* %r23
	store float %r24, float* %r25
	store float %r26, float* %r27
	store i32 %r28, i32* %r29
	store float %r30, float* %r31
	store i32 %r32, i32* %r33
	store float %r34, float* %r35
	store float %r36, float* %r37
	store float %r38, float* %r39
	store float %r40, float* %r41
	store float %r42, float* %r43
	store float %r44, float* %r45
	store i32 %r46, i32* %r47
	store float %r48, float* %r49
	store i32 %r50, i32* %r51
	store i32 %r52, i32* %r53
	store float %r54, float* %r55
	store float %r56, float* %r57
	store float %r58, float* %r59
	store float %r60, float* %r61
	store float %r62, float* %r63
	store i32 %r64, i32* %r65
	store float %r66, float* %r67
	store i32 %r68, i32* %r69
	store float %r70, float* %r71
	store float %r72, float* %r73
	store float %r74, float* %r75
	store float %r76, float* %r77
	store i32 %r78, i32* %r79
	store i32 %r80, i32* %r81
	store float %r82, float* %r83
	store float %r84, float* %r85
	store float %r86, float* %r87
	store i32 %r88, i32* %r89
	store float %r90, float* %r91
	store i32 %r92, i32* %r93
	store i32 %r94, i32* %r95
	store float %r96, float* %r97
	store float %r98, float* %r99
	store float %r100, float* %r101
	store float %r102, float* %r103
	store i32 %r104, i32* %r105
	store i32 %r106, i32* %r107
	store i32 %r108, i32* %r109
	store float %r110, float* %r111
	store float %r112, float* %r113
	store float %r114, float* %r115
	store float %r116, float* %r117
	store float %r118, float* %r119
	store float %r120, float* %r121
	store i32 %r122, i32* %r123
	store float %r124, float* %r125
	store i32 %r126, i32* %r127
	store float %r128, float* %r129
	%r130 = load i32, i32* %r3
	%r131 = icmp ne i32 %r130,0
	br i1 %r131,label %bb3,label %bb4
bb1:
	%r397 = phi float [ %r331,%bb7 ], [ %r396,%bb4 ], [ 0x0000000000000000,%bb2 ]
	ret float %r397
bb2:
	br label %bb1
bb3:
	call void @llvm.memset.p0.i64(float* %r132, i8 0, i64 40, i1 false)
	%r133 = load float, float* %r87
	%r134 = load float, float* %r39
	%r136 = fadd float %r133, %r134
	%r137 = load float, float* %r125
	%r139 = fadd float %r136, %r137
	%r140 = load float, float* %r25
	%r142 = fadd float %r139, %r140
	%r143 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 0
	store float %r142, float* %r143
	%r144 = load float, float* %r9
	%r145 = load float, float* %r75
	%r147 = fadd float %r144, %r145
	%r148 = load float, float* %r45
	%r150 = fadd float %r147, %r148
	%r151 = load float, float* %r21
	%r153 = fadd float %r150, %r151
	%r154 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 1
	store float %r153, float* %r154
	%r155 = load float, float* %r17
	%r156 = load float, float* %r61
	%r158 = fadd float %r155, %r156
	%r159 = load float, float* %r85
	%r161 = fadd float %r158, %r159
	%r162 = load float, float* %r41
	%r164 = fadd float %r161, %r162
	%r165 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 2
	store float %r164, float* %r165
	%r166 = load float, float* %r37
	%r167 = load float, float* %r101
	%r169 = fadd float %r166, %r167
	%r170 = load float, float* %r83
	%r172 = fadd float %r169, %r170
	%r173 = load float, float* %r19
	%r175 = fadd float %r172, %r173
	%r176 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 3
	store float %r175, float* %r176
	%r177 = load float, float* %r73
	%r178 = load float, float* %r121
	%r180 = fadd float %r177, %r178
	%r181 = load float, float* %r111
	%r183 = fadd float %r180, %r181
	%r184 = load float, float* %r113
	%r186 = fadd float %r183, %r184
	%r187 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 4
	store float %r186, float* %r187
	%r188 = load float, float* %r55
	%r189 = load float, float* %r71
	%r191 = fadd float %r188, %r189
	%r192 = load float, float* %r115
	%r194 = fadd float %r191, %r192
	%r195 = load float, float* %r59
	%r197 = fadd float %r194, %r195
	%r198 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 5
	store float %r197, float* %r198
	%r199 = load float, float* %r99
	%r200 = load float, float* %r63
	%r202 = fadd float %r199, %r200
	%r203 = load float, float* %r117
	%r205 = fadd float %r202, %r203
	%r206 = load float, float* %r97
	%r208 = fadd float %r205, %r206
	%r209 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 6
	store float %r208, float* %r209
	%r210 = load float, float* %r27
	%r211 = load float, float* %r103
	%r213 = fadd float %r210, %r211
	%r214 = load float, float* %r35
	%r216 = fadd float %r213, %r214
	%r217 = load float, float* %r91
	%r219 = fadd float %r216, %r217
	%r220 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 7
	store float %r219, float* %r220
	%r221 = load float, float* %r49
	%r222 = load float, float* %r57
	%r224 = fadd float %r221, %r222
	%r225 = load float, float* %r77
	%r227 = fadd float %r224, %r225
	%r228 = load float, float* %r129
	%r230 = fadd float %r227, %r228
	%r231 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 8
	store float %r230, float* %r231
	%r232 = load float, float* %r119
	%r233 = load float, float* %r31
	%r235 = fadd float %r232, %r233
	%r236 = load float, float* %r43
	%r238 = fadd float %r235, %r236
	%r239 = load float, float* %r67
	%r241 = fadd float %r238, %r239
	%r242 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 9
	store float %r241, float* %r242
	call void @llvm.memset.p0.i64(i32* %r243, i8 0, i64 32, i1 false)
	%r244 = load i32, i32* %r29
	%r245 = load i32, i32* %r11
	%r247 = add nsw i32 %r244, %r245
	%r248 = load i32, i32* %r5
	%r250 = add nsw i32 %r247, %r248
	%r251 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 0
	store i32 %r250, i32* %r251
	%r252 = load i32, i32* %r105
	%r253 = load i32, i32* %r13
	%r255 = add nsw i32 %r252, %r253
	%r256 = load i32, i32* %r15
	%r258 = add nsw i32 %r255, %r256
	%r259 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 1
	store i32 %r258, i32* %r259
	%r260 = load i32, i32* %r7
	%r261 = load i32, i32* %r47
	%r263 = add nsw i32 %r260, %r261
	%r264 = load i32, i32* %r65
	%r266 = add nsw i32 %r263, %r264
	%r267 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 2
	store i32 %r266, i32* %r267
	%r268 = load i32, i32* %r81
	%r269 = load i32, i32* %r51
	%r271 = add nsw i32 %r268, %r269
	%r272 = load i32, i32* %r93
	%r274 = add nsw i32 %r271, %r272
	%r275 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 3
	store i32 %r274, i32* %r275
	%r276 = load i32, i32* %r89
	%r277 = load i32, i32* %r53
	%r279 = add nsw i32 %r276, %r277
	%r280 = load i32, i32* %r127
	%r282 = add nsw i32 %r279, %r280
	%r283 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 4
	store i32 %r282, i32* %r283
	%r284 = load i32, i32* %r123
	%r285 = load i32, i32* %r95
	%r287 = add nsw i32 %r284, %r285
	%r288 = load i32, i32* %r69
	%r290 = add nsw i32 %r287, %r288
	%r291 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 5
	store i32 %r290, i32* %r291
	%r292 = load i32, i32* %r79
	%r293 = load i32, i32* %r33
	%r295 = add nsw i32 %r292, %r293
	%r296 = load i32, i32* %r109
	%r298 = add nsw i32 %r295, %r296
	%r299 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 6
	store i32 %r298, i32* %r299
	%r300 = load i32, i32* %r107
	%r301 = load i32, i32* %r23
	%r303 = add nsw i32 %r300, %r301
	%r304 = load i32, i32* %r3
	%r306 = add nsw i32 %r303, %r304
	%r307 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 7
	store i32 %r306, i32* %r307
	%r308 = getelementptr [10 x float], [10 x float]* %r132, i32 0
	call void @putfarray(i32 10, float* %r308)
	%r309 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0
	call void @putarray(i32 8, i32* %r309)
	store i32 0, i32* %r310
	br label %bb6
bb4:
	%r332 = load i32, i32* %r11
	%r333 = load i32, i32* %r5
	%r334 = load i32, i32* %r7
	%r335 = load float, float* %r9
	%r336 = load i32, i32* %r11
	%r337 = load i32, i32* %r13
	%r338 = load i32, i32* %r15
	%r339 = load float, float* %r17
	%r340 = load float, float* %r19
	%r341 = load float, float* %r21
	%r342 = load i32, i32* %r23
	%r343 = load float, float* %r25
	%r344 = load float, float* %r27
	%r345 = load i32, i32* %r29
	%r346 = load float, float* %r31
	%r347 = load i32, i32* %r33
	%r348 = load float, float* %r35
	%r349 = load float, float* %r37
	%r350 = load float, float* %r39
	%r351 = load float, float* %r41
	%r352 = load float, float* %r43
	%r353 = load float, float* %r45
	%r354 = load i32, i32* %r47
	%r355 = load float, float* %r49
	%r356 = load i32, i32* %r51
	%r357 = load i32, i32* %r53
	%r358 = load float, float* %r55
	%r359 = load float, float* %r57
	%r360 = load float, float* %r59
	%r361 = load float, float* %r61
	%r362 = load float, float* %r63
	%r363 = load i32, i32* %r65
	%r364 = load float, float* %r67
	%r365 = load i32, i32* %r69
	%r366 = load float, float* %r71
	%r367 = load float, float* %r73
	%r368 = load float, float* %r75
	%r369 = load float, float* %r77
	%r370 = load i32, i32* %r79
	%r371 = load i32, i32* %r81
	%r372 = load float, float* %r83
	%r373 = load float, float* %r85
	%r374 = load float, float* %r87
	%r375 = load i32, i32* %r89
	%r376 = load float, float* %r91
	%r377 = load i32, i32* %r93
	%r378 = load i32, i32* %r95
	%r379 = load float, float* %r97
	%r380 = load float, float* %r99
	%r381 = load float, float* %r101
	%r382 = load float, float* %r103
	%r383 = load i32, i32* %r105
	%r384 = load i32, i32* %r107
	%r385 = load i32, i32* %r109
	%r386 = load float, float* %r111
	%r387 = load float, float* %r113
	%r388 = load float, float* %r115
	%r389 = load float, float* %r117
	%r390 = load float, float* %r119
	%r391 = load float, float* %r121
	%r392 = load i32, i32* %r123
	%r393 = load float, float* %r125
	%r394 = load i32, i32* %r127
	%r395 = load float, float* %r129
	%r396 = call float @params_f40_i24(i32 %r332, i32 %r333, i32 %r334, float %r335, i32 %r336, i32 %r337, i32 %r338, float %r339, float %r340, float %r341, i32 %r342, float %r343, float %r344, i32 %r345, float %r346, i32 %r347, float %r348, float %r349, float %r350, float %r351, float %r352, float %r353, i32 %r354, float %r355, i32 %r356, i32 %r357, float %r358, float %r359, float %r360, float %r361, float %r362, i32 %r363, float %r364, i32 %r365, float %r366, float %r367, float %r368, float %r369, i32 %r370, i32 %r371, float %r372, float %r373, float %r374, i32 %r375, float %r376, i32 %r377, i32 %r378, float %r379, float %r380, float %r381, float %r382, i32 %r383, i32 %r384, i32 %r385, float %r386, float %r387, float %r388, float %r389, float %r390, float %r391, i32 %r392, float %r393, i32 %r394, float %r395)
	br label %bb1
bb6:
	%r311 = load i32, i32* %r310
	%r312 = icmp slt i32 %r311,8
	br i1 %r312,label %bb8,label %bb7
bb7:
	%r329 = load i32, i32* @g0
	%r328 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 %r329
	%r330 = load i32, i32* %r328
	%r331 = sitofp i32 %r330 to float
	br label %bb1
bb8:
	%r314 = load i32, i32* %r310
	%r313 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 %r314
	%r315 = load i32, i32* %r313
	%r317 = load i32, i32* %r310
	%r316 = getelementptr [10 x float], [10 x float]* %r132, i32 0, i32 %r317
	%r318 = load float, float* %r316
	%r320 = sitofp i32 %r315 to float
	%r321 = fsub float %r320, %r318
	%r322 = fptosi float %r321 to i32
	%r324 = load i32, i32* %r310
	%r323 = getelementptr [8 x i32], [8 x i32]* %r243, i32 0, i32 %r324
	store i32 %r322, i32* %r323
	%r325 = load i32, i32* %r310
	%r327 = add nsw i32 %r325, 1
	store i32 %r327, i32* %r310
	br label %bb6
bb9:
	br label %bb2
bb10:
	br label %bb2
}
define dso_local float @params_fa40(float* %r2, float* %r3, float* %r4, float* %r5, float* %r6, float* %r7, float* %r8, float* %r9, float* %r10, float* %r11, float* %r12, float* %r13, float* %r14, float* %r15, float* %r16, float* %r17, float* %r18, float* %r19, float* %r20, float* %r21, float* %r22, float* %r23, float* %r24, float* %r25, float* %r26, float* %r27, float* %r28, float* %r29, float* %r30, float* %r31, float* %r32, float* %r33, float* %r34, float* %r35, float* %r36, float* %r37, float* %r38, float* %r39, float* %r40, float* %r41) {
	%r42 = alloca [10 x float] , align 4
	br label %bb0
bb0:
	call void @llvm.memset.p0.i64(float* %r42, i8 0, i64 40, i1 false)
	%r44 = load i32, i32* @g0
	%r43 = getelementptr float, ptr %r2, i32 %r44
	%r45 = load float, float* %r43
	%r47 = load i32, i32* @g0
	%r46 = getelementptr float, ptr %r3, i32 %r47
	%r48 = load float, float* %r46
	%r50 = fadd float %r45, %r48
	%r52 = load i32, i32* @g0
	%r51 = getelementptr float, ptr %r4, i32 %r52
	%r53 = load float, float* %r51
	%r55 = fadd float %r50, %r53
	%r57 = load i32, i32* @g0
	%r56 = getelementptr float, ptr %r5, i32 %r57
	%r58 = load float, float* %r56
	%r60 = fadd float %r55, %r58
	%r61 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 0
	store float %r60, float* %r61
	%r63 = load i32, i32* @g0
	%r62 = getelementptr float, ptr %r6, i32 %r63
	%r64 = load float, float* %r62
	%r66 = load i32, i32* @g0
	%r65 = getelementptr float, ptr %r7, i32 %r66
	%r67 = load float, float* %r65
	%r69 = fadd float %r64, %r67
	%r71 = load i32, i32* @g0
	%r70 = getelementptr float, ptr %r8, i32 %r71
	%r72 = load float, float* %r70
	%r74 = fadd float %r69, %r72
	%r76 = load i32, i32* @g0
	%r75 = getelementptr float, ptr %r9, i32 %r76
	%r77 = load float, float* %r75
	%r79 = fadd float %r74, %r77
	%r80 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 1
	store float %r79, float* %r80
	%r82 = load i32, i32* @g0
	%r81 = getelementptr float, ptr %r10, i32 %r82
	%r83 = load float, float* %r81
	%r85 = load i32, i32* @g0
	%r84 = getelementptr float, ptr %r11, i32 %r85
	%r86 = load float, float* %r84
	%r88 = fadd float %r83, %r86
	%r90 = load i32, i32* @g0
	%r89 = getelementptr float, ptr %r12, i32 %r90
	%r91 = load float, float* %r89
	%r93 = fadd float %r88, %r91
	%r95 = load i32, i32* @g0
	%r94 = getelementptr float, ptr %r13, i32 %r95
	%r96 = load float, float* %r94
	%r98 = fadd float %r93, %r96
	%r99 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 2
	store float %r98, float* %r99
	%r101 = load i32, i32* @g0
	%r100 = getelementptr float, ptr %r14, i32 %r101
	%r102 = load float, float* %r100
	%r104 = load i32, i32* @g0
	%r103 = getelementptr float, ptr %r15, i32 %r104
	%r105 = load float, float* %r103
	%r107 = fadd float %r102, %r105
	%r109 = load i32, i32* @g0
	%r108 = getelementptr float, ptr %r16, i32 %r109
	%r110 = load float, float* %r108
	%r112 = fadd float %r107, %r110
	%r114 = load i32, i32* @g0
	%r113 = getelementptr float, ptr %r17, i32 %r114
	%r115 = load float, float* %r113
	%r117 = fadd float %r112, %r115
	%r118 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 3
	store float %r117, float* %r118
	%r120 = load i32, i32* @g0
	%r119 = getelementptr float, ptr %r18, i32 %r120
	%r121 = load float, float* %r119
	%r123 = load i32, i32* @g0
	%r122 = getelementptr float, ptr %r19, i32 %r123
	%r124 = load float, float* %r122
	%r126 = fadd float %r121, %r124
	%r128 = load i32, i32* @g0
	%r127 = getelementptr float, ptr %r20, i32 %r128
	%r129 = load float, float* %r127
	%r131 = fadd float %r126, %r129
	%r133 = load i32, i32* @g0
	%r132 = getelementptr float, ptr %r21, i32 %r133
	%r134 = load float, float* %r132
	%r136 = fadd float %r131, %r134
	%r137 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 4
	store float %r136, float* %r137
	%r139 = load i32, i32* @g0
	%r138 = getelementptr float, ptr %r22, i32 %r139
	%r140 = load float, float* %r138
	%r142 = load i32, i32* @g0
	%r141 = getelementptr float, ptr %r23, i32 %r142
	%r143 = load float, float* %r141
	%r145 = fadd float %r140, %r143
	%r147 = load i32, i32* @g0
	%r146 = getelementptr float, ptr %r24, i32 %r147
	%r148 = load float, float* %r146
	%r150 = fadd float %r145, %r148
	%r152 = load i32, i32* @g0
	%r151 = getelementptr float, ptr %r25, i32 %r152
	%r153 = load float, float* %r151
	%r155 = fadd float %r150, %r153
	%r156 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 5
	store float %r155, float* %r156
	%r158 = load i32, i32* @g0
	%r157 = getelementptr float, ptr %r26, i32 %r158
	%r159 = load float, float* %r157
	%r161 = load i32, i32* @g0
	%r160 = getelementptr float, ptr %r27, i32 %r161
	%r162 = load float, float* %r160
	%r164 = fadd float %r159, %r162
	%r166 = load i32, i32* @g0
	%r165 = getelementptr float, ptr %r28, i32 %r166
	%r167 = load float, float* %r165
	%r169 = fadd float %r164, %r167
	%r171 = load i32, i32* @g0
	%r170 = getelementptr float, ptr %r29, i32 %r171
	%r172 = load float, float* %r170
	%r174 = fadd float %r169, %r172
	%r175 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 6
	store float %r174, float* %r175
	%r177 = load i32, i32* @g0
	%r176 = getelementptr float, ptr %r30, i32 %r177
	%r178 = load float, float* %r176
	%r180 = load i32, i32* @g0
	%r179 = getelementptr float, ptr %r31, i32 %r180
	%r181 = load float, float* %r179
	%r183 = fadd float %r178, %r181
	%r185 = load i32, i32* @g0
	%r184 = getelementptr float, ptr %r32, i32 %r185
	%r186 = load float, float* %r184
	%r188 = fadd float %r183, %r186
	%r190 = load i32, i32* @g0
	%r189 = getelementptr float, ptr %r33, i32 %r190
	%r191 = load float, float* %r189
	%r193 = fadd float %r188, %r191
	%r194 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 7
	store float %r193, float* %r194
	%r196 = load i32, i32* @g0
	%r195 = getelementptr float, ptr %r34, i32 %r196
	%r197 = load float, float* %r195
	%r199 = load i32, i32* @g0
	%r198 = getelementptr float, ptr %r35, i32 %r199
	%r200 = load float, float* %r198
	%r202 = fadd float %r197, %r200
	%r204 = load i32, i32* @g0
	%r203 = getelementptr float, ptr %r36, i32 %r204
	%r205 = load float, float* %r203
	%r207 = fadd float %r202, %r205
	%r209 = load i32, i32* @g0
	%r208 = getelementptr float, ptr %r37, i32 %r209
	%r210 = load float, float* %r208
	%r212 = fadd float %r207, %r210
	%r213 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 8
	store float %r212, float* %r213
	%r215 = load i32, i32* @g0
	%r214 = getelementptr float, ptr %r38, i32 %r215
	%r216 = load float, float* %r214
	%r218 = load i32, i32* @g0
	%r217 = getelementptr float, ptr %r39, i32 %r218
	%r219 = load float, float* %r217
	%r221 = fadd float %r216, %r219
	%r223 = load i32, i32* @g0
	%r222 = getelementptr float, ptr %r40, i32 %r223
	%r224 = load float, float* %r222
	%r226 = fadd float %r221, %r224
	%r228 = load i32, i32* @g0
	%r227 = getelementptr float, ptr %r41, i32 %r228
	%r229 = load float, float* %r227
	%r231 = fadd float %r226, %r229
	%r232 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 9
	store float %r231, float* %r232
	%r234 = load i32, i32* @g0
	%r233 = getelementptr float, ptr %r41, i32 %r234
	%r235 = load float, float* %r233
	%r236 = sitofp i32 0 to float
	%r237 = fcmp one float %r235,%r236
	%r238 = zext i1 %r237 to i32
	%r239 = icmp ne i32 %r238,0
	%r240 = zext i1 %r239 to i32
	%r241 = sitofp i32 %r240 to float
	%r242 = fcmp one float %r241,0x0000000000000000
	%r243 = zext i1 %r242 to i32
	%r244 = sitofp i32 %r243 to float
	%r245 = fcmp one float %r244,0x0000000000000000
	br i1 %r245,label %bb3,label %bb4
bb1:
	%r291 = phi float [ %r249,%bb3 ], [ %r290,%bb4 ], [ 0x0000000000000000,%bb2 ]
	ret float %r291
bb2:
	br label %bb1
bb3:
	%r246 = getelementptr [10 x float], [10 x float]* %r42, i32 0
	call void @putfarray(i32 10, float* %r246)
	%r248 = load i32, i32* @g0
	%r247 = getelementptr [10 x float], [10 x float]* %r42, i32 0, i32 %r248
	%r249 = load float, float* %r247
	br label %bb1
bb4:
	%r250 = getelementptr float, ptr %r3
	%r251 = getelementptr float, ptr %r4
	%r252 = getelementptr float, ptr %r5
	%r253 = getelementptr float, ptr %r6
	%r254 = getelementptr float, ptr %r7
	%r255 = getelementptr float, ptr %r8
	%r256 = getelementptr float, ptr %r9
	%r257 = getelementptr float, ptr %r10
	%r258 = getelementptr float, ptr %r11
	%r259 = getelementptr float, ptr %r12
	%r260 = getelementptr float, ptr %r13
	%r261 = getelementptr float, ptr %r14
	%r262 = getelementptr float, ptr %r15
	%r263 = getelementptr float, ptr %r16
	%r264 = getelementptr float, ptr %r17
	%r265 = getelementptr float, ptr %r18
	%r266 = getelementptr float, ptr %r19
	%r267 = getelementptr float, ptr %r20
	%r268 = getelementptr float, ptr %r21
	%r269 = getelementptr float, ptr %r22
	%r270 = getelementptr float, ptr %r23
	%r271 = getelementptr float, ptr %r24
	%r272 = getelementptr float, ptr %r25
	%r273 = getelementptr float, ptr %r26
	%r274 = getelementptr float, ptr %r27
	%r275 = getelementptr float, ptr %r28
	%r276 = getelementptr float, ptr %r29
	%r277 = getelementptr float, ptr %r30
	%r278 = getelementptr float, ptr %r31
	%r279 = getelementptr float, ptr %r32
	%r280 = getelementptr float, ptr %r33
	%r281 = getelementptr float, ptr %r34
	%r282 = getelementptr float, ptr %r35
	%r283 = getelementptr float, ptr %r36
	%r284 = getelementptr float, ptr %r37
	%r285 = getelementptr float, ptr %r38
	%r286 = getelementptr float, ptr %r39
	%r287 = getelementptr float, ptr %r40
	%r288 = getelementptr float, ptr %r41
	%r289 = getelementptr [10 x float], [10 x float]* %r42, i32 0
	%r290 = call float @params_fa40(float* %r250, float* %r251, float* %r252, float* %r253, float* %r254, float* %r255, float* %r256, float* %r257, float* %r258, float* %r259, float* %r260, float* %r261, float* %r262, float* %r263, float* %r264, float* %r265, float* %r266, float* %r267, float* %r268, float* %r269, float* %r270, float* %r271, float* %r272, float* %r273, float* %r274, float* %r275, float* %r276, float* %r277, float* %r278, float* %r279, float* %r280, float* %r281, float* %r282, float* %r283, float* %r284, float* %r285, float* %r286, float* %r287, float* %r288, float* %r289)
	br label %bb1
bb6:
	br label %bb2
bb7:
	br label %bb2
}
define dso_local i32 @params_mix(float %r2, i32* %r4, i32 %r5, float* %r7, float %r8, i32 %r10, float %r12, float %r14, float* %r16, i32* %r17, i32 %r18, i32 %r20, float* %r22, i32* %r23, i32* %r24, i32 %r25, float* %r27, float* %r28, float %r29, float %r31, float %r33, float* %r35, i32 %r36, float %r38, float %r40, float %r42, i32* %r44, float* %r45, i32* %r46, i32* %r47, float* %r48, float %r49, float %r51, i32* %r53, i32 %r54, float* %r56, float* %r57, float %r58, float %r60, i32* %r62, i32* %r63, i32 %r64, i32 %r66, float %r68, float %r70, i32* %r72, i32 %r73, float* %r75, i32 %r76, i32* %r78, i32* %r79, float %r80, float %r82, float* %r84, i32 %r85, i32* %r87, float* %r88, float %r89, i32 %r91, float %r93, float* %r95, float* %r96, float %r97, i32 %r99) {
	%r3 = alloca float , align 4
	%r6 = alloca i32 , align 4
	%r9 = alloca float , align 4
	%r11 = alloca i32 , align 4
	%r13 = alloca float , align 4
	%r15 = alloca float , align 4
	%r19 = alloca i32 , align 4
	%r21 = alloca i32 , align 4
	%r26 = alloca i32 , align 4
	%r30 = alloca float , align 4
	%r32 = alloca float , align 4
	%r34 = alloca float , align 4
	%r37 = alloca i32 , align 4
	%r39 = alloca float , align 4
	%r41 = alloca float , align 4
	%r43 = alloca float , align 4
	%r50 = alloca float , align 4
	%r52 = alloca float , align 4
	%r55 = alloca i32 , align 4
	%r59 = alloca float , align 4
	%r61 = alloca float , align 4
	%r65 = alloca i32 , align 4
	%r67 = alloca i32 , align 4
	%r69 = alloca float , align 4
	%r71 = alloca float , align 4
	%r74 = alloca i32 , align 4
	%r77 = alloca i32 , align 4
	%r81 = alloca float , align 4
	%r83 = alloca float , align 4
	%r86 = alloca i32 , align 4
	%r90 = alloca float , align 4
	%r92 = alloca i32 , align 4
	%r94 = alloca float , align 4
	%r98 = alloca float , align 4
	%r100 = alloca i32 , align 4
	%r101 = alloca [10 x float] , align 4
	%r233 = alloca [10 x i32] , align 4
	%r342 = alloca i32 , align 4
	br label %bb0
bb0:
	store float %r2, float* %r3
	store i32 %r5, i32* %r6
	store float %r8, float* %r9
	store i32 %r10, i32* %r11
	store float %r12, float* %r13
	store float %r14, float* %r15
	store i32 %r18, i32* %r19
	store i32 %r20, i32* %r21
	store i32 %r25, i32* %r26
	store float %r29, float* %r30
	store float %r31, float* %r32
	store float %r33, float* %r34
	store i32 %r36, i32* %r37
	store float %r38, float* %r39
	store float %r40, float* %r41
	store float %r42, float* %r43
	store float %r49, float* %r50
	store float %r51, float* %r52
	store i32 %r54, i32* %r55
	store float %r58, float* %r59
	store float %r60, float* %r61
	store i32 %r64, i32* %r65
	store i32 %r66, i32* %r67
	store float %r68, float* %r69
	store float %r70, float* %r71
	store i32 %r73, i32* %r74
	store i32 %r76, i32* %r77
	store float %r80, float* %r81
	store float %r82, float* %r83
	store i32 %r85, i32* %r86
	store float %r89, float* %r90
	store i32 %r91, i32* %r92
	store float %r93, float* %r94
	store float %r97, float* %r98
	store i32 %r99, i32* %r100
	call void @llvm.memset.p0.i64(float* %r101, i8 0, i64 40, i1 false)
	%r102 = load float, float* %r3
	%r104 = load i32, i32* @g0
	%r103 = getelementptr float, ptr %r7, i32 %r104
	%r105 = load float, float* %r103
	%r107 = fadd float %r102, %r105
	%r108 = load float, float* %r9
	%r110 = fadd float %r107, %r108
	%r111 = load float, float* %r13
	%r113 = fadd float %r110, %r111
	%r114 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 0
	store float %r113, float* %r114
	%r115 = load float, float* %r15
	%r117 = load i32, i32* @g0
	%r116 = getelementptr float, ptr %r16, i32 %r117
	%r118 = load float, float* %r116
	%r120 = fadd float %r115, %r118
	%r122 = load i32, i32* @g0
	%r121 = getelementptr float, ptr %r22, i32 %r122
	%r123 = load float, float* %r121
	%r125 = fadd float %r120, %r123
	%r127 = load i32, i32* @g0
	%r126 = getelementptr float, ptr %r27, i32 %r127
	%r128 = load float, float* %r126
	%r130 = fadd float %r125, %r128
	%r131 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 1
	store float %r130, float* %r131
	%r133 = load i32, i32* @g0
	%r132 = getelementptr float, ptr %r28, i32 %r133
	%r134 = load float, float* %r132
	%r135 = load float, float* %r30
	%r137 = fadd float %r134, %r135
	%r138 = load float, float* %r32
	%r140 = fadd float %r137, %r138
	%r141 = load float, float* %r34
	%r143 = fadd float %r140, %r141
	%r144 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 2
	store float %r143, float* %r144
	%r146 = load i32, i32* @g0
	%r145 = getelementptr float, ptr %r35, i32 %r146
	%r147 = load float, float* %r145
	%r148 = load float, float* %r39
	%r150 = fadd float %r147, %r148
	%r151 = load float, float* %r41
	%r153 = fadd float %r150, %r151
	%r154 = load float, float* %r43
	%r156 = fadd float %r153, %r154
	%r157 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 3
	store float %r156, float* %r157
	%r159 = load i32, i32* @g0
	%r158 = getelementptr float, ptr %r45, i32 %r159
	%r160 = load float, float* %r158
	%r162 = load i32, i32* @g0
	%r161 = getelementptr float, ptr %r48, i32 %r162
	%r163 = load float, float* %r161
	%r165 = fadd float %r160, %r163
	%r166 = load float, float* %r50
	%r168 = fadd float %r165, %r166
	%r169 = load float, float* %r52
	%r171 = fadd float %r168, %r169
	%r172 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 4
	store float %r171, float* %r172
	%r174 = load i32, i32* @g0
	%r173 = getelementptr float, ptr %r56, i32 %r174
	%r175 = load float, float* %r173
	%r177 = load i32, i32* @g0
	%r176 = getelementptr float, ptr %r57, i32 %r177
	%r178 = load float, float* %r176
	%r180 = fadd float %r175, %r178
	%r181 = load float, float* %r59
	%r183 = fadd float %r180, %r181
	%r184 = load float, float* %r61
	%r186 = fadd float %r183, %r184
	%r187 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 5
	store float %r186, float* %r187
	%r188 = load float, float* %r69
	%r189 = load float, float* %r71
	%r191 = fadd float %r188, %r189
	%r193 = load i32, i32* @g0
	%r192 = getelementptr float, ptr %r75, i32 %r193
	%r194 = load float, float* %r192
	%r196 = fadd float %r191, %r194
	%r197 = load float, float* %r81
	%r199 = fadd float %r196, %r197
	%r200 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 6
	store float %r199, float* %r200
	%r201 = load float, float* %r83
	%r203 = load i32, i32* @g0
	%r202 = getelementptr float, ptr %r84, i32 %r203
	%r204 = load float, float* %r202
	%r206 = fadd float %r201, %r204
	%r208 = load i32, i32* @g0
	%r207 = getelementptr float, ptr %r88, i32 %r208
	%r209 = load float, float* %r207
	%r211 = fadd float %r206, %r209
	%r212 = load float, float* %r90
	%r214 = fadd float %r211, %r212
	%r215 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 7
	store float %r214, float* %r215
	%r216 = load float, float* %r94
	%r218 = load i32, i32* @g0
	%r217 = getelementptr float, ptr %r95, i32 %r218
	%r219 = load float, float* %r217
	%r221 = fadd float %r216, %r219
	%r223 = load i32, i32* @g0
	%r222 = getelementptr float, ptr %r96, i32 %r223
	%r224 = load float, float* %r222
	%r226 = fadd float %r221, %r224
	%r227 = load float, float* %r98
	%r229 = fadd float %r226, %r227
	%r230 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 8
	store float %r229, float* %r230
	%r231 = sitofp i32 0 to float
	%r232 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 9
	store float %r231, float* %r232
	call void @llvm.memset.p0.i64(i32* %r233, i8 0, i64 40, i1 false)
	%r235 = load i32, i32* @g0
	%r234 = getelementptr i32, ptr %r4, i32 %r235
	%r236 = load i32, i32* %r234
	%r237 = load i32, i32* %r6
	%r239 = add nsw i32 %r236, %r237
	%r240 = load i32, i32* %r11
	%r242 = add nsw i32 %r239, %r240
	%r243 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 0
	store i32 %r242, i32* %r243
	%r245 = load i32, i32* @g0
	%r244 = getelementptr i32, ptr %r17, i32 %r245
	%r246 = load i32, i32* %r244
	%r247 = load i32, i32* %r19
	%r249 = add nsw i32 %r246, %r247
	%r250 = load i32, i32* %r21
	%r252 = add nsw i32 %r249, %r250
	%r253 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 1
	store i32 %r252, i32* %r253
	%r255 = load i32, i32* @g0
	%r254 = getelementptr i32, ptr %r23, i32 %r255
	%r256 = load i32, i32* %r254
	%r258 = load i32, i32* @g0
	%r257 = getelementptr i32, ptr %r24, i32 %r258
	%r259 = load i32, i32* %r257
	%r261 = add nsw i32 %r256, %r259
	%r262 = load i32, i32* %r26
	%r264 = add nsw i32 %r261, %r262
	%r265 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 2
	store i32 %r264, i32* %r265
	%r266 = load i32, i32* %r37
	%r268 = load i32, i32* @g0
	%r267 = getelementptr i32, ptr %r44, i32 %r268
	%r269 = load i32, i32* %r267
	%r271 = add nsw i32 %r266, %r269
	%r273 = load i32, i32* @g0
	%r272 = getelementptr i32, ptr %r46, i32 %r273
	%r274 = load i32, i32* %r272
	%r276 = add nsw i32 %r271, %r274
	%r277 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 3
	store i32 %r276, i32* %r277
	%r279 = load i32, i32* @g0
	%r278 = getelementptr i32, ptr %r47, i32 %r279
	%r280 = load i32, i32* %r278
	%r282 = load i32, i32* @g0
	%r281 = getelementptr i32, ptr %r53, i32 %r282
	%r283 = load i32, i32* %r281
	%r285 = add nsw i32 %r280, %r283
	%r286 = load i32, i32* %r55
	%r288 = add nsw i32 %r285, %r286
	%r289 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 4
	store i32 %r288, i32* %r289
	%r291 = load i32, i32* @g0
	%r290 = getelementptr i32, ptr %r62, i32 %r291
	%r292 = load i32, i32* %r290
	%r294 = load i32, i32* @g0
	%r293 = getelementptr i32, ptr %r63, i32 %r294
	%r295 = load i32, i32* %r293
	%r297 = add nsw i32 %r292, %r295
	%r298 = load i32, i32* %r65
	%r300 = add nsw i32 %r297, %r298
	%r301 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 5
	store i32 %r300, i32* %r301
	%r302 = load i32, i32* %r67
	%r304 = load i32, i32* @g0
	%r303 = getelementptr i32, ptr %r72, i32 %r304
	%r305 = load i32, i32* %r303
	%r307 = add nsw i32 %r302, %r305
	%r308 = load i32, i32* %r74
	%r310 = add nsw i32 %r307, %r308
	%r311 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 6
	store i32 %r310, i32* %r311
	%r312 = load i32, i32* %r77
	%r314 = load i32, i32* @g0
	%r313 = getelementptr i32, ptr %r78, i32 %r314
	%r315 = load i32, i32* %r313
	%r317 = add nsw i32 %r312, %r315
	%r319 = load i32, i32* @g0
	%r318 = getelementptr i32, ptr %r79, i32 %r319
	%r320 = load i32, i32* %r318
	%r322 = add nsw i32 %r317, %r320
	%r323 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 7
	store i32 %r322, i32* %r323
	%r324 = load i32, i32* %r86
	%r326 = load i32, i32* @g0
	%r325 = getelementptr i32, ptr %r87, i32 %r326
	%r327 = load i32, i32* %r325
	%r329 = add nsw i32 %r324, %r327
	%r330 = load i32, i32* %r92
	%r332 = add nsw i32 %r329, %r330
	%r333 = load i32, i32* %r100
	%r335 = add nsw i32 %r332, %r333
	%r336 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 8
	store i32 %r335, i32* %r336
	%r337 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 9
	store i32 0, i32* %r337
	%r338 = load i32, i32* %r100
	%r339 = icmp ne i32 %r338,0
	br i1 %r339,label %bb3,label %bb4
bb1:
	%r436 = phi i32 [ %r368,%bb7 ], [ %r435,%bb4 ], [ 0,%bb2 ]
	ret i32 %r436
bb2:
	br label %bb1
bb3:
	%r340 = getelementptr [10 x float], [10 x float]* %r101, i32 0
	call void @putfarray(i32 10, float* %r340)
	%r341 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0
	call void @putarray(i32 10, i32* %r341)
	store i32 0, i32* %r342
	br label %bb6
bb4:
	%r369 = load float, float* %r3
	%r370 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0
	%r371 = load i32, i32* %r6
	%r372 = getelementptr [10 x float], [10 x float]* %r101, i32 0
	%r373 = load float, float* %r9
	%r374 = load i32, i32* %r11
	%r375 = load float, float* %r13
	%r376 = load float, float* %r15
	%r377 = getelementptr float, ptr %r16
	%r378 = getelementptr i32, ptr %r17
	%r379 = load i32, i32* %r19
	%r380 = load i32, i32* %r21
	%r381 = getelementptr float, ptr %r22
	%r382 = getelementptr i32, ptr %r23
	%r383 = getelementptr i32, ptr %r24
	%r384 = load i32, i32* %r26
	%r385 = getelementptr float, ptr %r27
	%r386 = getelementptr float, ptr %r28
	%r387 = load float, float* %r30
	%r388 = load float, float* %r32
	%r389 = load float, float* %r34
	%r390 = getelementptr float, ptr %r35
	%r391 = load i32, i32* %r37
	%r392 = load float, float* %r39
	%r393 = load float, float* %r41
	%r394 = load float, float* %r43
	%r395 = getelementptr i32, ptr %r44
	%r396 = getelementptr float, ptr %r45
	%r397 = getelementptr i32, ptr %r46
	%r398 = getelementptr i32, ptr %r47
	%r399 = getelementptr float, ptr %r48
	%r400 = load float, float* %r50
	%r401 = load float, float* %r52
	%r402 = getelementptr i32, ptr %r53
	%r403 = load i32, i32* %r55
	%r404 = getelementptr float, ptr %r56
	%r405 = getelementptr float, ptr %r57
	%r406 = load float, float* %r59
	%r407 = load float, float* %r61
	%r408 = getelementptr i32, ptr %r62
	%r409 = getelementptr i32, ptr %r63
	%r410 = load i32, i32* %r65
	%r411 = load i32, i32* %r67
	%r412 = load float, float* %r69
	%r413 = load float, float* %r71
	%r414 = getelementptr i32, ptr %r72
	%r415 = load i32, i32* %r74
	%r416 = getelementptr float, ptr %r75
	%r417 = load i32, i32* %r77
	%r418 = getelementptr i32, ptr %r78
	%r419 = getelementptr i32, ptr %r79
	%r420 = load float, float* %r81
	%r421 = load float, float* %r83
	%r422 = getelementptr float, ptr %r84
	%r423 = load i32, i32* %r86
	%r424 = getelementptr i32, ptr %r87
	%r425 = getelementptr float, ptr %r88
	%r426 = load float, float* %r90
	%r427 = load i32, i32* %r92
	%r428 = load float, float* %r94
	%r429 = getelementptr float, ptr %r95
	%r430 = getelementptr float, ptr %r96
	%r431 = load i32, i32* %r100
	%r432 = sitofp i32 %r431 to float
	%r433 = load float, float* %r98
	%r434 = fptosi float %r433 to i32
	%r435 = call i32 @params_mix(float %r369, i32* %r370, i32 %r371, float* %r372, float %r373, i32 %r374, float %r375, float %r376, float* %r377, i32* %r378, i32 %r379, i32 %r380, float* %r381, i32* %r382, i32* %r383, i32 %r384, float* %r385, float* %r386, float %r387, float %r388, float %r389, float* %r390, i32 %r391, float %r392, float %r393, float %r394, i32* %r395, float* %r396, i32* %r397, i32* %r398, float* %r399, float %r400, float %r401, i32* %r402, i32 %r403, float* %r404, float* %r405, float %r406, float %r407, i32* %r408, i32* %r409, i32 %r410, i32 %r411, float %r412, float %r413, i32* %r414, i32 %r415, float* %r416, i32 %r417, i32* %r418, i32* %r419, float %r420, float %r421, float* %r422, i32 %r423, i32* %r424, float* %r425, float %r426, i32 %r427, float %r428, float* %r429, float* %r430, float %r432, i32 %r434)
	br label %bb1
bb6:
	%r343 = load i32, i32* %r342
	%r344 = icmp slt i32 %r343,10
	br i1 %r344,label %bb8,label %bb7
bb7:
	%r361 = load i32, i32* @g0
	%r360 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 %r361
	%r362 = load i32, i32* %r360
	%r363 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 8
	%r364 = load float, float* %r363
	%r366 = sitofp i32 %r362 to float
	%r367 = fmul float %r366, %r364
	%r368 = fptosi float %r367 to i32
	br label %bb1
bb8:
	%r346 = load i32, i32* %r342
	%r345 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 %r346
	%r347 = load i32, i32* %r345
	%r349 = load i32, i32* %r342
	%r348 = getelementptr [10 x float], [10 x float]* %r101, i32 0, i32 %r349
	%r350 = load float, float* %r348
	%r352 = sitofp i32 %r347 to float
	%r353 = fsub float %r352, %r350
	%r354 = fptosi float %r353 to i32
	%r356 = load i32, i32* %r342
	%r355 = getelementptr [10 x i32], [10 x i32]* %r233, i32 0, i32 %r356
	store i32 %r354, i32* %r355
	%r357 = load i32, i32* %r342
	%r359 = add nsw i32 %r357, 1
	store i32 %r359, i32* %r342
	br label %bb6
bb9:
	br label %bb2
bb10:
	br label %bb2
}
define dso_local i32 @main() {
	%r2 = alloca [40 x [3 x float]] , align 4
	%r3 = alloca [24 x [3 x i32]] , align 4
	%r4 = alloca i32 , align 4
	%r22 = alloca float , align 4
	%r144 = alloca float , align 4
	%r338 = alloca float , align 4
	%r380 = alloca i32 , align 4
	br label %bb0
bb0:
	%r5 = call i32 @getint()
	store i32 %r5, i32* @g0
	store i32 0, i32* %r4
	br label %bb2
bb1:
	%r518 = phi i32 [ 0,%bb6 ], [ 0,%bb8 ]
	ret i32 %r518
bb2:
	%r6 = load i32, i32* %r4
	%r7 = icmp slt i32 %r6,40
	br i1 %r7,label %bb4,label %bb3
bb3:
	store i32 0, i32* %r4
	br label %bb5
bb4:
	%r9 = load i32, i32* %r4
	%r8 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 %r9
	%r10 = call i32 @getfarray(float* %r8)
	%r11 = load i32, i32* %r4
	%r13 = add nsw i32 %r11, 1
	store i32 %r13, i32* %r4
	br label %bb2
bb5:
	%r14 = load i32, i32* %r4
	%r15 = icmp slt i32 %r14,24
	br i1 %r15,label %bb7,label %bb6
bb6:
	%r24 = load i32, i32* @g0
	%r23 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 0, i32 %r24
	%r25 = load float, float* %r23
	%r27 = load i32, i32* @g0
	%r26 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 1, i32 %r27
	%r28 = load float, float* %r26
	%r30 = load i32, i32* @g0
	%r29 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 2, i32 %r30
	%r31 = load float, float* %r29
	%r33 = load i32, i32* @g0
	%r32 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 3, i32 %r33
	%r34 = load float, float* %r32
	%r36 = load i32, i32* @g0
	%r35 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 4, i32 %r36
	%r37 = load float, float* %r35
	%r39 = load i32, i32* @g0
	%r38 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 5, i32 %r39
	%r40 = load float, float* %r38
	%r42 = load i32, i32* @g0
	%r41 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 6, i32 %r42
	%r43 = load float, float* %r41
	%r45 = load i32, i32* @g0
	%r44 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 7, i32 %r45
	%r46 = load float, float* %r44
	%r48 = load i32, i32* @g0
	%r47 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 8, i32 %r48
	%r49 = load float, float* %r47
	%r51 = load i32, i32* @g0
	%r50 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 9, i32 %r51
	%r52 = load float, float* %r50
	%r54 = load i32, i32* @g0
	%r53 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 10, i32 %r54
	%r55 = load float, float* %r53
	%r57 = load i32, i32* @g0
	%r56 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 11, i32 %r57
	%r58 = load float, float* %r56
	%r60 = load i32, i32* @g0
	%r59 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 12, i32 %r60
	%r61 = load float, float* %r59
	%r63 = load i32, i32* @g0
	%r62 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 13, i32 %r63
	%r64 = load float, float* %r62
	%r66 = load i32, i32* @g0
	%r65 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 14, i32 %r66
	%r67 = load float, float* %r65
	%r69 = load i32, i32* @g0
	%r68 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 15, i32 %r69
	%r70 = load float, float* %r68
	%r72 = load i32, i32* @g0
	%r71 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 16, i32 %r72
	%r73 = load float, float* %r71
	%r75 = load i32, i32* @g0
	%r74 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 17, i32 %r75
	%r76 = load float, float* %r74
	%r78 = load i32, i32* @g0
	%r77 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 18, i32 %r78
	%r79 = load float, float* %r77
	%r81 = load i32, i32* @g0
	%r80 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 19, i32 %r81
	%r82 = load float, float* %r80
	%r84 = load i32, i32* @g0
	%r83 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 20, i32 %r84
	%r85 = load float, float* %r83
	%r87 = load i32, i32* @g0
	%r86 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 21, i32 %r87
	%r88 = load float, float* %r86
	%r90 = load i32, i32* @g0
	%r89 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 22, i32 %r90
	%r91 = load float, float* %r89
	%r93 = load i32, i32* @g0
	%r92 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 23, i32 %r93
	%r94 = load float, float* %r92
	%r96 = load i32, i32* @g0
	%r95 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 24, i32 %r96
	%r97 = load float, float* %r95
	%r99 = load i32, i32* @g0
	%r98 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 25, i32 %r99
	%r100 = load float, float* %r98
	%r102 = load i32, i32* @g0
	%r101 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 26, i32 %r102
	%r103 = load float, float* %r101
	%r105 = load i32, i32* @g0
	%r104 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 27, i32 %r105
	%r106 = load float, float* %r104
	%r108 = load i32, i32* @g0
	%r107 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 28, i32 %r108
	%r109 = load float, float* %r107
	%r111 = load i32, i32* @g0
	%r110 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 29, i32 %r111
	%r112 = load float, float* %r110
	%r114 = load i32, i32* @g0
	%r113 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 30, i32 %r114
	%r115 = load float, float* %r113
	%r117 = load i32, i32* @g0
	%r116 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 31, i32 %r117
	%r118 = load float, float* %r116
	%r120 = load i32, i32* @g0
	%r119 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 32, i32 %r120
	%r121 = load float, float* %r119
	%r123 = load i32, i32* @g0
	%r122 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 33, i32 %r123
	%r124 = load float, float* %r122
	%r126 = load i32, i32* @g0
	%r125 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 34, i32 %r126
	%r127 = load float, float* %r125
	%r129 = load i32, i32* @g0
	%r128 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 35, i32 %r129
	%r130 = load float, float* %r128
	%r132 = load i32, i32* @g0
	%r131 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 36, i32 %r132
	%r133 = load float, float* %r131
	%r135 = load i32, i32* @g0
	%r134 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 37, i32 %r135
	%r136 = load float, float* %r134
	%r138 = load i32, i32* @g0
	%r137 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 38, i32 %r138
	%r139 = load float, float* %r137
	%r141 = load i32, i32* @g0
	%r140 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 39, i32 %r141
	%r142 = load float, float* %r140
	%r143 = call float @params_f40(float %r25, float %r28, float %r31, float %r34, float %r37, float %r40, float %r43, float %r46, float %r49, float %r52, float %r55, float %r58, float %r61, float %r64, float %r67, float %r70, float %r73, float %r76, float %r79, float %r82, float %r85, float %r88, float %r91, float %r94, float %r97, float %r100, float %r103, float %r106, float %r109, float %r112, float %r115, float %r118, float %r121, float %r124, float %r127, float %r130, float %r133, float %r136, float %r139, float %r142)
	store float %r143, float* %r22
	%r146 = load i32, i32* @g0
	%r145 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 23, i32 %r146
	%r147 = load i32, i32* %r145
	%r149 = load i32, i32* @g0
	%r148 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 2, i32 %r149
	%r150 = load i32, i32* %r148
	%r152 = load i32, i32* @g0
	%r151 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 6, i32 %r152
	%r153 = load i32, i32* %r151
	%r155 = load i32, i32* @g0
	%r154 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 4, i32 %r155
	%r156 = load float, float* %r154
	%r158 = load i32, i32* @g0
	%r157 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 1, i32 %r158
	%r159 = load i32, i32* %r157
	%r161 = load i32, i32* @g0
	%r160 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 4, i32 %r161
	%r162 = load i32, i32* %r160
	%r164 = load i32, i32* @g0
	%r163 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 5, i32 %r164
	%r165 = load i32, i32* %r163
	%r167 = load i32, i32* @g0
	%r166 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 8, i32 %r167
	%r168 = load float, float* %r166
	%r170 = load i32, i32* @g0
	%r169 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 15, i32 %r170
	%r171 = load float, float* %r169
	%r173 = load i32, i32* @g0
	%r172 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 7, i32 %r173
	%r174 = load float, float* %r172
	%r176 = load i32, i32* @g0
	%r175 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 22, i32 %r176
	%r177 = load i32, i32* %r175
	%r179 = load i32, i32* @g0
	%r178 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 3, i32 %r179
	%r180 = load float, float* %r178
	%r182 = load i32, i32* @g0
	%r181 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 28, i32 %r182
	%r183 = load float, float* %r181
	%r185 = load i32, i32* @g0
	%r184 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 0, i32 %r185
	%r186 = load i32, i32* %r184
	%r188 = load i32, i32* @g0
	%r187 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 37, i32 %r188
	%r189 = load float, float* %r187
	%r191 = load i32, i32* @g0
	%r190 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 19, i32 %r191
	%r192 = load i32, i32* %r190
	%r194 = load i32, i32* @g0
	%r193 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 30, i32 %r194
	%r195 = load float, float* %r193
	%r197 = load i32, i32* @g0
	%r196 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 12, i32 %r197
	%r198 = load float, float* %r196
	%r200 = load i32, i32* @g0
	%r199 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 1, i32 %r200
	%r201 = load float, float* %r199
	%r203 = load i32, i32* @g0
	%r202 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 11, i32 %r203
	%r204 = load float, float* %r202
	%r206 = load i32, i32* @g0
	%r205 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 38, i32 %r206
	%r207 = load float, float* %r205
	%r209 = load i32, i32* @g0
	%r208 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 6, i32 %r209
	%r210 = load float, float* %r208
	%r212 = load i32, i32* @g0
	%r211 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 7, i32 %r212
	%r213 = load i32, i32* %r211
	%r215 = load i32, i32* @g0
	%r214 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 32, i32 %r215
	%r216 = load float, float* %r214
	%r218 = load i32, i32* @g0
	%r217 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 10, i32 %r218
	%r219 = load i32, i32* %r217
	%r221 = load i32, i32* @g0
	%r220 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 13, i32 %r221
	%r222 = load i32, i32* %r220
	%r224 = load i32, i32* @g0
	%r223 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 20, i32 %r224
	%r225 = load float, float* %r223
	%r227 = load i32, i32* @g0
	%r226 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 33, i32 %r227
	%r228 = load float, float* %r226
	%r230 = load i32, i32* @g0
	%r229 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 23, i32 %r230
	%r231 = load float, float* %r229
	%r233 = load i32, i32* @g0
	%r232 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 9, i32 %r233
	%r234 = load float, float* %r232
	%r236 = load i32, i32* @g0
	%r235 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 25, i32 %r236
	%r237 = load float, float* %r235
	%r239 = load i32, i32* @g0
	%r238 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 8, i32 %r239
	%r240 = load i32, i32* %r238
	%r242 = load i32, i32* @g0
	%r241 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 39, i32 %r242
	%r243 = load float, float* %r241
	%r245 = load i32, i32* @g0
	%r244 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 17, i32 %r245
	%r246 = load i32, i32* %r244
	%r248 = load i32, i32* @g0
	%r247 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 21, i32 %r248
	%r249 = load float, float* %r247
	%r251 = load i32, i32* @g0
	%r250 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 16, i32 %r251
	%r252 = load float, float* %r250
	%r254 = load i32, i32* @g0
	%r253 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 5, i32 %r254
	%r255 = load float, float* %r253
	%r257 = load i32, i32* @g0
	%r256 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 34, i32 %r257
	%r258 = load float, float* %r256
	%r260 = load i32, i32* @g0
	%r259 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 18, i32 %r260
	%r261 = load i32, i32* %r259
	%r263 = load i32, i32* @g0
	%r262 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 9, i32 %r263
	%r264 = load i32, i32* %r262
	%r266 = load i32, i32* @g0
	%r265 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 14, i32 %r266
	%r267 = load float, float* %r265
	%r269 = load i32, i32* @g0
	%r268 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 10, i32 %r269
	%r270 = load float, float* %r268
	%r272 = load i32, i32* @g0
	%r271 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 0, i32 %r272
	%r273 = load float, float* %r271
	%r275 = load i32, i32* @g0
	%r274 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 12, i32 %r275
	%r276 = load i32, i32* %r274
	%r278 = load i32, i32* @g0
	%r277 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 31, i32 %r278
	%r279 = load float, float* %r277
	%r281 = load i32, i32* @g0
	%r280 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 11, i32 %r281
	%r282 = load i32, i32* %r280
	%r284 = load i32, i32* @g0
	%r283 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 16, i32 %r284
	%r285 = load i32, i32* %r283
	%r287 = load i32, i32* @g0
	%r286 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 27, i32 %r287
	%r288 = load float, float* %r286
	%r290 = load i32, i32* @g0
	%r289 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 24, i32 %r290
	%r291 = load float, float* %r289
	%r293 = load i32, i32* @g0
	%r292 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 13, i32 %r293
	%r294 = load float, float* %r292
	%r296 = load i32, i32* @g0
	%r295 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 29, i32 %r296
	%r297 = load float, float* %r295
	%r299 = load i32, i32* @g0
	%r298 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 3, i32 %r299
	%r300 = load i32, i32* %r298
	%r302 = load i32, i32* @g0
	%r301 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 21, i32 %r302
	%r303 = load i32, i32* %r301
	%r305 = load i32, i32* @g0
	%r304 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 20, i32 %r305
	%r306 = load i32, i32* %r304
	%r308 = load i32, i32* @g0
	%r307 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 18, i32 %r308
	%r309 = load float, float* %r307
	%r311 = load i32, i32* @g0
	%r310 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 19, i32 %r311
	%r312 = load float, float* %r310
	%r314 = load i32, i32* @g0
	%r313 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 22, i32 %r314
	%r315 = load float, float* %r313
	%r317 = load i32, i32* @g0
	%r316 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 26, i32 %r317
	%r318 = load float, float* %r316
	%r320 = load i32, i32* @g0
	%r319 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 36, i32 %r320
	%r321 = load float, float* %r319
	%r323 = load i32, i32* @g0
	%r322 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 17, i32 %r323
	%r324 = load float, float* %r322
	%r326 = load i32, i32* @g0
	%r325 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 15, i32 %r326
	%r327 = load i32, i32* %r325
	%r329 = load i32, i32* @g0
	%r328 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 2, i32 %r329
	%r330 = load float, float* %r328
	%r332 = load i32, i32* @g0
	%r331 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 14, i32 %r332
	%r333 = load i32, i32* %r331
	%r335 = load i32, i32* @g0
	%r334 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 35, i32 %r335
	%r336 = load float, float* %r334
	%r337 = call float @params_f40_i24(i32 %r147, i32 %r150, i32 %r153, float %r156, i32 %r159, i32 %r162, i32 %r165, float %r168, float %r171, float %r174, i32 %r177, float %r180, float %r183, i32 %r186, float %r189, i32 %r192, float %r195, float %r198, float %r201, float %r204, float %r207, float %r210, i32 %r213, float %r216, i32 %r219, i32 %r222, float %r225, float %r228, float %r231, float %r234, float %r237, i32 %r240, float %r243, i32 %r246, float %r249, float %r252, float %r255, float %r258, i32 %r261, i32 %r264, float %r267, float %r270, float %r273, i32 %r276, float %r279, i32 %r282, i32 %r285, float %r288, float %r291, float %r294, float %r297, i32 %r300, i32 %r303, i32 %r306, float %r309, float %r312, float %r315, float %r318, float %r321, float %r324, i32 %r327, float %r330, i32 %r333, float %r336)
	store float %r337, float* %r144
	%r339 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 0
	%r340 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 1
	%r341 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 2
	%r342 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 3
	%r343 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 4
	%r344 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 5
	%r345 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 6
	%r346 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 7
	%r347 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 8
	%r348 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 9
	%r349 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 10
	%r350 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 11
	%r351 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 12
	%r352 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 13
	%r353 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 14
	%r354 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 15
	%r355 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 16
	%r356 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 17
	%r357 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 18
	%r358 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 19
	%r359 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 20
	%r360 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 21
	%r361 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 22
	%r362 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 23
	%r363 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 24
	%r364 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 25
	%r365 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 26
	%r366 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 27
	%r367 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 28
	%r368 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 29
	%r369 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 30
	%r370 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 31
	%r371 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 32
	%r372 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 33
	%r373 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 34
	%r374 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 35
	%r375 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 36
	%r376 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 37
	%r377 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 38
	%r378 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 39
	%r379 = call float @params_fa40(float* %r339, float* %r340, float* %r341, float* %r342, float* %r343, float* %r344, float* %r345, float* %r346, float* %r347, float* %r348, float* %r349, float* %r350, float* %r351, float* %r352, float* %r353, float* %r354, float* %r355, float* %r356, float* %r357, float* %r358, float* %r359, float* %r360, float* %r361, float* %r362, float* %r363, float* %r364, float* %r365, float* %r366, float* %r367, float* %r368, float* %r369, float* %r370, float* %r371, float* %r372, float* %r373, float* %r374, float* %r375, float* %r376, float* %r377, float* %r378)
	store float %r379, float* %r338
	%r382 = load i32, i32* @g0
	%r381 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 0, i32 %r382
	%r383 = load float, float* %r381
	%r384 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 0
	%r386 = load i32, i32* @g0
	%r385 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 1, i32 %r386
	%r387 = load i32, i32* %r385
	%r388 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 1
	%r390 = load i32, i32* @g0
	%r389 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 2, i32 %r390
	%r391 = load float, float* %r389
	%r393 = load i32, i32* @g0
	%r392 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 2, i32 %r393
	%r394 = load i32, i32* %r392
	%r396 = load i32, i32* @g0
	%r395 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 3, i32 %r396
	%r397 = load float, float* %r395
	%r399 = load i32, i32* @g0
	%r398 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 4, i32 %r399
	%r400 = load float, float* %r398
	%r401 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 5
	%r402 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 3
	%r404 = load i32, i32* @g0
	%r403 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 4, i32 %r404
	%r405 = load i32, i32* %r403
	%r407 = load i32, i32* @g0
	%r406 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 5, i32 %r407
	%r408 = load i32, i32* %r406
	%r409 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 6
	%r410 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 6
	%r411 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 7
	%r413 = load i32, i32* @g0
	%r412 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 8, i32 %r413
	%r414 = load i32, i32* %r412
	%r415 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 7
	%r416 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 8
	%r418 = load i32, i32* @g0
	%r417 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 9, i32 %r418
	%r419 = load float, float* %r417
	%r421 = load i32, i32* @g0
	%r420 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 10, i32 %r421
	%r422 = load float, float* %r420
	%r424 = load i32, i32* @g0
	%r423 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 11, i32 %r424
	%r425 = load float, float* %r423
	%r426 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 12
	%r428 = load i32, i32* @g0
	%r427 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 9, i32 %r428
	%r429 = load i32, i32* %r427
	%r431 = load i32, i32* @g0
	%r430 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 13, i32 %r431
	%r432 = load float, float* %r430
	%r434 = load i32, i32* @g0
	%r433 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 14, i32 %r434
	%r435 = load float, float* %r433
	%r437 = load i32, i32* @g0
	%r436 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 15, i32 %r437
	%r438 = load float, float* %r436
	%r439 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 10
	%r440 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 16
	%r441 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 11
	%r442 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 12
	%r443 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 17
	%r445 = load i32, i32* @g0
	%r444 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 18, i32 %r445
	%r446 = load float, float* %r444
	%r448 = load i32, i32* @g0
	%r447 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 19, i32 %r448
	%r449 = load float, float* %r447
	%r450 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 13
	%r452 = load i32, i32* @g0
	%r451 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 14, i32 %r452
	%r453 = load i32, i32* %r451
	%r454 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 20
	%r455 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 21
	%r457 = load i32, i32* @g0
	%r456 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 22, i32 %r457
	%r458 = load float, float* %r456
	%r460 = load i32, i32* @g0
	%r459 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 23, i32 %r460
	%r461 = load float, float* %r459
	%r462 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 15
	%r463 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 16
	%r465 = load i32, i32* @g0
	%r464 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 17, i32 %r465
	%r466 = load i32, i32* %r464
	%r468 = load i32, i32* @g0
	%r467 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 18, i32 %r468
	%r469 = load i32, i32* %r467
	%r471 = load i32, i32* @g0
	%r470 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 24, i32 %r471
	%r472 = load float, float* %r470
	%r474 = load i32, i32* @g0
	%r473 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 25, i32 %r474
	%r475 = load float, float* %r473
	%r476 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 19
	%r478 = load i32, i32* @g0
	%r477 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 20, i32 %r478
	%r479 = load i32, i32* %r477
	%r480 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 26
	%r482 = load i32, i32* @g0
	%r481 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 21, i32 %r482
	%r483 = load i32, i32* %r481
	%r484 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 22
	%r485 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 23
	%r487 = load i32, i32* @g0
	%r486 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 27, i32 %r487
	%r488 = load float, float* %r486
	%r490 = load i32, i32* @g0
	%r489 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 28, i32 %r490
	%r491 = load float, float* %r489
	%r492 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 29
	%r494 = load i32, i32* @g0
	%r493 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 0, i32 %r494
	%r495 = load i32, i32* %r493
	%r496 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 1
	%r497 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 30
	%r499 = load i32, i32* @g0
	%r498 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 31, i32 %r499
	%r500 = load float, float* %r498
	%r502 = load i32, i32* @g0
	%r501 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 2, i32 %r502
	%r503 = load i32, i32* %r501
	%r505 = load i32, i32* @g0
	%r504 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 32, i32 %r505
	%r506 = load float, float* %r504
	%r507 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 33
	%r508 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 34
	%r510 = load i32, i32* @g0
	%r509 = getelementptr [40 x [3 x float]], [40 x [3 x float]*]* %r2, i32 0, i32 35, i32 %r510
	%r511 = load float, float* %r509
	%r513 = load i32, i32* @g0
	%r512 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 3, i32 %r513
	%r514 = load i32, i32* %r512
	%r515 = call i32 @params_mix(float %r383, i32* %r384, i32 %r387, float* %r388, float %r391, i32 %r394, float %r397, float %r400, float* %r401, i32* %r402, i32 %r405, i32 %r408, float* %r409, i32* %r410, i32* %r411, i32 %r414, float* %r415, float* %r416, float %r419, float %r422, float %r425, float* %r426, i32 %r429, float %r432, float %r435, float %r438, i32* %r439, float* %r440, i32* %r441, i32* %r442, float* %r443, float %r446, float %r449, i32* %r450, i32 %r453, float* %r454, float* %r455, float %r458, float %r461, i32* %r462, i32* %r463, i32 %r466, i32 %r469, float %r472, float %r475, i32* %r476, i32 %r479, float* %r480, i32 %r483, i32* %r484, i32* %r485, float %r488, float %r491, float* %r492, i32 %r495, i32* %r496, float* %r497, float %r500, i32 %r503, float %r506, float* %r507, float* %r508, float %r511, i32 %r514)
	store i32 %r515, i32* %r380
	%r516 = load float, float* %r338
	call void @putfloat(float %r516)
	call void @putch(i32 10)
	%r517 = load i32, i32* %r380
	call void @putint(i32 %r517)
	call void @putch(i32 10)
	br label %bb1
bb7:
	%r17 = load i32, i32* %r4
	%r16 = getelementptr [24 x [3 x i32]], [24 x [3 x i32]*]* %r3, i32 0, i32 %r17
	%r18 = call i32 @getarray(i32* %r16)
	%r19 = load i32, i32* %r4
	%r21 = add nsw i32 %r19, 1
	store i32 %r21, i32* %r4
	br label %bb5
bb8:
	br label %bb1
}
