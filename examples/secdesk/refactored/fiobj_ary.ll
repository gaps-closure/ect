; ModuleID = 'fiobj_ary.c'
source_filename = "fiobj_ary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_ary_s = type { %struct.fiobj_object_header_s, %struct.fio_ary___s }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fio_ary___s = type { i64, i64, i64, i64* }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"FIOBJ_TYPE_IS(ary, FIOBJ_T_ARRAY)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fiobj_ary.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_count = private unnamed_addr constant [36 x i8] c"size_t fiobj_ary_count(const FIOBJ)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@FIOBJECT_VTABLE_ARRAY = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_ary_dealloc, i64 (i64)* @fiobj_ary_count, i64 (i64)* @fiobj_ary_is_true, i64 (i64, i64)* @fiobj_ary_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* @fiobj_ary_each1, void (%struct.fio_str_info_s*, i64)* @fiobject___noop_to_str, i64 (i64)* @fiobject___noop_to_i, double (i64)* @fiobject___noop_to_f }, align 8, !dbg !0
@.str.5 = private unnamed_addr constant [41 x i8] c"ary && FIOBJ_TYPE_IS(ary, FIOBJ_T_ARRAY)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_capa = private unnamed_addr constant [29 x i8] c"size_t fiobj_ary_capa(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary2ptr = private unnamed_addr constant [28 x i8] c"FIOBJ *fiobj_ary2ptr(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_index = private unnamed_addr constant [38 x i8] c"FIOBJ fiobj_ary_index(FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_set = private unnamed_addr constant [42 x i8] c"void fiobj_ary_set(FIOBJ, FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_push = private unnamed_addr constant [34 x i8] c"void fiobj_ary_push(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_pop = private unnamed_addr constant [27 x i8] c"FIOBJ fiobj_ary_pop(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_unshift = private unnamed_addr constant [37 x i8] c"void fiobj_ary_unshift(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_shift = private unnamed_addr constant [29 x i8] c"FIOBJ fiobj_ary_shift(FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_replace = private unnamed_addr constant [47 x i8] c"FIOBJ fiobj_ary_replace(FIOBJ, FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_find = private unnamed_addr constant [37 x i8] c"int64_t fiobj_ary_find(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_remove = private unnamed_addr constant [37 x i8] c"int fiobj_ary_remove(FIOBJ, int64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_remove2 = private unnamed_addr constant [36 x i8] c"int fiobj_ary_remove2(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_ary_compact = private unnamed_addr constant [30 x i8] c"void fiobj_ary_compact(FIOBJ)\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !61
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !64
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !68
@.str.6 = private unnamed_addr constant [44 x i8] c"ERROR: fiobj array couldn't allocate memory\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4920\00", align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4933\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !137 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !143, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !148, metadata !DIExpression()), !dbg !163
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !164
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !164
  call void @llvm.va_start(i8* %7), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %5, metadata !165, metadata !DIExpression()), !dbg !166
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !167
  %9 = load i8*, i8** %2, align 8, !dbg !168
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !169
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !170
  store i32 %11, i32* %5, align 4, !dbg !166
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !171
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !171
  call void @llvm.va_end(i8* %13), !dbg !171
  %14 = load i32, i32* %5, align 4, !dbg !172
  %15 = icmp sle i32 %14, 0, !dbg !174
  br i1 %15, label %19, label %16, !dbg !175

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !176
  %18 = icmp sge i32 %17, 2046, !dbg !177
  br i1 %18, label %19, label %29, !dbg !178

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !179
  %21 = icmp sge i32 %20, 2046, !dbg !182
  br i1 %21, label %22, label %25, !dbg !183

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !184
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !187
  store i32 2041, i32* %5, align 4, !dbg !188
  br label %28, !dbg !189

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !190
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !192
  br label %42, !dbg !193

28:                                               ; preds = %22
  br label %29, !dbg !194

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !195
  %31 = add nsw i32 %30, 1, !dbg !195
  store i32 %31, i32* %5, align 4, !dbg !195
  %32 = sext i32 %30 to i64, !dbg !196
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !196
  store i8 10, i8* %33, align 1, !dbg !197
  %34 = load i32, i32* %5, align 4, !dbg !198
  %35 = sext i32 %34 to i64, !dbg !199
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !199
  store i8 48, i8* %36, align 1, !dbg !200
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !201
  %38 = load i32, i32* %5, align 4, !dbg !202
  %39 = sext i32 %38 to i64, !dbg !202
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !203
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !204
  br label %42, !dbg !205

42:                                               ; preds = %29, %25
  ret void, !dbg !205
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_count(i64 %0) #0 !dbg !206 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !207, metadata !DIExpression()), !dbg !208
  %3 = load i64, i64* %2, align 8, !dbg !209
  %4 = call i64 @fiobj_type_is(i64 %3, i8 zeroext 41), !dbg !209
  %5 = icmp ne i64 %4, 0, !dbg !209
  br i1 %5, label %6, label %7, !dbg !212

6:                                                ; preds = %1
  br label %8, !dbg !212

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_count, i64 0, i64 0)) #9, !dbg !209
  unreachable, !dbg !209

8:                                                ; preds = %6
  %9 = load i64, i64* %2, align 8, !dbg !213
  %10 = inttoptr i64 %9 to %struct.fiobj_ary_s*, !dbg !213
  %11 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %10, i32 0, i32 1, !dbg !214
  %12 = call i64 @fio_ary___count(%struct.fio_ary___s* %11), !dbg !215
  ret i64 %12, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !217 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !220, metadata !DIExpression()), !dbg !221
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !222, metadata !DIExpression()), !dbg !223
  %6 = load i8, i8* %5, align 1, !dbg !224
  %7 = zext i8 %6 to i32, !dbg !224
  switch i32 %7, label %96 [
    i32 1, label %8
    i32 6, label %23
    i32 22, label %34
    i32 38, label %40
    i32 40, label %46
    i32 42, label %59
    i32 39, label %71
    i32 41, label %71
    i32 43, label %71
    i32 44, label %71
  ], !dbg !225

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !226
  %10 = and i64 %9, 1, !dbg !228
  %11 = icmp ne i64 %10, 0, !dbg !228
  br i1 %11, label %19, label %12, !dbg !229

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !230
  %14 = inttoptr i64 %13 to i8*, !dbg !231
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !232
  %16 = load i8, i8* %15, align 1, !dbg !232
  %17 = zext i8 %16 to i32, !dbg !232
  %18 = icmp eq i32 %17, 1, !dbg !233
  br label %19, !dbg !229

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !229
  %22 = sext i32 %21 to i64, !dbg !234
  store i64 %22, i64* %3, align 8, !dbg !235
  br label %121, !dbg !235

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !236
  %25 = icmp ne i64 %24, 0, !dbg !236
  br i1 %25, label %26, label %30, !dbg !237

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !238
  %28 = call i64 @fiobj_null(), !dbg !239
  %29 = icmp eq i64 %27, %28, !dbg !240
  br label %30, !dbg !237

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !237
  %33 = sext i32 %32 to i64, !dbg !241
  store i64 %33, i64* %3, align 8, !dbg !242
  br label %121, !dbg !242

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !243
  %36 = call i64 @fiobj_true(), !dbg !244
  %37 = icmp eq i64 %35, %36, !dbg !245
  %38 = zext i1 %37 to i32, !dbg !245
  %39 = sext i32 %38 to i64, !dbg !243
  store i64 %39, i64* %3, align 8, !dbg !246
  br label %121, !dbg !246

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !247
  %42 = call i64 @fiobj_false(), !dbg !248
  %43 = icmp eq i64 %41, %42, !dbg !249
  %44 = zext i1 %43 to i32, !dbg !249
  %45 = sext i32 %44 to i64, !dbg !247
  store i64 %45, i64* %3, align 8, !dbg !250
  br label %121, !dbg !250

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !251
  %48 = and i64 %47, 1, !dbg !252
  %49 = icmp eq i64 %48, 0, !dbg !253
  br i1 %49, label %50, label %54, !dbg !254

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !255
  %52 = and i64 %51, 6, !dbg !256
  %53 = icmp eq i64 %52, 2, !dbg !257
  br i1 %53, label %55, label %54, !dbg !258

54:                                               ; preds = %50, %46
  br label %55, !dbg !258

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !258
  %58 = sext i32 %57 to i64, !dbg !259
  store i64 %58, i64* %3, align 8, !dbg !260
  br label %121, !dbg !260

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !261
  %61 = and i64 %60, 1, !dbg !264
  %62 = icmp eq i64 %61, 0, !dbg !265
  br i1 %62, label %63, label %67, !dbg !266

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !267
  %65 = and i64 %64, 6, !dbg !268
  %66 = icmp eq i64 %65, 4, !dbg !269
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !270
  %69 = zext i1 %68 to i32, !dbg !266
  %70 = sext i32 %69 to i64, !dbg !271
  store i64 %70, i64* %3, align 8, !dbg !272
  br label %121, !dbg !272

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !273
  %73 = icmp ne i64 %72, 0, !dbg !273
  br i1 %73, label %74, label %92, !dbg !273

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !273
  %76 = and i64 %75, 1, !dbg !273
  %77 = icmp eq i64 %76, 0, !dbg !273
  br i1 %77, label %78, label %92, !dbg !273

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !273
  %80 = and i64 %79, 6, !dbg !273
  %81 = icmp ne i64 %80, 6, !dbg !273
  br i1 %81, label %82, label %92, !dbg !274

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !275
  %84 = and i64 %83, -8, !dbg !275
  %85 = inttoptr i64 %84 to i8*, !dbg !275
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !276
  %87 = load i8, i8* %86, align 1, !dbg !276
  %88 = zext i8 %87 to i32, !dbg !276
  %89 = load i8, i8* %5, align 1, !dbg !277
  %90 = zext i8 %89 to i32, !dbg !277
  %91 = icmp eq i32 %88, %90, !dbg !278
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !279
  %94 = zext i1 %93 to i32, !dbg !274
  %95 = sext i32 %94 to i64, !dbg !273
  store i64 %95, i64* %3, align 8, !dbg !280
  br label %121, !dbg !280

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !281
  %98 = icmp ne i64 %97, 0, !dbg !281
  br i1 %98, label %99, label %117, !dbg !281

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !281
  %101 = and i64 %100, 1, !dbg !281
  %102 = icmp eq i64 %101, 0, !dbg !281
  br i1 %102, label %103, label %117, !dbg !281

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !281
  %105 = and i64 %104, 6, !dbg !281
  %106 = icmp ne i64 %105, 6, !dbg !281
  br i1 %106, label %107, label %117, !dbg !282

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !283
  %109 = and i64 %108, -8, !dbg !283
  %110 = inttoptr i64 %109 to i8*, !dbg !283
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !284
  %112 = load i8, i8* %111, align 1, !dbg !284
  %113 = zext i8 %112 to i32, !dbg !284
  %114 = load i8, i8* %5, align 1, !dbg !285
  %115 = zext i8 %114 to i32, !dbg !285
  %116 = icmp eq i32 %113, %115, !dbg !286
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !287
  %119 = zext i1 %118 to i32, !dbg !282
  %120 = sext i32 %119 to i64, !dbg !281
  store i64 %120, i64* %3, align 8, !dbg !288
  br label %121, !dbg !288

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !289
  ret i64 %122, !dbg !289
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___count(%struct.fio_ary___s* %0) #0 !dbg !290 {
  %2 = alloca %struct.fio_ary___s*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %2, metadata !294, metadata !DIExpression()), !dbg !295
  %3 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !296
  %4 = icmp ne %struct.fio_ary___s* %3, null, !dbg !296
  br i1 %4, label %5, label %13, !dbg !296

5:                                                ; preds = %1
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !297
  %7 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %6, i32 0, i32 1, !dbg !298
  %8 = load i64, i64* %7, align 8, !dbg !298
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !299
  %10 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %9, i32 0, i32 0, !dbg !300
  %11 = load i64, i64* %10, align 8, !dbg !300
  %12 = sub i64 %8, %11, !dbg !301
  br label %14, !dbg !296

13:                                               ; preds = %1
  br label %14, !dbg !296

14:                                               ; preds = %13, %5
  %15 = phi i64 [ %12, %5 ], [ 0, %13 ], !dbg !296
  ret i64 %15, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_ary_dealloc(i64 %0, void (i64, i8*)* %1, i8* %2) #0 !dbg !303 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !304, metadata !DIExpression()), !dbg !305
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %5, metadata !306, metadata !DIExpression()), !dbg !307
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !308, metadata !DIExpression()), !dbg !309
  %9 = load i64, i64* %4, align 8, !dbg !310
  %10 = inttoptr i64 %9 to %struct.fiobj_ary_s*, !dbg !310
  %11 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %10, i32 0, i32 1, !dbg !310
  %12 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %11, i32 0, i32 3, !dbg !310
  %13 = load i64*, i64** %12, align 8, !dbg !310
  %14 = icmp ne i64* %13, null, !dbg !310
  br i1 %14, label %15, label %71, !dbg !312

15:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64** %7, metadata !313, metadata !DIExpression()), !dbg !315
  %16 = load i64, i64* %4, align 8, !dbg !315
  %17 = inttoptr i64 %16 to %struct.fiobj_ary_s*, !dbg !315
  %18 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %17, i32 0, i32 1, !dbg !315
  %19 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %18, i32 0, i32 3, !dbg !315
  %20 = load i64*, i64** %19, align 8, !dbg !315
  store i64* %20, i64** %7, align 8, !dbg !315
  call void @llvm.dbg.declare(metadata i64** %8, metadata !316, metadata !DIExpression()), !dbg !315
  %21 = load i64, i64* %4, align 8, !dbg !315
  %22 = inttoptr i64 %21 to %struct.fiobj_ary_s*, !dbg !315
  %23 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %22, i32 0, i32 1, !dbg !315
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 3, !dbg !315
  %25 = load i64*, i64** %24, align 8, !dbg !315
  %26 = load i64, i64* %4, align 8, !dbg !315
  %27 = inttoptr i64 %26 to %struct.fiobj_ary_s*, !dbg !315
  %28 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %27, i32 0, i32 1, !dbg !315
  %29 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %28, i32 0, i32 0, !dbg !315
  %30 = load i64, i64* %29, align 8, !dbg !315
  %31 = getelementptr inbounds i64, i64* %25, i64 %30, !dbg !315
  store i64* %31, i64** %8, align 8, !dbg !315
  br label %32, !dbg !315

32:                                               ; preds = %51, %15
  %33 = load i64*, i64** %8, align 8, !dbg !317
  %34 = load i64, i64* %4, align 8, !dbg !317
  %35 = inttoptr i64 %34 to %struct.fiobj_ary_s*, !dbg !317
  %36 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %35, i32 0, i32 1, !dbg !317
  %37 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %36, i32 0, i32 3, !dbg !317
  %38 = load i64*, i64** %37, align 8, !dbg !317
  %39 = load i64, i64* %4, align 8, !dbg !317
  %40 = inttoptr i64 %39 to %struct.fiobj_ary_s*, !dbg !317
  %41 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %40, i32 0, i32 1, !dbg !317
  %42 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %41, i32 0, i32 1, !dbg !317
  %43 = load i64, i64* %42, align 8, !dbg !317
  %44 = getelementptr inbounds i64, i64* %38, i64 %43, !dbg !317
  %45 = icmp ult i64* %33, %44, !dbg !317
  br i1 %45, label %46, label %70, !dbg !315

46:                                               ; preds = %32
  %47 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8, !dbg !319
  %48 = load i64*, i64** %8, align 8, !dbg !321
  %49 = load i64, i64* %48, align 8, !dbg !322
  %50 = load i8*, i8** %6, align 8, !dbg !323
  call void %47(i64 %49, i8* %50), !dbg !319
  br label %51, !dbg !324

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8, !dbg !317
  %53 = inttoptr i64 %52 to %struct.fiobj_ary_s*, !dbg !317
  %54 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %53, i32 0, i32 1, !dbg !317
  %55 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %54, i32 0, i32 3, !dbg !317
  %56 = load i64*, i64** %55, align 8, !dbg !317
  %57 = load i64*, i64** %8, align 8, !dbg !317
  %58 = load i64*, i64** %7, align 8, !dbg !317
  %59 = ptrtoint i64* %57 to i64, !dbg !317
  %60 = ptrtoint i64* %58 to i64, !dbg !317
  %61 = sub i64 %59, %60, !dbg !317
  %62 = sdiv exact i64 %61, 8, !dbg !317
  %63 = getelementptr inbounds i64, i64* %56, i64 %62, !dbg !317
  %64 = getelementptr inbounds i64, i64* %63, i64 1, !dbg !317
  store i64* %64, i64** %8, align 8, !dbg !317
  %65 = load i64, i64* %4, align 8, !dbg !317
  %66 = inttoptr i64 %65 to %struct.fiobj_ary_s*, !dbg !317
  %67 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %66, i32 0, i32 1, !dbg !317
  %68 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %67, i32 0, i32 3, !dbg !317
  %69 = load i64*, i64** %68, align 8, !dbg !317
  store i64* %69, i64** %7, align 8, !dbg !317
  br label %32, !dbg !317, !llvm.loop !325

70:                                               ; preds = %32
  br label %71, !dbg !326

71:                                               ; preds = %70, %3
  %72 = load i64, i64* %4, align 8, !dbg !327
  %73 = inttoptr i64 %72 to %struct.fiobj_ary_s*, !dbg !327
  %74 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %73, i32 0, i32 1, !dbg !328
  call void @fio_ary___free(%struct.fio_ary___s* %74), !dbg !329
  %75 = load i64, i64* %4, align 8, !dbg !330
  %76 = and i64 %75, -8, !dbg !330
  %77 = inttoptr i64 %76 to i8*, !dbg !330
  call void @fio_free(i8* %77), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_is_true(i64 %0) #0 !dbg !333 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !334, metadata !DIExpression()), !dbg !335
  %3 = load i64, i64* %2, align 8, !dbg !336
  %4 = call i64 @fiobj_ary_count(i64 %3), !dbg !337
  %5 = icmp ugt i64 %4, 0, !dbg !338
  %6 = zext i1 %5 to i32, !dbg !338
  %7 = sext i32 %6 to i64, !dbg !337
  ret i64 %7, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_is_eq(i64 %0, i64 %1) #0 !dbg !340 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_ary___s*, align 8
  %7 = alloca %struct.fio_ary___s*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !341, metadata !DIExpression()), !dbg !342
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %6, metadata !345, metadata !DIExpression()), !dbg !346
  %8 = load i64, i64* %4, align 8, !dbg !347
  %9 = inttoptr i64 %8 to %struct.fiobj_ary_s*, !dbg !347
  %10 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %9, i32 0, i32 1, !dbg !348
  store %struct.fio_ary___s* %10, %struct.fio_ary___s** %6, align 8, !dbg !346
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %7, metadata !349, metadata !DIExpression()), !dbg !350
  %11 = load i64, i64* %5, align 8, !dbg !351
  %12 = inttoptr i64 %11 to %struct.fiobj_ary_s*, !dbg !351
  %13 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %12, i32 0, i32 1, !dbg !352
  store %struct.fio_ary___s* %13, %struct.fio_ary___s** %7, align 8, !dbg !350
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8, !dbg !353
  %15 = call i64 @fio_ary___count(%struct.fio_ary___s* %14), !dbg !355
  %16 = load %struct.fio_ary___s*, %struct.fio_ary___s** %7, align 8, !dbg !356
  %17 = call i64 @fio_ary___count(%struct.fio_ary___s* %16), !dbg !357
  %18 = icmp ne i64 %15, %17, !dbg !358
  br i1 %18, label %19, label %20, !dbg !359

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !360
  br label %21, !dbg !360

20:                                               ; preds = %2
  store i64 1, i64* %3, align 8, !dbg !361
  br label %21, !dbg !361

21:                                               ; preds = %20, %19
  %22 = load i64, i64* %3, align 8, !dbg !362
  ret i64 %22, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_each1(i64 %0, i64 %1, i32 (i64, i8*)* %2, i8* %3) #0 !dbg !363 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !364, metadata !DIExpression()), !dbg !365
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !366, metadata !DIExpression()), !dbg !367
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %7, metadata !368, metadata !DIExpression()), !dbg !369
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !370, metadata !DIExpression()), !dbg !371
  %9 = load i64, i64* %5, align 8, !dbg !372
  %10 = inttoptr i64 %9 to %struct.fiobj_ary_s*, !dbg !372
  %11 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %10, i32 0, i32 1, !dbg !373
  %12 = load i64, i64* %6, align 8, !dbg !374
  %13 = load i32 (i64, i8*)*, i32 (i64, i8*)** %7, align 8, !dbg !375
  %14 = load i8*, i8** %8, align 8, !dbg !376
  %15 = call i64 @fio_ary___each(%struct.fio_ary___s* %11, i64 %12, i32 (i64, i8*)* %13, i8* %14), !dbg !377
  ret i64 %15, !dbg !378
}

declare dso_local void @fiobject___noop_to_str(%struct.fio_str_info_s* sret, i64) #5

declare dso_local i64 @fiobject___noop_to_i(i64) #5

declare dso_local double @fiobject___noop_to_f(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_new() #0 !dbg !379 {
  %1 = call i64 @fiobj_ary_alloc(i64 0), !dbg !382
  ret i64 %1, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_ary_alloc(i64 %0) #0 !dbg !384 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_ary_s*, align 8
  %4 = alloca %struct.fiobj_ary_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata %struct.fiobj_ary_s** %3, metadata !389, metadata !DIExpression()), !dbg !390
  %5 = call noalias i8* @fio_malloc(i64 40), !dbg !391
  %6 = ptrtoint i8* %5 to i64, !dbg !391
  %7 = and i64 %6, 15, !dbg !391
  %8 = icmp eq i64 %7, 0, !dbg !391
  call void @llvm.assume(i1 %8), !dbg !391
  %9 = bitcast i8* %5 to %struct.fiobj_ary_s*, !dbg !391
  store %struct.fiobj_ary_s* %9, %struct.fiobj_ary_s** %3, align 8, !dbg !390
  %10 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8, !dbg !392
  %11 = icmp ne %struct.fiobj_ary_s* %10, null, !dbg !392
  br i1 %11, label %15, label %12, !dbg !395

12:                                               ; preds = %1
  call void @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0)), !dbg !396
  %13 = call i32* @__errno_location() #10, !dbg !398
  %14 = load i32, i32* %13, align 4, !dbg !398
  call void @exit(i32 %14) #9, !dbg !399
  unreachable, !dbg !399

15:                                               ; preds = %1
  %16 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8, !dbg !400
  %17 = bitcast %struct.fiobj_ary_s* %4 to i8*, !dbg !401
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false), !dbg !401
  %18 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %4, i32 0, i32 0, !dbg !402
  %19 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %18, i32 0, i32 0, !dbg !403
  store i8 41, i8* %19, align 8, !dbg !403
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %18, i32 0, i32 1, !dbg !403
  store i32 1, i32* %20, align 4, !dbg !403
  %21 = bitcast %struct.fiobj_ary_s* %16 to i8*, !dbg !401
  %22 = bitcast %struct.fiobj_ary_s* %4 to i8*, !dbg !401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 40, i1 false), !dbg !401
  %23 = load i64, i64* %2, align 8, !dbg !404
  %24 = icmp ne i64 %23, 0, !dbg !404
  br i1 %24, label %25, label %29, !dbg !406

