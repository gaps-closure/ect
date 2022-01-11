; ModuleID = './examples/secdesk/c/orange/fio_siphash.mod.c'
source_filename = "./examples/secdesk/c/orange/fio_siphash.mod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_siphash24(i8*, i64, i64, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @fio_siphash_xy(i8* %9, i64 %10, i64 2, i64 4, i64 %11, i64 %12)
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_siphash_xy(i8*, i64, i64, i64, i64, i64) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8, align 1
  %19 = alloca %union.anon, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = xor i64 8388350548712186997, %24
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %12, align 8
  %27 = xor i64 7737605742629119589, %26
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %11, align 8
  %29 = xor i64 7746018054687388513, %28
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %12, align 8
  %31 = xor i64 8893317812261383291, %30
  store i64 %31, i64* %16, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** %17, align 8
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i8
  store i8 %36, i8* %18, align 1
  br label %37

37:                                               ; preds = %108, %6
  %38 = load i64, i64* %8, align 8
  %39 = icmp uge i64 %38, 8
  br i1 %39, label %40, label %117

40:                                               ; preds = %37
  %41 = load i64*, i64** %17, align 8
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.anon* %19 to i64*
  store i64 %42, i64* %43, align 8
  %44 = bitcast %union.anon* %19 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %16, align 8
  %47 = xor i64 %46, %45
  store i64 %47, i64* %16, align 8
  store i64 0, i64* %20, align 8
  br label %48

48:                                               ; preds = %105, %40
  %49 = load i64, i64* %20, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %108

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %15, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %16, align 8
  %58 = shl i64 %57, 16
  %59 = load i64, i64* %16, align 8
  %60 = lshr i64 %59, 48
  %61 = or i64 %58, %60
  %62 = load i64, i64* %15, align 8
  %63 = xor i64 %61, %62
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = shl i64 %67, 13
  %69 = load i64, i64* %14, align 8
  %70 = lshr i64 %69, 51
  %71 = or i64 %68, %70
  %72 = load i64, i64* %13, align 8
  %73 = xor i64 %71, %72
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %13, align 8
  %75 = shl i64 %74, 32
  %76 = load i64, i64* %13, align 8
  %77 = lshr i64 %76, 32
  %78 = or i64 %75, %77
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = shl i64 %85, 17
  %87 = load i64, i64* %14, align 8
  %88 = lshr i64 %87, 47
  %89 = or i64 %86, %88
  %90 = load i64, i64* %15, align 8
  %91 = xor i64 %89, %90
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %16, align 8
  %93 = shl i64 %92, 21
  %94 = load i64, i64* %16, align 8
  %95 = lshr i64 %94, 43
  %96 = or i64 %93, %95
  %97 = load i64, i64* %13, align 8
  %98 = xor i64 %96, %97
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %15, align 8
  %100 = shl i64 %99, 32
  %101 = load i64, i64* %15, align 8
  %102 = lshr i64 %101, 32
  %103 = or i64 %100, %102
  store i64 %103, i64* %15, align 8
  br label %104

104:                                              ; preds = %53
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %20, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %20, align 8
  br label %48

108:                                              ; preds = %48
  %109 = bitcast %union.anon* %19 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = xor i64 %111, %110
  store i64 %112, i64* %13, align 8
  %113 = load i64*, i64** %17, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  store i64* %114, i64** %17, align 8
  %115 = load i64, i64* %8, align 8
  %116 = sub i64 %115, 8
  store i64 %116, i64* %8, align 8
  br label %37

117:                                              ; preds = %37
  %118 = bitcast %union.anon* %19 to i64*
  store i64 0, i64* %118, align 8
  %119 = bitcast %union.anon* %19 to [8 x i8]*
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %119, i64 0, i64 0
  store i8* %120, i8** %21, align 8
  %121 = load i64*, i64** %17, align 8
  %122 = bitcast i64* %121 to i8*
  store i8* %122, i8** %22, align 8
  %123 = load i64, i64* %8, align 8
  switch i64 %123, label %166 [
    i64 7, label %124
    i64 6, label %130
    i64 5, label %136
    i64 4, label %142
    i64 3, label %148
    i64 2, label %154
    i64 1, label %160
  ]

