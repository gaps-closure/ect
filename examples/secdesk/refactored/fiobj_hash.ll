; ModuleID = 'fiobj_hash.c'
source_filename = "fiobj_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_hash_s = type { %struct.fiobj_object_header_s, %struct.fio_hash___s }
%struct.fiobj_object_header_s = type { i8, i32 }
%struct.fio_hash___s = type { i64, i64, i64, %struct.fio_hash____ordered_s_*, %struct.fio_hash____map_s_*, i8, i8, i8 }
%struct.fio_hash____ordered_s_ = type { i64, %struct.fio_hash___couplet_s }
%struct.fio_hash___couplet_s = type { i64, i64 }
%struct.fio_hash____map_s_ = type { i64, %struct.fio_hash____ordered_s_* }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"h && FIOBJ_TYPE_IS(h, FIOBJ_T_HASH)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fiobj_hash.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_rehash = private unnamed_addr constant [30 x i8] c"void fiobj_hash_rehash(FIOBJ)\00", align 1
@each_at_key = internal thread_local global i64 0, align 8, !dbg !0
@.str.4 = private unnamed_addr constant [36 x i8] c"o && FIOBJ_TYPE_IS(o, FIOBJ_T_HASH)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_count = private unnamed_addr constant [37 x i8] c"size_t fiobj_hash_count(const FIOBJ)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@FIOBJECT_VTABLE_HASH = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_hash_dealloc, i64 (i64)* @fiobj_hash_count, i64 (i64)* @fiobj_hash_is_true, i64 (i64, i64)* @fiobj_hash_is_eq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* @fiobj_hash_each1, void (%struct.fio_str_info_s*, i64)* @fiobject___noop_to_str, i64 (i64)* @fiobj_hash2num, double (i64)* @fiobject___noop_to_f }, align 8, !dbg !82
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !148
@.str.6 = private unnamed_addr constant [48 x i8] c"FATAL: memory allocation error fiobj_hash.c:162\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"FATAL: memory allocation error fiobj_hash.c:177\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"hash && FIOBJ_TYPE_IS(hash, FIOBJ_T_HASH)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_capa = private unnamed_addr constant [36 x i8] c"size_t fiobj_hash_capa(const FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_set = private unnamed_addr constant [40 x i8] c"int fiobj_hash_set(FIOBJ, FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_pop = private unnamed_addr constant [37 x i8] c"FIOBJ fiobj_hash_pop(FIOBJ, FIOBJ *)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_replace = private unnamed_addr constant [46 x i8] c"FIOBJ fiobj_hash_replace(FIOBJ, FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_remove = private unnamed_addr constant [38 x i8] c"FIOBJ fiobj_hash_remove(FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_remove2 = private unnamed_addr constant [42 x i8] c"FIOBJ fiobj_hash_remove2(FIOBJ, uint64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_get = private unnamed_addr constant [41 x i8] c"FIOBJ fiobj_hash_get(const FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_get2 = private unnamed_addr constant [45 x i8] c"FIOBJ fiobj_hash_get2(const FIOBJ, uint64_t)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_haskey = private unnamed_addr constant [42 x i8] c"int fiobj_hash_haskey(const FIOBJ, FIOBJ)\00", align 1
@__PRETTY_FUNCTION__.fiobj_hash_clear = private unnamed_addr constant [35 x i8] c"void fiobj_hash_clear(const FIOBJ)\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !150
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !152
@.str.9 = private unnamed_addr constant [274 x i8] c"FATAL: facil.io Set / Hash Map has too many collisions (%zu/%zu).\0A\09\09this is a fatal implementation error,please report this issue at facio.io's open source project\0A\09\09Note: hash maps and sets should never reach this point.\0A\09\09They should be guarded against collision attacks.\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"FATAL ERROR: couldn't allocate memory for Set data\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"WARNING: (fio hash map) too many full collisions - under attack?\00", align 1
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@__PRETTY_FUNCTION__.fiobj_hash_each1 = private unnamed_addr constant [71 x i8] c"size_t fiobj_hash_each1(FIOBJ, size_t, int (*)(FIOBJ, void *), void *)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.fiobj_obj2cstr.ret = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, align 8
@__const.fiobj_obj2cstr.ret.13 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const.fiobj_obj2cstr.ret.15 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0) }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@__const.fiobj_obj2cstr.ret.17 = private unnamed_addr constant %struct.fio_str_info_s { i64 0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !158 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !164, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !169, metadata !DIExpression()), !dbg !184
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !185
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !185
  call void @llvm.va_start(i8* %7), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %5, metadata !186, metadata !DIExpression()), !dbg !187
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !188
  %9 = load i8*, i8** %2, align 8, !dbg !189
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !190
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !191
  store i32 %11, i32* %5, align 4, !dbg !187
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !192
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !192
  call void @llvm.va_end(i8* %13), !dbg !192
  %14 = load i32, i32* %5, align 4, !dbg !193
  %15 = icmp sle i32 %14, 0, !dbg !195
  br i1 %15, label %19, label %16, !dbg !196

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !197
  %18 = icmp sge i32 %17, 2046, !dbg !198
  br i1 %18, label %19, label %29, !dbg !199

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !200
  %21 = icmp sge i32 %20, 2046, !dbg !203
  br i1 %21, label %22, label %25, !dbg !204

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !205
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !208
  store i32 2041, i32* %5, align 4, !dbg !209
  br label %28, !dbg !210

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !211
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !213
  br label %42, !dbg !214

28:                                               ; preds = %22
  br label %29, !dbg !215

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !216
  %31 = add nsw i32 %30, 1, !dbg !216
  store i32 %31, i32* %5, align 4, !dbg !216
  %32 = sext i32 %30 to i64, !dbg !217
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !217
  store i8 10, i8* %33, align 1, !dbg !218
  %34 = load i32, i32* %5, align 4, !dbg !219
  %35 = sext i32 %34 to i64, !dbg !220
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !220
  store i8 48, i8* %36, align 1, !dbg !221
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !222
  %38 = load i32, i32* %5, align 4, !dbg !223
  %39 = sext i32 %38 to i64, !dbg !223
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !224
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !225
  br label %42, !dbg !226

42:                                               ; preds = %29, %25
  ret void, !dbg !226
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
define dso_local void @fiobj_hash_rehash(i64 %0) #0 !dbg !227 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !230, metadata !DIExpression()), !dbg !231
  %3 = load i64, i64* %2, align 8, !dbg !232
  %4 = icmp ne i64 %3, 0, !dbg !232
  br i1 %4, label %5, label %10, !dbg !232

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !232
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42), !dbg !232
  %8 = icmp ne i64 %7, 0, !dbg !232
  br i1 %8, label %9, label %10, !dbg !235

9:                                                ; preds = %5
  br label %11, !dbg !235

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_rehash, i64 0, i64 0)) #9, !dbg !232
  unreachable, !dbg !232

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !236
  %13 = and i64 %12, -8, !dbg !236
  %14 = inttoptr i64 %13 to i8*, !dbg !236
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*, !dbg !236
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1, !dbg !237
  call void @fio_hash___rehash(%struct.fio_hash___s* %16), !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !240 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !243, metadata !DIExpression()), !dbg !244
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !245, metadata !DIExpression()), !dbg !246
  %6 = load i8, i8* %5, align 1, !dbg !247
  %7 = zext i8 %6 to i32, !dbg !247
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
  ], !dbg !248

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !249
  %10 = and i64 %9, 1, !dbg !251
  %11 = icmp ne i64 %10, 0, !dbg !251
  br i1 %11, label %19, label %12, !dbg !252

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !253
  %14 = inttoptr i64 %13 to i8*, !dbg !254
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !255
  %16 = load i8, i8* %15, align 1, !dbg !255
  %17 = zext i8 %16 to i32, !dbg !255
  %18 = icmp eq i32 %17, 1, !dbg !256
  br label %19, !dbg !252

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !252
  %22 = sext i32 %21 to i64, !dbg !257
  store i64 %22, i64* %3, align 8, !dbg !258
  br label %121, !dbg !258

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !259
  %25 = icmp ne i64 %24, 0, !dbg !259
  br i1 %25, label %26, label %30, !dbg !260

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !261
  %28 = call i64 @fiobj_null(), !dbg !262
  %29 = icmp eq i64 %27, %28, !dbg !263
  br label %30, !dbg !260

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !260
  %33 = sext i32 %32 to i64, !dbg !264
  store i64 %33, i64* %3, align 8, !dbg !265
  br label %121, !dbg !265

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !266
  %36 = call i64 @fiobj_true(), !dbg !267
  %37 = icmp eq i64 %35, %36, !dbg !268
  %38 = zext i1 %37 to i32, !dbg !268
  %39 = sext i32 %38 to i64, !dbg !266
  store i64 %39, i64* %3, align 8, !dbg !269
  br label %121, !dbg !269

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !270
  %42 = call i64 @fiobj_false(), !dbg !271
  %43 = icmp eq i64 %41, %42, !dbg !272
  %44 = zext i1 %43 to i32, !dbg !272
  %45 = sext i32 %44 to i64, !dbg !270
  store i64 %45, i64* %3, align 8, !dbg !273
  br label %121, !dbg !273

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !274
  %48 = and i64 %47, 1, !dbg !275
  %49 = icmp eq i64 %48, 0, !dbg !276
  br i1 %49, label %50, label %54, !dbg !277

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !278
  %52 = and i64 %51, 6, !dbg !279
  %53 = icmp eq i64 %52, 2, !dbg !280
  br i1 %53, label %55, label %54, !dbg !281

54:                                               ; preds = %50, %46
  br label %55, !dbg !281

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !281
  %58 = sext i32 %57 to i64, !dbg !282
  store i64 %58, i64* %3, align 8, !dbg !283
  br label %121, !dbg !283

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !284
  %61 = and i64 %60, 1, !dbg !287
  %62 = icmp eq i64 %61, 0, !dbg !288
  br i1 %62, label %63, label %67, !dbg !289

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !290
  %65 = and i64 %64, 6, !dbg !291
  %66 = icmp eq i64 %65, 4, !dbg !292
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !293
  %69 = zext i1 %68 to i32, !dbg !289
  %70 = sext i32 %69 to i64, !dbg !294
  store i64 %70, i64* %3, align 8, !dbg !295
  br label %121, !dbg !295

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !296
  %73 = icmp ne i64 %72, 0, !dbg !296
  br i1 %73, label %74, label %92, !dbg !296

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !296
  %76 = and i64 %75, 1, !dbg !296
  %77 = icmp eq i64 %76, 0, !dbg !296
  br i1 %77, label %78, label %92, !dbg !296

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !296
  %80 = and i64 %79, 6, !dbg !296
  %81 = icmp ne i64 %80, 6, !dbg !296
  br i1 %81, label %82, label %92, !dbg !297

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !298
  %84 = and i64 %83, -8, !dbg !298
  %85 = inttoptr i64 %84 to i8*, !dbg !298
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !299
  %87 = load i8, i8* %86, align 1, !dbg !299
  %88 = zext i8 %87 to i32, !dbg !299
  %89 = load i8, i8* %5, align 1, !dbg !300
  %90 = zext i8 %89 to i32, !dbg !300
  %91 = icmp eq i32 %88, %90, !dbg !301
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !302
  %94 = zext i1 %93 to i32, !dbg !297
  %95 = sext i32 %94 to i64, !dbg !296
  store i64 %95, i64* %3, align 8, !dbg !303
  br label %121, !dbg !303

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !304
  %98 = icmp ne i64 %97, 0, !dbg !304
  br i1 %98, label %99, label %117, !dbg !304

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !304
  %101 = and i64 %100, 1, !dbg !304
  %102 = icmp eq i64 %101, 0, !dbg !304
  br i1 %102, label %103, label %117, !dbg !304

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !304
  %105 = and i64 %104, 6, !dbg !304
  %106 = icmp ne i64 %105, 6, !dbg !304
  br i1 %106, label %107, label %117, !dbg !305

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !306
  %109 = and i64 %108, -8, !dbg !306
  %110 = inttoptr i64 %109 to i8*, !dbg !306
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !307
  %112 = load i8, i8* %111, align 1, !dbg !307
  %113 = zext i8 %112 to i32, !dbg !307
  %114 = load i8, i8* %5, align 1, !dbg !308
  %115 = zext i8 %114 to i32, !dbg !308
  %116 = icmp eq i32 %113, %115, !dbg !309
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !310
  %119 = zext i1 %118 to i32, !dbg !305
  %120 = sext i32 %119 to i64, !dbg !304
  store i64 %120, i64* %3, align 8, !dbg !311
  br label %121, !dbg !311

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !312
  ret i64 %122, !dbg !312
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___rehash(%struct.fio_hash___s* %0) #0 !dbg !313 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.fio_hash____ordered_s_*, align 8
  %5 = alloca %struct.fio_hash____ordered_s_*, align 8
  %6 = alloca %struct.fio_hash____map_s_*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !317, metadata !DIExpression()), !dbg !318
  %7 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !319
  call void @fio_hash____compact_ordered_array_(%struct.fio_hash___s* %7), !dbg !320
  %8 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !321
  %9 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %8, i32 0, i32 5, !dbg !322
  store i8 0, i8* %9, align 8, !dbg !323
  call void @llvm.dbg.declare(metadata i8* %3, metadata !324, metadata !DIExpression()), !dbg !325
  store i8 0, i8* %3, align 1, !dbg !325
  br label %10, !dbg !326

10:                                               ; preds = %71, %1
  call void @llvm.dbg.label(metadata !327), !dbg !328
  %11 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !329
  %12 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %11, i32 0, i32 6, !dbg !331
  %13 = load i8, i8* %12, align 1, !dbg !331
  %14 = zext i8 %13 to i32, !dbg !329
  %15 = icmp sge i32 %14, 16, !dbg !332
  br i1 %15, label %16, label %40, !dbg !333

16:                                               ; preds = %10
  %17 = load i8, i8* %3, align 1, !dbg !334
  %18 = add i8 %17, 1, !dbg !334
  store i8 %18, i8* %3, align 1, !dbg !334
  %19 = zext i8 %18 to i32, !dbg !334
  %20 = icmp sge i32 %19, 3, !dbg !335
  br i1 %20, label %21, label %40, !dbg !336

21:                                               ; preds = %16
  %22 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !337
  %23 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %22, i32 0, i32 5, !dbg !338
  %24 = load i8, i8* %23, align 8, !dbg !338
  %25 = zext i8 %24 to i32, !dbg !337
  %26 = icmp ne i32 %25, 0, !dbg !337
  br i1 %26, label %27, label %40, !dbg !339

27:                                               ; preds = %21
  br label %28, !dbg !340

28:                                               ; preds = %27
  %29 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !342
  %30 = icmp sle i32 1, %29, !dbg !342
  br i1 %30, label %31, label %38, !dbg !345

31:                                               ; preds = %28
  %32 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !346
  %33 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %32, i32 0, i32 2, !dbg !346
  %34 = load i64, i64* %33, align 8, !dbg !346
  %35 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !346
  %36 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %35, i32 0, i32 1, !dbg !346
  %37 = load i64, i64* %36, align 8, !dbg !346
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.9, i64 0, i64 0), i64 %34, i64 %37), !dbg !346
  br label %38, !dbg !346

38:                                               ; preds = %31, %28
  br label %39, !dbg !345

39:                                               ; preds = %38
  call void @exit(i32 -1) #9, !dbg !348
  unreachable, !dbg !348

40:                                               ; preds = %21, %16, %10
  %41 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !349
  call void @fio_hash____reallocate_set_mem_(%struct.fio_hash___s* %41), !dbg !350
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %4, metadata !351, metadata !DIExpression()), !dbg !356
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !357
  %43 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %42, i32 0, i32 3, !dbg !358
  %44 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %43, align 8, !dbg !358
  %45 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !359
  %46 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %45, i32 0, i32 2, !dbg !360
  %47 = load i64, i64* %46, align 8, !dbg !360
  %48 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %44, i64 %47, !dbg !361
  store %struct.fio_hash____ordered_s_* %48, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %5, metadata !362, metadata !DIExpression()), !dbg !364
  %49 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !365
  %50 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %49, i32 0, i32 3, !dbg !366
  %51 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %50, align 8, !dbg !366
  store %struct.fio_hash____ordered_s_* %51, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !364
  br label %52, !dbg !367

52:                                               ; preds = %85, %40
  %53 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !368
  %54 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !370
  %55 = icmp ult %struct.fio_hash____ordered_s_* %53, %54, !dbg !371
  br i1 %55, label %56, label %88, !dbg !372

56:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata %struct.fio_hash____map_s_** %6, metadata !373, metadata !DIExpression()), !dbg !375
  %57 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !376
  %58 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !377
  %59 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %58, i32 0, i32 0, !dbg !378
  %60 = load i64, i64* %59, align 8, !dbg !378
  %61 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !379
  %62 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %61, i32 0, i32 1, !dbg !380
  %63 = bitcast %struct.fio_hash___couplet_s* %62 to { i64, i64 }*, !dbg !381
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0, !dbg !381
  %65 = load i64, i64* %64, align 8, !dbg !381
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1, !dbg !381
  %67 = load i64, i64* %66, align 8, !dbg !381
  %68 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %57, i64 %60, i64 %65, i64 %67), !dbg !381
  store %struct.fio_hash____map_s_* %68, %struct.fio_hash____map_s_** %6, align 8, !dbg !375
  %69 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %6, align 8, !dbg !382
  %70 = icmp ne %struct.fio_hash____map_s_* %69, null, !dbg !382
  br i1 %70, label %76, label %71, !dbg !384

71:                                               ; preds = %56
  %72 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !385
  %73 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %72, i32 0, i32 6, !dbg !387
  %74 = load i8, i8* %73, align 1, !dbg !388
  %75 = add i8 %74, 1, !dbg !388
  store i8 %75, i8* %73, align 1, !dbg !388
  br label %10, !dbg !389

76:                                               ; preds = %56
  %77 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !390
  %78 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %6, align 8, !dbg !391
  %79 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %78, i32 0, i32 1, !dbg !392
  store %struct.fio_hash____ordered_s_* %77, %struct.fio_hash____ordered_s_** %79, align 8, !dbg !393
  %80 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !394
  %81 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %80, i32 0, i32 0, !dbg !395
  %82 = load i64, i64* %81, align 8, !dbg !395
  %83 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %6, align 8, !dbg !396
  %84 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %83, i32 0, i32 0, !dbg !397
  store i64 %82, i64* %84, align 8, !dbg !398
  br label %85, !dbg !399

85:                                               ; preds = %76
  %86 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !400
  %87 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %86, i32 1, !dbg !400
  store %struct.fio_hash____ordered_s_* %87, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !400
  br label %52, !dbg !401, !llvm.loop !402

88:                                               ; preds = %52
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_key_in_loop() #0 !dbg !405 {
  %1 = load i64, i64* @each_at_key, align 8, !dbg !408
  ret i64 %1, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_count(i64 %0) #0 !dbg !410 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !411, metadata !DIExpression()), !dbg !412
  %3 = load i64, i64* %2, align 8, !dbg !413
  %4 = icmp ne i64 %3, 0, !dbg !413
  br i1 %4, label %5, label %10, !dbg !413

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !413
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42), !dbg !413
  %8 = icmp ne i64 %7, 0, !dbg !413
  br i1 %8, label %9, label %10, !dbg !416

9:                                                ; preds = %5
  br label %11, !dbg !416

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_count, i64 0, i64 0)) #9, !dbg !413
  unreachable, !dbg !413

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !417
  %13 = and i64 %12, -8, !dbg !417
  %14 = inttoptr i64 %13 to i8*, !dbg !417
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*, !dbg !417
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1, !dbg !418
  %17 = call i64 @fio_hash___count(%struct.fio_hash___s* %16), !dbg !419
  ret i64 %17, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___count(%struct.fio_hash___s* %0) #0 !dbg !421 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !426, metadata !DIExpression()), !dbg !427
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !428
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 0, !dbg !429
  %5 = load i64, i64* %4, align 8, !dbg !429
  ret i64 %5, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash2num(i64 %0) #0 !dbg !431 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !432, metadata !DIExpression()), !dbg !433
  %3 = load i64, i64* %2, align 8, !dbg !434
  %4 = call i64 @fiobj_hash_count(i64 %3), !dbg !435
  ret i64 %4, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_hash_dealloc(i64 %0, void (i64, i8*)* %1, i8* %2) #0 !dbg !437 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fio_hash____ordered_s_*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !438, metadata !DIExpression()), !dbg !439
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %5, metadata !440, metadata !DIExpression()), !dbg !441
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %7, metadata !444, metadata !DIExpression()), !dbg !446
  %8 = load i64, i64* %4, align 8, !dbg !446
  %9 = and i64 %8, -8, !dbg !446
  %10 = inttoptr i64 %9 to i8*, !dbg !446
  %11 = bitcast i8* %10 to %struct.fiobj_hash_s*, !dbg !446
  %12 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %11, i32 0, i32 1, !dbg !446
  %13 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %12, i32 0, i32 3, !dbg !446
  %14 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %13, align 8, !dbg !446
  store %struct.fio_hash____ordered_s_* %14, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !446
  br label %15, !dbg !446

15:                                               ; preds = %62, %3
  %16 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !447
  %17 = icmp ne %struct.fio_hash____ordered_s_* %16, null, !dbg !447
  br i1 %17, label %18, label %36, !dbg !447

18:                                               ; preds = %15
  %19 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !447
  %20 = load i64, i64* %4, align 8, !dbg !447
  %21 = and i64 %20, -8, !dbg !447
  %22 = inttoptr i64 %21 to i8*, !dbg !447
  %23 = bitcast i8* %22 to %struct.fiobj_hash_s*, !dbg !447
  %24 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %23, i32 0, i32 1, !dbg !447
  %25 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %24, i32 0, i32 3, !dbg !447
  %26 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %25, align 8, !dbg !447
  %27 = load i64, i64* %4, align 8, !dbg !447
  %28 = and i64 %27, -8, !dbg !447
  %29 = inttoptr i64 %28 to i8*, !dbg !447
  %30 = bitcast i8* %29 to %struct.fiobj_hash_s*, !dbg !447
  %31 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %30, i32 0, i32 1, !dbg !447
  %32 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %31, i32 0, i32 2, !dbg !447
  %33 = load i64, i64* %32, align 8, !dbg !447
  %34 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %26, i64 %33, !dbg !447
  %35 = icmp ult %struct.fio_hash____ordered_s_* %19, %34, !dbg !447
  br label %36

36:                                               ; preds = %18, %15
  %37 = phi i1 [ false, %15 ], [ %35, %18 ], !dbg !449
  br i1 %37, label %38, label %65, !dbg !446

38:                                               ; preds = %36
  %39 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !450
  %40 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %39, i32 0, i32 1, !dbg !453
  %41 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %40, i32 0, i32 0, !dbg !454
  %42 = load i64, i64* %41, align 8, !dbg !454
  %43 = icmp ne i64 %42, 0, !dbg !450
  br i1 %43, label %44, label %51, !dbg !455

44:                                               ; preds = %38
  %45 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8, !dbg !456
  %46 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !457
  %47 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %46, i32 0, i32 1, !dbg !458
  %48 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %47, i32 0, i32 1, !dbg !459
  %49 = load i64, i64* %48, align 8, !dbg !459
  %50 = load i8*, i8** %6, align 8, !dbg !460
  call void %45(i64 %49, i8* %50), !dbg !456
  br label %51, !dbg !456

51:                                               ; preds = %44, %38
  %52 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !461
  %53 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %52, i32 0, i32 1, !dbg !462
  %54 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %53, i32 0, i32 0, !dbg !463
  %55 = load i64, i64* %54, align 8, !dbg !463
  call void @fiobj_free(i64 %55), !dbg !464
  %56 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !465
  %57 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %56, i32 0, i32 1, !dbg !466
  %58 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %57, i32 0, i32 0, !dbg !467
  store i64 0, i64* %58, align 8, !dbg !468
  %59 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !469
  %60 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %59, i32 0, i32 1, !dbg !470
  %61 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %60, i32 0, i32 1, !dbg !471
  store i64 0, i64* %61, align 8, !dbg !472
  br label %62, !dbg !473

62:                                               ; preds = %51
  %63 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !447
  %64 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %63, i32 1, !dbg !447
  store %struct.fio_hash____ordered_s_* %64, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !447
  br label %15, !dbg !447, !llvm.loop !474

65:                                               ; preds = %36
  %66 = load i64, i64* %4, align 8, !dbg !476
  %67 = and i64 %66, -8, !dbg !476
  %68 = inttoptr i64 %67 to i8*, !dbg !476
  %69 = bitcast i8* %68 to %struct.fiobj_hash_s*, !dbg !476
  %70 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %69, i32 0, i32 1, !dbg !477
  %71 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %70, i32 0, i32 0, !dbg !478
  store i64 0, i64* %71, align 8, !dbg !479
  %72 = load i64, i64* %4, align 8, !dbg !480
  %73 = and i64 %72, -8, !dbg !480
  %74 = inttoptr i64 %73 to i8*, !dbg !480
  %75 = bitcast i8* %74 to %struct.fiobj_hash_s*, !dbg !480
  %76 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %75, i32 0, i32 1, !dbg !481
  call void @fio_hash___free(%struct.fio_hash___s* %76), !dbg !482
  %77 = load i64, i64* %4, align 8, !dbg !483
  %78 = and i64 %77, -8, !dbg !483
  %79 = inttoptr i64 %78 to i8*, !dbg !483
  call void @fio_free(i8* %79), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_is_true(i64 %0) #0 !dbg !486 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !487, metadata !DIExpression()), !dbg !488
  %3 = load i64, i64* %2, align 8, !dbg !489
  %4 = call i64 @fiobj_hash_count(i64 %3), !dbg !490
  %5 = icmp ne i64 %4, 0, !dbg !491
  %6 = zext i1 %5 to i32, !dbg !491
  %7 = sext i32 %6 to i64, !dbg !490
  ret i64 %7, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_is_eq(i64 %0, i64 %1) #0 !dbg !493 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !496, metadata !DIExpression()), !dbg !497
  %6 = load i64, i64* %4, align 8, !dbg !498
  %7 = and i64 %6, -8, !dbg !498
  %8 = inttoptr i64 %7 to i8*, !dbg !498
  %9 = bitcast i8* %8 to %struct.fiobj_hash_s*, !dbg !498
  %10 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %9, i32 0, i32 1, !dbg !500
  %11 = call i64 @fio_hash___count(%struct.fio_hash___s* %10), !dbg !501
  %12 = load i64, i64* %5, align 8, !dbg !502
  %13 = and i64 %12, -8, !dbg !502
  %14 = inttoptr i64 %13 to i8*, !dbg !502
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*, !dbg !502
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1, !dbg !503
  %17 = call i64 @fio_hash___count(%struct.fio_hash___s* %16), !dbg !504
  %18 = icmp ne i64 %11, %17, !dbg !505
  br i1 %18, label %19, label %20, !dbg !506

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !507
  br label %21, !dbg !507

20:                                               ; preds = %2
  store i64 1, i64* %3, align 8, !dbg !508
  br label %21, !dbg !508

21:                                               ; preds = %20, %19
  %22 = load i64, i64* %3, align 8, !dbg !509
  ret i64 %22, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_hash_each1(i64 %0, i64 %1, i32 (i64, i8*)* %2, i8* %3) #0 !dbg !510 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i64, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_hash___s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !513, metadata !DIExpression()), !dbg !514
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %7, metadata !515, metadata !DIExpression()), !dbg !516
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !517, metadata !DIExpression()), !dbg !518
  %13 = load i64, i64* %5, align 8, !dbg !519
  %14 = icmp ne i64 %13, 0, !dbg !519
  br i1 %14, label %15, label %20, !dbg !519

15:                                               ; preds = %4
  %16 = load i64, i64* %5, align 8, !dbg !519
  %17 = call i64 @fiobj_type_is(i64 %16, i8 zeroext 42), !dbg !519
  %18 = icmp ne i64 %17, 0, !dbg !519
  br i1 %18, label %19, label %20, !dbg !522

19:                                               ; preds = %15
  br label %21, !dbg !522

20:                                               ; preds = %15, %4
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_each1, i64 0, i64 0)) #9, !dbg !519
  unreachable, !dbg !519

21:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i64* %9, metadata !523, metadata !DIExpression()), !dbg !524
  %22 = load i64, i64* @each_at_key, align 8, !dbg !525
  store i64 %22, i64* %9, align 8, !dbg !524
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %10, metadata !526, metadata !DIExpression()), !dbg !527
  %23 = load i64, i64* %5, align 8, !dbg !528
  %24 = and i64 %23, -8, !dbg !528
  %25 = inttoptr i64 %24 to i8*, !dbg !528
  %26 = bitcast i8* %25 to %struct.fiobj_hash_s*, !dbg !528
  %27 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %26, i32 0, i32 1, !dbg !529
  store %struct.fio_hash___s* %27, %struct.fio_hash___s** %10, align 8, !dbg !527
  call void @llvm.dbg.declare(metadata i64* %11, metadata !530, metadata !DIExpression()), !dbg !531
  store i64 0, i64* %11, align 8, !dbg !531
  %28 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !532
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 0, !dbg !534
  %30 = load i64, i64* %29, align 8, !dbg !534
  %31 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !535
  %32 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %31, i32 0, i32 2, !dbg !536
  %33 = load i64, i64* %32, align 8, !dbg !536
  %34 = icmp eq i64 %30, %33, !dbg !537
  br i1 %34, label %35, label %72, !dbg !538

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8, !dbg !539
  store i64 %36, i64* %11, align 8, !dbg !542
  br label %37, !dbg !543

37:                                               ; preds = %68, %35
  %38 = load i64, i64* %11, align 8, !dbg !544
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !546
  %40 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %39, i32 0, i32 0, !dbg !547
  %41 = load i64, i64* %40, align 8, !dbg !547
  %42 = icmp ult i64 %38, %41, !dbg !548
  br i1 %42, label %43, label %71, !dbg !549

43:                                               ; preds = %37
  %44 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !550
  %45 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %44, i32 0, i32 3, !dbg !552
  %46 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %45, align 8, !dbg !552
  %47 = load i64, i64* %11, align 8, !dbg !553
  %48 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %46, i64 %47, !dbg !550
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 0, i32 1, !dbg !554
  %50 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %49, i32 0, i32 0, !dbg !555
  %51 = load i64, i64* %50, align 8, !dbg !555
  store i64 %51, i64* @each_at_key, align 8, !dbg !556
  %52 = load i32 (i64, i8*)*, i32 (i64, i8*)** %7, align 8, !dbg !557
  %53 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !559
  %54 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %53, i32 0, i32 3, !dbg !560
  %55 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %54, align 8, !dbg !560
  %56 = load i64, i64* %11, align 8, !dbg !561
  %57 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %55, i64 %56, !dbg !559
  %58 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %57, i32 0, i32 1, !dbg !562
  %59 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %58, i32 0, i32 1, !dbg !563
  %60 = load i64, i64* %59, align 8, !dbg !563
  %61 = load i8*, i8** %8, align 8, !dbg !564
  %62 = call i32 %52(i64 %60, i8* %61), !dbg !557
  %63 = icmp eq i32 %62, -1, !dbg !565
  br i1 %63, label %64, label %67, !dbg !566

64:                                               ; preds = %43
  %65 = load i64, i64* %11, align 8, !dbg !567
  %66 = add i64 %65, 1, !dbg !567
  store i64 %66, i64* %11, align 8, !dbg !567
  br label %153, !dbg !569

67:                                               ; preds = %43
  br label %68, !dbg !570

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8, !dbg !571
  %70 = add i64 %69, 1, !dbg !571
  store i64 %70, i64* %11, align 8, !dbg !571
  br label %37, !dbg !572, !llvm.loop !573

71:                                               ; preds = %37
  br label %152, !dbg !575

72:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata i64* %12, metadata !576, metadata !DIExpression()), !dbg !578
  store i64 0, i64* %12, align 8, !dbg !578
  br label %73, !dbg !579

73:                                               ; preds = %102, %72
  %74 = load i64, i64* %12, align 8, !dbg !580
  %75 = load i64, i64* %6, align 8, !dbg !583
  %76 = icmp ult i64 %74, %75, !dbg !584
  br i1 %76, label %77, label %83, !dbg !585

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8, !dbg !586
  %79 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !587
  %80 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %79, i32 0, i32 2, !dbg !588
  %81 = load i64, i64* %80, align 8, !dbg !588
  %82 = icmp ult i64 %78, %81, !dbg !589
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ], !dbg !590
  br i1 %84, label %85, label %105, !dbg !591

85:                                               ; preds = %83
  %86 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !592
  %87 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %86, i32 0, i32 3, !dbg !595
  %88 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %87, align 8, !dbg !595
  %89 = load i64, i64* %12, align 8, !dbg !596
  %90 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %88, i64 %89, !dbg !592
  %91 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %90, i32 0, i32 1, !dbg !597
  %92 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %91, i32 0, i32 0, !dbg !598
  %93 = load i64, i64* %92, align 8, !dbg !598
  %94 = icmp eq i64 %93, 0, !dbg !599
  br i1 %94, label %95, label %98, !dbg !600

95:                                               ; preds = %85
  %96 = load i64, i64* %6, align 8, !dbg !601
  %97 = add i64 %96, 1, !dbg !601
  store i64 %97, i64* %6, align 8, !dbg !601
  br label %101, !dbg !601

98:                                               ; preds = %85
  %99 = load i64, i64* %11, align 8, !dbg !602
  %100 = add i64 %99, 1, !dbg !602
  store i64 %100, i64* %11, align 8, !dbg !602
  br label %101

101:                                              ; preds = %98, %95
  br label %102, !dbg !603

102:                                              ; preds = %101
  %103 = load i64, i64* %12, align 8, !dbg !604
  %104 = add i64 %103, 1, !dbg !604
  store i64 %104, i64* %12, align 8, !dbg !604
  br label %73, !dbg !605, !llvm.loop !606

105:                                              ; preds = %83
  br label %106, !dbg !608

106:                                              ; preds = %148, %105
  %107 = load i64, i64* %12, align 8, !dbg !609
  %108 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !612
  %109 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %108, i32 0, i32 2, !dbg !613
  %110 = load i64, i64* %109, align 8, !dbg !613
  %111 = icmp ult i64 %107, %110, !dbg !614
  br i1 %111, label %112, label %151, !dbg !615