25:                                               ; preds = %15
  %26 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8, !dbg !407
  %27 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %26, i32 0, i32 1, !dbg !408
  %28 = load i64, i64* %2, align 8, !dbg !409
  call void @fio_ary_____require_on_top(%struct.fio_ary___s* %27, i64 %28), !dbg !410
  br label %29, !dbg !410

29:                                               ; preds = %25, %15
  %30 = load %struct.fiobj_ary_s*, %struct.fiobj_ary_s** %3, align 8, !dbg !411
  %31 = ptrtoint %struct.fiobj_ary_s* %30 to i64, !dbg !412
  ret i64 %31, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_new2(i64 %0) #0 !dbg !414 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !415, metadata !DIExpression()), !dbg !416
  %3 = load i64, i64* %2, align 8, !dbg !417
  %4 = call i64 @fiobj_ary_alloc(i64 %3), !dbg !418
  ret i64 %4, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_capa(i64 %0) #0 !dbg !420 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !423, metadata !DIExpression()), !dbg !424
  %3 = load i64, i64* %2, align 8, !dbg !425
  %4 = icmp ne i64 %3, 0, !dbg !425
  br i1 %4, label %5, label %10, !dbg !425

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !425
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 41), !dbg !425
  %8 = icmp ne i64 %7, 0, !dbg !425
  br i1 %8, label %9, label %10, !dbg !428

9:                                                ; preds = %5
  br label %11, !dbg !428

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_capa, i64 0, i64 0)) #9, !dbg !425
  unreachable, !dbg !425

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !429
  %13 = inttoptr i64 %12 to %struct.fiobj_ary_s*, !dbg !429
  %14 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %13, i32 0, i32 1, !dbg !430
  %15 = call i64 @fio_ary___capa(%struct.fio_ary___s* %14), !dbg !431
  ret i64 %15, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___capa(%struct.fio_ary___s* %0) #0 !dbg !433 {
  %2 = alloca %struct.fio_ary___s*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %2, metadata !434, metadata !DIExpression()), !dbg !435
  %3 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !436
  %4 = icmp ne %struct.fio_ary___s* %3, null, !dbg !436
  br i1 %4, label %5, label %9, !dbg !436

5:                                                ; preds = %1
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !437
  %7 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %6, i32 0, i32 2, !dbg !438
  %8 = load i64, i64* %7, align 8, !dbg !438
  br label %10, !dbg !436

9:                                                ; preds = %1
  br label %10, !dbg !436

10:                                               ; preds = %9, %5
  %11 = phi i64 [ %8, %5 ], [ 0, %9 ], !dbg !436
  ret i64 %11, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @fiobj_ary2ptr(i64 %0) #0 !dbg !440 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !443, metadata !DIExpression()), !dbg !444
  %3 = load i64, i64* %2, align 8, !dbg !445
  %4 = icmp ne i64 %3, 0, !dbg !445
  br i1 %4, label %5, label %10, !dbg !445

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !445
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 41), !dbg !445
  %8 = icmp ne i64 %7, 0, !dbg !445
  br i1 %8, label %9, label %10, !dbg !448

9:                                                ; preds = %5
  br label %11, !dbg !448

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.fiobj_ary2ptr, i64 0, i64 0)) #9, !dbg !445
  unreachable, !dbg !445

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !449
  %13 = inttoptr i64 %12 to %struct.fiobj_ary_s*, !dbg !449
  %14 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %13, i32 0, i32 1, !dbg !450
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 3, !dbg !451
  %16 = load i64*, i64** %15, align 8, !dbg !451
  %17 = load i64, i64* %2, align 8, !dbg !452
  %18 = inttoptr i64 %17 to %struct.fiobj_ary_s*, !dbg !452
  %19 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %18, i32 0, i32 1, !dbg !453
  %20 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %19, i32 0, i32 0, !dbg !454
  %21 = load i64, i64* %20, align 8, !dbg !454
  %22 = getelementptr inbounds i64, i64* %16, i64 %21, !dbg !455
  ret i64* %22, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_index(i64 %0, i64 %1) #0 !dbg !457 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !460, metadata !DIExpression()), !dbg !461
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !462, metadata !DIExpression()), !dbg !463
  %5 = load i64, i64* %3, align 8, !dbg !464
  %6 = icmp ne i64 %5, 0, !dbg !464
  br i1 %6, label %7, label %12, !dbg !464

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !464
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41), !dbg !464
  %10 = icmp ne i64 %9, 0, !dbg !464
  br i1 %10, label %11, label %12, !dbg !467

11:                                               ; preds = %7
  br label %13, !dbg !467

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_index, i64 0, i64 0)) #9, !dbg !464
  unreachable, !dbg !464

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !468
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*, !dbg !468
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1, !dbg !469
  %17 = load i64, i64* %4, align 8, !dbg !470
  %18 = call i64 @fio_ary___get(%struct.fio_ary___s* %16, i64 %17), !dbg !471
  ret i64 %18, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___get(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !473 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !478, metadata !DIExpression()), !dbg !479
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !480
  %7 = icmp ne %struct.fio_ary___s* %6, null, !dbg !480
  br i1 %7, label %9, label %8, !dbg !482

8:                                                ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !483
  br label %34, !dbg !483

9:                                                ; preds = %2
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !484
  %11 = load i64, i64* %5, align 8, !dbg !485
  %12 = call i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %10, i64 %11), !dbg !486
  store i64 %12, i64* %5, align 8, !dbg !487
  %13 = load i64, i64* %5, align 8, !dbg !488
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !490
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 1, !dbg !491
  %16 = load i64, i64* %15, align 8, !dbg !491
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !492
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0, !dbg !493
  %19 = load i64, i64* %18, align 8, !dbg !493
  %20 = sub i64 %16, %19, !dbg !494
  %21 = icmp uge i64 %13, %20, !dbg !495
  br i1 %21, label %22, label %23, !dbg !496

22:                                               ; preds = %9
  store i64 0, i64* %3, align 8, !dbg !497
  br label %34, !dbg !497

23:                                               ; preds = %9
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !498
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 3, !dbg !499
  %26 = load i64*, i64** %25, align 8, !dbg !499
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !500
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 0, !dbg !501
  %29 = load i64, i64* %28, align 8, !dbg !501
  %30 = getelementptr inbounds i64, i64* %26, i64 %29, !dbg !502
  %31 = load i64, i64* %5, align 8, !dbg !503
  %32 = getelementptr inbounds i64, i64* %30, i64 %31, !dbg !504
  %33 = load i64, i64* %32, align 8, !dbg !504
  store i64 %33, i64* %3, align 8, !dbg !505
  br label %34, !dbg !505

34:                                               ; preds = %23, %22, %8
  %35 = load i64, i64* %3, align 8, !dbg !506
  ret i64 %35, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_set(i64 %0, i64 %1, i64 %2) #0 !dbg !507 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !514, metadata !DIExpression()), !dbg !515
  %8 = load i64, i64* %4, align 8, !dbg !516
  %9 = icmp ne i64 %8, 0, !dbg !516
  br i1 %9, label %10, label %15, !dbg !516

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8, !dbg !516
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 41), !dbg !516
  %13 = icmp ne i64 %12, 0, !dbg !516
  br i1 %13, label %14, label %15, !dbg !519

14:                                               ; preds = %10
  br label %16, !dbg !519

15:                                               ; preds = %10, %3
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_set, i64 0, i64 0)) #9, !dbg !516
  unreachable, !dbg !516

16:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %7, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 0, i64* %7, align 8, !dbg !521
  %17 = load i64, i64* %4, align 8, !dbg !522
  %18 = inttoptr i64 %17 to %struct.fiobj_ary_s*, !dbg !522
  %19 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %18, i32 0, i32 1, !dbg !523
  %20 = load i64, i64* %6, align 8, !dbg !524
  %21 = load i64, i64* %5, align 8, !dbg !525
  call void @fio_ary___set(%struct.fio_ary___s* %19, i64 %20, i64 %21, i64* %7), !dbg !526
  %22 = load i64, i64* %7, align 8, !dbg !527
  call void @fiobj_free(i64 %22), !dbg !528
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary___set(%struct.fio_ary___s* %0, i64 %1, i64 %2, i64* %3) #0 !dbg !530 {
  %5 = alloca %struct.fio_ary___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %5, metadata !533, metadata !DIExpression()), !dbg !534
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !535, metadata !DIExpression()), !dbg !536
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !537, metadata !DIExpression()), !dbg !538
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !539, metadata !DIExpression()), !dbg !540
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !541
  %11 = icmp ne %struct.fio_ary___s* %10, null, !dbg !541
  br i1 %11, label %13, label %12, !dbg !543

12:                                               ; preds = %4
  br label %99, !dbg !544

13:                                               ; preds = %4
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !545
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 0, !dbg !547
  %16 = load i64, i64* %15, align 8, !dbg !547
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !548
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 1, !dbg !549
  %19 = load i64, i64* %18, align 8, !dbg !549
  %20 = icmp eq i64 %16, %19, !dbg !550
  br i1 %20, label %21, label %26, !dbg !551

21:                                               ; preds = %13
  %22 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !552
  %23 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %22, i32 0, i32 1, !dbg !553
  store i64 0, i64* %23, align 8, !dbg !554
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !555
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 0, !dbg !556
  store i64 0, i64* %25, align 8, !dbg !557
  br label %26, !dbg !555

26:                                               ; preds = %21, %13
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !558
  %28 = load i64, i64* %6, align 8, !dbg !559
  %29 = call i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %27, i64 %28), !dbg !560
  store i64 %29, i64* %6, align 8, !dbg !561
  call void @llvm.dbg.declare(metadata i64* %9, metadata !562, metadata !DIExpression()), !dbg !564
  %30 = load i64, i64* %6, align 8, !dbg !565
  %31 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !566
  %32 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %31, i32 0, i32 1, !dbg !567
  %33 = load i64, i64* %32, align 8, !dbg !567
  %34 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !568
  %35 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %34, i32 0, i32 0, !dbg !569
  %36 = load i64, i64* %35, align 8, !dbg !569
  %37 = sub i64 %33, %36, !dbg !570
  %38 = sub i64 %30, %37, !dbg !571
  store i64 %38, i64* %9, align 8, !dbg !564
  %39 = load i64, i64* %9, align 8, !dbg !572
  %40 = icmp slt i64 %39, 0, !dbg !574
  br i1 %40, label %41, label %67, !dbg !575

41:                                               ; preds = %26
  %42 = load i64*, i64** %8, align 8, !dbg !576
  %43 = icmp ne i64* %42, null, !dbg !576
  br i1 %43, label %44, label %56, !dbg !579

44:                                               ; preds = %41
  %45 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !580
  %46 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %45, i32 0, i32 3, !dbg !580
  %47 = load i64*, i64** %46, align 8, !dbg !580
  %48 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !580
  %49 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %48, i32 0, i32 0, !dbg !580
  %50 = load i64, i64* %49, align 8, !dbg !580
  %51 = getelementptr inbounds i64, i64* %47, i64 %50, !dbg !580
  %52 = load i64, i64* %6, align 8, !dbg !580
  %53 = getelementptr inbounds i64, i64* %51, i64 %52, !dbg !580
  %54 = load i64, i64* %53, align 8, !dbg !580
  %55 = load i64*, i64** %8, align 8, !dbg !580
  store i64 %54, i64* %55, align 8, !dbg !580
  br label %56, !dbg !580

56:                                               ; preds = %44, %41
  %57 = load i64, i64* %7, align 8, !dbg !581
  %58 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !581
  %59 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %58, i32 0, i32 3, !dbg !581
  %60 = load i64*, i64** %59, align 8, !dbg !581
  %61 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !581
  %62 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %61, i32 0, i32 0, !dbg !581
  %63 = load i64, i64* %62, align 8, !dbg !581
  %64 = getelementptr inbounds i64, i64* %60, i64 %63, !dbg !581
  %65 = load i64, i64* %6, align 8, !dbg !581
  %66 = getelementptr inbounds i64, i64* %64, i64 %65, !dbg !581
  store i64 %57, i64* %66, align 8, !dbg !581
  br label %99, !dbg !582

67:                                               ; preds = %26
  %68 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !583
  %69 = load i64, i64* %9, align 8, !dbg !584
  %70 = add nsw i64 %69, 1, !dbg !585
  call void @fio_ary_____require_on_top(%struct.fio_ary___s* %68, i64 %70), !dbg !586
  %71 = load i64, i64* %9, align 8, !dbg !587
  %72 = icmp ne i64 %71, 0, !dbg !587
  br i1 %72, label %73, label %84, !dbg !589

73:                                               ; preds = %67
  %74 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !590
  %75 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %74, i32 0, i32 3, !dbg !592
  %76 = load i64*, i64** %75, align 8, !dbg !592
  %77 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !593
  %78 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %77, i32 0, i32 1, !dbg !594
  %79 = load i64, i64* %78, align 8, !dbg !594
  %80 = getelementptr inbounds i64, i64* %76, i64 %79, !dbg !595
  %81 = bitcast i64* %80 to i8*, !dbg !596
  %82 = load i64, i64* %9, align 8, !dbg !597
  %83 = mul i64 8, %82, !dbg !598
  call void @llvm.memset.p0i8.i64(i8* align 8 %81, i8 0, i64 %83, i1 false), !dbg !596
  br label %84, !dbg !599

84:                                               ; preds = %73, %67
  %85 = load i64, i64* %7, align 8, !dbg !600
  %86 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !600
  %87 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %86, i32 0, i32 3, !dbg !600
  %88 = load i64*, i64** %87, align 8, !dbg !600
  %89 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !600
  %90 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %89, i32 0, i32 0, !dbg !600
  %91 = load i64, i64* %90, align 8, !dbg !600
  %92 = getelementptr inbounds i64, i64* %88, i64 %91, !dbg !600
  %93 = load i64, i64* %6, align 8, !dbg !600
  %94 = getelementptr inbounds i64, i64* %92, i64 %93, !dbg !600
  store i64 %85, i64* %94, align 8, !dbg !600
  %95 = load i64, i64* %6, align 8, !dbg !601
  %96 = add nsw i64 %95, 1, !dbg !602
  %97 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !603
  %98 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %97, i32 0, i32 1, !dbg !604
  store i64 %96, i64* %98, align 8, !dbg !605
  br label %99, !dbg !606

99:                                               ; preds = %84, %56, %12
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64 %0) #0 !dbg !607 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !610, metadata !DIExpression()), !dbg !611
  %5 = load i64, i64* %2, align 8, !dbg !612
  %6 = icmp ne i64 %5, 0, !dbg !612
  br i1 %6, label %7, label %15, !dbg !612

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !612
  %9 = and i64 %8, 1, !dbg !612
  %10 = icmp eq i64 %9, 0, !dbg !612
  br i1 %10, label %11, label %15, !dbg !612

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !612
  %13 = and i64 %12, 6, !dbg !612
  %14 = icmp ne i64 %13, 6, !dbg !612
  br i1 %14, label %16, label %15, !dbg !614

15:                                               ; preds = %11, %7, %1
  br label %50, !dbg !615

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !616
  %18 = and i64 %17, -8, !dbg !616
  %19 = inttoptr i64 %18 to i8*, !dbg !616
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*, !dbg !616
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !616
  store i32 1, i32* %3, align 4, !dbg !616
  %22 = load i32, i32* %3, align 4, !dbg !616
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst, !dbg !616
  %24 = sub i32 %23, %22, !dbg !616
  store i32 %24, i32* %4, align 4, !dbg !616
  %25 = load i32, i32* %4, align 4, !dbg !616
  %26 = icmp ne i32 %25, 0, !dbg !616
  br i1 %26, label %27, label %28, !dbg !618

27:                                               ; preds = %16
  br label %50, !dbg !619

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8, !dbg !620
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29), !dbg !620
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5, !dbg !622
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8, !dbg !622
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null, !dbg !620
  br i1 %33, label %34, label %44, !dbg !623

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8, !dbg !624
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !624
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2, !dbg !625
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8, !dbg !625
  %39 = load i64, i64* %2, align 8, !dbg !626
  %40 = call i64 %38(i64 %39), !dbg !624
  %41 = icmp ne i64 %40, 0, !dbg !624
  br i1 %41, label %42, label %44, !dbg !627

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8, !dbg !628
  call void @fiobj_free_complex_object(i64 %43), !dbg !629
  br label %50, !dbg !629

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8, !dbg !630
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45), !dbg !630
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1, !dbg !631
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8, !dbg !631
  %49 = load i64, i64* %2, align 8, !dbg !632
  call void %48(i64 %49, void (i64, i8*)* null, i8* null), !dbg !630
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_push(i64 %0, i64 %1) #0 !dbg !634 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !637, metadata !DIExpression()), !dbg !638
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !639, metadata !DIExpression()), !dbg !640
  %5 = load i64, i64* %3, align 8, !dbg !641
  %6 = icmp ne i64 %5, 0, !dbg !641
  br i1 %6, label %7, label %12, !dbg !641

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !641
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41), !dbg !641
  %10 = icmp ne i64 %9, 0, !dbg !641
  br i1 %10, label %11, label %12, !dbg !644

11:                                               ; preds = %7
  br label %13, !dbg !644

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_push, i64 0, i64 0)) #9, !dbg !641
  unreachable, !dbg !641

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !645
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*, !dbg !645
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1, !dbg !646
  %17 = load i64, i64* %4, align 8, !dbg !647
  %18 = call i32 @fio_ary___push(%struct.fio_ary___s* %16, i64 %17), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___push(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !650 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !655, metadata !DIExpression()), !dbg !656
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !657
  %7 = icmp ne %struct.fio_ary___s* %6, null, !dbg !657
  br i1 %7, label %9, label %8, !dbg !659

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !660
  br label %45, !dbg !660

9:                                                ; preds = %2
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !661
  %11 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %10, i32 0, i32 2, !dbg !663
  %12 = load i64, i64* %11, align 8, !dbg !663
  %13 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !664
  %14 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %13, i32 0, i32 1, !dbg !665
  %15 = load i64, i64* %14, align 8, !dbg !665
  %16 = icmp ule i64 %12, %15, !dbg !666
  br i1 %16, label %17, label %19, !dbg !667

17:                                               ; preds = %9
  %18 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !668
  call void @fio_ary_____require_on_top(%struct.fio_ary___s* %18, i64 5), !dbg !669
  br label %19, !dbg !669

19:                                               ; preds = %17, %9
  %20 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !670
  %21 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %20, i32 0, i32 0, !dbg !672
  %22 = load i64, i64* %21, align 8, !dbg !672
  %23 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !673
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 1, !dbg !674
  %25 = load i64, i64* %24, align 8, !dbg !674
  %26 = icmp eq i64 %22, %25, !dbg !675
  br i1 %26, label %27, label %32, !dbg !676

27:                                               ; preds = %19
  %28 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !677
  %29 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %28, i32 0, i32 1, !dbg !678
  store i64 0, i64* %29, align 8, !dbg !679
  %30 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !680
  %31 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %30, i32 0, i32 0, !dbg !681
  store i64 0, i64* %31, align 8, !dbg !682
  br label %32, !dbg !680

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8, !dbg !683
  %34 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !683
  %35 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %34, i32 0, i32 3, !dbg !683
  %36 = load i64*, i64** %35, align 8, !dbg !683
  %37 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !683
  %38 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %37, i32 0, i32 1, !dbg !683
  %39 = load i64, i64* %38, align 8, !dbg !683
  %40 = getelementptr inbounds i64, i64* %36, i64 %39, !dbg !683
  store i64 %33, i64* %40, align 8, !dbg !683
  %41 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !684
  %42 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %41, i32 0, i32 1, !dbg !685
  %43 = load i64, i64* %42, align 8, !dbg !686
  %44 = add i64 %43, 1, !dbg !686
  store i64 %44, i64* %42, align 8, !dbg !686
  store i32 0, i32* %3, align 4, !dbg !687
  br label %45, !dbg !687

45:                                               ; preds = %32, %8
  %46 = load i32, i32* %3, align 4, !dbg !688
  ret i32 %46, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_pop(i64 %0) #0 !dbg !689 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !692, metadata !DIExpression()), !dbg !693
  %4 = load i64, i64* %2, align 8, !dbg !694
  %5 = icmp ne i64 %4, 0, !dbg !694
  br i1 %5, label %6, label %11, !dbg !694

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !694
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 41), !dbg !694
  %9 = icmp ne i64 %8, 0, !dbg !694
  br i1 %9, label %10, label %11, !dbg !697

10:                                               ; preds = %6
  br label %12, !dbg !697

11:                                               ; preds = %6, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_pop, i64 0, i64 0)) #9, !dbg !694
  unreachable, !dbg !694

12:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %3, metadata !698, metadata !DIExpression()), !dbg !699
  store i64 0, i64* %3, align 8, !dbg !699
  %13 = load i64, i64* %2, align 8, !dbg !700
  %14 = inttoptr i64 %13 to %struct.fiobj_ary_s*, !dbg !700
  %15 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %14, i32 0, i32 1, !dbg !701
  %16 = call i32 @fio_ary___pop(%struct.fio_ary___s* %15, i64* %3), !dbg !702
  %17 = load i64, i64* %3, align 8, !dbg !703
  ret i64 %17, !dbg !704
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___pop(%struct.fio_ary___s* %0, i64* %1) #0 !dbg !705 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !708, metadata !DIExpression()), !dbg !709
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !710, metadata !DIExpression()), !dbg !711
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !712
  %7 = call i64 @fio_ary___count(%struct.fio_ary___s* %6), !dbg !714
  %8 = icmp ne i64 %7, 0, !dbg !714
  br i1 %8, label %10, label %9, !dbg !715

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !716
  br label %28, !dbg !716

10:                                               ; preds = %2
  %11 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !717
  %12 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %11, i32 0, i32 1, !dbg !718
  %13 = load i64, i64* %12, align 8, !dbg !719
  %14 = add i64 %13, -1, !dbg !719
  store i64 %14, i64* %12, align 8, !dbg !719
  %15 = load i64*, i64** %5, align 8, !dbg !720
  %16 = icmp ne i64* %15, null, !dbg !720
  br i1 %16, label %17, label %27, !dbg !722

17:                                               ; preds = %10
  %18 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !723
  %19 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %18, i32 0, i32 3, !dbg !723
  %20 = load i64*, i64** %19, align 8, !dbg !723
  %21 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !723
  %22 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %21, i32 0, i32 1, !dbg !723
  %23 = load i64, i64* %22, align 8, !dbg !723
  %24 = getelementptr inbounds i64, i64* %20, i64 %23, !dbg !723
  %25 = load i64, i64* %24, align 8, !dbg !723
  %26 = load i64*, i64** %5, align 8, !dbg !723
  store i64 %25, i64* %26, align 8, !dbg !723
  br label %27, !dbg !723

27:                                               ; preds = %17, %10
  store i32 0, i32* %3, align 4, !dbg !724
  br label %28, !dbg !724