124:                                              ; preds = %117
  %125 = load i8*, i8** %22, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 6
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %21, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 6
  store i8 %127, i8* %129, align 1
  br label %130

130:                                              ; preds = %117, %124
  %131 = load i8*, i8** %22, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 5
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %21, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 5
  store i8 %133, i8* %135, align 1
  br label %136

136:                                              ; preds = %117, %130
  %137 = load i8*, i8** %22, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = load i8, i8* %138, align 1
  %140 = load i8*, i8** %21, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  store i8 %139, i8* %141, align 1
  br label %142

142:                                              ; preds = %117, %136
  %143 = load i8*, i8** %22, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = load i8*, i8** %21, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  store i8 %145, i8* %147, align 1
  br label %148

148:                                              ; preds = %117, %142
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %21, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8 %151, i8* %153, align 1
  br label %154

154:                                              ; preds = %117, %148
  %155 = load i8*, i8** %22, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %21, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8 %157, i8* %159, align 1
  br label %160

160:                                              ; preds = %117, %154
  %161 = load i8*, i8** %22, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = load i8*, i8** %21, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  store i8 %163, i8* %165, align 1
  br label %166

166:                                              ; preds = %160, %117
  %167 = load i8, i8* %18, align 1
  %168 = bitcast %union.anon* %19 to [8 x i8]*
  %169 = getelementptr inbounds [8 x i8], [8 x i8]* %168, i64 0, i64 7
  store i8 %167, i8* %169, align 1
  %170 = bitcast %union.anon* %19 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %16, align 8
  %173 = xor i64 %172, %171
  store i64 %173, i64* %16, align 8
  br label %174

174:                                              ; preds = %166
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* %15, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %15, align 8
  %178 = load i64, i64* %16, align 8
  %179 = shl i64 %178, 16
  %180 = load i64, i64* %16, align 8
  %181 = lshr i64 %180, 48
  %182 = or i64 %179, %181
  %183 = load i64, i64* %15, align 8
  %184 = xor i64 %182, %183
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* %14, align 8
  %189 = shl i64 %188, 13
  %190 = load i64, i64* %14, align 8
  %191 = lshr i64 %190, 51
  %192 = or i64 %189, %191
  %193 = load i64, i64* %13, align 8
  %194 = xor i64 %192, %193
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %13, align 8
  %196 = shl i64 %195, 32
  %197 = load i64, i64* %13, align 8
  %198 = lshr i64 %197, 32
  %199 = or i64 %196, %198
  store i64 %199, i64* %13, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %15, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %15, align 8
  %203 = load i64, i64* %16, align 8
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, %203
  store i64 %205, i64* %13, align 8
  %206 = load i64, i64* %14, align 8
  %207 = shl i64 %206, 17
  %208 = load i64, i64* %14, align 8
  %209 = lshr i64 %208, 47
  %210 = or i64 %207, %209
  %211 = load i64, i64* %15, align 8
  %212 = xor i64 %210, %211
  store i64 %212, i64* %14, align 8
  %213 = load i64, i64* %16, align 8
  %214 = shl i64 %213, 21
  %215 = load i64, i64* %16, align 8
  %216 = lshr i64 %215, 43
  %217 = or i64 %214, %216
  %218 = load i64, i64* %13, align 8
  %219 = xor i64 %217, %218
  store i64 %219, i64* %16, align 8
  %220 = load i64, i64* %15, align 8
  %221 = shl i64 %220, 32
  %222 = load i64, i64* %15, align 8
  %223 = lshr i64 %222, 32
  %224 = or i64 %221, %223
  store i64 %224, i64* %15, align 8
  br label %225

225:                                              ; preds = %174
  br label %226