112:                                              ; preds = %106
  %113 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !616
  %114 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %113, i32 0, i32 3, !dbg !619
  %115 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %114, align 8, !dbg !619
  %116 = load i64, i64* %12, align 8, !dbg !620
  %117 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %115, i64 %116, !dbg !616
  %118 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %117, i32 0, i32 1, !dbg !621
  %119 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %118, i32 0, i32 0, !dbg !622
  %120 = load i64, i64* %119, align 8, !dbg !622
  %121 = icmp eq i64 %120, 0, !dbg !623
  br i1 %121, label %122, label %123, !dbg !624

122:                                              ; preds = %112
  br label %148, !dbg !625

123:                                              ; preds = %112
  %124 = load i64, i64* %11, align 8, !dbg !626
  %125 = add i64 %124, 1, !dbg !626
  store i64 %125, i64* %11, align 8, !dbg !626
  %126 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !627
  %127 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %126, i32 0, i32 3, !dbg !628
  %128 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %127, align 8, !dbg !628
  %129 = load i64, i64* %12, align 8, !dbg !629
  %130 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %128, i64 %129, !dbg !627
  %131 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %130, i32 0, i32 1, !dbg !630
  %132 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %131, i32 0, i32 0, !dbg !631
  %133 = load i64, i64* %132, align 8, !dbg !631
  store i64 %133, i64* @each_at_key, align 8, !dbg !632
  %134 = load i32 (i64, i8*)*, i32 (i64, i8*)** %7, align 8, !dbg !633
  %135 = load %struct.fio_hash___s*, %struct.fio_hash___s** %10, align 8, !dbg !635
  %136 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %135, i32 0, i32 3, !dbg !636
  %137 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %136, align 8, !dbg !636
  %138 = load i64, i64* %12, align 8, !dbg !637
  %139 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %137, i64 %138, !dbg !635
  %140 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %139, i32 0, i32 1, !dbg !638
  %141 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %140, i32 0, i32 1, !dbg !639
  %142 = load i64, i64* %141, align 8, !dbg !639
  %143 = load i8*, i8** %8, align 8, !dbg !640
  %144 = call i32 %134(i64 %142, i8* %143), !dbg !633
  %145 = icmp eq i32 %144, -1, !dbg !641
  br i1 %145, label %146, label %147, !dbg !642

146:                                              ; preds = %123
  br label %151, !dbg !643

147:                                              ; preds = %123
  br label %148, !dbg !644

148:                                              ; preds = %147, %122
  %149 = load i64, i64* %12, align 8, !dbg !645
  %150 = add i64 %149, 1, !dbg !645
  store i64 %150, i64* %12, align 8, !dbg !645
  br label %106, !dbg !646, !llvm.loop !647

151:                                              ; preds = %146, %106
  br label %152

152:                                              ; preds = %151, %71
  br label %153, !dbg !536

153:                                              ; preds = %152, %64
  call void @llvm.dbg.label(metadata !649), !dbg !650
  %154 = load i64, i64* %9, align 8, !dbg !651
  store i64 %154, i64* @each_at_key, align 8, !dbg !652
  %155 = load i64, i64* %11, align 8, !dbg !653
  ret i64 %155, !dbg !654
}

declare dso_local void @fiobject___noop_to_str(%struct.fio_str_info_s* sret, i64) #5

declare dso_local double @fiobject___noop_to_f(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_new() #0 !dbg !655 {
  %1 = alloca %struct.fiobj_hash_s*, align 8
  %2 = alloca %struct.fiobj_hash_s, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_hash_s** %1, metadata !656, metadata !DIExpression()), !dbg !657
  %3 = call noalias i8* @fio_malloc(i64 56), !dbg !658
  %4 = ptrtoint i8* %3 to i64, !dbg !658
  %5 = and i64 %4, 15, !dbg !658
  %6 = icmp eq i64 %5, 0, !dbg !658
  call void @llvm.assume(i1 %6), !dbg !658
  %7 = bitcast i8* %3 to %struct.fiobj_hash_s*, !dbg !658
  store %struct.fiobj_hash_s* %7, %struct.fiobj_hash_s** %1, align 8, !dbg !657
  %8 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %1, align 8, !dbg !659
  %9 = icmp ne %struct.fiobj_hash_s* %8, null, !dbg !659
  br i1 %9, label %20, label %10, !dbg !662

10:                                               ; preds = %0
  br label %11, !dbg !663

11:                                               ; preds = %10
  %12 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !665
  %13 = icmp sle i32 1, %12, !dbg !665
  br i1 %13, label %14, label %15, !dbg !668

14:                                               ; preds = %11
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)), !dbg !669
  br label %15, !dbg !669

15:                                               ; preds = %14, %11
  br label %16, !dbg !668

16:                                               ; preds = %15
  %17 = call i32 @kill(i32 0, i32 2) #2, !dbg !663
  %18 = call i32* @__errno_location() #10, !dbg !663
  %19 = load i32, i32* %18, align 4, !dbg !663
  call void @exit(i32 %19) #9, !dbg !663
  unreachable, !dbg !663

20:                                               ; preds = %0
  %21 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %1, align 8, !dbg !671
  %22 = bitcast %struct.fiobj_hash_s* %2 to i8*, !dbg !672
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 56, i1 false), !dbg !672
  %23 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %2, i32 0, i32 0, !dbg !673
  %24 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %23, i32 0, i32 0, !dbg !674
  store i8 42, i8* %24, align 8, !dbg !674
  %25 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %23, i32 0, i32 1, !dbg !674
  store i32 1, i32* %25, align 4, !dbg !674
  %26 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %2, i32 0, i32 1, !dbg !673
  %27 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %26, i32 0, i32 1, !dbg !675
  store i64 0, i64* %27, align 8, !dbg !675
  %28 = bitcast %struct.fiobj_hash_s* %21 to i8*, !dbg !672
  %29 = bitcast %struct.fiobj_hash_s* %2 to i8*, !dbg !672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 56, i1 false), !dbg !672
  %30 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %1, align 8, !dbg !676
  %31 = ptrtoint %struct.fiobj_hash_s* %30 to i64, !dbg !677
  %32 = or i64 %31, 4, !dbg !678
  ret i64 %32, !dbg !679
}

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_new2(i64 %0) #0 !dbg !680 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_hash_s*, align 8
  %4 = alloca %struct.fiobj_hash_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata %struct.fiobj_hash_s** %3, metadata !685, metadata !DIExpression()), !dbg !686
  %5 = call noalias i8* @fio_malloc(i64 56), !dbg !687
  %6 = ptrtoint i8* %5 to i64, !dbg !687
  %7 = and i64 %6, 15, !dbg !687
  %8 = icmp eq i64 %7, 0, !dbg !687
  call void @llvm.assume(i1 %8), !dbg !687
  %9 = bitcast i8* %5 to %struct.fiobj_hash_s*, !dbg !687
  store %struct.fiobj_hash_s* %9, %struct.fiobj_hash_s** %3, align 8, !dbg !686
  %10 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8, !dbg !688
  %11 = icmp ne %struct.fiobj_hash_s* %10, null, !dbg !688
  br i1 %11, label %22, label %12, !dbg !691

12:                                               ; preds = %1
  br label %13, !dbg !692

13:                                               ; preds = %12
  %14 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !694
  %15 = icmp sle i32 1, %14, !dbg !694
  br i1 %15, label %16, label %17, !dbg !697

16:                                               ; preds = %13
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0)), !dbg !698
  br label %17, !dbg !698

17:                                               ; preds = %16, %13
  br label %18, !dbg !697

18:                                               ; preds = %17
  %19 = call i32 @kill(i32 0, i32 2) #2, !dbg !692
  %20 = call i32* @__errno_location() #10, !dbg !692
  %21 = load i32, i32* %20, align 4, !dbg !692
  call void @exit(i32 %21) #9, !dbg !692
  unreachable, !dbg !692

22:                                               ; preds = %1
  %23 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8, !dbg !700
  %24 = bitcast %struct.fiobj_hash_s* %4 to i8*, !dbg !701
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false), !dbg !701
  %25 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %4, i32 0, i32 0, !dbg !702
  %26 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %25, i32 0, i32 0, !dbg !703
  store i8 42, i8* %26, align 8, !dbg !703
  %27 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %25, i32 0, i32 1, !dbg !703
  store i32 1, i32* %27, align 4, !dbg !703
  %28 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %4, i32 0, i32 1, !dbg !702
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 1, !dbg !704
  store i64 0, i64* %29, align 8, !dbg !704
  %30 = bitcast %struct.fiobj_hash_s* %23 to i8*, !dbg !701
  %31 = bitcast %struct.fiobj_hash_s* %4 to i8*, !dbg !701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 56, i1 false), !dbg !701
  %32 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8, !dbg !705
  %33 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %32, i32 0, i32 1, !dbg !706
  %34 = load i64, i64* %2, align 8, !dbg !707
  %35 = call i64 @fio_hash___capa_require(%struct.fio_hash___s* %33, i64 %34), !dbg !708
  %36 = load %struct.fiobj_hash_s*, %struct.fiobj_hash_s** %3, align 8, !dbg !709
  %37 = ptrtoint %struct.fiobj_hash_s* %36 to i64, !dbg !710
  %38 = or i64 %37, 4, !dbg !711
  ret i64 %38, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___capa_require(%struct.fio_hash___s* %0, i64 %1) #0 !dbg !713 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_hash___s*, align 8
  %5 = alloca i64, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %4, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !718, metadata !DIExpression()), !dbg !719
  %6 = load i64, i64* %5, align 8, !dbg !720
  %7 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !722
  %8 = call i64 @fio_hash___capa(%struct.fio_hash___s* %7), !dbg !723
  %9 = icmp ule i64 %6, %8, !dbg !724
  br i1 %9, label %10, label %13, !dbg !725

10:                                               ; preds = %2
  %11 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !726
  %12 = call i64 @fio_hash___capa(%struct.fio_hash___s* %11), !dbg !727
  store i64 %12, i64* %3, align 8, !dbg !728
  br label %34, !dbg !728

13:                                               ; preds = %2
  %14 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !729
  %15 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %14, i32 0, i32 6, !dbg !730
  store i8 2, i8* %15, align 1, !dbg !731
  br label %16, !dbg !732

16:                                               ; preds = %25, %13
  %17 = load i64, i64* %5, align 8, !dbg !733
  %18 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !734
  %19 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %18, i32 0, i32 6, !dbg !735
  %20 = load i8, i8* %19, align 1, !dbg !735
  %21 = zext i8 %20 to i32, !dbg !734
  %22 = zext i32 %21 to i64, !dbg !736
  %23 = shl i64 1, %22, !dbg !736
  %24 = icmp ugt i64 %17, %23, !dbg !737
  br i1 %24, label %25, label %30, !dbg !732

25:                                               ; preds = %16
  %26 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !738
  %27 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %26, i32 0, i32 6, !dbg !740
  %28 = load i8, i8* %27, align 1, !dbg !741
  %29 = add i8 %28, 1, !dbg !741
  store i8 %29, i8* %27, align 1, !dbg !741
  br label %16, !dbg !732, !llvm.loop !742

30:                                               ; preds = %16
  %31 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !744
  call void @fio_hash___rehash(%struct.fio_hash___s* %31), !dbg !745
  %32 = load %struct.fio_hash___s*, %struct.fio_hash___s** %4, align 8, !dbg !746
  %33 = call i64 @fio_hash___capa(%struct.fio_hash___s* %32), !dbg !747
  store i64 %33, i64* %3, align 8, !dbg !748
  br label %34, !dbg !748

34:                                               ; preds = %30, %10
  %35 = load i64, i64* %3, align 8, !dbg !749
  ret i64 %35, !dbg !749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_capa(i64 %0) #0 !dbg !750 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !751, metadata !DIExpression()), !dbg !752
  %3 = load i64, i64* %2, align 8, !dbg !753
  %4 = icmp ne i64 %3, 0, !dbg !753
  br i1 %4, label %5, label %10, !dbg !753

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !753
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42), !dbg !753
  %8 = icmp ne i64 %7, 0, !dbg !753
  br i1 %8, label %9, label %10, !dbg !756

9:                                                ; preds = %5
  br label %11, !dbg !756

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_capa, i64 0, i64 0)) #9, !dbg !753
  unreachable, !dbg !753

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !757
  %13 = and i64 %12, -8, !dbg !757
  %14 = inttoptr i64 %13 to i8*, !dbg !757
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*, !dbg !757
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1, !dbg !758
  %17 = call i64 @fio_hash___capa(%struct.fio_hash___s* %16), !dbg !759
  ret i64 %17, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___capa(%struct.fio_hash___s* %0) #0 !dbg !761 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !762, metadata !DIExpression()), !dbg !763
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !764
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 1, !dbg !765
  %5 = load i64, i64* %4, align 8, !dbg !765
  ret i64 %5, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_set(i64 %0, i64 %1, i64 %2) #0 !dbg !767 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !770, metadata !DIExpression()), !dbg !771
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !772, metadata !DIExpression()), !dbg !773
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !774, metadata !DIExpression()), !dbg !775
  %7 = load i64, i64* %4, align 8, !dbg !776
  %8 = icmp ne i64 %7, 0, !dbg !776
  br i1 %8, label %9, label %14, !dbg !776

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8, !dbg !776
  %11 = call i64 @fiobj_type_is(i64 %10, i8 zeroext 42), !dbg !776
  %12 = icmp ne i64 %11, 0, !dbg !776
  br i1 %12, label %13, label %14, !dbg !779

13:                                               ; preds = %9
  br label %15, !dbg !779

14:                                               ; preds = %9, %3
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_set, i64 0, i64 0)) #9, !dbg !776
  unreachable, !dbg !776

15:                                               ; preds = %13
  %16 = load i64, i64* %5, align 8, !dbg !780
  %17 = call i64 @fiobj_type_is(i64 %16, i8 zeroext 40), !dbg !780
  %18 = icmp ne i64 %17, 0, !dbg !780
  br i1 %18, label %19, label %21, !dbg !782

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8, !dbg !783
  call void @fiobj_str_freeze(i64 %20), !dbg !784
  br label %21, !dbg !784

21:                                               ; preds = %19, %15
  %22 = load i64, i64* %4, align 8, !dbg !785
  %23 = and i64 %22, -8, !dbg !785
  %24 = inttoptr i64 %23 to i8*, !dbg !785
  %25 = bitcast i8* %24 to %struct.fiobj_hash_s*, !dbg !785
  %26 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %25, i32 0, i32 1, !dbg !786
  %27 = load i64, i64* %5, align 8, !dbg !787
  %28 = call i64 @fiobj_obj2hash(i64 %27), !dbg !788
  %29 = load i64, i64* %5, align 8, !dbg !789
  %30 = load i64, i64* %6, align 8, !dbg !790
  call void @fio_hash___insert(%struct.fio_hash___s* %26, i64 %28, i64 %29, i64 %30, i64* null), !dbg !791
  %31 = load i64, i64* %6, align 8, !dbg !792
  call void @fiobj_free(i64 %31), !dbg !793
  ret i32 0, !dbg !794
}

declare dso_local void @fiobj_str_freeze(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___insert(%struct.fio_hash___s* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 !dbg !795 {
  %6 = alloca %struct.fio_hash___s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.fio_hash___couplet_s, align 8
  %12 = alloca %struct.fio_hash___couplet_s, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %6, metadata !800, metadata !DIExpression()), !dbg !801
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !802, metadata !DIExpression()), !dbg !803
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !804, metadata !DIExpression()), !dbg !805
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !806, metadata !DIExpression()), !dbg !807
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !808, metadata !DIExpression()), !dbg !809
  %13 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !810
  %14 = load i64, i64* %7, align 8, !dbg !811
  %15 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 0, !dbg !812
  %16 = load i64, i64* %8, align 8, !dbg !813
  store i64 %16, i64* %15, align 8, !dbg !812
  %17 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 1, !dbg !812
  %18 = load i64, i64* %9, align 8, !dbg !814
  store i64 %18, i64* %17, align 8, !dbg !812
  %19 = load i64*, i64** %10, align 8, !dbg !815
  %20 = bitcast %struct.fio_hash___couplet_s* %11 to { i64, i64 }*, !dbg !816
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0, !dbg !816
  %22 = load i64, i64* %21, align 8, !dbg !816
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1, !dbg !816
  %24 = load i64, i64* %23, align 8, !dbg !816
  %25 = call { i64, i64 } @fio_hash____insert_or_overwrite_(%struct.fio_hash___s* %13, i64 %14, i64 %22, i64 %24, i32 1, i64* %19), !dbg !816
  %26 = bitcast %struct.fio_hash___couplet_s* %12 to { i64, i64 }*, !dbg !816
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0, !dbg !816
  %28 = extractvalue { i64, i64 } %25, 0, !dbg !816
  store i64 %28, i64* %27, align 8, !dbg !816
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1, !dbg !816
  %30 = extractvalue { i64, i64 } %25, 1, !dbg !816
  store i64 %30, i64* %29, align 8, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_obj2hash(i64 %0) #0 !dbg !818 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !821, metadata !DIExpression()), !dbg !822
  %5 = load i64, i64* %3, align 8, !dbg !823
  %6 = call i64 @fiobj_type_is(i64 %5, i8 zeroext 40), !dbg !823
  %7 = icmp ne i64 %6, 0, !dbg !823
  br i1 %7, label %8, label %11, !dbg !825

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8, !dbg !826
  %10 = call i64 @fiobj_str_hash(i64 %9), !dbg !827
  store i64 %10, i64* %2, align 8, !dbg !828
  br label %31, !dbg !828

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8, !dbg !829
  %13 = icmp ne i64 %12, 0, !dbg !829
  br i1 %13, label %14, label %22, !dbg !829

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8, !dbg !829
  %16 = and i64 %15, 1, !dbg !829
  %17 = icmp eq i64 %16, 0, !dbg !829
  br i1 %17, label %18, label %22, !dbg !829

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8, !dbg !829
  %20 = and i64 %19, 6, !dbg !829
  %21 = icmp ne i64 %20, 6, !dbg !829
  br i1 %21, label %24, label %22, !dbg !831

22:                                               ; preds = %18, %14, %11
  %23 = load i64, i64* %3, align 8, !dbg !832
  store i64 %23, i64* %2, align 8, !dbg !833
  br label %31, !dbg !833

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %4, metadata !834, metadata !DIExpression()), !dbg !835
  %25 = load i64, i64* %3, align 8, !dbg !836
  call void @fiobj_obj2cstr(%struct.fio_str_info_s* sret %4, i64 %25), !dbg !837
  %26 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 2, !dbg !838
  %27 = load i8*, i8** %26, align 8, !dbg !838
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %4, i32 0, i32 1, !dbg !838
  %29 = load i64, i64* %28, align 8, !dbg !838
  %30 = call i64 @fio_siphash13(i8* %27, i64 %29, i64 ptrtoint (i64 (i64, i32 (i64, i8*)*, i8*)* @fiobj_each2 to i64), i64 ptrtoint (void (i64)* @fiobj_free_complex_object to i64)), !dbg !838
  store i64 %30, i64* %2, align 8, !dbg !839
  br label %31, !dbg !839

31:                                               ; preds = %24, %22, %8
  %32 = load i64, i64* %2, align 8, !dbg !840
  ret i64 %32, !dbg !840
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64 %0) #0 !dbg !841 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !842, metadata !DIExpression()), !dbg !843
  %5 = load i64, i64* %2, align 8, !dbg !844
  %6 = icmp ne i64 %5, 0, !dbg !844
  br i1 %6, label %7, label %15, !dbg !844

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !844
  %9 = and i64 %8, 1, !dbg !844
  %10 = icmp eq i64 %9, 0, !dbg !844
  br i1 %10, label %11, label %15, !dbg !844

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !844
  %13 = and i64 %12, 6, !dbg !844
  %14 = icmp ne i64 %13, 6, !dbg !844
  br i1 %14, label %16, label %15, !dbg !846

15:                                               ; preds = %11, %7, %1
  br label %50, !dbg !847

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !848
  %18 = and i64 %17, -8, !dbg !848
  %19 = inttoptr i64 %18 to i8*, !dbg !848
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*, !dbg !848
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !848
  store i32 1, i32* %3, align 4, !dbg !848
  %22 = load i32, i32* %3, align 4, !dbg !848
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst, !dbg !848
  %24 = sub i32 %23, %22, !dbg !848
  store i32 %24, i32* %4, align 4, !dbg !848
  %25 = load i32, i32* %4, align 4, !dbg !848
  %26 = icmp ne i32 %25, 0, !dbg !848
  br i1 %26, label %27, label %28, !dbg !850

27:                                               ; preds = %16
  br label %50, !dbg !851

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8, !dbg !852
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29), !dbg !852
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5, !dbg !854
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8, !dbg !854
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null, !dbg !852
  br i1 %33, label %34, label %44, !dbg !855

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8, !dbg !856
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !856
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2, !dbg !857
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8, !dbg !857
  %39 = load i64, i64* %2, align 8, !dbg !858
  %40 = call i64 %38(i64 %39), !dbg !856
  %41 = icmp ne i64 %40, 0, !dbg !856
  br i1 %41, label %42, label %44, !dbg !859

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8, !dbg !860
  call void @fiobj_free_complex_object(i64 %43), !dbg !861
  br label %50, !dbg !861

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8, !dbg !862
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45), !dbg !862
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1, !dbg !863
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8, !dbg !863
  %49 = load i64, i64* %2, align 8, !dbg !864
  call void %48(i64 %49, void (i64, i8*)* null, i8* null), !dbg !862
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void, !dbg !865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_pop(i64 %0, i64* %1) #0 !dbg !866 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_hash___couplet_s, align 8
  %8 = alloca %struct.fio_hash___couplet_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !869, metadata !DIExpression()), !dbg !870
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !871, metadata !DIExpression()), !dbg !872
  %9 = load i64, i64* %4, align 8, !dbg !873
  %10 = icmp ne i64 %9, 0, !dbg !873
  br i1 %10, label %11, label %16, !dbg !873

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8, !dbg !873
  %13 = call i64 @fiobj_type_is(i64 %12, i8 zeroext 42), !dbg !873
  %14 = icmp ne i64 %13, 0, !dbg !873
  br i1 %14, label %15, label %16, !dbg !876

15:                                               ; preds = %11
  br label %17, !dbg !876

16:                                               ; preds = %11, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 219, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_pop, i64 0, i64 0)) #9, !dbg !873
  unreachable, !dbg !873

17:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %6, metadata !877, metadata !DIExpression()), !dbg !878
  %18 = load i64, i64* %4, align 8, !dbg !879
  %19 = and i64 %18, -8, !dbg !879
  %20 = inttoptr i64 %19 to i8*, !dbg !879
  %21 = bitcast i8* %20 to %struct.fiobj_hash_s*, !dbg !879
  %22 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %21, i32 0, i32 1, !dbg !881
  %23 = call i64 @fio_hash___count(%struct.fio_hash___s* %22), !dbg !882
  %24 = icmp ne i64 %23, 0, !dbg !882
  br i1 %24, label %25, label %26, !dbg !883

25:                                               ; preds = %17
  store i64 0, i64* %3, align 8, !dbg !884
  br label %66, !dbg !884

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8, !dbg !885
  %28 = and i64 %27, -8, !dbg !885
  %29 = inttoptr i64 %28 to i8*, !dbg !885
  %30 = bitcast i8* %29 to %struct.fiobj_hash_s*, !dbg !885
  %31 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %30, i32 0, i32 1, !dbg !886
  %32 = call { i64, i64 } @fio_hash___last(%struct.fio_hash___s* %31), !dbg !887
  %33 = bitcast %struct.fio_hash___couplet_s* %7 to { i64, i64 }*, !dbg !887
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0, !dbg !887
  %35 = extractvalue { i64, i64 } %32, 0, !dbg !887
  store i64 %35, i64* %34, align 8, !dbg !887
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1, !dbg !887
  %37 = extractvalue { i64, i64 } %32, 1, !dbg !887
  store i64 %37, i64* %36, align 8, !dbg !887
  %38 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %7, i32 0, i32 1, !dbg !888
  %39 = load i64, i64* %38, align 8, !dbg !888
  %40 = call i64 @fiobj_dup(i64 %39), !dbg !889
  store i64 %40, i64* %6, align 8, !dbg !890
  %41 = load i64*, i64** %5, align 8, !dbg !891
  %42 = icmp ne i64* %41, null, !dbg !891
  br i1 %42, label %43, label %59, !dbg !893

43:                                               ; preds = %26
  %44 = load i64, i64* %4, align 8, !dbg !894
  %45 = and i64 %44, -8, !dbg !894
  %46 = inttoptr i64 %45 to i8*, !dbg !894
  %47 = bitcast i8* %46 to %struct.fiobj_hash_s*, !dbg !894
  %48 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %47, i32 0, i32 1, !dbg !895
  %49 = call { i64, i64 } @fio_hash___last(%struct.fio_hash___s* %48), !dbg !896
  %50 = bitcast %struct.fio_hash___couplet_s* %8 to { i64, i64 }*, !dbg !896
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0, !dbg !896
  %52 = extractvalue { i64, i64 } %49, 0, !dbg !896
  store i64 %52, i64* %51, align 8, !dbg !896
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1, !dbg !896
  %54 = extractvalue { i64, i64 } %49, 1, !dbg !896
  store i64 %54, i64* %53, align 8, !dbg !896
  %55 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0, !dbg !897
  %56 = load i64, i64* %55, align 8, !dbg !897
  %57 = call i64 @fiobj_dup(i64 %56), !dbg !898
  %58 = load i64*, i64** %5, align 8, !dbg !899
  store i64 %57, i64* %58, align 8, !dbg !900
  br label %59, !dbg !901

59:                                               ; preds = %43, %26
  %60 = load i64, i64* %4, align 8, !dbg !902
  %61 = and i64 %60, -8, !dbg !902
  %62 = inttoptr i64 %61 to i8*, !dbg !902
  %63 = bitcast i8* %62 to %struct.fiobj_hash_s*, !dbg !902
  %64 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %63, i32 0, i32 1, !dbg !903
  call void @fio_hash___pop(%struct.fio_hash___s* %64), !dbg !904
  %65 = load i64, i64* %6, align 8, !dbg !905
  store i64 %65, i64* %3, align 8, !dbg !906
  br label %66, !dbg !906

66:                                               ; preds = %59, %25
  %67 = load i64, i64* %3, align 8, !dbg !907
  ret i64 %67, !dbg !907
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_dup(i64 %0) #0 !dbg !908 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !911, metadata !DIExpression()), !dbg !912
  %5 = load i64, i64* %2, align 8, !dbg !913
  %6 = icmp ne i64 %5, 0, !dbg !913
  br i1 %6, label %7, label %25, !dbg !913

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !913
  %9 = and i64 %8, 1, !dbg !913
  %10 = icmp eq i64 %9, 0, !dbg !913
  br i1 %10, label %11, label %25, !dbg !913

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !913
  %13 = and i64 %12, 6, !dbg !913
  %14 = icmp ne i64 %13, 6, !dbg !913
  br i1 %14, label %15, label %25, !dbg !915

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8, !dbg !916
  %17 = and i64 %16, -8, !dbg !916
  %18 = inttoptr i64 %17 to i8*, !dbg !916
  %19 = bitcast i8* %18 to %struct.fiobj_object_header_s*, !dbg !916
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %19, i32 0, i32 1, !dbg !916
  store i32 1, i32* %3, align 4, !dbg !916
  %21 = load i32, i32* %3, align 4, !dbg !916
  %22 = atomicrmw add i32* %20, i32 %21 seq_cst, !dbg !916
  %23 = add i32 %22, %21, !dbg !916
  store i32 %23, i32* %4, align 4, !dbg !916
  %24 = load i32, i32* %4, align 4, !dbg !916
  br label %25, !dbg !916

25:                                               ; preds = %15, %11, %7, %1
  %26 = load i64, i64* %2, align 8, !dbg !917
  ret i64 %26, !dbg !918
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @fio_hash___last(%struct.fio_hash___s* %0) #0 !dbg !919 {
  %2 = alloca %struct.fio_hash___couplet_s, align 8
  %3 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %3, metadata !922, metadata !DIExpression()), !dbg !923
  %4 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8, !dbg !924
  %5 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %4, i32 0, i32 3, !dbg !926
  %6 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !926
  %7 = icmp ne %struct.fio_hash____ordered_s_* %6, null, !dbg !924
  br i1 %7, label %8, label %13, !dbg !927

8:                                                ; preds = %1
  %9 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8, !dbg !928
  %10 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %9, i32 0, i32 2, !dbg !929
  %11 = load i64, i64* %10, align 8, !dbg !929
  %12 = icmp ne i64 %11, 0, !dbg !928
  br i1 %12, label %15, label %13, !dbg !930

13:                                               ; preds = %8, %1
  call void @llvm.dbg.declare(metadata %struct.fio_hash___couplet_s* %2, metadata !931, metadata !DIExpression()), !dbg !933
  %14 = bitcast %struct.fio_hash___couplet_s* %2 to i8*, !dbg !934
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false), !dbg !934
  br label %27, !dbg !935

15:                                               ; preds = %8
  %16 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8, !dbg !936
  %17 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %16, i32 0, i32 3, !dbg !937
  %18 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %17, align 8, !dbg !937
  %19 = load %struct.fio_hash___s*, %struct.fio_hash___s** %3, align 8, !dbg !938
  %20 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %19, i32 0, i32 2, !dbg !939
  %21 = load i64, i64* %20, align 8, !dbg !939
  %22 = sub i64 %21, 1, !dbg !940
  %23 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %18, i64 %22, !dbg !936
  %24 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %23, i32 0, i32 1, !dbg !941
  %25 = bitcast %struct.fio_hash___couplet_s* %2 to i8*, !dbg !941
  %26 = bitcast %struct.fio_hash___couplet_s* %24 to i8*, !dbg !941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false), !dbg !941
  br label %27, !dbg !942

27:                                               ; preds = %15, %13
  %28 = bitcast %struct.fio_hash___couplet_s* %2 to { i64, i64 }*, !dbg !943
  %29 = load { i64, i64 }, { i64, i64 }* %28, align 8, !dbg !943
  ret { i64, i64 } %29, !dbg !943
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___pop(%struct.fio_hash___s* %0) #0 !dbg !944 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !945, metadata !DIExpression()), !dbg !946
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !947
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 3, !dbg !949
  %5 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !949
  %6 = icmp ne %struct.fio_hash____ordered_s_* %5, null, !dbg !947
  br i1 %6, label %7, label %12, !dbg !950

7:                                                ; preds = %1
  %8 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !951
  %9 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %8, i32 0, i32 2, !dbg !952
  %10 = load i64, i64* %9, align 8, !dbg !952
  %11 = icmp ne i64 %10, 0, !dbg !951
  br i1 %11, label %13, label %12, !dbg !953

12:                                               ; preds = %7, %1
  br label %99, !dbg !954

13:                                               ; preds = %7
  br label %14, !dbg !955

14:                                               ; preds = %13
  br label %15, !dbg !956

15:                                               ; preds = %14
  %16 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !958
  %17 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %16, i32 0, i32 3, !dbg !958
  %18 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %17, align 8, !dbg !958
  %19 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !958
  %20 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %19, i32 0, i32 2, !dbg !958
  %21 = load i64, i64* %20, align 8, !dbg !958
  %22 = sub i64 %21, 1, !dbg !958
  %23 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %18, i64 %22, !dbg !958
  %24 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %23, i32 0, i32 1, !dbg !958
  %25 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %24, i32 0, i32 0, !dbg !958
  %26 = load i64, i64* %25, align 8, !dbg !958
  call void @fiobj_free(i64 %26), !dbg !958
  %27 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !958
  %28 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %27, i32 0, i32 3, !dbg !958
  %29 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %28, align 8, !dbg !958
  %30 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !958
  %31 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %30, i32 0, i32 2, !dbg !958
  %32 = load i64, i64* %31, align 8, !dbg !958
  %33 = sub i64 %32, 1, !dbg !958
  %34 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %29, i64 %33, !dbg !958
  %35 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %34, i32 0, i32 1, !dbg !958
  %36 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %35, i32 0, i32 0, !dbg !958
  store i64 0, i64* %36, align 8, !dbg !958
  br label %37, !dbg !958

37:                                               ; preds = %15
  br label %38, !dbg !956

38:                                               ; preds = %37
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !960
  %40 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %39, i32 0, i32 3, !dbg !960
  %41 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %40, align 8, !dbg !960
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !960
  %43 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %42, i32 0, i32 2, !dbg !960
  %44 = load i64, i64* %43, align 8, !dbg !960
  %45 = sub i64 %44, 1, !dbg !960
  %46 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %41, i64 %45, !dbg !960
  %47 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %46, i32 0, i32 1, !dbg !960
  %48 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %47, i32 0, i32 1, !dbg !960
  %49 = load i64, i64* %48, align 8, !dbg !960
  call void @fiobj_free(i64 %49), !dbg !960
  %50 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !960
  %51 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %50, i32 0, i32 3, !dbg !960
  %52 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %51, align 8, !dbg !960
  %53 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !960
  %54 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %53, i32 0, i32 2, !dbg !960
  %55 = load i64, i64* %54, align 8, !dbg !960
  %56 = sub i64 %55, 1, !dbg !960
  %57 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %52, i64 %56, !dbg !960
  %58 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %57, i32 0, i32 1, !dbg !960
  %59 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %58, i32 0, i32 1, !dbg !960
  store i64 0, i64* %59, align 8, !dbg !960
  br label %60, !dbg !960

60:                                               ; preds = %38
  br label %61, !dbg !956

61:                                               ; preds = %60
  %62 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !962
  %63 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %62, i32 0, i32 3, !dbg !963
  %64 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %63, align 8, !dbg !963
  %65 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !964
  %66 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %65, i32 0, i32 2, !dbg !965
  %67 = load i64, i64* %66, align 8, !dbg !965
  %68 = sub i64 %67, 1, !dbg !966
  %69 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %64, i64 %68, !dbg !962
  %70 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %69, i32 0, i32 0, !dbg !967
  store i64 0, i64* %70, align 8, !dbg !968
  %71 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !969
  %72 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %71, i32 0, i32 0, !dbg !970
  %73 = load i64, i64* %72, align 8, !dbg !971
  %74 = add i64 %73, -1, !dbg !971
  store i64 %74, i64* %72, align 8, !dbg !971
  br label %75, !dbg !972

75:                                               ; preds = %97, %61
  %76 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !973
  %77 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %76, i32 0, i32 2, !dbg !975
  %78 = load i64, i64* %77, align 8, !dbg !976
  %79 = add i64 %78, -1, !dbg !976
  store i64 %79, i64* %77, align 8, !dbg !976
  br label %80, !dbg !977

