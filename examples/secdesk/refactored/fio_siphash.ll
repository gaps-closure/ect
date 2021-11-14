; ModuleID = 'fio_siphash.c'
source_filename = "fio_siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_siphash24(i8* %0, i64 %1, i64 %2, i64 %3) #0 !dbg !14 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !23, metadata !DIExpression()), !dbg !24
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !25, metadata !DIExpression()), !dbg !26
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !27, metadata !DIExpression()), !dbg !28
  %9 = load i8*, i8** %5, align 8, !dbg !29
  %10 = load i64, i64* %6, align 8, !dbg !30
  %11 = load i64, i64* %7, align 8, !dbg !31
  %12 = load i64, i64* %8, align 8, !dbg !32
  %13 = call i64 @fio_siphash_xy(i8* %9, i64 %10, i64 2, i64 4, i64 %11, i64 %12), !dbg !33
  ret i64 %13, !dbg !34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_siphash_xy(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 !dbg !35 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !38, metadata !DIExpression()), !dbg !39
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !40, metadata !DIExpression()), !dbg !41
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !42, metadata !DIExpression()), !dbg !43
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !44, metadata !DIExpression()), !dbg !45
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !46, metadata !DIExpression()), !dbg !47
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i64* %13, metadata !50, metadata !DIExpression()), !dbg !51
  %24 = load i64, i64* %11, align 8, !dbg !52
  %25 = xor i64 8388350548712186997, %24, !dbg !53
  store i64 %25, i64* %13, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i64* %14, metadata !54, metadata !DIExpression()), !dbg !55
  %26 = load i64, i64* %12, align 8, !dbg !56
  %27 = xor i64 7737605742629119589, %26, !dbg !57
  store i64 %27, i64* %14, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i64* %15, metadata !58, metadata !DIExpression()), !dbg !59
  %28 = load i64, i64* %11, align 8, !dbg !60
  %29 = xor i64 7746018054687388513, %28, !dbg !61
  store i64 %29, i64* %15, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %16, metadata !62, metadata !DIExpression()), !dbg !63
  %30 = load i64, i64* %12, align 8, !dbg !64
  %31 = xor i64 8893317812261383291, %30, !dbg !65
  store i64 %31, i64* %16, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64** %17, metadata !66, metadata !DIExpression()), !dbg !69
  %32 = load i8*, i8** %7, align 8, !dbg !70
  %33 = bitcast i8* %32 to i64*, !dbg !70
  store i64* %33, i64** %17, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8* %18, metadata !71, metadata !DIExpression()), !dbg !75
  %34 = load i64, i64* %8, align 8, !dbg !76
  %35 = and i64 %34, 255, !dbg !77
  %36 = trunc i64 %35 to i8, !dbg !76
  store i8 %36, i8* %18, align 1, !dbg !75
  call void @llvm.dbg.declare(metadata %union.anon* %19, metadata !78, metadata !DIExpression()), !dbg !86
  br label %37, !dbg !87

37:                                               ; preds = %108, %6
  %38 = load i64, i64* %8, align 8, !dbg !88
  %39 = icmp uge i64 %38, 8, !dbg !89
  br i1 %39, label %40, label %117, !dbg !87

40:                                               ; preds = %37
  %41 = load i64*, i64** %17, align 8, !dbg !90
  %42 = load i64, i64* %41, align 8, !dbg !90
  %43 = bitcast %union.anon* %19 to i64*, !dbg !92
  store i64 %42, i64* %43, align 8, !dbg !93
  %44 = bitcast %union.anon* %19 to i64*, !dbg !94
  %45 = load i64, i64* %44, align 8, !dbg !94
  %46 = load i64, i64* %16, align 8, !dbg !95
  %47 = xor i64 %46, %45, !dbg !95
  store i64 %47, i64* %16, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata i64* %20, metadata !96, metadata !DIExpression()), !dbg !98
  store i64 0, i64* %20, align 8, !dbg !98
  br label %48, !dbg !99

48:                                               ; preds = %105, %40
  %49 = load i64, i64* %20, align 8, !dbg !100
  %50 = load i64, i64* %9, align 8, !dbg !102
  %51 = icmp ult i64 %49, %50, !dbg !103
  br i1 %51, label %52, label %108, !dbg !104

52:                                               ; preds = %48
  br label %53, !dbg !105

53:                                               ; preds = %52
  %54 = load i64, i64* %16, align 8, !dbg !107
  %55 = load i64, i64* %15, align 8, !dbg !107
  %56 = add i64 %55, %54, !dbg !107
  store i64 %56, i64* %15, align 8, !dbg !107
  %57 = load i64, i64* %16, align 8, !dbg !107
  %58 = shl i64 %57, 16, !dbg !107
  %59 = load i64, i64* %16, align 8, !dbg !107
  %60 = lshr i64 %59, 48, !dbg !107
  %61 = or i64 %58, %60, !dbg !107
  %62 = load i64, i64* %15, align 8, !dbg !107
  %63 = xor i64 %61, %62, !dbg !107
  store i64 %63, i64* %16, align 8, !dbg !107
  %64 = load i64, i64* %14, align 8, !dbg !107
  %65 = load i64, i64* %13, align 8, !dbg !107
  %66 = add i64 %65, %64, !dbg !107
  store i64 %66, i64* %13, align 8, !dbg !107
  %67 = load i64, i64* %14, align 8, !dbg !107
  %68 = shl i64 %67, 13, !dbg !107
  %69 = load i64, i64* %14, align 8, !dbg !107
  %70 = lshr i64 %69, 51, !dbg !107
  %71 = or i64 %68, %70, !dbg !107
  %72 = load i64, i64* %13, align 8, !dbg !107
  %73 = xor i64 %71, %72, !dbg !107
  store i64 %73, i64* %14, align 8, !dbg !107
  %74 = load i64, i64* %13, align 8, !dbg !107
  %75 = shl i64 %74, 32, !dbg !107
  %76 = load i64, i64* %13, align 8, !dbg !107
  %77 = lshr i64 %76, 32, !dbg !107
  %78 = or i64 %75, %77, !dbg !107
  store i64 %78, i64* %13, align 8, !dbg !107
  %79 = load i64, i64* %14, align 8, !dbg !107
  %80 = load i64, i64* %15, align 8, !dbg !107
  %81 = add i64 %80, %79, !dbg !107
  store i64 %81, i64* %15, align 8, !dbg !107
  %82 = load i64, i64* %16, align 8, !dbg !107
  %83 = load i64, i64* %13, align 8, !dbg !107
  %84 = add i64 %83, %82, !dbg !107
  store i64 %84, i64* %13, align 8, !dbg !107
  %85 = load i64, i64* %14, align 8, !dbg !107
  %86 = shl i64 %85, 17, !dbg !107
  %87 = load i64, i64* %14, align 8, !dbg !107
  %88 = lshr i64 %87, 47, !dbg !107
  %89 = or i64 %86, %88, !dbg !107
  %90 = load i64, i64* %15, align 8, !dbg !107
  %91 = xor i64 %89, %90, !dbg !107
  store i64 %91, i64* %14, align 8, !dbg !107
  %92 = load i64, i64* %16, align 8, !dbg !107
  %93 = shl i64 %92, 21, !dbg !107
  %94 = load i64, i64* %16, align 8, !dbg !107
  %95 = lshr i64 %94, 43, !dbg !107
  %96 = or i64 %93, %95, !dbg !107
  %97 = load i64, i64* %13, align 8, !dbg !107
  %98 = xor i64 %96, %97, !dbg !107
  store i64 %98, i64* %16, align 8, !dbg !107
  %99 = load i64, i64* %15, align 8, !dbg !107
  %100 = shl i64 %99, 32, !dbg !107
  %101 = load i64, i64* %15, align 8, !dbg !107
  %102 = lshr i64 %101, 32, !dbg !107
  %103 = or i64 %100, %102, !dbg !107
  store i64 %103, i64* %15, align 8, !dbg !107
  br label %104, !dbg !107