28:                                               ; preds = %27, %9
  %29 = load i32, i32* %3, align 4, !dbg !725
  ret i32 %29, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_unshift(i64 %0, i64 %1) #0 !dbg !726 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !727, metadata !DIExpression()), !dbg !728
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !729, metadata !DIExpression()), !dbg !730
  %5 = load i64, i64* %3, align 8, !dbg !731
  %6 = icmp ne i64 %5, 0, !dbg !731
  br i1 %6, label %7, label %12, !dbg !731

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !731
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41), !dbg !731
  %10 = icmp ne i64 %9, 0, !dbg !731
  br i1 %10, label %11, label %12, !dbg !734

11:                                               ; preds = %7
  br label %13, !dbg !734

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_unshift, i64 0, i64 0)) #9, !dbg !731
  unreachable, !dbg !731

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !735
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*, !dbg !735
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1, !dbg !736
  %17 = load i64, i64* %4, align 8, !dbg !737
  %18 = call i32 @fio_ary___unshift(%struct.fio_ary___s* %16, i64 %17), !dbg !738
  ret void, !dbg !739
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___unshift(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !740 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !741, metadata !DIExpression()), !dbg !742
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !743, metadata !DIExpression()), !dbg !744
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !745
  %7 = icmp ne %struct.fio_ary___s* %6, null, !dbg !745
  br i1 %7, label %9, label %8, !dbg !747

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !748
  br label %29, !dbg !748

9:                                                ; preds = %2
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !749
  %11 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %10, i32 0, i32 0, !dbg !751
  %12 = load i64, i64* %11, align 8, !dbg !751
  %13 = icmp eq i64 %12, 0, !dbg !752
  br i1 %13, label %14, label %16, !dbg !753

14:                                               ; preds = %9
  %15 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !754
  call void @fio_ary_____require_on_bottom(%struct.fio_ary___s* %15, i64 8), !dbg !755
  br label %16, !dbg !755

16:                                               ; preds = %14, %9
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !756
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0, !dbg !757
  %19 = load i64, i64* %18, align 8, !dbg !758
  %20 = add i64 %19, -1, !dbg !758
  store i64 %20, i64* %18, align 8, !dbg !758
  %21 = load i64, i64* %5, align 8, !dbg !759
  %22 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !759
  %23 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %22, i32 0, i32 3, !dbg !759
  %24 = load i64*, i64** %23, align 8, !dbg !759
  %25 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !759
  %26 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %25, i32 0, i32 0, !dbg !759
  %27 = load i64, i64* %26, align 8, !dbg !759
  %28 = getelementptr inbounds i64, i64* %24, i64 %27, !dbg !759
  store i64 %21, i64* %28, align 8, !dbg !759
  store i32 0, i32* %3, align 4, !dbg !760
  br label %29, !dbg !760

29:                                               ; preds = %16, %8
  %30 = load i32, i32* %3, align 4, !dbg !761
  ret i32 %30, !dbg !761
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_shift(i64 %0) #0 !dbg !762 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !763, metadata !DIExpression()), !dbg !764
  %4 = load i64, i64* %2, align 8, !dbg !765
  %5 = icmp ne i64 %4, 0, !dbg !765
  br i1 %5, label %6, label %11, !dbg !765

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8, !dbg !765
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 41), !dbg !765
  %9 = icmp ne i64 %8, 0, !dbg !765
  br i1 %9, label %10, label %11, !dbg !768

10:                                               ; preds = %6
  br label %12, !dbg !768

11:                                               ; preds = %6, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_shift, i64 0, i64 0)) #9, !dbg !765
  unreachable, !dbg !765

12:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i64* %3, metadata !769, metadata !DIExpression()), !dbg !770
  store i64 0, i64* %3, align 8, !dbg !770
  %13 = load i64, i64* %2, align 8, !dbg !771
  %14 = inttoptr i64 %13 to %struct.fiobj_ary_s*, !dbg !771
  %15 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %14, i32 0, i32 1, !dbg !772
  %16 = call i32 @fio_ary___shift(%struct.fio_ary___s* %15, i64* %3), !dbg !773
  %17 = load i64, i64* %3, align 8, !dbg !774
  ret i64 %17, !dbg !775
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___shift(%struct.fio_ary___s* %0, i64* %1) #0 !dbg !776 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !777, metadata !DIExpression()), !dbg !778
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !779, metadata !DIExpression()), !dbg !780
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !781
  %7 = call i64 @fio_ary___count(%struct.fio_ary___s* %6), !dbg !783
  %8 = icmp ne i64 %7, 0, !dbg !783
  br i1 %8, label %10, label %9, !dbg !784

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !785
  br label %28, !dbg !785

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8, !dbg !786
  %12 = icmp ne i64* %11, null, !dbg !786
  br i1 %12, label %13, label %23, !dbg !788

13:                                               ; preds = %10
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !789
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 3, !dbg !789
  %16 = load i64*, i64** %15, align 8, !dbg !789
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !789
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0, !dbg !789
  %19 = load i64, i64* %18, align 8, !dbg !789
  %20 = getelementptr inbounds i64, i64* %16, i64 %19, !dbg !789
  %21 = load i64, i64* %20, align 8, !dbg !789
  %22 = load i64*, i64** %5, align 8, !dbg !789
  store i64 %21, i64* %22, align 8, !dbg !789
  br label %23, !dbg !789

23:                                               ; preds = %13, %10
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !790
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 0, !dbg !791
  %26 = load i64, i64* %25, align 8, !dbg !792
  %27 = add i64 %26, 1, !dbg !792
  store i64 %27, i64* %25, align 8, !dbg !792
  store i32 0, i32* %3, align 4, !dbg !793
  br label %28, !dbg !793

28:                                               ; preds = %23, %9
  %29 = load i32, i32* %3, align 4, !dbg !794
  ret i32 %29, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_replace(i64 %0, i64 %1, i64 %2) #0 !dbg !795 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !798, metadata !DIExpression()), !dbg !799
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !800, metadata !DIExpression()), !dbg !801
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !802, metadata !DIExpression()), !dbg !803
  %8 = load i64, i64* %4, align 8, !dbg !804
  %9 = icmp ne i64 %8, 0, !dbg !804
  br i1 %9, label %10, label %15, !dbg !804

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8, !dbg !804
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 41), !dbg !804
  %13 = icmp ne i64 %12, 0, !dbg !804
  br i1 %13, label %14, label %15, !dbg !807

14:                                               ; preds = %10
  br label %16, !dbg !807

15:                                               ; preds = %10, %3
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_replace, i64 0, i64 0)) #9, !dbg !804
  unreachable, !dbg !804

16:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %7, metadata !808, metadata !DIExpression()), !dbg !809
  %17 = load i64, i64* %4, align 8, !dbg !810
  %18 = load i64, i64* %6, align 8, !dbg !811
  %19 = call i64 @fiobj_ary_index(i64 %17, i64 %18), !dbg !812
  store i64 %19, i64* %7, align 8, !dbg !809
  %20 = load i64, i64* %4, align 8, !dbg !813
  %21 = load i64, i64* %5, align 8, !dbg !814
  %22 = load i64, i64* %6, align 8, !dbg !815
  call void @fiobj_ary_set(i64 %20, i64 %21, i64 %22), !dbg !816
  %23 = load i64, i64* %7, align 8, !dbg !817
  ret i64 %23, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_ary_find(i64 %0, i64 %1) #0 !dbg !819 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !822, metadata !DIExpression()), !dbg !823
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !824, metadata !DIExpression()), !dbg !825
  %5 = load i64, i64* %3, align 8, !dbg !826
  %6 = icmp ne i64 %5, 0, !dbg !826
  br i1 %6, label %7, label %12, !dbg !826

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !826
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 41), !dbg !826
  %10 = icmp ne i64 %9, 0, !dbg !826
  br i1 %10, label %11, label %12, !dbg !829

11:                                               ; preds = %7
  br label %13, !dbg !829

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_find, i64 0, i64 0)) #9, !dbg !826
  unreachable, !dbg !826

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !830
  %15 = inttoptr i64 %14 to %struct.fiobj_ary_s*, !dbg !830
  %16 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %15, i32 0, i32 1, !dbg !831
  %17 = load i64, i64* %4, align 8, !dbg !832
  %18 = call i64 @fio_ary___find(%struct.fio_ary___s* %16, i64 %17), !dbg !833
  ret i64 %18, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___find(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !835 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !838, metadata !DIExpression()), !dbg !839
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata i64* %6, metadata !842, metadata !DIExpression()), !dbg !844
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !845
  %10 = call i64 @fio_ary___count(%struct.fio_ary___s* %9), !dbg !846
  store i64 %10, i64* %6, align 8, !dbg !844
  %11 = load i64, i64* %6, align 8, !dbg !847
  %12 = icmp ne i64 %11, 0, !dbg !847
  br i1 %12, label %14, label %13, !dbg !849

13:                                               ; preds = %2
  store i64 -1, i64* %3, align 8, !dbg !850
  br label %51, !dbg !850

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %7, metadata !852, metadata !DIExpression()), !dbg !853
  %15 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !854
  %16 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %15, i32 0, i32 0, !dbg !855
  %17 = load i64, i64* %16, align 8, !dbg !855
  store i64 %17, i64* %7, align 8, !dbg !853
  call void @llvm.dbg.declare(metadata i64* %8, metadata !856, metadata !DIExpression()), !dbg !857
  %18 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !858
  %19 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %18, i32 0, i32 1, !dbg !859
  %20 = load i64, i64* %19, align 8, !dbg !859
  store i64 %20, i64* %8, align 8, !dbg !857
  br label %21, !dbg !860

21:                                               ; preds = %37, %14
  %22 = load i64, i64* %7, align 8, !dbg !861
  %23 = load i64, i64* %8, align 8, !dbg !862
  %24 = icmp ult i64 %22, %23, !dbg !863
  br i1 %24, label %25, label %35, !dbg !864

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8, !dbg !865
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !865
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 3, !dbg !865
  %29 = load i64*, i64** %28, align 8, !dbg !865
  %30 = load i64, i64* %7, align 8, !dbg !865
  %31 = getelementptr inbounds i64, i64* %29, i64 %30, !dbg !865
  %32 = load i64, i64* %31, align 8, !dbg !865
  %33 = icmp eq i64 %26, %32, !dbg !865
  %34 = xor i1 %33, true, !dbg !866
  br label %35

35:                                               ; preds = %25, %21
  %36 = phi i1 [ false, %21 ], [ %34, %25 ], !dbg !867
  br i1 %36, label %37, label %40, !dbg !860

37:                                               ; preds = %35
  %38 = load i64, i64* %7, align 8, !dbg !868
  %39 = add i64 %38, 1, !dbg !868
  store i64 %39, i64* %7, align 8, !dbg !868
  br label %21, !dbg !860, !llvm.loop !870

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8, !dbg !872
  %42 = load i64, i64* %8, align 8, !dbg !874
  %43 = icmp eq i64 %41, %42, !dbg !875
  br i1 %43, label %44, label %45, !dbg !876

44:                                               ; preds = %40
  store i64 -1, i64* %3, align 8, !dbg !877
  br label %51, !dbg !877

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8, !dbg !878
  %47 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !879
  %48 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %47, i32 0, i32 0, !dbg !880
  %49 = load i64, i64* %48, align 8, !dbg !880
  %50 = sub i64 %46, %49, !dbg !881
  store i64 %50, i64* %3, align 8, !dbg !882
  br label %51, !dbg !882

51:                                               ; preds = %45, %44, %13
  %52 = load i64, i64* %3, align 8, !dbg !883
  ret i64 %52, !dbg !883
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_ary_remove(i64 %0, i64 %1) #0 !dbg !884 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !887, metadata !DIExpression()), !dbg !888
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !889, metadata !DIExpression()), !dbg !890
  %7 = load i64, i64* %4, align 8, !dbg !891
  %8 = icmp ne i64 %7, 0, !dbg !891
  br i1 %8, label %9, label %14, !dbg !891

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8, !dbg !891
  %11 = call i64 @fiobj_type_is(i64 %10, i8 zeroext 41), !dbg !891
  %12 = icmp ne i64 %11, 0, !dbg !891
  br i1 %12, label %13, label %14, !dbg !894

13:                                               ; preds = %9
  br label %15, !dbg !894

14:                                               ; preds = %9, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_remove, i64 0, i64 0)) #9, !dbg !891
  unreachable, !dbg !891

15:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i64* %6, metadata !895, metadata !DIExpression()), !dbg !896
  store i64 0, i64* %6, align 8, !dbg !896
  %16 = load i64, i64* %4, align 8, !dbg !897
  %17 = inttoptr i64 %16 to %struct.fiobj_ary_s*, !dbg !897
  %18 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %17, i32 0, i32 1, !dbg !899
  %19 = load i64, i64* %5, align 8, !dbg !900
  %20 = call i32 @fio_ary___remove(%struct.fio_ary___s* %18, i64 %19, i64* %6), !dbg !901
  %21 = icmp ne i32 %20, 0, !dbg !901
  br i1 %21, label %22, label %23, !dbg !902

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4, !dbg !903
  br label %25, !dbg !903

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8, !dbg !905
  call void @fiobj_free(i64 %24), !dbg !906
  store i32 0, i32* %3, align 4, !dbg !907
  br label %25, !dbg !907

25:                                               ; preds = %23, %22
  %26 = load i32, i32* %3, align 4, !dbg !908
  ret i32 %26, !dbg !908
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___remove(%struct.fio_ary___s* %0, i64 %1, i64* %2) #0 !dbg !909 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fio_ary___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %5, metadata !912, metadata !DIExpression()), !dbg !913
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !914, metadata !DIExpression()), !dbg !915
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !916, metadata !DIExpression()), !dbg !917
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !918
  %10 = load i64, i64* %6, align 8, !dbg !919
  %11 = call i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %9, i64 %10), !dbg !920
  store i64 %11, i64* %6, align 8, !dbg !921
  call void @llvm.dbg.declare(metadata i64* %8, metadata !922, metadata !DIExpression()), !dbg !923
  %12 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !924
  %13 = call i64 @fio_ary___count(%struct.fio_ary___s* %12), !dbg !925
  store i64 %13, i64* %8, align 8, !dbg !923
  %14 = load i64, i64* %8, align 8, !dbg !926
  %15 = icmp ne i64 %14, 0, !dbg !926
  br i1 %15, label %16, label %20, !dbg !928

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8, !dbg !929
  %18 = load i64, i64* %8, align 8, !dbg !930
  %19 = icmp uge i64 %17, %18, !dbg !931
  br i1 %19, label %20, label %21, !dbg !932

20:                                               ; preds = %16, %3
  store i32 -1, i32* %4, align 4, !dbg !933
  br label %79, !dbg !933

21:                                               ; preds = %16
  %22 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !935
  %23 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %22, i32 0, i32 0, !dbg !936
  %24 = load i64, i64* %23, align 8, !dbg !936
  %25 = load i64, i64* %6, align 8, !dbg !937
  %26 = add i64 %25, %24, !dbg !937
  store i64 %26, i64* %6, align 8, !dbg !937
  %27 = load i64*, i64** %7, align 8, !dbg !938
  %28 = icmp ne i64* %27, null, !dbg !938
  br i1 %28, label %29, label %37, !dbg !940

29:                                               ; preds = %21
  %30 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !941
  %31 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %30, i32 0, i32 3, !dbg !941
  %32 = load i64*, i64** %31, align 8, !dbg !941
  %33 = load i64, i64* %6, align 8, !dbg !941
  %34 = getelementptr inbounds i64, i64* %32, i64 %33, !dbg !941
  %35 = load i64, i64* %34, align 8, !dbg !941
  %36 = load i64*, i64** %7, align 8, !dbg !941
  store i64 %35, i64* %36, align 8, !dbg !941
  br label %37, !dbg !941

37:                                               ; preds = %29, %21
  %38 = load i64, i64* %6, align 8, !dbg !942
  %39 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !944
  %40 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %39, i32 0, i32 0, !dbg !945
  %41 = load i64, i64* %40, align 8, !dbg !945
  %42 = icmp eq i64 %38, %41, !dbg !946
  br i1 %42, label %43, label %48, !dbg !947

43:                                               ; preds = %37
  %44 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !948
  %45 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %44, i32 0, i32 0, !dbg !950
  %46 = load i64, i64* %45, align 8, !dbg !951
  %47 = add i64 %46, 1, !dbg !951
  store i64 %47, i64* %45, align 8, !dbg !951
  store i32 0, i32* %4, align 4, !dbg !952
  br label %79, !dbg !952

48:                                               ; preds = %37
  %49 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !953
  %50 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %49, i32 0, i32 1, !dbg !954
  %51 = load i64, i64* %50, align 8, !dbg !955
  %52 = add i64 %51, -1, !dbg !955
  store i64 %52, i64* %50, align 8, !dbg !955
  %53 = load i64, i64* %6, align 8, !dbg !956
  %54 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !958
  %55 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %54, i32 0, i32 1, !dbg !959
  %56 = load i64, i64* %55, align 8, !dbg !959
  %57 = icmp ult i64 %53, %56, !dbg !960
  br i1 %57, label %58, label %78, !dbg !961

58:                                               ; preds = %48
  %59 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !962
  %60 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %59, i32 0, i32 3, !dbg !964
  %61 = load i64*, i64** %60, align 8, !dbg !964
  %62 = load i64, i64* %6, align 8, !dbg !965
  %63 = getelementptr inbounds i64, i64* %61, i64 %62, !dbg !966
  %64 = bitcast i64* %63 to i8*, !dbg !967
  %65 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !968
  %66 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %65, i32 0, i32 3, !dbg !969
  %67 = load i64*, i64** %66, align 8, !dbg !969
  %68 = load i64, i64* %6, align 8, !dbg !970
  %69 = getelementptr inbounds i64, i64* %67, i64 %68, !dbg !971
  %70 = getelementptr inbounds i64, i64* %69, i64 1, !dbg !972
  %71 = bitcast i64* %70 to i8*, !dbg !967
  %72 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !973
  %73 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %72, i32 0, i32 1, !dbg !974
  %74 = load i64, i64* %73, align 8, !dbg !974
  %75 = load i64, i64* %6, align 8, !dbg !975
  %76 = sub i64 %74, %75, !dbg !976
  %77 = mul i64 %76, 8, !dbg !977
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %71, i64 %77, i1 false), !dbg !967
  br label %78, !dbg !978

78:                                               ; preds = %58, %48
  store i32 0, i32* %4, align 4, !dbg !979
  br label %79, !dbg !979

79:                                               ; preds = %78, %43, %20
  %80 = load i32, i32* %4, align 4, !dbg !980
  ret i32 %80, !dbg !980
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_ary_remove2(i64 %0, i64 %1) #0 !dbg !981 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !984, metadata !DIExpression()), !dbg !985
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !986, metadata !DIExpression()), !dbg !987
  %6 = load i64, i64* %4, align 8, !dbg !988
  %7 = icmp ne i64 %6, 0, !dbg !988
  br i1 %7, label %8, label %13, !dbg !988

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !988
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 41), !dbg !988
  %11 = icmp ne i64 %10, 0, !dbg !988
  br i1 %11, label %12, label %13, !dbg !991

12:                                               ; preds = %8
  br label %14, !dbg !991

13:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_remove2, i64 0, i64 0)) #9, !dbg !988
  unreachable, !dbg !988

14:                                               ; preds = %12
  %15 = load i64, i64* %4, align 8, !dbg !992
  %16 = inttoptr i64 %15 to %struct.fiobj_ary_s*, !dbg !992
  %17 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %16, i32 0, i32 1, !dbg !994
  %18 = load i64, i64* %5, align 8, !dbg !995
  %19 = call i32 @fio_ary___remove2(%struct.fio_ary___s* %17, i64 %18, i64* %5), !dbg !996
  %20 = icmp eq i32 -1, %19, !dbg !997
  br i1 %20, label %21, label %22, !dbg !998

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4, !dbg !999
  br label %24, !dbg !999

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8, !dbg !1001
  call void @fiobj_free(i64 %23), !dbg !1002
  store i32 0, i32* %3, align 4, !dbg !1003
  br label %24, !dbg !1003

24:                                               ; preds = %22, %21
  %25 = load i32, i32* %3, align 4, !dbg !1004
  ret i32 %25, !dbg !1004
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_ary___remove2(%struct.fio_ary___s* %0, i64 %1, i64* %2) #0 !dbg !1005 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fio_ary___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %5, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1010, metadata !DIExpression()), !dbg !1011
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1014, metadata !DIExpression()), !dbg !1015
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !1016
  %10 = load i64, i64* %6, align 8, !dbg !1017
  %11 = call i64 @fio_ary___find(%struct.fio_ary___s* %9, i64 %10), !dbg !1018
  store i64 %11, i64* %8, align 8, !dbg !1015
  %12 = load i64, i64* %8, align 8, !dbg !1019
  %13 = icmp eq i64 %12, -1, !dbg !1021
  br i1 %13, label %14, label %15, !dbg !1022

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1023
  br label %20, !dbg !1023

15:                                               ; preds = %3
  %16 = load %struct.fio_ary___s*, %struct.fio_ary___s** %5, align 8, !dbg !1025
  %17 = load i64, i64* %8, align 8, !dbg !1026
  %18 = load i64*, i64** %7, align 8, !dbg !1027
  %19 = call i32 @fio_ary___remove(%struct.fio_ary___s* %16, i64 %17, i64* %18), !dbg !1028
  store i32 %19, i32* %4, align 4, !dbg !1029
  br label %20, !dbg !1029

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %4, align 4, !dbg !1030
  ret i32 %21, !dbg !1030
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_ary_compact(i64 %0) #0 !dbg !1031 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1032, metadata !DIExpression()), !dbg !1033
  %3 = load i64, i64* %2, align 8, !dbg !1034
  %4 = icmp ne i64 %3, 0, !dbg !1034
  br i1 %4, label %5, label %10, !dbg !1034

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !1034
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 41), !dbg !1034
  %8 = icmp ne i64 %7, 0, !dbg !1034
  br i1 %8, label %9, label %10, !dbg !1037

9:                                                ; preds = %5
  br label %11, !dbg !1037

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 250, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.fiobj_ary_compact, i64 0, i64 0)) #9, !dbg !1034
  unreachable, !dbg !1034

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !1038
  %13 = inttoptr i64 %12 to %struct.fiobj_ary_s*, !dbg !1038
  %14 = getelementptr inbounds %struct.fiobj_ary_s, %struct.fiobj_ary_s* %13, i32 0, i32 1, !dbg !1039
  call void @fio_ary___compact(%struct.fio_ary___s* %14), !dbg !1040
  ret void, !dbg !1041
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary___compact(%struct.fio_ary___s* %0) #0 !dbg !1042 {
  %2 = alloca %struct.fio_ary___s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %2, metadata !1045, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1047, metadata !DIExpression()), !dbg !1048
  %7 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1049
  %8 = call i64 @fio_ary___count(%struct.fio_ary___s* %7), !dbg !1050
  store i64 %8, i64* %3, align 8, !dbg !1048
  %9 = load i64, i64* %3, align 8, !dbg !1051
  %10 = icmp ne i64 %9, 0, !dbg !1051
  br i1 %10, label %12, label %11, !dbg !1053