80:                                               ; preds = %75
  %81 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !978
  %82 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %81, i32 0, i32 2, !dbg !979
  %83 = load i64, i64* %82, align 8, !dbg !979
  %84 = icmp ne i64 %83, 0, !dbg !978
  br i1 %84, label %85, label %97, !dbg !980

85:                                               ; preds = %80
  %86 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !981
  %87 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %86, i32 0, i32 3, !dbg !981
  %88 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %87, align 8, !dbg !981
  %89 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !981
  %90 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %89, i32 0, i32 2, !dbg !981
  %91 = load i64, i64* %90, align 8, !dbg !981
  %92 = sub i64 %91, 1, !dbg !981
  %93 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %88, i64 %92, !dbg !981
  %94 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %93, i32 0, i32 0, !dbg !981
  %95 = load i64, i64* %94, align 8, !dbg !981
  %96 = icmp eq i64 %95, 0, !dbg !981
  br label %97

97:                                               ; preds = %85, %80
  %98 = phi i1 [ false, %80 ], [ %96, %85 ], !dbg !982
  br i1 %98, label %75, label %99, !dbg !977, !llvm.loop !983

99:                                               ; preds = %12, %97
  ret void, !dbg !985
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_replace(i64 %0, i64 %1, i64 %2) #0 !dbg !986 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !989, metadata !DIExpression()), !dbg !990
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !991, metadata !DIExpression()), !dbg !992
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !993, metadata !DIExpression()), !dbg !994
  %8 = load i64, i64* %4, align 8, !dbg !995
  %9 = icmp ne i64 %8, 0, !dbg !995
  br i1 %9, label %10, label %15, !dbg !995

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8, !dbg !995
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 42), !dbg !995
  %13 = icmp ne i64 %12, 0, !dbg !995
  br i1 %13, label %14, label %15, !dbg !998

14:                                               ; preds = %10
  br label %16, !dbg !998

15:                                               ; preds = %10, %3
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_replace, i64 0, i64 0)) #9, !dbg !995
  unreachable, !dbg !995

16:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i64* %7, metadata !999, metadata !DIExpression()), !dbg !1000
  store i64 0, i64* %7, align 8, !dbg !1000
  %17 = load i64, i64* %4, align 8, !dbg !1001
  %18 = and i64 %17, -8, !dbg !1001
  %19 = inttoptr i64 %18 to i8*, !dbg !1001
  %20 = bitcast i8* %19 to %struct.fiobj_hash_s*, !dbg !1001
  %21 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %20, i32 0, i32 1, !dbg !1002
  %22 = load i64, i64* %5, align 8, !dbg !1003
  %23 = call i64 @fiobj_obj2hash(i64 %22), !dbg !1004
  %24 = load i64, i64* %5, align 8, !dbg !1005
  %25 = load i64, i64* %6, align 8, !dbg !1006
  call void @fio_hash___insert(%struct.fio_hash___s* %21, i64 %23, i64 %24, i64 %25, i64* %7), !dbg !1007
  %26 = load i64, i64* %6, align 8, !dbg !1008
  call void @fiobj_free(i64 %26), !dbg !1009
  %27 = load i64, i64* %7, align 8, !dbg !1010
  ret i64 %27, !dbg !1011
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_remove(i64 %0, i64 %1) #0 !dbg !1012 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1015, metadata !DIExpression()), !dbg !1016
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1017, metadata !DIExpression()), !dbg !1018
  %6 = load i64, i64* %3, align 8, !dbg !1019
  %7 = icmp ne i64 %6, 0, !dbg !1019
  br i1 %7, label %8, label %13, !dbg !1019

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1019
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 42), !dbg !1019
  %11 = icmp ne i64 %10, 0, !dbg !1019
  br i1 %11, label %12, label %13, !dbg !1022

12:                                               ; preds = %8
  br label %14, !dbg !1022

13:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_remove, i64 0, i64 0)) #9, !dbg !1019
  unreachable, !dbg !1019

14:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i64 0, i64* %5, align 8, !dbg !1024
  %15 = load i64, i64* %3, align 8, !dbg !1025
  %16 = and i64 %15, -8, !dbg !1025
  %17 = inttoptr i64 %16 to i8*, !dbg !1025
  %18 = bitcast i8* %17 to %struct.fiobj_hash_s*, !dbg !1025
  %19 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %18, i32 0, i32 1, !dbg !1026
  %20 = load i64, i64* %4, align 8, !dbg !1027
  %21 = call i64 @fiobj_obj2hash(i64 %20), !dbg !1028
  %22 = load i64, i64* %4, align 8, !dbg !1029
  %23 = call i32 @fio_hash___remove(%struct.fio_hash___s* %19, i64 %21, i64 %22, i64* %5), !dbg !1030
  %24 = load i64, i64* %5, align 8, !dbg !1031
  ret i64 %24, !dbg !1032
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_hash___remove(%struct.fio_hash___s* %0, i64 %1, i64 %2, i64* %3) #0 !dbg !1033 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fio_hash___s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.fio_hash____map_s_*, align 8
  %11 = alloca %struct.fio_hash___couplet_s, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %6, metadata !1036, metadata !DIExpression()), !dbg !1037
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1038, metadata !DIExpression()), !dbg !1039
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1040, metadata !DIExpression()), !dbg !1041
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.declare(metadata %struct.fio_hash____map_s_** %10, metadata !1044, metadata !DIExpression()), !dbg !1045
  %12 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1046
  %13 = load i64, i64* %7, align 8, !dbg !1047
  %14 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 0, !dbg !1048
  %15 = load i64, i64* %8, align 8, !dbg !1049
  store i64 %15, i64* %14, align 8, !dbg !1048
  %16 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %11, i32 0, i32 1, !dbg !1048
  store i64 0, i64* %16, align 8, !dbg !1048
  %17 = bitcast %struct.fio_hash___couplet_s* %11 to { i64, i64 }*, !dbg !1050
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0, !dbg !1050
  %19 = load i64, i64* %18, align 8, !dbg !1050
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1, !dbg !1050
  %21 = load i64, i64* %20, align 8, !dbg !1050
  %22 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %12, i64 %13, i64 %19, i64 %21), !dbg !1050
  store %struct.fio_hash____map_s_* %22, %struct.fio_hash____map_s_** %10, align 8, !dbg !1045
  %23 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1051
  %24 = icmp ne %struct.fio_hash____map_s_* %23, null, !dbg !1051
  br i1 %24, label %25, label %30, !dbg !1053

25:                                               ; preds = %4
  %26 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1054
  %27 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %26, i32 0, i32 1, !dbg !1055
  %28 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %27, align 8, !dbg !1055
  %29 = icmp ne %struct.fio_hash____ordered_s_* %28, null, !dbg !1054
  br i1 %29, label %31, label %30, !dbg !1056

30:                                               ; preds = %25, %4
  store i32 -1, i32* %5, align 4, !dbg !1057
  br label %123, !dbg !1057

31:                                               ; preds = %25
  %32 = load i64*, i64** %9, align 8, !dbg !1058
  %33 = icmp ne i64* %32, null, !dbg !1058
  br i1 %33, label %34, label %43, !dbg !1060

34:                                               ; preds = %31
  %35 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1061
  %36 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %35, i32 0, i32 1, !dbg !1061
  %37 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %36, align 8, !dbg !1061
  %38 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %37, i32 0, i32 1, !dbg !1061
  %39 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %38, i32 0, i32 1, !dbg !1061
  %40 = load i64, i64* %39, align 8, !dbg !1061
  %41 = call i64 @fiobj_dup(i64 %40), !dbg !1061
  %42 = load i64*, i64** %9, align 8, !dbg !1061
  store i64 %41, i64* %42, align 8, !dbg !1061
  br label %43, !dbg !1061

43:                                               ; preds = %34, %31
  br label %44, !dbg !1062

44:                                               ; preds = %43
  br label %45, !dbg !1063

45:                                               ; preds = %44
  %46 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1065
  %47 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %46, i32 0, i32 1, !dbg !1065
  %48 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %47, align 8, !dbg !1065
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 0, i32 1, !dbg !1065
  %50 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %49, i32 0, i32 0, !dbg !1065
  %51 = load i64, i64* %50, align 8, !dbg !1065
  call void @fiobj_free(i64 %51), !dbg !1065
  %52 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1065
  %53 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %52, i32 0, i32 1, !dbg !1065
  %54 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %53, align 8, !dbg !1065
  %55 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %54, i32 0, i32 1, !dbg !1065
  %56 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %55, i32 0, i32 0, !dbg !1065
  store i64 0, i64* %56, align 8, !dbg !1065
  br label %57, !dbg !1065

57:                                               ; preds = %45
  br label %58, !dbg !1063

58:                                               ; preds = %57
  %59 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1067
  %60 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %59, i32 0, i32 1, !dbg !1067
  %61 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %60, align 8, !dbg !1067
  %62 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %61, i32 0, i32 1, !dbg !1067
  %63 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %62, i32 0, i32 1, !dbg !1067
  %64 = load i64, i64* %63, align 8, !dbg !1067
  call void @fiobj_free(i64 %64), !dbg !1067
  %65 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1067
  %66 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %65, i32 0, i32 1, !dbg !1067
  %67 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %66, align 8, !dbg !1067
  %68 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %67, i32 0, i32 1, !dbg !1067
  %69 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %68, i32 0, i32 1, !dbg !1067
  store i64 0, i64* %69, align 8, !dbg !1067
  br label %70, !dbg !1067

70:                                               ; preds = %58
  br label %71, !dbg !1063

71:                                               ; preds = %70
  %72 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1069
  %73 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %72, i32 0, i32 0, !dbg !1070
  %74 = load i64, i64* %73, align 8, !dbg !1071
  %75 = add i64 %74, -1, !dbg !1071
  store i64 %75, i64* %73, align 8, !dbg !1071
  %76 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1072
  %77 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %76, i32 0, i32 1, !dbg !1073
  %78 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %77, align 8, !dbg !1073
  %79 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %78, i32 0, i32 0, !dbg !1074
  store i64 0, i64* %79, align 8, !dbg !1075
  %80 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1076
  %81 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %80, i32 0, i32 1, !dbg !1078
  %82 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %81, align 8, !dbg !1078
  %83 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1079
  %84 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %83, i32 0, i32 2, !dbg !1080
  %85 = load i64, i64* %84, align 8, !dbg !1080
  %86 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1081
  %87 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %86, i32 0, i32 3, !dbg !1082
  %88 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %87, align 8, !dbg !1082
  %89 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %88, i64 %85, !dbg !1083
  %90 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %89, i64 -1, !dbg !1084
  %91 = icmp eq %struct.fio_hash____ordered_s_* %82, %90, !dbg !1085
  br i1 %91, label %92, label %120, !dbg !1086

92:                                               ; preds = %71
  %93 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1087
  %94 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %93, i32 0, i32 0, !dbg !1089
  store i64 0, i64* %94, align 8, !dbg !1090
  br label %95, !dbg !1091

95:                                               ; preds = %117, %92
  %96 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1092
  %97 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %96, i32 0, i32 2, !dbg !1094
  %98 = load i64, i64* %97, align 8, !dbg !1095
  %99 = add i64 %98, -1, !dbg !1095
  store i64 %99, i64* %97, align 8, !dbg !1095
  br label %100, !dbg !1096

100:                                              ; preds = %95
  %101 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1097
  %102 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %101, i32 0, i32 2, !dbg !1098
  %103 = load i64, i64* %102, align 8, !dbg !1098
  %104 = icmp ne i64 %103, 0, !dbg !1097
  br i1 %104, label %105, label %117, !dbg !1099

105:                                              ; preds = %100
  %106 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1100
  %107 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %106, i32 0, i32 3, !dbg !1100
  %108 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %107, align 8, !dbg !1100
  %109 = load %struct.fio_hash___s*, %struct.fio_hash___s** %6, align 8, !dbg !1100
  %110 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %109, i32 0, i32 2, !dbg !1100
  %111 = load i64, i64* %110, align 8, !dbg !1100
  %112 = sub i64 %111, 1, !dbg !1100
  %113 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %108, i64 %112, !dbg !1100
  %114 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %113, i32 0, i32 0, !dbg !1100
  %115 = load i64, i64* %114, align 8, !dbg !1100
  %116 = icmp eq i64 %115, 0, !dbg !1100
  br label %117

117:                                              ; preds = %105, %100
  %118 = phi i1 [ false, %100 ], [ %116, %105 ], !dbg !1101
  br i1 %118, label %95, label %119, !dbg !1096, !llvm.loop !1102

119:                                              ; preds = %117
  br label %120, !dbg !1104

120:                                              ; preds = %119, %71
  %121 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1105
  %122 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %121, i32 0, i32 1, !dbg !1106
  store %struct.fio_hash____ordered_s_* null, %struct.fio_hash____ordered_s_** %122, align 8, !dbg !1107
  store i32 0, i32* %5, align 4, !dbg !1108
  br label %123, !dbg !1108

123:                                              ; preds = %120, %30
  %124 = load i32, i32* %5, align 4, !dbg !1109
  ret i32 %124, !dbg !1109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_remove2(i64 %0, i64 %1) #0 !dbg !1110 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1113, metadata !DIExpression()), !dbg !1114
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1115, metadata !DIExpression()), !dbg !1116
  %6 = load i64, i64* %3, align 8, !dbg !1117
  %7 = icmp ne i64 %6, 0, !dbg !1117
  br i1 %7, label %8, label %13, !dbg !1117

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1117
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 42), !dbg !1117
  %11 = icmp ne i64 %10, 0, !dbg !1117
  br i1 %11, label %12, label %13, !dbg !1120

12:                                               ; preds = %8
  br label %14, !dbg !1120

13:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 262, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_remove2, i64 0, i64 0)) #9, !dbg !1117
  unreachable, !dbg !1117

14:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1121, metadata !DIExpression()), !dbg !1122
  store i64 0, i64* %5, align 8, !dbg !1122
  %15 = load i64, i64* %3, align 8, !dbg !1123
  %16 = and i64 %15, -8, !dbg !1123
  %17 = inttoptr i64 %16 to i8*, !dbg !1123
  %18 = bitcast i8* %17 to %struct.fiobj_hash_s*, !dbg !1123
  %19 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %18, i32 0, i32 1, !dbg !1124
  %20 = load i64, i64* %4, align 8, !dbg !1125
  %21 = call i32 @fio_hash___remove(%struct.fio_hash___s* %19, i64 %20, i64 -1, i64* %5), !dbg !1126
  %22 = load i64, i64* %5, align 8, !dbg !1127
  ret i64 %22, !dbg !1128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_delete(i64 %0, i64 %1) #0 !dbg !1129 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1134, metadata !DIExpression()), !dbg !1135
  %5 = load i64, i64* %3, align 8, !dbg !1136
  %6 = and i64 %5, -8, !dbg !1136
  %7 = inttoptr i64 %6 to i8*, !dbg !1136
  %8 = bitcast i8* %7 to %struct.fiobj_hash_s*, !dbg !1136
  %9 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %8, i32 0, i32 1, !dbg !1137
  %10 = load i64, i64* %4, align 8, !dbg !1138
  %11 = call i64 @fiobj_obj2hash(i64 %10), !dbg !1139
  %12 = load i64, i64* %4, align 8, !dbg !1140
  %13 = call i32 @fio_hash___remove(%struct.fio_hash___s* %9, i64 %11, i64 %12, i64* null), !dbg !1141
  ret i32 %13, !dbg !1142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_delete2(i64 %0, i64 %1) #0 !dbg !1143 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1146, metadata !DIExpression()), !dbg !1147
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1148, metadata !DIExpression()), !dbg !1149
  %5 = load i64, i64* %3, align 8, !dbg !1150
  %6 = and i64 %5, -8, !dbg !1150
  %7 = inttoptr i64 %6 to i8*, !dbg !1150
  %8 = bitcast i8* %7 to %struct.fiobj_hash_s*, !dbg !1150
  %9 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %8, i32 0, i32 1, !dbg !1151
  %10 = load i64, i64* %4, align 8, !dbg !1152
  %11 = call i32 @fio_hash___remove(%struct.fio_hash___s* %9, i64 %10, i64 -1, i64* null), !dbg !1153
  ret i32 %11, !dbg !1154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_get(i64 %0, i64 %1) #0 !dbg !1155 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1158, metadata !DIExpression()), !dbg !1159
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1160, metadata !DIExpression()), !dbg !1161
  %5 = load i64, i64* %3, align 8, !dbg !1162
  %6 = icmp ne i64 %5, 0, !dbg !1162
  br i1 %6, label %7, label %12, !dbg !1162

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !1162
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 42), !dbg !1162
  %10 = icmp ne i64 %9, 0, !dbg !1162
  br i1 %10, label %11, label %12, !dbg !1165

11:                                               ; preds = %7
  br label %13, !dbg !1165

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 298, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_get, i64 0, i64 0)) #9, !dbg !1162
  unreachable, !dbg !1162

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !1166
  %15 = and i64 %14, -8, !dbg !1166
  %16 = inttoptr i64 %15 to i8*, !dbg !1166
  %17 = bitcast i8* %16 to %struct.fiobj_hash_s*, !dbg !1166
  %18 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %17, i32 0, i32 1, !dbg !1167
  %19 = load i64, i64* %4, align 8, !dbg !1168
  %20 = call i64 @fiobj_obj2hash(i64 %19), !dbg !1169
  %21 = load i64, i64* %4, align 8, !dbg !1170
  %22 = call i64 @fio_hash___find(%struct.fio_hash___s* %18, i64 %20, i64 %21), !dbg !1171
  ret i64 %22, !dbg !1172
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___find(%struct.fio_hash___s* %0, i64 %1, i64 %2) #0 !dbg !1173 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fio_hash___s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fio_hash____map_s_*, align 8
  %9 = alloca %struct.fio_hash___couplet_s, align 8
  %10 = alloca i64, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %5, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata %struct.fio_hash____map_s_** %8, metadata !1182, metadata !DIExpression()), !dbg !1183
  %11 = load %struct.fio_hash___s*, %struct.fio_hash___s** %5, align 8, !dbg !1184
  %12 = load i64, i64* %6, align 8, !dbg !1185
  %13 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %9, i32 0, i32 0, !dbg !1186
  %14 = load i64, i64* %7, align 8, !dbg !1187
  store i64 %14, i64* %13, align 8, !dbg !1186
  %15 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %9, i32 0, i32 1, !dbg !1186
  store i64 0, i64* %15, align 8, !dbg !1186
  %16 = bitcast %struct.fio_hash___couplet_s* %9 to { i64, i64 }*, !dbg !1188
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0, !dbg !1188
  %18 = load i64, i64* %17, align 8, !dbg !1188
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1, !dbg !1188
  %20 = load i64, i64* %19, align 8, !dbg !1188
  %21 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %11, i64 %12, i64 %18, i64 %20), !dbg !1188
  store %struct.fio_hash____map_s_* %21, %struct.fio_hash____map_s_** %8, align 8, !dbg !1183
  %22 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %8, align 8, !dbg !1189
  %23 = icmp ne %struct.fio_hash____map_s_* %22, null, !dbg !1189
  br i1 %23, label %24, label %29, !dbg !1191

24:                                               ; preds = %3
  %25 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %8, align 8, !dbg !1192
  %26 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %25, i32 0, i32 1, !dbg !1193
  %27 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %26, align 8, !dbg !1193
  %28 = icmp ne %struct.fio_hash____ordered_s_* %27, null, !dbg !1192
  br i1 %28, label %32, label %29, !dbg !1194

29:                                               ; preds = %24, %3
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1195, metadata !DIExpression()), !dbg !1197
  %30 = bitcast i64* %10 to i8*, !dbg !1198
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 8, i1 false), !dbg !1198
  %31 = load i64, i64* %10, align 8, !dbg !1199
  store i64 %31, i64* %4, align 8, !dbg !1200
  br label %39, !dbg !1200

32:                                               ; preds = %24
  %33 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %8, align 8, !dbg !1201
  %34 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %33, i32 0, i32 1, !dbg !1202
  %35 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %34, align 8, !dbg !1202
  %36 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %35, i32 0, i32 1, !dbg !1203
  %37 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %36, i32 0, i32 1, !dbg !1204
  %38 = load i64, i64* %37, align 8, !dbg !1204
  store i64 %38, i64* %4, align 8, !dbg !1205
  br label %39, !dbg !1205

39:                                               ; preds = %32, %29
  %40 = load i64, i64* %4, align 8, !dbg !1206
  ret i64 %40, !dbg !1206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_hash_get2(i64 %0, i64 %1) #0 !dbg !1207 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1210, metadata !DIExpression()), !dbg !1211
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1212, metadata !DIExpression()), !dbg !1213
  %5 = load i64, i64* %3, align 8, !dbg !1214
  %6 = icmp ne i64 %5, 0, !dbg !1214
  br i1 %6, label %7, label %12, !dbg !1214

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !1214
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 42), !dbg !1214
  %10 = icmp ne i64 %9, 0, !dbg !1214
  br i1 %10, label %11, label %12, !dbg !1217

11:                                               ; preds = %7
  br label %13, !dbg !1217

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_get2, i64 0, i64 0)) #9, !dbg !1214
  unreachable, !dbg !1214

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !1218
  %15 = and i64 %14, -8, !dbg !1218
  %16 = inttoptr i64 %15 to i8*, !dbg !1218
  %17 = bitcast i8* %16 to %struct.fiobj_hash_s*, !dbg !1218
  %18 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %17, i32 0, i32 1, !dbg !1219
  %19 = load i64, i64* %4, align 8, !dbg !1220
  %20 = call i64 @fio_hash___find(%struct.fio_hash___s* %18, i64 %19, i64 -1), !dbg !1221
  ret i64 %20, !dbg !1222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_hash_haskey(i64 %0, i64 %1) #0 !dbg !1223 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1228, metadata !DIExpression()), !dbg !1229
  %5 = load i64, i64* %3, align 8, !dbg !1230
  %6 = icmp ne i64 %5, 0, !dbg !1230
  br i1 %6, label %7, label %12, !dbg !1230

7:                                                ; preds = %2
  %8 = load i64, i64* %3, align 8, !dbg !1230
  %9 = call i64 @fiobj_type_is(i64 %8, i8 zeroext 42), !dbg !1230
  %10 = icmp ne i64 %9, 0, !dbg !1230
  br i1 %10, label %11, label %12, !dbg !1233

11:                                               ; preds = %7
  br label %13, !dbg !1233

12:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_haskey, i64 0, i64 0)) #9, !dbg !1230
  unreachable, !dbg !1230

13:                                               ; preds = %11
  %14 = load i64, i64* %3, align 8, !dbg !1234
  %15 = and i64 %14, -8, !dbg !1234
  %16 = inttoptr i64 %15 to i8*, !dbg !1234
  %17 = bitcast i8* %16 to %struct.fiobj_hash_s*, !dbg !1234
  %18 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %17, i32 0, i32 1, !dbg !1235
  %19 = load i64, i64* %4, align 8, !dbg !1236
  %20 = call i64 @fiobj_obj2hash(i64 %19), !dbg !1237
  %21 = load i64, i64* %4, align 8, !dbg !1238
  %22 = call i64 @fio_hash___find(%struct.fio_hash___s* %18, i64 %20, i64 %21), !dbg !1239
  %23 = icmp ne i64 %22, 0, !dbg !1240
  %24 = zext i1 %23 to i32, !dbg !1240
  ret i32 %24, !dbg !1241
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_hash_clear(i64 %0) #0 !dbg !1242 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1245, metadata !DIExpression()), !dbg !1246
  %3 = load i64, i64* %2, align 8, !dbg !1247
  %4 = icmp ne i64 %3, 0, !dbg !1247
  br i1 %4, label %5, label %10, !dbg !1247

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !1247
  %7 = call i64 @fiobj_type_is(i64 %6, i8 zeroext 42), !dbg !1247
  %8 = icmp ne i64 %7, 0, !dbg !1247
  br i1 %8, label %9, label %10, !dbg !1250

9:                                                ; preds = %5
  br label %11, !dbg !1250

10:                                               ; preds = %5, %1
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.fiobj_hash_clear, i64 0, i64 0)) #9, !dbg !1247
  unreachable, !dbg !1247

11:                                               ; preds = %9
  %12 = load i64, i64* %2, align 8, !dbg !1251
  %13 = and i64 %12, -8, !dbg !1251
  %14 = inttoptr i64 %13 to i8*, !dbg !1251
  %15 = bitcast i8* %14 to %struct.fiobj_hash_s*, !dbg !1251
  %16 = getelementptr inbounds %struct.fiobj_hash_s, %struct.fiobj_hash_s* %15, i32 0, i32 1, !dbg !1252
  call void @fio_hash___free(%struct.fio_hash___s* %16), !dbg !1253
  ret void, !dbg !1254
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash___free(%struct.fio_hash___s* %0) #0 !dbg !1255 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca %struct.fio_hash____ordered_s_*, align 8
  %4 = alloca %struct.fio_hash____ordered_s_*, align 8
  %5 = alloca %struct.fio_hash___s, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !1256, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %3, metadata !1258, metadata !DIExpression()), !dbg !1259
  %6 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1260
  %7 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %6, i32 0, i32 3, !dbg !1261
  %8 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %7, align 8, !dbg !1261
  %9 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1262
  %10 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %9, i32 0, i32 2, !dbg !1263
  %11 = load i64, i64* %10, align 8, !dbg !1263
  %12 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %8, i64 %11, !dbg !1264
  store %struct.fio_hash____ordered_s_* %12, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1259
  %13 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1265
  %14 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %13, i32 0, i32 3, !dbg !1267
  %15 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %14, align 8, !dbg !1267
  %16 = icmp ne %struct.fio_hash____ordered_s_* %15, null, !dbg !1265
  br i1 %16, label %17, label %62, !dbg !1268

17:                                               ; preds = %1
  %18 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1269
  %19 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %18, i32 0, i32 3, !dbg !1270
  %20 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %19, align 8, !dbg !1270
  %21 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1271
  %22 = icmp ne %struct.fio_hash____ordered_s_* %20, %21, !dbg !1272
  br i1 %22, label %23, label %62, !dbg !1273

23:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %4, metadata !1274, metadata !DIExpression()), !dbg !1277
  %24 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1278
  %25 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %24, i32 0, i32 3, !dbg !1279
  %26 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %25, align 8, !dbg !1279
  store %struct.fio_hash____ordered_s_* %26, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1277
  br label %27, !dbg !1280

27:                                               ; preds = %58, %23
  %28 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1281
  %29 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1283
  %30 = icmp ult %struct.fio_hash____ordered_s_* %28, %29, !dbg !1284
  br i1 %30, label %31, label %61, !dbg !1285

31:                                               ; preds = %27
  %32 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1286
  %33 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %32, i32 0, i32 0, !dbg !1286
  %34 = load i64, i64* %33, align 8, !dbg !1286
  %35 = icmp eq i64 0, %34, !dbg !1286
  br i1 %35, label %57, label %36, !dbg !1289

36:                                               ; preds = %31
  br label %37, !dbg !1290

37:                                               ; preds = %36
  br label %38, !dbg !1292

38:                                               ; preds = %37
  %39 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1294
  %40 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %39, i32 0, i32 1, !dbg !1294
  %41 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %40, i32 0, i32 0, !dbg !1294
  %42 = load i64, i64* %41, align 8, !dbg !1294
  call void @fiobj_free(i64 %42), !dbg !1294
  %43 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1294
  %44 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %43, i32 0, i32 1, !dbg !1294
  %45 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %44, i32 0, i32 0, !dbg !1294
  store i64 0, i64* %45, align 8, !dbg !1294
  br label %46, !dbg !1294

46:                                               ; preds = %38
  br label %47, !dbg !1292

47:                                               ; preds = %46
  %48 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1296
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 0, i32 1, !dbg !1296
  %50 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %49, i32 0, i32 1, !dbg !1296
  %51 = load i64, i64* %50, align 8, !dbg !1296
  call void @fiobj_free(i64 %51), !dbg !1296
  %52 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1296
  %53 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %52, i32 0, i32 1, !dbg !1296
  %54 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %53, i32 0, i32 1, !dbg !1296
  store i64 0, i64* %54, align 8, !dbg !1296
  br label %55, !dbg !1296

55:                                               ; preds = %47
  br label %56, !dbg !1292

56:                                               ; preds = %55
  br label %57, !dbg !1298

57:                                               ; preds = %56, %31
  br label %58, !dbg !1299

58:                                               ; preds = %57
  %59 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1300
  %60 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %59, i32 1, !dbg !1300
  store %struct.fio_hash____ordered_s_* %60, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1300
  br label %27, !dbg !1301, !llvm.loop !1302

61:                                               ; preds = %27
  br label %62, !dbg !1304

62:                                               ; preds = %61, %17, %1
  %63 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1305
  %64 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %63, i32 0, i32 4, !dbg !1305
  %65 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %64, align 8, !dbg !1305
  %66 = bitcast %struct.fio_hash____map_s_* %65 to i8*, !dbg !1305
  call void @fio_free(i8* %66), !dbg !1305
  %67 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1306
  %68 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %67, i32 0, i32 3, !dbg !1306
  %69 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %68, align 8, !dbg !1306
  %70 = bitcast %struct.fio_hash____ordered_s_* %69 to i8*, !dbg !1306
  call void @fio_free(i8* %70), !dbg !1306
  %71 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1307
  %72 = bitcast %struct.fio_hash___s* %5 to i8*, !dbg !1308
  call void @llvm.memset.p0i8.i64(i8* align 8 %72, i8 0, i64 48, i1 false), !dbg !1308
  %73 = bitcast %struct.fio_hash___s* %71 to i8*, !dbg !1308
  %74 = bitcast %struct.fio_hash___s* %5 to i8*, !dbg !1308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 48, i1 false), !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !1310 {
  ret i64 6, !dbg !1311
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !1312 {
  ret i64 22, !dbg !1313
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !1314 {
  ret i64 38, !dbg !1315
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash____compact_ordered_array_(%struct.fio_hash___s* %0) #0 !dbg !1316 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca %struct.fio_hash____ordered_s_*, align 8
  %4 = alloca %struct.fio_hash____ordered_s_*, align 8
  %5 = alloca %struct.fio_hash____ordered_s_*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !1317, metadata !DIExpression()), !dbg !1318
  %6 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1319
  %7 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %6, i32 0, i32 0, !dbg !1321
  %8 = load i64, i64* %7, align 8, !dbg !1321
  %9 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1322
  %10 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %9, i32 0, i32 2, !dbg !1323
  %11 = load i64, i64* %10, align 8, !dbg !1323
  %12 = icmp eq i64 %8, %11, !dbg !1324
  br i1 %12, label %13, label %14, !dbg !1325

13:                                               ; preds = %1
  br label %66, !dbg !1326

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %3, metadata !1327, metadata !DIExpression()), !dbg !1328
  %15 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1329
  %16 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %15, i32 0, i32 3, !dbg !1330
  %17 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %16, align 8, !dbg !1330
  store %struct.fio_hash____ordered_s_* %17, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %4, metadata !1331, metadata !DIExpression()), !dbg !1332
  %18 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1333
  %19 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %18, i32 0, i32 3, !dbg !1334
  %20 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %19, align 8, !dbg !1334
  store %struct.fio_hash____ordered_s_* %20, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1332
  call void @llvm.dbg.declare(metadata %struct.fio_hash____ordered_s_** %5, metadata !1335, metadata !DIExpression()), !dbg !1336
  %21 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1337
  %22 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %21, i32 0, i32 3, !dbg !1338
  %23 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %22, align 8, !dbg !1338
  %24 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1339
  %25 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %24, i32 0, i32 2, !dbg !1340
  %26 = load i64, i64* %25, align 8, !dbg !1340
  %27 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %23, i64 %26, !dbg !1341
  store %struct.fio_hash____ordered_s_* %27, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !1336
  br label %28, !dbg !1342

28:                                               ; preds = %50, %14
  %29 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1343
  %30 = icmp ne %struct.fio_hash____ordered_s_* %29, null, !dbg !1343
  br i1 %30, label %31, label %35, !dbg !1346

31:                                               ; preds = %28
  %32 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1347
  %33 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %5, align 8, !dbg !1348
  %34 = icmp ult %struct.fio_hash____ordered_s_* %32, %33, !dbg !1349
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ], !dbg !1350
  br i1 %36, label %37, label %53, !dbg !1351

37:                                               ; preds = %35
  %38 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1352
  %39 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %38, i32 0, i32 0, !dbg !1352
  %40 = load i64, i64* %39, align 8, !dbg !1352
  %41 = icmp eq i64 %40, 0, !dbg !1352
  br i1 %41, label %42, label %43, !dbg !1355

42:                                               ; preds = %37
  br label %50, !dbg !1356

43:                                               ; preds = %37
  %44 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1358
  %45 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1359
  %46 = bitcast %struct.fio_hash____ordered_s_* %44 to i8*, !dbg !1360
  %47 = bitcast %struct.fio_hash____ordered_s_* %45 to i8*, !dbg !1360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false), !dbg !1360
  %48 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1361
  %49 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %48, i32 1, !dbg !1361
  store %struct.fio_hash____ordered_s_* %49, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1361
  br label %50, !dbg !1362

50:                                               ; preds = %43, %42
  %51 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1363
  %52 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %51, i32 1, !dbg !1363
  store %struct.fio_hash____ordered_s_* %52, %struct.fio_hash____ordered_s_** %3, align 8, !dbg !1363
  br label %28, !dbg !1364, !llvm.loop !1365

53:                                               ; preds = %35
  %54 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %4, align 8, !dbg !1367
  %55 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1368
  %56 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %55, i32 0, i32 3, !dbg !1369
  %57 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %56, align 8, !dbg !1369
  %58 = ptrtoint %struct.fio_hash____ordered_s_* %54 to i64, !dbg !1370
  %59 = ptrtoint %struct.fio_hash____ordered_s_* %57 to i64, !dbg !1370
  %60 = sub i64 %58, %59, !dbg !1370
  %61 = sdiv exact i64 %60, 24, !dbg !1370
  %62 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1371
  %63 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %62, i32 0, i32 0, !dbg !1372
  store i64 %61, i64* %63, align 8, !dbg !1373
  %64 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1374
  %65 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %64, i32 0, i32 2, !dbg !1375
  store i64 %61, i64* %65, align 8, !dbg !1376
  br label %66, !dbg !1377