104:                                              ; preds = %53
  br label %105, !dbg !109

105:                                              ; preds = %104
  %106 = load i64, i64* %20, align 8, !dbg !110
  %107 = add i64 %106, 1, !dbg !110
  store i64 %107, i64* %20, align 8, !dbg !110
  br label %48, !dbg !111, !llvm.loop !112

108:                                              ; preds = %48
  %109 = bitcast %union.anon* %19 to i64*, !dbg !114
  %110 = load i64, i64* %109, align 8, !dbg !114
  %111 = load i64, i64* %13, align 8, !dbg !115
  %112 = xor i64 %111, %110, !dbg !115
  store i64 %112, i64* %13, align 8, !dbg !115
  %113 = load i64*, i64** %17, align 8, !dbg !116
  %114 = getelementptr inbounds i64, i64* %113, i64 1, !dbg !116
  store i64* %114, i64** %17, align 8, !dbg !116
  %115 = load i64, i64* %8, align 8, !dbg !117
  %116 = sub i64 %115, 8, !dbg !117
  store i64 %116, i64* %8, align 8, !dbg !117
  br label %37, !dbg !87, !llvm.loop !118

117:                                              ; preds = %37
  %118 = bitcast %union.anon* %19 to i64*, !dbg !120
  store i64 0, i64* %118, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %21, metadata !122, metadata !DIExpression()), !dbg !124
  %119 = bitcast %union.anon* %19 to [8 x i8]*, !dbg !125
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %119, i64 0, i64 0, !dbg !126
  store i8* %120, i8** %21, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i8** %22, metadata !127, metadata !DIExpression()), !dbg !128
  %121 = load i64*, i64** %17, align 8, !dbg !129
  %122 = bitcast i64* %121 to i8*, !dbg !130
  store i8* %122, i8** %22, align 8, !dbg !128
  %123 = load i64, i64* %8, align 8, !dbg !131
  switch i64 %123, label %166 [
    i64 7, label %124
    i64 6, label %130
    i64 5, label %136
    i64 4, label %142
    i64 3, label %148
    i64 2, label %154
    i64 1, label %160
  ], !dbg !132

124:                                              ; preds = %117
  %125 = load i8*, i8** %22, align 8, !dbg !133
  %126 = getelementptr inbounds i8, i8* %125, i64 6, !dbg !133
  %127 = load i8, i8* %126, align 1, !dbg !133
  %128 = load i8*, i8** %21, align 8, !dbg !135
  %129 = getelementptr inbounds i8, i8* %128, i64 6, !dbg !135
  store i8 %127, i8* %129, align 1, !dbg !136
  br label %130, !dbg !135

130:                                              ; preds = %117, %124
  %131 = load i8*, i8** %22, align 8, !dbg !137
  %132 = getelementptr inbounds i8, i8* %131, i64 5, !dbg !137
  %133 = load i8, i8* %132, align 1, !dbg !137
  %134 = load i8*, i8** %21, align 8, !dbg !138
  %135 = getelementptr inbounds i8, i8* %134, i64 5, !dbg !138
  store i8 %133, i8* %135, align 1, !dbg !139
  br label %136, !dbg !138

136:                                              ; preds = %117, %130
  %137 = load i8*, i8** %22, align 8, !dbg !140
  %138 = getelementptr inbounds i8, i8* %137, i64 4, !dbg !140
  %139 = load i8, i8* %138, align 1, !dbg !140
  %140 = load i8*, i8** %21, align 8, !dbg !141
  %141 = getelementptr inbounds i8, i8* %140, i64 4, !dbg !141
  store i8 %139, i8* %141, align 1, !dbg !142
  br label %142, !dbg !141

142:                                              ; preds = %117, %136
  %143 = load i8*, i8** %22, align 8, !dbg !143
  %144 = getelementptr inbounds i8, i8* %143, i64 3, !dbg !143
  %145 = load i8, i8* %144, align 1, !dbg !143
  %146 = load i8*, i8** %21, align 8, !dbg !144
  %147 = getelementptr inbounds i8, i8* %146, i64 3, !dbg !144
  store i8 %145, i8* %147, align 1, !dbg !145
  br label %148, !dbg !144

148:                                              ; preds = %117, %142
  %149 = load i8*, i8** %22, align 8, !dbg !146
  %150 = getelementptr inbounds i8, i8* %149, i64 2, !dbg !146
  %151 = load i8, i8* %150, align 1, !dbg !146
  %152 = load i8*, i8** %21, align 8, !dbg !147
  %153 = getelementptr inbounds i8, i8* %152, i64 2, !dbg !147
  store i8 %151, i8* %153, align 1, !dbg !148
  br label %154, !dbg !147

154:                                              ; preds = %117, %148
  %155 = load i8*, i8** %22, align 8, !dbg !149
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !149
  %157 = load i8, i8* %156, align 1, !dbg !149
  %158 = load i8*, i8** %21, align 8, !dbg !150
  %159 = getelementptr inbounds i8, i8* %158, i64 1, !dbg !150
  store i8 %157, i8* %159, align 1, !dbg !151
  br label %160, !dbg !150

160:                                              ; preds = %117, %154
  %161 = load i8*, i8** %22, align 8, !dbg !152
  %162 = getelementptr inbounds i8, i8* %161, i64 0, !dbg !152
  %163 = load i8, i8* %162, align 1, !dbg !152
  %164 = load i8*, i8** %21, align 8, !dbg !153
  %165 = getelementptr inbounds i8, i8* %164, i64 0, !dbg !153
  store i8 %163, i8* %165, align 1, !dbg !154
  br label %166, !dbg !155

166:                                              ; preds = %160, %117
  %167 = load i8, i8* %18, align 1, !dbg !156
  %168 = bitcast %union.anon* %19 to [8 x i8]*, !dbg !157
  %169 = getelementptr inbounds [8 x i8], [8 x i8]* %168, i64 0, i64 7, !dbg !158
  store i8 %167, i8* %169, align 1, !dbg !159
  %170 = bitcast %union.anon* %19 to i64*, !dbg !160
  %171 = load i64, i64* %170, align 8, !dbg !160
  %172 = load i64, i64* %16, align 8, !dbg !161
  %173 = xor i64 %172, %171, !dbg !161
  store i64 %173, i64* %16, align 8, !dbg !161
  br label %174, !dbg !162