226:                                              ; preds = %225
  %227 = load i64, i64* %16, align 8
  %228 = load i64, i64* %15, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %15, align 8
  %230 = load i64, i64* %16, align 8
  %231 = shl i64 %230, 16
  %232 = load i64, i64* %16, align 8
  %233 = lshr i64 %232, 48
  %234 = or i64 %231, %233
  %235 = load i64, i64* %15, align 8
  %236 = xor i64 %234, %235
  store i64 %236, i64* %16, align 8
  %237 = load i64, i64* %14, align 8
  %238 = load i64, i64* %13, align 8
  %239 = add i64 %238, %237
  store i64 %239, i64* %13, align 8
  %240 = load i64, i64* %14, align 8
  %241 = shl i64 %240, 13
  %242 = load i64, i64* %14, align 8
  %243 = lshr i64 %242, 51
  %244 = or i64 %241, %243
  %245 = load i64, i64* %13, align 8
  %246 = xor i64 %244, %245
  store i64 %246, i64* %14, align 8
  %247 = load i64, i64* %13, align 8
  %248 = shl i64 %247, 32
  %249 = load i64, i64* %13, align 8
  %250 = lshr i64 %249, 32
  %251 = or i64 %248, %250
  store i64 %251, i64* %13, align 8
  %252 = load i64, i64* %14, align 8
  %253 = load i64, i64* %15, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %15, align 8
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %13, align 8
  %257 = add i64 %256, %255
  store i64 %257, i64* %13, align 8
  %258 = load i64, i64* %14, align 8
  %259 = shl i64 %258, 17
  %260 = load i64, i64* %14, align 8
  %261 = lshr i64 %260, 47
  %262 = or i64 %259, %261
  %263 = load i64, i64* %15, align 8
  %264 = xor i64 %262, %263
  store i64 %264, i64* %14, align 8
  %265 = load i64, i64* %16, align 8
  %266 = shl i64 %265, 21
  %267 = load i64, i64* %16, align 8
  %268 = lshr i64 %267, 43
  %269 = or i64 %266, %268
  %270 = load i64, i64* %13, align 8
  %271 = xor i64 %269, %270
  store i64 %271, i64* %16, align 8
  %272 = load i64, i64* %15, align 8
  %273 = shl i64 %272, 32
  %274 = load i64, i64* %15, align 8
  %275 = lshr i64 %274, 32
  %276 = or i64 %273, %275
  store i64 %276, i64* %15, align 8
  br label %277

277:                                              ; preds = %226
  %278 = bitcast %union.anon* %19 to i64*
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %13, align 8
  %281 = xor i64 %280, %279
  store i64 %281, i64* %13, align 8
  %282 = load i64, i64* %15, align 8
  %283 = xor i64 %282, 255
  store i64 %283, i64* %15, align 8
  store i64 0, i64* %23, align 8
  br label %284

284:                                              ; preds = %341, %277
  %285 = load i64, i64* %23, align 8
  %286 = load i64, i64* %10, align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %344

288:                                              ; preds = %284
  br label %289

289:                                              ; preds = %288
  %290 = load i64, i64* %16, align 8
  %291 = load i64, i64* %15, align 8
  %292 = add i64 %291, %290
  store i64 %292, i64* %15, align 8
  %293 = load i64, i64* %16, align 8
  %294 = shl i64 %293, 16
  %295 = load i64, i64* %16, align 8
  %296 = lshr i64 %295, 48
  %297 = or i64 %294, %296
  %298 = load i64, i64* %15, align 8
  %299 = xor i64 %297, %298
  store i64 %299, i64* %16, align 8
  %300 = load i64, i64* %14, align 8
  %301 = load i64, i64* %13, align 8
  %302 = add i64 %301, %300
  store i64 %302, i64* %13, align 8
  %303 = load i64, i64* %14, align 8
  %304 = shl i64 %303, 13
  %305 = load i64, i64* %14, align 8
  %306 = lshr i64 %305, 51
  %307 = or i64 %304, %306
  %308 = load i64, i64* %13, align 8
  %309 = xor i64 %307, %308
  store i64 %309, i64* %14, align 8
  %310 = load i64, i64* %13, align 8
  %311 = shl i64 %310, 32
  %312 = load i64, i64* %13, align 8
  %313 = lshr i64 %312, 32
  %314 = or i64 %311, %313
  store i64 %314, i64* %13, align 8
  %315 = load i64, i64* %14, align 8
  %316 = load i64, i64* %15, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* %15, align 8
  %318 = load i64, i64* %16, align 8
  %319 = load i64, i64* %13, align 8
  %320 = add i64 %319, %318
  store i64 %320, i64* %13, align 8
  %321 = load i64, i64* %14, align 8
  %322 = shl i64 %321, 17
  %323 = load i64, i64* %14, align 8
  %324 = lshr i64 %323, 47
  %325 = or i64 %322, %324
  %326 = load i64, i64* %15, align 8
  %327 = xor i64 %325, %326
  store i64 %327, i64* %14, align 8
  %328 = load i64, i64* %16, align 8
  %329 = shl i64 %328, 21
  %330 = load i64, i64* %16, align 8
  %331 = lshr i64 %330, 43
  %332 = or i64 %329, %331
  %333 = load i64, i64* %13, align 8
  %334 = xor i64 %332, %333
  store i64 %334, i64* %16, align 8
  %335 = load i64, i64* %15, align 8
  %336 = shl i64 %335, 32
  %337 = load i64, i64* %15, align 8
  %338 = lshr i64 %337, 32
  %339 = or i64 %336, %338
  store i64 %339, i64* %15, align 8
  br label %340