66:                                               ; preds = %53, %13
  ret void, !dbg !1377
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_hash____reallocate_set_mem_(%struct.fio_hash___s* %0) #0 !dbg !1378 {
  %2 = alloca %struct.fio_hash___s*, align 8
  %3 = alloca i64, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !1379, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1381, metadata !DIExpression()), !dbg !1382
  %4 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1383
  %5 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %4, i32 0, i32 6, !dbg !1384
  %6 = load i8, i8* %5, align 1, !dbg !1384
  %7 = zext i8 %6 to i32, !dbg !1383
  %8 = zext i32 %7 to i64, !dbg !1385
  %9 = shl i64 1, %8, !dbg !1385
  store i64 %9, i64* %3, align 8, !dbg !1382
  %10 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1386
  %11 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %10, i32 0, i32 4, !dbg !1386
  %12 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %11, align 8, !dbg !1386
  %13 = bitcast %struct.fio_hash____map_s_* %12 to i8*, !dbg !1386
  call void @fio_free(i8* %13), !dbg !1386
  %14 = load i64, i64* %3, align 8, !dbg !1387
  %15 = call noalias i8* @fio_calloc(i64 16, i64 %14), !dbg !1387
  %16 = ptrtoint i8* %15 to i64, !dbg !1387
  %17 = and i64 %16, 15, !dbg !1387
  %18 = icmp eq i64 %17, 0, !dbg !1387
  call void @llvm.assume(i1 %18), !dbg !1387
  %19 = bitcast i8* %15 to %struct.fio_hash____map_s_*, !dbg !1388
  %20 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1389
  %21 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %20, i32 0, i32 4, !dbg !1390
  store %struct.fio_hash____map_s_* %19, %struct.fio_hash____map_s_** %21, align 8, !dbg !1391
  %22 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1392
  %23 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %22, i32 0, i32 3, !dbg !1392
  %24 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %23, align 8, !dbg !1392
  %25 = bitcast %struct.fio_hash____ordered_s_* %24 to i8*, !dbg !1392
  %26 = load i64, i64* %3, align 8, !dbg !1392
  %27 = mul i64 %26, 24, !dbg !1392
  %28 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1392
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 2, !dbg !1392
  %30 = load i64, i64* %29, align 8, !dbg !1392
  %31 = mul i64 %30, 24, !dbg !1392
  %32 = call i8* @fio_realloc2(i8* %25, i64 %27, i64 %31), !dbg !1392
  %33 = ptrtoint i8* %32 to i64, !dbg !1392
  %34 = and i64 %33, 15, !dbg !1392
  %35 = icmp eq i64 %34, 0, !dbg !1392
  call void @llvm.assume(i1 %35), !dbg !1392
  %36 = bitcast i8* %32 to %struct.fio_hash____ordered_s_*, !dbg !1393
  %37 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1394
  %38 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %37, i32 0, i32 3, !dbg !1395
  store %struct.fio_hash____ordered_s_* %36, %struct.fio_hash____ordered_s_** %38, align 8, !dbg !1396
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1397
  %40 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %39, i32 0, i32 4, !dbg !1399
  %41 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %40, align 8, !dbg !1399
  %42 = icmp ne %struct.fio_hash____map_s_* %41, null, !dbg !1397
  br i1 %42, label %43, label %48, !dbg !1400

43:                                               ; preds = %1
  %44 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1401
  %45 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %44, i32 0, i32 3, !dbg !1402
  %46 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %45, align 8, !dbg !1402
  %47 = icmp ne %struct.fio_hash____ordered_s_* %46, null, !dbg !1401
  br i1 %47, label %51, label %48, !dbg !1403

48:                                               ; preds = %43, %1
  call void @perror(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0)), !dbg !1404
  %49 = call i32* @__errno_location() #10, !dbg !1406
  %50 = load i32, i32* %49, align 4, !dbg !1406
  call void @exit(i32 %50) #9, !dbg !1407
  unreachable, !dbg !1407

51:                                               ; preds = %43
  %52 = load i64, i64* %3, align 8, !dbg !1408
  %53 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1409
  %54 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %53, i32 0, i32 1, !dbg !1410
  store i64 %52, i64* %54, align 8, !dbg !1411
  ret void, !dbg !1412
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %0, i64 %1, i64 %2, i64 %3) #0 !dbg !1413 {
  %5 = alloca %struct.fio_hash____map_s_*, align 8
  %6 = alloca %struct.fio_hash___couplet_s, align 8
  %7 = alloca %struct.fio_hash___s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fio_hash____map_s_*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = bitcast %struct.fio_hash___couplet_s* %6 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %3, i64* %18, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %7, metadata !1416, metadata !DIExpression()), !dbg !1417
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.declare(metadata %struct.fio_hash___couplet_s* %6, metadata !1420, metadata !DIExpression()), !dbg !1421
  %19 = load i64, i64* %8, align 8, !dbg !1422
  %20 = icmp eq i64 %19, 0, !dbg !1422
  br i1 %20, label %21, label %22, !dbg !1424

21:                                               ; preds = %4
  store i64 -1, i64* %8, align 8, !dbg !1425
  br label %22, !dbg !1426

22:                                               ; preds = %21, %4
  %23 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1427
  %24 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %23, i32 0, i32 4, !dbg !1429
  %25 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %24, align 8, !dbg !1429
  %26 = icmp ne %struct.fio_hash____map_s_* %25, null, !dbg !1427
  br i1 %26, label %27, label %234, !dbg !1430

27:                                               ; preds = %22
  %28 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1431
  %29 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %28, i32 0, i32 5, !dbg !1434
  %30 = load i8, i8* %29, align 8, !dbg !1434
  %31 = zext i8 %30 to i32, !dbg !1431
  %32 = icmp ne i32 %31, 0, !dbg !1431
  br i1 %32, label %33, label %43, !dbg !1435

33:                                               ; preds = %27
  %34 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1436
  %35 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %34, i32 0, i32 2, !dbg !1437
  %36 = load i64, i64* %35, align 8, !dbg !1437
  %37 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1438
  %38 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %37, i32 0, i32 0, !dbg !1439
  %39 = load i64, i64* %38, align 8, !dbg !1439
  %40 = icmp ne i64 %36, %39, !dbg !1440
  br i1 %40, label %41, label %43, !dbg !1441

41:                                               ; preds = %33
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1442
  call void @fio_hash___rehash(%struct.fio_hash___s* %42), !dbg !1444
  br label %43, !dbg !1445

43:                                               ; preds = %41, %33, %27
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i64 0, i64* %9, align 8, !dbg !1447
  call void @llvm.dbg.declare(metadata %struct.fio_hash____map_s_** %10, metadata !1448, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1450, metadata !DIExpression()), !dbg !1451
  %44 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1452
  %45 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %44, i32 0, i32 6, !dbg !1453
  %46 = load i8, i8* %45, align 1, !dbg !1453
  %47 = zext i8 %46 to i32, !dbg !1452
  %48 = zext i32 %47 to i64, !dbg !1454
  %49 = shl i64 1, %48, !dbg !1454
  %50 = sub i64 %49, 1, !dbg !1455
  store i64 %50, i64* %11, align 8, !dbg !1451
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1456, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1458, metadata !DIExpression()), !dbg !1459
  %51 = load i64, i64* %8, align 8, !dbg !1460
  %52 = lshr i64 %51, 0, !dbg !1460
  %53 = load i64, i64* %8, align 8, !dbg !1460
  %54 = shl i64 %53, 0, !dbg !1460
  %55 = or i64 %52, %54, !dbg !1460
  %56 = load i64, i64* %8, align 8, !dbg !1460
  %57 = call i64 @fio_ct_if2(i64 0, i64 %56, i64 0), !dbg !1460
  %58 = xor i64 %55, %57, !dbg !1460
  store i64 %58, i64* %13, align 8, !dbg !1459
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1461, metadata !DIExpression()), !dbg !1462
  %59 = load i64, i64* %8, align 8, !dbg !1463
  %60 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1463
  %61 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %60, i32 0, i32 6, !dbg !1463
  %62 = load i8, i8* %61, align 1, !dbg !1463
  %63 = zext i8 %62 to i64, !dbg !1463
  %64 = and i64 %63, 63, !dbg !1463
  %65 = lshr i64 %59, %64, !dbg !1463
  %66 = load i64, i64* %8, align 8, !dbg !1463
  %67 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1463
  %68 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %67, i32 0, i32 6, !dbg !1463
  %69 = load i8, i8* %68, align 1, !dbg !1463
  %70 = zext i8 %69 to i32, !dbg !1463
  %71 = sub nsw i32 0, %70, !dbg !1463
  %72 = sext i32 %71 to i64, !dbg !1463
  %73 = and i64 %72, 63, !dbg !1463
  %74 = shl i64 %66, %73, !dbg !1463
  %75 = or i64 %65, %74, !dbg !1463
  %76 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1463
  %77 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %76, i32 0, i32 6, !dbg !1463
  %78 = load i8, i8* %77, align 1, !dbg !1463
  %79 = zext i8 %78 to i64, !dbg !1463
  %80 = load i64, i64* %8, align 8, !dbg !1463
  %81 = call i64 @fio_ct_if2(i64 %79, i64 %80, i64 0), !dbg !1463
  %82 = xor i64 %75, %81, !dbg !1463
  store i64 %82, i64* %14, align 8, !dbg !1462
  %83 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1464
  %84 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %83, i32 0, i32 4, !dbg !1465
  %85 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %84, align 8, !dbg !1465
  %86 = load i64, i64* %14, align 8, !dbg !1466
  %87 = load i64, i64* %11, align 8, !dbg !1467
  %88 = and i64 %86, %87, !dbg !1468
  %89 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %85, i64 %88, !dbg !1469
  store %struct.fio_hash____map_s_* %89, %struct.fio_hash____map_s_** %10, align 8, !dbg !1470
  %90 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1471
  %91 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %90, i32 0, i32 0, !dbg !1471
  %92 = load i64, i64* %91, align 8, !dbg !1471
  %93 = icmp eq i64 0, %92, !dbg !1471
  br i1 %93, label %94, label %96, !dbg !1473

94:                                               ; preds = %43
  %95 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1474
  store %struct.fio_hash____map_s_* %95, %struct.fio_hash____map_s_** %5, align 8, !dbg !1475
  br label %235, !dbg !1475

96:                                               ; preds = %43
  %97 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1476
  %98 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %97, i32 0, i32 0, !dbg !1476
  %99 = load i64, i64* %98, align 8, !dbg !1476
  %100 = load i64, i64* %13, align 8, !dbg !1476
  %101 = icmp eq i64 %99, %100, !dbg !1476
  br i1 %101, label %102, label %137, !dbg !1478

102:                                              ; preds = %96
  %103 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1479
  %104 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %103, i32 0, i32 1, !dbg !1482
  %105 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %104, align 8, !dbg !1482
  %106 = icmp ne %struct.fio_hash____ordered_s_* %105, null, !dbg !1479
  br i1 %106, label %107, label %130, !dbg !1483

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0, !dbg !1484
  %109 = load i64, i64* %108, align 8, !dbg !1484
  %110 = icmp eq i64 %109, -1, !dbg !1484
  br i1 %110, label %130, label %111, !dbg !1484

111:                                              ; preds = %107
  %112 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1484
  %113 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %112, i32 0, i32 1, !dbg !1484
  %114 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %113, align 8, !dbg !1484
  %115 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %114, i32 0, i32 1, !dbg !1484
  %116 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %115, i32 0, i32 0, !dbg !1484
  %117 = load i64, i64* %116, align 8, !dbg !1484
  %118 = icmp eq i64 %117, -1, !dbg !1484
  br i1 %118, label %130, label %119, !dbg !1484

119:                                              ; preds = %111
  %120 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1484
  %121 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %120, i32 0, i32 1, !dbg !1484
  %122 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %121, align 8, !dbg !1484
  %123 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %122, i32 0, i32 1, !dbg !1484
  %124 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %123, i32 0, i32 0, !dbg !1484
  %125 = load i64, i64* %124, align 8, !dbg !1484
  %126 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0, !dbg !1484
  %127 = load i64, i64* %126, align 8, !dbg !1484
  %128 = call i32 @fiobj_iseq(i64 %125, i64 %127), !dbg !1484
  %129 = icmp ne i32 %128, 0, !dbg !1484
  br i1 %129, label %130, label %132, !dbg !1485

130:                                              ; preds = %119, %111, %107, %102
  %131 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1486
  store %struct.fio_hash____map_s_* %131, %struct.fio_hash____map_s_** %5, align 8, !dbg !1487
  br label %235, !dbg !1487

132:                                              ; preds = %119
  %133 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1488
  %134 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %133, i32 0, i32 5, !dbg !1489
  store i8 1, i8* %134, align 8, !dbg !1490
  %135 = load i64, i64* %9, align 8, !dbg !1491
  %136 = add i64 %135, 1, !dbg !1491
  store i64 %136, i64* %9, align 8, !dbg !1491
  br label %137, !dbg !1492

137:                                              ; preds = %132, %96
  store i64 0, i64* %12, align 8, !dbg !1493
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1494, metadata !DIExpression()), !dbg !1495
  %138 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1496
  %139 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %138, i32 0, i32 1, !dbg !1497
  %140 = load i64, i64* %139, align 8, !dbg !1497
  %141 = icmp ugt i64 %140, 384, !dbg !1498
  br i1 %141, label %142, label %143, !dbg !1496

142:                                              ; preds = %137
  br label %148, !dbg !1496

143:                                              ; preds = %137
  %144 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1499
  %145 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %144, i32 0, i32 1, !dbg !1500
  %146 = load i64, i64* %145, align 8, !dbg !1500
  %147 = lshr i64 %146, 2, !dbg !1501
  br label %148, !dbg !1496

148:                                              ; preds = %143, %142
  %149 = phi i64 [ 96, %142 ], [ %147, %143 ], !dbg !1496
  %150 = mul i64 11, %149, !dbg !1502
  store i64 %150, i64* %15, align 8, !dbg !1495
  br label %151, !dbg !1503

151:                                              ; preds = %232, %148
  %152 = load i64, i64* %12, align 8, !dbg !1504
  %153 = load i64, i64* %15, align 8, !dbg !1505
  %154 = icmp ult i64 %152, %153, !dbg !1506
  br i1 %154, label %155, label %233, !dbg !1503

155:                                              ; preds = %151
  %156 = load i64, i64* %12, align 8, !dbg !1507
  %157 = add i64 %156, 11, !dbg !1507
  store i64 %157, i64* %12, align 8, !dbg !1507
  %158 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1509
  %159 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %158, i32 0, i32 4, !dbg !1510
  %160 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %159, align 8, !dbg !1510
  %161 = load i64, i64* %14, align 8, !dbg !1511
  %162 = load i64, i64* %12, align 8, !dbg !1512
  %163 = add i64 %161, %162, !dbg !1513
  %164 = load i64, i64* %11, align 8, !dbg !1514
  %165 = and i64 %163, %164, !dbg !1515
  %166 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %160, i64 %165, !dbg !1516
  store %struct.fio_hash____map_s_* %166, %struct.fio_hash____map_s_** %10, align 8, !dbg !1517
  %167 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1518
  %168 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %167, i32 0, i32 0, !dbg !1518
  %169 = load i64, i64* %168, align 8, !dbg !1518
  %170 = icmp eq i64 0, %169, !dbg !1518
  br i1 %170, label %171, label %173, !dbg !1520

171:                                              ; preds = %155
  %172 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1521
  store %struct.fio_hash____map_s_* %172, %struct.fio_hash____map_s_** %5, align 8, !dbg !1522
  br label %235, !dbg !1522

173:                                              ; preds = %155
  %174 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1523
  %175 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %174, i32 0, i32 0, !dbg !1523
  %176 = load i64, i64* %175, align 8, !dbg !1523
  %177 = load i64, i64* %13, align 8, !dbg !1523
  %178 = icmp eq i64 %176, %177, !dbg !1523
  br i1 %178, label %179, label %232, !dbg !1525

179:                                              ; preds = %173
  %180 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1526
  %181 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %180, i32 0, i32 1, !dbg !1529
  %182 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %181, align 8, !dbg !1529
  %183 = icmp ne %struct.fio_hash____ordered_s_* %182, null, !dbg !1526
  br i1 %183, label %184, label %207, !dbg !1530

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0, !dbg !1531
  %186 = load i64, i64* %185, align 8, !dbg !1531
  %187 = icmp eq i64 %186, -1, !dbg !1531
  br i1 %187, label %207, label %188, !dbg !1531

188:                                              ; preds = %184
  %189 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1531
  %190 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %189, i32 0, i32 1, !dbg !1531
  %191 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %190, align 8, !dbg !1531
  %192 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %191, i32 0, i32 1, !dbg !1531
  %193 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %192, i32 0, i32 0, !dbg !1531
  %194 = load i64, i64* %193, align 8, !dbg !1531
  %195 = icmp eq i64 %194, -1, !dbg !1531
  br i1 %195, label %207, label %196, !dbg !1531

196:                                              ; preds = %188
  %197 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1531
  %198 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %197, i32 0, i32 1, !dbg !1531
  %199 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %198, align 8, !dbg !1531
  %200 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %199, i32 0, i32 1, !dbg !1531
  %201 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %200, i32 0, i32 0, !dbg !1531
  %202 = load i64, i64* %201, align 8, !dbg !1531
  %203 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %6, i32 0, i32 0, !dbg !1531
  %204 = load i64, i64* %203, align 8, !dbg !1531
  %205 = call i32 @fiobj_iseq(i64 %202, i64 %204), !dbg !1531
  %206 = icmp ne i32 %205, 0, !dbg !1531
  br i1 %206, label %207, label %209, !dbg !1532

207:                                              ; preds = %196, %188, %184, %179
  %208 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1533
  store %struct.fio_hash____map_s_* %208, %struct.fio_hash____map_s_** %5, align 8, !dbg !1534
  br label %235, !dbg !1534

209:                                              ; preds = %196
  %210 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1535
  %211 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %210, i32 0, i32 5, !dbg !1536
  store i8 1, i8* %211, align 8, !dbg !1537
  %212 = load i64, i64* %9, align 8, !dbg !1538
  %213 = add i64 %212, 1, !dbg !1538
  store i64 %213, i64* %9, align 8, !dbg !1538
  %214 = icmp uge i64 %213, 96, !dbg !1540
  br i1 %214, label %215, label %224, !dbg !1541

215:                                              ; preds = %209
  br label %216, !dbg !1542

216:                                              ; preds = %215
  %217 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1544
  %218 = icmp sle i32 3, %217, !dbg !1544
  br i1 %218, label %219, label %220, !dbg !1547

219:                                              ; preds = %216
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0)), !dbg !1548
  br label %220, !dbg !1548

220:                                              ; preds = %219, %216
  br label %221, !dbg !1547

221:                                              ; preds = %220
  %222 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1550
  %223 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %222, i32 0, i32 7, !dbg !1551
  store i8 1, i8* %223, align 2, !dbg !1552
  br label %224, !dbg !1553

224:                                              ; preds = %221, %209
  %225 = load %struct.fio_hash___s*, %struct.fio_hash___s** %7, align 8, !dbg !1554
  %226 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %225, i32 0, i32 7, !dbg !1556
  %227 = load i8, i8* %226, align 2, !dbg !1556
  %228 = icmp ne i8 %227, 0, !dbg !1554
  br i1 %228, label %229, label %231, !dbg !1557

229:                                              ; preds = %224
  %230 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %10, align 8, !dbg !1558
  store %struct.fio_hash____map_s_* %230, %struct.fio_hash____map_s_** %5, align 8, !dbg !1560
  br label %235, !dbg !1560

231:                                              ; preds = %224
  br label %232, !dbg !1561

232:                                              ; preds = %231, %173
  br label %151, !dbg !1503, !llvm.loop !1562

233:                                              ; preds = %151
  br label %234, !dbg !1564

234:                                              ; preds = %233, %22
  store %struct.fio_hash____map_s_* null, %struct.fio_hash____map_s_** %5, align 8, !dbg !1565
  br label %235, !dbg !1565

235:                                              ; preds = %234, %229, %207, %171, %130, %94
  %236 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %5, align 8, !dbg !1566
  ret %struct.fio_hash____map_s_* %236, !dbg !1566
}

declare dso_local void @fio_free(i8*) #5

declare dso_local noalias i8* @fio_calloc(i64, i64) #5

declare dso_local i8* @fio_realloc2(i8*, i64, i64) #5

declare dso_local void @perror(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if2(i64 %0, i64 %1, i64 %2) #0 !dbg !1567 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1570, metadata !DIExpression()), !dbg !1571
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1574, metadata !DIExpression()), !dbg !1575
  %7 = load i64, i64* %4, align 8, !dbg !1576
  %8 = call i64 @fio_ct_true(i64 %7), !dbg !1577
  %9 = trunc i64 %8 to i8, !dbg !1577
  %10 = load i64, i64* %5, align 8, !dbg !1578
  %11 = load i64, i64* %6, align 8, !dbg !1579
  %12 = call i64 @fio_ct_if(i8 zeroext %9, i64 %10, i64 %11), !dbg !1580
  ret i64 %12, !dbg !1581
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_iseq(i64 %0, i64 %1) #0 !dbg !1582 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1587, metadata !DIExpression()), !dbg !1588
  %6 = load i64, i64* %4, align 8, !dbg !1589
  %7 = load i64, i64* %5, align 8, !dbg !1591
  %8 = icmp eq i64 %6, %7, !dbg !1592
  br i1 %8, label %9, label %10, !dbg !1593

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !1594
  br label %86, !dbg !1594

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8, !dbg !1595
  %12 = icmp ne i64 %11, 0, !dbg !1595
  br i1 %12, label %13, label %16, !dbg !1597

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8, !dbg !1598
  %15 = icmp ne i64 %14, 0, !dbg !1598
  br i1 %15, label %17, label %16, !dbg !1599

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4, !dbg !1600
  br label %86, !dbg !1600

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8, !dbg !1601
  %19 = icmp ne i64 %18, 0, !dbg !1601
  br i1 %19, label %20, label %39, !dbg !1601

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8, !dbg !1601
  %22 = and i64 %21, 1, !dbg !1601
  %23 = icmp eq i64 %22, 0, !dbg !1601
  br i1 %23, label %24, label %39, !dbg !1601

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8, !dbg !1601
  %26 = and i64 %25, 6, !dbg !1601
  %27 = icmp ne i64 %26, 6, !dbg !1601
  br i1 %27, label %28, label %39, !dbg !1603

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8, !dbg !1604
  %30 = icmp ne i64 %29, 0, !dbg !1604
  br i1 %30, label %31, label %39, !dbg !1604

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8, !dbg !1604
  %33 = and i64 %32, 1, !dbg !1604
  %34 = icmp eq i64 %33, 0, !dbg !1604
  br i1 %34, label %35, label %39, !dbg !1604

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8, !dbg !1604
  %37 = and i64 %36, 6, !dbg !1604
  %38 = icmp ne i64 %37, 6, !dbg !1604
  br i1 %38, label %40, label %39, !dbg !1605

39:                                               ; preds = %35, %31, %28, %24, %20, %17
  store i32 0, i32* %3, align 4, !dbg !1606
  br label %86, !dbg !1606

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8, !dbg !1607
  %42 = and i64 %41, -8, !dbg !1607
  %43 = inttoptr i64 %42 to i8*, !dbg !1607
  %44 = bitcast i8* %43 to %struct.fiobj_object_header_s*, !dbg !1607
  %45 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %44, i32 0, i32 0, !dbg !1609
  %46 = load i8, i8* %45, align 4, !dbg !1609
  %47 = zext i8 %46 to i32, !dbg !1607
  %48 = load i64, i64* %5, align 8, !dbg !1610
  %49 = and i64 %48, -8, !dbg !1610
  %50 = inttoptr i64 %49 to i8*, !dbg !1610
  %51 = bitcast i8* %50 to %struct.fiobj_object_header_s*, !dbg !1610
  %52 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %51, i32 0, i32 0, !dbg !1611
  %53 = load i8, i8* %52, align 4, !dbg !1611
  %54 = zext i8 %53 to i32, !dbg !1610
  %55 = icmp ne i32 %47, %54, !dbg !1612
  br i1 %55, label %56, label %57, !dbg !1613

56:                                               ; preds = %40
  store i32 0, i32* %3, align 4, !dbg !1614
  br label %86, !dbg !1614

57:                                               ; preds = %40
  %58 = load i64, i64* %4, align 8, !dbg !1615
  %59 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %58), !dbg !1615
  %60 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %59, i32 0, i32 4, !dbg !1617
  %61 = load i64 (i64, i64)*, i64 (i64, i64)** %60, align 8, !dbg !1617
  %62 = load i64, i64* %4, align 8, !dbg !1618
  %63 = load i64, i64* %5, align 8, !dbg !1619
  %64 = call i64 %61(i64 %62, i64 %63), !dbg !1615
  %65 = icmp ne i64 %64, 0, !dbg !1615
  br i1 %65, label %67, label %66, !dbg !1620

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4, !dbg !1621
  br label %86, !dbg !1621

67:                                               ; preds = %57
  %68 = load i64, i64* %4, align 8, !dbg !1622
  %69 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %68), !dbg !1622
  %70 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %69, i32 0, i32 5, !dbg !1624
  %71 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %70, align 8, !dbg !1624
  %72 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %71, null, !dbg !1622
  br i1 %72, label %73, label %85, !dbg !1625

73:                                               ; preds = %67
  %74 = load i64, i64* %4, align 8, !dbg !1626
  %75 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %74), !dbg !1626
  %76 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %75, i32 0, i32 2, !dbg !1627
  %77 = load i64 (i64)*, i64 (i64)** %76, align 8, !dbg !1627
  %78 = load i64, i64* %4, align 8, !dbg !1628
  %79 = call i64 %77(i64 %78), !dbg !1626
  %80 = icmp ne i64 %79, 0, !dbg !1626
  br i1 %80, label %81, label %85, !dbg !1629

81:                                               ; preds = %73
  %82 = load i64, i64* %4, align 8, !dbg !1630
  %83 = load i64, i64* %5, align 8, !dbg !1631
  %84 = call i32 @fiobj_iseq____internal_complex__(i64 %82, i64 %83), !dbg !1632
  store i32 %84, i32* %3, align 4, !dbg !1633
  br label %86, !dbg !1633

85:                                               ; preds = %73, %67
  store i32 1, i32* %3, align 4, !dbg !1634
  br label %86, !dbg !1634

86:                                               ; preds = %85, %81, %66, %56, %39, %16, %9
  %87 = load i32, i32* %3, align 4, !dbg !1635
  ret i32 %87, !dbg !1635
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_if(i8 zeroext %0, i64 %1, i64 %2) #0 !dbg !1636 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1641, metadata !DIExpression()), !dbg !1642
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1643, metadata !DIExpression()), !dbg !1644
  %7 = load i64, i64* %6, align 8, !dbg !1645
  %8 = load i8, i8* %4, align 1, !dbg !1646
  %9 = zext i8 %8 to i32, !dbg !1646
  %10 = and i32 %9, 1, !dbg !1647
  %11 = sub nsw i32 0, %10, !dbg !1648
  %12 = sext i32 %11 to i64, !dbg !1649
  %13 = load i64, i64* %5, align 8, !dbg !1650
  %14 = load i64, i64* %6, align 8, !dbg !1651
  %15 = xor i64 %13, %14, !dbg !1652
  %16 = and i64 %12, %15, !dbg !1653
  %17 = xor i64 %7, %16, !dbg !1654
  ret i64 %17, !dbg !1655
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_ct_true(i64 %0) #0 !dbg !1656 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1659, metadata !DIExpression()), !dbg !1660
  %3 = load i64, i64* %2, align 8, !dbg !1661
  %4 = load i64, i64* %2, align 8, !dbg !1662
  %5 = sub i64 0, %4, !dbg !1663
  %6 = or i64 %3, %5, !dbg !1664
  %7 = lshr i64 %6, 63, !dbg !1665
  ret i64 %7, !dbg !1666
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !1667 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1671, metadata !DIExpression()), !dbg !1672
  %4 = load i64, i64* %3, align 8, !dbg !1673
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !1673
  %6 = zext i8 %5 to i32, !dbg !1673
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
  ], !dbg !1674

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1675
  br label %15, !dbg !1675

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1677
  br label %15, !dbg !1677

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1678
  br label %15, !dbg !1678

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1679
  br label %15, !dbg !1679

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1680
  br label %15, !dbg !1680

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1681
  br label %15, !dbg !1681

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1682
  br label %15, !dbg !1682

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1683
  br label %15, !dbg !1683

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !1684
  ret %struct.fiobj_object_vtable_s* %16, !dbg !1684
}

declare dso_local i32 @fiobj_iseq____internal_complex__(i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !1685 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1688, metadata !DIExpression()), !dbg !1689
  %4 = load i64, i64* %3, align 8, !dbg !1690
  %5 = icmp ne i64 %4, 0, !dbg !1690
  br i1 %5, label %7, label %6, !dbg !1692

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !1693
  br label %35, !dbg !1693

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !1694
  %9 = and i64 %8, 1, !dbg !1696
  %10 = icmp ne i64 %9, 0, !dbg !1696
  br i1 %10, label %11, label %12, !dbg !1697

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !1698
  br label %35, !dbg !1698

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !1699
  %14 = and i64 %13, 6, !dbg !1701
  %15 = icmp eq i64 %14, 6, !dbg !1702
  br i1 %15, label %16, label %19, !dbg !1703

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !1704
  %18 = trunc i64 %17 to i8, !dbg !1705
  store i8 %18, i8* %2, align 1, !dbg !1706
  br label %35, !dbg !1706

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !1707
  %21 = and i64 %20, 6, !dbg !1709
  %22 = icmp eq i64 %21, 2, !dbg !1710
  br i1 %22, label %23, label %24, !dbg !1711

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !1712
  br label %35, !dbg !1712

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !1713
  %26 = and i64 %25, 6, !dbg !1715
  %27 = icmp eq i64 %26, 4, !dbg !1716
  br i1 %27, label %28, label %29, !dbg !1717

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !1718
  br label %35, !dbg !1718

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !1719
  %31 = and i64 %30, -8, !dbg !1719
  %32 = inttoptr i64 %31 to i8*, !dbg !1719
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !1720
  %34 = load i8, i8* %33, align 1, !dbg !1720
  store i8 %34, i8* %2, align 1, !dbg !1721
  br label %35, !dbg !1721

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !1722
  ret i8 %36, !dbg !1722
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @fio_hash____insert_or_overwrite_(%struct.fio_hash___s* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64* %5) #0 !dbg !1723 {
  %7 = alloca %struct.fio_hash___couplet_s, align 8
  %8 = alloca %struct.fio_hash___couplet_s, align 8
  %9 = alloca %struct.fio_hash___s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.fio_hash____map_s_*, align 8
  %14 = bitcast %struct.fio_hash___couplet_s* %8 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %9, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1728, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.declare(metadata %struct.fio_hash___couplet_s* %8, metadata !1730, metadata !DIExpression()), !dbg !1731
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1732, metadata !DIExpression()), !dbg !1733
  store i64* %5, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !1734, metadata !DIExpression()), !dbg !1735
  %17 = load i64, i64* %10, align 8, !dbg !1736
  %18 = icmp eq i64 %17, 0, !dbg !1736
  br i1 %18, label %19, label %20, !dbg !1738

19:                                               ; preds = %6
  store i64 -1, i64* %10, align 8, !dbg !1739
  br label %20, !dbg !1740

20:                                               ; preds = %19, %6
  %21 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1741
  %22 = call i64 @fio_hash___is_fragmented(%struct.fio_hash___s* %21), !dbg !1743
  %23 = icmp ne i64 %22, 0, !dbg !1743
  br i1 %23, label %24, label %26, !dbg !1744

24:                                               ; preds = %20
  %25 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1745
  call void @fio_hash___rehash(%struct.fio_hash___s* %25), !dbg !1746
  br label %41, !dbg !1746

26:                                               ; preds = %20
  %27 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1747
  %28 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %27, i32 0, i32 2, !dbg !1749
  %29 = load i64, i64* %28, align 8, !dbg !1749
  %30 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1750
  %31 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %30, i32 0, i32 1, !dbg !1751
  %32 = load i64, i64* %31, align 8, !dbg !1751
  %33 = icmp uge i64 %29, %32, !dbg !1752
  br i1 %33, label %34, label %40, !dbg !1753

34:                                               ; preds = %26
  %35 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1754
  %36 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %35, i32 0, i32 6, !dbg !1756
  %37 = load i8, i8* %36, align 1, !dbg !1757
  %38 = add i8 %37, 1, !dbg !1757
  store i8 %38, i8* %36, align 1, !dbg !1757
  %39 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1758
  call void @fio_hash___rehash(%struct.fio_hash___s* %39), !dbg !1759
  br label %40, !dbg !1760

40:                                               ; preds = %34, %26
  br label %41

41:                                               ; preds = %40, %24
  call void @llvm.dbg.declare(metadata %struct.fio_hash____map_s_** %13, metadata !1761, metadata !DIExpression()), !dbg !1762
  %42 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1763
  %43 = load i64, i64* %10, align 8, !dbg !1764
  %44 = bitcast %struct.fio_hash___couplet_s* %8 to { i64, i64 }*, !dbg !1765
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0, !dbg !1765
  %46 = load i64, i64* %45, align 8, !dbg !1765
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1, !dbg !1765
  %48 = load i64, i64* %47, align 8, !dbg !1765
  %49 = call %struct.fio_hash____map_s_* @fio_hash____find_map_pos_(%struct.fio_hash___s* %42, i64 %43, i64 %46, i64 %48), !dbg !1765
  store %struct.fio_hash____map_s_* %49, %struct.fio_hash____map_s_** %13, align 8, !dbg !1762
  %50 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1766
  %51 = icmp ne %struct.fio_hash____map_s_* %50, null, !dbg !1766
  br i1 %51, label %108, label %52, !dbg !1768