11:                                               ; preds = %1
  br label %62, !dbg !1054

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1055, metadata !DIExpression()), !dbg !1056
  %13 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1057
  %14 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %13, i32 0, i32 3, !dbg !1058
  %15 = load i64*, i64** %14, align 8, !dbg !1058
  %16 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1059
  %17 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %16, i32 0, i32 0, !dbg !1060
  %18 = load i64, i64* %17, align 8, !dbg !1060
  %19 = getelementptr inbounds i64, i64* %15, i64 %18, !dbg !1061
  store i64* %19, i64** %4, align 8, !dbg !1056
  call void @llvm.dbg.declare(metadata i64** %5, metadata !1062, metadata !DIExpression()), !dbg !1063
  %20 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1064
  %21 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %20, i32 0, i32 3, !dbg !1065
  %22 = load i64*, i64** %21, align 8, !dbg !1065
  %23 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1066
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 0, !dbg !1067
  %25 = load i64, i64* %24, align 8, !dbg !1067
  %26 = getelementptr inbounds i64, i64* %22, i64 %25, !dbg !1068
  store i64* %26, i64** %5, align 8, !dbg !1063
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1069, metadata !DIExpression()), !dbg !1070
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1071
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 3, !dbg !1072
  %29 = load i64*, i64** %28, align 8, !dbg !1072
  %30 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1073
  %31 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %30, i32 0, i32 1, !dbg !1074
  %32 = load i64, i64* %31, align 8, !dbg !1074
  %33 = getelementptr inbounds i64, i64* %29, i64 %32, !dbg !1075
  store i64* %33, i64** %6, align 8, !dbg !1070
  br label %34, !dbg !1076

34:                                               ; preds = %48, %12
  %35 = load i64*, i64** %5, align 8, !dbg !1077
  %36 = load i64*, i64** %6, align 8, !dbg !1078
  %37 = icmp ult i64* %35, %36, !dbg !1079
  br i1 %37, label %38, label %51, !dbg !1076

38:                                               ; preds = %34
  %39 = load i64*, i64** %5, align 8, !dbg !1080
  %40 = load i64, i64* %39, align 8, !dbg !1080
  %41 = icmp eq i64 %40, 0, !dbg !1080
  br i1 %41, label %48, label %42, !dbg !1083

42:                                               ; preds = %38
  %43 = load i64*, i64** %5, align 8, !dbg !1084
  %44 = load i64, i64* %43, align 8, !dbg !1086
  %45 = load i64*, i64** %4, align 8, !dbg !1087
  store i64 %44, i64* %45, align 8, !dbg !1088
  %46 = load i64*, i64** %4, align 8, !dbg !1089
  %47 = getelementptr inbounds i64, i64* %46, i64 1, !dbg !1089
  store i64* %47, i64** %4, align 8, !dbg !1089
  br label %48, !dbg !1090

48:                                               ; preds = %42, %38
  %49 = load i64*, i64** %5, align 8, !dbg !1091
  %50 = getelementptr inbounds i64, i64* %49, i64 1, !dbg !1091
  store i64* %50, i64** %5, align 8, !dbg !1091
  br label %34, !dbg !1076, !llvm.loop !1092

51:                                               ; preds = %34
  %52 = load i64*, i64** %4, align 8, !dbg !1094
  %53 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1095
  %54 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %53, i32 0, i32 3, !dbg !1096
  %55 = load i64*, i64** %54, align 8, !dbg !1096
  %56 = ptrtoint i64* %52 to i64, !dbg !1097
  %57 = ptrtoint i64* %55 to i64, !dbg !1097
  %58 = sub i64 %56, %57, !dbg !1097
  %59 = sdiv exact i64 %58, 8, !dbg !1097
  %60 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1098
  %61 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %60, i32 0, i32 1, !dbg !1099
  store i64 %59, i64* %61, align 8, !dbg !1100
  br label %62, !dbg !1101

62:                                               ; preds = %51, %11
  ret void, !dbg !1101
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !1102 {
  ret i64 6, !dbg !1103
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !1104 {
  ret i64 22, !dbg !1105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !1106 {
  ret i64 38, !dbg !1107
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary___free(%struct.fio_ary___s* %0) #0 !dbg !1108 {
  %2 = alloca %struct.fio_ary___s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_ary___s, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %2, metadata !1109, metadata !DIExpression()), !dbg !1110
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1111
  %7 = icmp ne %struct.fio_ary___s* %6, null, !dbg !1111
  br i1 %7, label %8, label %33, !dbg !1113

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1114, metadata !DIExpression()), !dbg !1116
  %9 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1117
  %10 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %9, i32 0, i32 1, !dbg !1118
  %11 = load i64, i64* %10, align 8, !dbg !1118
  store i64 %11, i64* %3, align 8, !dbg !1116
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1119, metadata !DIExpression()), !dbg !1121
  %12 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1122
  %13 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %12, i32 0, i32 0, !dbg !1123
  %14 = load i64, i64* %13, align 8, !dbg !1123
  store i64 %14, i64* %4, align 8, !dbg !1121
  br label %15, !dbg !1124

15:                                               ; preds = %20, %8
  %16 = load i64, i64* %4, align 8, !dbg !1125
  %17 = load i64, i64* %3, align 8, !dbg !1127
  %18 = icmp ult i64 %16, %17, !dbg !1128
  br i1 %18, label %19, label %23, !dbg !1129

19:                                               ; preds = %15
  br label %20, !dbg !1130

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8, !dbg !1132
  %22 = add i64 %21, 1, !dbg !1132
  store i64 %22, i64* %4, align 8, !dbg !1132
  br label %15, !dbg !1133, !llvm.loop !1134

23:                                               ; preds = %15
  %24 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1136
  %25 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %24, i32 0, i32 3, !dbg !1136
  %26 = load i64*, i64** %25, align 8, !dbg !1136
  %27 = bitcast i64* %26 to i8*, !dbg !1136
  call void @fio_free(i8* %27), !dbg !1136
  %28 = load %struct.fio_ary___s*, %struct.fio_ary___s** %2, align 8, !dbg !1137
  %29 = bitcast %struct.fio_ary___s* %5 to i8*, !dbg !1138
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false), !dbg !1138
  %30 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %5, i32 0, i32 2, !dbg !1139
  store i64 0, i64* %30, align 8, !dbg !1139
  %31 = bitcast %struct.fio_ary___s* %28 to i8*, !dbg !1138
  %32 = bitcast %struct.fio_ary___s* %5 to i8*, !dbg !1138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false), !dbg !1138
  br label %33, !dbg !1140

33:                                               ; preds = %23, %1
  ret void, !dbg !1141
}

declare dso_local void @fio_free(i8*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary___each(%struct.fio_ary___s* %0, i64 %1, i32 (i64, i8*)* %2, i8* %3) #0 !dbg !1142 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_ary___s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %6, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %8, metadata !1149, metadata !DIExpression()), !dbg !1150
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1153, metadata !DIExpression()), !dbg !1154
  %11 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8, !dbg !1155
  %12 = call i64 @fio_ary___count(%struct.fio_ary___s* %11), !dbg !1156
  store i64 %12, i64* %10, align 8, !dbg !1154
  %13 = load i64, i64* %10, align 8, !dbg !1157
  %14 = icmp ne i64 %13, 0, !dbg !1157
  br i1 %14, label %15, label %19, !dbg !1159

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8, !dbg !1160
  %17 = load i64, i64* %10, align 8, !dbg !1161
  %18 = icmp uge i64 %16, %17, !dbg !1162
  br i1 %18, label %19, label %21, !dbg !1163

19:                                               ; preds = %15, %4
  %20 = load i64, i64* %10, align 8, !dbg !1164
  store i64 %20, i64* %5, align 8, !dbg !1166
  br label %47, !dbg !1166

21:                                               ; preds = %15
  br label %22, !dbg !1167

22:                                               ; preds = %44, %21
  %23 = load i64, i64* %7, align 8, !dbg !1168
  %24 = load i64, i64* %10, align 8, !dbg !1169
  %25 = icmp ult i64 %23, %24, !dbg !1170
  br i1 %25, label %26, label %42, !dbg !1171

26:                                               ; preds = %22
  %27 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8, !dbg !1172
  %28 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8, !dbg !1173
  %29 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %28, i32 0, i32 3, !dbg !1174
  %30 = load i64*, i64** %29, align 8, !dbg !1174
  %31 = load %struct.fio_ary___s*, %struct.fio_ary___s** %6, align 8, !dbg !1175
  %32 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %31, i32 0, i32 0, !dbg !1176
  %33 = load i64, i64* %32, align 8, !dbg !1176
  %34 = load i64, i64* %7, align 8, !dbg !1177
  %35 = add i64 %34, 1, !dbg !1177
  store i64 %35, i64* %7, align 8, !dbg !1177
  %36 = add i64 %33, %34, !dbg !1178
  %37 = getelementptr inbounds i64, i64* %30, i64 %36, !dbg !1173
  %38 = load i64, i64* %37, align 8, !dbg !1173
  %39 = load i8*, i8** %9, align 8, !dbg !1179
  %40 = call i32 %27(i64 %38, i8* %39), !dbg !1172
  %41 = icmp ne i32 %40, -1, !dbg !1180
  br label %42

42:                                               ; preds = %26, %22
  %43 = phi i1 [ false, %22 ], [ %41, %26 ], !dbg !1181
  br i1 %43, label %44, label %45, !dbg !1167

44:                                               ; preds = %42
  br label %22, !dbg !1167, !llvm.loop !1182

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8, !dbg !1184
  store i64 %46, i64* %5, align 8, !dbg !1185
  br label %47, !dbg !1185

47:                                               ; preds = %45, %19
  %48 = load i64, i64* %5, align 8, !dbg !1186
  ret i64 %48, !dbg !1186
}

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary_____require_on_top(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !1187 {
  %3 = alloca %struct.fio_ary___s*, align 8
  %4 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %3, metadata !1190, metadata !DIExpression()), !dbg !1191
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1192, metadata !DIExpression()), !dbg !1193
  %5 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1194
  %6 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %5, i32 0, i32 1, !dbg !1196
  %7 = load i64, i64* %6, align 8, !dbg !1196
  %8 = load i64, i64* %4, align 8, !dbg !1197
  %9 = add i64 %7, %8, !dbg !1198
  %10 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1199
  %11 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %10, i32 0, i32 2, !dbg !1200
  %12 = load i64, i64* %11, align 8, !dbg !1200
  %13 = icmp ult i64 %9, %12, !dbg !1201
  br i1 %13, label %14, label %15, !dbg !1202

14:                                               ; preds = %2
  br label %58, !dbg !1203

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8, !dbg !1204
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1204
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 1, !dbg !1204
  %19 = load i64, i64* %18, align 8, !dbg !1204
  %20 = add i64 %16, %19, !dbg !1204
  %21 = and i64 %20, -2, !dbg !1204
  %22 = add i64 %21, 2, !dbg !1204
  store i64 %22, i64* %4, align 8, !dbg !1205
  %23 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1206
  %24 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %23, i32 0, i32 3, !dbg !1206
  %25 = load i64*, i64** %24, align 8, !dbg !1206
  %26 = bitcast i64* %25 to i8*, !dbg !1206
  %27 = load i64, i64* %4, align 8, !dbg !1206
  %28 = mul i64 %27, 8, !dbg !1206
  %29 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1206
  %30 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %29, i32 0, i32 1, !dbg !1206
  %31 = load i64, i64* %30, align 8, !dbg !1206
  %32 = mul i64 %31, 8, !dbg !1206
  %33 = call i8* @fio_realloc2(i8* %26, i64 %28, i64 %32), !dbg !1206
  %34 = ptrtoint i8* %33 to i64, !dbg !1206
  %35 = and i64 %34, 15, !dbg !1206
  %36 = icmp eq i64 %35, 0, !dbg !1206
  call void @llvm.assume(i1 %36), !dbg !1206
  %37 = bitcast i8* %33 to i64*, !dbg !1206
  %38 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1207
  %39 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %38, i32 0, i32 3, !dbg !1208
  store i64* %37, i64** %39, align 8, !dbg !1209
  %40 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1210
  %41 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %40, i32 0, i32 3, !dbg !1210
  %42 = load i64*, i64** %41, align 8, !dbg !1210
  %43 = icmp ne i64* %42, null, !dbg !1210
  br i1 %43, label %54, label %44, !dbg !1212

44:                                               ; preds = %15
  br label %45, !dbg !1213

45:                                               ; preds = %44
  %46 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1215
  %47 = icmp sle i32 1, %46, !dbg !1215
  br i1 %47, label %48, label %49, !dbg !1218

48:                                               ; preds = %45
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0)), !dbg !1219
  br label %49, !dbg !1219

49:                                               ; preds = %48, %45
  br label %50, !dbg !1218

50:                                               ; preds = %49
  %51 = call i32 @kill(i32 0, i32 2) #2, !dbg !1213
  %52 = call i32* @__errno_location() #10, !dbg !1213
  %53 = load i32, i32* %52, align 4, !dbg !1213
  call void @exit(i32 %53) #9, !dbg !1213
  unreachable, !dbg !1213

54:                                               ; preds = %15
  %55 = load i64, i64* %4, align 8, !dbg !1221
  %56 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1222
  %57 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %56, i32 0, i32 2, !dbg !1223
  store i64 %55, i64* %57, align 8, !dbg !1224
  br label %58, !dbg !1225

58:                                               ; preds = %54, %14
  ret void, !dbg !1225
}

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #5

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ary_____rel2absolute(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !1226 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_ary___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %4, metadata !1229, metadata !DIExpression()), !dbg !1230
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1231, metadata !DIExpression()), !dbg !1232
  %6 = load i64, i64* %5, align 8, !dbg !1233
  %7 = icmp sge i64 %6, 0, !dbg !1235
  br i1 %7, label %8, label %10, !dbg !1236

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !1237
  store i64 %9, i64* %3, align 8, !dbg !1238
  br label %25, !dbg !1238

10:                                               ; preds = %2
  %11 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !1239
  %12 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %11, i32 0, i32 1, !dbg !1240
  %13 = load i64, i64* %12, align 8, !dbg !1240
  %14 = load %struct.fio_ary___s*, %struct.fio_ary___s** %4, align 8, !dbg !1241
  %15 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %14, i32 0, i32 0, !dbg !1242
  %16 = load i64, i64* %15, align 8, !dbg !1242
  %17 = sub i64 %13, %16, !dbg !1243
  %18 = load i64, i64* %5, align 8, !dbg !1244
  %19 = add i64 %18, %17, !dbg !1244
  store i64 %19, i64* %5, align 8, !dbg !1244
  %20 = load i64, i64* %5, align 8, !dbg !1245
  %21 = icmp sge i64 %20, 0, !dbg !1247
  br i1 %21, label %22, label %24, !dbg !1248

22:                                               ; preds = %10
  %23 = load i64, i64* %5, align 8, !dbg !1249
  store i64 %23, i64* %3, align 8, !dbg !1250
  br label %25, !dbg !1250

24:                                               ; preds = %10
  store i64 0, i64* %3, align 8, !dbg !1251
  br label %25, !dbg !1251

25:                                               ; preds = %24, %22, %8
  %26 = load i64, i64* %3, align 8, !dbg !1252
  ret i64 %26, !dbg !1252
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !1253 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1257, metadata !DIExpression()), !dbg !1258
  %4 = load i64, i64* %3, align 8, !dbg !1259
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !1259
  %6 = zext i8 %5 to i32, !dbg !1259
  switch i32 %6, label %14 [
    i32 1, label %7
    i32 39, label %8
    i32 40, label %9
    i32 41, label %10
    i32 42, label %11
    i32 43, label %12
    i32 6, label %13
    i32 22, label %13
    i32 38, label %13
    i32 44, label %13
  ], !dbg !1260

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1261
  br label %15, !dbg !1261

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1263
  br label %15, !dbg !1263

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1264
  br label %15, !dbg !1264

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1265
  br label %15, !dbg !1265

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1266
  br label %15, !dbg !1266

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1267
  br label %15, !dbg !1267

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1268
  br label %15, !dbg !1268

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1269
  br label %15, !dbg !1269

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1270
  ret %struct.fiobj_object_vtable_s* %16, !dbg !1270
}

declare dso_local void @fiobj_free_complex_object(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !1271 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1274, metadata !DIExpression()), !dbg !1275
  %4 = load i64, i64* %3, align 8, !dbg !1276
  %5 = icmp ne i64 %4, 0, !dbg !1276
  br i1 %5, label %7, label %6, !dbg !1278

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !1279
  br label %35, !dbg !1279

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !1280
  %9 = and i64 %8, 1, !dbg !1282
  %10 = icmp ne i64 %9, 0, !dbg !1282
  br i1 %10, label %11, label %12, !dbg !1283

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !1284
  br label %35, !dbg !1284

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !1285
  %14 = and i64 %13, 6, !dbg !1287
  %15 = icmp eq i64 %14, 6, !dbg !1288
  br i1 %15, label %16, label %19, !dbg !1289

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !1290
  %18 = trunc i64 %17 to i8, !dbg !1291
  store i8 %18, i8* %2, align 1, !dbg !1292
  br label %35, !dbg !1292

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !1293
  %21 = and i64 %20, 6, !dbg !1295
  %22 = icmp eq i64 %21, 2, !dbg !1296
  br i1 %22, label %23, label %24, !dbg !1297

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !1298
  br label %35, !dbg !1298

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !1299
  %26 = and i64 %25, 6, !dbg !1301
  %27 = icmp eq i64 %26, 4, !dbg !1302
  br i1 %27, label %28, label %29, !dbg !1303

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !1304
  br label %35, !dbg !1304

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !1305
  %31 = and i64 %30, -8, !dbg !1305
  %32 = inttoptr i64 %31 to i8*, !dbg !1305
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !1306
  %34 = load i8, i8* %33, align 1, !dbg !1306
  store i8 %34, i8* %2, align 1, !dbg !1307
  br label %35, !dbg !1307

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !1308
  ret i8 %36, !dbg !1308
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_ary_____require_on_bottom(%struct.fio_ary___s* %0, i64 %1) #0 !dbg !1309 {
  %3 = alloca %struct.fio_ary___s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.fio_ary___s* %0, %struct.fio_ary___s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_ary___s** %3, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1312, metadata !DIExpression()), !dbg !1313
  %6 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1314
  %7 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %6, i32 0, i32 0, !dbg !1316
  %8 = load i64, i64* %7, align 8, !dbg !1316
  %9 = load i64, i64* %4, align 8, !dbg !1317
  %10 = icmp uge i64 %8, %9, !dbg !1318
  br i1 %10, label %11, label %12, !dbg !1319

11:                                               ; preds = %2
  br label %110, !dbg !1320

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64** %5, metadata !1321, metadata !DIExpression()), !dbg !1322
  %13 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1323
  %14 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %13, i32 0, i32 3, !dbg !1324
  %15 = load i64*, i64** %14, align 8, !dbg !1324
  store i64* %15, i64** %5, align 8, !dbg !1322
  %16 = load i64, i64* %4, align 8, !dbg !1325
  %17 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1325
  %18 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %17, i32 0, i32 0, !dbg !1325
  %19 = load i64, i64* %18, align 8, !dbg !1325
  %20 = sub i64 %16, %19, !dbg !1325
  %21 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1325
  %22 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %21, i32 0, i32 1, !dbg !1325
  %23 = load i64, i64* %22, align 8, !dbg !1325
  %24 = add i64 %20, %23, !dbg !1325
  %25 = and i64 %24, -2, !dbg !1325
  %26 = add i64 %25, 2, !dbg !1325
  store i64 %26, i64* %4, align 8, !dbg !1326
  %27 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1327
  %28 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %27, i32 0, i32 2, !dbg !1329
  %29 = load i64, i64* %28, align 8, !dbg !1329
  %30 = load i64, i64* %4, align 8, !dbg !1330
  %31 = icmp ule i64 %29, %30, !dbg !1331
  br i1 %31, label %32, label %60, !dbg !1332

32:                                               ; preds = %12
  %33 = load i64, i64* %4, align 8, !dbg !1333
  %34 = mul i64 %33, 8, !dbg !1333
  %35 = call noalias i8* @fio_malloc(i64 %34), !dbg !1333
  %36 = ptrtoint i8* %35 to i64, !dbg !1333
  %37 = and i64 %36, 15, !dbg !1333
  %38 = icmp eq i64 %37, 0, !dbg !1333
  call void @llvm.assume(i1 %38), !dbg !1333
  %39 = bitcast i8* %35 to i64*, !dbg !1333
  %40 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1335
  %41 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %40, i32 0, i32 3, !dbg !1336
  store i64* %39, i64** %41, align 8, !dbg !1337
  %42 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1338
  %43 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %42, i32 0, i32 3, !dbg !1338
  %44 = load i64*, i64** %43, align 8, !dbg !1338
  %45 = icmp ne i64* %44, null, !dbg !1338
  br i1 %45, label %56, label %46, !dbg !1340

46:                                               ; preds = %32
  br label %47, !dbg !1341

47:                                               ; preds = %46
  %48 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1343
  %49 = icmp sle i32 1, %48, !dbg !1343
  br i1 %49, label %50, label %51, !dbg !1346

50:                                               ; preds = %47
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0)), !dbg !1347
  br label %51, !dbg !1347

51:                                               ; preds = %50, %47
  br label %52, !dbg !1346

52:                                               ; preds = %51
  %53 = call i32 @kill(i32 0, i32 2) #2, !dbg !1341
  %54 = call i32* @__errno_location() #10, !dbg !1341
  %55 = load i32, i32* %54, align 4, !dbg !1341
  call void @exit(i32 %55) #9, !dbg !1341
  unreachable, !dbg !1341

56:                                               ; preds = %32
  %57 = load i64, i64* %4, align 8, !dbg !1349
  %58 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1350
  %59 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %58, i32 0, i32 2, !dbg !1351
  store i64 %57, i64* %59, align 8, !dbg !1352
  br label %60, !dbg !1353

60:                                               ; preds = %56, %12
  %61 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1354
  %62 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %61, i32 0, i32 1, !dbg !1355
  %63 = load i64, i64* %62, align 8, !dbg !1355
  %64 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1356
  %65 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %64, i32 0, i32 0, !dbg !1357
  %66 = load i64, i64* %65, align 8, !dbg !1357
  %67 = sub i64 %63, %66, !dbg !1358
  store i64 %67, i64* %4, align 8, !dbg !1359
  %68 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1360
  %69 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %68, i32 0, i32 2, !dbg !1361
  %70 = load i64, i64* %69, align 8, !dbg !1361
  %71 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1362
  %72 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %71, i32 0, i32 1, !dbg !1363
  store i64 %70, i64* %72, align 8, !dbg !1364
  %73 = load i64, i64* %4, align 8, !dbg !1365
  %74 = icmp ne i64 %73, 0, !dbg !1365
  br i1 %74, label %75, label %94, !dbg !1367