340:                                              ; preds = %289
  br label %341

341:                                              ; preds = %340
  %342 = load i64, i64* %23, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %23, align 8
  br label %284

344:                                              ; preds = %284
  br label %345

345:                                              ; preds = %344
  %346 = load i64, i64* %16, align 8
  %347 = load i64, i64* %15, align 8
  %348 = add i64 %347, %346
  store i64 %348, i64* %15, align 8
  %349 = load i64, i64* %16, align 8
  %350 = shl i64 %349, 16
  %351 = load i64, i64* %16, align 8
  %352 = lshr i64 %351, 48
  %353 = or i64 %350, %352
  %354 = load i64, i64* %15, align 8
  %355 = xor i64 %353, %354
  store i64 %355, i64* %16, align 8
  %356 = load i64, i64* %14, align 8
  %357 = load i64, i64* %13, align 8
  %358 = add i64 %357, %356
  store i64 %358, i64* %13, align 8
  %359 = load i64, i64* %14, align 8
  %360 = shl i64 %359, 13
  %361 = load i64, i64* %14, align 8
  %362 = lshr i64 %361, 51
  %363 = or i64 %360, %362
  %364 = load i64, i64* %13, align 8
  %365 = xor i64 %363, %364
  store i64 %365, i64* %14, align 8
  %366 = load i64, i64* %13, align 8
  %367 = shl i64 %366, 32
  %368 = load i64, i64* %13, align 8
  %369 = lshr i64 %368, 32
  %370 = or i64 %367, %369
  store i64 %370, i64* %13, align 8
  %371 = load i64, i64* %14, align 8
  %372 = load i64, i64* %15, align 8
  %373 = add i64 %372, %371
  store i64 %373, i64* %15, align 8
  %374 = load i64, i64* %16, align 8
  %375 = load i64, i64* %13, align 8
  %376 = add i64 %375, %374
  store i64 %376, i64* %13, align 8
  %377 = load i64, i64* %14, align 8
  %378 = shl i64 %377, 17
  %379 = load i64, i64* %14, align 8
  %380 = lshr i64 %379, 47
  %381 = or i64 %378, %380
  %382 = load i64, i64* %15, align 8
  %383 = xor i64 %381, %382
  store i64 %383, i64* %14, align 8
  %384 = load i64, i64* %16, align 8
  %385 = shl i64 %384, 21
  %386 = load i64, i64* %16, align 8
  %387 = lshr i64 %386, 43
  %388 = or i64 %385, %387
  %389 = load i64, i64* %13, align 8
  %390 = xor i64 %388, %389
  store i64 %390, i64* %16, align 8
  %391 = load i64, i64* %15, align 8
  %392 = shl i64 %391, 32
  %393 = load i64, i64* %15, align 8
  %394 = lshr i64 %393, 32
  %395 = or i64 %392, %394
  store i64 %395, i64* %15, align 8
  br label %396

396:                                              ; preds = %345
  br label %397