174:                                              ; preds = %166
  %175 = load i64, i64* %16, align 8, !dbg !163
  %176 = load i64, i64* %15, align 8, !dbg !163
  %177 = add i64 %176, %175, !dbg !163
  store i64 %177, i64* %15, align 8, !dbg !163
  %178 = load i64, i64* %16, align 8, !dbg !163
  %179 = shl i64 %178, 16, !dbg !163
  %180 = load i64, i64* %16, align 8, !dbg !163
  %181 = lshr i64 %180, 48, !dbg !163
  %182 = or i64 %179, %181, !dbg !163
  %183 = load i64, i64* %15, align 8, !dbg !163
  %184 = xor i64 %182, %183, !dbg !163
  store i64 %184, i64* %16, align 8, !dbg !163
  %185 = load i64, i64* %14, align 8, !dbg !163
  %186 = load i64, i64* %13, align 8, !dbg !163
  %187 = add i64 %186, %185, !dbg !163
  store i64 %187, i64* %13, align 8, !dbg !163
  %188 = load i64, i64* %14, align 8, !dbg !163
  %189 = shl i64 %188, 13, !dbg !163
  %190 = load i64, i64* %14, align 8, !dbg !163
  %191 = lshr i64 %190, 51, !dbg !163
  %192 = or i64 %189, %191, !dbg !163
  %193 = load i64, i64* %13, align 8, !dbg !163
  %194 = xor i64 %192, %193, !dbg !163
  store i64 %194, i64* %14, align 8, !dbg !163
  %195 = load i64, i64* %13, align 8, !dbg !163
  %196 = shl i64 %195, 32, !dbg !163
  %197 = load i64, i64* %13, align 8, !dbg !163
  %198 = lshr i64 %197, 32, !dbg !163
  %199 = or i64 %196, %198, !dbg !163
  store i64 %199, i64* %13, align 8, !dbg !163
  %200 = load i64, i64* %14, align 8, !dbg !163
  %201 = load i64, i64* %15, align 8, !dbg !163
  %202 = add i64 %201, %200, !dbg !163
  store i64 %202, i64* %15, align 8, !dbg !163
  %203 = load i64, i64* %16, align 8, !dbg !163
  %204 = load i64, i64* %13, align 8, !dbg !163
  %205 = add i64 %204, %203, !dbg !163
  store i64 %205, i64* %13, align 8, !dbg !163
  %206 = load i64, i64* %14, align 8, !dbg !163
  %207 = shl i64 %206, 17, !dbg !163
  %208 = load i64, i64* %14, align 8, !dbg !163
  %209 = lshr i64 %208, 47, !dbg !163
  %210 = or i64 %207, %209, !dbg !163
  %211 = load i64, i64* %15, align 8, !dbg !163
  %212 = xor i64 %210, %211, !dbg !163
  store i64 %212, i64* %14, align 8, !dbg !163
  %213 = load i64, i64* %16, align 8, !dbg !163
  %214 = shl i64 %213, 21, !dbg !163
  %215 = load i64, i64* %16, align 8, !dbg !163
  %216 = lshr i64 %215, 43, !dbg !163
  %217 = or i64 %214, %216, !dbg !163
  %218 = load i64, i64* %13, align 8, !dbg !163
  %219 = xor i64 %217, %218, !dbg !163
  store i64 %219, i64* %16, align 8, !dbg !163
  %220 = load i64, i64* %15, align 8, !dbg !163
  %221 = shl i64 %220, 32, !dbg !163
  %222 = load i64, i64* %15, align 8, !dbg !163
  %223 = lshr i64 %222, 32, !dbg !163
  %224 = or i64 %221, %223, !dbg !163
  store i64 %224, i64* %15, align 8, !dbg !163
  br label %225, !dbg !163

225:                                              ; preds = %174
  br label %226, !dbg !165

226:                                              ; preds = %225
  %227 = load i64, i64* %16, align 8, !dbg !166
  %228 = load i64, i64* %15, align 8, !dbg !166
  %229 = add i64 %228, %227, !dbg !166
  store i64 %229, i64* %15, align 8, !dbg !166
  %230 = load i64, i64* %16, align 8, !dbg !166
  %231 = shl i64 %230, 16, !dbg !166
  %232 = load i64, i64* %16, align 8, !dbg !166
  %233 = lshr i64 %232, 48, !dbg !166
  %234 = or i64 %231, %233, !dbg !166
  %235 = load i64, i64* %15, align 8, !dbg !166
  %236 = xor i64 %234, %235, !dbg !166
  store i64 %236, i64* %16, align 8, !dbg !166
  %237 = load i64, i64* %14, align 8, !dbg !166
  %238 = load i64, i64* %13, align 8, !dbg !166
  %239 = add i64 %238, %237, !dbg !166
  store i64 %239, i64* %13, align 8, !dbg !166
  %240 = load i64, i64* %14, align 8, !dbg !166
  %241 = shl i64 %240, 13, !dbg !166
  %242 = load i64, i64* %14, align 8, !dbg !166
  %243 = lshr i64 %242, 51, !dbg !166
  %244 = or i64 %241, %243, !dbg !166
  %245 = load i64, i64* %13, align 8, !dbg !166
  %246 = xor i64 %244, %245, !dbg !166
  store i64 %246, i64* %14, align 8, !dbg !166
  %247 = load i64, i64* %13, align 8, !dbg !166
  %248 = shl i64 %247, 32, !dbg !166
  %249 = load i64, i64* %13, align 8, !dbg !166
  %250 = lshr i64 %249, 32, !dbg !166
  %251 = or i64 %248, %250, !dbg !166
  store i64 %251, i64* %13, align 8, !dbg !166
  %252 = load i64, i64* %14, align 8, !dbg !166
  %253 = load i64, i64* %15, align 8, !dbg !166
  %254 = add i64 %253, %252, !dbg !166
  store i64 %254, i64* %15, align 8, !dbg !166
  %255 = load i64, i64* %16, align 8, !dbg !166
  %256 = load i64, i64* %13, align 8, !dbg !166
  %257 = add i64 %256, %255, !dbg !166
  store i64 %257, i64* %13, align 8, !dbg !166
  %258 = load i64, i64* %14, align 8, !dbg !166
  %259 = shl i64 %258, 17, !dbg !166
  %260 = load i64, i64* %14, align 8, !dbg !166
  %261 = lshr i64 %260, 47, !dbg !166
  %262 = or i64 %259, %261, !dbg !166
  %263 = load i64, i64* %15, align 8, !dbg !166
  %264 = xor i64 %262, %263, !dbg !166
  store i64 %264, i64* %14, align 8, !dbg !166
  %265 = load i64, i64* %16, align 8, !dbg !166
  %266 = shl i64 %265, 21, !dbg !166
  %267 = load i64, i64* %16, align 8, !dbg !166
  %268 = lshr i64 %267, 43, !dbg !166
  %269 = or i64 %266, %268, !dbg !166
  %270 = load i64, i64* %13, align 8, !dbg !166
  %271 = xor i64 %269, %270, !dbg !166
  store i64 %271, i64* %16, align 8, !dbg !166
  %272 = load i64, i64* %15, align 8, !dbg !166
  %273 = shl i64 %272, 32, !dbg !166
  %274 = load i64, i64* %15, align 8, !dbg !166
  %275 = lshr i64 %274, 32, !dbg !166
  %276 = or i64 %273, %275, !dbg !166
  store i64 %276, i64* %15, align 8, !dbg !166
  br label %277, !dbg !166