75:                                               ; preds = %60
  %76 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1368
  %77 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %76, i32 0, i32 3, !dbg !1369
  %78 = load i64*, i64** %77, align 8, !dbg !1369
  %79 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1370
  %80 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %79, i32 0, i32 2, !dbg !1371
  %81 = load i64, i64* %80, align 8, !dbg !1371
  %82 = load i64, i64* %4, align 8, !dbg !1372
  %83 = sub i64 %81, %82, !dbg !1373
  %84 = getelementptr inbounds i64, i64* %78, i64 %83, !dbg !1374
  %85 = bitcast i64* %84 to i8*, !dbg !1375
  %86 = load i64*, i64** %5, align 8, !dbg !1376
  %87 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1377
  %88 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %87, i32 0, i32 0, !dbg !1378
  %89 = load i64, i64* %88, align 8, !dbg !1378
  %90 = getelementptr inbounds i64, i64* %86, i64 %89, !dbg !1379
  %91 = bitcast i64* %90 to i8*, !dbg !1375
  %92 = load i64, i64* %4, align 8, !dbg !1380
  %93 = mul i64 %92, 8, !dbg !1381
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %91, i64 %93, i1 false), !dbg !1375
  br label %94, !dbg !1375

94:                                               ; preds = %75, %60
  %95 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1382
  %96 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %95, i32 0, i32 1, !dbg !1383
  %97 = load i64, i64* %96, align 8, !dbg !1383
  %98 = load i64, i64* %4, align 8, !dbg !1384
  %99 = sub i64 %97, %98, !dbg !1385
  %100 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1386
  %101 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %100, i32 0, i32 0, !dbg !1387
  store i64 %99, i64* %101, align 8, !dbg !1388
  %102 = load i64*, i64** %5, align 8, !dbg !1389
  %103 = load %struct.fio_ary___s*, %struct.fio_ary___s** %3, align 8, !dbg !1391
  %104 = getelementptr inbounds %struct.fio_ary___s, %struct.fio_ary___s* %103, i32 0, i32 3, !dbg !1392
  %105 = load i64*, i64** %104, align 8, !dbg !1392
  %106 = icmp ne i64* %102, %105, !dbg !1393
  br i1 %106, label %107, label %110, !dbg !1394

107:                                              ; preds = %94
  %108 = load i64*, i64** %5, align 8, !dbg !1395
  %109 = bitcast i64* %108 to i8*, !dbg !1395
  call void @fio_free(i8* %109), !dbg !1397
  br label %110, !dbg !1398