397:                                              ; preds = %396
  %398 = load i64, i64* %16, align 8
  %399 = load i64, i64* %15, align 8
  %400 = add i64 %399, %398
  store i64 %400, i64* %15, align 8
  %401 = load i64, i64* %16, align 8
  %402 = shl i64 %401, 16
  %403 = load i64, i64* %16, align 8
  %404 = lshr i64 %403, 48
  %405 = or i64 %402, %404
  %406 = load i64, i64* %15, align 8
  %407 = xor i64 %405, %406
  store i64 %407, i64* %16, align 8
  %408 = load i64, i64* %14, align 8
  %409 = load i64, i64* %13, align 8
  %410 = add i64 %409, %408
  store i64 %410, i64* %13, align 8
  %411 = load i64, i64* %14, align 8
  %412 = shl i64 %411, 13
  %413 = load i64, i64* %14, align 8
  %414 = lshr i64 %413, 51
  %415 = or i64 %412, %414
  %416 = load i64, i64* %13, align 8
  %417 = xor i64 %415, %416
  store i64 %417, i64* %14, align 8
  %418 = load i64, i64* %13, align 8
  %419 = shl i64 %418, 32
  %420 = load i64, i64* %13, align 8
  %421 = lshr i64 %420, 32
  %422 = or i64 %419, %421
  store i64 %422, i64* %13, align 8
  %423 = load i64, i64* %14, align 8
  %424 = load i64, i64* %15, align 8
  %425 = add i64 %424, %423
  store i64 %425, i64* %15, align 8
  %426 = load i64, i64* %16, align 8
  %427 = load i64, i64* %13, align 8
  %428 = add i64 %427, %426
  store i64 %428, i64* %13, align 8
  %429 = load i64, i64* %14, align 8
  %430 = shl i64 %429, 17
  %431 = load i64, i64* %14, align 8
  %432 = lshr i64 %431, 47
  %433 = or i64 %430, %432
  %434 = load i64, i64* %15, align 8
  %435 = xor i64 %433, %434
  store i64 %435, i64* %14, align 8
  %436 = load i64, i64* %16, align 8
  %437 = shl i64 %436, 21
  %438 = load i64, i64* %16, align 8
  %439 = lshr i64 %438, 43
  %440 = or i64 %437, %439
  %441 = load i64, i64* %13, align 8
  %442 = xor i64 %440, %441
  store i64 %442, i64* %16, align 8
  %443 = load i64, i64* %15, align 8
  %444 = shl i64 %443, 32
  %445 = load i64, i64* %15, align 8
  %446 = lshr i64 %445, 32
  %447 = or i64 %444, %446
  store i64 %447, i64* %15, align 8
  br label %448

448:                                              ; preds = %397
  br label %449

449:                                              ; preds = %448
  %450 = load i64, i64* %16, align 8
  %451 = load i64, i64* %15, align 8
  %452 = add i64 %451, %450
  store i64 %452, i64* %15, align 8
  %453 = load i64, i64* %16, align 8
  %454 = shl i64 %453, 16
  %455 = load i64, i64* %16, align 8
  %456 = lshr i64 %455, 48
  %457 = or i64 %454, %456
  %458 = load i64, i64* %15, align 8
  %459 = xor i64 %457, %458
  store i64 %459, i64* %16, align 8
  %460 = load i64, i64* %14, align 8
  %461 = load i64, i64* %13, align 8
  %462 = add i64 %461, %460
  store i64 %462, i64* %13, align 8
  %463 = load i64, i64* %14, align 8
  %464 = shl i64 %463, 13
  %465 = load i64, i64* %14, align 8
  %466 = lshr i64 %465, 51
  %467 = or i64 %464, %466
  %468 = load i64, i64* %13, align 8
  %469 = xor i64 %467, %468
  store i64 %469, i64* %14, align 8
  %470 = load i64, i64* %13, align 8
  %471 = shl i64 %470, 32
  %472 = load i64, i64* %13, align 8
  %473 = lshr i64 %472, 32
  %474 = or i64 %471, %473
  store i64 %474, i64* %13, align 8
  %475 = load i64, i64* %14, align 8
  %476 = load i64, i64* %15, align 8
  %477 = add i64 %476, %475
  store i64 %477, i64* %15, align 8
  %478 = load i64, i64* %16, align 8
  %479 = load i64, i64* %13, align 8
  %480 = add i64 %479, %478
  store i64 %480, i64* %13, align 8
  %481 = load i64, i64* %14, align 8
  %482 = shl i64 %481, 17
  %483 = load i64, i64* %14, align 8
  %484 = lshr i64 %483, 47
  %485 = or i64 %482, %484
  %486 = load i64, i64* %15, align 8
  %487 = xor i64 %485, %486
  store i64 %487, i64* %14, align 8
  %488 = load i64, i64* %16, align 8
  %489 = shl i64 %488, 21
  %490 = load i64, i64* %16, align 8
  %491 = lshr i64 %490, 43
  %492 = or i64 %489, %491
  %493 = load i64, i64* %13, align 8
  %494 = xor i64 %492, %493
  store i64 %494, i64* %16, align 8
  %495 = load i64, i64* %15, align 8
  %496 = shl i64 %495, 32
  %497 = load i64, i64* %15, align 8
  %498 = lshr i64 %497, 32
  %499 = or i64 %496, %498
  store i64 %499, i64* %15, align 8
  br label %500