277:                                              ; preds = %226
  %278 = bitcast %union.anon* %19 to i64*, !dbg !168
  %279 = load i64, i64* %278, align 8, !dbg !168
  %280 = load i64, i64* %13, align 8, !dbg !169
  %281 = xor i64 %280, %279, !dbg !169
  store i64 %281, i64* %13, align 8, !dbg !169
  %282 = load i64, i64* %15, align 8, !dbg !170
  %283 = xor i64 %282, 255, !dbg !170
  store i64 %283, i64* %15, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i64* %23, metadata !171, metadata !DIExpression()), !dbg !173
  store i64 0, i64* %23, align 8, !dbg !173
  br label %284, !dbg !174

284:                                              ; preds = %341, %277
  %285 = load i64, i64* %23, align 8, !dbg !175
  %286 = load i64, i64* %10, align 8, !dbg !177
  %287 = icmp ult i64 %285, %286, !dbg !178
  br i1 %287, label %288, label %344, !dbg !179

288:                                              ; preds = %284
  br label %289, !dbg !180

289:                                              ; preds = %288
  %290 = load i64, i64* %16, align 8, !dbg !182
  %291 = load i64, i64* %15, align 8, !dbg !182
  %292 = add i64 %291, %290, !dbg !182
  store i64 %292, i64* %15, align 8, !dbg !182
  %293 = load i64, i64* %16, align 8, !dbg !182
  %294 = shl i64 %293, 16, !dbg !182
  %295 = load i64, i64* %16, align 8, !dbg !182
  %296 = lshr i64 %295, 48, !dbg !182
  %297 = or i64 %294, %296, !dbg !182
  %298 = load i64, i64* %15, align 8, !dbg !182
  %299 = xor i64 %297, %298, !dbg !182
  store i64 %299, i64* %16, align 8, !dbg !182
  %300 = load i64, i64* %14, align 8, !dbg !182
  %301 = load i64, i64* %13, align 8, !dbg !182
  %302 = add i64 %301, %300, !dbg !182
  store i64 %302, i64* %13, align 8, !dbg !182
  %303 = load i64, i64* %14, align 8, !dbg !182
  %304 = shl i64 %303, 13, !dbg !182
  %305 = load i64, i64* %14, align 8, !dbg !182
  %306 = lshr i64 %305, 51, !dbg !182
  %307 = or i64 %304, %306, !dbg !182
  %308 = load i64, i64* %13, align 8, !dbg !182
  %309 = xor i64 %307, %308, !dbg !182
  store i64 %309, i64* %14, align 8, !dbg !182
  %310 = load i64, i64* %13, align 8, !dbg !182
  %311 = shl i64 %310, 32, !dbg !182
  %312 = load i64, i64* %13, align 8, !dbg !182
  %313 = lshr i64 %312, 32, !dbg !182
  %314 = or i64 %311, %313, !dbg !182
  store i64 %314, i64* %13, align 8, !dbg !182
  %315 = load i64, i64* %14, align 8, !dbg !182
  %316 = load i64, i64* %15, align 8, !dbg !182
  %317 = add i64 %316, %315, !dbg !182
  store i64 %317, i64* %15, align 8, !dbg !182
  %318 = load i64, i64* %16, align 8, !dbg !182
  %319 = load i64, i64* %13, align 8, !dbg !182
  %320 = add i64 %319, %318, !dbg !182
  store i64 %320, i64* %13, align 8, !dbg !182
  %321 = load i64, i64* %14, align 8, !dbg !182
  %322 = shl i64 %321, 17, !dbg !182
  %323 = load i64, i64* %14, align 8, !dbg !182
  %324 = lshr i64 %323, 47, !dbg !182
  %325 = or i64 %322, %324, !dbg !182
  %326 = load i64, i64* %15, align 8, !dbg !182
  %327 = xor i64 %325, %326, !dbg !182
  store i64 %327, i64* %14, align 8, !dbg !182
  %328 = load i64, i64* %16, align 8, !dbg !182
  %329 = shl i64 %328, 21, !dbg !182
  %330 = load i64, i64* %16, align 8, !dbg !182
  %331 = lshr i64 %330, 43, !dbg !182
  %332 = or i64 %329, %331, !dbg !182
  %333 = load i64, i64* %13, align 8, !dbg !182
  %334 = xor i64 %332, %333, !dbg !182
  store i64 %334, i64* %16, align 8, !dbg !182
  %335 = load i64, i64* %15, align 8, !dbg !182
  %336 = shl i64 %335, 32, !dbg !182
  %337 = load i64, i64* %15, align 8, !dbg !182
  %338 = lshr i64 %337, 32, !dbg !182
  %339 = or i64 %336, %338, !dbg !182
  store i64 %339, i64* %15, align 8, !dbg !182
  br label %340, !dbg !182

340:                                              ; preds = %289
  br label %341, !dbg !184

341:                                              ; preds = %340
  %342 = load i64, i64* %23, align 8, !dbg !185
  %343 = add i64 %342, 1, !dbg !185
  store i64 %343, i64* %23, align 8, !dbg !185
  br label %284, !dbg !186, !llvm.loop !187

344:                                              ; preds = %284
  br label %345, !dbg !189