52:                                               ; preds = %41
  br label %53, !dbg !1769

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1, !dbg !1771
  %55 = load i64, i64* %54, align 8, !dbg !1771
  %56 = call i64 @fiobj_dup(i64 %55), !dbg !1771
  %57 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1771
  %58 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %57, i32 0, i32 3, !dbg !1771
  %59 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %58, align 8, !dbg !1771
  %60 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1771
  %61 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %60, i32 0, i32 2, !dbg !1771
  %62 = load i64, i64* %61, align 8, !dbg !1771
  %63 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %59, i64 %62, !dbg !1771
  %64 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %63, i32 0, i32 1, !dbg !1771
  %65 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %64, i32 0, i32 1, !dbg !1771
  store i64 %56, i64* %65, align 8, !dbg !1771
  %66 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0, !dbg !1771
  %67 = load i64, i64* %66, align 8, !dbg !1771
  %68 = call i64 @fiobj_dup(i64 %67), !dbg !1771
  %69 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1771
  %70 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %69, i32 0, i32 3, !dbg !1771
  %71 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %70, align 8, !dbg !1771
  %72 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1771
  %73 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %72, i32 0, i32 2, !dbg !1771
  %74 = load i64, i64* %73, align 8, !dbg !1771
  %75 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %71, i64 %74, !dbg !1771
  %76 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %75, i32 0, i32 1, !dbg !1771
  %77 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %76, i32 0, i32 0, !dbg !1771
  store i64 %68, i64* %77, align 8, !dbg !1771
  br label %78, !dbg !1771

78:                                               ; preds = %53
  %79 = load i64, i64* %10, align 8, !dbg !1773
  %80 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1774
  %81 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %80, i32 0, i32 3, !dbg !1775
  %82 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %81, align 8, !dbg !1775
  %83 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1776
  %84 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %83, i32 0, i32 2, !dbg !1777
  %85 = load i64, i64* %84, align 8, !dbg !1777
  %86 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %82, i64 %85, !dbg !1774
  %87 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %86, i32 0, i32 0, !dbg !1778
  store i64 %79, i64* %87, align 8, !dbg !1779
  %88 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1780
  %89 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %88, i32 0, i32 2, !dbg !1781
  %90 = load i64, i64* %89, align 8, !dbg !1782
  %91 = add i64 %90, 1, !dbg !1782
  store i64 %91, i64* %89, align 8, !dbg !1782
  %92 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1783
  %93 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %92, i32 0, i32 0, !dbg !1784
  %94 = load i64, i64* %93, align 8, !dbg !1785
  %95 = add i64 %94, 1, !dbg !1785
  store i64 %95, i64* %93, align 8, !dbg !1785
  %96 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1786
  call void @fio_hash___rehash(%struct.fio_hash___s* %96), !dbg !1787
  %97 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1788
  %98 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %97, i32 0, i32 3, !dbg !1789
  %99 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %98, align 8, !dbg !1789
  %100 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1790
  %101 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %100, i32 0, i32 2, !dbg !1791
  %102 = load i64, i64* %101, align 8, !dbg !1791
  %103 = sub i64 %102, 1, !dbg !1792
  %104 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %99, i64 %103, !dbg !1788
  %105 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %104, i32 0, i32 1, !dbg !1793
  %106 = bitcast %struct.fio_hash___couplet_s* %7 to i8*, !dbg !1793
  %107 = bitcast %struct.fio_hash___couplet_s* %105 to i8*, !dbg !1793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 16, i1 false), !dbg !1793
  br label %226, !dbg !1794

108:                                              ; preds = %41
  %109 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1795
  %110 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %109, i32 0, i32 1, !dbg !1797
  %111 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %110, align 8, !dbg !1797
  %112 = icmp ne %struct.fio_hash____ordered_s_* %111, null, !dbg !1795
  br i1 %112, label %113, label %175, !dbg !1798

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4, !dbg !1799
  %115 = icmp ne i32 %114, 0, !dbg !1799
  br i1 %115, label %135, label %116, !dbg !1802

116:                                              ; preds = %113
  br label %117, !dbg !1803

117:                                              ; preds = %116
  br label %118, !dbg !1805

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0, !dbg !1807
  %120 = load i64, i64* %119, align 8, !dbg !1807
  call void @fiobj_free(i64 %120), !dbg !1807
  %121 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0, !dbg !1807
  store i64 0, i64* %121, align 8, !dbg !1807
  br label %122, !dbg !1807

122:                                              ; preds = %118
  br label %123, !dbg !1805

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1, !dbg !1809
  %125 = load i64, i64* %124, align 8, !dbg !1809
  call void @fiobj_free(i64 %125), !dbg !1809
  %126 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1, !dbg !1809
  store i64 0, i64* %126, align 8, !dbg !1809
  br label %127, !dbg !1809

127:                                              ; preds = %123
  br label %128, !dbg !1805

128:                                              ; preds = %127
  %129 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1811
  %130 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %129, i32 0, i32 1, !dbg !1812
  %131 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %130, align 8, !dbg !1812
  %132 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %131, i32 0, i32 1, !dbg !1813
  %133 = bitcast %struct.fio_hash___couplet_s* %7 to i8*, !dbg !1813
  %134 = bitcast %struct.fio_hash___couplet_s* %132 to i8*, !dbg !1813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false), !dbg !1813
  br label %226, !dbg !1814

135:                                              ; preds = %113
  %136 = load i64*, i64** %12, align 8, !dbg !1815
  %137 = icmp ne i64* %136, null, !dbg !1815
  br i1 %137, label %138, label %147, !dbg !1817

138:                                              ; preds = %135
  %139 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1818
  %140 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %139, i32 0, i32 1, !dbg !1818
  %141 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %140, align 8, !dbg !1818
  %142 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %141, i32 0, i32 1, !dbg !1818
  %143 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %142, i32 0, i32 1, !dbg !1818
  %144 = load i64, i64* %143, align 8, !dbg !1818
  %145 = call i64 @fiobj_dup(i64 %144), !dbg !1818
  %146 = load i64*, i64** %12, align 8, !dbg !1818
  store i64 %145, i64* %146, align 8, !dbg !1818
  br label %147, !dbg !1820

147:                                              ; preds = %138, %135
  br label %148, !dbg !1821

148:                                              ; preds = %147
  %149 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1822
  %150 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %149, i32 0, i32 1, !dbg !1822
  %151 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %150, align 8, !dbg !1822
  %152 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %151, i32 0, i32 1, !dbg !1822
  %153 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %152, i32 0, i32 1, !dbg !1822
  %154 = load i64, i64* %153, align 8, !dbg !1822
  call void @fiobj_free(i64 %154), !dbg !1822
  %155 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1822
  %156 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %155, i32 0, i32 1, !dbg !1822
  %157 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %156, align 8, !dbg !1822
  %158 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %157, i32 0, i32 1, !dbg !1822
  %159 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %158, i32 0, i32 1, !dbg !1822
  store i64 0, i64* %159, align 8, !dbg !1822
  br label %160, !dbg !1822

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1, !dbg !1824
  %162 = load i64, i64* %161, align 8, !dbg !1824
  %163 = call i64 @fiobj_dup(i64 %162), !dbg !1824
  %164 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1824
  %165 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %164, i32 0, i32 1, !dbg !1824
  %166 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %165, align 8, !dbg !1824
  %167 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %166, i32 0, i32 1, !dbg !1824
  %168 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %167, i32 0, i32 1, !dbg !1824
  store i64 %163, i64* %168, align 8, !dbg !1824
  %169 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1825
  %170 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %169, i32 0, i32 1, !dbg !1826
  %171 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %170, align 8, !dbg !1826
  %172 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %171, i32 0, i32 1, !dbg !1827
  %173 = bitcast %struct.fio_hash___couplet_s* %7 to i8*, !dbg !1827
  %174 = bitcast %struct.fio_hash___couplet_s* %172 to i8*, !dbg !1827
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 16, i1 false), !dbg !1827
  br label %226, !dbg !1828

175:                                              ; preds = %108
  %176 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1829
  %177 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %176, i32 0, i32 3, !dbg !1831
  %178 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %177, align 8, !dbg !1831
  %179 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1832
  %180 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %179, i32 0, i32 2, !dbg !1833
  %181 = load i64, i64* %180, align 8, !dbg !1833
  %182 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %178, i64 %181, !dbg !1834
  %183 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1835
  %184 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %183, i32 0, i32 1, !dbg !1836
  store %struct.fio_hash____ordered_s_* %182, %struct.fio_hash____ordered_s_** %184, align 8, !dbg !1837
  %185 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1838
  %186 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %185, i32 0, i32 2, !dbg !1839
  %187 = load i64, i64* %186, align 8, !dbg !1840
  %188 = add i64 %187, 1, !dbg !1840
  store i64 %188, i64* %186, align 8, !dbg !1840
  %189 = load %struct.fio_hash___s*, %struct.fio_hash___s** %9, align 8, !dbg !1841
  %190 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %189, i32 0, i32 0, !dbg !1842
  %191 = load i64, i64* %190, align 8, !dbg !1843
  %192 = add i64 %191, 1, !dbg !1843
  store i64 %192, i64* %190, align 8, !dbg !1843
  br label %193

193:                                              ; preds = %175
  %194 = load i64, i64* %10, align 8, !dbg !1844
  %195 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1845
  %196 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %195, i32 0, i32 0, !dbg !1846
  store i64 %194, i64* %196, align 8, !dbg !1847
  %197 = load i64, i64* %10, align 8, !dbg !1848
  %198 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1849
  %199 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %198, i32 0, i32 1, !dbg !1850
  %200 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %199, align 8, !dbg !1850
  %201 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %200, i32 0, i32 0, !dbg !1851
  store i64 %197, i64* %201, align 8, !dbg !1852
  br label %202, !dbg !1853

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 1, !dbg !1854
  %204 = load i64, i64* %203, align 8, !dbg !1854
  %205 = call i64 @fiobj_dup(i64 %204), !dbg !1854
  %206 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1854
  %207 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %206, i32 0, i32 1, !dbg !1854
  %208 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %207, align 8, !dbg !1854
  %209 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %208, i32 0, i32 1, !dbg !1854
  %210 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %209, i32 0, i32 1, !dbg !1854
  store i64 %205, i64* %210, align 8, !dbg !1854
  %211 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %8, i32 0, i32 0, !dbg !1854
  %212 = load i64, i64* %211, align 8, !dbg !1854
  %213 = call i64 @fiobj_dup(i64 %212), !dbg !1854
  %214 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1854
  %215 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %214, i32 0, i32 1, !dbg !1854
  %216 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %215, align 8, !dbg !1854
  %217 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %216, i32 0, i32 1, !dbg !1854
  %218 = getelementptr inbounds %struct.fio_hash___couplet_s, %struct.fio_hash___couplet_s* %217, i32 0, i32 0, !dbg !1854
  store i64 %213, i64* %218, align 8, !dbg !1854
  br label %219, !dbg !1854

219:                                              ; preds = %202
  %220 = load %struct.fio_hash____map_s_*, %struct.fio_hash____map_s_** %13, align 8, !dbg !1856
  %221 = getelementptr inbounds %struct.fio_hash____map_s_, %struct.fio_hash____map_s_* %220, i32 0, i32 1, !dbg !1857
  %222 = load %struct.fio_hash____ordered_s_*, %struct.fio_hash____ordered_s_** %221, align 8, !dbg !1857
  %223 = getelementptr inbounds %struct.fio_hash____ordered_s_, %struct.fio_hash____ordered_s_* %222, i32 0, i32 1, !dbg !1858
  %224 = bitcast %struct.fio_hash___couplet_s* %7 to i8*, !dbg !1858
  %225 = bitcast %struct.fio_hash___couplet_s* %223 to i8*, !dbg !1858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 16, i1 false), !dbg !1858
  br label %226, !dbg !1859

226:                                              ; preds = %219, %160, %128, %78
  %227 = bitcast %struct.fio_hash___couplet_s* %7 to { i64, i64 }*, !dbg !1860
  %228 = load { i64, i64 }, { i64, i64 }* %227, align 8, !dbg !1860
  ret { i64, i64 } %228, !dbg !1860
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fio_hash___is_fragmented(%struct.fio_hash___s* %0) #0 !dbg !1861 {
  %2 = alloca %struct.fio_hash___s*, align 8
  store %struct.fio_hash___s* %0, %struct.fio_hash___s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fio_hash___s** %2, metadata !1862, metadata !DIExpression()), !dbg !1863
  %3 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1864
  %4 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %3, i32 0, i32 2, !dbg !1865
  %5 = load i64, i64* %4, align 8, !dbg !1865
  %6 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1866
  %7 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %6, i32 0, i32 0, !dbg !1867
  %8 = load i64, i64* %7, align 8, !dbg !1867
  %9 = sub i64 %5, %8, !dbg !1868
  %10 = load %struct.fio_hash___s*, %struct.fio_hash___s** %2, align 8, !dbg !1869
  %11 = getelementptr inbounds %struct.fio_hash___s, %struct.fio_hash___s* %10, i32 0, i32 0, !dbg !1870
  %12 = load i64, i64* %11, align 8, !dbg !1870
  %13 = lshr i64 %12, 1, !dbg !1871
  %14 = icmp ugt i64 %9, %13, !dbg !1872
  %15 = zext i1 %14 to i32, !dbg !1872
  %16 = sext i32 %15 to i64, !dbg !1873
  ret i64 %16, !dbg !1874
}

declare dso_local i64 @fiobj_str_hash(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_obj2cstr(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !1875 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1876, metadata !DIExpression()), !dbg !1877
  %4 = load i64, i64* %3, align 8, !dbg !1878
  %5 = icmp ne i64 %4, 0, !dbg !1878
  br i1 %5, label %8, label %6, !dbg !1880

6:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1881, metadata !DIExpression()), !dbg !1883
  %7 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1883
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret to i8*), i64 24, i1 false), !dbg !1883
  br label %37, !dbg !1884

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1885
  %10 = and i64 %9, 1, !dbg !1887
  %11 = icmp ne i64 %10, 0, !dbg !1887
  br i1 %11, label %12, label %15, !dbg !1888

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8, !dbg !1889
  %14 = ashr i64 %13, 1, !dbg !1890
  call void @fio_ltocstr(%struct.fio_str_info_s* sret %0, i64 %14), !dbg !1891
  br label %37, !dbg !1892

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8, !dbg !1893
  %17 = and i64 %16, 6, !dbg !1895
  %18 = icmp eq i64 %17, 6, !dbg !1896
  br i1 %18, label %19, label %31, !dbg !1897

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8, !dbg !1898
  %21 = trunc i64 %20 to i8, !dbg !1900
  %22 = zext i8 %21 to i32, !dbg !1900
  switch i32 %22, label %29 [
    i32 6, label %23
    i32 38, label %25
    i32 22, label %27
  ], !dbg !1901

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1902, metadata !DIExpression()), !dbg !1905
  %24 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1905
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.13 to i8*), i64 24, i1 false), !dbg !1905
  br label %37, !dbg !1906

25:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1907, metadata !DIExpression()), !dbg !1909
  %26 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.15 to i8*), i64 24, i1 false), !dbg !1909
  br label %37, !dbg !1910

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1911, metadata !DIExpression()), !dbg !1913
  %28 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.fio_str_info_s* @__const.fiobj_obj2cstr.ret.17 to i8*), i64 24, i1 false), !dbg !1913
  br label %37, !dbg !1914

29:                                               ; preds = %19
  br label %30, !dbg !1915

30:                                               ; preds = %29
  br label %31, !dbg !1916

31:                                               ; preds = %30, %15
  %32 = load i64, i64* %3, align 8, !dbg !1917
  %33 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %32), !dbg !1917
  %34 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %33, i32 0, i32 6, !dbg !1918
  %35 = load void (%struct.fio_str_info_s*, i64)*, void (%struct.fio_str_info_s*, i64)** %34, align 8, !dbg !1918
  %36 = load i64, i64* %3, align 8, !dbg !1919
  call void %35(%struct.fio_str_info_s* sret %0, i64 %36), !dbg !1917
  br label %37, !dbg !1920

37:                                               ; preds = %31, %27, %25, %23, %12, %6
  ret void, !dbg !1921
}

declare dso_local i64 @fio_siphash13(i8*, i64, i64, i64) #5

declare dso_local i64 @fiobj_each2(i64, i32 (i64, i8*)*, i8*) #5

declare dso_local void @fiobj_free_complex_object(i64) #5