500:                                              ; preds = %449
  br label %501

501:                                              ; preds = %500
  %502 = load i64, i64* %16, align 8
  %503 = load i64, i64* %15, align 8
  %504 = add i64 %503, %502
  store i64 %504, i64* %15, align 8
  %505 = load i64, i64* %16, align 8
  %506 = shl i64 %505, 16
  %507 = load i64, i64* %16, align 8
  %508 = lshr i64 %507, 48
  %509 = or i64 %506, %508
  %510 = load i64, i64* %15, align 8
  %511 = xor i64 %509, %510
  store i64 %511, i64* %16, align 8
  %512 = load i64, i64* %14, align 8
  %513 = load i64, i64* %13, align 8
  %514 = add i64 %513, %512
  store i64 %514, i64* %13, align 8
  %515 = load i64, i64* %14, align 8
  %516 = shl i64 %515, 13
  %517 = load i64, i64* %14, align 8
  %518 = lshr i64 %517, 51
  %519 = or i64 %516, %518
  %520 = load i64, i64* %13, align 8
  %521 = xor i64 %519, %520
  store i64 %521, i64* %14, align 8
  %522 = load i64, i64* %13, align 8
  %523 = shl i64 %522, 32
  %524 = load i64, i64* %13, align 8
  %525 = lshr i64 %524, 32
  %526 = or i64 %523, %525
  store i64 %526, i64* %13, align 8
  %527 = load i64, i64* %14, align 8
  %528 = load i64, i64* %15, align 8
  %529 = add i64 %528, %527
  store i64 %529, i64* %15, align 8
  %530 = load i64, i64* %16, align 8
  %531 = load i64, i64* %13, align 8
  %532 = add i64 %531, %530
  store i64 %532, i64* %13, align 8
  %533 = load i64, i64* %14, align 8
  %534 = shl i64 %533, 17
  %535 = load i64, i64* %14, align 8
  %536 = lshr i64 %535, 47
  %537 = or i64 %534, %536
  %538 = load i64, i64* %15, align 8
  %539 = xor i64 %537, %538
  store i64 %539, i64* %14, align 8
  %540 = load i64, i64* %16, align 8
  %541 = shl i64 %540, 21
  %542 = load i64, i64* %16, align 8
  %543 = lshr i64 %542, 43
  %544 = or i64 %541, %543
  %545 = load i64, i64* %13, align 8
  %546 = xor i64 %544, %545
  store i64 %546, i64* %16, align 8
  %547 = load i64, i64* %15, align 8
  %548 = shl i64 %547, 32
  %549 = load i64, i64* %15, align 8
  %550 = lshr i64 %549, 32
  %551 = or i64 %548, %550
  store i64 %551, i64* %15, align 8
  br label %552

552:                                              ; preds = %501
  %553 = load i64, i64* %14, align 8
  %554 = load i64, i64* %15, align 8
  %555 = xor i64 %553, %554
  %556 = load i64, i64* %16, align 8
  %557 = xor i64 %555, %556
  %558 = load i64, i64* %13, align 8
  %559 = xor i64 %558, %557
  store i64 %559, i64* %13, align 8
  %560 = load i64, i64* %13, align 8
  ret i64 %560
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @fio_siphash_xy(i8* %9, i64 %10, i64 1, i64 3, i64 %11, i64 %12)
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-12 "}