345:                                              ; preds = %344
  %346 = load i64, i64* %16, align 8, !dbg !190
  %347 = load i64, i64* %15, align 8, !dbg !190
  %348 = add i64 %347, %346, !dbg !190
  store i64 %348, i64* %15, align 8, !dbg !190
  %349 = load i64, i64* %16, align 8, !dbg !190
  %350 = shl i64 %349, 16, !dbg !190
  %351 = load i64, i64* %16, align 8, !dbg !190
  %352 = lshr i64 %351, 48, !dbg !190
  %353 = or i64 %350, %352, !dbg !190
  %354 = load i64, i64* %15, align 8, !dbg !190
  %355 = xor i64 %353, %354, !dbg !190
  store i64 %355, i64* %16, align 8, !dbg !190
  %356 = load i64, i64* %14, align 8, !dbg !190
  %357 = load i64, i64* %13, align 8, !dbg !190
  %358 = add i64 %357, %356, !dbg !190
  store i64 %358, i64* %13, align 8, !dbg !190
  %359 = load i64, i64* %14, align 8, !dbg !190
  %360 = shl i64 %359, 13, !dbg !190
  %361 = load i64, i64* %14, align 8, !dbg !190
  %362 = lshr i64 %361, 51, !dbg !190
  %363 = or i64 %360, %362, !dbg !190
  %364 = load i64, i64* %13, align 8, !dbg !190
  %365 = xor i64 %363, %364, !dbg !190
  store i64 %365, i64* %14, align 8, !dbg !190
  %366 = load i64, i64* %13, align 8, !dbg !190
  %367 = shl i64 %366, 32, !dbg !190
  %368 = load i64, i64* %13, align 8, !dbg !190
  %369 = lshr i64 %368, 32, !dbg !190
  %370 = or i64 %367, %369, !dbg !190
  store i64 %370, i64* %13, align 8, !dbg !190
  %371 = load i64, i64* %14, align 8, !dbg !190
  %372 = load i64, i64* %15, align 8, !dbg !190
  %373 = add i64 %372, %371, !dbg !190
  store i64 %373, i64* %15, align 8, !dbg !190
  %374 = load i64, i64* %16, align 8, !dbg !190
  %375 = load i64, i64* %13, align 8, !dbg !190
  %376 = add i64 %375, %374, !dbg !190
  store i64 %376, i64* %13, align 8, !dbg !190
  %377 = load i64, i64* %14, align 8, !dbg !190
  %378 = shl i64 %377, 17, !dbg !190
  %379 = load i64, i64* %14, align 8, !dbg !190
  %380 = lshr i64 %379, 47, !dbg !190
  %381 = or i64 %378, %380, !dbg !190
  %382 = load i64, i64* %15, align 8, !dbg !190
  %383 = xor i64 %381, %382, !dbg !190
  store i64 %383, i64* %14, align 8, !dbg !190
  %384 = load i64, i64* %16, align 8, !dbg !190
  %385 = shl i64 %384, 21, !dbg !190
  %386 = load i64, i64* %16, align 8, !dbg !190
  %387 = lshr i64 %386, 43, !dbg !190
  %388 = or i64 %385, %387, !dbg !190
  %389 = load i64, i64* %13, align 8, !dbg !190
  %390 = xor i64 %388, %389, !dbg !190
  store i64 %390, i64* %16, align 8, !dbg !190
  %391 = load i64, i64* %15, align 8, !dbg !190
  %392 = shl i64 %391, 32, !dbg !190
  %393 = load i64, i64* %15, align 8, !dbg !190
  %394 = lshr i64 %393, 32, !dbg !190
  %395 = or i64 %392, %394, !dbg !190
  store i64 %395, i64* %15, align 8, !dbg !190
  br label %396, !dbg !190

396:                                              ; preds = %345
  br label %397, !dbg !192

397:                                              ; preds = %396
  %398 = load i64, i64* %16, align 8, !dbg !193
  %399 = load i64, i64* %15, align 8, !dbg !193
  %400 = add i64 %399, %398, !dbg !193
  store i64 %400, i64* %15, align 8, !dbg !193
  %401 = load i64, i64* %16, align 8, !dbg !193
  %402 = shl i64 %401, 16, !dbg !193
  %403 = load i64, i64* %16, align 8, !dbg !193
  %404 = lshr i64 %403, 48, !dbg !193
  %405 = or i64 %402, %404, !dbg !193
  %406 = load i64, i64* %15, align 8, !dbg !193
  %407 = xor i64 %405, %406, !dbg !193
  store i64 %407, i64* %16, align 8, !dbg !193
  %408 = load i64, i64* %14, align 8, !dbg !193
  %409 = load i64, i64* %13, align 8, !dbg !193
  %410 = add i64 %409, %408, !dbg !193
  store i64 %410, i64* %13, align 8, !dbg !193
  %411 = load i64, i64* %14, align 8, !dbg !193
  %412 = shl i64 %411, 13, !dbg !193
  %413 = load i64, i64* %14, align 8, !dbg !193
  %414 = lshr i64 %413, 51, !dbg !193
  %415 = or i64 %412, %414, !dbg !193
  %416 = load i64, i64* %13, align 8, !dbg !193
  %417 = xor i64 %415, %416, !dbg !193
  store i64 %417, i64* %14, align 8, !dbg !193
  %418 = load i64, i64* %13, align 8, !dbg !193
  %419 = shl i64 %418, 32, !dbg !193
  %420 = load i64, i64* %13, align 8, !dbg !193
  %421 = lshr i64 %420, 32, !dbg !193
  %422 = or i64 %419, %421, !dbg !193
  store i64 %422, i64* %13, align 8, !dbg !193
  %423 = load i64, i64* %14, align 8, !dbg !193
  %424 = load i64, i64* %15, align 8, !dbg !193
  %425 = add i64 %424, %423, !dbg !193
  store i64 %425, i64* %15, align 8, !dbg !193
  %426 = load i64, i64* %16, align 8, !dbg !193
  %427 = load i64, i64* %13, align 8, !dbg !193
  %428 = add i64 %427, %426, !dbg !193
  store i64 %428, i64* %13, align 8, !dbg !193
  %429 = load i64, i64* %14, align 8, !dbg !193
  %430 = shl i64 %429, 17, !dbg !193
  %431 = load i64, i64* %14, align 8, !dbg !193
  %432 = lshr i64 %431, 47, !dbg !193
  %433 = or i64 %430, %432, !dbg !193
  %434 = load i64, i64* %15, align 8, !dbg !193
  %435 = xor i64 %433, %434, !dbg !193
  store i64 %435, i64* %14, align 8, !dbg !193
  %436 = load i64, i64* %16, align 8, !dbg !193
  %437 = shl i64 %436, 21, !dbg !193
  %438 = load i64, i64* %16, align 8, !dbg !193
  %439 = lshr i64 %438, 43, !dbg !193
  %440 = or i64 %437, %439, !dbg !193
  %441 = load i64, i64* %13, align 8, !dbg !193
  %442 = xor i64 %440, %441, !dbg !193
  store i64 %442, i64* %16, align 8, !dbg !193
  %443 = load i64, i64* %15, align 8, !dbg !193
  %444 = shl i64 %443, 32, !dbg !193
  %445 = load i64, i64* %15, align 8, !dbg !193
  %446 = lshr i64 %445, 32, !dbg !193
  %447 = or i64 %444, %446, !dbg !193
  store i64 %447, i64* %15, align 8, !dbg !193
  br label %448, !dbg !193

448:                                              ; preds = %397
  br label %449, !dbg !195