110:                                              ; preds = %11, %107, %94
  ret void, !dbg !1399
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind willreturn }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!133, !134, !135}
!llvm.ident = !{!136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIOBJECT_VTABLE_ARRAY", scope: !2, file: !3, line: 65, type: !70, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !60, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_ary.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 50, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "../include/fiobject.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "FIOBJ_T_NUMBER", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "FIOBJ_T_NULL", value: 6, isUnsigned: true)
!11 = !DIEnumerator(name: "FIOBJ_T_TRUE", value: 22, isUnsigned: true)
!12 = !DIEnumerator(name: "FIOBJ_T_FALSE", value: 38, isUnsigned: true)
!13 = !DIEnumerator(name: "FIOBJ_T_FLOAT", value: 39, isUnsigned: true)
!14 = !DIEnumerator(name: "FIOBJ_T_STRING", value: 40, isUnsigned: true)
!15 = !DIEnumerator(name: "FIOBJ_T_ARRAY", value: 41, isUnsigned: true)
!16 = !DIEnumerator(name: "FIOBJ_T_HASH", value: 42, isUnsigned: true)
!17 = !DIEnumerator(name: "FIOBJ_T_DATA", value: 43, isUnsigned: true)
!18 = !DIEnumerator(name: "FIOBJ_T_UNKNOWN", value: 44, isUnsigned: true)
!19 = !{!20, !48, !52, !56, !57, !58, !50, !49, !42, !59, !29}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_ary_s", file: !3, line: 24, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 320, elements: !23)
!23 = !{!24, !36}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !22, file: !3, line: 22, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !6, line: 332, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 327, size: 64, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !6, line: 329, baseType: !29, size: 8)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !6, line: 61, baseType: !5)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !26, file: !6, line: 331, baseType: !31, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 42, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ary", scope: !22, file: !3, line: 23, baseType: !37, size: 256, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_ary___s", file: !38, line: 4724, baseType: !39)
!38 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_ary___s", file: !38, line: 4878, size: 256, elements: !40)
!40 = !{!41, !45, !46, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !39, file: !38, line: 4879, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !39, file: !38, line: 4880, baseType: !42, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !39, file: !38, line: 4881, baseType: !42, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "arry", scope: !39, file: !38, line: 4882, baseType: !48, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !51, line: 90, baseType: !44)
!51 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !53, line: 27, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !34, line: 44, baseType: !55)
!55 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !51, line: 87, baseType: !55)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!60 = !{!0, !61, !64, !68}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !38, line: 433, type: !63, isLocal: false, isDefinition: true)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !38, line: 2433, type: !66, isLocal: false, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !7)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !38, line: 2434, type: !66, isLocal: false, isDefinition: true)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !73)
!73 = !{!74, !78, !86, !92, !97, !102, !110, !122, !127}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !72, file: !6, line: 307, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !72, file: !6, line: 309, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !49, !83, !58}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !49, !58}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !72, file: !6, line: 311, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!50, !91}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !72, file: !6, line: 313, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!42, !91}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !72, file: !6, line: 315, baseType: !98, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!42, !91, !91}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !72, file: !6, line: 317, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!42, !49, !42, !107, !58}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!63, !49, !58}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !72, file: !6, line: 320, baseType: !111, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !91}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !38, line: 287, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !38, line: 283, size: 192, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !116, file: !38, line: 284, baseType: !42, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !116, file: !38, line: 285, baseType: !42, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !116, file: !38, line: 286, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !72, file: !6, line: 322, baseType: !123, size: 64, offset: 448)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!56, !91}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !72, file: !6, line: 324, baseType: !128, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !91}
!132 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!133 = !{i32 7, !"Dwarf Version", i32 4}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{!"clang version 10.0.0-4ubuntu1 "}
!137 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !38, file: !38, line: 437, type: !138, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !75, null}
!140 = !{}
!141 = !DILocalVariable(name: "format", arg: 1, scope: !137, file: !38, line: 437, type: !75)
!142 = !DILocation(line: 437, column: 28, scope: !137)
!143 = !DILocalVariable(name: "tmp___log", scope: !137, file: !38, line: 438, type: !144)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 16384, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 2048)
!147 = !DILocation(line: 438, column: 8, scope: !137)
!148 = !DILocalVariable(name: "argv", scope: !137, file: !38, line: 439, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !150, line: 52, baseType: !151)
!150 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !152, line: 32, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !161)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !155, file: !3, line: 439, baseType: !35, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !155, file: !3, line: 439, baseType: !35, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !155, file: !3, line: 439, baseType: !58, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !155, file: !3, line: 439, baseType: !58, size: 64, offset: 128)
!161 = !{!162}
!162 = !DISubrange(count: 1)
!163 = !DILocation(line: 439, column: 11, scope: !137)
!164 = !DILocation(line: 440, column: 3, scope: !137)
!165 = !DILocalVariable(name: "len___log", scope: !137, file: !38, line: 441, type: !63)
!166 = !DILocation(line: 441, column: 7, scope: !137)
!167 = !DILocation(line: 441, column: 29, scope: !137)
!168 = !DILocation(line: 441, column: 66, scope: !137)
!169 = !DILocation(line: 441, column: 74, scope: !137)
!170 = !DILocation(line: 441, column: 19, scope: !137)
!171 = !DILocation(line: 442, column: 3, scope: !137)
!172 = !DILocation(line: 443, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !137, file: !38, line: 443, column: 7)
!174 = !DILocation(line: 443, column: 17, scope: !173)
!175 = !DILocation(line: 443, column: 22, scope: !173)
!176 = !DILocation(line: 443, column: 25, scope: !173)
!177 = !DILocation(line: 443, column: 35, scope: !173)
!178 = !DILocation(line: 443, column: 7, scope: !137)
!179 = !DILocation(line: 444, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !38, line: 444, column: 9)
!181 = distinct !DILexicalBlock(scope: !173, file: !38, line: 443, column: 64)
!182 = !DILocation(line: 444, column: 19, scope: !180)
!183 = !DILocation(line: 444, column: 9, scope: !181)
!184 = !DILocation(line: 445, column: 14, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !38, line: 444, column: 48)
!186 = !DILocation(line: 445, column: 24, scope: !185)
!187 = !DILocation(line: 445, column: 7, scope: !185)
!188 = !DILocation(line: 447, column: 17, scope: !185)
!189 = !DILocation(line: 448, column: 5, scope: !185)
!190 = !DILocation(line: 449, column: 65, scope: !191)
!191 = distinct !DILexicalBlock(scope: !180, file: !38, line: 448, column: 12)
!192 = !DILocation(line: 449, column: 7, scope: !191)
!193 = !DILocation(line: 450, column: 7, scope: !191)
!194 = !DILocation(line: 452, column: 3, scope: !181)
!195 = !DILocation(line: 453, column: 22, scope: !137)
!196 = !DILocation(line: 453, column: 3, scope: !137)
!197 = !DILocation(line: 453, column: 26, scope: !137)
!198 = !DILocation(line: 454, column: 13, scope: !137)
!199 = !DILocation(line: 454, column: 3, scope: !137)
!200 = !DILocation(line: 454, column: 24, scope: !137)
!201 = !DILocation(line: 455, column: 10, scope: !137)
!202 = !DILocation(line: 455, column: 21, scope: !137)
!203 = !DILocation(line: 455, column: 35, scope: !137)
!204 = !DILocation(line: 455, column: 3, scope: !137)
!205 = !DILocation(line: 456, column: 1, scope: !137)
!206 = distinct !DISubprogram(name: "fiobj_ary_count", scope: !3, file: !3, line: 52, type: !95, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!207 = !DILocalVariable(name: "ary", arg: 1, scope: !206, file: !3, line: 52, type: !91)
!208 = !DILocation(line: 52, column: 36, scope: !206)
!209 = !DILocation(line: 53, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 53, column: 3)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 53, column: 3)
!212 = !DILocation(line: 53, column: 3, scope: !211)
!213 = !DILocation(line: 54, column: 27, scope: !206)
!214 = !DILocation(line: 54, column: 41, scope: !206)
!215 = !DILocation(line: 54, column: 10, scope: !206)
!216 = !DILocation(line: 54, column: 3, scope: !206)
!217 = distinct !DISubprogram(name: "fiobj_type_is", scope: !6, file: !6, line: 269, type: !218, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!218 = !DISubroutineType(types: !219)
!219 = !{!42, !49, !29}
!220 = !DILocalVariable(name: "o", arg: 1, scope: !217, file: !6, line: 269, type: !49)
!221 = !DILocation(line: 269, column: 39, scope: !217)
!222 = !DILocalVariable(name: "type", arg: 2, scope: !217, file: !6, line: 269, type: !29)
!223 = !DILocation(line: 269, column: 58, scope: !217)
!224 = !DILocation(line: 270, column: 11, scope: !217)
!225 = !DILocation(line: 270, column: 3, scope: !217)
!226 = !DILocation(line: 272, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !217, file: !6, line: 270, column: 17)
!228 = !DILocation(line: 272, column: 15, scope: !227)
!229 = !DILocation(line: 272, column: 39, scope: !227)
!230 = !DILocation(line: 273, column: 32, scope: !227)
!231 = !DILocation(line: 273, column: 13, scope: !227)
!232 = !DILocation(line: 273, column: 12, scope: !227)
!233 = !DILocation(line: 273, column: 38, scope: !227)
!234 = !DILocation(line: 272, column: 12, scope: !227)
!235 = !DILocation(line: 272, column: 5, scope: !227)
!236 = !DILocation(line: 275, column: 13, scope: !227)
!237 = !DILocation(line: 275, column: 15, scope: !227)
!238 = !DILocation(line: 275, column: 18, scope: !227)
!239 = !DILocation(line: 275, column: 23, scope: !227)
!240 = !DILocation(line: 275, column: 20, scope: !227)
!241 = !DILocation(line: 275, column: 12, scope: !227)
!242 = !DILocation(line: 275, column: 5, scope: !227)
!243 = !DILocation(line: 277, column: 12, scope: !227)
!244 = !DILocation(line: 277, column: 17, scope: !227)
!245 = !DILocation(line: 277, column: 14, scope: !227)
!246 = !DILocation(line: 277, column: 5, scope: !227)
!247 = !DILocation(line: 279, column: 12, scope: !227)
!248 = !DILocation(line: 279, column: 17, scope: !227)
!249 = !DILocation(line: 279, column: 14, scope: !227)
!250 = !DILocation(line: 279, column: 5, scope: !227)
!251 = !DILocation(line: 281, column: 38, scope: !227)
!252 = !DILocation(line: 281, column: 40, scope: !227)
!253 = !DILocation(line: 281, column: 64, scope: !227)
!254 = !DILocation(line: 281, column: 69, scope: !227)
!255 = !DILocation(line: 282, column: 14, scope: !227)
!256 = !DILocation(line: 282, column: 16, scope: !227)
!257 = !DILocation(line: 282, column: 43, scope: !227)
!258 = !DILocation(line: 282, column: 68, scope: !227)
!259 = !DILocation(line: 281, column: 12, scope: !227)
!260 = !DILocation(line: 281, column: 5, scope: !227)
!261 = !DILocation(line: 287, column: 16, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !6, line: 286, column: 29)
!263 = distinct !DILexicalBlock(scope: !227, file: !6, line: 286, column: 9)
!264 = !DILocation(line: 287, column: 18, scope: !262)
!265 = !DILocation(line: 287, column: 42, scope: !262)
!266 = !DILocation(line: 287, column: 47, scope: !262)
!267 = !DILocation(line: 288, column: 16, scope: !262)
!268 = !DILocation(line: 288, column: 18, scope: !262)
!269 = !DILocation(line: 288, column: 45, scope: !262)
!270 = !DILocation(line: 0, scope: !262)
!271 = !DILocation(line: 287, column: 14, scope: !262)
!272 = !DILocation(line: 287, column: 7, scope: !262)
!273 = !DILocation(line: 295, column: 12, scope: !227)
!274 = !DILocation(line: 295, column: 34, scope: !227)
!275 = !DILocation(line: 296, column: 32, scope: !227)
!276 = !DILocation(line: 296, column: 12, scope: !227)
!277 = !DILocation(line: 296, column: 52, scope: !227)
!278 = !DILocation(line: 296, column: 49, scope: !227)
!279 = !DILocation(line: 0, scope: !227)
!280 = !DILocation(line: 295, column: 5, scope: !227)
!281 = !DILocation(line: 298, column: 10, scope: !217)
!282 = !DILocation(line: 298, column: 32, scope: !217)
!283 = !DILocation(line: 298, column: 55, scope: !217)
!284 = !DILocation(line: 298, column: 35, scope: !217)
!285 = !DILocation(line: 298, column: 75, scope: !217)
!286 = !DILocation(line: 298, column: 72, scope: !217)
!287 = !DILocation(line: 0, scope: !217)
!288 = !DILocation(line: 298, column: 3, scope: !217)
!289 = !DILocation(line: 299, column: 1, scope: !217)
!290 = distinct !DISubprogram(name: "fio_ary___count", scope: !38, file: !38, line: 4953, type: !291, scopeLine: 4953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!291 = !DISubroutineType(types: !292)
!292 = !{!42, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!294 = !DILocalVariable(name: "ary", arg: 1, scope: !290, file: !38, line: 4953, type: !293)
!295 = !DILocation(line: 4953, column: 54, scope: !290)
!296 = !DILocation(line: 4954, column: 10, scope: !290)
!297 = !DILocation(line: 4954, column: 17, scope: !290)
!298 = !DILocation(line: 4954, column: 22, scope: !290)
!299 = !DILocation(line: 4954, column: 28, scope: !290)
!300 = !DILocation(line: 4954, column: 33, scope: !290)
!301 = !DILocation(line: 4954, column: 26, scope: !290)
!302 = !DILocation(line: 4954, column: 3, scope: !290)
!303 = distinct !DISubprogram(name: "fiobj_ary_dealloc", scope: !3, file: !3, line: 32, type: !81, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!304 = !DILocalVariable(name: "o", arg: 1, scope: !303, file: !3, line: 32, type: !49)
!305 = !DILocation(line: 32, column: 37, scope: !303)
!306 = !DILocalVariable(name: "task", arg: 2, scope: !303, file: !3, line: 32, type: !83)
!307 = !DILocation(line: 32, column: 47, scope: !303)
!308 = !DILocalVariable(name: "arg", arg: 3, scope: !303, file: !3, line: 32, type: !58)
!309 = !DILocation(line: 32, column: 75, scope: !303)
!310 = !DILocation(line: 33, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !303, file: !3, line: 33, column: 3)
!312 = !DILocation(line: 33, column: 3, scope: !303)
!313 = !DILocalVariable(name: "start__tmp__", scope: !314, file: !3, line: 33, type: !48)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 33, column: 3)
!315 = !DILocation(line: 33, column: 3, scope: !314)
!316 = !DILocalVariable(name: "i", scope: !314, file: !3, line: 33, type: !48)
!317 = !DILocation(line: 33, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 33, column: 3)
!319 = !DILocation(line: 33, column: 40, scope: !320)
!320 = distinct !DILexicalBlock(scope: !318, file: !3, line: 33, column: 38)
!321 = !DILocation(line: 33, column: 46, scope: !320)
!322 = !DILocation(line: 33, column: 45, scope: !320)
!323 = !DILocation(line: 33, column: 49, scope: !320)
!324 = !DILocation(line: 33, column: 55, scope: !320)
!325 = distinct !{!325, !315, !326}
!326 = !DILocation(line: 33, column: 55, scope: !314)
!327 = !DILocation(line: 34, column: 19, scope: !303)
!328 = !DILocation(line: 34, column: 31, scope: !303)
!329 = !DILocation(line: 34, column: 3, scope: !303)
!330 = !DILocation(line: 35, column: 12, scope: !303)
!331 = !DILocation(line: 35, column: 3, scope: !303)
!332 = !DILocation(line: 36, column: 1, scope: !303)
!333 = distinct !DISubprogram(name: "fiobj_ary_is_true", scope: !3, file: !3, line: 57, type: !95, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!334 = !DILocalVariable(name: "ary", arg: 1, scope: !333, file: !3, line: 57, type: !91)
!335 = !DILocation(line: 57, column: 45, scope: !333)
!336 = !DILocation(line: 58, column: 26, scope: !333)
!337 = !DILocation(line: 58, column: 10, scope: !333)
!338 = !DILocation(line: 58, column: 31, scope: !333)
!339 = !DILocation(line: 58, column: 3, scope: !333)
!340 = distinct !DISubprogram(name: "fiobj_ary_is_eq", scope: !3, file: !3, line: 43, type: !100, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!341 = !DILocalVariable(name: "self", arg: 1, scope: !340, file: !3, line: 43, type: !91)
!342 = !DILocation(line: 43, column: 43, scope: !340)
!343 = !DILocalVariable(name: "other", arg: 2, scope: !340, file: !3, line: 43, type: !91)
!344 = !DILocation(line: 43, column: 61, scope: !340)
!345 = !DILocalVariable(name: "a", scope: !340, file: !3, line: 44, type: !293)
!346 = !DILocation(line: 44, column: 16, scope: !340)
!347 = !DILocation(line: 44, column: 21, scope: !340)
!348 = !DILocation(line: 44, column: 36, scope: !340)
!349 = !DILocalVariable(name: "b", scope: !340, file: !3, line: 45, type: !293)
!350 = !DILocation(line: 45, column: 16, scope: !340)
!351 = !DILocation(line: 45, column: 21, scope: !340)
!352 = !DILocation(line: 45, column: 37, scope: !340)
!353 = !DILocation(line: 46, column: 23, scope: !354)
!354 = distinct !DILexicalBlock(scope: !340, file: !3, line: 46, column: 7)
!355 = !DILocation(line: 46, column: 7, scope: !354)
!356 = !DILocation(line: 46, column: 45, scope: !354)
!357 = !DILocation(line: 46, column: 29, scope: !354)
!358 = !DILocation(line: 46, column: 26, scope: !354)
!359 = !DILocation(line: 46, column: 7, scope: !340)
!360 = !DILocation(line: 47, column: 5, scope: !354)
!361 = !DILocation(line: 48, column: 3, scope: !340)
!362 = !DILocation(line: 49, column: 1, scope: !340)
!363 = distinct !DISubprogram(name: "fiobj_ary_each1", scope: !3, file: !3, line: 38, type: !105, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!364 = !DILocalVariable(name: "o", arg: 1, scope: !363, file: !3, line: 38, type: !49)
!365 = !DILocation(line: 38, column: 37, scope: !363)
!366 = !DILocalVariable(name: "start_at", arg: 2, scope: !363, file: !3, line: 38, type: !42)
!367 = !DILocation(line: 38, column: 47, scope: !363)
!368 = !DILocalVariable(name: "task", arg: 3, scope: !363, file: !3, line: 39, type: !107)
!369 = !DILocation(line: 39, column: 37, scope: !363)
!370 = !DILocalVariable(name: "arg", arg: 4, scope: !363, file: !3, line: 39, type: !58)
!371 = !DILocation(line: 39, column: 72, scope: !363)
!372 = !DILocation(line: 40, column: 26, scope: !363)
!373 = !DILocation(line: 40, column: 38, scope: !363)
!374 = !DILocation(line: 40, column: 43, scope: !363)
!375 = !DILocation(line: 40, column: 53, scope: !363)
!376 = !DILocation(line: 40, column: 59, scope: !363)
!377 = !DILocation(line: 40, column: 10, scope: !363)
!378 = !DILocation(line: 40, column: 3, scope: !363)
!379 = distinct !DISubprogram(name: "fiobj_ary_new", scope: !3, file: !3, line: 100, type: !380, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!380 = !DISubroutineType(types: !381)
!381 = !{!49}
!382 = !DILocation(line: 100, column: 36, scope: !379)
!383 = !DILocation(line: 100, column: 29, scope: !379)
!384 = distinct !DISubprogram(name: "fiobj_ary_alloc", scope: !3, file: !3, line: 81, type: !385, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!385 = !DISubroutineType(types: !386)
!386 = !{!49, !42}
!387 = !DILocalVariable(name: "capa", arg: 1, scope: !384, file: !3, line: 81, type: !42)
!388 = !DILocation(line: 81, column: 44, scope: !384)
!389 = !DILocalVariable(name: "ary", scope: !384, file: !3, line: 82, type: !20)
!390 = !DILocation(line: 82, column: 16, scope: !384)
!391 = !DILocation(line: 82, column: 22, scope: !384)
!392 = !DILocation(line: 83, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 83, column: 7)
!394 = !DILexicalBlockFile(scope: !384, file: !3, discriminator: 0)
!395 = !DILocation(line: 83, column: 7, scope: !394)
!396 = !DILocation(line: 84, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !3, line: 83, column: 13)
!398 = !DILocation(line: 85, column: 10, scope: !397)
!399 = !DILocation(line: 85, column: 5, scope: !397)
!400 = !DILocation(line: 87, column: 4, scope: !394)
!401 = !DILocation(line: 87, column: 10, scope: !394)
!402 = !DILocation(line: 87, column: 23, scope: !394)
!403 = !DILocation(line: 89, column: 11, scope: !394)
!404 = !DILocation(line: 94, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !394, file: !3, line: 94, column: 7)
!406 = !DILocation(line: 94, column: 7, scope: !394)
!407 = !DILocation(line: 95, column: 33, scope: !405)
!408 = !DILocation(line: 95, column: 38, scope: !405)
!409 = !DILocation(line: 95, column: 43, scope: !405)
!410 = !DILocation(line: 95, column: 5, scope: !405)
!411 = !DILocation(line: 96, column: 17, scope: !394)
!412 = !DILocation(line: 96, column: 10, scope: !394)
!413 = !DILocation(line: 96, column: 3, scope: !394)
!414 = distinct !DISubprogram(name: "fiobj_ary_new2", scope: !3, file: !3, line: 102, type: !385, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!415 = !DILocalVariable(name: "capa", arg: 1, scope: !414, file: !3, line: 102, type: !42)
!416 = !DILocation(line: 102, column: 29, scope: !414)
!417 = !DILocation(line: 102, column: 60, scope: !414)
!418 = !DILocation(line: 102, column: 44, scope: !414)
!419 = !DILocation(line: 102, column: 37, scope: !414)
!420 = distinct !DISubprogram(name: "fiobj_ary_capa", scope: !3, file: !3, line: 109, type: !421, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!421 = !DISubroutineType(types: !422)
!422 = !{!42, !49}
!423 = !DILocalVariable(name: "ary", arg: 1, scope: !420, file: !3, line: 109, type: !49)
!424 = !DILocation(line: 109, column: 29, scope: !420)
!425 = !DILocation(line: 110, column: 3, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 110, column: 3)
!427 = distinct !DILexicalBlock(scope: !420, file: !3, line: 110, column: 3)
!428 = !DILocation(line: 110, column: 3, scope: !427)
!429 = !DILocation(line: 111, column: 26, scope: !420)
!430 = !DILocation(line: 111, column: 40, scope: !420)
!431 = !DILocation(line: 111, column: 10, scope: !420)
!432 = !DILocation(line: 111, column: 3, scope: !420)
!433 = distinct !DISubprogram(name: "fio_ary___capa", scope: !38, file: !38, line: 4958, type: !291, scopeLine: 4958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!434 = !DILocalVariable(name: "ary", arg: 1, scope: !433, file: !38, line: 4958, type: !293)
!435 = !DILocation(line: 4958, column: 53, scope: !433)
!436 = !DILocation(line: 4959, column: 10, scope: !433)
!437 = !DILocation(line: 4959, column: 16, scope: !433)
!438 = !DILocation(line: 4959, column: 21, scope: !433)
!439 = !DILocation(line: 4959, column: 3, scope: !433)
!440 = distinct !DISubprogram(name: "fiobj_ary2ptr", scope: !3, file: !3, line: 120, type: !441, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!441 = !DISubroutineType(types: !442)
!442 = !{!48, !49}
!443 = !DILocalVariable(name: "ary", arg: 1, scope: !440, file: !3, line: 120, type: !49)
!444 = !DILocation(line: 120, column: 28, scope: !440)
!445 = !DILocation(line: 121, column: 3, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 121, column: 3)
!447 = distinct !DILexicalBlock(scope: !440, file: !3, line: 121, column: 3)
!448 = !DILocation(line: 121, column: 3, scope: !447)
!449 = !DILocation(line: 122, column: 20, scope: !440)
!450 = !DILocation(line: 122, column: 34, scope: !440)
!451 = !DILocation(line: 122, column: 38, scope: !440)
!452 = !DILocation(line: 122, column: 45, scope: !440)
!453 = !DILocation(line: 122, column: 59, scope: !440)
!454 = !DILocation(line: 122, column: 63, scope: !440)
!455 = !DILocation(line: 122, column: 43, scope: !440)
!456 = !DILocation(line: 122, column: 3, scope: !440)
!457 = distinct !DISubprogram(name: "fiobj_ary_index", scope: !3, file: !3, line: 131, type: !458, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!458 = !DISubroutineType(types: !459)
!459 = !{!49, !49, !52}
!460 = !DILocalVariable(name: "ary", arg: 1, scope: !457, file: !3, line: 131, type: !49)
!461 = !DILocation(line: 131, column: 29, scope: !457)
!462 = !DILocalVariable(name: "pos", arg: 2, scope: !457, file: !3, line: 131, type: !52)
!463 = !DILocation(line: 131, column: 42, scope: !457)
!464 = !DILocation(line: 132, column: 3, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 132, column: 3)
!466 = distinct !DILexicalBlock(scope: !457, file: !3, line: 132, column: 3)
!467 = !DILocation(line: 132, column: 3, scope: !466)
!468 = !DILocation(line: 133, column: 25, scope: !457)
!469 = !DILocation(line: 133, column: 39, scope: !457)
!470 = !DILocation(line: 133, column: 44, scope: !457)
!471 = !DILocation(line: 133, column: 10, scope: !457)
!472 = !DILocation(line: 133, column: 3, scope: !457)
!473 = distinct !DISubprogram(name: "fio_ary___get", scope: !38, file: !38, line: 5036, type: !474, scopeLine: 5036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!474 = !DISubroutineType(types: !475)
!475 = !{!49, !293, !56}
!476 = !DILocalVariable(name: "ary", arg: 1, scope: !473, file: !38, line: 5036, type: !293)
!477 = !DILocation(line: 5036, column: 58, scope: !473)
!478 = !DILocalVariable(name: "index", arg: 2, scope: !473, file: !38, line: 5036, type: !56)
!479 = !DILocation(line: 5036, column: 72, scope: !473)
!480 = !DILocation(line: 5037, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !38, line: 5037, column: 7)
!482 = !DILocation(line: 5037, column: 7, scope: !473)
!483 = !DILocation(line: 5038, column: 5, scope: !481)
!484 = !DILocation(line: 5039, column: 36, scope: !473)
!485 = !DILocation(line: 5039, column: 41, scope: !473)
!486 = !DILocation(line: 5039, column: 11, scope: !473)
!487 = !DILocation(line: 5039, column: 9, scope: !473)
!488 = !DILocation(line: 5040, column: 15, scope: !489)
!489 = distinct !DILexicalBlock(scope: !473, file: !38, line: 5040, column: 7)
!490 = !DILocation(line: 5040, column: 24, scope: !489)
!491 = !DILocation(line: 5040, column: 29, scope: !489)
!492 = !DILocation(line: 5040, column: 35, scope: !489)
!493 = !DILocation(line: 5040, column: 40, scope: !489)
!494 = !DILocation(line: 5040, column: 33, scope: !489)
!495 = !DILocation(line: 5040, column: 21, scope: !489)
!496 = !DILocation(line: 5040, column: 7, scope: !473)
!497 = !DILocation(line: 5041, column: 5, scope: !489)
!498 = !DILocation(line: 5042, column: 11, scope: !473)
!499 = !DILocation(line: 5042, column: 16, scope: !473)
!500 = !DILocation(line: 5042, column: 23, scope: !473)
!501 = !DILocation(line: 5042, column: 28, scope: !473)
!502 = !DILocation(line: 5042, column: 21, scope: !473)
!503 = !DILocation(line: 5042, column: 35, scope: !473)
!504 = !DILocation(line: 5042, column: 10, scope: !473)
!505 = !DILocation(line: 5042, column: 3, scope: !473)
!506 = !DILocation(line: 5043, column: 1, scope: !473)
!507 = distinct !DISubprogram(name: "fiobj_ary_set", scope: !3, file: !3, line: 139, type: !508, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !49, !49, !52}
!510 = !DILocalVariable(name: "ary", arg: 1, scope: !507, file: !3, line: 139, type: !49)
!511 = !DILocation(line: 139, column: 26, scope: !507)
!512 = !DILocalVariable(name: "obj", arg: 2, scope: !507, file: !3, line: 139, type: !49)
!513 = !DILocation(line: 139, column: 37, scope: !507)
!514 = !DILocalVariable(name: "pos", arg: 3, scope: !507, file: !3, line: 139, type: !52)
!515 = !DILocation(line: 139, column: 50, scope: !507)
!516 = !DILocation(line: 140, column: 3, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 140, column: 3)
!518 = distinct !DILexicalBlock(scope: !507, file: !3, line: 140, column: 3)
!519 = !DILocation(line: 140, column: 3, scope: !518)
!520 = !DILocalVariable(name: "old", scope: !507, file: !3, line: 141, type: !49)
!521 = !DILocation(line: 141, column: 9, scope: !507)
!522 = !DILocation(line: 142, column: 18, scope: !507)
!523 = !DILocation(line: 142, column: 32, scope: !507)
!524 = !DILocation(line: 142, column: 37, scope: !507)
!525 = !DILocation(line: 142, column: 42, scope: !507)
!526 = !DILocation(line: 142, column: 3, scope: !507)
!527 = !DILocation(line: 143, column: 14, scope: !507)
!528 = !DILocation(line: 143, column: 3, scope: !507)
!529 = !DILocation(line: 144, column: 1, scope: !507)
!530 = distinct !DISubprogram(name: "fio_ary___set", scope: !38, file: !38, line: 5002, type: !531, scopeLine: 5003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !293, !56, !49, !48}
!533 = !DILocalVariable(name: "ary", arg: 1, scope: !530, file: !38, line: 5002, type: !293)
!534 = !DILocation(line: 5002, column: 50, scope: !530)
!535 = !DILocalVariable(name: "index", arg: 2, scope: !530, file: !38, line: 5002, type: !56)
!536 = !DILocation(line: 5002, column: 64, scope: !530)
!537 = !DILocalVariable(name: "data", arg: 3, scope: !530, file: !38, line: 5003, type: !49)
!538 = !DILocation(line: 5003, column: 49, scope: !530)
!539 = !DILocalVariable(name: "old", arg: 4, scope: !530, file: !38, line: 5003, type: !48)
!540 = !DILocation(line: 5003, column: 69, scope: !530)
!541 = !DILocation(line: 5004, column: 8, scope: !542)
!542 = distinct !DILexicalBlock(scope: !530, file: !38, line: 5004, column: 7)
!543 = !DILocation(line: 5004, column: 7, scope: !530)
!544 = !DILocation(line: 5005, column: 5, scope: !542)
!545 = !DILocation(line: 5006, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !530, file: !38, line: 5006, column: 7)
!547 = !DILocation(line: 5006, column: 12, scope: !546)
!548 = !DILocation(line: 5006, column: 21, scope: !546)
!549 = !DILocation(line: 5006, column: 26, scope: !546)
!550 = !DILocation(line: 5006, column: 18, scope: !546)
!551 = !DILocation(line: 5006, column: 7, scope: !530)
!552 = !DILocation(line: 5007, column: 18, scope: !546)
!553 = !DILocation(line: 5007, column: 23, scope: !546)
!554 = !DILocation(line: 5007, column: 27, scope: !546)
!555 = !DILocation(line: 5007, column: 5, scope: !546)
!556 = !DILocation(line: 5007, column: 10, scope: !546)
!557 = !DILocation(line: 5007, column: 16, scope: !546)
!558 = !DILocation(line: 5009, column: 36, scope: !530)
!559 = !DILocation(line: 5009, column: 41, scope: !530)
!560 = !DILocation(line: 5009, column: 11, scope: !530)
!561 = !DILocation(line: 5009, column: 9, scope: !530)
!562 = !DILocalVariable(name: "spaces", scope: !530, file: !38, line: 5011, type: !563)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!564 = !DILocation(line: 5011, column: 18, scope: !530)
!565 = !DILocation(line: 5011, column: 27, scope: !530)
!566 = !DILocation(line: 5011, column: 36, scope: !530)
!567 = !DILocation(line: 5011, column: 41, scope: !530)
!568 = !DILocation(line: 5011, column: 47, scope: !530)
!569 = !DILocation(line: 5011, column: 52, scope: !530)
!570 = !DILocation(line: 5011, column: 45, scope: !530)
!571 = !DILocation(line: 5011, column: 33, scope: !530)
!572 = !DILocation(line: 5012, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !530, file: !38, line: 5012, column: 7)
!574 = !DILocation(line: 5012, column: 14, scope: !573)
!575 = !DILocation(line: 5012, column: 7, scope: !530)
!576 = !DILocation(line: 5014, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !38, line: 5014, column: 9)
!578 = distinct !DILexicalBlock(scope: !573, file: !38, line: 5012, column: 19)
!579 = !DILocation(line: 5014, column: 9, scope: !578)
!580 = !DILocation(line: 5015, column: 7, scope: !577)
!581 = !DILocation(line: 5017, column: 5, scope: !578)
!582 = !DILocation(line: 5018, column: 5, scope: !578)
!583 = !DILocation(line: 5022, column: 30, scope: !530)
!584 = !DILocation(line: 5022, column: 35, scope: !530)
!585 = !DILocation(line: 5022, column: 42, scope: !530)
!586 = !DILocation(line: 5022, column: 3, scope: !530)
!587 = !DILocation(line: 5023, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !530, file: !38, line: 5023, column: 7)
!589 = !DILocation(line: 5023, column: 7, scope: !530)
!590 = !DILocation(line: 5024, column: 12, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !38, line: 5023, column: 15)
!592 = !DILocation(line: 5024, column: 17, scope: !591)
!593 = !DILocation(line: 5024, column: 24, scope: !591)
!594 = !DILocation(line: 5024, column: 29, scope: !591)
!595 = !DILocation(line: 5024, column: 22, scope: !591)
!596 = !DILocation(line: 5024, column: 5, scope: !591)
!597 = !DILocation(line: 5024, column: 58, scope: !591)
!598 = !DILocation(line: 5024, column: 56, scope: !591)
!599 = !DILocation(line: 5025, column: 3, scope: !591)
!600 = !DILocation(line: 5026, column: 3, scope: !530)
!601 = !DILocation(line: 5027, column: 14, scope: !530)
!602 = !DILocation(line: 5027, column: 20, scope: !530)
!603 = !DILocation(line: 5027, column: 3, scope: !530)
!604 = !DILocation(line: 5027, column: 8, scope: !530)
!605 = !DILocation(line: 5027, column: 12, scope: !530)
!606 = !DILocation(line: 5028, column: 1, scope: !530)
!607 = distinct !DISubprogram(name: "fiobj_free", scope: !6, file: !6, line: 446, type: !608, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !49}
!610 = !DILocalVariable(name: "o", arg: 1, scope: !607, file: !6, line: 446, type: !49)
!611 = !DILocation(line: 446, column: 34, scope: !607)
!612 = !DILocation(line: 447, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !607, file: !6, line: 447, column: 7)
!614 = !DILocation(line: 447, column: 7, scope: !607)
!615 = !DILocation(line: 448, column: 5, scope: !613)
!616 = !DILocation(line: 449, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !607, file: !6, line: 449, column: 7)
!618 = !DILocation(line: 449, column: 7, scope: !607)
!619 = !DILocation(line: 450, column: 5, scope: !617)
!620 = !DILocation(line: 451, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !607, file: !6, line: 451, column: 7)
!622 = !DILocation(line: 451, column: 25, scope: !621)
!623 = !DILocation(line: 451, column: 30, scope: !621)
!624 = !DILocation(line: 451, column: 33, scope: !621)
!625 = !DILocation(line: 451, column: 51, scope: !621)
!626 = !DILocation(line: 451, column: 57, scope: !621)
!627 = !DILocation(line: 451, column: 7, scope: !607)
!628 = !DILocation(line: 452, column: 31, scope: !621)
!629 = !DILocation(line: 452, column: 5, scope: !621)
!630 = !DILocation(line: 454, column: 5, scope: !621)
!631 = !DILocation(line: 454, column: 23, scope: !621)
!632 = !DILocation(line: 454, column: 31, scope: !621)
!633 = !DILocation(line: 455, column: 1, scope: !607)
!634 = distinct !DISubprogram(name: "fiobj_ary_push", scope: !3, file: !3, line: 153, type: !635, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !49, !49}
!637 = !DILocalVariable(name: "ary", arg: 1, scope: !634, file: !3, line: 153, type: !49)
!638 = !DILocation(line: 153, column: 27, scope: !634)
!639 = !DILocalVariable(name: "obj", arg: 2, scope: !634, file: !3, line: 153, type: !49)
!640 = !DILocation(line: 153, column: 38, scope: !634)
!641 = !DILocation(line: 154, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 154, column: 3)
!643 = distinct !DILexicalBlock(scope: !634, file: !3, line: 154, column: 3)
!644 = !DILocation(line: 154, column: 3, scope: !643)
!645 = !DILocation(line: 155, column: 19, scope: !634)
!646 = !DILocation(line: 155, column: 33, scope: !634)
!647 = !DILocation(line: 155, column: 38, scope: !634)
!648 = !DILocation(line: 155, column: 3, scope: !634)
!649 = !DILocation(line: 156, column: 1, scope: !634)
!650 = distinct !DISubprogram(name: "fio_ary___push", scope: !38, file: !38, line: 5114, type: !651, scopeLine: 5114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!651 = !DISubroutineType(types: !652)
!652 = !{!63, !293, !49}
!653 = !DILocalVariable(name: "ary", arg: 1, scope: !650, file: !38, line: 5114, type: !293)
!654 = !DILocation(line: 5114, column: 50, scope: !650)
!655 = !DILocalVariable(name: "data", arg: 2, scope: !650, file: !38, line: 5114, type: !49)
!656 = !DILocation(line: 5114, column: 68, scope: !650)
!657 = !DILocation(line: 5115, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !650, file: !38, line: 5115, column: 7)
!659 = !DILocation(line: 5115, column: 7, scope: !650)
!660 = !DILocation(line: 5116, column: 5, scope: !658)
!661 = !DILocation(line: 5117, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !650, file: !38, line: 5117, column: 7)
!663 = !DILocation(line: 5117, column: 12, scope: !662)
!664 = !DILocation(line: 5117, column: 20, scope: !662)
!665 = !DILocation(line: 5117, column: 25, scope: !662)
!666 = !DILocation(line: 5117, column: 17, scope: !662)
!667 = !DILocation(line: 5117, column: 7, scope: !650)
!668 = !DILocation(line: 5118, column: 32, scope: !662)
!669 = !DILocation(line: 5118, column: 5, scope: !662)
!670 = !DILocation(line: 5119, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !650, file: !38, line: 5119, column: 7)
!672 = !DILocation(line: 5119, column: 12, scope: !671)
!673 = !DILocation(line: 5119, column: 21, scope: !671)
!674 = !DILocation(line: 5119, column: 26, scope: !671)
!675 = !DILocation(line: 5119, column: 18, scope: !671)
!676 = !DILocation(line: 5119, column: 7, scope: !650)
!677 = !DILocation(line: 5120, column: 18, scope: !671)
!678 = !DILocation(line: 5120, column: 23, scope: !671)
!679 = !DILocation(line: 5120, column: 27, scope: !671)
!680 = !DILocation(line: 5120, column: 5, scope: !671)
!681 = !DILocation(line: 5120, column: 10, scope: !671)
!682 = !DILocation(line: 5120, column: 16, scope: !671)
!683 = !DILocation(line: 5121, column: 3, scope: !650)
!684 = !DILocation(line: 5122, column: 5, scope: !650)
!685 = !DILocation(line: 5122, column: 10, scope: !650)
!686 = !DILocation(line: 5122, column: 3, scope: !650)
!687 = !DILocation(line: 5123, column: 3, scope: !650)
!688 = !DILocation(line: 5124, column: 1, scope: !650)
!689 = distinct !DISubprogram(name: "fiobj_ary_pop", scope: !3, file: !3, line: 159, type: !690, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!690 = !DISubroutineType(types: !691)
!691 = !{!49, !49}
!692 = !DILocalVariable(name: "ary", arg: 1, scope: !689, file: !3, line: 159, type: !49)
!693 = !DILocation(line: 159, column: 27, scope: !689)
!694 = !DILocation(line: 160, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 160, column: 3)
!696 = distinct !DILexicalBlock(scope: !689, file: !3, line: 160, column: 3)
!697 = !DILocation(line: 160, column: 3, scope: !696)
!698 = !DILocalVariable(name: "ret", scope: !689, file: !3, line: 161, type: !49)
!699 = !DILocation(line: 161, column: 9, scope: !689)
!700 = !DILocation(line: 162, column: 18, scope: !689)
!701 = !DILocation(line: 162, column: 32, scope: !689)
!702 = !DILocation(line: 162, column: 3, scope: !689)
!703 = !DILocation(line: 163, column: 10, scope: !689)
!704 = !DILocation(line: 163, column: 3, scope: !689)
!705 = distinct !DISubprogram(name: "fio_ary___pop", scope: !38, file: !38, line: 5134, type: !706, scopeLine: 5134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!706 = !DISubroutineType(types: !707)
!707 = !{!63, !293, !48}
!708 = !DILocalVariable(name: "ary", arg: 1, scope: !705, file: !38, line: 5134, type: !293)
!709 = !DILocation(line: 5134, column: 49, scope: !705)
!710 = !DILocalVariable(name: "old", arg: 2, scope: !705, file: !38, line: 5134, type: !48)
!711 = !DILocation(line: 5134, column: 68, scope: !705)
!712 = !DILocation(line: 5135, column: 24, scope: !713)
!713 = distinct !DILexicalBlock(scope: !705, file: !38, line: 5135, column: 7)
!714 = !DILocation(line: 5135, column: 8, scope: !713)
!715 = !DILocation(line: 5135, column: 7, scope: !705)
!716 = !DILocation(line: 5136, column: 5, scope: !713)
!717 = !DILocation(line: 5137, column: 5, scope: !705)
!718 = !DILocation(line: 5137, column: 10, scope: !705)
!719 = !DILocation(line: 5137, column: 3, scope: !705)
!720 = !DILocation(line: 5138, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !705, file: !38, line: 5138, column: 7)
!722 = !DILocation(line: 5138, column: 7, scope: !705)
!723 = !DILocation(line: 5139, column: 5, scope: !721)
!724 = !DILocation(line: 5141, column: 3, scope: !705)
!725 = !DILocation(line: 5142, column: 1, scope: !705)
!726 = distinct !DISubprogram(name: "fiobj_ary_unshift", scope: !3, file: !3, line: 170, type: !635, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!727 = !DILocalVariable(name: "ary", arg: 1, scope: !726, file: !3, line: 170, type: !49)
!728 = !DILocation(line: 170, column: 30, scope: !726)
!729 = !DILocalVariable(name: "obj", arg: 2, scope: !726, file: !3, line: 170, type: !49)
!730 = !DILocation(line: 170, column: 41, scope: !726)
!731 = !DILocation(line: 171, column: 3, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 171, column: 3)
!733 = distinct !DILexicalBlock(scope: !726, file: !3, line: 171, column: 3)
!734 = !DILocation(line: 171, column: 3, scope: !733)
!735 = !DILocation(line: 172, column: 22, scope: !726)
!736 = !DILocation(line: 172, column: 36, scope: !726)
!737 = !DILocation(line: 172, column: 41, scope: !726)
!738 = !DILocation(line: 172, column: 3, scope: !726)
!739 = !DILocation(line: 173, column: 1, scope: !726)
!740 = distinct !DISubprogram(name: "fio_ary___unshift", scope: !38, file: !38, line: 5149, type: !651, scopeLine: 5149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!741 = !DILocalVariable(name: "ary", arg: 1, scope: !740, file: !38, line: 5149, type: !293)
!742 = !DILocation(line: 5149, column: 53, scope: !740)
!743 = !DILocalVariable(name: "data", arg: 2, scope: !740, file: !38, line: 5149, type: !49)
!744 = !DILocation(line: 5149, column: 71, scope: !740)
!745 = !DILocation(line: 5150, column: 8, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !38, line: 5150, column: 7)
!747 = !DILocation(line: 5150, column: 7, scope: !740)
!748 = !DILocation(line: 5151, column: 5, scope: !746)
!749 = !DILocation(line: 5152, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !740, file: !38, line: 5152, column: 7)
!751 = !DILocation(line: 5152, column: 12, scope: !750)
!752 = !DILocation(line: 5152, column: 18, scope: !750)
!753 = !DILocation(line: 5152, column: 7, scope: !740)
!754 = !DILocation(line: 5153, column: 35, scope: !750)
!755 = !DILocation(line: 5153, column: 5, scope: !750)
!756 = !DILocation(line: 5154, column: 5, scope: !740)
!757 = !DILocation(line: 5154, column: 10, scope: !740)
!758 = !DILocation(line: 5154, column: 3, scope: !740)
!759 = !DILocation(line: 5155, column: 3, scope: !740)
!760 = !DILocation(line: 5156, column: 3, scope: !740)
!761 = !DILocation(line: 5157, column: 1, scope: !740)
!762 = distinct !DISubprogram(name: "fiobj_ary_shift", scope: !3, file: !3, line: 176, type: !690, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!763 = !DILocalVariable(name: "ary", arg: 1, scope: !762, file: !3, line: 176, type: !49)
!764 = !DILocation(line: 176, column: 29, scope: !762)
!765 = !DILocation(line: 177, column: 3, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 177, column: 3)
!767 = distinct !DILexicalBlock(scope: !762, file: !3, line: 177, column: 3)
!768 = !DILocation(line: 177, column: 3, scope: !767)
!769 = !DILocalVariable(name: "ret", scope: !762, file: !3, line: 178, type: !49)
!770 = !DILocation(line: 178, column: 9, scope: !762)
!771 = !DILocation(line: 179, column: 20, scope: !762)
!772 = !DILocation(line: 179, column: 34, scope: !762)
!773 = !DILocation(line: 179, column: 3, scope: !762)
!774 = !DILocation(line: 180, column: 10, scope: !762)
!775 = !DILocation(line: 180, column: 3, scope: !762)
!776 = distinct !DISubprogram(name: "fio_ary___shift", scope: !38, file: !38, line: 5167, type: !706, scopeLine: 5167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!777 = !DILocalVariable(name: "ary", arg: 1, scope: !776, file: !38, line: 5167, type: !293)
!778 = !DILocation(line: 5167, column: 51, scope: !776)
!779 = !DILocalVariable(name: "old", arg: 2, scope: !776, file: !38, line: 5167, type: !48)
!780 = !DILocation(line: 5167, column: 70, scope: !776)
!781 = !DILocation(line: 5168, column: 24, scope: !782)
!782 = distinct !DILexicalBlock(scope: !776, file: !38, line: 5168, column: 7)
!783 = !DILocation(line: 5168, column: 8, scope: !782)
!784 = !DILocation(line: 5168, column: 7, scope: !776)
!785 = !DILocation(line: 5169, column: 5, scope: !782)
!786 = !DILocation(line: 5170, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !776, file: !38, line: 5170, column: 7)
!788 = !DILocation(line: 5170, column: 7, scope: !776)
!789 = !DILocation(line: 5171, column: 5, scope: !787)
!790 = !DILocation(line: 5173, column: 5, scope: !776)
!791 = !DILocation(line: 5173, column: 10, scope: !776)
!792 = !DILocation(line: 5173, column: 3, scope: !776)
!793 = !DILocation(line: 5174, column: 3, scope: !776)
!794 = !DILocation(line: 5175, column: 1, scope: !776)
!795 = distinct !DISubprogram(name: "fiobj_ary_replace", scope: !3, file: !3, line: 191, type: !796, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!796 = !DISubroutineType(types: !797)
!797 = !{!49, !49, !49, !52}
!798 = !DILocalVariable(name: "ary", arg: 1, scope: !795, file: !3, line: 191, type: !49)
!799 = !DILocation(line: 191, column: 31, scope: !795)
!800 = !DILocalVariable(name: "obj", arg: 2, scope: !795, file: !3, line: 191, type: !49)
!801 = !DILocation(line: 191, column: 42, scope: !795)
!802 = !DILocalVariable(name: "pos", arg: 3, scope: !795, file: !3, line: 191, type: !52)
!803 = !DILocation(line: 191, column: 55, scope: !795)
!804 = !DILocation(line: 192, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 192, column: 3)
!806 = distinct !DILexicalBlock(scope: !795, file: !3, line: 192, column: 3)
!807 = !DILocation(line: 192, column: 3, scope: !806)
!808 = !DILocalVariable(name: "old", scope: !795, file: !3, line: 193, type: !49)
!809 = !DILocation(line: 193, column: 9, scope: !795)
!810 = !DILocation(line: 193, column: 31, scope: !795)
!811 = !DILocation(line: 193, column: 36, scope: !795)
!812 = !DILocation(line: 193, column: 15, scope: !795)
!813 = !DILocation(line: 194, column: 17, scope: !795)
!814 = !DILocation(line: 194, column: 22, scope: !795)
!815 = !DILocation(line: 194, column: 27, scope: !795)
!816 = !DILocation(line: 194, column: 3, scope: !795)
!817 = !DILocation(line: 195, column: 10, scope: !795)
!818 = !DILocation(line: 195, column: 3, scope: !795)
!819 = distinct !DISubprogram(name: "fiobj_ary_find", scope: !3, file: !3, line: 202, type: !820, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!820 = !DISubroutineType(types: !821)
!821 = !{!52, !49, !49}
!822 = !DILocalVariable(name: "ary", arg: 1, scope: !819, file: !3, line: 202, type: !49)
!823 = !DILocation(line: 202, column: 30, scope: !819)
!824 = !DILocalVariable(name: "data", arg: 2, scope: !819, file: !3, line: 202, type: !49)
!825 = !DILocation(line: 202, column: 41, scope: !819)
!826 = !DILocation(line: 203, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 203, column: 3)
!828 = distinct !DILexicalBlock(scope: !819, file: !3, line: 203, column: 3)
!829 = !DILocation(line: 203, column: 3, scope: !828)
!830 = !DILocation(line: 204, column: 35, scope: !819)
!831 = !DILocation(line: 204, column: 49, scope: !819)
!832 = !DILocation(line: 204, column: 54, scope: !819)
!833 = !DILocation(line: 204, column: 19, scope: !819)
!834 = !DILocation(line: 204, column: 3, scope: !819)
!835 = distinct !DISubprogram(name: "fio_ary___find", scope: !38, file: !38, line: 5048, type: !836, scopeLine: 5048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!836 = !DISubroutineType(types: !837)
!837 = !{!56, !293, !49}
!838 = !DILocalVariable(name: "ary", arg: 1, scope: !835, file: !38, line: 5048, type: !293)
!839 = !DILocation(line: 5048, column: 55, scope: !835)
!840 = !DILocalVariable(name: "data", arg: 2, scope: !835, file: !38, line: 5048, type: !49)
!841 = !DILocation(line: 5048, column: 73, scope: !835)
!842 = !DILocalVariable(name: "count", scope: !835, file: !38, line: 5049, type: !843)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!844 = !DILocation(line: 5049, column: 16, scope: !835)
!845 = !DILocation(line: 5049, column: 40, scope: !835)
!846 = !DILocation(line: 5049, column: 24, scope: !835)
!847 = !DILocation(line: 5050, column: 8, scope: !848)
!848 = distinct !DILexicalBlock(scope: !835, file: !38, line: 5050, column: 7)
!849 = !DILocation(line: 5050, column: 7, scope: !835)
!850 = !DILocation(line: 5051, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !38, line: 5050, column: 15)
!852 = !DILocalVariable(name: "pos", scope: !835, file: !38, line: 5053, type: !42)
!853 = !DILocation(line: 5053, column: 10, scope: !835)
!854 = !DILocation(line: 5053, column: 16, scope: !835)
!855 = !DILocation(line: 5053, column: 21, scope: !835)
!856 = !DILocalVariable(name: "end", scope: !835, file: !38, line: 5054, type: !843)
!857 = !DILocation(line: 5054, column: 25, scope: !835)
!858 = !DILocation(line: 5054, column: 31, scope: !835)
!859 = !DILocation(line: 5054, column: 36, scope: !835)
!860 = !DILocation(line: 5055, column: 3, scope: !835)
!861 = !DILocation(line: 5055, column: 10, scope: !835)
!862 = !DILocation(line: 5055, column: 16, scope: !835)
!863 = !DILocation(line: 5055, column: 14, scope: !835)
!864 = !DILocation(line: 5055, column: 20, scope: !835)
!865 = !DILocation(line: 5055, column: 24, scope: !835)
!866 = !DILocation(line: 5055, column: 23, scope: !835)
!867 = !DILocation(line: 0, scope: !835)
!868 = !DILocation(line: 5056, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !835, file: !38, line: 5055, column: 63)
!870 = distinct !{!870, !860, !871}
!871 = !DILocation(line: 5057, column: 3, scope: !835)
!872 = !DILocation(line: 5058, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !835, file: !38, line: 5058, column: 7)
!874 = !DILocation(line: 5058, column: 14, scope: !873)
!875 = !DILocation(line: 5058, column: 11, scope: !873)
!876 = !DILocation(line: 5058, column: 7, scope: !835)
!877 = !DILocation(line: 5059, column: 5, scope: !873)
!878 = !DILocation(line: 5060, column: 11, scope: !835)
!879 = !DILocation(line: 5060, column: 17, scope: !835)
!880 = !DILocation(line: 5060, column: 22, scope: !835)
!881 = !DILocation(line: 5060, column: 15, scope: !835)
!882 = !DILocation(line: 5060, column: 3, scope: !835)
!883 = !DILocation(line: 5061, column: 1, scope: !835)
!884 = distinct !DISubprogram(name: "fiobj_ary_remove", scope: !3, file: !3, line: 213, type: !885, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!885 = !DISubroutineType(types: !886)
!886 = !{!63, !49, !52}
!887 = !DILocalVariable(name: "ary", arg: 1, scope: !884, file: !3, line: 213, type: !49)
!888 = !DILocation(line: 213, column: 28, scope: !884)
!889 = !DILocalVariable(name: "pos", arg: 2, scope: !884, file: !3, line: 213, type: !52)
!890 = !DILocation(line: 213, column: 41, scope: !884)
!891 = !DILocation(line: 214, column: 3, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 214, column: 3)
!893 = distinct !DILexicalBlock(scope: !884, file: !3, line: 214, column: 3)
!894 = !DILocation(line: 214, column: 3, scope: !893)
!895 = !DILocalVariable(name: "old", scope: !884, file: !3, line: 215, type: !49)
!896 = !DILocation(line: 215, column: 9, scope: !884)
!897 = !DILocation(line: 216, column: 25, scope: !898)
!898 = distinct !DILexicalBlock(scope: !884, file: !3, line: 216, column: 7)
!899 = !DILocation(line: 216, column: 39, scope: !898)
!900 = !DILocation(line: 216, column: 54, scope: !898)
!901 = !DILocation(line: 216, column: 7, scope: !898)
!902 = !DILocation(line: 216, column: 7, scope: !884)
!903 = !DILocation(line: 217, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !3, line: 216, column: 66)
!905 = !DILocation(line: 219, column: 14, scope: !884)
!906 = !DILocation(line: 219, column: 3, scope: !884)
!907 = !DILocation(line: 220, column: 3, scope: !884)
!908 = !DILocation(line: 221, column: 1, scope: !884)
!909 = distinct !DISubprogram(name: "fio_ary___remove", scope: !38, file: !38, line: 5072, type: !910, scopeLine: 5073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!910 = !DISubroutineType(types: !911)
!911 = !{!63, !293, !56, !48}
!912 = !DILocalVariable(name: "ary", arg: 1, scope: !909, file: !38, line: 5072, type: !293)
!913 = !DILocation(line: 5072, column: 52, scope: !909)
!914 = !DILocalVariable(name: "index", arg: 2, scope: !909, file: !38, line: 5072, type: !56)
!915 = !DILocation(line: 5072, column: 66, scope: !909)
!916 = !DILocalVariable(name: "old", arg: 3, scope: !909, file: !38, line: 5073, type: !48)
!917 = !DILocation(line: 5073, column: 52, scope: !909)
!918 = !DILocation(line: 5074, column: 36, scope: !909)
!919 = !DILocation(line: 5074, column: 41, scope: !909)
!920 = !DILocation(line: 5074, column: 11, scope: !909)
!921 = !DILocation(line: 5074, column: 9, scope: !909)
!922 = !DILocalVariable(name: "count", scope: !909, file: !38, line: 5075, type: !843)
!923 = !DILocation(line: 5075, column: 16, scope: !909)
!924 = !DILocation(line: 5075, column: 40, scope: !909)
!925 = !DILocation(line: 5075, column: 24, scope: !909)
!926 = !DILocation(line: 5076, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !909, file: !38, line: 5076, column: 7)
!928 = !DILocation(line: 5076, column: 14, scope: !927)
!929 = !DILocation(line: 5076, column: 25, scope: !927)
!930 = !DILocation(line: 5076, column: 34, scope: !927)
!931 = !DILocation(line: 5076, column: 31, scope: !927)
!932 = !DILocation(line: 5076, column: 7, scope: !909)
!933 = !DILocation(line: 5077, column: 5, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !38, line: 5076, column: 41)
!935 = !DILocation(line: 5079, column: 12, scope: !909)
!936 = !DILocation(line: 5079, column: 17, scope: !909)
!937 = !DILocation(line: 5079, column: 9, scope: !909)
!938 = !DILocation(line: 5080, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !909, file: !38, line: 5080, column: 7)
!940 = !DILocation(line: 5080, column: 7, scope: !909)
!941 = !DILocation(line: 5081, column: 5, scope: !939)
!942 = !DILocation(line: 5083, column: 15, scope: !943)
!943 = distinct !DILexicalBlock(scope: !909, file: !38, line: 5083, column: 7)
!944 = !DILocation(line: 5083, column: 24, scope: !943)
!945 = !DILocation(line: 5083, column: 29, scope: !943)
!946 = !DILocation(line: 5083, column: 21, scope: !943)
!947 = !DILocation(line: 5083, column: 7, scope: !909)
!948 = !DILocation(line: 5084, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !943, file: !38, line: 5083, column: 36)
!950 = !DILocation(line: 5084, column: 12, scope: !949)
!951 = !DILocation(line: 5084, column: 5, scope: !949)
!952 = !DILocation(line: 5085, column: 5, scope: !949)
!953 = !DILocation(line: 5087, column: 5, scope: !909)
!954 = !DILocation(line: 5087, column: 10, scope: !909)
!955 = !DILocation(line: 5087, column: 3, scope: !909)
!956 = !DILocation(line: 5088, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !909, file: !38, line: 5088, column: 7)
!958 = !DILocation(line: 5088, column: 23, scope: !957)
!959 = !DILocation(line: 5088, column: 28, scope: !957)
!960 = !DILocation(line: 5088, column: 21, scope: !957)
!961 = !DILocation(line: 5088, column: 7, scope: !909)
!962 = !DILocation(line: 5089, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !38, line: 5088, column: 33)
!964 = !DILocation(line: 5089, column: 18, scope: !963)
!965 = !DILocation(line: 5089, column: 25, scope: !963)
!966 = !DILocation(line: 5089, column: 23, scope: !963)
!967 = !DILocation(line: 5089, column: 5, scope: !963)
!968 = !DILocation(line: 5089, column: 32, scope: !963)
!969 = !DILocation(line: 5089, column: 37, scope: !963)
!970 = !DILocation(line: 5089, column: 44, scope: !963)
!971 = !DILocation(line: 5089, column: 42, scope: !963)
!972 = !DILocation(line: 5089, column: 50, scope: !963)
!973 = !DILocation(line: 5090, column: 14, scope: !963)
!974 = !DILocation(line: 5090, column: 19, scope: !963)
!975 = !DILocation(line: 5090, column: 25, scope: !963)
!976 = !DILocation(line: 5090, column: 23, scope: !963)
!977 = !DILocation(line: 5090, column: 32, scope: !963)
!978 = !DILocation(line: 5091, column: 3, scope: !963)
!979 = !DILocation(line: 5092, column: 3, scope: !909)
!980 = !DILocation(line: 5093, column: 1, scope: !909)
!981 = distinct !DISubprogram(name: "fiobj_ary_remove2", scope: !3, file: !3, line: 229, type: !982, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!982 = !DISubroutineType(types: !983)
!983 = !{!63, !49, !49}
!984 = !DILocalVariable(name: "ary", arg: 1, scope: !981, file: !3, line: 229, type: !49)
!985 = !DILocation(line: 229, column: 29, scope: !981)
!986 = !DILocalVariable(name: "data", arg: 2, scope: !981, file: !3, line: 229, type: !49)
!987 = !DILocation(line: 229, column: 40, scope: !981)
!988 = !DILocation(line: 230, column: 3, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 230, column: 3)
!990 = distinct !DILexicalBlock(scope: !981, file: !3, line: 230, column: 3)
!991 = !DILocation(line: 230, column: 3, scope: !990)
!992 = !DILocation(line: 231, column: 32, scope: !993)
!993 = distinct !DILexicalBlock(scope: !981, file: !3, line: 231, column: 7)
!994 = !DILocation(line: 231, column: 46, scope: !993)
!995 = !DILocation(line: 231, column: 51, scope: !993)
!996 = !DILocation(line: 231, column: 13, scope: !993)
!997 = !DILocation(line: 231, column: 10, scope: !993)
!998 = !DILocation(line: 231, column: 7, scope: !981)
!999 = !DILocation(line: 232, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !993, file: !3, line: 231, column: 65)
!1001 = !DILocation(line: 234, column: 14, scope: !981)
!1002 = !DILocation(line: 234, column: 3, scope: !981)
!1003 = !DILocation(line: 235, column: 3, scope: !981)
!1004 = !DILocation(line: 236, column: 1, scope: !981)
!1005 = distinct !DISubprogram(name: "fio_ary___remove2", scope: !38, file: !38, line: 5102, type: !1006, scopeLine: 5103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!63, !293, !49, !48}
!1008 = !DILocalVariable(name: "ary", arg: 1, scope: !1005, file: !38, line: 5102, type: !293)
!1009 = !DILocation(line: 5102, column: 53, scope: !1005)
!1010 = !DILocalVariable(name: "data", arg: 2, scope: !1005, file: !38, line: 5102, type: !49)
!1011 = !DILocation(line: 5102, column: 71, scope: !1005)
!1012 = !DILocalVariable(name: "old", arg: 3, scope: !1005, file: !38, line: 5103, type: !48)
!1013 = !DILocation(line: 5103, column: 53, scope: !1005)
!1014 = !DILocalVariable(name: "index", scope: !1005, file: !38, line: 5104, type: !56)
!1015 = !DILocation(line: 5104, column: 12, scope: !1005)
!1016 = !DILocation(line: 5104, column: 35, scope: !1005)
!1017 = !DILocation(line: 5104, column: 40, scope: !1005)
!1018 = !DILocation(line: 5104, column: 20, scope: !1005)
!1019 = !DILocation(line: 5105, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1005, file: !38, line: 5105, column: 7)
!1021 = !DILocation(line: 5105, column: 13, scope: !1020)
!1022 = !DILocation(line: 5105, column: 7, scope: !1005)
!1023 = !DILocation(line: 5106, column: 5, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !38, line: 5105, column: 20)
!1025 = !DILocation(line: 5108, column: 27, scope: !1005)
!1026 = !DILocation(line: 5108, column: 32, scope: !1005)
!1027 = !DILocation(line: 5108, column: 39, scope: !1005)
!1028 = !DILocation(line: 5108, column: 10, scope: !1005)
!1029 = !DILocation(line: 5108, column: 3, scope: !1005)
!1030 = !DILocation(line: 5109, column: 1, scope: !1005)
!1031 = distinct !DISubprogram(name: "fiobj_ary_compact", scope: !3, file: !3, line: 249, type: !608, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1032 = !DILocalVariable(name: "ary", arg: 1, scope: !1031, file: !3, line: 249, type: !49)
!1033 = !DILocation(line: 249, column: 30, scope: !1031)
!1034 = !DILocation(line: 250, column: 3, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 250, column: 3)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 250, column: 3)
!1037 = !DILocation(line: 250, column: 3, scope: !1036)
!1038 = !DILocation(line: 251, column: 22, scope: !1031)
!1039 = !DILocation(line: 251, column: 36, scope: !1031)
!1040 = !DILocation(line: 251, column: 3, scope: !1031)
!1041 = !DILocation(line: 252, column: 1, scope: !1031)
!1042 = distinct !DISubprogram(name: "fio_ary___compact", scope: !38, file: !38, line: 5207, type: !1043, scopeLine: 5207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !293}
!1045 = !DILocalVariable(name: "ary", arg: 1, scope: !1042, file: !38, line: 5207, type: !293)
!1046 = !DILocation(line: 5207, column: 54, scope: !1042)
!1047 = !DILocalVariable(name: "count", scope: !1042, file: !38, line: 5208, type: !843)
!1048 = !DILocation(line: 5208, column: 16, scope: !1042)
!1049 = !DILocation(line: 5208, column: 40, scope: !1042)
!1050 = !DILocation(line: 5208, column: 24, scope: !1042)
!1051 = !DILocation(line: 5209, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1042, file: !38, line: 5209, column: 7)
!1053 = !DILocation(line: 5209, column: 7, scope: !1042)
!1054 = !DILocation(line: 5210, column: 5, scope: !1052)
!1055 = !DILocalVariable(name: "pos", scope: !1042, file: !38, line: 5211, type: !48)
!1056 = !DILocation(line: 5211, column: 26, scope: !1042)
!1057 = !DILocation(line: 5211, column: 32, scope: !1042)
!1058 = !DILocation(line: 5211, column: 37, scope: !1042)
!1059 = !DILocation(line: 5211, column: 44, scope: !1042)
!1060 = !DILocation(line: 5211, column: 49, scope: !1042)
!1061 = !DILocation(line: 5211, column: 42, scope: !1042)
!1062 = !DILocalVariable(name: "reader", scope: !1042, file: !38, line: 5212, type: !48)
!1063 = !DILocation(line: 5212, column: 26, scope: !1042)
!1064 = !DILocation(line: 5212, column: 35, scope: !1042)
!1065 = !DILocation(line: 5212, column: 40, scope: !1042)
!1066 = !DILocation(line: 5212, column: 47, scope: !1042)
!1067 = !DILocation(line: 5212, column: 52, scope: !1042)
!1068 = !DILocation(line: 5212, column: 45, scope: !1042)
!1069 = !DILocalVariable(name: "stop", scope: !1042, file: !38, line: 5213, type: !48)
!1070 = !DILocation(line: 5213, column: 26, scope: !1042)
!1071 = !DILocation(line: 5213, column: 33, scope: !1042)
!1072 = !DILocation(line: 5213, column: 38, scope: !1042)
!1073 = !DILocation(line: 5213, column: 45, scope: !1042)
!1074 = !DILocation(line: 5213, column: 50, scope: !1042)
!1075 = !DILocation(line: 5213, column: 43, scope: !1042)
!1076 = !DILocation(line: 5214, column: 3, scope: !1042)
!1077 = !DILocation(line: 5214, column: 10, scope: !1042)
!1078 = !DILocation(line: 5214, column: 19, scope: !1042)
!1079 = !DILocation(line: 5214, column: 17, scope: !1042)
!1080 = !DILocation(line: 5215, column: 10, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !38, line: 5215, column: 9)
!1082 = distinct !DILexicalBlock(scope: !1042, file: !38, line: 5214, column: 25)
!1083 = !DILocation(line: 5215, column: 9, scope: !1082)
!1084 = !DILocation(line: 5216, column: 15, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !38, line: 5215, column: 55)
!1086 = !DILocation(line: 5216, column: 14, scope: !1085)
!1087 = !DILocation(line: 5216, column: 8, scope: !1085)
!1088 = !DILocation(line: 5216, column: 12, scope: !1085)
!1089 = !DILocation(line: 5217, column: 11, scope: !1085)
!1090 = !DILocation(line: 5218, column: 5, scope: !1085)
!1091 = !DILocation(line: 5219, column: 12, scope: !1082)
!1092 = distinct !{!1092, !1076, !1093}
!1093 = !DILocation(line: 5220, column: 3, scope: !1042)
!1094 = !DILocation(line: 5221, column: 23, scope: !1042)
!1095 = !DILocation(line: 5221, column: 29, scope: !1042)
!1096 = !DILocation(line: 5221, column: 34, scope: !1042)
!1097 = !DILocation(line: 5221, column: 27, scope: !1042)
!1098 = !DILocation(line: 5221, column: 3, scope: !1042)
!1099 = !DILocation(line: 5221, column: 8, scope: !1042)
!1100 = !DILocation(line: 5221, column: 12, scope: !1042)
!1101 = !DILocation(line: 5222, column: 1, scope: !1042)
!1102 = distinct !DISubprogram(name: "fiobj_null", scope: !6, file: !6, line: 87, type: !380, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1103 = !DILocation(line: 87, column: 37, scope: !1102)
!1104 = distinct !DISubprogram(name: "fiobj_true", scope: !6, file: !6, line: 88, type: !380, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1105 = !DILocation(line: 88, column: 37, scope: !1104)
!1106 = distinct !DISubprogram(name: "fiobj_false", scope: !6, file: !6, line: 89, type: !380, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1107 = !DILocation(line: 89, column: 38, scope: !1106)
!1108 = distinct !DISubprogram(name: "fio_ary___free", scope: !38, file: !38, line: 4889, type: !1043, scopeLine: 4889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1109 = !DILocalVariable(name: "ary", arg: 1, scope: !1108, file: !38, line: 4889, type: !293)
!1110 = !DILocation(line: 4889, column: 52, scope: !1108)
!1111 = !DILocation(line: 4890, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !38, line: 4890, column: 7)
!1113 = !DILocation(line: 4890, column: 7, scope: !1108)
!1114 = !DILocalVariable(name: "count", scope: !1115, file: !38, line: 4891, type: !843)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !38, line: 4890, column: 12)
!1116 = !DILocation(line: 4891, column: 18, scope: !1115)
!1117 = !DILocation(line: 4891, column: 26, scope: !1115)
!1118 = !DILocation(line: 4891, column: 31, scope: !1115)
!1119 = !DILocalVariable(name: "i", scope: !1120, file: !38, line: 4892, type: !42)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !38, line: 4892, column: 5)
!1121 = !DILocation(line: 4892, column: 17, scope: !1120)
!1122 = !DILocation(line: 4892, column: 21, scope: !1120)
!1123 = !DILocation(line: 4892, column: 26, scope: !1120)
!1124 = !DILocation(line: 4892, column: 10, scope: !1120)
!1125 = !DILocation(line: 4892, column: 33, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !38, line: 4892, column: 5)
!1127 = !DILocation(line: 4892, column: 37, scope: !1126)
!1128 = !DILocation(line: 4892, column: 35, scope: !1126)
!1129 = !DILocation(line: 4892, column: 5, scope: !1120)
!1130 = !DILocation(line: 4894, column: 5, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !38, line: 4892, column: 49)
!1132 = !DILocation(line: 4892, column: 44, scope: !1126)
!1133 = !DILocation(line: 4892, column: 5, scope: !1126)
!1134 = distinct !{!1134, !1129, !1135}
!1135 = !DILocation(line: 4894, column: 5, scope: !1120)
!1136 = !DILocation(line: 4895, column: 5, scope: !1115)
!1137 = !DILocation(line: 4896, column: 6, scope: !1115)
!1138 = !DILocation(line: 4896, column: 12, scope: !1115)
!1139 = !DILocation(line: 4896, column: 25, scope: !1115)
!1140 = !DILocation(line: 4897, column: 3, scope: !1115)
!1141 = !DILocation(line: 4898, column: 1, scope: !1108)
!1142 = distinct !DISubprogram(name: "fio_ary___each", scope: !38, file: !38, line: 5188, type: !1143, scopeLine: 5190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!42, !293, !42, !107, !58}
!1145 = !DILocalVariable(name: "ary", arg: 1, scope: !1142, file: !38, line: 5188, type: !293)
!1146 = !DILocation(line: 5188, column: 53, scope: !1142)
!1147 = !DILocalVariable(name: "start_at", arg: 2, scope: !1142, file: !38, line: 5188, type: !42)
!1148 = !DILocation(line: 5188, column: 65, scope: !1142)
!1149 = !DILocalVariable(name: "task", arg: 3, scope: !1142, file: !38, line: 5189, type: !107)
!1150 = !DILocation(line: 5189, column: 45, scope: !1142)
!1151 = !DILocalVariable(name: "arg", arg: 4, scope: !1142, file: !38, line: 5190, type: !58)
!1152 = !DILocation(line: 5190, column: 45, scope: !1142)
!1153 = !DILocalVariable(name: "count", scope: !1142, file: !38, line: 5191, type: !843)
!1154 = !DILocation(line: 5191, column: 16, scope: !1142)
!1155 = !DILocation(line: 5191, column: 40, scope: !1142)
!1156 = !DILocation(line: 5191, column: 24, scope: !1142)
!1157 = !DILocation(line: 5192, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1142, file: !38, line: 5192, column: 7)
!1159 = !DILocation(line: 5192, column: 14, scope: !1158)
!1160 = !DILocation(line: 5192, column: 17, scope: !1158)
!1161 = !DILocation(line: 5192, column: 29, scope: !1158)
!1162 = !DILocation(line: 5192, column: 26, scope: !1158)
!1163 = !DILocation(line: 5192, column: 7, scope: !1142)
!1164 = !DILocation(line: 5193, column: 12, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !38, line: 5192, column: 36)
!1166 = !DILocation(line: 5193, column: 5, scope: !1165)
!1167 = !DILocation(line: 5195, column: 3, scope: !1142)
!1168 = !DILocation(line: 5195, column: 10, scope: !1142)
!1169 = !DILocation(line: 5195, column: 21, scope: !1142)
!1170 = !DILocation(line: 5195, column: 19, scope: !1142)
!1171 = !DILocation(line: 5195, column: 27, scope: !1142)
!1172 = !DILocation(line: 5196, column: 10, scope: !1142)
!1173 = !DILocation(line: 5196, column: 15, scope: !1142)
!1174 = !DILocation(line: 5196, column: 20, scope: !1142)
!1175 = !DILocation(line: 5196, column: 25, scope: !1142)
!1176 = !DILocation(line: 5196, column: 30, scope: !1142)
!1177 = !DILocation(line: 5196, column: 47, scope: !1142)
!1178 = !DILocation(line: 5196, column: 36, scope: !1142)
!1179 = !DILocation(line: 5196, column: 53, scope: !1142)
!1180 = !DILocation(line: 5196, column: 58, scope: !1142)
!1181 = !DILocation(line: 0, scope: !1142)
!1182 = distinct !{!1182, !1167, !1183}
!1183 = !DILocation(line: 5197, column: 5, scope: !1142)
!1184 = !DILocation(line: 5198, column: 10, scope: !1142)
!1185 = !DILocation(line: 5198, column: 3, scope: !1142)
!1186 = !DILocation(line: 5199, column: 1, scope: !1142)
!1187 = distinct !DISubprogram(name: "fio_ary_____require_on_top", scope: !38, file: !38, line: 4912, type: !1188, scopeLine: 4912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !293, !42}
!1190 = !DILocalVariable(name: "ary", arg: 1, scope: !1187, file: !38, line: 4912, type: !293)
!1191 = !DILocation(line: 4912, column: 56, scope: !1187)
!1192 = !DILocalVariable(name: "len", arg: 2, scope: !1187, file: !38, line: 4912, type: !42)
!1193 = !DILocation(line: 4912, column: 68, scope: !1187)
!1194 = !DILocation(line: 4913, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1187, file: !38, line: 4913, column: 7)
!1196 = !DILocation(line: 4913, column: 12, scope: !1195)
!1197 = !DILocation(line: 4913, column: 18, scope: !1195)
!1198 = !DILocation(line: 4913, column: 16, scope: !1195)
!1199 = !DILocation(line: 4913, column: 24, scope: !1195)
!1200 = !DILocation(line: 4913, column: 29, scope: !1195)
!1201 = !DILocation(line: 4913, column: 22, scope: !1195)
!1202 = !DILocation(line: 4913, column: 7, scope: !1187)
!1203 = !DILocation(line: 4914, column: 5, scope: !1195)
!1204 = !DILocation(line: 4915, column: 9, scope: !1187)
!1205 = !DILocation(line: 4915, column: 7, scope: !1187)
!1206 = !DILocation(line: 4917, column: 15, scope: !1187)
!1207 = !DILocation(line: 4917, column: 3, scope: !1187)
!1208 = !DILocation(line: 4917, column: 8, scope: !1187)
!1209 = !DILocation(line: 4917, column: 13, scope: !1187)
!1210 = !DILocation(line: 4920, column: 3, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1187, file: !38, line: 4920, column: 3)
!1212 = !DILocation(line: 4920, column: 3, scope: !1187)
!1213 = !DILocation(line: 4920, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !38, line: 4920, column: 3)
!1215 = !DILocation(line: 4920, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !38, line: 4920, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !38, line: 4920, column: 3)
!1218 = !DILocation(line: 4920, column: 3, scope: !1217)
!1219 = !DILocation(line: 4920, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !38, line: 4920, column: 3)
!1221 = !DILocation(line: 4921, column: 15, scope: !1187)
!1222 = !DILocation(line: 4921, column: 3, scope: !1187)
!1223 = !DILocation(line: 4921, column: 8, scope: !1187)
!1224 = !DILocation(line: 4921, column: 13, scope: !1187)
!1225 = !DILocation(line: 4922, column: 1, scope: !1187)
!1226 = distinct !DISubprogram(name: "fio_ary_____rel2absolute", scope: !38, file: !38, line: 4901, type: !1227, scopeLine: 4902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!56, !293, !56}
!1229 = !DILocalVariable(name: "ary", arg: 1, scope: !1226, file: !38, line: 4901, type: !293)
!1230 = !DILocation(line: 4901, column: 65, scope: !1226)
!1231 = !DILocalVariable(name: "index", arg: 2, scope: !1226, file: !38, line: 4902, type: !56)
!1232 = !DILocation(line: 4902, column: 60, scope: !1226)
!1233 = !DILocation(line: 4903, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1226, file: !38, line: 4903, column: 7)
!1235 = !DILocation(line: 4903, column: 13, scope: !1234)
!1236 = !DILocation(line: 4903, column: 7, scope: !1226)
!1237 = !DILocation(line: 4904, column: 12, scope: !1234)
!1238 = !DILocation(line: 4904, column: 5, scope: !1234)
!1239 = !DILocation(line: 4905, column: 12, scope: !1226)
!1240 = !DILocation(line: 4905, column: 17, scope: !1226)
!1241 = !DILocation(line: 4905, column: 23, scope: !1226)
!1242 = !DILocation(line: 4905, column: 28, scope: !1226)
!1243 = !DILocation(line: 4905, column: 21, scope: !1226)
!1244 = !DILocation(line: 4905, column: 9, scope: !1226)
!1245 = !DILocation(line: 4906, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1226, file: !38, line: 4906, column: 7)
!1247 = !DILocation(line: 4906, column: 13, scope: !1246)
!1248 = !DILocation(line: 4906, column: 7, scope: !1226)
!1249 = !DILocation(line: 4907, column: 12, scope: !1246)
!1250 = !DILocation(line: 4907, column: 5, scope: !1246)
!1251 = !DILocation(line: 4908, column: 3, scope: !1226)
!1252 = !DILocation(line: 4909, column: 1, scope: !1226)
!1253 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !6, file: !6, line: 344, type: !1254, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !49}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1257 = !DILocalVariable(name: "o", arg: 1, scope: !1253, file: !6, line: 344, type: !49)
!1258 = !DILocation(line: 344, column: 65, scope: !1253)
!1259 = !DILocation(line: 345, column: 11, scope: !1253)
!1260 = !DILocation(line: 345, column: 3, scope: !1253)
!1261 = !DILocation(line: 347, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1253, file: !6, line: 345, column: 26)
!1263 = !DILocation(line: 349, column: 5, scope: !1262)
!1264 = !DILocation(line: 351, column: 5, scope: !1262)
!1265 = !DILocation(line: 353, column: 5, scope: !1262)
!1266 = !DILocation(line: 355, column: 5, scope: !1262)
!1267 = !DILocation(line: 357, column: 5, scope: !1262)
!1268 = !DILocation(line: 362, column: 5, scope: !1262)
!1269 = !DILocation(line: 364, column: 3, scope: !1253)
!1270 = !DILocation(line: 365, column: 1, scope: !1253)
!1271 = distinct !DISubprogram(name: "fiobj_type", scope: !6, file: !6, line: 250, type: !1272, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!29, !49}
!1274 = !DILocalVariable(name: "o", arg: 1, scope: !1271, file: !6, line: 250, type: !49)
!1275 = !DILocation(line: 250, column: 45, scope: !1271)
!1276 = !DILocation(line: 251, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !6, line: 251, column: 7)
!1278 = !DILocation(line: 251, column: 7, scope: !1271)
!1279 = !DILocation(line: 252, column: 5, scope: !1277)
!1280 = !DILocation(line: 253, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1271, file: !6, line: 253, column: 7)
!1282 = !DILocation(line: 253, column: 9, scope: !1281)
!1283 = !DILocation(line: 253, column: 7, scope: !1271)
!1284 = !DILocation(line: 254, column: 5, scope: !1281)
!1285 = !DILocation(line: 255, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1271, file: !6, line: 255, column: 7)
!1287 = !DILocation(line: 255, column: 10, scope: !1286)
!1288 = !DILocation(line: 255, column: 37, scope: !1286)
!1289 = !DILocation(line: 255, column: 7, scope: !1271)
!1290 = !DILocation(line: 256, column: 29, scope: !1286)
!1291 = !DILocation(line: 256, column: 12, scope: !1286)
!1292 = !DILocation(line: 256, column: 5, scope: !1286)
!1293 = !DILocation(line: 258, column: 8, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1271, file: !6, line: 257, column: 7)
!1295 = !DILocation(line: 258, column: 10, scope: !1294)
!1296 = !DILocation(line: 258, column: 37, scope: !1294)
!1297 = !DILocation(line: 257, column: 7, scope: !1271)
!1298 = !DILocation(line: 259, column: 5, scope: !1294)
!1299 = !DILocation(line: 260, column: 30, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1271, file: !6, line: 260, column: 7)
!1301 = !DILocation(line: 260, column: 32, scope: !1300)
!1302 = !DILocation(line: 260, column: 59, scope: !1300)
!1303 = !DILocation(line: 260, column: 7, scope: !1271)
!1304 = !DILocation(line: 261, column: 5, scope: !1300)
!1305 = !DILocation(line: 262, column: 30, scope: !1271)
!1306 = !DILocation(line: 262, column: 10, scope: !1271)
!1307 = !DILocation(line: 262, column: 3, scope: !1271)
!1308 = !DILocation(line: 263, column: 1, scope: !1271)
!1309 = distinct !DISubprogram(name: "fio_ary_____require_on_bottom", scope: !38, file: !38, line: 4925, type: !1188, scopeLine: 4925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1310 = !DILocalVariable(name: "ary", arg: 1, scope: !1309, file: !38, line: 4925, type: !293)
!1311 = !DILocation(line: 4925, column: 59, scope: !1309)
!1312 = !DILocalVariable(name: "len", arg: 2, scope: !1309, file: !38, line: 4925, type: !42)
!1313 = !DILocation(line: 4925, column: 71, scope: !1309)
!1314 = !DILocation(line: 4926, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !38, line: 4926, column: 7)
!1316 = !DILocation(line: 4926, column: 12, scope: !1315)
!1317 = !DILocation(line: 4926, column: 21, scope: !1315)
!1318 = !DILocation(line: 4926, column: 18, scope: !1315)
!1319 = !DILocation(line: 4926, column: 7, scope: !1309)
!1320 = !DILocation(line: 4927, column: 5, scope: !1315)
!1321 = !DILocalVariable(name: "tmp", scope: !1309, file: !38, line: 4928, type: !48)
!1322 = !DILocation(line: 4928, column: 17, scope: !1309)
!1323 = !DILocation(line: 4928, column: 23, scope: !1309)
!1324 = !DILocation(line: 4928, column: 28, scope: !1309)
!1325 = !DILocation(line: 4929, column: 9, scope: !1309)
!1326 = !DILocation(line: 4929, column: 7, scope: !1309)
!1327 = !DILocation(line: 4930, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1309, file: !38, line: 4930, column: 7)
!1329 = !DILocation(line: 4930, column: 12, scope: !1328)
!1330 = !DILocation(line: 4930, column: 20, scope: !1328)
!1331 = !DILocation(line: 4930, column: 17, scope: !1328)
!1332 = !DILocation(line: 4930, column: 7, scope: !1309)
!1333 = !DILocation(line: 4932, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !38, line: 4930, column: 25)
!1335 = !DILocation(line: 4932, column: 5, scope: !1334)
!1336 = !DILocation(line: 4932, column: 10, scope: !1334)
!1337 = !DILocation(line: 4932, column: 15, scope: !1334)
!1338 = !DILocation(line: 4933, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !38, line: 4933, column: 5)
!1340 = !DILocation(line: 4933, column: 5, scope: !1334)
!1341 = !DILocation(line: 4933, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !38, line: 4933, column: 5)
!1343 = !DILocation(line: 4933, column: 5, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !38, line: 4933, column: 5)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !38, line: 4933, column: 5)
!1346 = !DILocation(line: 4933, column: 5, scope: !1345)
!1347 = !DILocation(line: 4933, column: 5, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !38, line: 4933, column: 5)
!1349 = !DILocation(line: 4934, column: 17, scope: !1334)
!1350 = !DILocation(line: 4934, column: 5, scope: !1334)
!1351 = !DILocation(line: 4934, column: 10, scope: !1334)
!1352 = !DILocation(line: 4934, column: 15, scope: !1334)
!1353 = !DILocation(line: 4935, column: 3, scope: !1334)
!1354 = !DILocation(line: 4937, column: 9, scope: !1309)
!1355 = !DILocation(line: 4937, column: 14, scope: !1309)
!1356 = !DILocation(line: 4937, column: 20, scope: !1309)
!1357 = !DILocation(line: 4937, column: 25, scope: !1309)
!1358 = !DILocation(line: 4937, column: 18, scope: !1309)
!1359 = !DILocation(line: 4937, column: 7, scope: !1309)
!1360 = !DILocation(line: 4938, column: 14, scope: !1309)
!1361 = !DILocation(line: 4938, column: 19, scope: !1309)
!1362 = !DILocation(line: 4938, column: 3, scope: !1309)
!1363 = !DILocation(line: 4938, column: 8, scope: !1309)
!1364 = !DILocation(line: 4938, column: 12, scope: !1309)
!1365 = !DILocation(line: 4939, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1309, file: !38, line: 4939, column: 7)
!1367 = !DILocation(line: 4939, column: 7, scope: !1309)
!1368 = !DILocation(line: 4940, column: 13, scope: !1366)
!1369 = !DILocation(line: 4940, column: 18, scope: !1366)
!1370 = !DILocation(line: 4940, column: 26, scope: !1366)
!1371 = !DILocation(line: 4940, column: 31, scope: !1366)
!1372 = !DILocation(line: 4940, column: 38, scope: !1366)
!1373 = !DILocation(line: 4940, column: 36, scope: !1366)
!1374 = !DILocation(line: 4940, column: 23, scope: !1366)
!1375 = !DILocation(line: 4940, column: 5, scope: !1366)
!1376 = !DILocation(line: 4940, column: 44, scope: !1366)
!1377 = !DILocation(line: 4940, column: 50, scope: !1366)
!1378 = !DILocation(line: 4940, column: 55, scope: !1366)
!1379 = !DILocation(line: 4940, column: 48, scope: !1366)
!1380 = !DILocation(line: 4941, column: 13, scope: !1366)
!1381 = !DILocation(line: 4941, column: 17, scope: !1366)
!1382 = !DILocation(line: 4942, column: 16, scope: !1309)
!1383 = !DILocation(line: 4942, column: 21, scope: !1309)
!1384 = !DILocation(line: 4942, column: 27, scope: !1309)
!1385 = !DILocation(line: 4942, column: 25, scope: !1309)
!1386 = !DILocation(line: 4942, column: 3, scope: !1309)
!1387 = !DILocation(line: 4942, column: 8, scope: !1309)
!1388 = !DILocation(line: 4942, column: 14, scope: !1309)
!1389 = !DILocation(line: 4943, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1309, file: !38, line: 4943, column: 7)
!1391 = !DILocation(line: 4943, column: 14, scope: !1390)
!1392 = !DILocation(line: 4943, column: 19, scope: !1390)
!1393 = !DILocation(line: 4943, column: 11, scope: !1390)
!1394 = !DILocation(line: 4943, column: 7, scope: !1309)
!1395 = !DILocation(line: 4944, column: 14, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !38, line: 4943, column: 25)
!1397 = !DILocation(line: 4944, column: 5, scope: !1396)
!1398 = !DILocation(line: 4945, column: 3, scope: !1396)
!1399 = !DILocation(line: 4946, column: 1, scope: !1309)
