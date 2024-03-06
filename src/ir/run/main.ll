; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sum = dso_local global i32 0, align 4
@array = dso_local global [20 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @f(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr @sum, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @sum, align 4
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = icmp sge i32 %12, 20
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, ptr %3, align 4
  br label %29

15:                                               ; preds = %11
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [20 x i32], ptr @array, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, ptr @array, align 16
  store i32 %22, ptr %3, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load i32, ptr %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x i32], ptr @array, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %23, %21, %14
  %30 = load i32, ptr %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @g(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr @sum, align 4
  %7 = add nsw i32 %6, 2
  store i32 %7, ptr @sum, align 4
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = icmp sge i32 %12, 20
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 1, ptr %3, align 4
  br label %29

15:                                               ; preds = %11
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [20 x i32], ptr @array, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, ptr @array, align 16
  store i32 %22, ptr %3, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load i32, ptr %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x i32], ptr @array, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %23, %21, %14
  %30 = load i32, ptr %3, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @h(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr @sum, align 4
  %5 = add nsw i32 %4, 3
  store i32 %5, ptr @sum, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  %10 = icmp sge i32 %9, 20
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store i32 0, ptr %2, align 4
  br label %17

12:                                               ; preds = %8
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x i32], ptr @array, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %2, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, ptr %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %4

4:                                                ; preds = %88, %0
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 20
  br i1 %6, label %7, label %91

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 4
  %9 = call i32 @f(i32 noundef 0, i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %7
  %12 = load i32, ptr %2, align 4
  %13 = call i32 @f(i32 noundef 1, i32 noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %11
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @f(i32 noundef 2, i32 noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4
  %21 = call i32 @f(i32 noundef 3, i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 4
  %25 = call i32 @f(i32 noundef 4, i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %23
  %28 = load i32, ptr %2, align 4
  %29 = call i32 @f(i32 noundef 5, i32 noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %27
  %32 = load i32, ptr %2, align 4
  %33 = call i32 @f(i32 noundef 6, i32 noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i32, ptr %2, align 4
  %37 = call i32 @f(i32 noundef 7, i32 noundef %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 4
  %41 = call i32 @f(i32 noundef 8, i32 noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %39
  %44 = load i32, ptr %2, align 4
  %45 = call i32 @f(i32 noundef 9, i32 noundef %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %43
  %48 = load i32, ptr %2, align 4
  %49 = call i32 @f(i32 noundef 10, i32 noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %47
  %52 = load i32, ptr %2, align 4
  %53 = call i32 @f(i32 noundef 11, i32 noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %51
  %56 = load i32, ptr %2, align 4
  %57 = call i32 @f(i32 noundef 12, i32 noundef %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i32, ptr %2, align 4
  %61 = call i32 @f(i32 noundef 13, i32 noundef %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, ptr %2, align 4
  %65 = call i32 @f(i32 noundef 14, i32 noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32, ptr %2, align 4
  %69 = call i32 @f(i32 noundef 15, i32 noundef %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, ptr %2, align 4
  %73 = call i32 @f(i32 noundef 16, i32 noundef %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, ptr %2, align 4
  %77 = call i32 @f(i32 noundef 17, i32 noundef %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, ptr %2, align 4
  %81 = call i32 @f(i32 noundef 18, i32 noundef %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, ptr %2, align 4
  %85 = call i32 @f(i32 noundef 19, i32 noundef %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7
  %89 = load i32, ptr %2, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %2, align 4
  br label %4, !llvm.loop !6

91:                                               ; preds = %4
  store i32 0, ptr %2, align 4
  br label %92

92:                                               ; preds = %176, %91
  %93 = load i32, ptr %2, align 4
  %94 = icmp slt i32 %93, 20
  br i1 %94, label %95, label %179

95:                                               ; preds = %92
  %96 = load i32, ptr %2, align 4
  %97 = call i32 @g(i32 noundef 0, i32 noundef %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %175, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %2, align 4
  %101 = call i32 @g(i32 noundef 1, i32 noundef %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %175, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %2, align 4
  %105 = call i32 @g(i32 noundef 2, i32 noundef %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %175, label %107

107:                                              ; preds = %103
  %108 = load i32, ptr %2, align 4
  %109 = call i32 @g(i32 noundef 3, i32 noundef %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %175, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %2, align 4
  %113 = call i32 @g(i32 noundef 4, i32 noundef %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %175, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %2, align 4
  %117 = call i32 @g(i32 noundef 5, i32 noundef %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %175, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %2, align 4
  %121 = call i32 @g(i32 noundef 6, i32 noundef %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %175, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %2, align 4
  %125 = call i32 @g(i32 noundef 7, i32 noundef %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %175, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %2, align 4
  %129 = call i32 @g(i32 noundef 8, i32 noundef %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %175, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %2, align 4
  %133 = call i32 @g(i32 noundef 9, i32 noundef %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %175, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %2, align 4
  %137 = call i32 @g(i32 noundef 10, i32 noundef %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %175, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %2, align 4
  %141 = call i32 @g(i32 noundef 11, i32 noundef %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %175, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %2, align 4
  %145 = call i32 @g(i32 noundef 12, i32 noundef %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %175, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr %2, align 4
  %149 = call i32 @g(i32 noundef 13, i32 noundef %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %175, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %2, align 4
  %153 = call i32 @g(i32 noundef 14, i32 noundef %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %175, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %2, align 4
  %157 = call i32 @g(i32 noundef 15, i32 noundef %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %2, align 4
  %161 = call i32 @g(i32 noundef 16, i32 noundef %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %2, align 4
  %165 = call i32 @g(i32 noundef 17, i32 noundef %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr %2, align 4
  %169 = call i32 @g(i32 noundef 18, i32 noundef %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %2, align 4
  %173 = call i32 @g(i32 noundef 19, i32 noundef %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95
  br label %176

176:                                              ; preds = %175, %171
  %177 = load i32, ptr %2, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %2, align 4
  br label %92, !llvm.loop !8

179:                                              ; preds = %92
  store i32 1, ptr %2, align 4
  br label %180

180:                                              ; preds = %191, %179
  %181 = load i32, ptr %2, align 4
  %182 = icmp slt i32 %181, 20
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, ptr %2, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, ptr %2, align 4
  %187 = call i32 @f(i32 noundef %185, i32 noundef %186)
  %188 = icmp ne i32 %187, 0
  br label %189

189:                                              ; preds = %183, %180
  %190 = phi i1 [ false, %180 ], [ %188, %183 ]
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = load i32, ptr %2, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %2, align 4
  br label %180, !llvm.loop !9

194:                                              ; preds = %189
  store i32 0, ptr %3, align 4
  %195 = call i32 @h(i32 noundef 0)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = call i32 @h(i32 noundef 1)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197, %194
  %201 = call i32 @h(i32 noundef 2)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = call i32 @h(i32 noundef 3)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203, %200, %197
  store i32 1, ptr %3, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i32, ptr @sum, align 4
  %209 = load i32, ptr %3, align 4
  %210 = add nsw i32 %208, %209
  store i32 0, ptr %3, align 4
  %211 = call i32 @h(i32 noundef 4)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %207
  %214 = call i32 @h(i32 noundef 5)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = call i32 @h(i32 noundef 6)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = call i32 @h(i32 noundef 7)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219, %216, %213
  %223 = call i32 @h(i32 noundef 8)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222, %219, %207
  store i32 1, ptr %3, align 4
  br label %226

226:                                              ; preds = %225, %222
  %227 = load i32, ptr @sum, align 4
  %228 = load i32, ptr %3, align 4
  %229 = mul nsw i32 %227, %228
  store i32 0, ptr %3, align 4
  %230 = call i32 @h(i32 noundef 9)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = call i32 @h(i32 noundef 10)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232, %226
  %236 = call i32 @h(i32 noundef 11)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %235
  %239 = call i32 @h(i32 noundef 12)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %238
  %242 = call i32 @h(i32 noundef 13)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = call i32 @h(i32 noundef 14)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = call i32 @h(i32 noundef 15)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247, %241, %238, %235, %232
  store i32 1, ptr %3, align 4
  br label %251

251:                                              ; preds = %250, %247, %244
  %252 = load i32, ptr @sum, align 4
  %253 = load i32, ptr %3, align 4
  %254 = sub nsw i32 %252, %253
  store i32 0, ptr %3, align 4
  %255 = call i32 @h(i32 noundef 0)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %251
  %258 = call i32 @h(i32 noundef 2)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = call i32 @h(i32 noundef 3)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = call i32 @h(i32 noundef 4)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %263, %260, %257, %251
  %267 = call i32 @h(i32 noundef 5)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %266
  %270 = call i32 @h(i32 noundef 6)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = call i32 @h(i32 noundef 7)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272, %269
  %276 = call i32 @h(i32 noundef 8)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275, %272, %266, %263
  store i32 1, ptr %3, align 4
  br label %279

279:                                              ; preds = %278, %275
  %280 = load i32, ptr @sum, align 4
  %281 = load i32, ptr %3, align 4
  %282 = add nsw i32 %280, %281
  call void @putint(i32 noundef %282)
  ret i32 0
}

declare void @putint(i32 noundef) #1

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