449:                                              ; preds = %448
  %450 = load i64, i64* %16, align 8, !dbg !196
  %451 = load i64, i64* %15, align 8, !dbg !196
  %452 = add i64 %451, %450, !dbg !196
  store i64 %452, i64* %15, align 8, !dbg !196
  %453 = load i64, i64* %16, align 8, !dbg !196
  %454 = shl i64 %453, 16, !dbg !196
  %455 = load i64, i64* %16, align 8, !dbg !196
  %456 = lshr i64 %455, 48, !dbg !196
  %457 = or i64 %454, %456, !dbg !196
  %458 = load i64, i64* %15, align 8, !dbg !196
  %459 = xor i64 %457, %458, !dbg !196
  store i64 %459, i64* %16, align 8, !dbg !196
  %460 = load i64, i64* %14, align 8, !dbg !196
  %461 = load i64, i64* %13, align 8, !dbg !196
  %462 = add i64 %461, %460, !dbg !196
  store i64 %462, i64* %13, align 8, !dbg !196
  %463 = load i64, i64* %14, align 8, !dbg !196
  %464 = shl i64 %463, 13, !dbg !196
  %465 = load i64, i64* %14, align 8, !dbg !196
  %466 = lshr i64 %465, 51, !dbg !196
  %467 = or i64 %464, %466, !dbg !196
  %468 = load i64, i64* %13, align 8, !dbg !196
  %469 = xor i64 %467, %468, !dbg !196
  store i64 %469, i64* %14, align 8, !dbg !196
  %470 = load i64, i64* %13, align 8, !dbg !196
  %471 = shl i64 %470, 32, !dbg !196
  %472 = load i64, i64* %13, align 8, !dbg !196
  %473 = lshr i64 %472, 32, !dbg !196
  %474 = or i64 %471, %473, !dbg !196
  store i64 %474, i64* %13, align 8, !dbg !196
  %475 = load i64, i64* %14, align 8, !dbg !196
  %476 = load i64, i64* %15, align 8, !dbg !196
  %477 = add i64 %476, %475, !dbg !196
  store i64 %477, i64* %15, align 8, !dbg !196
  %478 = load i64, i64* %16, align 8, !dbg !196
  %479 = load i64, i64* %13, align 8, !dbg !196
  %480 = add i64 %479, %478, !dbg !196
  store i64 %480, i64* %13, align 8, !dbg !196
  %481 = load i64, i64* %14, align 8, !dbg !196
  %482 = shl i64 %481, 17, !dbg !196
  %483 = load i64, i64* %14, align 8, !dbg !196
  %484 = lshr i64 %483, 47, !dbg !196
  %485 = or i64 %482, %484, !dbg !196
  %486 = load i64, i64* %15, align 8, !dbg !196
  %487 = xor i64 %485, %486, !dbg !196
  store i64 %487, i64* %14, align 8, !dbg !196
  %488 = load i64, i64* %16, align 8, !dbg !196
  %489 = shl i64 %488, 21, !dbg !196
  %490 = load i64, i64* %16, align 8, !dbg !196
  %491 = lshr i64 %490, 43, !dbg !196
  %492 = or i64 %489, %491, !dbg !196
  %493 = load i64, i64* %13, align 8, !dbg !196
  %494 = xor i64 %492, %493, !dbg !196
  store i64 %494, i64* %16, align 8, !dbg !196
  %495 = load i64, i64* %15, align 8, !dbg !196
  %496 = shl i64 %495, 32, !dbg !196
  %497 = load i64, i64* %15, align 8, !dbg !196
  %498 = lshr i64 %497, 32, !dbg !196
  %499 = or i64 %496, %498, !dbg !196
  store i64 %499, i64* %15, align 8, !dbg !196
  br label %500, !dbg !196

500:                                              ; preds = %449
  br label %501, !dbg !198

501:                                              ; preds = %500
  %502 = load i64, i64* %16, align 8, !dbg !199
  %503 = load i64, i64* %15, align 8, !dbg !199
  %504 = add i64 %503, %502, !dbg !199
  store i64 %504, i64* %15, align 8, !dbg !199
  %505 = load i64, i64* %16, align 8, !dbg !199
  %506 = shl i64 %505, 16, !dbg !199
  %507 = load i64, i64* %16, align 8, !dbg !199
  %508 = lshr i64 %507, 48, !dbg !199
  %509 = or i64 %506, %508, !dbg !199
  %510 = load i64, i64* %15, align 8, !dbg !199
  %511 = xor i64 %509, %510, !dbg !199
  store i64 %511, i64* %16, align 8, !dbg !199
  %512 = load i64, i64* %14, align 8, !dbg !199
  %513 = load i64, i64* %13, align 8, !dbg !199
  %514 = add i64 %513, %512, !dbg !199
  store i64 %514, i64* %13, align 8, !dbg !199
  %515 = load i64, i64* %14, align 8, !dbg !199
  %516 = shl i64 %515, 13, !dbg !199
  %517 = load i64, i64* %14, align 8, !dbg !199
  %518 = lshr i64 %517, 51, !dbg !199
  %519 = or i64 %516, %518, !dbg !199
  %520 = load i64, i64* %13, align 8, !dbg !199
  %521 = xor i64 %519, %520, !dbg !199
  store i64 %521, i64* %14, align 8, !dbg !199
  %522 = load i64, i64* %13, align 8, !dbg !199
  %523 = shl i64 %522, 32, !dbg !199
  %524 = load i64, i64* %13, align 8, !dbg !199
  %525 = lshr i64 %524, 32, !dbg !199
  %526 = or i64 %523, %525, !dbg !199
  store i64 %526, i64* %13, align 8, !dbg !199
  %527 = load i64, i64* %14, align 8, !dbg !199
  %528 = load i64, i64* %15, align 8, !dbg !199
  %529 = add i64 %528, %527, !dbg !199
  store i64 %529, i64* %15, align 8, !dbg !199
  %530 = load i64, i64* %16, align 8, !dbg !199
  %531 = load i64, i64* %13, align 8, !dbg !199
  %532 = add i64 %531, %530, !dbg !199
  store i64 %532, i64* %13, align 8, !dbg !199
  %533 = load i64, i64* %14, align 8, !dbg !199
  %534 = shl i64 %533, 17, !dbg !199
  %535 = load i64, i64* %14, align 8, !dbg !199
  %536 = lshr i64 %535, 47, !dbg !199
  %537 = or i64 %534, %536, !dbg !199
  %538 = load i64, i64* %15, align 8, !dbg !199
  %539 = xor i64 %537, %538, !dbg !199
  store i64 %539, i64* %14, align 8, !dbg !199
  %540 = load i64, i64* %16, align 8, !dbg !199
  %541 = shl i64 %540, 21, !dbg !199
  %542 = load i64, i64* %16, align 8, !dbg !199
  %543 = lshr i64 %542, 43, !dbg !199
  %544 = or i64 %541, %543, !dbg !199
  %545 = load i64, i64* %13, align 8, !dbg !199
  %546 = xor i64 %544, %545, !dbg !199
  store i64 %546, i64* %16, align 8, !dbg !199
  %547 = load i64, i64* %15, align 8, !dbg !199
  %548 = shl i64 %547, 32, !dbg !199
  %549 = load i64, i64* %15, align 8, !dbg !199
  %550 = lshr i64 %549, 32, !dbg !199
  %551 = or i64 %548, %550, !dbg !199
  store i64 %551, i64* %15, align 8, !dbg !199
  br label %552, !dbg !199