declare dso_local void @fio_ltocstr(%struct.fio_str_info_s* sret, i64) #5

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
!llvm.module.flags = !{!154, !155, !156}
!llvm.ident = !{!157}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "each_at_key", scope: !2, file: !3, line: 72, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !81, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_hash.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
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
!19 = !{!20, !72, !42, !73, !58, !75, !61, !48, !76, !29, !77, !79}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_hash_s", file: !3, line: 45, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 448, elements: !23)
!23 = !{!24, !36}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !22, file: !3, line: 43, baseType: !25, size: 64)
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
!36 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !22, file: !3, line: 44, baseType: !37, size: 384, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_hash___s", file: !38, line: 5643, baseType: !39)
!38 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_hash___s", file: !38, line: 5826, size: 384, elements: !40)
!40 = !{!41, !45, !46, !47, !60, !67, !70, !71}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !39, file: !38, line: 5827, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !43, line: 90, baseType: !44)
!43 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !39, file: !38, line: 5828, baseType: !42, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !39, file: !38, line: 5829, baseType: !42, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ordered", scope: !39, file: !38, line: 5830, baseType: !48, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_hash____ordered_s_", file: !38, line: 5818, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_hash____ordered_s_", file: !38, line: 5815, size: 192, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !50, file: !38, line: 5816, baseType: !42, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !50, file: !38, line: 5817, baseType: !54, size: 128, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_hash___couplet_s", file: !38, line: 5598, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 5595, size: 128, elements: !56)
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !55, file: !38, line: 5596, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !42)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !55, file: !38, line: 5597, baseType: !58, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !39, file: !38, line: 5831, baseType: !61, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_hash____map_s_", file: !38, line: 5823, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_hash____map_s_", file: !38, line: 5820, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !63, file: !38, line: 5821, baseType: !42, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !63, file: !38, line: 5822, baseType: !48, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "has_collisions", scope: !39, file: !38, line: 5832, baseType: !68, size: 8, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !7)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "used_bits", scope: !39, file: !38, line: 5833, baseType: !68, size: 8, offset: 328)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "under_attack", scope: !39, file: !38, line: 5834, baseType: !68, size: 8, offset: 336)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !43, line: 87, baseType: !74)
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !44)
!78 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 27, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !34, line: 45, baseType: !44)
!81 = !{!82, !148, !150, !152, !0}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "FIOBJECT_VTABLE_HASH", scope: !2, file: !3, line: 138, type: !84, isLocal: false, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !87)
!87 = !{!88, !92, !100, !106, !111, !116, !125, !137, !142}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !86, file: !6, line: 307, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !86, file: !6, line: 309, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !58, !97, !72}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !58, !72}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !86, file: !6, line: 311, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!42, !105}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !86, file: !6, line: 313, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!77, !105}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !86, file: !6, line: 315, baseType: !112, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!77, !105, !105}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !86, file: !6, line: 317, baseType: !117, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!77, !58, !77, !121, !72}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !58, !72}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !86, file: !6, line: 320, baseType: !126, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !105}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !38, line: 287, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !38, line: 283, size: 192, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !131, file: !38, line: 284, baseType: !77, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !131, file: !38, line: 285, baseType: !77, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !131, file: !38, line: 286, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !86, file: !6, line: 322, baseType: !138, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!73, !105}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !86, file: !6, line: 324, baseType: !143, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !105}
!147 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !38, line: 433, type: !124, isLocal: false, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !38, line: 2433, type: !68, isLocal: false, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !38, line: 2434, type: !68, isLocal: false, isDefinition: true)
!154 = !{i32 7, !"Dwarf Version", i32 4}
!155 = !{i32 2, !"Debug Info Version", i32 3}
!156 = !{i32 1, !"wchar_size", i32 4}
!157 = !{!"clang version 10.0.0-4ubuntu1 "}
!158 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !38, file: !38, line: 437, type: !159, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !89, null}
!161 = !{}
!162 = !DILocalVariable(name: "format", arg: 1, scope: !158, file: !38, line: 437, type: !89)
!163 = !DILocation(line: 437, column: 28, scope: !158)
!164 = !DILocalVariable(name: "tmp___log", scope: !158, file: !38, line: 438, type: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 16384, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2048)
!168 = !DILocation(line: 438, column: 8, scope: !158)
!169 = !DILocalVariable(name: "argv", scope: !158, file: !38, line: 439, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 192, elements: !182)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !177)
!177 = !{!178, !179, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !176, file: !3, line: 439, baseType: !35, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !176, file: !3, line: 439, baseType: !35, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !176, file: !3, line: 439, baseType: !72, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !176, file: !3, line: 439, baseType: !72, size: 64, offset: 128)
!182 = !{!183}
!183 = !DISubrange(count: 1)
!184 = !DILocation(line: 439, column: 11, scope: !158)
!185 = !DILocation(line: 440, column: 3, scope: !158)
!186 = !DILocalVariable(name: "len___log", scope: !158, file: !38, line: 441, type: !124)
!187 = !DILocation(line: 441, column: 7, scope: !158)
!188 = !DILocation(line: 441, column: 29, scope: !158)
!189 = !DILocation(line: 441, column: 66, scope: !158)
!190 = !DILocation(line: 441, column: 74, scope: !158)
!191 = !DILocation(line: 441, column: 19, scope: !158)
!192 = !DILocation(line: 442, column: 3, scope: !158)
!193 = !DILocation(line: 443, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !158, file: !38, line: 443, column: 7)
!195 = !DILocation(line: 443, column: 17, scope: !194)
!196 = !DILocation(line: 443, column: 22, scope: !194)
!197 = !DILocation(line: 443, column: 25, scope: !194)
!198 = !DILocation(line: 443, column: 35, scope: !194)
!199 = !DILocation(line: 443, column: 7, scope: !158)
!200 = !DILocation(line: 444, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !38, line: 444, column: 9)
!202 = distinct !DILexicalBlock(scope: !194, file: !38, line: 443, column: 64)
!203 = !DILocation(line: 444, column: 19, scope: !201)
!204 = !DILocation(line: 444, column: 9, scope: !202)
!205 = !DILocation(line: 445, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !38, line: 444, column: 48)
!207 = !DILocation(line: 445, column: 24, scope: !206)
!208 = !DILocation(line: 445, column: 7, scope: !206)
!209 = !DILocation(line: 447, column: 17, scope: !206)
!210 = !DILocation(line: 448, column: 5, scope: !206)
!211 = !DILocation(line: 449, column: 65, scope: !212)
!212 = distinct !DILexicalBlock(scope: !201, file: !38, line: 448, column: 12)
!213 = !DILocation(line: 449, column: 7, scope: !212)
!214 = !DILocation(line: 450, column: 7, scope: !212)
!215 = !DILocation(line: 452, column: 3, scope: !202)
!216 = !DILocation(line: 453, column: 22, scope: !158)
!217 = !DILocation(line: 453, column: 3, scope: !158)
!218 = !DILocation(line: 453, column: 26, scope: !158)
!219 = !DILocation(line: 454, column: 13, scope: !158)
!220 = !DILocation(line: 454, column: 3, scope: !158)
!221 = !DILocation(line: 454, column: 24, scope: !158)
!222 = !DILocation(line: 455, column: 10, scope: !158)
!223 = !DILocation(line: 455, column: 21, scope: !158)
!224 = !DILocation(line: 455, column: 35, scope: !158)
!225 = !DILocation(line: 455, column: 3, scope: !158)
!226 = !DILocation(line: 456, column: 1, scope: !158)
!227 = distinct !DISubprogram(name: "fiobj_hash_rehash", scope: !3, file: !3, line: 49, type: !228, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !58}
!230 = !DILocalVariable(name: "h", arg: 1, scope: !227, file: !3, line: 49, type: !58)
!231 = !DILocation(line: 49, column: 30, scope: !227)
!232 = !DILocation(line: 50, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 50, column: 3)
!234 = distinct !DILexicalBlock(scope: !227, file: !3, line: 50, column: 3)
!235 = !DILocation(line: 50, column: 3, scope: !234)
!236 = !DILocation(line: 51, column: 22, scope: !227)
!237 = !DILocation(line: 51, column: 35, scope: !227)
!238 = !DILocation(line: 51, column: 3, scope: !227)
!239 = !DILocation(line: 52, column: 1, scope: !227)
!240 = distinct !DISubprogram(name: "fiobj_type_is", scope: !6, file: !6, line: 269, type: !241, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!241 = !DISubroutineType(types: !242)
!242 = !{!77, !58, !29}
!243 = !DILocalVariable(name: "o", arg: 1, scope: !240, file: !6, line: 269, type: !58)
!244 = !DILocation(line: 269, column: 39, scope: !240)
!245 = !DILocalVariable(name: "type", arg: 2, scope: !240, file: !6, line: 269, type: !29)
!246 = !DILocation(line: 269, column: 58, scope: !240)
!247 = !DILocation(line: 270, column: 11, scope: !240)
!248 = !DILocation(line: 270, column: 3, scope: !240)
!249 = !DILocation(line: 272, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !240, file: !6, line: 270, column: 17)
!251 = !DILocation(line: 272, column: 15, scope: !250)
!252 = !DILocation(line: 272, column: 39, scope: !250)
!253 = !DILocation(line: 273, column: 32, scope: !250)
!254 = !DILocation(line: 273, column: 13, scope: !250)
!255 = !DILocation(line: 273, column: 12, scope: !250)
!256 = !DILocation(line: 273, column: 38, scope: !250)
!257 = !DILocation(line: 272, column: 12, scope: !250)
!258 = !DILocation(line: 272, column: 5, scope: !250)
!259 = !DILocation(line: 275, column: 13, scope: !250)
!260 = !DILocation(line: 275, column: 15, scope: !250)
!261 = !DILocation(line: 275, column: 18, scope: !250)
!262 = !DILocation(line: 275, column: 23, scope: !250)
!263 = !DILocation(line: 275, column: 20, scope: !250)
!264 = !DILocation(line: 275, column: 12, scope: !250)
!265 = !DILocation(line: 275, column: 5, scope: !250)
!266 = !DILocation(line: 277, column: 12, scope: !250)
!267 = !DILocation(line: 277, column: 17, scope: !250)
!268 = !DILocation(line: 277, column: 14, scope: !250)
!269 = !DILocation(line: 277, column: 5, scope: !250)
!270 = !DILocation(line: 279, column: 12, scope: !250)
!271 = !DILocation(line: 279, column: 17, scope: !250)
!272 = !DILocation(line: 279, column: 14, scope: !250)
!273 = !DILocation(line: 279, column: 5, scope: !250)
!274 = !DILocation(line: 281, column: 38, scope: !250)
!275 = !DILocation(line: 281, column: 40, scope: !250)
!276 = !DILocation(line: 281, column: 64, scope: !250)
!277 = !DILocation(line: 281, column: 69, scope: !250)
!278 = !DILocation(line: 282, column: 14, scope: !250)
!279 = !DILocation(line: 282, column: 16, scope: !250)
!280 = !DILocation(line: 282, column: 43, scope: !250)
!281 = !DILocation(line: 282, column: 68, scope: !250)
!282 = !DILocation(line: 281, column: 12, scope: !250)
!283 = !DILocation(line: 281, column: 5, scope: !250)
!284 = !DILocation(line: 287, column: 16, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !6, line: 286, column: 29)
!286 = distinct !DILexicalBlock(scope: !250, file: !6, line: 286, column: 9)
!287 = !DILocation(line: 287, column: 18, scope: !285)
!288 = !DILocation(line: 287, column: 42, scope: !285)
!289 = !DILocation(line: 287, column: 47, scope: !285)
!290 = !DILocation(line: 288, column: 16, scope: !285)
!291 = !DILocation(line: 288, column: 18, scope: !285)
!292 = !DILocation(line: 288, column: 45, scope: !285)
!293 = !DILocation(line: 0, scope: !285)
!294 = !DILocation(line: 287, column: 14, scope: !285)
!295 = !DILocation(line: 287, column: 7, scope: !285)
!296 = !DILocation(line: 295, column: 12, scope: !250)
!297 = !DILocation(line: 295, column: 34, scope: !250)
!298 = !DILocation(line: 296, column: 32, scope: !250)
!299 = !DILocation(line: 296, column: 12, scope: !250)
!300 = !DILocation(line: 296, column: 52, scope: !250)
!301 = !DILocation(line: 296, column: 49, scope: !250)
!302 = !DILocation(line: 0, scope: !250)
!303 = !DILocation(line: 295, column: 5, scope: !250)
!304 = !DILocation(line: 298, column: 10, scope: !240)
!305 = !DILocation(line: 298, column: 32, scope: !240)
!306 = !DILocation(line: 298, column: 55, scope: !240)
!307 = !DILocation(line: 298, column: 35, scope: !240)
!308 = !DILocation(line: 298, column: 75, scope: !240)
!309 = !DILocation(line: 298, column: 72, scope: !240)
!310 = !DILocation(line: 0, scope: !240)
!311 = !DILocation(line: 298, column: 3, scope: !240)
!312 = !DILocation(line: 299, column: 1, scope: !240)
!313 = distinct !DISubprogram(name: "fio_hash___rehash", scope: !38, file: !38, line: 6276, type: !314, scopeLine: 6276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!317 = !DILocalVariable(name: "set", arg: 1, scope: !313, file: !38, line: 6276, type: !316)
!318 = !DILocation(line: 6276, column: 46, scope: !313)
!319 = !DILocation(line: 6277, column: 37, scope: !313)
!320 = !DILocation(line: 6277, column: 3, scope: !313)
!321 = !DILocation(line: 6278, column: 3, scope: !313)
!322 = !DILocation(line: 6278, column: 8, scope: !313)
!323 = !DILocation(line: 6278, column: 23, scope: !313)
!324 = !DILocalVariable(name: "attempts", scope: !313, file: !38, line: 6279, type: !68)
!325 = !DILocation(line: 6279, column: 11, scope: !313)
!326 = !DILocation(line: 6279, column: 3, scope: !313)
!327 = !DILabel(scope: !313, name: "restart", file: !38, line: 6280)
!328 = !DILocation(line: 6280, column: 1, scope: !313)
!329 = !DILocation(line: 6281, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !313, file: !38, line: 6281, column: 7)
!331 = !DILocation(line: 6281, column: 12, scope: !330)
!332 = !DILocation(line: 6281, column: 22, scope: !330)
!333 = !DILocation(line: 6281, column: 28, scope: !330)
!334 = !DILocation(line: 6281, column: 31, scope: !330)
!335 = !DILocation(line: 6281, column: 42, scope: !330)
!336 = !DILocation(line: 6281, column: 47, scope: !330)
!337 = !DILocation(line: 6281, column: 50, scope: !330)
!338 = !DILocation(line: 6281, column: 55, scope: !330)
!339 = !DILocation(line: 6281, column: 7, scope: !313)
!340 = !DILocation(line: 6282, column: 5, scope: !341)
!341 = distinct !DILexicalBlock(scope: !330, file: !38, line: 6281, column: 71)
!342 = !DILocation(line: 6282, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !38, line: 6282, column: 5)
!344 = distinct !DILexicalBlock(scope: !341, file: !38, line: 6282, column: 5)
!345 = !DILocation(line: 6282, column: 5, scope: !344)
!346 = !DILocation(line: 6282, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !38, line: 6282, column: 5)
!348 = !DILocation(line: 6289, column: 5, scope: !341)
!349 = !DILocation(line: 6291, column: 34, scope: !313)
!350 = !DILocation(line: 6291, column: 3, scope: !313)
!351 = !DILocalVariable(name: "end", scope: !352, file: !38, line: 6293, type: !353)
!352 = distinct !DILexicalBlock(scope: !313, file: !38, line: 6292, column: 3)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!356 = !DILocation(line: 6293, column: 40, scope: !352)
!357 = !DILocation(line: 6293, column: 46, scope: !352)
!358 = !DILocation(line: 6293, column: 51, scope: !352)
!359 = !DILocation(line: 6293, column: 61, scope: !352)
!360 = !DILocation(line: 6293, column: 66, scope: !352)
!361 = !DILocation(line: 6293, column: 59, scope: !352)
!362 = !DILocalVariable(name: "pos", scope: !363, file: !38, line: 6294, type: !48)
!363 = distinct !DILexicalBlock(scope: !352, file: !38, line: 6294, column: 5)
!364 = !DILocation(line: 6294, column: 33, scope: !363)
!365 = !DILocation(line: 6294, column: 39, scope: !363)
!366 = !DILocation(line: 6294, column: 44, scope: !363)
!367 = !DILocation(line: 6294, column: 10, scope: !363)
!368 = !DILocation(line: 6294, column: 53, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !38, line: 6294, column: 5)
!370 = !DILocation(line: 6294, column: 59, scope: !369)
!371 = !DILocation(line: 6294, column: 57, scope: !369)
!372 = !DILocation(line: 6294, column: 5, scope: !363)
!373 = !DILocalVariable(name: "mp", scope: !374, file: !38, line: 6295, type: !61)
!374 = distinct !DILexicalBlock(scope: !369, file: !38, line: 6294, column: 71)
!375 = !DILocation(line: 6295, column: 26, scope: !374)
!376 = !DILocation(line: 6296, column: 36, scope: !374)
!377 = !DILocation(line: 6296, column: 41, scope: !374)
!378 = !DILocation(line: 6296, column: 46, scope: !374)
!379 = !DILocation(line: 6296, column: 52, scope: !374)
!380 = !DILocation(line: 6296, column: 57, scope: !374)
!381 = !DILocation(line: 6296, column: 11, scope: !374)
!382 = !DILocation(line: 6297, column: 12, scope: !383)
!383 = distinct !DILexicalBlock(scope: !374, file: !38, line: 6297, column: 11)
!384 = !DILocation(line: 6297, column: 11, scope: !374)
!385 = !DILocation(line: 6298, column: 11, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !38, line: 6297, column: 16)
!387 = !DILocation(line: 6298, column: 16, scope: !386)
!388 = !DILocation(line: 6298, column: 9, scope: !386)
!389 = !DILocation(line: 6299, column: 9, scope: !386)
!390 = !DILocation(line: 6301, column: 17, scope: !374)
!391 = !DILocation(line: 6301, column: 7, scope: !374)
!392 = !DILocation(line: 6301, column: 11, scope: !374)
!393 = !DILocation(line: 6301, column: 15, scope: !374)
!394 = !DILocation(line: 6302, column: 18, scope: !374)
!395 = !DILocation(line: 6302, column: 23, scope: !374)
!396 = !DILocation(line: 6302, column: 7, scope: !374)
!397 = !DILocation(line: 6302, column: 11, scope: !374)
!398 = !DILocation(line: 6302, column: 16, scope: !374)
!399 = !DILocation(line: 6303, column: 5, scope: !374)
!400 = !DILocation(line: 6294, column: 64, scope: !369)
!401 = !DILocation(line: 6294, column: 5, scope: !369)
!402 = distinct !{!402, !372, !403}
!403 = !DILocation(line: 6303, column: 5, scope: !363)
!404 = !DILocation(line: 6305, column: 1, scope: !313)
!405 = distinct !DISubprogram(name: "fiobj_hash_key_in_loop", scope: !3, file: !3, line: 113, type: !406, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!406 = !DISubroutineType(types: !407)
!407 = !{!58}
!408 = !DILocation(line: 113, column: 45, scope: !405)
!409 = !DILocation(line: 113, column: 38, scope: !405)
!410 = distinct !DISubprogram(name: "fiobj_hash_count", scope: !3, file: !3, line: 123, type: !109, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!411 = !DILocalVariable(name: "o", arg: 1, scope: !410, file: !3, line: 123, type: !105)
!412 = !DILocation(line: 123, column: 37, scope: !410)
!413 = !DILocation(line: 124, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 124, column: 3)
!415 = distinct !DILexicalBlock(scope: !410, file: !3, line: 124, column: 3)
!416 = !DILocation(line: 124, column: 3, scope: !415)
!417 = !DILocation(line: 125, column: 28, scope: !410)
!418 = !DILocation(line: 125, column: 41, scope: !410)
!419 = !DILocation(line: 125, column: 10, scope: !410)
!420 = !DILocation(line: 125, column: 3, scope: !410)
!421 = distinct !DISubprogram(name: "fio_hash___count", scope: !38, file: !38, line: 6223, type: !422, scopeLine: 6223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!422 = !DISubroutineType(types: !423)
!423 = !{!77, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!426 = !DILocalVariable(name: "set", arg: 1, scope: !421, file: !38, line: 6223, type: !424)
!427 = !DILocation(line: 6223, column: 60, scope: !421)
!428 = !DILocation(line: 6224, column: 18, scope: !421)
!429 = !DILocation(line: 6224, column: 23, scope: !421)
!430 = !DILocation(line: 6224, column: 3, scope: !421)
!431 = distinct !DISubprogram(name: "fiobj_hash2num", scope: !3, file: !3, line: 128, type: !140, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!432 = !DILocalVariable(name: "o", arg: 1, scope: !431, file: !3, line: 128, type: !105)
!433 = !DILocation(line: 128, column: 37, scope: !431)
!434 = !DILocation(line: 128, column: 76, scope: !431)
!435 = !DILocation(line: 128, column: 59, scope: !431)
!436 = !DILocation(line: 128, column: 42, scope: !431)
!437 = distinct !DISubprogram(name: "fiobj_hash_dealloc", scope: !3, file: !3, line: 58, type: !95, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!438 = !DILocalVariable(name: "o", arg: 1, scope: !437, file: !3, line: 58, type: !58)
!439 = !DILocation(line: 58, column: 38, scope: !437)
!440 = !DILocalVariable(name: "task", arg: 2, scope: !437, file: !3, line: 58, type: !97)
!441 = !DILocation(line: 58, column: 48, scope: !437)
!442 = !DILocalVariable(name: "arg", arg: 3, scope: !437, file: !3, line: 59, type: !72)
!443 = !DILocation(line: 59, column: 38, scope: !437)
!444 = !DILocalVariable(name: "i", scope: !445, file: !3, line: 60, type: !48)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 60, column: 3)
!446 = !DILocation(line: 60, column: 3, scope: !445)
!447 = !DILocation(line: 60, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !3, line: 60, column: 3)
!449 = !DILocation(line: 0, scope: !448)
!450 = !DILocation(line: 61, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 61, column: 9)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 60, column: 43)
!453 = !DILocation(line: 61, column: 12, scope: !451)
!454 = !DILocation(line: 61, column: 16, scope: !451)
!455 = !DILocation(line: 61, column: 9, scope: !452)
!456 = !DILocation(line: 62, column: 7, scope: !451)
!457 = !DILocation(line: 62, column: 19, scope: !451)
!458 = !DILocation(line: 62, column: 22, scope: !451)
!459 = !DILocation(line: 62, column: 26, scope: !451)
!460 = !DILocation(line: 62, column: 31, scope: !451)
!461 = !DILocation(line: 63, column: 23, scope: !452)
!462 = !DILocation(line: 63, column: 26, scope: !452)
!463 = !DILocation(line: 63, column: 30, scope: !452)
!464 = !DILocation(line: 63, column: 5, scope: !452)
!465 = !DILocation(line: 64, column: 5, scope: !452)
!466 = !DILocation(line: 64, column: 8, scope: !452)
!467 = !DILocation(line: 64, column: 12, scope: !452)
!468 = !DILocation(line: 64, column: 16, scope: !452)
!469 = !DILocation(line: 65, column: 5, scope: !452)
!470 = !DILocation(line: 65, column: 8, scope: !452)
!471 = !DILocation(line: 65, column: 12, scope: !452)
!472 = !DILocation(line: 65, column: 16, scope: !452)
!473 = !DILocation(line: 66, column: 3, scope: !452)
!474 = distinct !{!474, !446, !475}
!475 = !DILocation(line: 66, column: 3, scope: !445)
!476 = !DILocation(line: 67, column: 3, scope: !437)
!477 = !DILocation(line: 67, column: 16, scope: !437)
!478 = !DILocation(line: 67, column: 21, scope: !437)
!479 = !DILocation(line: 67, column: 27, scope: !437)
!480 = !DILocation(line: 68, column: 20, scope: !437)
!481 = !DILocation(line: 68, column: 33, scope: !437)
!482 = !DILocation(line: 68, column: 3, scope: !437)
!483 = !DILocation(line: 69, column: 12, scope: !437)
!484 = !DILocation(line: 69, column: 3, scope: !437)
!485 = !DILocation(line: 70, column: 1, scope: !437)
!486 = distinct !DISubprogram(name: "fiobj_hash_is_true", scope: !3, file: !3, line: 130, type: !109, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!487 = !DILocalVariable(name: "o", arg: 1, scope: !486, file: !3, line: 130, type: !105)
!488 = !DILocation(line: 130, column: 46, scope: !486)
!489 = !DILocation(line: 131, column: 27, scope: !486)
!490 = !DILocation(line: 131, column: 10, scope: !486)
!491 = !DILocation(line: 131, column: 30, scope: !486)
!492 = !DILocation(line: 131, column: 3, scope: !486)
!493 = distinct !DISubprogram(name: "fiobj_hash_is_eq", scope: !3, file: !3, line: 115, type: !114, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!494 = !DILocalVariable(name: "self", arg: 1, scope: !493, file: !3, line: 115, type: !105)
!495 = !DILocation(line: 115, column: 44, scope: !493)
!496 = !DILocalVariable(name: "other", arg: 2, scope: !493, file: !3, line: 115, type: !105)
!497 = !DILocation(line: 115, column: 62, scope: !493)
!498 = !DILocation(line: 116, column: 25, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !3, line: 116, column: 7)
!500 = !DILocation(line: 116, column: 41, scope: !499)
!501 = !DILocation(line: 116, column: 7, scope: !499)
!502 = !DILocation(line: 117, column: 25, scope: !499)
!503 = !DILocation(line: 117, column: 42, scope: !499)
!504 = !DILocation(line: 117, column: 7, scope: !499)
!505 = !DILocation(line: 116, column: 47, scope: !499)
!506 = !DILocation(line: 116, column: 7, scope: !493)
!507 = !DILocation(line: 118, column: 5, scope: !499)
!508 = !DILocation(line: 119, column: 3, scope: !493)
!509 = !DILocation(line: 120, column: 1, scope: !493)
!510 = distinct !DISubprogram(name: "fiobj_hash_each1", scope: !3, file: !3, line: 74, type: !119, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!511 = !DILocalVariable(name: "o", arg: 1, scope: !510, file: !3, line: 74, type: !58)
!512 = !DILocation(line: 74, column: 38, scope: !510)
!513 = !DILocalVariable(name: "start_at", arg: 2, scope: !510, file: !3, line: 74, type: !77)
!514 = !DILocation(line: 74, column: 48, scope: !510)
!515 = !DILocalVariable(name: "task", arg: 3, scope: !510, file: !3, line: 75, type: !121)
!516 = !DILocation(line: 75, column: 38, scope: !510)
!517 = !DILocalVariable(name: "arg", arg: 4, scope: !510, file: !3, line: 75, type: !72)
!518 = !DILocation(line: 75, column: 73, scope: !510)
!519 = !DILocation(line: 76, column: 3, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 76, column: 3)
!521 = distinct !DILexicalBlock(scope: !510, file: !3, line: 76, column: 3)
!522 = !DILocation(line: 76, column: 3, scope: !521)
!523 = !DILocalVariable(name: "old_each_at_key", scope: !510, file: !3, line: 77, type: !58)
!524 = !DILocation(line: 77, column: 9, scope: !510)
!525 = !DILocation(line: 77, column: 27, scope: !510)
!526 = !DILocalVariable(name: "hash", scope: !510, file: !3, line: 78, type: !316)
!527 = !DILocation(line: 78, column: 17, scope: !510)
!528 = !DILocation(line: 78, column: 25, scope: !510)
!529 = !DILocation(line: 78, column: 38, scope: !510)
!530 = !DILocalVariable(name: "count", scope: !510, file: !3, line: 79, type: !77)
!531 = !DILocation(line: 79, column: 10, scope: !510)
!532 = !DILocation(line: 80, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !510, file: !3, line: 80, column: 7)
!534 = !DILocation(line: 80, column: 13, scope: !533)
!535 = !DILocation(line: 80, column: 22, scope: !533)
!536 = !DILocation(line: 80, column: 28, scope: !533)
!537 = !DILocation(line: 80, column: 19, scope: !533)
!538 = !DILocation(line: 80, column: 7, scope: !510)
!539 = !DILocation(line: 82, column: 18, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 82, column: 5)
!541 = distinct !DILexicalBlock(scope: !533, file: !3, line: 80, column: 33)
!542 = !DILocation(line: 82, column: 16, scope: !540)
!543 = !DILocation(line: 82, column: 10, scope: !540)
!544 = !DILocation(line: 82, column: 28, scope: !545)
!545 = distinct !DILexicalBlock(scope: !540, file: !3, line: 82, column: 5)
!546 = !DILocation(line: 82, column: 36, scope: !545)
!547 = !DILocation(line: 82, column: 42, scope: !545)
!548 = !DILocation(line: 82, column: 34, scope: !545)
!549 = !DILocation(line: 82, column: 5, scope: !540)
!550 = !DILocation(line: 83, column: 21, scope: !551)
!551 = distinct !DILexicalBlock(scope: !545, file: !3, line: 82, column: 58)
!552 = !DILocation(line: 83, column: 27, scope: !551)
!553 = !DILocation(line: 83, column: 35, scope: !551)
!554 = !DILocation(line: 83, column: 42, scope: !551)
!555 = !DILocation(line: 83, column: 46, scope: !551)
!556 = !DILocation(line: 83, column: 19, scope: !551)
!557 = !DILocation(line: 84, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !551, file: !3, line: 84, column: 11)
!559 = !DILocation(line: 84, column: 23, scope: !558)
!560 = !DILocation(line: 84, column: 29, scope: !558)
!561 = !DILocation(line: 84, column: 37, scope: !558)
!562 = !DILocation(line: 84, column: 44, scope: !558)
!563 = !DILocation(line: 84, column: 48, scope: !558)
!564 = !DILocation(line: 84, column: 53, scope: !558)
!565 = !DILocation(line: 84, column: 58, scope: !558)
!566 = !DILocation(line: 84, column: 11, scope: !551)
!567 = !DILocation(line: 85, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !558, file: !3, line: 84, column: 65)
!569 = !DILocation(line: 86, column: 9, scope: !568)
!570 = !DILocation(line: 88, column: 5, scope: !551)
!571 = !DILocation(line: 82, column: 49, scope: !545)
!572 = !DILocation(line: 82, column: 5, scope: !545)
!573 = distinct !{!573, !549, !574}
!574 = !DILocation(line: 88, column: 5, scope: !540)
!575 = !DILocation(line: 89, column: 3, scope: !541)
!576 = !DILocalVariable(name: "pos", scope: !577, file: !3, line: 90, type: !77)
!577 = distinct !DILexicalBlock(scope: !533, file: !3, line: 89, column: 10)
!578 = !DILocation(line: 90, column: 12, scope: !577)
!579 = !DILocation(line: 91, column: 5, scope: !577)
!580 = !DILocation(line: 91, column: 12, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 91, column: 5)
!582 = distinct !DILexicalBlock(scope: !577, file: !3, line: 91, column: 5)
!583 = !DILocation(line: 91, column: 18, scope: !581)
!584 = !DILocation(line: 91, column: 16, scope: !581)
!585 = !DILocation(line: 91, column: 27, scope: !581)
!586 = !DILocation(line: 91, column: 30, scope: !581)
!587 = !DILocation(line: 91, column: 36, scope: !581)
!588 = !DILocation(line: 91, column: 42, scope: !581)
!589 = !DILocation(line: 91, column: 34, scope: !581)
!590 = !DILocation(line: 0, scope: !581)
!591 = !DILocation(line: 91, column: 5, scope: !582)
!592 = !DILocation(line: 93, column: 11, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 93, column: 11)
!594 = distinct !DILexicalBlock(scope: !581, file: !3, line: 91, column: 54)
!595 = !DILocation(line: 93, column: 17, scope: !593)
!596 = !DILocation(line: 93, column: 25, scope: !593)
!597 = !DILocation(line: 93, column: 30, scope: !593)
!598 = !DILocation(line: 93, column: 34, scope: !593)
!599 = !DILocation(line: 93, column: 38, scope: !593)
!600 = !DILocation(line: 93, column: 11, scope: !594)
!601 = !DILocation(line: 94, column: 9, scope: !593)
!602 = !DILocation(line: 96, column: 9, scope: !593)
!603 = !DILocation(line: 97, column: 5, scope: !594)
!604 = !DILocation(line: 91, column: 47, scope: !581)
!605 = !DILocation(line: 91, column: 5, scope: !581)
!606 = distinct !{!606, !591, !607}
!607 = !DILocation(line: 97, column: 5, scope: !582)
!608 = !DILocation(line: 98, column: 5, scope: !577)
!609 = !DILocation(line: 98, column: 12, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 98, column: 5)
!611 = distinct !DILexicalBlock(scope: !577, file: !3, line: 98, column: 5)
!612 = !DILocation(line: 98, column: 18, scope: !610)
!613 = !DILocation(line: 98, column: 24, scope: !610)
!614 = !DILocation(line: 98, column: 16, scope: !610)
!615 = !DILocation(line: 98, column: 5, scope: !611)
!616 = !DILocation(line: 100, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 100, column: 11)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 98, column: 36)
!619 = !DILocation(line: 100, column: 17, scope: !617)
!620 = !DILocation(line: 100, column: 25, scope: !617)
!621 = !DILocation(line: 100, column: 30, scope: !617)
!622 = !DILocation(line: 100, column: 34, scope: !617)
!623 = !DILocation(line: 100, column: 38, scope: !617)
!624 = !DILocation(line: 100, column: 11, scope: !618)
!625 = !DILocation(line: 101, column: 9, scope: !617)
!626 = !DILocation(line: 102, column: 7, scope: !618)
!627 = !DILocation(line: 103, column: 21, scope: !618)
!628 = !DILocation(line: 103, column: 27, scope: !618)
!629 = !DILocation(line: 103, column: 35, scope: !618)
!630 = !DILocation(line: 103, column: 40, scope: !618)
!631 = !DILocation(line: 103, column: 44, scope: !618)
!632 = !DILocation(line: 103, column: 19, scope: !618)
!633 = !DILocation(line: 104, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !618, file: !3, line: 104, column: 11)
!635 = !DILocation(line: 104, column: 23, scope: !634)
!636 = !DILocation(line: 104, column: 29, scope: !634)
!637 = !DILocation(line: 104, column: 37, scope: !634)
!638 = !DILocation(line: 104, column: 42, scope: !634)
!639 = !DILocation(line: 104, column: 46, scope: !634)
!640 = !DILocation(line: 104, column: 51, scope: !634)
!641 = !DILocation(line: 104, column: 56, scope: !634)
!642 = !DILocation(line: 104, column: 11, scope: !618)
!643 = !DILocation(line: 105, column: 9, scope: !634)
!644 = !DILocation(line: 106, column: 5, scope: !618)
!645 = !DILocation(line: 98, column: 29, scope: !610)
!646 = !DILocation(line: 98, column: 5, scope: !610)
!647 = distinct !{!647, !615, !648}
!648 = !DILocation(line: 106, column: 5, scope: !611)
!649 = !DILabel(scope: !510, name: "end", file: !3, line: 108)
!650 = !DILocation(line: 108, column: 1, scope: !510)
!651 = !DILocation(line: 109, column: 17, scope: !510)
!652 = !DILocation(line: 109, column: 15, scope: !510)
!653 = !DILocation(line: 110, column: 10, scope: !510)
!654 = !DILocation(line: 110, column: 3, scope: !510)
!655 = distinct !DISubprogram(name: "fiobj_hash_new", scope: !3, file: !3, line: 160, type: !406, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!656 = !DILocalVariable(name: "h", scope: !655, file: !3, line: 161, type: !20)
!657 = !DILocation(line: 161, column: 17, scope: !655)
!658 = !DILocation(line: 161, column: 21, scope: !655)
!659 = !DILocation(line: 162, column: 3, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 162, column: 3)
!661 = !DILexicalBlockFile(scope: !655, file: !3, discriminator: 0)
!662 = !DILocation(line: 162, column: 3, scope: !661)
!663 = !DILocation(line: 162, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !3, line: 162, column: 3)
!665 = !DILocation(line: 162, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 162, column: 3)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 162, column: 3)
!668 = !DILocation(line: 162, column: 3, scope: !667)
!669 = !DILocation(line: 162, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !3, line: 162, column: 3)
!671 = !DILocation(line: 163, column: 4, scope: !661)
!672 = !DILocation(line: 163, column: 8, scope: !661)
!673 = !DILocation(line: 163, column: 22, scope: !661)
!674 = !DILocation(line: 163, column: 31, scope: !661)
!675 = !DILocation(line: 164, column: 31, scope: !661)
!676 = !DILocation(line: 165, column: 17, scope: !661)
!677 = !DILocation(line: 165, column: 10, scope: !661)
!678 = !DILocation(line: 165, column: 19, scope: !661)
!679 = !DILocation(line: 165, column: 3, scope: !661)
!680 = distinct !DISubprogram(name: "fiobj_hash_new2", scope: !3, file: !3, line: 175, type: !681, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!681 = !DISubroutineType(types: !682)
!682 = !{!58, !77}
!683 = !DILocalVariable(name: "capa", arg: 1, scope: !680, file: !3, line: 175, type: !77)
!684 = !DILocation(line: 175, column: 30, scope: !680)
!685 = !DILocalVariable(name: "h", scope: !680, file: !3, line: 176, type: !20)
!686 = !DILocation(line: 176, column: 17, scope: !680)
!687 = !DILocation(line: 176, column: 21, scope: !680)
!688 = !DILocation(line: 177, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 177, column: 3)
!690 = !DILexicalBlockFile(scope: !680, file: !3, discriminator: 0)
!691 = !DILocation(line: 177, column: 3, scope: !690)
!692 = !DILocation(line: 177, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 177, column: 3)
!694 = !DILocation(line: 177, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 177, column: 3)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 177, column: 3)
!697 = !DILocation(line: 177, column: 3, scope: !696)
!698 = !DILocation(line: 177, column: 3, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !3, line: 177, column: 3)
!700 = !DILocation(line: 178, column: 4, scope: !690)
!701 = !DILocation(line: 178, column: 8, scope: !690)
!702 = !DILocation(line: 178, column: 22, scope: !690)
!703 = !DILocation(line: 178, column: 31, scope: !690)
!704 = !DILocation(line: 179, column: 31, scope: !690)
!705 = !DILocation(line: 180, column: 28, scope: !690)
!706 = !DILocation(line: 180, column: 31, scope: !690)
!707 = !DILocation(line: 180, column: 37, scope: !690)
!708 = !DILocation(line: 180, column: 3, scope: !690)
!709 = !DILocation(line: 181, column: 17, scope: !690)
!710 = !DILocation(line: 181, column: 10, scope: !690)
!711 = !DILocation(line: 181, column: 19, scope: !690)
!712 = !DILocation(line: 181, column: 3, scope: !690)
!713 = distinct !DISubprogram(name: "fio_hash___capa_require", scope: !38, file: !38, line: 6240, type: !714, scopeLine: 6241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!714 = !DISubroutineType(types: !715)
!715 = !{!77, !316, !77}
!716 = !DILocalVariable(name: "set", arg: 1, scope: !713, file: !38, line: 6240, type: !316)
!717 = !DILocation(line: 6240, column: 61, scope: !713)
!718 = !DILocalVariable(name: "min_capa", arg: 2, scope: !713, file: !38, line: 6241, type: !77)
!719 = !DILocation(line: 6241, column: 54, scope: !713)
!720 = !DILocation(line: 6242, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !713, file: !38, line: 6242, column: 7)
!722 = !DILocation(line: 6242, column: 34, scope: !721)
!723 = !DILocation(line: 6242, column: 19, scope: !721)
!724 = !DILocation(line: 6242, column: 16, scope: !721)
!725 = !DILocation(line: 6242, column: 7, scope: !713)
!726 = !DILocation(line: 6243, column: 27, scope: !721)
!727 = !DILocation(line: 6243, column: 12, scope: !721)
!728 = !DILocation(line: 6243, column: 5, scope: !721)
!729 = !DILocation(line: 6244, column: 3, scope: !713)
!730 = !DILocation(line: 6244, column: 8, scope: !713)
!731 = !DILocation(line: 6244, column: 18, scope: !713)
!732 = !DILocation(line: 6245, column: 3, scope: !713)
!733 = !DILocation(line: 6245, column: 10, scope: !713)
!734 = !DILocation(line: 6245, column: 30, scope: !713)
!735 = !DILocation(line: 6245, column: 35, scope: !713)
!736 = !DILocation(line: 6245, column: 27, scope: !713)
!737 = !DILocation(line: 6245, column: 19, scope: !713)
!738 = !DILocation(line: 6246, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !713, file: !38, line: 6245, column: 47)
!740 = !DILocation(line: 6246, column: 12, scope: !739)
!741 = !DILocation(line: 6246, column: 5, scope: !739)
!742 = distinct !{!742, !732, !743}
!743 = !DILocation(line: 6247, column: 3, scope: !713)
!744 = !DILocation(line: 6248, column: 20, scope: !713)
!745 = !DILocation(line: 6248, column: 3, scope: !713)
!746 = !DILocation(line: 6249, column: 25, scope: !713)
!747 = !DILocation(line: 6249, column: 10, scope: !713)
!748 = !DILocation(line: 6249, column: 3, scope: !713)
!749 = !DILocation(line: 6250, column: 1, scope: !713)
!750 = distinct !DISubprogram(name: "fiobj_hash_capa", scope: !3, file: !3, line: 188, type: !109, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!751 = !DILocalVariable(name: "hash", arg: 1, scope: !750, file: !3, line: 188, type: !105)
!752 = !DILocation(line: 188, column: 36, scope: !750)
!753 = !DILocation(line: 189, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 189, column: 3)
!755 = distinct !DILexicalBlock(scope: !750, file: !3, line: 189, column: 3)
!756 = !DILocation(line: 189, column: 3, scope: !755)
!757 = !DILocation(line: 190, column: 27, scope: !750)
!758 = !DILocation(line: 190, column: 43, scope: !750)
!759 = !DILocation(line: 190, column: 10, scope: !750)
!760 = !DILocation(line: 190, column: 3, scope: !750)
!761 = distinct !DISubprogram(name: "fio_hash___capa", scope: !38, file: !38, line: 6231, type: !422, scopeLine: 6231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!762 = !DILocalVariable(name: "set", arg: 1, scope: !761, file: !38, line: 6231, type: !424)
!763 = !DILocation(line: 6231, column: 59, scope: !761)
!764 = !DILocation(line: 6232, column: 18, scope: !761)
!765 = !DILocation(line: 6232, column: 23, scope: !761)
!766 = !DILocation(line: 6232, column: 3, scope: !761)
!767 = distinct !DISubprogram(name: "fiobj_hash_set", scope: !3, file: !3, line: 199, type: !768, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!768 = !DISubroutineType(types: !769)
!769 = !{!124, !58, !58, !58}
!770 = !DILocalVariable(name: "hash", arg: 1, scope: !767, file: !3, line: 199, type: !58)
!771 = !DILocation(line: 199, column: 26, scope: !767)
!772 = !DILocalVariable(name: "key", arg: 2, scope: !767, file: !3, line: 199, type: !58)
!773 = !DILocation(line: 199, column: 38, scope: !767)
!774 = !DILocalVariable(name: "obj", arg: 3, scope: !767, file: !3, line: 199, type: !58)
!775 = !DILocation(line: 199, column: 49, scope: !767)
!776 = !DILocation(line: 200, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 200, column: 3)
!778 = distinct !DILexicalBlock(scope: !767, file: !3, line: 200, column: 3)
!779 = !DILocation(line: 200, column: 3, scope: !778)
!780 = !DILocation(line: 201, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !767, file: !3, line: 201, column: 7)
!782 = !DILocation(line: 201, column: 7, scope: !767)
!783 = !DILocation(line: 202, column: 22, scope: !781)
!784 = !DILocation(line: 202, column: 5, scope: !781)
!785 = !DILocation(line: 203, column: 22, scope: !767)
!786 = !DILocation(line: 203, column: 38, scope: !767)
!787 = !DILocation(line: 203, column: 59, scope: !767)
!788 = !DILocation(line: 203, column: 44, scope: !767)
!789 = !DILocation(line: 203, column: 65, scope: !767)
!790 = !DILocation(line: 203, column: 70, scope: !767)
!791 = !DILocation(line: 203, column: 3, scope: !767)
!792 = !DILocation(line: 204, column: 14, scope: !767)
!793 = !DILocation(line: 204, column: 3, scope: !767)
!794 = !DILocation(line: 205, column: 3, scope: !767)
!795 = distinct !DISubprogram(name: "fio_hash___insert", scope: !38, file: !38, line: 6073, type: !796, scopeLine: 6076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !316, !798, !58, !58, !799}
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!800 = !DILocalVariable(name: "set", arg: 1, scope: !795, file: !38, line: 6073, type: !316)
!801 = !DILocation(line: 6073, column: 46, scope: !795)
!802 = !DILocalVariable(name: "hash_value", arg: 2, scope: !795, file: !38, line: 6074, type: !798)
!803 = !DILocation(line: 6074, column: 56, scope: !795)
!804 = !DILocalVariable(name: "key", arg: 3, scope: !795, file: !38, line: 6075, type: !58)
!805 = !DILocation(line: 6075, column: 49, scope: !795)
!806 = !DILocalVariable(name: "obj", arg: 4, scope: !795, file: !38, line: 6075, type: !58)
!807 = !DILocation(line: 6075, column: 71, scope: !795)
!808 = !DILocalVariable(name: "old", arg: 5, scope: !795, file: !38, line: 6076, type: !799)
!809 = !DILocation(line: 6076, column: 50, scope: !795)
!810 = !DILocation(line: 6078, column: 4, scope: !795)
!811 = !DILocation(line: 6078, column: 9, scope: !795)
!812 = !DILocation(line: 6078, column: 35, scope: !795)
!813 = !DILocation(line: 6078, column: 43, scope: !795)
!814 = !DILocation(line: 6078, column: 55, scope: !795)
!815 = !DILocation(line: 6078, column: 64, scope: !795)
!816 = !DILocation(line: 6077, column: 3, scope: !795)
!817 = !DILocation(line: 6079, column: 1, scope: !795)
!818 = distinct !DISubprogram(name: "fiobj_obj2hash", scope: !6, file: !6, line: 551, type: !819, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!819 = !DISubroutineType(types: !820)
!820 = !{!79, !105}
!821 = !DILocalVariable(name: "o", arg: 1, scope: !818, file: !6, line: 551, type: !105)
!822 = !DILocation(line: 551, column: 48, scope: !818)
!823 = !DILocation(line: 552, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !818, file: !6, line: 552, column: 7)
!825 = !DILocation(line: 552, column: 7, scope: !818)
!826 = !DILocation(line: 553, column: 27, scope: !824)
!827 = !DILocation(line: 553, column: 12, scope: !824)
!828 = !DILocation(line: 553, column: 5, scope: !824)
!829 = !DILocation(line: 554, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !818, file: !6, line: 554, column: 7)
!831 = !DILocation(line: 554, column: 7, scope: !818)
!832 = !DILocation(line: 555, column: 22, scope: !830)
!833 = !DILocation(line: 555, column: 5, scope: !830)
!834 = !DILocalVariable(name: "s", scope: !818, file: !6, line: 556, type: !130)
!835 = !DILocation(line: 556, column: 18, scope: !818)
!836 = !DILocation(line: 556, column: 37, scope: !818)
!837 = !DILocation(line: 556, column: 22, scope: !818)
!838 = !DILocation(line: 557, column: 10, scope: !818)
!839 = !DILocation(line: 557, column: 3, scope: !818)
!840 = !DILocation(line: 558, column: 1, scope: !818)
!841 = distinct !DISubprogram(name: "fiobj_free", scope: !6, file: !6, line: 446, type: !228, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!842 = !DILocalVariable(name: "o", arg: 1, scope: !841, file: !6, line: 446, type: !58)
!843 = !DILocation(line: 446, column: 34, scope: !841)
!844 = !DILocation(line: 447, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !6, line: 447, column: 7)
!846 = !DILocation(line: 447, column: 7, scope: !841)
!847 = !DILocation(line: 448, column: 5, scope: !845)
!848 = !DILocation(line: 449, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !841, file: !6, line: 449, column: 7)
!850 = !DILocation(line: 449, column: 7, scope: !841)
!851 = !DILocation(line: 450, column: 5, scope: !849)
!852 = !DILocation(line: 451, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !841, file: !6, line: 451, column: 7)
!854 = !DILocation(line: 451, column: 25, scope: !853)
!855 = !DILocation(line: 451, column: 30, scope: !853)
!856 = !DILocation(line: 451, column: 33, scope: !853)
!857 = !DILocation(line: 451, column: 51, scope: !853)
!858 = !DILocation(line: 451, column: 57, scope: !853)
!859 = !DILocation(line: 451, column: 7, scope: !841)
!860 = !DILocation(line: 452, column: 31, scope: !853)
!861 = !DILocation(line: 452, column: 5, scope: !853)
!862 = !DILocation(line: 454, column: 5, scope: !853)
!863 = !DILocation(line: 454, column: 23, scope: !853)
!864 = !DILocation(line: 454, column: 31, scope: !853)
!865 = !DILocation(line: 455, column: 1, scope: !841)
!866 = distinct !DISubprogram(name: "fiobj_hash_pop", scope: !3, file: !3, line: 218, type: !867, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!867 = !DISubroutineType(types: !868)
!868 = !{!58, !58, !799}
!869 = !DILocalVariable(name: "hash", arg: 1, scope: !866, file: !3, line: 218, type: !58)
!870 = !DILocation(line: 218, column: 28, scope: !866)
!871 = !DILocalVariable(name: "key", arg: 2, scope: !866, file: !3, line: 218, type: !799)
!872 = !DILocation(line: 218, column: 41, scope: !866)
!873 = !DILocation(line: 219, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 219, column: 3)
!875 = distinct !DILexicalBlock(scope: !866, file: !3, line: 219, column: 3)
!876 = !DILocation(line: 219, column: 3, scope: !875)
!877 = !DILocalVariable(name: "old", scope: !866, file: !3, line: 220, type: !58)
!878 = !DILocation(line: 220, column: 9, scope: !866)
!879 = !DILocation(line: 221, column: 25, scope: !880)
!880 = distinct !DILexicalBlock(scope: !866, file: !3, line: 221, column: 7)
!881 = !DILocation(line: 221, column: 41, scope: !880)
!882 = !DILocation(line: 221, column: 7, scope: !880)
!883 = !DILocation(line: 221, column: 7, scope: !866)
!884 = !DILocation(line: 222, column: 5, scope: !880)
!885 = !DILocation(line: 223, column: 36, scope: !866)
!886 = !DILocation(line: 223, column: 52, scope: !866)
!887 = !DILocation(line: 223, column: 19, scope: !866)
!888 = !DILocation(line: 223, column: 58, scope: !866)
!889 = !DILocation(line: 223, column: 9, scope: !866)
!890 = !DILocation(line: 223, column: 7, scope: !866)
!891 = !DILocation(line: 224, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !866, file: !3, line: 224, column: 7)
!893 = !DILocation(line: 224, column: 7, scope: !866)
!894 = !DILocation(line: 225, column: 39, scope: !892)
!895 = !DILocation(line: 225, column: 55, scope: !892)
!896 = !DILocation(line: 225, column: 22, scope: !892)
!897 = !DILocation(line: 225, column: 61, scope: !892)
!898 = !DILocation(line: 225, column: 12, scope: !892)
!899 = !DILocation(line: 225, column: 6, scope: !892)
!900 = !DILocation(line: 225, column: 10, scope: !892)
!901 = !DILocation(line: 225, column: 5, scope: !892)
!902 = !DILocation(line: 226, column: 19, scope: !866)
!903 = !DILocation(line: 226, column: 35, scope: !866)
!904 = !DILocation(line: 226, column: 3, scope: !866)
!905 = !DILocation(line: 227, column: 10, scope: !866)
!906 = !DILocation(line: 227, column: 3, scope: !866)
!907 = !DILocation(line: 228, column: 1, scope: !866)
!908 = distinct !DISubprogram(name: "fiobj_dup", scope: !6, file: !6, line: 430, type: !909, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!909 = !DISubroutineType(types: !910)
!910 = !{!58, !58}
!911 = !DILocalVariable(name: "o", arg: 1, scope: !908, file: !6, line: 430, type: !58)
!912 = !DILocation(line: 430, column: 34, scope: !908)
!913 = !DILocation(line: 431, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !908, file: !6, line: 431, column: 7)
!915 = !DILocation(line: 431, column: 7, scope: !908)
!916 = !DILocation(line: 432, column: 5, scope: !914)
!917 = !DILocation(line: 433, column: 10, scope: !908)
!918 = !DILocation(line: 433, column: 3, scope: !908)
!919 = distinct !DISubprogram(name: "fio_hash___last", scope: !38, file: !38, line: 6197, type: !920, scopeLine: 6197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!920 = !DISubroutineType(types: !921)
!921 = !{!54, !316}
!922 = !DILocalVariable(name: "set", arg: 1, scope: !919, file: !38, line: 6197, type: !316)
!923 = !DILocation(line: 6197, column: 59, scope: !919)
!924 = !DILocation(line: 6198, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !919, file: !38, line: 6198, column: 7)
!926 = !DILocation(line: 6198, column: 13, scope: !925)
!927 = !DILocation(line: 6198, column: 21, scope: !925)
!928 = !DILocation(line: 6198, column: 25, scope: !925)
!929 = !DILocation(line: 6198, column: 30, scope: !925)
!930 = !DILocation(line: 6198, column: 7, scope: !919)
!931 = !DILocalVariable(name: "empty", scope: !932, file: !38, line: 6199, type: !54)
!932 = distinct !DILexicalBlock(scope: !925, file: !38, line: 6198, column: 35)
!933 = !DILocation(line: 6199, column: 18, scope: !932)
!934 = !DILocation(line: 6200, column: 5, scope: !932)
!935 = !DILocation(line: 6201, column: 5, scope: !932)
!936 = !DILocation(line: 6203, column: 10, scope: !919)
!937 = !DILocation(line: 6203, column: 15, scope: !919)
!938 = !DILocation(line: 6203, column: 23, scope: !919)
!939 = !DILocation(line: 6203, column: 28, scope: !919)
!940 = !DILocation(line: 6203, column: 32, scope: !919)
!941 = !DILocation(line: 6203, column: 37, scope: !919)
!942 = !DILocation(line: 6203, column: 3, scope: !919)
!943 = !DILocation(line: 6204, column: 1, scope: !919)
!944 = distinct !DISubprogram(name: "fio_hash___pop", scope: !38, file: !38, line: 6210, type: !314, scopeLine: 6210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!945 = !DILocalVariable(name: "set", arg: 1, scope: !944, file: !38, line: 6210, type: !316)
!946 = !DILocation(line: 6210, column: 43, scope: !944)
!947 = !DILocation(line: 6211, column: 8, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !38, line: 6211, column: 7)
!949 = !DILocation(line: 6211, column: 13, scope: !948)
!950 = !DILocation(line: 6211, column: 21, scope: !948)
!951 = !DILocation(line: 6211, column: 25, scope: !948)
!952 = !DILocation(line: 6211, column: 30, scope: !948)
!953 = !DILocation(line: 6211, column: 7, scope: !944)
!954 = !DILocation(line: 6212, column: 5, scope: !948)
!955 = !DILocation(line: 6213, column: 3, scope: !944)
!956 = !DILocation(line: 6213, column: 3, scope: !957)
!957 = distinct !DILexicalBlock(scope: !944, file: !38, line: 6213, column: 3)
!958 = !DILocation(line: 6213, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !957, file: !38, line: 6213, column: 3)
!960 = !DILocation(line: 6213, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !38, line: 6213, column: 3)
!962 = !DILocation(line: 6214, column: 3, scope: !944)
!963 = !DILocation(line: 6214, column: 8, scope: !944)
!964 = !DILocation(line: 6214, column: 16, scope: !944)
!965 = !DILocation(line: 6214, column: 21, scope: !944)
!966 = !DILocation(line: 6214, column: 25, scope: !944)
!967 = !DILocation(line: 6214, column: 30, scope: !944)
!968 = !DILocation(line: 6214, column: 35, scope: !944)
!969 = !DILocation(line: 6215, column: 6, scope: !944)
!970 = !DILocation(line: 6215, column: 11, scope: !944)
!971 = !DILocation(line: 6215, column: 3, scope: !944)
!972 = !DILocation(line: 6216, column: 3, scope: !944)
!973 = !DILocation(line: 6217, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !944, file: !38, line: 6216, column: 6)
!975 = !DILocation(line: 6217, column: 13, scope: !974)
!976 = !DILocation(line: 6217, column: 5, scope: !974)
!977 = !DILocation(line: 6218, column: 3, scope: !974)
!978 = !DILocation(line: 6218, column: 12, scope: !944)
!979 = !DILocation(line: 6218, column: 17, scope: !944)
!980 = !DILocation(line: 6218, column: 21, scope: !944)
!981 = !DILocation(line: 6218, column: 24, scope: !944)
!982 = !DILocation(line: 0, scope: !944)
!983 = distinct !{!983, !972, !984}
!984 = !DILocation(line: 6219, column: 66, scope: !944)
!985 = !DILocation(line: 6220, column: 1, scope: !944)
!986 = distinct !DISubprogram(name: "fiobj_hash_replace", scope: !3, file: !3, line: 239, type: !987, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!987 = !DISubroutineType(types: !988)
!988 = !{!58, !58, !58, !58}
!989 = !DILocalVariable(name: "hash", arg: 1, scope: !986, file: !3, line: 239, type: !58)
!990 = !DILocation(line: 239, column: 32, scope: !986)
!991 = !DILocalVariable(name: "key", arg: 2, scope: !986, file: !3, line: 239, type: !58)
!992 = !DILocation(line: 239, column: 44, scope: !986)
!993 = !DILocalVariable(name: "obj", arg: 3, scope: !986, file: !3, line: 239, type: !58)
!994 = !DILocation(line: 239, column: 55, scope: !986)
!995 = !DILocation(line: 240, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 240, column: 3)
!997 = distinct !DILexicalBlock(scope: !986, file: !3, line: 240, column: 3)
!998 = !DILocation(line: 240, column: 3, scope: !997)
!999 = !DILocalVariable(name: "old", scope: !986, file: !3, line: 241, type: !58)
!1000 = !DILocation(line: 241, column: 9, scope: !986)
!1001 = !DILocation(line: 242, column: 22, scope: !986)
!1002 = !DILocation(line: 242, column: 38, scope: !986)
!1003 = !DILocation(line: 242, column: 59, scope: !986)
!1004 = !DILocation(line: 242, column: 44, scope: !986)
!1005 = !DILocation(line: 242, column: 65, scope: !986)
!1006 = !DILocation(line: 242, column: 70, scope: !986)
!1007 = !DILocation(line: 242, column: 3, scope: !986)
!1008 = !DILocation(line: 243, column: 14, scope: !986)
!1009 = !DILocation(line: 243, column: 3, scope: !986)
!1010 = !DILocation(line: 244, column: 10, scope: !986)
!1011 = !DILocation(line: 244, column: 3, scope: !986)
!1012 = distinct !DISubprogram(name: "fiobj_hash_remove", scope: !3, file: !3, line: 250, type: !1013, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!58, !58, !58}
!1015 = !DILocalVariable(name: "hash", arg: 1, scope: !1012, file: !3, line: 250, type: !58)
!1016 = !DILocation(line: 250, column: 31, scope: !1012)
!1017 = !DILocalVariable(name: "key", arg: 2, scope: !1012, file: !3, line: 250, type: !58)
!1018 = !DILocation(line: 250, column: 43, scope: !1012)
!1019 = !DILocation(line: 251, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 251, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 251, column: 3)
!1022 = !DILocation(line: 251, column: 3, scope: !1021)
!1023 = !DILocalVariable(name: "old", scope: !1012, file: !3, line: 252, type: !58)
!1024 = !DILocation(line: 252, column: 9, scope: !1012)
!1025 = !DILocation(line: 253, column: 22, scope: !1012)
!1026 = !DILocation(line: 253, column: 38, scope: !1012)
!1027 = !DILocation(line: 253, column: 59, scope: !1012)
!1028 = !DILocation(line: 253, column: 44, scope: !1012)
!1029 = !DILocation(line: 253, column: 65, scope: !1012)
!1030 = !DILocation(line: 253, column: 3, scope: !1012)
!1031 = !DILocation(line: 254, column: 10, scope: !1012)
!1032 = !DILocation(line: 254, column: 3, scope: !1012)
!1033 = distinct !DISubprogram(name: "fio_hash___remove", scope: !38, file: !38, line: 6091, type: !1034, scopeLine: 6094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!124, !316, !798, !58, !799}
!1036 = !DILocalVariable(name: "set", arg: 1, scope: !1033, file: !38, line: 6091, type: !316)
!1037 = !DILocation(line: 6091, column: 52, scope: !1033)
!1038 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1033, file: !38, line: 6092, type: !798)
!1039 = !DILocation(line: 6092, column: 62, scope: !1033)
!1040 = !DILocalVariable(name: "key", arg: 3, scope: !1033, file: !38, line: 6093, type: !58)
!1041 = !DILocation(line: 6093, column: 55, scope: !1033)
!1042 = !DILocalVariable(name: "old", arg: 4, scope: !1033, file: !38, line: 6094, type: !799)
!1043 = !DILocation(line: 6094, column: 56, scope: !1033)
!1044 = !DILocalVariable(name: "pos", scope: !1033, file: !38, line: 6095, type: !61)
!1045 = !DILocation(line: 6095, column: 22, scope: !1033)
!1046 = !DILocation(line: 6096, column: 32, scope: !1033)
!1047 = !DILocation(line: 6096, column: 37, scope: !1033)
!1048 = !DILocation(line: 6096, column: 63, scope: !1033)
!1049 = !DILocation(line: 6096, column: 71, scope: !1033)
!1050 = !DILocation(line: 6096, column: 7, scope: !1033)
!1051 = !DILocation(line: 6097, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1033, file: !38, line: 6097, column: 7)
!1053 = !DILocation(line: 6097, column: 12, scope: !1052)
!1054 = !DILocation(line: 6097, column: 16, scope: !1052)
!1055 = !DILocation(line: 6097, column: 21, scope: !1052)
!1056 = !DILocation(line: 6097, column: 7, scope: !1033)
!1057 = !DILocation(line: 6098, column: 5, scope: !1052)
!1058 = !DILocation(line: 6099, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1033, file: !38, line: 6099, column: 7)
!1060 = !DILocation(line: 6099, column: 7, scope: !1033)
!1061 = !DILocation(line: 6100, column: 5, scope: !1059)
!1062 = !DILocation(line: 6101, column: 3, scope: !1033)
!1063 = !DILocation(line: 6101, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1033, file: !38, line: 6101, column: 3)
!1065 = !DILocation(line: 6101, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !38, line: 6101, column: 3)
!1067 = !DILocation(line: 6101, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !38, line: 6101, column: 3)
!1069 = !DILocation(line: 6102, column: 5, scope: !1033)
!1070 = !DILocation(line: 6102, column: 10, scope: !1033)
!1071 = !DILocation(line: 6102, column: 3, scope: !1033)
!1072 = !DILocation(line: 6103, column: 3, scope: !1033)
!1073 = !DILocation(line: 6103, column: 8, scope: !1033)
!1074 = !DILocation(line: 6103, column: 13, scope: !1033)
!1075 = !DILocation(line: 6103, column: 18, scope: !1033)
!1076 = !DILocation(line: 6104, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1033, file: !38, line: 6104, column: 7)
!1078 = !DILocation(line: 6104, column: 12, scope: !1077)
!1079 = !DILocation(line: 6104, column: 19, scope: !1077)
!1080 = !DILocation(line: 6104, column: 24, scope: !1077)
!1081 = !DILocation(line: 6104, column: 30, scope: !1077)
!1082 = !DILocation(line: 6104, column: 35, scope: !1077)
!1083 = !DILocation(line: 6104, column: 28, scope: !1077)
!1084 = !DILocation(line: 6104, column: 43, scope: !1077)
!1085 = !DILocation(line: 6104, column: 16, scope: !1077)
!1086 = !DILocation(line: 6104, column: 7, scope: !1033)
!1087 = !DILocation(line: 6106, column: 5, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1077, file: !38, line: 6104, column: 48)
!1089 = !DILocation(line: 6106, column: 10, scope: !1088)
!1090 = !DILocation(line: 6106, column: 15, scope: !1088)
!1091 = !DILocation(line: 6107, column: 5, scope: !1088)
!1092 = !DILocation(line: 6108, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !38, line: 6107, column: 8)
!1094 = !DILocation(line: 6108, column: 14, scope: !1093)
!1095 = !DILocation(line: 6108, column: 7, scope: !1093)
!1096 = !DILocation(line: 6109, column: 5, scope: !1093)
!1097 = !DILocation(line: 6109, column: 14, scope: !1088)
!1098 = !DILocation(line: 6109, column: 19, scope: !1088)
!1099 = !DILocation(line: 6109, column: 23, scope: !1088)
!1100 = !DILocation(line: 6109, column: 26, scope: !1088)
!1101 = !DILocation(line: 0, scope: !1088)
!1102 = distinct !{!1102, !1091, !1103}
!1103 = !DILocation(line: 6110, column: 68, scope: !1088)
!1104 = !DILocation(line: 6111, column: 3, scope: !1088)
!1105 = !DILocation(line: 6112, column: 3, scope: !1033)
!1106 = !DILocation(line: 6112, column: 8, scope: !1033)
!1107 = !DILocation(line: 6112, column: 12, scope: !1033)
!1108 = !DILocation(line: 6113, column: 3, scope: !1033)
!1109 = !DILocation(line: 6114, column: 1, scope: !1033)
!1110 = distinct !DISubprogram(name: "fiobj_hash_remove2", scope: !3, file: !3, line: 261, type: !1111, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!58, !58, !79}
!1113 = !DILocalVariable(name: "hash", arg: 1, scope: !1110, file: !3, line: 261, type: !58)
!1114 = !DILocation(line: 261, column: 32, scope: !1110)
!1115 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1110, file: !3, line: 261, type: !79)
!1116 = !DILocation(line: 261, column: 47, scope: !1110)
!1117 = !DILocation(line: 262, column: 3, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 262, column: 3)
!1119 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 262, column: 3)
!1120 = !DILocation(line: 262, column: 3, scope: !1119)
!1121 = !DILocalVariable(name: "old", scope: !1110, file: !3, line: 263, type: !58)
!1122 = !DILocation(line: 263, column: 9, scope: !1110)
!1123 = !DILocation(line: 264, column: 22, scope: !1110)
!1124 = !DILocation(line: 264, column: 38, scope: !1110)
!1125 = !DILocation(line: 264, column: 44, scope: !1110)
!1126 = !DILocation(line: 264, column: 3, scope: !1110)
!1127 = !DILocation(line: 265, column: 10, scope: !1110)
!1128 = !DILocation(line: 265, column: 3, scope: !1110)
!1129 = distinct !DISubprogram(name: "fiobj_hash_delete", scope: !3, file: !3, line: 274, type: !1130, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!124, !58, !58}
!1132 = !DILocalVariable(name: "hash", arg: 1, scope: !1129, file: !3, line: 274, type: !58)
!1133 = !DILocation(line: 274, column: 29, scope: !1129)
!1134 = !DILocalVariable(name: "key", arg: 2, scope: !1129, file: !3, line: 274, type: !58)
!1135 = !DILocation(line: 274, column: 41, scope: !1129)
!1136 = !DILocation(line: 275, column: 29, scope: !1129)
!1137 = !DILocation(line: 275, column: 45, scope: !1129)
!1138 = !DILocation(line: 275, column: 66, scope: !1129)
!1139 = !DILocation(line: 275, column: 51, scope: !1129)
!1140 = !DILocation(line: 275, column: 72, scope: !1129)
!1141 = !DILocation(line: 275, column: 10, scope: !1129)
!1142 = !DILocation(line: 275, column: 3, scope: !1129)
!1143 = distinct !DISubprogram(name: "fiobj_hash_delete2", scope: !3, file: !3, line: 289, type: !1144, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!124, !58, !79}
!1146 = !DILocalVariable(name: "hash", arg: 1, scope: !1143, file: !3, line: 289, type: !58)
!1147 = !DILocation(line: 289, column: 30, scope: !1143)
!1148 = !DILocalVariable(name: "key_hash", arg: 2, scope: !1143, file: !3, line: 289, type: !79)
!1149 = !DILocation(line: 289, column: 45, scope: !1143)
!1150 = !DILocation(line: 290, column: 29, scope: !1143)
!1151 = !DILocation(line: 290, column: 45, scope: !1143)
!1152 = !DILocation(line: 290, column: 51, scope: !1143)
!1153 = !DILocation(line: 290, column: 10, scope: !1143)
!1154 = !DILocation(line: 290, column: 3, scope: !1143)
!1155 = distinct !DISubprogram(name: "fiobj_hash_get", scope: !3, file: !3, line: 297, type: !1156, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!58, !105, !58}
!1158 = !DILocalVariable(name: "hash", arg: 1, scope: !1155, file: !3, line: 297, type: !105)
!1159 = !DILocation(line: 297, column: 34, scope: !1155)
!1160 = !DILocalVariable(name: "key", arg: 2, scope: !1155, file: !3, line: 297, type: !58)
!1161 = !DILocation(line: 297, column: 46, scope: !1155)
!1162 = !DILocation(line: 298, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 298, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 298, column: 3)
!1165 = !DILocation(line: 298, column: 3, scope: !1164)
!1166 = !DILocation(line: 299, column: 27, scope: !1155)
!1167 = !DILocation(line: 299, column: 43, scope: !1155)
!1168 = !DILocation(line: 299, column: 64, scope: !1155)
!1169 = !DILocation(line: 299, column: 49, scope: !1155)
!1170 = !DILocation(line: 299, column: 70, scope: !1155)
!1171 = !DILocation(line: 299, column: 10, scope: !1155)
!1172 = !DILocation(line: 299, column: 3, scope: !1155)
!1173 = distinct !DISubprogram(name: "fio_hash___find", scope: !38, file: !38, line: 6049, type: !1174, scopeLine: 6051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!58, !316, !798, !58}
!1176 = !DILocalVariable(name: "set", arg: 1, scope: !1173, file: !38, line: 6049, type: !316)
!1177 = !DILocation(line: 6049, column: 56, scope: !1173)
!1178 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1173, file: !38, line: 6050, type: !798)
!1179 = !DILocation(line: 6050, column: 66, scope: !1173)
!1180 = !DILocalVariable(name: "key", arg: 3, scope: !1173, file: !38, line: 6051, type: !58)
!1181 = !DILocation(line: 6051, column: 59, scope: !1173)
!1182 = !DILocalVariable(name: "pos", scope: !1173, file: !38, line: 6052, type: !61)
!1183 = !DILocation(line: 6052, column: 22, scope: !1173)
!1184 = !DILocation(line: 6053, column: 32, scope: !1173)
!1185 = !DILocation(line: 6053, column: 37, scope: !1173)
!1186 = !DILocation(line: 6053, column: 63, scope: !1173)
!1187 = !DILocation(line: 6053, column: 71, scope: !1173)
!1188 = !DILocation(line: 6053, column: 7, scope: !1173)
!1189 = !DILocation(line: 6054, column: 8, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1173, file: !38, line: 6054, column: 7)
!1191 = !DILocation(line: 6054, column: 12, scope: !1190)
!1192 = !DILocation(line: 6054, column: 16, scope: !1190)
!1193 = !DILocation(line: 6054, column: 21, scope: !1190)
!1194 = !DILocation(line: 6054, column: 7, scope: !1173)
!1195 = !DILocalVariable(name: "empty", scope: !1196, file: !38, line: 6055, type: !58)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !38, line: 6054, column: 26)
!1197 = !DILocation(line: 6055, column: 22, scope: !1196)
!1198 = !DILocation(line: 6056, column: 5, scope: !1196)
!1199 = !DILocation(line: 6057, column: 12, scope: !1196)
!1200 = !DILocation(line: 6057, column: 5, scope: !1196)
!1201 = !DILocation(line: 6059, column: 10, scope: !1173)
!1202 = !DILocation(line: 6059, column: 15, scope: !1173)
!1203 = !DILocation(line: 6059, column: 20, scope: !1173)
!1204 = !DILocation(line: 6059, column: 24, scope: !1173)
!1205 = !DILocation(line: 6059, column: 3, scope: !1173)
!1206 = !DILocation(line: 6060, column: 1, scope: !1173)
!1207 = distinct !DISubprogram(name: "fiobj_hash_get2", scope: !3, file: !3, line: 311, type: !1208, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!58, !105, !79}
!1210 = !DILocalVariable(name: "hash", arg: 1, scope: !1207, file: !3, line: 311, type: !105)
!1211 = !DILocation(line: 311, column: 35, scope: !1207)
!1212 = !DILocalVariable(name: "key_hash", arg: 2, scope: !1207, file: !3, line: 311, type: !79)
!1213 = !DILocation(line: 311, column: 50, scope: !1207)
!1214 = !DILocation(line: 312, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 312, column: 3)
!1216 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 312, column: 3)
!1217 = !DILocation(line: 312, column: 3, scope: !1216)
!1218 = !DILocation(line: 313, column: 27, scope: !1207)
!1219 = !DILocation(line: 313, column: 43, scope: !1207)
!1220 = !DILocation(line: 313, column: 49, scope: !1207)
!1221 = !DILocation(line: 313, column: 10, scope: !1207)
!1222 = !DILocation(line: 313, column: 3, scope: !1207)
!1223 = distinct !DISubprogram(name: "fiobj_hash_haskey", scope: !3, file: !3, line: 320, type: !1224, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!124, !105, !58}
!1226 = !DILocalVariable(name: "hash", arg: 1, scope: !1223, file: !3, line: 320, type: !105)
!1227 = !DILocation(line: 320, column: 35, scope: !1223)
!1228 = !DILocalVariable(name: "key", arg: 2, scope: !1223, file: !3, line: 320, type: !58)
!1229 = !DILocation(line: 320, column: 47, scope: !1223)
!1230 = !DILocation(line: 321, column: 3, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 321, column: 3)
!1232 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 321, column: 3)
!1233 = !DILocation(line: 321, column: 3, scope: !1232)
!1234 = !DILocation(line: 322, column: 27, scope: !1223)
!1235 = !DILocation(line: 322, column: 43, scope: !1223)
!1236 = !DILocation(line: 322, column: 64, scope: !1223)
!1237 = !DILocation(line: 322, column: 49, scope: !1223)
!1238 = !DILocation(line: 322, column: 70, scope: !1223)
!1239 = !DILocation(line: 322, column: 10, scope: !1223)
!1240 = !DILocation(line: 322, column: 75, scope: !1223)
!1241 = !DILocation(line: 322, column: 3, scope: !1223)
!1242 = distinct !DISubprogram(name: "fiobj_hash_clear", scope: !3, file: !3, line: 329, type: !1243, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !105}
!1245 = !DILocalVariable(name: "hash", arg: 1, scope: !1242, file: !3, line: 329, type: !105)
!1246 = !DILocation(line: 329, column: 35, scope: !1242)
!1247 = !DILocation(line: 330, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 330, column: 3)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 330, column: 3)
!1250 = !DILocation(line: 330, column: 3, scope: !1249)
!1251 = !DILocation(line: 331, column: 20, scope: !1242)
!1252 = !DILocation(line: 331, column: 36, scope: !1242)
!1253 = !DILocation(line: 331, column: 3, scope: !1242)
!1254 = !DILocation(line: 332, column: 1, scope: !1242)
!1255 = distinct !DISubprogram(name: "fio_hash___free", scope: !38, file: !38, line: 6024, type: !314, scopeLine: 6024, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1256 = !DILocalVariable(name: "s", arg: 1, scope: !1255, file: !38, line: 6024, type: !316)
!1257 = !DILocation(line: 6024, column: 45, scope: !1255)
!1258 = !DILocalVariable(name: "end", scope: !1255, file: !38, line: 6026, type: !353)
!1259 = !DILocation(line: 6026, column: 38, scope: !1255)
!1260 = !DILocation(line: 6026, column: 44, scope: !1255)
!1261 = !DILocation(line: 6026, column: 47, scope: !1255)
!1262 = !DILocation(line: 6026, column: 57, scope: !1255)
!1263 = !DILocation(line: 6026, column: 60, scope: !1255)
!1264 = !DILocation(line: 6026, column: 55, scope: !1255)
!1265 = !DILocation(line: 6027, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1255, file: !38, line: 6027, column: 7)
!1267 = !DILocation(line: 6027, column: 10, scope: !1266)
!1268 = !DILocation(line: 6027, column: 18, scope: !1266)
!1269 = !DILocation(line: 6027, column: 21, scope: !1266)
!1270 = !DILocation(line: 6027, column: 24, scope: !1266)
!1271 = !DILocation(line: 6027, column: 35, scope: !1266)
!1272 = !DILocation(line: 6027, column: 32, scope: !1266)
!1273 = !DILocation(line: 6027, column: 7, scope: !1255)
!1274 = !DILocalVariable(name: "pos", scope: !1275, file: !38, line: 6028, type: !48)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !38, line: 6028, column: 5)
!1276 = distinct !DILexicalBlock(scope: !1266, file: !38, line: 6027, column: 40)
!1277 = !DILocation(line: 6028, column: 33, scope: !1275)
!1278 = !DILocation(line: 6028, column: 39, scope: !1275)
!1279 = !DILocation(line: 6028, column: 42, scope: !1275)
!1280 = !DILocation(line: 6028, column: 10, scope: !1275)
!1281 = !DILocation(line: 6028, column: 51, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1275, file: !38, line: 6028, column: 5)
!1283 = !DILocation(line: 6028, column: 57, scope: !1282)
!1284 = !DILocation(line: 6028, column: 55, scope: !1282)
!1285 = !DILocation(line: 6028, column: 5, scope: !1275)
!1286 = !DILocation(line: 6029, column: 12, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !38, line: 6029, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !38, line: 6028, column: 69)
!1289 = !DILocation(line: 6029, column: 11, scope: !1288)
!1290 = !DILocation(line: 6030, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !38, line: 6029, column: 67)
!1292 = !DILocation(line: 6030, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1291, file: !38, line: 6030, column: 9)
!1294 = !DILocation(line: 6030, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1293, file: !38, line: 6030, column: 9)
!1296 = !DILocation(line: 6030, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !38, line: 6030, column: 9)
!1298 = !DILocation(line: 6031, column: 7, scope: !1291)
!1299 = !DILocation(line: 6032, column: 5, scope: !1288)
!1300 = !DILocation(line: 6028, column: 62, scope: !1282)
!1301 = !DILocation(line: 6028, column: 5, scope: !1282)
!1302 = distinct !{!1302, !1285, !1303}
!1303 = !DILocation(line: 6032, column: 5, scope: !1275)
!1304 = !DILocation(line: 6033, column: 3, scope: !1276)
!1305 = !DILocation(line: 6035, column: 3, scope: !1255)
!1306 = !DILocation(line: 6036, column: 3, scope: !1255)
!1307 = !DILocation(line: 6037, column: 4, scope: !1255)
!1308 = !DILocation(line: 6037, column: 8, scope: !1255)
!1309 = !DILocation(line: 6038, column: 1, scope: !1255)
!1310 = distinct !DISubprogram(name: "fiobj_null", scope: !6, file: !6, line: 87, type: !406, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1311 = !DILocation(line: 87, column: 37, scope: !1310)
!1312 = distinct !DISubprogram(name: "fiobj_true", scope: !6, file: !6, line: 88, type: !406, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1313 = !DILocation(line: 88, column: 37, scope: !1312)
!1314 = distinct !DISubprogram(name: "fiobj_false", scope: !6, file: !6, line: 89, type: !406, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1315 = !DILocation(line: 89, column: 38, scope: !1314)
!1316 = distinct !DISubprogram(name: "fio_hash____compact_ordered_array_", scope: !38, file: !38, line: 5916, type: !314, scopeLine: 5916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1317 = !DILocalVariable(name: "set", arg: 1, scope: !1316, file: !38, line: 5916, type: !316)
!1318 = !DILocation(line: 5916, column: 70, scope: !1316)
!1319 = !DILocation(line: 5917, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !38, line: 5917, column: 7)
!1321 = !DILocation(line: 5917, column: 12, scope: !1320)
!1322 = !DILocation(line: 5917, column: 21, scope: !1320)
!1323 = !DILocation(line: 5917, column: 26, scope: !1320)
!1324 = !DILocation(line: 5917, column: 18, scope: !1320)
!1325 = !DILocation(line: 5917, column: 7, scope: !1316)
!1326 = !DILocation(line: 5918, column: 5, scope: !1320)
!1327 = !DILocalVariable(name: "reader", scope: !1316, file: !38, line: 5919, type: !48)
!1328 = !DILocation(line: 5919, column: 26, scope: !1316)
!1329 = !DILocation(line: 5919, column: 35, scope: !1316)
!1330 = !DILocation(line: 5919, column: 40, scope: !1316)
!1331 = !DILocalVariable(name: "writer", scope: !1316, file: !38, line: 5920, type: !48)
!1332 = !DILocation(line: 5920, column: 26, scope: !1316)
!1333 = !DILocation(line: 5920, column: 35, scope: !1316)
!1334 = !DILocation(line: 5920, column: 40, scope: !1316)
!1335 = !DILocalVariable(name: "end", scope: !1316, file: !38, line: 5921, type: !354)
!1336 = !DILocation(line: 5921, column: 32, scope: !1316)
!1337 = !DILocation(line: 5921, column: 38, scope: !1316)
!1338 = !DILocation(line: 5921, column: 43, scope: !1316)
!1339 = !DILocation(line: 5921, column: 53, scope: !1316)
!1340 = !DILocation(line: 5921, column: 58, scope: !1316)
!1341 = !DILocation(line: 5921, column: 51, scope: !1316)
!1342 = !DILocation(line: 5922, column: 3, scope: !1316)
!1343 = !DILocation(line: 5922, column: 10, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !38, line: 5922, column: 3)
!1345 = distinct !DILexicalBlock(scope: !1316, file: !38, line: 5922, column: 3)
!1346 = !DILocation(line: 5922, column: 17, scope: !1344)
!1347 = !DILocation(line: 5922, column: 21, scope: !1344)
!1348 = !DILocation(line: 5922, column: 30, scope: !1344)
!1349 = !DILocation(line: 5922, column: 28, scope: !1344)
!1350 = !DILocation(line: 0, scope: !1344)
!1351 = !DILocation(line: 5922, column: 3, scope: !1345)
!1352 = !DILocation(line: 5923, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !38, line: 5923, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1344, file: !38, line: 5922, column: 46)
!1355 = !DILocation(line: 5923, column: 9, scope: !1354)
!1356 = !DILocation(line: 5924, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !38, line: 5923, column: 67)
!1358 = !DILocation(line: 5926, column: 6, scope: !1354)
!1359 = !DILocation(line: 5926, column: 16, scope: !1354)
!1360 = !DILocation(line: 5926, column: 15, scope: !1354)
!1361 = !DILocation(line: 5927, column: 5, scope: !1354)
!1362 = !DILocation(line: 5928, column: 3, scope: !1354)
!1363 = !DILocation(line: 5922, column: 36, scope: !1344)
!1364 = !DILocation(line: 5922, column: 3, scope: !1344)
!1365 = distinct !{!1365, !1351, !1366}
!1366 = !DILocation(line: 5928, column: 3, scope: !1345)
!1367 = !DILocation(line: 5930, column: 28, scope: !1316)
!1368 = !DILocation(line: 5930, column: 37, scope: !1316)
!1369 = !DILocation(line: 5930, column: 42, scope: !1316)
!1370 = !DILocation(line: 5930, column: 35, scope: !1316)
!1371 = !DILocation(line: 5930, column: 14, scope: !1316)
!1372 = !DILocation(line: 5930, column: 19, scope: !1316)
!1373 = !DILocation(line: 5930, column: 25, scope: !1316)
!1374 = !DILocation(line: 5930, column: 3, scope: !1316)
!1375 = !DILocation(line: 5930, column: 8, scope: !1316)
!1376 = !DILocation(line: 5930, column: 12, scope: !1316)
!1377 = !DILocation(line: 5931, column: 1, scope: !1316)
!1378 = distinct !DISubprogram(name: "fio_hash____reallocate_set_mem_", scope: !38, file: !38, line: 5934, type: !314, scopeLine: 5934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1379 = !DILocalVariable(name: "set", arg: 1, scope: !1378, file: !38, line: 5934, type: !316)
!1380 = !DILocation(line: 5934, column: 67, scope: !1378)
!1381 = !DILocalVariable(name: "new_capa", scope: !1378, file: !38, line: 5935, type: !798)
!1382 = !DILocation(line: 5935, column: 19, scope: !1378)
!1383 = !DILocation(line: 5935, column: 38, scope: !1378)
!1384 = !DILocation(line: 5935, column: 43, scope: !1378)
!1385 = !DILocation(line: 5935, column: 35, scope: !1378)
!1386 = !DILocation(line: 5936, column: 3, scope: !1378)
!1387 = !DILocation(line: 5937, column: 35, scope: !1378)
!1388 = !DILocation(line: 5937, column: 14, scope: !1378)
!1389 = !DILocation(line: 5937, column: 3, scope: !1378)
!1390 = !DILocation(line: 5937, column: 8, scope: !1378)
!1391 = !DILocation(line: 5937, column: 12, scope: !1378)
!1392 = !DILocation(line: 5938, column: 43, scope: !1378)
!1393 = !DILocation(line: 5938, column: 18, scope: !1378)
!1394 = !DILocation(line: 5938, column: 3, scope: !1378)
!1395 = !DILocation(line: 5938, column: 8, scope: !1378)
!1396 = !DILocation(line: 5938, column: 16, scope: !1378)
!1397 = !DILocation(line: 5941, column: 8, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1378, file: !38, line: 5941, column: 7)
!1399 = !DILocation(line: 5941, column: 13, scope: !1398)
!1400 = !DILocation(line: 5941, column: 17, scope: !1398)
!1401 = !DILocation(line: 5941, column: 21, scope: !1398)
!1402 = !DILocation(line: 5941, column: 26, scope: !1398)
!1403 = !DILocation(line: 5941, column: 7, scope: !1378)
!1404 = !DILocation(line: 5942, column: 5, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1398, file: !38, line: 5941, column: 35)
!1406 = !DILocation(line: 5943, column: 10, scope: !1405)
!1407 = !DILocation(line: 5943, column: 5, scope: !1405)
!1408 = !DILocation(line: 5945, column: 15, scope: !1378)
!1409 = !DILocation(line: 5945, column: 3, scope: !1378)
!1410 = !DILocation(line: 5945, column: 8, scope: !1378)
!1411 = !DILocation(line: 5945, column: 13, scope: !1378)
!1412 = !DILocation(line: 5946, column: 1, scope: !1378)
!1413 = distinct !DISubprogram(name: "fio_hash____find_map_pos_", scope: !38, file: !38, line: 5848, type: !1414, scopeLine: 5849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!61, !316, !42, !54}
!1416 = !DILocalVariable(name: "set", arg: 1, scope: !1413, file: !38, line: 5848, type: !316)
!1417 = !DILocation(line: 5848, column: 44, scope: !1413)
!1418 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1413, file: !38, line: 5848, type: !42)
!1419 = !DILocation(line: 5848, column: 67, scope: !1413)
!1420 = !DILocalVariable(name: "obj", arg: 3, scope: !1413, file: !38, line: 5849, type: !54)
!1421 = !DILocation(line: 5849, column: 43, scope: !1413)
!1422 = !DILocation(line: 5850, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1413, file: !38, line: 5850, column: 7)
!1424 = !DILocation(line: 5850, column: 7, scope: !1413)
!1425 = !DILocation(line: 5851, column: 16, scope: !1423)
!1426 = !DILocation(line: 5851, column: 5, scope: !1423)
!1427 = !DILocation(line: 5852, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1413, file: !38, line: 5852, column: 7)
!1429 = !DILocation(line: 5852, column: 12, scope: !1428)
!1430 = !DILocation(line: 5852, column: 7, scope: !1413)
!1431 = !DILocation(line: 5854, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !38, line: 5854, column: 9)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !38, line: 5852, column: 17)
!1434 = !DILocation(line: 5854, column: 14, scope: !1432)
!1435 = !DILocation(line: 5854, column: 29, scope: !1432)
!1436 = !DILocation(line: 5854, column: 32, scope: !1432)
!1437 = !DILocation(line: 5854, column: 37, scope: !1432)
!1438 = !DILocation(line: 5854, column: 44, scope: !1432)
!1439 = !DILocation(line: 5854, column: 49, scope: !1432)
!1440 = !DILocation(line: 5854, column: 41, scope: !1432)
!1441 = !DILocation(line: 5854, column: 9, scope: !1433)
!1442 = !DILocation(line: 5855, column: 24, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !38, line: 5854, column: 56)
!1444 = !DILocation(line: 5855, column: 7, scope: !1443)
!1445 = !DILocation(line: 5856, column: 5, scope: !1443)
!1446 = !DILocalVariable(name: "full_collisions_counter", scope: !1433, file: !38, line: 5857, type: !77)
!1447 = !DILocation(line: 5857, column: 12, scope: !1433)
!1448 = !DILocalVariable(name: "pos", scope: !1433, file: !38, line: 5858, type: !61)
!1449 = !DILocation(line: 5858, column: 25, scope: !1433)
!1450 = !DILocalVariable(name: "mask", scope: !1433, file: !38, line: 5863, type: !798)
!1451 = !DILocation(line: 5863, column: 21, scope: !1433)
!1452 = !DILocation(line: 5863, column: 37, scope: !1433)
!1453 = !DILocation(line: 5863, column: 42, scope: !1433)
!1454 = !DILocation(line: 5863, column: 34, scope: !1433)
!1455 = !DILocation(line: 5863, column: 53, scope: !1433)
!1456 = !DILocalVariable(name: "i", scope: !1433, file: !38, line: 5865, type: !42)
!1457 = !DILocation(line: 5865, column: 15, scope: !1433)
!1458 = !DILocalVariable(name: "hash_value_i", scope: !1433, file: !38, line: 5866, type: !798)
!1459 = !DILocation(line: 5866, column: 21, scope: !1433)
!1460 = !DILocation(line: 5866, column: 36, scope: !1433)
!1461 = !DILocalVariable(name: "hash_alt", scope: !1433, file: !38, line: 5867, type: !42)
!1462 = !DILocation(line: 5867, column: 15, scope: !1433)
!1463 = !DILocation(line: 5867, column: 26, scope: !1433)
!1464 = !DILocation(line: 5870, column: 11, scope: !1433)
!1465 = !DILocation(line: 5870, column: 16, scope: !1433)
!1466 = !DILocation(line: 5870, column: 23, scope: !1433)
!1467 = !DILocation(line: 5870, column: 34, scope: !1433)
!1468 = !DILocation(line: 5870, column: 32, scope: !1433)
!1469 = !DILocation(line: 5870, column: 20, scope: !1433)
!1470 = !DILocation(line: 5870, column: 9, scope: !1433)
!1471 = !DILocation(line: 5871, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1433, file: !38, line: 5871, column: 9)
!1473 = !DILocation(line: 5871, column: 9, scope: !1433)
!1474 = !DILocation(line: 5872, column: 14, scope: !1472)
!1475 = !DILocation(line: 5872, column: 7, scope: !1472)
!1476 = !DILocation(line: 5873, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1433, file: !38, line: 5873, column: 9)
!1478 = !DILocation(line: 5873, column: 9, scope: !1433)
!1479 = !DILocation(line: 5874, column: 12, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !38, line: 5874, column: 11)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !38, line: 5873, column: 56)
!1482 = !DILocation(line: 5874, column: 17, scope: !1480)
!1483 = !DILocation(line: 5874, column: 21, scope: !1480)
!1484 = !DILocation(line: 5874, column: 25, scope: !1480)
!1485 = !DILocation(line: 5874, column: 11, scope: !1481)
!1486 = !DILocation(line: 5875, column: 16, scope: !1480)
!1487 = !DILocation(line: 5875, column: 9, scope: !1480)
!1488 = !DILocation(line: 5877, column: 7, scope: !1481)
!1489 = !DILocation(line: 5877, column: 12, scope: !1481)
!1490 = !DILocation(line: 5877, column: 27, scope: !1481)
!1491 = !DILocation(line: 5878, column: 7, scope: !1481)
!1492 = !DILocation(line: 5879, column: 5, scope: !1481)
!1493 = !DILocation(line: 5882, column: 7, scope: !1433)
!1494 = !DILocalVariable(name: "limit", scope: !1433, file: !38, line: 5883, type: !798)
!1495 = !DILocation(line: 5883, column: 21, scope: !1433)
!1496 = !DILocation(line: 5884, column: 33, scope: !1433)
!1497 = !DILocation(line: 5884, column: 38, scope: !1433)
!1498 = !DILocation(line: 5884, column: 43, scope: !1433)
!1499 = !DILocation(line: 5886, column: 40, scope: !1433)
!1500 = !DILocation(line: 5886, column: 45, scope: !1433)
!1501 = !DILocation(line: 5886, column: 50, scope: !1433)
!1502 = !DILocation(line: 5884, column: 30, scope: !1433)
!1503 = !DILocation(line: 5887, column: 5, scope: !1433)
!1504 = !DILocation(line: 5887, column: 12, scope: !1433)
!1505 = !DILocation(line: 5887, column: 16, scope: !1433)
!1506 = !DILocation(line: 5887, column: 14, scope: !1433)
!1507 = !DILocation(line: 5888, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1433, file: !38, line: 5887, column: 23)
!1509 = !DILocation(line: 5889, column: 13, scope: !1508)
!1510 = !DILocation(line: 5889, column: 18, scope: !1508)
!1511 = !DILocation(line: 5889, column: 26, scope: !1508)
!1512 = !DILocation(line: 5889, column: 37, scope: !1508)
!1513 = !DILocation(line: 5889, column: 35, scope: !1508)
!1514 = !DILocation(line: 5889, column: 42, scope: !1508)
!1515 = !DILocation(line: 5889, column: 40, scope: !1508)
!1516 = !DILocation(line: 5889, column: 22, scope: !1508)
!1517 = !DILocation(line: 5889, column: 11, scope: !1508)
!1518 = !DILocation(line: 5890, column: 11, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1508, file: !38, line: 5890, column: 11)
!1520 = !DILocation(line: 5890, column: 11, scope: !1508)
!1521 = !DILocation(line: 5891, column: 16, scope: !1519)
!1522 = !DILocation(line: 5891, column: 9, scope: !1519)
!1523 = !DILocation(line: 5892, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1508, file: !38, line: 5892, column: 11)
!1525 = !DILocation(line: 5892, column: 11, scope: !1508)
!1526 = !DILocation(line: 5893, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !38, line: 5893, column: 13)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !38, line: 5892, column: 58)
!1529 = !DILocation(line: 5893, column: 19, scope: !1527)
!1530 = !DILocation(line: 5893, column: 23, scope: !1527)
!1531 = !DILocation(line: 5893, column: 27, scope: !1527)
!1532 = !DILocation(line: 5893, column: 13, scope: !1528)
!1533 = !DILocation(line: 5894, column: 18, scope: !1527)
!1534 = !DILocation(line: 5894, column: 11, scope: !1527)
!1535 = !DILocation(line: 5896, column: 9, scope: !1528)
!1536 = !DILocation(line: 5896, column: 14, scope: !1528)
!1537 = !DILocation(line: 5896, column: 29, scope: !1528)
!1538 = !DILocation(line: 5897, column: 13, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1528, file: !38, line: 5897, column: 13)
!1540 = !DILocation(line: 5897, column: 39, scope: !1539)
!1541 = !DILocation(line: 5897, column: 13, scope: !1528)
!1542 = !DILocation(line: 5899, column: 11, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !38, line: 5897, column: 75)
!1544 = !DILocation(line: 5899, column: 11, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !38, line: 5899, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !38, line: 5899, column: 11)
!1547 = !DILocation(line: 5899, column: 11, scope: !1546)
!1548 = !DILocation(line: 5899, column: 11, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !38, line: 5899, column: 11)
!1550 = !DILocation(line: 5901, column: 11, scope: !1543)
!1551 = !DILocation(line: 5901, column: 16, scope: !1543)
!1552 = !DILocation(line: 5901, column: 29, scope: !1543)
!1553 = !DILocation(line: 5902, column: 9, scope: !1543)
!1554 = !DILocation(line: 5903, column: 13, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1528, file: !38, line: 5903, column: 13)
!1556 = !DILocation(line: 5903, column: 18, scope: !1555)
!1557 = !DILocation(line: 5903, column: 13, scope: !1528)
!1558 = !DILocation(line: 5904, column: 18, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !38, line: 5903, column: 32)
!1560 = !DILocation(line: 5904, column: 11, scope: !1559)
!1561 = !DILocation(line: 5906, column: 7, scope: !1528)
!1562 = distinct !{!1562, !1503, !1563}
!1563 = !DILocation(line: 5907, column: 5, scope: !1433)
!1564 = !DILocation(line: 5908, column: 3, scope: !1433)
!1565 = !DILocation(line: 5909, column: 3, scope: !1413)
!1566 = !DILocation(line: 5911, column: 1, scope: !1413)
!1567 = distinct !DISubprogram(name: "fio_ct_if2", scope: !38, file: !38, line: 2135, type: !1568, scopeLine: 2135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!42, !42, !42, !42}
!1570 = !DILocalVariable(name: "cond", arg: 1, scope: !1567, file: !38, line: 2135, type: !42)
!1571 = !DILocation(line: 2135, column: 48, scope: !1567)
!1572 = !DILocalVariable(name: "a", arg: 2, scope: !1567, file: !38, line: 2135, type: !42)
!1573 = !DILocation(line: 2135, column: 64, scope: !1567)
!1574 = !DILocalVariable(name: "b", arg: 3, scope: !1567, file: !38, line: 2135, type: !42)
!1575 = !DILocation(line: 2135, column: 77, scope: !1567)
!1576 = !DILocation(line: 2137, column: 32, scope: !1567)
!1577 = !DILocation(line: 2137, column: 20, scope: !1567)
!1578 = !DILocation(line: 2137, column: 39, scope: !1567)
!1579 = !DILocation(line: 2137, column: 42, scope: !1567)
!1580 = !DILocation(line: 2137, column: 10, scope: !1567)
!1581 = !DILocation(line: 2137, column: 3, scope: !1567)
!1582 = distinct !DISubprogram(name: "fiobj_iseq", scope: !6, file: !6, line: 603, type: !1583, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!124, !105, !105}
!1585 = !DILocalVariable(name: "o", arg: 1, scope: !1582, file: !6, line: 603, type: !105)
!1586 = !DILocation(line: 603, column: 39, scope: !1582)
!1587 = !DILocalVariable(name: "o2", arg: 2, scope: !1582, file: !6, line: 603, type: !105)
!1588 = !DILocation(line: 603, column: 54, scope: !1582)
!1589 = !DILocation(line: 604, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 604, column: 7)
!1591 = !DILocation(line: 604, column: 12, scope: !1590)
!1592 = !DILocation(line: 604, column: 9, scope: !1590)
!1593 = !DILocation(line: 604, column: 7, scope: !1582)
!1594 = !DILocation(line: 605, column: 5, scope: !1590)
!1595 = !DILocation(line: 606, column: 8, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 606, column: 7)
!1597 = !DILocation(line: 606, column: 10, scope: !1596)
!1598 = !DILocation(line: 606, column: 14, scope: !1596)
!1599 = !DILocation(line: 606, column: 7, scope: !1582)
!1600 = !DILocation(line: 607, column: 5, scope: !1596)
!1601 = !DILocation(line: 608, column: 8, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 608, column: 7)
!1603 = !DILocation(line: 608, column: 30, scope: !1602)
!1604 = !DILocation(line: 608, column: 34, scope: !1602)
!1605 = !DILocation(line: 608, column: 7, scope: !1582)
!1606 = !DILocation(line: 609, column: 5, scope: !1602)
!1607 = !DILocation(line: 610, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 610, column: 7)
!1609 = !DILocation(line: 610, column: 25, scope: !1608)
!1610 = !DILocation(line: 610, column: 33, scope: !1608)
!1611 = !DILocation(line: 610, column: 52, scope: !1608)
!1612 = !DILocation(line: 610, column: 30, scope: !1608)
!1613 = !DILocation(line: 610, column: 7, scope: !1582)
!1614 = !DILocation(line: 611, column: 5, scope: !1608)
!1615 = !DILocation(line: 612, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 612, column: 7)
!1617 = !DILocation(line: 612, column: 26, scope: !1616)
!1618 = !DILocation(line: 612, column: 32, scope: !1616)
!1619 = !DILocation(line: 612, column: 35, scope: !1616)
!1620 = !DILocation(line: 612, column: 7, scope: !1582)
!1621 = !DILocation(line: 613, column: 5, scope: !1616)
!1622 = !DILocation(line: 614, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 614, column: 7)
!1624 = !DILocation(line: 614, column: 25, scope: !1623)
!1625 = !DILocation(line: 614, column: 30, scope: !1623)
!1626 = !DILocation(line: 614, column: 33, scope: !1623)
!1627 = !DILocation(line: 614, column: 51, scope: !1623)
!1628 = !DILocation(line: 614, column: 57, scope: !1623)
!1629 = !DILocation(line: 614, column: 7, scope: !1582)
!1630 = !DILocation(line: 615, column: 52, scope: !1623)
!1631 = !DILocation(line: 615, column: 62, scope: !1623)
!1632 = !DILocation(line: 615, column: 12, scope: !1623)
!1633 = !DILocation(line: 615, column: 5, scope: !1623)
!1634 = !DILocation(line: 616, column: 3, scope: !1582)
!1635 = !DILocation(line: 617, column: 1, scope: !1582)
!1636 = distinct !DISubprogram(name: "fio_ct_if", scope: !38, file: !38, line: 2129, type: !1637, scopeLine: 2129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!42, !68, !42, !42}
!1639 = !DILocalVariable(name: "cond", arg: 1, scope: !1636, file: !38, line: 2129, type: !68)
!1640 = !DILocation(line: 2129, column: 45, scope: !1636)
!1641 = !DILocalVariable(name: "a", arg: 2, scope: !1636, file: !38, line: 2129, type: !42)
!1642 = !DILocation(line: 2129, column: 61, scope: !1636)
!1643 = !DILocalVariable(name: "b", arg: 3, scope: !1636, file: !38, line: 2129, type: !42)
!1644 = !DILocation(line: 2129, column: 74, scope: !1636)
!1645 = !DILocation(line: 2131, column: 11, scope: !1636)
!1646 = !DILocation(line: 2131, column: 22, scope: !1636)
!1647 = !DILocation(line: 2131, column: 27, scope: !1636)
!1648 = !DILocation(line: 2131, column: 19, scope: !1636)
!1649 = !DILocation(line: 2131, column: 16, scope: !1636)
!1650 = !DILocation(line: 2131, column: 36, scope: !1636)
!1651 = !DILocation(line: 2131, column: 40, scope: !1636)
!1652 = !DILocation(line: 2131, column: 38, scope: !1636)
!1653 = !DILocation(line: 2131, column: 33, scope: !1636)
!1654 = !DILocation(line: 2131, column: 13, scope: !1636)
!1655 = !DILocation(line: 2131, column: 3, scope: !1636)
!1656 = distinct !DISubprogram(name: "fio_ct_true", scope: !38, file: !38, line: 2117, type: !1657, scopeLine: 2117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!42, !42}
!1659 = !DILocalVariable(name: "cond", arg: 1, scope: !1656, file: !38, line: 2117, type: !42)
!1660 = !DILocation(line: 2117, column: 49, scope: !1656)
!1661 = !DILocation(line: 2119, column: 12, scope: !1656)
!1662 = !DILocation(line: 2119, column: 24, scope: !1656)
!1663 = !DILocation(line: 2119, column: 22, scope: !1656)
!1664 = !DILocation(line: 2119, column: 17, scope: !1656)
!1665 = !DILocation(line: 2119, column: 31, scope: !1656)
!1666 = !DILocation(line: 2119, column: 3, scope: !1656)
!1667 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !6, file: !6, line: 344, type: !1668, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1670, !58}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1671 = !DILocalVariable(name: "o", arg: 1, scope: !1667, file: !6, line: 344, type: !58)
!1672 = !DILocation(line: 344, column: 65, scope: !1667)
!1673 = !DILocation(line: 345, column: 11, scope: !1667)
!1674 = !DILocation(line: 345, column: 3, scope: !1667)
!1675 = !DILocation(line: 347, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1667, file: !6, line: 345, column: 26)
!1677 = !DILocation(line: 349, column: 5, scope: !1676)
!1678 = !DILocation(line: 351, column: 5, scope: !1676)
!1679 = !DILocation(line: 353, column: 5, scope: !1676)
!1680 = !DILocation(line: 355, column: 5, scope: !1676)
!1681 = !DILocation(line: 357, column: 5, scope: !1676)
!1682 = !DILocation(line: 362, column: 5, scope: !1676)
!1683 = !DILocation(line: 364, column: 3, scope: !1667)
!1684 = !DILocation(line: 365, column: 1, scope: !1667)
!1685 = distinct !DISubprogram(name: "fiobj_type", scope: !6, file: !6, line: 250, type: !1686, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!29, !58}
!1688 = !DILocalVariable(name: "o", arg: 1, scope: !1685, file: !6, line: 250, type: !58)
!1689 = !DILocation(line: 250, column: 45, scope: !1685)
!1690 = !DILocation(line: 251, column: 8, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 251, column: 7)
!1692 = !DILocation(line: 251, column: 7, scope: !1685)
!1693 = !DILocation(line: 252, column: 5, scope: !1691)
!1694 = !DILocation(line: 253, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 253, column: 7)
!1696 = !DILocation(line: 253, column: 9, scope: !1695)
!1697 = !DILocation(line: 253, column: 7, scope: !1685)
!1698 = !DILocation(line: 254, column: 5, scope: !1695)
!1699 = !DILocation(line: 255, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 255, column: 7)
!1701 = !DILocation(line: 255, column: 10, scope: !1700)
!1702 = !DILocation(line: 255, column: 37, scope: !1700)
!1703 = !DILocation(line: 255, column: 7, scope: !1685)
!1704 = !DILocation(line: 256, column: 29, scope: !1700)
!1705 = !DILocation(line: 256, column: 12, scope: !1700)
!1706 = !DILocation(line: 256, column: 5, scope: !1700)
!1707 = !DILocation(line: 258, column: 8, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 257, column: 7)
!1709 = !DILocation(line: 258, column: 10, scope: !1708)
!1710 = !DILocation(line: 258, column: 37, scope: !1708)
!1711 = !DILocation(line: 257, column: 7, scope: !1685)
!1712 = !DILocation(line: 259, column: 5, scope: !1708)
!1713 = !DILocation(line: 260, column: 30, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1685, file: !6, line: 260, column: 7)
!1715 = !DILocation(line: 260, column: 32, scope: !1714)
!1716 = !DILocation(line: 260, column: 59, scope: !1714)
!1717 = !DILocation(line: 260, column: 7, scope: !1685)
!1718 = !DILocation(line: 261, column: 5, scope: !1714)
!1719 = !DILocation(line: 262, column: 30, scope: !1685)
!1720 = !DILocation(line: 262, column: 10, scope: !1685)
!1721 = !DILocation(line: 262, column: 3, scope: !1685)
!1722 = !DILocation(line: 263, column: 1, scope: !1685)
!1723 = distinct !DISubprogram(name: "fio_hash____insert_or_overwrite_", scope: !38, file: !38, line: 5956, type: !1724, scopeLine: 5958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!54, !316, !42, !54, !124, !799}
!1726 = !DILocalVariable(name: "set", arg: 1, scope: !1723, file: !38, line: 5956, type: !316)
!1727 = !DILocation(line: 5956, column: 47, scope: !1723)
!1728 = !DILocalVariable(name: "hash_value", arg: 2, scope: !1723, file: !38, line: 5956, type: !42)
!1729 = !DILocation(line: 5956, column: 70, scope: !1723)
!1730 = !DILocalVariable(name: "obj", arg: 3, scope: !1723, file: !38, line: 5957, type: !54)
!1731 = !DILocation(line: 5957, column: 46, scope: !1723)
!1732 = !DILocalVariable(name: "overwrite", arg: 4, scope: !1723, file: !38, line: 5957, type: !124)
!1733 = !DILocation(line: 5957, column: 55, scope: !1723)
!1734 = !DILocalVariable(name: "old", arg: 5, scope: !1723, file: !38, line: 5958, type: !799)
!1735 = !DILocation(line: 5958, column: 51, scope: !1723)
!1736 = !DILocation(line: 5959, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1723, file: !38, line: 5959, column: 7)
!1738 = !DILocation(line: 5959, column: 7, scope: !1723)
!1739 = !DILocation(line: 5960, column: 16, scope: !1737)
!1740 = !DILocation(line: 5960, column: 5, scope: !1737)
!1741 = !DILocation(line: 5963, column: 31, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1723, file: !38, line: 5963, column: 7)
!1743 = !DILocation(line: 5963, column: 7, scope: !1742)
!1744 = !DILocation(line: 5963, column: 7, scope: !1723)
!1745 = !DILocation(line: 5964, column: 22, scope: !1742)
!1746 = !DILocation(line: 5964, column: 5, scope: !1742)
!1747 = !DILocation(line: 5966, column: 12, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !38, line: 5966, column: 12)
!1749 = !DILocation(line: 5966, column: 17, scope: !1748)
!1750 = !DILocation(line: 5966, column: 24, scope: !1748)
!1751 = !DILocation(line: 5966, column: 29, scope: !1748)
!1752 = !DILocation(line: 5966, column: 21, scope: !1748)
!1753 = !DILocation(line: 5966, column: 12, scope: !1742)
!1754 = !DILocation(line: 5967, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1748, file: !38, line: 5966, column: 35)
!1756 = !DILocation(line: 5967, column: 12, scope: !1755)
!1757 = !DILocation(line: 5967, column: 5, scope: !1755)
!1758 = !DILocation(line: 5968, column: 22, scope: !1755)
!1759 = !DILocation(line: 5968, column: 5, scope: !1755)
!1760 = !DILocation(line: 5969, column: 3, scope: !1755)
!1761 = !DILocalVariable(name: "pos", scope: !1723, file: !38, line: 5972, type: !61)
!1762 = !DILocation(line: 5972, column: 22, scope: !1723)
!1763 = !DILocation(line: 5972, column: 53, scope: !1723)
!1764 = !DILocation(line: 5972, column: 58, scope: !1723)
!1765 = !DILocation(line: 5972, column: 28, scope: !1723)
!1766 = !DILocation(line: 5974, column: 8, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1723, file: !38, line: 5974, column: 7)
!1768 = !DILocation(line: 5974, column: 7, scope: !1723)
!1769 = !DILocation(line: 5976, column: 5, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1767, file: !38, line: 5974, column: 13)
!1771 = !DILocation(line: 5976, column: 5, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1770, file: !38, line: 5976, column: 5)
!1773 = !DILocation(line: 5977, column: 35, scope: !1770)
!1774 = !DILocation(line: 5977, column: 5, scope: !1770)
!1775 = !DILocation(line: 5977, column: 10, scope: !1770)
!1776 = !DILocation(line: 5977, column: 18, scope: !1770)
!1777 = !DILocation(line: 5977, column: 23, scope: !1770)
!1778 = !DILocation(line: 5977, column: 28, scope: !1770)
!1779 = !DILocation(line: 5977, column: 33, scope: !1770)
!1780 = !DILocation(line: 5978, column: 7, scope: !1770)
!1781 = !DILocation(line: 5978, column: 12, scope: !1770)
!1782 = !DILocation(line: 5978, column: 5, scope: !1770)
!1783 = !DILocation(line: 5979, column: 7, scope: !1770)
!1784 = !DILocation(line: 5979, column: 12, scope: !1770)
!1785 = !DILocation(line: 5979, column: 5, scope: !1770)
!1786 = !DILocation(line: 5980, column: 22, scope: !1770)
!1787 = !DILocation(line: 5980, column: 5, scope: !1770)
!1788 = !DILocation(line: 5981, column: 12, scope: !1770)
!1789 = !DILocation(line: 5981, column: 17, scope: !1770)
!1790 = !DILocation(line: 5981, column: 25, scope: !1770)
!1791 = !DILocation(line: 5981, column: 30, scope: !1770)
!1792 = !DILocation(line: 5981, column: 34, scope: !1770)
!1793 = !DILocation(line: 5981, column: 39, scope: !1770)
!1794 = !DILocation(line: 5981, column: 5, scope: !1770)
!1795 = !DILocation(line: 5985, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1723, file: !38, line: 5985, column: 7)
!1797 = !DILocation(line: 5985, column: 12, scope: !1796)
!1798 = !DILocation(line: 5985, column: 7, scope: !1723)
!1799 = !DILocation(line: 5987, column: 10, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !38, line: 5987, column: 9)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !38, line: 5985, column: 17)
!1802 = !DILocation(line: 5987, column: 9, scope: !1801)
!1803 = !DILocation(line: 5988, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !38, line: 5987, column: 21)
!1805 = !DILocation(line: 5988, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !38, line: 5988, column: 7)
!1807 = !DILocation(line: 5988, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1806, file: !38, line: 5988, column: 7)
!1809 = !DILocation(line: 5988, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !38, line: 5988, column: 7)
!1811 = !DILocation(line: 5989, column: 14, scope: !1804)
!1812 = !DILocation(line: 5989, column: 19, scope: !1804)
!1813 = !DILocation(line: 5989, column: 24, scope: !1804)
!1814 = !DILocation(line: 5989, column: 7, scope: !1804)
!1815 = !DILocation(line: 5992, column: 9, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1801, file: !38, line: 5992, column: 9)
!1817 = !DILocation(line: 5992, column: 9, scope: !1801)
!1818 = !DILocation(line: 5993, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !38, line: 5992, column: 14)
!1820 = !DILocation(line: 5994, column: 5, scope: !1819)
!1821 = !DILocation(line: 5996, column: 5, scope: !1801)
!1822 = !DILocation(line: 5996, column: 5, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1801, file: !38, line: 5996, column: 5)
!1824 = !DILocation(line: 5997, column: 5, scope: !1801)
!1825 = !DILocation(line: 5998, column: 12, scope: !1801)
!1826 = !DILocation(line: 5998, column: 17, scope: !1801)
!1827 = !DILocation(line: 5998, column: 22, scope: !1801)
!1828 = !DILocation(line: 5998, column: 5, scope: !1801)
!1829 = !DILocation(line: 6007, column: 16, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1796, file: !38, line: 6005, column: 10)
!1831 = !DILocation(line: 6007, column: 21, scope: !1830)
!1832 = !DILocation(line: 6007, column: 31, scope: !1830)
!1833 = !DILocation(line: 6007, column: 36, scope: !1830)
!1834 = !DILocation(line: 6007, column: 29, scope: !1830)
!1835 = !DILocation(line: 6007, column: 5, scope: !1830)
!1836 = !DILocation(line: 6007, column: 10, scope: !1830)
!1837 = !DILocation(line: 6007, column: 14, scope: !1830)
!1838 = !DILocation(line: 6008, column: 7, scope: !1830)
!1839 = !DILocation(line: 6008, column: 12, scope: !1830)
!1840 = !DILocation(line: 6008, column: 5, scope: !1830)
!1841 = !DILocation(line: 6009, column: 7, scope: !1830)
!1842 = !DILocation(line: 6009, column: 12, scope: !1830)
!1843 = !DILocation(line: 6009, column: 5, scope: !1830)
!1844 = !DILocation(line: 6012, column: 15, scope: !1723)
!1845 = !DILocation(line: 6012, column: 3, scope: !1723)
!1846 = !DILocation(line: 6012, column: 8, scope: !1723)
!1847 = !DILocation(line: 6012, column: 13, scope: !1723)
!1848 = !DILocation(line: 6013, column: 20, scope: !1723)
!1849 = !DILocation(line: 6013, column: 3, scope: !1723)
!1850 = !DILocation(line: 6013, column: 8, scope: !1723)
!1851 = !DILocation(line: 6013, column: 13, scope: !1723)
!1852 = !DILocation(line: 6013, column: 18, scope: !1723)
!1853 = !DILocation(line: 6014, column: 3, scope: !1723)
!1854 = !DILocation(line: 6014, column: 3, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1723, file: !38, line: 6014, column: 3)
!1856 = !DILocation(line: 6016, column: 10, scope: !1723)
!1857 = !DILocation(line: 6016, column: 15, scope: !1723)
!1858 = !DILocation(line: 6016, column: 20, scope: !1723)
!1859 = !DILocation(line: 6016, column: 3, scope: !1723)
!1860 = !DILocation(line: 6017, column: 1, scope: !1723)
!1861 = distinct !DISubprogram(name: "fio_hash___is_fragmented", scope: !38, file: !38, line: 6255, type: !422, scopeLine: 6255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1862 = !DILocalVariable(name: "set", arg: 1, scope: !1861, file: !38, line: 6255, type: !424)
!1863 = !DILocation(line: 6255, column: 68, scope: !1861)
!1864 = !DILocation(line: 6256, column: 12, scope: !1861)
!1865 = !DILocation(line: 6256, column: 17, scope: !1861)
!1866 = !DILocation(line: 6256, column: 23, scope: !1861)
!1867 = !DILocation(line: 6256, column: 28, scope: !1861)
!1868 = !DILocation(line: 6256, column: 21, scope: !1861)
!1869 = !DILocation(line: 6256, column: 38, scope: !1861)
!1870 = !DILocation(line: 6256, column: 43, scope: !1861)
!1871 = !DILocation(line: 6256, column: 49, scope: !1861)
!1872 = !DILocation(line: 6256, column: 35, scope: !1861)
!1873 = !DILocation(line: 6256, column: 10, scope: !1861)
!1874 = !DILocation(line: 6256, column: 3, scope: !1861)
!1875 = distinct !DISubprogram(name: "fiobj_obj2cstr", scope: !6, file: !6, line: 515, type: !128, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !161)
!1876 = !DILocalVariable(name: "o", arg: 1, scope: !1875, file: !6, line: 515, type: !105)
!1877 = !DILocation(line: 515, column: 54, scope: !1875)
!1878 = !DILocation(line: 516, column: 8, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !6, line: 516, column: 7)
!1880 = !DILocation(line: 516, column: 7, scope: !1875)
!1881 = !DILocalVariable(name: "ret", scope: !1882, file: !6, line: 517, type: !130)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !6, line: 516, column: 11)
!1883 = !DILocation(line: 517, column: 20, scope: !1882)
!1884 = !DILocation(line: 518, column: 5, scope: !1882)
!1885 = !DILocation(line: 520, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1875, file: !6, line: 520, column: 7)
!1887 = !DILocation(line: 520, column: 9, scope: !1886)
!1888 = !DILocation(line: 520, column: 7, scope: !1875)
!1889 = !DILocation(line: 521, column: 35, scope: !1886)
!1890 = !DILocation(line: 521, column: 38, scope: !1886)
!1891 = !DILocation(line: 521, column: 12, scope: !1886)
!1892 = !DILocation(line: 521, column: 5, scope: !1886)
!1893 = !DILocation(line: 522, column: 8, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1875, file: !6, line: 522, column: 7)
!1895 = !DILocation(line: 522, column: 10, scope: !1894)
!1896 = !DILocation(line: 522, column: 37, scope: !1894)
!1897 = !DILocation(line: 522, column: 7, scope: !1875)
!1898 = !DILocation(line: 523, column: 30, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !6, line: 522, column: 65)
!1900 = !DILocation(line: 523, column: 13, scope: !1899)
!1901 = !DILocation(line: 523, column: 5, scope: !1899)
!1902 = !DILocalVariable(name: "ret", scope: !1903, file: !6, line: 525, type: !130)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !6, line: 524, column: 24)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !6, line: 523, column: 33)
!1905 = !DILocation(line: 525, column: 22, scope: !1903)
!1906 = !DILocation(line: 526, column: 7, scope: !1903)
!1907 = !DILocalVariable(name: "ret", scope: !1908, file: !6, line: 529, type: !130)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !6, line: 528, column: 25)
!1909 = !DILocation(line: 529, column: 22, scope: !1908)
!1910 = !DILocation(line: 530, column: 7, scope: !1908)
!1911 = !DILocalVariable(name: "ret", scope: !1912, file: !6, line: 533, type: !130)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !6, line: 532, column: 24)
!1913 = !DILocation(line: 533, column: 22, scope: !1912)
!1914 = !DILocation(line: 534, column: 7, scope: !1912)
!1915 = !DILocation(line: 537, column: 7, scope: !1904)
!1916 = !DILocation(line: 539, column: 3, scope: !1899)
!1917 = !DILocation(line: 540, column: 10, scope: !1875)
!1918 = !DILocation(line: 540, column: 28, scope: !1875)
!1919 = !DILocation(line: 540, column: 35, scope: !1875)
!1920 = !DILocation(line: 540, column: 3, scope: !1875)
!1921 = !DILocation(line: 541, column: 1, scope: !1875)