552:                                              ; preds = %501
  %553 = load i64, i64* %14, align 8, !dbg !201
  %554 = load i64, i64* %15, align 8, !dbg !202
  %555 = xor i64 %553, %554, !dbg !203
  %556 = load i64, i64* %16, align 8, !dbg !204
  %557 = xor i64 %555, %556, !dbg !205
  %558 = load i64, i64* %13, align 8, !dbg !206
  %559 = xor i64 %558, %557, !dbg !206
  store i64 %559, i64* %13, align 8, !dbg !206
  %560 = load i64, i64* %13, align 8, !dbg !207
  ret i64 %560, !dbg !208
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_siphash13(i8* %0, i64 %1, i64 %2, i64 %3) #0 !dbg !209 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !212, metadata !DIExpression()), !dbg !213
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !214, metadata !DIExpression()), !dbg !215
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !216, metadata !DIExpression()), !dbg !217
  %9 = load i8*, i8** %5, align 8, !dbg !218
  %10 = load i64, i64* %6, align 8, !dbg !219
  %11 = load i64, i64* %7, align 8, !dbg !220
  %12 = load i64, i64* %8, align 8, !dbg !221
  %13 = call i64 @fio_siphash_xy(i8* %9, i64 %10, i64 1, i64 3, i64 %11, i64 %12), !dbg !222
  ret i64 %13, !dbg !223
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fio_siphash.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 27, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !7, line: 45, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.0-4ubuntu1 "}
!14 = distinct !DISubprogram(name: "fio_siphash24", scope: !1, file: !1, line: 128, type: !15, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{!4, !17, !19, !4, !4}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !8)
!20 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!21 = !DILocalVariable(name: "data", arg: 1, scope: !14, file: !1, line: 128, type: !17)
!22 = !DILocation(line: 128, column: 27, scope: !14)
!23 = !DILocalVariable(name: "len", arg: 2, scope: !14, file: !1, line: 128, type: !19)
!24 = !DILocation(line: 128, column: 40, scope: !14)
!25 = !DILocalVariable(name: "key1", arg: 3, scope: !14, file: !1, line: 128, type: !4)
!26 = !DILocation(line: 128, column: 54, scope: !14)
!27 = !DILocalVariable(name: "key2", arg: 4, scope: !14, file: !1, line: 128, type: !4)
!28 = !DILocation(line: 128, column: 69, scope: !14)
!29 = !DILocation(line: 129, column: 25, scope: !14)
!30 = !DILocation(line: 129, column: 31, scope: !14)
!31 = !DILocation(line: 129, column: 42, scope: !14)
!32 = !DILocation(line: 129, column: 48, scope: !14)
!33 = !DILocation(line: 129, column: 10, scope: !14)
!34 = !DILocation(line: 129, column: 3, scope: !14)
!35 = distinct !DISubprogram(name: "fio_siphash_xy", scope: !1, file: !1, line: 39, type: !36, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!4, !17, !19, !19, !19, !4, !4}
!38 = !DILocalVariable(name: "data", arg: 1, scope: !35, file: !1, line: 39, type: !17)
!39 = !DILocation(line: 39, column: 51, scope: !35)
!40 = !DILocalVariable(name: "len", arg: 2, scope: !35, file: !1, line: 39, type: !19)
!41 = !DILocation(line: 39, column: 64, scope: !35)
!42 = !DILocalVariable(name: "x", arg: 3, scope: !35, file: !1, line: 39, type: !19)
!43 = !DILocation(line: 39, column: 76, scope: !35)
!44 = !DILocalVariable(name: "y", arg: 4, scope: !35, file: !1, line: 40, type: !19)
!45 = !DILocation(line: 40, column: 46, scope: !35)
!46 = !DILocalVariable(name: "key1", arg: 5, scope: !35, file: !1, line: 40, type: !4)
!47 = !DILocation(line: 40, column: 58, scope: !35)
!48 = !DILocalVariable(name: "key2", arg: 6, scope: !35, file: !1, line: 40, type: !4)
!49 = !DILocation(line: 40, column: 73, scope: !35)
!50 = !DILocalVariable(name: "v0", scope: !35, file: !1, line: 42, type: !4)
!51 = !DILocation(line: 42, column: 12, scope: !35)
!52 = !DILocation(line: 42, column: 67, scope: !35)
!53 = !DILocation(line: 42, column: 65, scope: !35)
!54 = !DILocalVariable(name: "v1", scope: !35, file: !1, line: 43, type: !4)
!55 = !DILocation(line: 43, column: 12, scope: !35)
!56 = !DILocation(line: 43, column: 67, scope: !35)
!57 = !DILocation(line: 43, column: 65, scope: !35)
!58 = !DILocalVariable(name: "v2", scope: !35, file: !1, line: 44, type: !4)
!59 = !DILocation(line: 44, column: 12, scope: !35)
!60 = !DILocation(line: 44, column: 67, scope: !35)
!61 = !DILocation(line: 44, column: 65, scope: !35)
!62 = !DILocalVariable(name: "v3", scope: !35, file: !1, line: 45, type: !4)
!63 = !DILocation(line: 45, column: 12, scope: !35)
!64 = !DILocation(line: 45, column: 67, scope: !35)
!65 = !DILocation(line: 45, column: 65, scope: !35)
!66 = !DILocalVariable(name: "w64", scope: !35, file: !1, line: 46, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!69 = !DILocation(line: 46, column: 19, scope: !35)
!70 = !DILocation(line: 46, column: 25, scope: !35)
!71 = !DILocalVariable(name: "len_mod", scope: !35, file: !1, line: 47, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !5, line: 24, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !7, line: 38, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DILocation(line: 47, column: 11, scope: !35)
!76 = !DILocation(line: 47, column: 21, scope: !35)
!77 = !DILocation(line: 47, column: 25, scope: !35)
!78 = !DILocalVariable(name: "word", scope: !35, file: !1, line: 51, type: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !1, line: 48, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !79, file: !1, line: 49, baseType: !4, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !79, file: !1, line: 50, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 8)
!86 = !DILocation(line: 51, column: 5, scope: !35)
!87 = !DILocation(line: 67, column: 3, scope: !35)
!88 = !DILocation(line: 67, column: 10, scope: !35)
!89 = !DILocation(line: 67, column: 14, scope: !35)
!90 = !DILocation(line: 68, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !35, file: !1, line: 67, column: 20)
!92 = !DILocation(line: 68, column: 10, scope: !91)
!93 = !DILocation(line: 68, column: 12, scope: !91)
!94 = !DILocation(line: 69, column: 16, scope: !91)
!95 = !DILocation(line: 69, column: 8, scope: !91)
!96 = !DILocalVariable(name: "i", scope: !97, file: !1, line: 71, type: !19)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 71, column: 5)
!98 = !DILocation(line: 71, column: 17, scope: !97)
!99 = !DILocation(line: 71, column: 10, scope: !97)
!100 = !DILocation(line: 71, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 71, column: 5)
!102 = !DILocation(line: 71, column: 28, scope: !101)
!103 = !DILocation(line: 71, column: 26, scope: !101)
!104 = !DILocation(line: 71, column: 5, scope: !97)
!105 = !DILocation(line: 72, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 71, column: 36)
!107 = !DILocation(line: 72, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !1, line: 72, column: 7)
!109 = !DILocation(line: 73, column: 5, scope: !106)
!110 = !DILocation(line: 71, column: 31, scope: !101)
!111 = !DILocation(line: 71, column: 5, scope: !101)
!112 = distinct !{!112, !104, !113}
!113 = !DILocation(line: 73, column: 5, scope: !97)
!114 = !DILocation(line: 74, column: 16, scope: !91)
!115 = !DILocation(line: 74, column: 8, scope: !91)
!116 = !DILocation(line: 75, column: 9, scope: !91)
!117 = !DILocation(line: 76, column: 9, scope: !91)
!118 = distinct !{!118, !87, !119}
!119 = !DILocation(line: 77, column: 3, scope: !35)
!120 = !DILocation(line: 78, column: 8, scope: !35)
!121 = !DILocation(line: 78, column: 10, scope: !35)
!122 = !DILocalVariable(name: "pos", scope: !35, file: !1, line: 79, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!124 = !DILocation(line: 79, column: 12, scope: !35)
!125 = !DILocation(line: 79, column: 23, scope: !35)
!126 = !DILocation(line: 79, column: 18, scope: !35)
!127 = !DILocalVariable(name: "w8", scope: !35, file: !1, line: 80, type: !123)
!128 = !DILocation(line: 80, column: 12, scope: !35)
!129 = !DILocation(line: 80, column: 25, scope: !35)
!130 = !DILocation(line: 80, column: 17, scope: !35)
!131 = !DILocation(line: 81, column: 11, scope: !35)
!132 = !DILocation(line: 81, column: 3, scope: !35)
!133 = !DILocation(line: 83, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !35, file: !1, line: 81, column: 16)
!135 = !DILocation(line: 83, column: 5, scope: !134)
!136 = !DILocation(line: 83, column: 12, scope: !134)
!137 = !DILocation(line: 86, column: 14, scope: !134)
!138 = !DILocation(line: 86, column: 5, scope: !134)
!139 = !DILocation(line: 86, column: 12, scope: !134)
!140 = !DILocation(line: 89, column: 14, scope: !134)
!141 = !DILocation(line: 89, column: 5, scope: !134)
!142 = !DILocation(line: 89, column: 12, scope: !134)
!143 = !DILocation(line: 92, column: 14, scope: !134)
!144 = !DILocation(line: 92, column: 5, scope: !134)
!145 = !DILocation(line: 92, column: 12, scope: !134)
!146 = !DILocation(line: 95, column: 14, scope: !134)
!147 = !DILocation(line: 95, column: 5, scope: !134)
!148 = !DILocation(line: 95, column: 12, scope: !134)
!149 = !DILocation(line: 98, column: 14, scope: !134)
!150 = !DILocation(line: 98, column: 5, scope: !134)
!151 = !DILocation(line: 98, column: 12, scope: !134)
!152 = !DILocation(line: 101, column: 14, scope: !134)
!153 = !DILocation(line: 101, column: 5, scope: !134)
!154 = !DILocation(line: 101, column: 12, scope: !134)
!155 = !DILocation(line: 102, column: 3, scope: !134)
!156 = !DILocation(line: 103, column: 17, scope: !35)
!157 = !DILocation(line: 103, column: 8, scope: !35)
!158 = !DILocation(line: 103, column: 3, scope: !35)
!159 = !DILocation(line: 103, column: 15, scope: !35)
!160 = !DILocation(line: 106, column: 14, scope: !35)
!161 = !DILocation(line: 106, column: 6, scope: !35)
!162 = !DILocation(line: 107, column: 3, scope: !35)
!163 = !DILocation(line: 107, column: 3, scope: !164)
!164 = distinct !DILexicalBlock(scope: !35, file: !1, line: 107, column: 3)
!165 = !DILocation(line: 108, column: 3, scope: !35)
!166 = !DILocation(line: 108, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !35, file: !1, line: 108, column: 3)
!168 = !DILocation(line: 109, column: 14, scope: !35)
!169 = !DILocation(line: 109, column: 6, scope: !35)
!170 = !DILocation(line: 111, column: 6, scope: !35)
!171 = !DILocalVariable(name: "i", scope: !172, file: !1, line: 113, type: !19)
!172 = distinct !DILexicalBlock(scope: !35, file: !1, line: 113, column: 3)
!173 = !DILocation(line: 113, column: 15, scope: !172)
!174 = !DILocation(line: 113, column: 8, scope: !172)
!175 = !DILocation(line: 113, column: 22, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 113, column: 3)
!177 = !DILocation(line: 113, column: 26, scope: !176)
!178 = !DILocation(line: 113, column: 24, scope: !176)
!179 = !DILocation(line: 113, column: 3, scope: !172)
!180 = !DILocation(line: 114, column: 5, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !1, line: 113, column: 34)
!182 = !DILocation(line: 114, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !1, line: 114, column: 5)
!184 = !DILocation(line: 115, column: 3, scope: !181)
!185 = !DILocation(line: 113, column: 29, scope: !176)
!186 = !DILocation(line: 113, column: 3, scope: !176)
!187 = distinct !{!187, !179, !188}
!188 = !DILocation(line: 115, column: 3, scope: !172)
!189 = !DILocation(line: 116, column: 3, scope: !35)
!190 = !DILocation(line: 116, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !35, file: !1, line: 116, column: 3)
!192 = !DILocation(line: 117, column: 3, scope: !35)
!193 = !DILocation(line: 117, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !35, file: !1, line: 117, column: 3)
!195 = !DILocation(line: 118, column: 3, scope: !35)
!196 = !DILocation(line: 118, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !35, file: !1, line: 118, column: 3)
!198 = !DILocation(line: 119, column: 3, scope: !35)
!199 = !DILocation(line: 119, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !35, file: !1, line: 119, column: 3)
!201 = !DILocation(line: 121, column: 9, scope: !35)
!202 = !DILocation(line: 121, column: 14, scope: !35)
!203 = !DILocation(line: 121, column: 12, scope: !35)
!204 = !DILocation(line: 121, column: 19, scope: !35)
!205 = !DILocation(line: 121, column: 17, scope: !35)
!206 = !DILocation(line: 121, column: 6, scope: !35)
!207 = !DILocation(line: 123, column: 10, scope: !35)
!208 = !DILocation(line: 123, column: 3, scope: !35)
!209 = distinct !DISubprogram(name: "fio_siphash13", scope: !1, file: !1, line: 134, type: !15, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!210 = !DILocalVariable(name: "data", arg: 1, scope: !209, file: !1, line: 134, type: !17)
!211 = !DILocation(line: 134, column: 27, scope: !209)
!212 = !DILocalVariable(name: "len", arg: 2, scope: !209, file: !1, line: 134, type: !19)
!213 = !DILocation(line: 134, column: 40, scope: !209)
!214 = !DILocalVariable(name: "key1", arg: 3, scope: !209, file: !1, line: 134, type: !4)
!215 = !DILocation(line: 134, column: 54, scope: !209)
!216 = !DILocalVariable(name: "key2", arg: 4, scope: !209, file: !1, line: 134, type: !4)
!217 = !DILocation(line: 134, column: 69, scope: !209)
!218 = !DILocation(line: 135, column: 25, scope: !209)
!219 = !DILocation(line: 135, column: 31, scope: !209)
!220 = !DILocation(line: 135, column: 42, scope: !209)
!221 = !DILocation(line: 135, column: 48, scope: !209)
!222 = !DILocation(line: 135, column: 10, scope: !209)
!223 = !DILocation(line: 135, column: 3, scope: !209)
