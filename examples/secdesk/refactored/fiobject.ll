; ModuleID = 'fiobject.c'
source_filename = "fiobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_stack_s = type { i64, i64, i64, i64* }
%struct.task_packet_s = type { i32 (i64, i8*)*, i8*, %struct.fiobj_stack_s*, i64, i64, i8, i8 }
%struct.fiobj_object_header_s = type { i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@FIO_LOG_LEVEL = weak dso_local global i32 4, align 4, !dbg !0
@__const.fio_ltoa.notation = private unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !39
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !44
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_DATA = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"FATAL: memory allocation error ../include/fio.h:4920\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !60, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !65, metadata !DIExpression()), !dbg !80
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !81
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !81
  call void @llvm.va_start(i8* %7), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %5, metadata !82, metadata !DIExpression()), !dbg !83
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !84
  %9 = load i8*, i8** %2, align 8, !dbg !85
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !86
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !87
  store i32 %11, i32* %5, align 4, !dbg !83
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !88
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !88
  call void @llvm.va_end(i8* %13), !dbg !88
  %14 = load i32, i32* %5, align 4, !dbg !89
  %15 = icmp sle i32 %14, 0, !dbg !91
  br i1 %15, label %19, label %16, !dbg !92

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !93
  %18 = icmp sge i32 %17, 2046, !dbg !94
  br i1 %18, label %19, label %29, !dbg !95

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !96
  %21 = icmp sge i32 %20, 2046, !dbg !99
  br i1 %21, label %22, label %25, !dbg !100

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !101
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !104
  store i32 2041, i32* %5, align 4, !dbg !105
  br label %28, !dbg !106

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !107
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !109
  br label %42, !dbg !110

28:                                               ; preds = %22
  br label %29, !dbg !111

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !112
  %31 = add nsw i32 %30, 1, !dbg !112
  store i32 %31, i32* %5, align 4, !dbg !112
  %32 = sext i32 %30 to i64, !dbg !113
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !113
  store i8 10, i8* %33, align 1, !dbg !114
  %34 = load i32, i32* %5, align 4, !dbg !115
  %35 = sext i32 %34 to i64, !dbg !116
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !116
  store i8 48, i8* %36, align 1, !dbg !117
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !118
  %38 = load i32, i32* %5, align 4, !dbg !119
  %39 = sext i32 %38 to i64, !dbg !119
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !120
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !121
  br label %42, !dbg !122

42:                                               ; preds = %29, %25
  ret void, !dbg !122
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
define weak dso_local noalias i8* @fio_malloc(i64 %0) #0 !dbg !123 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i8** %3, metadata !130, metadata !DIExpression()), !dbg !131
  %4 = load i64, i64* %2, align 8, !dbg !132
  %5 = call noalias i8* @malloc(i64 %4) #2, !dbg !133
  store i8* %5, i8** %3, align 8, !dbg !131
  %6 = load i8*, i8** %3, align 8, !dbg !134
  %7 = icmp ne i8* %6, null, !dbg !134
  br i1 %7, label %8, label %11, !dbg !136

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !137
  %10 = load i64, i64* %2, align 8, !dbg !138
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 %10, i1 false), !dbg !139
  br label %11, !dbg !139

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !140
  ret i8* %12, !dbg !141
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local noalias i8* @fio_calloc(i64 %0, i64 %1) #0 !dbg !142 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !145, metadata !DIExpression()), !dbg !146
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !147, metadata !DIExpression()), !dbg !148
  %5 = load i64, i64* %3, align 8, !dbg !149
  %6 = load i64, i64* %4, align 8, !dbg !150
  %7 = call noalias i8* @calloc(i64 %5, i64 %6) #2, !dbg !151
  ret i8* %7, !dbg !152
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @fio_free(i8* %0) #0 !dbg !153 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !156, metadata !DIExpression()), !dbg !157
  %3 = load i8*, i8** %2, align 8, !dbg !158
  call void @free(i8* %3) #2, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i8* @fio_realloc(i8* %0, i64 %1) #0 !dbg !161 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !164, metadata !DIExpression()), !dbg !165
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !166, metadata !DIExpression()), !dbg !167
  %5 = load i8*, i8** %3, align 8, !dbg !168
  %6 = load i64, i64* %4, align 8, !dbg !169
  %7 = call i8* @realloc(i8* %5, i64 %6) #2, !dbg !170
  ret i8* %7, !dbg !171
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i8* @fio_realloc2(i8* %0, i64 %1, i64 %2) #0 !dbg !172 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !175, metadata !DIExpression()), !dbg !176
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !177, metadata !DIExpression()), !dbg !178
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !179, metadata !DIExpression()), !dbg !180
  %7 = load i8*, i8** %4, align 8, !dbg !181
  %8 = load i64, i64* %5, align 8, !dbg !182
  %9 = call i8* @realloc(i8* %7, i64 %8) #2, !dbg !183
  ret i8* %9, !dbg !184
}

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local noalias i8* @fio_mmap(i64 %0) #0 !dbg !185 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !186, metadata !DIExpression()), !dbg !187
  %3 = load i64, i64* %2, align 8, !dbg !188
  %4 = call noalias i8* @fio_malloc(i64 %3), !dbg !189
  %5 = ptrtoint i8* %4 to i64, !dbg !189
  %6 = and i64 %5, 15, !dbg !189
  %7 = icmp eq i64 %6, 0, !dbg !189
  call void @llvm.assume(i1 %7), !dbg !189
  ret i8* %4, !dbg !190
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_atol(i8** %0) #0 !dbg !191 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !200, metadata !DIExpression()), !dbg !201
  %3 = load i8**, i8*** %2, align 8, !dbg !202
  %4 = load i8*, i8** %3, align 8, !dbg !203
  %5 = load i8**, i8*** %2, align 8, !dbg !204
  %6 = call i64 @strtoll(i8* %4, i8** %5, i32 0) #2, !dbg !205
  ret i64 %6, !dbg !206
}

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8*, i8**, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local double @fio_atof(i8** %0) #0 !dbg !207 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !211, metadata !DIExpression()), !dbg !212
  %3 = load i8**, i8*** %2, align 8, !dbg !213
  %4 = load i8*, i8** %3, align 8, !dbg !214
  %5 = load i8**, i8*** %2, align 8, !dbg !215
  %6 = call double @strtod(i8* %4, i8** %5) #2, !dbg !216
  ret double %6, !dbg !217
}

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #3

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_ltoa(i8* %0, i64 %1, i8 zeroext %2) #0 !dbg !218 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca [16 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca [48 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !221, metadata !DIExpression()), !dbg !222
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !223, metadata !DIExpression()), !dbg !224
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !227, metadata !DIExpression()), !dbg !231
  %21 = bitcast [16 x i8]* %8 to i8*, !dbg !231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.fio_ltoa.notation, i32 0, i32 0), i64 16, i1 false), !dbg !231
  call void @llvm.dbg.declare(metadata i64* %9, metadata !232, metadata !DIExpression()), !dbg !233
  store i64 0, i64* %9, align 8, !dbg !233
  call void @llvm.dbg.declare(metadata [48 x i8]* %10, metadata !234, metadata !DIExpression()), !dbg !238
  %22 = load i64, i64* %6, align 8, !dbg !239
  %23 = icmp ne i64 %22, 0, !dbg !239
  br i1 %23, label %25, label %24, !dbg !241

24:                                               ; preds = %3
  br label %311, !dbg !242

25:                                               ; preds = %3
  %26 = load i8, i8* %7, align 1, !dbg !243
  %27 = zext i8 %26 to i32, !dbg !243
  switch i32 %27, label %264 [
    i32 1, label %28
    i32 2, label %28
    i32 8, label %86
    i32 16, label %133
    i32 3, label %214
    i32 4, label %214
    i32 5, label %214
    i32 6, label %214
    i32 7, label %214
    i32 9, label %214
  ], !dbg !244

28:                                               ; preds = %25, %25
  call void @llvm.dbg.declare(metadata i64* %11, metadata !245, metadata !DIExpression()), !dbg !250
  %29 = load i64, i64* %6, align 8, !dbg !251
  store i64 %29, i64* %11, align 8, !dbg !250
  call void @llvm.dbg.declare(metadata i8* %12, metadata !252, metadata !DIExpression()), !dbg !253
  store i8 0, i8* %12, align 1, !dbg !253
  %30 = load i8*, i8** %5, align 8, !dbg !254
  %31 = load i64, i64* %9, align 8, !dbg !255
  %32 = add i64 %31, 1, !dbg !255
  store i64 %32, i64* %9, align 8, !dbg !255
  %33 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !254
  store i8 48, i8* %33, align 1, !dbg !256
  %34 = load i8*, i8** %5, align 8, !dbg !257
  %35 = load i64, i64* %9, align 8, !dbg !258
  %36 = add i64 %35, 1, !dbg !258
  store i64 %36, i64* %9, align 8, !dbg !258
  %37 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !257
  store i8 98, i8* %37, align 1, !dbg !259
  br label %38, !dbg !260

38:                                               ; preds = %48, %28
  %39 = load i8, i8* %12, align 1, !dbg !261
  %40 = zext i8 %39 to i32, !dbg !261
  %41 = icmp slt i32 %40, 64, !dbg !262
  br i1 %41, label %42, label %46, !dbg !263

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8, !dbg !264
  %44 = and i64 %43, -9223372036854775808, !dbg !265
  %45 = icmp eq i64 %44, 0, !dbg !266
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ], !dbg !267
  br i1 %47, label %48, label %53, !dbg !260

48:                                               ; preds = %46
  %49 = load i64, i64* %11, align 8, !dbg !268
  %50 = shl i64 %49, 1, !dbg !270
  store i64 %50, i64* %11, align 8, !dbg !271
  %51 = load i8, i8* %12, align 1, !dbg !272
  %52 = add i8 %51, 1, !dbg !272
  store i8 %52, i8* %12, align 1, !dbg !272
  br label %38, !dbg !260, !llvm.loop !273

53:                                               ; preds = %46
  %54 = load i8, i8* %12, align 1, !dbg !275
  %55 = icmp ne i8 %54, 0, !dbg !275
  br i1 %55, label %56, label %61, !dbg !277

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8, !dbg !278
  %58 = load i64, i64* %9, align 8, !dbg !280
  %59 = add i64 %58, 1, !dbg !280
  store i64 %59, i64* %9, align 8, !dbg !280
  %60 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !278
  store i8 48, i8* %60, align 1, !dbg !281
  br label %61, !dbg !282

61:                                               ; preds = %56, %53
  br label %62, !dbg !283

62:                                               ; preds = %66, %61
  %63 = load i8, i8* %12, align 1, !dbg !284
  %64 = zext i8 %63 to i32, !dbg !284
  %65 = icmp slt i32 %64, 64, !dbg !285
  br i1 %65, label %66, label %81, !dbg !283

66:                                               ; preds = %62
  %67 = load i64, i64* %11, align 8, !dbg !286
  %68 = and i64 %67, -9223372036854775808, !dbg !288
  %69 = icmp ne i64 %68, 0, !dbg !289
  %70 = zext i1 %69 to i64, !dbg !289
  %71 = select i1 %69, i32 49, i32 48, !dbg !289
  %72 = trunc i32 %71 to i8, !dbg !290
  %73 = load i8*, i8** %5, align 8, !dbg !291
  %74 = load i64, i64* %9, align 8, !dbg !292
  %75 = add i64 %74, 1, !dbg !292
  store i64 %75, i64* %9, align 8, !dbg !292
  %76 = getelementptr inbounds i8, i8* %73, i64 %74, !dbg !291
  store i8 %72, i8* %76, align 1, !dbg !293
  %77 = load i64, i64* %11, align 8, !dbg !294
  %78 = shl i64 %77, 1, !dbg !295
  store i64 %78, i64* %11, align 8, !dbg !296
  %79 = load i8, i8* %12, align 1, !dbg !297
  %80 = add i8 %79, 1, !dbg !297
  store i8 %80, i8* %12, align 1, !dbg !297
  br label %62, !dbg !283, !llvm.loop !298

81:                                               ; preds = %62
  %82 = load i8*, i8** %5, align 8, !dbg !300
  %83 = load i64, i64* %9, align 8, !dbg !301
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !300
  store i8 0, i8* %84, align 1, !dbg !302
  %85 = load i64, i64* %9, align 8, !dbg !303
  store i64 %85, i64* %4, align 8, !dbg !304
  br label %345, !dbg !304

86:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %13, metadata !305, metadata !DIExpression()), !dbg !307
  store i64 0, i64* %13, align 8, !dbg !307
  %87 = load i64, i64* %6, align 8, !dbg !308
  %88 = icmp slt i64 %87, 0, !dbg !310
  br i1 %88, label %89, label %96, !dbg !311

89:                                               ; preds = %86
  %90 = load i8*, i8** %5, align 8, !dbg !312
  %91 = load i64, i64* %9, align 8, !dbg !314
  %92 = add i64 %91, 1, !dbg !314
  store i64 %92, i64* %9, align 8, !dbg !314
  %93 = getelementptr inbounds i8, i8* %90, i64 %91, !dbg !312
  store i8 45, i8* %93, align 1, !dbg !315
  %94 = load i64, i64* %6, align 8, !dbg !316
  %95 = sub nsw i64 0, %94, !dbg !317
  store i64 %95, i64* %6, align 8, !dbg !318
  br label %96, !dbg !319

96:                                               ; preds = %89, %86
  %97 = load i8*, i8** %5, align 8, !dbg !320
  %98 = load i64, i64* %9, align 8, !dbg !321
  %99 = add i64 %98, 1, !dbg !321
  store i64 %99, i64* %9, align 8, !dbg !321
  %100 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !320
  store i8 48, i8* %100, align 1, !dbg !322
  br label %101, !dbg !323

101:                                              ; preds = %104, %96
  %102 = load i64, i64* %6, align 8, !dbg !324
  %103 = icmp ne i64 %102, 0, !dbg !323
  br i1 %103, label %104, label %114, !dbg !323

104:                                              ; preds = %101
  %105 = load i64, i64* %6, align 8, !dbg !325
  %106 = and i64 %105, 7, !dbg !327
  %107 = add nsw i64 48, %106, !dbg !328
  %108 = trunc i64 %107 to i8, !dbg !329
  %109 = load i64, i64* %13, align 8, !dbg !330
  %110 = add i64 %109, 1, !dbg !330
  store i64 %110, i64* %13, align 8, !dbg !330
  %111 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %109, !dbg !331
  store i8 %108, i8* %111, align 1, !dbg !332
  %112 = load i64, i64* %6, align 8, !dbg !333
  %113 = ashr i64 %112, 3, !dbg !334
  store i64 %113, i64* %6, align 8, !dbg !335
  br label %101, !dbg !323, !llvm.loop !336

114:                                              ; preds = %101
  br label %115, !dbg !338

115:                                              ; preds = %118, %114
  %116 = load i64, i64* %13, align 8, !dbg !339
  %117 = icmp ne i64 %116, 0, !dbg !338
  br i1 %117, label %118, label %128, !dbg !338

118:                                              ; preds = %115
  %119 = load i64, i64* %13, align 8, !dbg !340
  %120 = add i64 %119, -1, !dbg !340
  store i64 %120, i64* %13, align 8, !dbg !340
  %121 = load i64, i64* %13, align 8, !dbg !342
  %122 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %121, !dbg !343
  %123 = load i8, i8* %122, align 1, !dbg !343
  %124 = load i8*, i8** %5, align 8, !dbg !344
  %125 = load i64, i64* %9, align 8, !dbg !345
  %126 = add i64 %125, 1, !dbg !345
  store i64 %126, i64* %9, align 8, !dbg !345
  %127 = getelementptr inbounds i8, i8* %124, i64 %125, !dbg !344
  store i8 %123, i8* %127, align 1, !dbg !346
  br label %115, !dbg !338, !llvm.loop !347

128:                                              ; preds = %115
  %129 = load i8*, i8** %5, align 8, !dbg !349
  %130 = load i64, i64* %9, align 8, !dbg !350
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !349
  store i8 0, i8* %131, align 1, !dbg !351
  %132 = load i64, i64* %9, align 8, !dbg !352
  store i64 %132, i64* %4, align 8, !dbg !353
  br label %345, !dbg !353

133:                                              ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %14, metadata !354, metadata !DIExpression()), !dbg !356
  %134 = load i64, i64* %6, align 8, !dbg !357
  store i64 %134, i64* %14, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata i8* %15, metadata !358, metadata !DIExpression()), !dbg !359
  store i8 0, i8* %15, align 1, !dbg !359
  %135 = load i8*, i8** %5, align 8, !dbg !360
  %136 = load i64, i64* %9, align 8, !dbg !361
  %137 = add i64 %136, 1, !dbg !361
  store i64 %137, i64* %9, align 8, !dbg !361
  %138 = getelementptr inbounds i8, i8* %135, i64 %136, !dbg !360
  store i8 48, i8* %138, align 1, !dbg !362
  %139 = load i8*, i8** %5, align 8, !dbg !363
  %140 = load i64, i64* %9, align 8, !dbg !364
  %141 = add i64 %140, 1, !dbg !364
  store i64 %141, i64* %9, align 8, !dbg !364
  %142 = getelementptr inbounds i8, i8* %139, i64 %140, !dbg !363
  store i8 120, i8* %142, align 1, !dbg !365
  br label %143, !dbg !366

143:                                              ; preds = %153, %133
  %144 = load i8, i8* %15, align 1, !dbg !367
  %145 = zext i8 %144 to i32, !dbg !367
  %146 = icmp slt i32 %145, 8, !dbg !368
  br i1 %146, label %147, label %151, !dbg !369

147:                                              ; preds = %143
  %148 = load i64, i64* %14, align 8, !dbg !370
  %149 = and i64 %148, -72057594037927936, !dbg !371
  %150 = icmp eq i64 %149, 0, !dbg !372
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i1 [ false, %143 ], [ %150, %147 ], !dbg !373
  br i1 %152, label %153, label %158, !dbg !366

153:                                              ; preds = %151
  %154 = load i64, i64* %14, align 8, !dbg !374
  %155 = shl i64 %154, 8, !dbg !376
  store i64 %155, i64* %14, align 8, !dbg !377
  %156 = load i8, i8* %15, align 1, !dbg !378
  %157 = add i8 %156, 1, !dbg !378
  store i8 %157, i8* %15, align 1, !dbg !378
  br label %143, !dbg !366, !llvm.loop !379

158:                                              ; preds = %151
  %159 = load i8, i8* %15, align 1, !dbg !381
  %160 = zext i8 %159 to i32, !dbg !381
  %161 = icmp ne i32 %160, 0, !dbg !381
  br i1 %161, label %162, label %175, !dbg !383

162:                                              ; preds = %158
  %163 = load i64, i64* %14, align 8, !dbg !384
  %164 = and i64 %163, -9223372036854775808, !dbg !385
  %165 = icmp ne i64 %164, 0, !dbg !385
  br i1 %165, label %166, label %175, !dbg !386

166:                                              ; preds = %162
  %167 = load i8*, i8** %5, align 8, !dbg !387
  %168 = load i64, i64* %9, align 8, !dbg !389
  %169 = add i64 %168, 1, !dbg !389
  store i64 %169, i64* %9, align 8, !dbg !389
  %170 = getelementptr inbounds i8, i8* %167, i64 %168, !dbg !387
  store i8 48, i8* %170, align 1, !dbg !390
  %171 = load i8*, i8** %5, align 8, !dbg !391
  %172 = load i64, i64* %9, align 8, !dbg !392
  %173 = add i64 %172, 1, !dbg !392
  store i64 %173, i64* %9, align 8, !dbg !392
  %174 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !391
  store i8 48, i8* %174, align 1, !dbg !393
  br label %175, !dbg !394

175:                                              ; preds = %166, %162, %158
  br label %176, !dbg !395

176:                                              ; preds = %180, %175
  %177 = load i8, i8* %15, align 1, !dbg !396
  %178 = zext i8 %177 to i32, !dbg !396
  %179 = icmp slt i32 %178, 8, !dbg !397
  br i1 %179, label %180, label %209, !dbg !395

180:                                              ; preds = %176
  call void @llvm.dbg.declare(metadata i8* %16, metadata !398, metadata !DIExpression()), !dbg !400
  %181 = load i64, i64* %14, align 8, !dbg !401
  %182 = and i64 %181, -1152921504606846976, !dbg !402
  %183 = lshr i64 %182, 60, !dbg !403
  %184 = trunc i64 %183 to i8, !dbg !404
  store i8 %184, i8* %16, align 1, !dbg !400
  %185 = load i8, i8* %16, align 1, !dbg !405
  %186 = zext i8 %185 to i64, !dbg !406
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %186, !dbg !406
  %188 = load i8, i8* %187, align 1, !dbg !406
  %189 = load i8*, i8** %5, align 8, !dbg !407
  %190 = load i64, i64* %9, align 8, !dbg !408
  %191 = add i64 %190, 1, !dbg !408
  store i64 %191, i64* %9, align 8, !dbg !408
  %192 = getelementptr inbounds i8, i8* %189, i64 %190, !dbg !407
  store i8 %188, i8* %192, align 1, !dbg !409
  %193 = load i64, i64* %14, align 8, !dbg !410
  %194 = and i64 %193, 1080863910568919040, !dbg !411
  %195 = lshr i64 %194, 56, !dbg !412
  %196 = trunc i64 %195 to i8, !dbg !413
  store i8 %196, i8* %16, align 1, !dbg !414
  %197 = load i8, i8* %16, align 1, !dbg !415
  %198 = zext i8 %197 to i64, !dbg !416
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %198, !dbg !416
  %200 = load i8, i8* %199, align 1, !dbg !416
  %201 = load i8*, i8** %5, align 8, !dbg !417
  %202 = load i64, i64* %9, align 8, !dbg !418
  %203 = add i64 %202, 1, !dbg !418
  store i64 %203, i64* %9, align 8, !dbg !418
  %204 = getelementptr inbounds i8, i8* %201, i64 %202, !dbg !417
  store i8 %200, i8* %204, align 1, !dbg !419
  %205 = load i8, i8* %15, align 1, !dbg !420
  %206 = add i8 %205, 1, !dbg !420
  store i8 %206, i8* %15, align 1, !dbg !420
  %207 = load i64, i64* %14, align 8, !dbg !421
  %208 = shl i64 %207, 8, !dbg !422
  store i64 %208, i64* %14, align 8, !dbg !423
  br label %176, !dbg !395, !llvm.loop !424

209:                                              ; preds = %176
  %210 = load i8*, i8** %5, align 8, !dbg !426
  %211 = load i64, i64* %9, align 8, !dbg !427
  %212 = getelementptr inbounds i8, i8* %210, i64 %211, !dbg !426
  store i8 0, i8* %212, align 1, !dbg !428
  %213 = load i64, i64* %9, align 8, !dbg !429
  store i64 %213, i64* %4, align 8, !dbg !430
  br label %345, !dbg !430

214:                                              ; preds = %25, %25, %25, %25, %25, %25
  %215 = load i64, i64* %6, align 8, !dbg !431
  %216 = icmp slt i64 %215, 0, !dbg !433
  br i1 %216, label %217, label %224, !dbg !434

217:                                              ; preds = %214
  %218 = load i8*, i8** %5, align 8, !dbg !435
  %219 = load i64, i64* %9, align 8, !dbg !437
  %220 = add i64 %219, 1, !dbg !437
  store i64 %220, i64* %9, align 8, !dbg !437
  %221 = getelementptr inbounds i8, i8* %218, i64 %219, !dbg !435
  store i8 45, i8* %221, align 1, !dbg !438
  %222 = load i64, i64* %6, align 8, !dbg !439
  %223 = sub nsw i64 0, %222, !dbg !440
  store i64 %223, i64* %6, align 8, !dbg !441
  br label %224, !dbg !442

224:                                              ; preds = %217, %214
  call void @llvm.dbg.declare(metadata i64* %17, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 0, i64* %17, align 8, !dbg !444
  br label %225, !dbg !445

225:                                              ; preds = %228, %224
  %226 = load i64, i64* %6, align 8, !dbg !446
  %227 = icmp ne i64 %226, 0, !dbg !445
  br i1 %227, label %228, label %245, !dbg !445

228:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata i64* %18, metadata !447, metadata !DIExpression()), !dbg !449
  %229 = load i64, i64* %6, align 8, !dbg !450
  %230 = load i8, i8* %7, align 1, !dbg !451
  %231 = zext i8 %230 to i64, !dbg !451
  %232 = sdiv i64 %229, %231, !dbg !452
  store i64 %232, i64* %18, align 8, !dbg !449
  %233 = load i64, i64* %6, align 8, !dbg !453
  %234 = load i64, i64* %18, align 8, !dbg !454
  %235 = load i8, i8* %7, align 1, !dbg !455
  %236 = zext i8 %235 to i64, !dbg !455
  %237 = mul i64 %234, %236, !dbg !456
  %238 = sub i64 %233, %237, !dbg !457
  %239 = add i64 48, %238, !dbg !458
  %240 = trunc i64 %239 to i8, !dbg !459
  %241 = load i64, i64* %17, align 8, !dbg !460
  %242 = add i64 %241, 1, !dbg !460
  store i64 %242, i64* %17, align 8, !dbg !460
  %243 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %241, !dbg !461
  store i8 %240, i8* %243, align 1, !dbg !462
  %244 = load i64, i64* %18, align 8, !dbg !463
  store i64 %244, i64* %6, align 8, !dbg !464
  br label %225, !dbg !445, !llvm.loop !465

245:                                              ; preds = %225
  br label %246, !dbg !467

246:                                              ; preds = %249, %245
  %247 = load i64, i64* %17, align 8, !dbg !468
  %248 = icmp ne i64 %247, 0, !dbg !467
  br i1 %248, label %249, label %259, !dbg !467

249:                                              ; preds = %246
  %250 = load i64, i64* %17, align 8, !dbg !469
  %251 = add i64 %250, -1, !dbg !469
  store i64 %251, i64* %17, align 8, !dbg !469
  %252 = load i64, i64* %17, align 8, !dbg !471
  %253 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %252, !dbg !472
  %254 = load i8, i8* %253, align 1, !dbg !472
  %255 = load i8*, i8** %5, align 8, !dbg !473
  %256 = load i64, i64* %9, align 8, !dbg !474
  %257 = add i64 %256, 1, !dbg !474
  store i64 %257, i64* %9, align 8, !dbg !474
  %258 = getelementptr inbounds i8, i8* %255, i64 %256, !dbg !473
  store i8 %254, i8* %258, align 1, !dbg !475
  br label %246, !dbg !467, !llvm.loop !476

259:                                              ; preds = %246
  %260 = load i8*, i8** %5, align 8, !dbg !478
  %261 = load i64, i64* %9, align 8, !dbg !479
  %262 = getelementptr inbounds i8, i8* %260, i64 %261, !dbg !478
  store i8 0, i8* %262, align 1, !dbg !480
  %263 = load i64, i64* %9, align 8, !dbg !481
  store i64 %263, i64* %4, align 8, !dbg !482
  br label %345, !dbg !482

264:                                              ; preds = %25
  br label %265, !dbg !483

265:                                              ; preds = %264
  %266 = load i64, i64* %6, align 8, !dbg !484
  %267 = icmp slt i64 %266, 0, !dbg !486
  br i1 %267, label %268, label %275, !dbg !487

268:                                              ; preds = %265
  %269 = load i8*, i8** %5, align 8, !dbg !488
  %270 = load i64, i64* %9, align 8, !dbg !490
  %271 = add i64 %270, 1, !dbg !490
  store i64 %271, i64* %9, align 8, !dbg !490
  %272 = getelementptr inbounds i8, i8* %269, i64 %270, !dbg !488
  store i8 45, i8* %272, align 1, !dbg !491
  %273 = load i64, i64* %6, align 8, !dbg !492
  %274 = sub nsw i64 0, %273, !dbg !493
  store i64 %274, i64* %6, align 8, !dbg !494
  br label %275, !dbg !495

275:                                              ; preds = %268, %265
  call void @llvm.dbg.declare(metadata i64* %19, metadata !496, metadata !DIExpression()), !dbg !497
  store i64 0, i64* %19, align 8, !dbg !497
  br label %276, !dbg !498

276:                                              ; preds = %279, %275
  %277 = load i64, i64* %6, align 8, !dbg !499
  %278 = icmp ne i64 %277, 0, !dbg !498
  br i1 %278, label %279, label %292, !dbg !498

279:                                              ; preds = %276
  call void @llvm.dbg.declare(metadata i64* %20, metadata !500, metadata !DIExpression()), !dbg !502
  %280 = load i64, i64* %6, align 8, !dbg !503
  %281 = sdiv i64 %280, 10, !dbg !504
  store i64 %281, i64* %20, align 8, !dbg !502
  %282 = load i64, i64* %6, align 8, !dbg !505
  %283 = load i64, i64* %20, align 8, !dbg !506
  %284 = mul i64 %283, 10, !dbg !507
  %285 = sub i64 %282, %284, !dbg !508
  %286 = add i64 48, %285, !dbg !509
  %287 = trunc i64 %286 to i8, !dbg !510
  %288 = load i64, i64* %19, align 8, !dbg !511
  %289 = add i64 %288, 1, !dbg !511
  store i64 %289, i64* %19, align 8, !dbg !511
  %290 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %288, !dbg !512
  store i8 %287, i8* %290, align 1, !dbg !513
  %291 = load i64, i64* %20, align 8, !dbg !514
  store i64 %291, i64* %6, align 8, !dbg !515
  br label %276, !dbg !498, !llvm.loop !516

292:                                              ; preds = %276
  br label %293, !dbg !518

293:                                              ; preds = %296, %292
  %294 = load i64, i64* %19, align 8, !dbg !519
  %295 = icmp ne i64 %294, 0, !dbg !518
  br i1 %295, label %296, label %306, !dbg !518

296:                                              ; preds = %293
  %297 = load i64, i64* %19, align 8, !dbg !520
  %298 = add i64 %297, -1, !dbg !520
  store i64 %298, i64* %19, align 8, !dbg !520
  %299 = load i64, i64* %19, align 8, !dbg !522
  %300 = getelementptr inbounds [48 x i8], [48 x i8]* %10, i64 0, i64 %299, !dbg !523
  %301 = load i8, i8* %300, align 1, !dbg !523
  %302 = load i8*, i8** %5, align 8, !dbg !524
  %303 = load i64, i64* %9, align 8, !dbg !525
  %304 = add i64 %303, 1, !dbg !525
  store i64 %304, i64* %9, align 8, !dbg !525
  %305 = getelementptr inbounds i8, i8* %302, i64 %303, !dbg !524
  store i8 %301, i8* %305, align 1, !dbg !526
  br label %293, !dbg !518, !llvm.loop !527

306:                                              ; preds = %293
  %307 = load i8*, i8** %5, align 8, !dbg !529
  %308 = load i64, i64* %9, align 8, !dbg !530
  %309 = getelementptr inbounds i8, i8* %307, i64 %308, !dbg !529
  store i8 0, i8* %309, align 1, !dbg !531
  %310 = load i64, i64* %9, align 8, !dbg !532
  store i64 %310, i64* %4, align 8, !dbg !533
  br label %345, !dbg !533

311:                                              ; preds = %24
  call void @llvm.dbg.label(metadata !534), !dbg !535
  %312 = load i8, i8* %7, align 1, !dbg !536
  %313 = zext i8 %312 to i32, !dbg !536
  switch i32 %313, label %336 [
    i32 1, label %314
    i32 2, label %314
    i32 16, label %323
  ], !dbg !537

314:                                              ; preds = %311, %311
  %315 = load i8*, i8** %5, align 8, !dbg !538
  %316 = load i64, i64* %9, align 8, !dbg !540
  %317 = add i64 %316, 1, !dbg !540
  store i64 %317, i64* %9, align 8, !dbg !540
  %318 = getelementptr inbounds i8, i8* %315, i64 %316, !dbg !538
  store i8 48, i8* %318, align 1, !dbg !541
  %319 = load i8*, i8** %5, align 8, !dbg !542
  %320 = load i64, i64* %9, align 8, !dbg !543
  %321 = add i64 %320, 1, !dbg !543
  store i64 %321, i64* %9, align 8, !dbg !543
  %322 = getelementptr inbounds i8, i8* %319, i64 %320, !dbg !542
  store i8 98, i8* %322, align 1, !dbg !544
  br label %323, !dbg !542

323:                                              ; preds = %311, %314
  %324 = load i8*, i8** %5, align 8, !dbg !545
  %325 = load i64, i64* %9, align 8, !dbg !546
  %326 = add i64 %325, 1, !dbg !546
  store i64 %326, i64* %9, align 8, !dbg !546
  %327 = getelementptr inbounds i8, i8* %324, i64 %325, !dbg !545
  store i8 48, i8* %327, align 1, !dbg !547
  %328 = load i8*, i8** %5, align 8, !dbg !548
  %329 = load i64, i64* %9, align 8, !dbg !549
  %330 = add i64 %329, 1, !dbg !549
  store i64 %330, i64* %9, align 8, !dbg !549
  %331 = getelementptr inbounds i8, i8* %328, i64 %329, !dbg !548
  store i8 120, i8* %331, align 1, !dbg !550
  %332 = load i8*, i8** %5, align 8, !dbg !551
  %333 = load i64, i64* %9, align 8, !dbg !552
  %334 = add i64 %333, 1, !dbg !552
  store i64 %334, i64* %9, align 8, !dbg !552
  %335 = getelementptr inbounds i8, i8* %332, i64 %333, !dbg !551
  store i8 48, i8* %335, align 1, !dbg !553
  br label %336, !dbg !554

336:                                              ; preds = %323, %311
  %337 = load i8*, i8** %5, align 8, !dbg !555
  %338 = load i64, i64* %9, align 8, !dbg !556
  %339 = add i64 %338, 1, !dbg !556
  store i64 %339, i64* %9, align 8, !dbg !556
  %340 = getelementptr inbounds i8, i8* %337, i64 %338, !dbg !555
  store i8 48, i8* %340, align 1, !dbg !557
  %341 = load i8*, i8** %5, align 8, !dbg !558
  %342 = load i64, i64* %9, align 8, !dbg !559
  %343 = getelementptr inbounds i8, i8* %341, i64 %342, !dbg !558
  store i8 0, i8* %343, align 1, !dbg !560
  %344 = load i64, i64* %9, align 8, !dbg !561
  store i64 %344, i64* %4, align 8, !dbg !562
  br label %345, !dbg !562

345:                                              ; preds = %336, %306, %259, %209, %128, %81
  %346 = load i64, i64* %4, align 8, !dbg !563
  ret i64 %346, !dbg !563
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local i64 @fio_ftoa(i8* %0, double %1, i8 zeroext %2) #0 !dbg !564 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !567, metadata !DIExpression()), !dbg !568
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !569, metadata !DIExpression()), !dbg !570
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !571, metadata !DIExpression()), !dbg !572
  %12 = load i8, i8* %7, align 1, !dbg !573
  %13 = zext i8 %12 to i32, !dbg !573
  %14 = icmp eq i32 %13, 2, !dbg !575
  br i1 %14, label %19, label %15, !dbg !576

15:                                               ; preds = %3
  %16 = load i8, i8* %7, align 1, !dbg !577
  %17 = zext i8 %16 to i32, !dbg !577
  %18 = icmp eq i32 %17, 16, !dbg !578
  br i1 %18, label %19, label %27, !dbg !579

19:                                               ; preds = %15, %3
  call void @llvm.dbg.declare(metadata i64** %8, metadata !580, metadata !DIExpression()), !dbg !583
  %20 = bitcast double* %6 to i8*, !dbg !584
  %21 = bitcast i8* %20 to i64*, !dbg !584
  store i64* %21, i64** %8, align 8, !dbg !583
  %22 = load i8*, i8** %5, align 8, !dbg !585
  %23 = load i64*, i64** %8, align 8, !dbg !586
  %24 = load i64, i64* %23, align 8, !dbg !587
  %25 = load i8, i8* %7, align 1, !dbg !588
  %26 = call i64 @fio_ltoa(i8* %22, i64 %24, i8 zeroext %25), !dbg !589
  store i64 %26, i64* %4, align 8, !dbg !590
  br label %72, !dbg !590

27:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %9, metadata !591, metadata !DIExpression()), !dbg !592
  %28 = load i8*, i8** %5, align 8, !dbg !593
  %29 = load double, double* %6, align 8, !dbg !594
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %29) #2, !dbg !595
  %31 = sext i32 %30 to i64, !dbg !595
  store i64 %31, i64* %9, align 8, !dbg !592
  call void @llvm.dbg.declare(metadata i8* %10, metadata !596, metadata !DIExpression()), !dbg !597
  store i8 1, i8* %10, align 1, !dbg !597
  call void @llvm.dbg.declare(metadata i8** %11, metadata !598, metadata !DIExpression()), !dbg !599
  %32 = load i8*, i8** %5, align 8, !dbg !600
  store i8* %32, i8** %11, align 8, !dbg !599
  br label %33, !dbg !601

33:                                               ; preds = %55, %27
  %34 = load i8*, i8** %11, align 8, !dbg !602
  %35 = load i8, i8* %34, align 1, !dbg !603
  %36 = icmp ne i8 %35, 0, !dbg !601
  br i1 %36, label %37, label %58, !dbg !601

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8, !dbg !604
  %39 = load i8, i8* %38, align 1, !dbg !607
  %40 = sext i8 %39 to i32, !dbg !607
  %41 = icmp eq i32 %40, 44, !dbg !608
  br i1 %41, label %42, label %44, !dbg !609

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8, !dbg !610
  store i8 46, i8* %43, align 1, !dbg !611
  br label %44, !dbg !612

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %11, align 8, !dbg !613
  %46 = load i8, i8* %45, align 1, !dbg !615
  %47 = sext i8 %46 to i32, !dbg !615
  %48 = icmp eq i32 %47, 46, !dbg !616
  br i1 %48, label %54, label %49, !dbg !617

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8, !dbg !618
  %51 = load i8, i8* %50, align 1, !dbg !619
  %52 = sext i8 %51 to i32, !dbg !619
  %53 = icmp eq i32 %52, 101, !dbg !620
  br i1 %53, label %54, label %55, !dbg !621

54:                                               ; preds = %49, %44
  store i8 0, i8* %10, align 1, !dbg !622
  br label %58, !dbg !624

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8, !dbg !625
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !625
  store i8* %57, i8** %11, align 8, !dbg !625
  br label %33, !dbg !601, !llvm.loop !626

58:                                               ; preds = %54, %33
  %59 = load i8, i8* %10, align 1, !dbg !628
  %60 = icmp ne i8 %59, 0, !dbg !628
  br i1 %60, label %61, label %70, !dbg !630

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8, !dbg !631
  %63 = load i64, i64* %9, align 8, !dbg !633
  %64 = add i64 %63, 1, !dbg !633
  store i64 %64, i64* %9, align 8, !dbg !633
  %65 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !631
  store i8 46, i8* %65, align 1, !dbg !634
  %66 = load i8*, i8** %5, align 8, !dbg !635
  %67 = load i64, i64* %9, align 8, !dbg !636
  %68 = add i64 %67, 1, !dbg !636
  store i64 %68, i64* %9, align 8, !dbg !636
  %69 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !635
  store i8 48, i8* %69, align 1, !dbg !637
  br label %70, !dbg !638

70:                                               ; preds = %61, %58
  %71 = load i64, i64* %9, align 8, !dbg !639
  store i64 %71, i64* %4, align 8, !dbg !640
  br label %72, !dbg !640

72:                                               ; preds = %70, %19
  %73 = load i64, i64* %4, align 8, !dbg !641
  ret i64 %73, !dbg !641
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_each2(i64 %0, i32 (i64, i8*)* %1, i8* %2) #0 !dbg !642 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fiobj_stack_s, align 8
  %10 = alloca %struct.task_packet_s, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !648, metadata !DIExpression()), !dbg !649
  store i32 (i64, i8*)* %1, i32 (i64, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %6, metadata !650, metadata !DIExpression()), !dbg !651
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !652, metadata !DIExpression()), !dbg !653
  %11 = load i64, i64* %5, align 8, !dbg !654
  %12 = icmp ne i64 %11, 0, !dbg !654
  br i1 %12, label %13, label %30, !dbg !656

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8, !dbg !657
  %15 = icmp ne i64 %14, 0, !dbg !657
  br i1 %15, label %16, label %30, !dbg !657

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8, !dbg !657
  %18 = and i64 %17, 1, !dbg !657
  %19 = icmp eq i64 %18, 0, !dbg !657
  br i1 %19, label %20, label %30, !dbg !657

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8, !dbg !657
  %22 = and i64 %21, 6, !dbg !657
  %23 = icmp ne i64 %22, 6, !dbg !657
  br i1 %23, label %24, label %30, !dbg !658

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8, !dbg !659
  %26 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %25), !dbg !659
  %27 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %26, i32 0, i32 5, !dbg !660
  %28 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %27, align 8, !dbg !660
  %29 = icmp eq i64 (i64, i64, i32 (i64, i8*)*, i8*)* %28, null, !dbg !661
  br i1 %29, label %30, label %35, !dbg !662

30:                                               ; preds = %24, %20, %16, %13, %3
  %31 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8, !dbg !663
  %32 = load i64, i64* %5, align 8, !dbg !665
  %33 = load i8*, i8** %7, align 8, !dbg !666
  %34 = call i32 %31(i64 %32, i8* %33), !dbg !663
  store i64 1, i64* %4, align 8, !dbg !667
  br label %100, !dbg !667

35:                                               ; preds = %24
  %36 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8, !dbg !668
  %37 = load i64, i64* %5, align 8, !dbg !670
  %38 = load i8*, i8** %7, align 8, !dbg !671
  %39 = call i32 %36(i64 %37, i8* %38), !dbg !668
  %40 = icmp eq i32 %39, -1, !dbg !672
  br i1 %40, label %41, label %42, !dbg !673

41:                                               ; preds = %35
  store i64 1, i64* %4, align 8, !dbg !674
  br label %100, !dbg !674

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata i64* %8, metadata !675, metadata !DIExpression()), !dbg !676
  store i64 0, i64* %8, align 8, !dbg !676
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s* %9, metadata !677, metadata !DIExpression()), !dbg !686
  %43 = bitcast %struct.fiobj_stack_s* %9 to i8*, !dbg !686
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 32, i1 false), !dbg !686
  call void @llvm.dbg.declare(metadata %struct.task_packet_s* %10, metadata !687, metadata !DIExpression()), !dbg !698
  %44 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 0, !dbg !699
  %45 = load i32 (i64, i8*)*, i32 (i64, i8*)** %6, align 8, !dbg !700
  store i32 (i64, i8*)* %45, i32 (i64, i8*)** %44, align 8, !dbg !699
  %46 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 1, !dbg !699
  %47 = load i8*, i8** %7, align 8, !dbg !701
  store i8* %47, i8** %46, align 8, !dbg !699
  %48 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 2, !dbg !699
  store %struct.fiobj_stack_s* %9, %struct.fiobj_stack_s** %48, align 8, !dbg !699
  %49 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3, !dbg !699
  store i64 0, i64* %49, align 8, !dbg !699
  %50 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 4, !dbg !699
  store i64 1, i64* %50, align 8, !dbg !699
  %51 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 5, !dbg !699
  store i8 0, i8* %51, align 8, !dbg !699
  %52 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 6, !dbg !699
  store i8 0, i8* %52, align 1, !dbg !699
  br label %53, !dbg !702

53:                                               ; preds = %93, %42
  %54 = load i64, i64* %8, align 8, !dbg !703
  %55 = icmp ne i64 %54, 0, !dbg !703
  br i1 %55, label %58, label %56, !dbg !706

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3, !dbg !707
  store i64 0, i64* %57, align 8, !dbg !708
  br label %58, !dbg !709

58:                                               ; preds = %56, %53
  %59 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 6, !dbg !710
  store i8 0, i8* %59, align 1, !dbg !711
  %60 = load i64, i64* %5, align 8, !dbg !712
  %61 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %60), !dbg !712
  %62 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %61, i32 0, i32 5, !dbg !713
  %63 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %62, align 8, !dbg !713
  %64 = load i64, i64* %5, align 8, !dbg !714
  %65 = load i64, i64* %8, align 8, !dbg !715
  %66 = bitcast %struct.task_packet_s* %10 to i8*, !dbg !716
  %67 = call i64 %63(i64 %64, i64 %65, i32 (i64, i8*)* @fiobj_task_wrapper, i8* %66), !dbg !712
  store i64 %67, i64* %8, align 8, !dbg !717
  %68 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 5, !dbg !718
  %69 = load i8, i8* %68, align 8, !dbg !718
  %70 = icmp ne i8 %69, 0, !dbg !720
  br i1 %70, label %71, label %72, !dbg !721

71:                                               ; preds = %58
  br label %97, !dbg !722

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 6, !dbg !723
  %74 = load i8, i8* %73, align 1, !dbg !723
  %75 = icmp ne i8 %74, 0, !dbg !725
  br i1 %75, label %76, label %81, !dbg !726

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8, !dbg !727
  %78 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 %77), !dbg !729
  %79 = load i64, i64* %5, align 8, !dbg !730
  %80 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 %79), !dbg !731
  br label %81, !dbg !732

81:                                               ; preds = %76, %72
  %82 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3, !dbg !733
  %83 = load i64, i64* %82, align 8, !dbg !733
  %84 = icmp ne i64 %83, 0, !dbg !735
  br i1 %84, label %85, label %90, !dbg !736

85:                                               ; preds = %81
  %86 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 0), !dbg !737
  %87 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 3, !dbg !739
  %88 = load i64, i64* %87, align 8, !dbg !739
  %89 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %9, i64 %88), !dbg !740
  br label %90, !dbg !741

90:                                               ; preds = %85, %81
  store i64 0, i64* %5, align 8, !dbg !742
  %91 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %9, i64* %5), !dbg !743
  %92 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %9, i64* %8), !dbg !744
  br label %93, !dbg !745

93:                                               ; preds = %90
  %94 = load i64, i64* %5, align 8, !dbg !746
  %95 = icmp ne i64 %94, 0, !dbg !745
  br i1 %95, label %53, label %96, !dbg !745, !llvm.loop !747

96:                                               ; preds = %93
  br label %97, !dbg !745

97:                                               ; preds = %96, %71
  call void @llvm.dbg.label(metadata !749), !dbg !750
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %9), !dbg !751
  %98 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 4, !dbg !752
  %99 = load i64, i64* %98, align 8, !dbg !752
  store i64 %99, i64* %4, align 8, !dbg !753
  br label %100, !dbg !753

100:                                              ; preds = %97, %41, %30
  %101 = load i64, i64* %4, align 8, !dbg !754
  ret i64 %101, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !755 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !815, metadata !DIExpression()), !dbg !816
  %4 = load i64, i64* %3, align 8, !dbg !817
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !817
  %6 = zext i8 %5 to i32, !dbg !817
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
  ], !dbg !818

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !819
  br label %15, !dbg !819

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !821
  br label %15, !dbg !821

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !822
  br label %15, !dbg !822

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !823
  br label %15, !dbg !823

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !824
  br label %15, !dbg !824

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !825
  br label %15, !dbg !825

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !826
  br label %15, !dbg !826

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !827
  br label %15, !dbg !827

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !828
  ret %struct.fiobj_object_vtable_s* %16, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_task_wrapper(i64 %0, i8* %1) #0 !dbg !829 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.task_packet_s*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !830, metadata !DIExpression()), !dbg !831
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata %struct.task_packet_s** %6, metadata !834, metadata !DIExpression()), !dbg !836
  %8 = load i8*, i8** %5, align 8, !dbg !837
  %9 = bitcast i8* %8 to %struct.task_packet_s*, !dbg !837
  store %struct.task_packet_s* %9, %struct.task_packet_s** %6, align 8, !dbg !836
  %10 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8, !dbg !838
  %11 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %10, i32 0, i32 4, !dbg !839
  %12 = load i64, i64* %11, align 8, !dbg !840
  %13 = add i64 %12, 1, !dbg !840
  store i64 %13, i64* %11, align 8, !dbg !840
  call void @llvm.dbg.declare(metadata i32* %7, metadata !841, metadata !DIExpression()), !dbg !842
  %14 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8, !dbg !843
  %15 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %14, i32 0, i32 0, !dbg !844
  %16 = load i32 (i64, i8*)*, i32 (i64, i8*)** %15, align 8, !dbg !844
  %17 = load i64, i64* %4, align 8, !dbg !845
  %18 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8, !dbg !846
  %19 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %18, i32 0, i32 1, !dbg !847
  %20 = load i8*, i8** %19, align 8, !dbg !847
  %21 = call i32 %16(i64 %17, i8* %20), !dbg !843
  store i32 %21, i32* %7, align 4, !dbg !842
  %22 = load i32, i32* %7, align 4, !dbg !848
  %23 = icmp eq i32 %22, -1, !dbg !850
  br i1 %23, label %24, label %27, !dbg !851

24:                                               ; preds = %2
  %25 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8, !dbg !852
  %26 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %25, i32 0, i32 5, !dbg !854
  store i8 1, i8* %26, align 8, !dbg !855
  store i32 -1, i32* %3, align 4, !dbg !856
  br label %51, !dbg !856

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8, !dbg !857
  %29 = icmp ne i64 %28, 0, !dbg !857
  br i1 %29, label %30, label %50, !dbg !857

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8, !dbg !857
  %32 = and i64 %31, 1, !dbg !857
  %33 = icmp eq i64 %32, 0, !dbg !857
  br i1 %33, label %34, label %50, !dbg !857

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8, !dbg !857
  %36 = and i64 %35, 6, !dbg !857
  %37 = icmp ne i64 %36, 6, !dbg !857
  br i1 %37, label %38, label %50, !dbg !859

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8, !dbg !860
  %40 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %39), !dbg !860
  %41 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %40, i32 0, i32 5, !dbg !861
  %42 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %41, align 8, !dbg !861
  %43 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %42, null, !dbg !860
  br i1 %43, label %44, label %50, !dbg !862

44:                                               ; preds = %38
  %45 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8, !dbg !863
  %46 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %45, i32 0, i32 6, !dbg !865
  store i8 1, i8* %46, align 1, !dbg !866
  %47 = load i64, i64* %4, align 8, !dbg !867
  %48 = load %struct.task_packet_s*, %struct.task_packet_s** %6, align 8, !dbg !868
  %49 = getelementptr inbounds %struct.task_packet_s, %struct.task_packet_s* %48, i32 0, i32 3, !dbg !869
  store i64 %47, i64* %49, align 8, !dbg !870
  store i32 -1, i32* %3, align 4, !dbg !871
  br label %51, !dbg !871

50:                                               ; preds = %38, %34, %30, %27
  store i32 0, i32* %3, align 4, !dbg !872
  br label %51, !dbg !872

51:                                               ; preds = %50, %44, %24
  %52 = load i32, i32* %3, align 4, !dbg !873
  ret i32 %52, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_stack_push(%struct.fiobj_stack_s* %0, i64 %1) #0 !dbg !874 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiobj_stack_s*, align 8
  %5 = alloca i64, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %4, metadata !877, metadata !DIExpression()), !dbg !878
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !879, metadata !DIExpression()), !dbg !880
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !881
  %7 = icmp ne %struct.fiobj_stack_s* %6, null, !dbg !881
  br i1 %7, label %9, label %8, !dbg !883

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !884
  br label %45, !dbg !884

9:                                                ; preds = %2
  %10 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !885
  %11 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %10, i32 0, i32 2, !dbg !887
  %12 = load i64, i64* %11, align 8, !dbg !887
  %13 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !888
  %14 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %13, i32 0, i32 1, !dbg !889
  %15 = load i64, i64* %14, align 8, !dbg !889
  %16 = icmp ule i64 %12, %15, !dbg !890
  br i1 %16, label %17, label %19, !dbg !891

17:                                               ; preds = %9
  %18 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !892
  call void @fiobj_stack___require_on_top(%struct.fiobj_stack_s* %18, i64 5), !dbg !893
  br label %19, !dbg !893

19:                                               ; preds = %17, %9
  %20 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !894
  %21 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %20, i32 0, i32 0, !dbg !896
  %22 = load i64, i64* %21, align 8, !dbg !896
  %23 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !897
  %24 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %23, i32 0, i32 1, !dbg !898
  %25 = load i64, i64* %24, align 8, !dbg !898
  %26 = icmp eq i64 %22, %25, !dbg !899
  br i1 %26, label %27, label %32, !dbg !900

27:                                               ; preds = %19
  %28 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !901
  %29 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %28, i32 0, i32 1, !dbg !902
  store i64 0, i64* %29, align 8, !dbg !903
  %30 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !904
  %31 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %30, i32 0, i32 0, !dbg !905
  store i64 0, i64* %31, align 8, !dbg !906
  br label %32, !dbg !904

32:                                               ; preds = %27, %19
  %33 = load i64, i64* %5, align 8, !dbg !907
  %34 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !907
  %35 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %34, i32 0, i32 3, !dbg !907
  %36 = load i64*, i64** %35, align 8, !dbg !907
  %37 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !907
  %38 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %37, i32 0, i32 1, !dbg !907
  %39 = load i64, i64* %38, align 8, !dbg !907
  %40 = getelementptr inbounds i64, i64* %36, i64 %39, !dbg !907
  store i64 %33, i64* %40, align 8, !dbg !907
  %41 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !908
  %42 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %41, i32 0, i32 1, !dbg !909
  %43 = load i64, i64* %42, align 8, !dbg !910
  %44 = add i64 %43, 1, !dbg !910
  store i64 %44, i64* %42, align 8, !dbg !910
  store i32 0, i32* %3, align 4, !dbg !911
  br label %45, !dbg !911

45:                                               ; preds = %32, %8
  %46 = load i32, i32* %3, align 4, !dbg !912
  ret i32 %46, !dbg !912
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %0, i64* %1) #0 !dbg !913 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiobj_stack_s*, align 8
  %5 = alloca i64*, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %4, metadata !916, metadata !DIExpression()), !dbg !917
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !918, metadata !DIExpression()), !dbg !919
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !920
  %7 = call i64 @fiobj_stack_count(%struct.fiobj_stack_s* %6), !dbg !922
  %8 = icmp ne i64 %7, 0, !dbg !922
  br i1 %8, label %10, label %9, !dbg !923

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !924
  br label %28, !dbg !924

10:                                               ; preds = %2
  %11 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !925
  %12 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %11, i32 0, i32 1, !dbg !926
  %13 = load i64, i64* %12, align 8, !dbg !927
  %14 = add i64 %13, -1, !dbg !927
  store i64 %14, i64* %12, align 8, !dbg !927
  %15 = load i64*, i64** %5, align 8, !dbg !928
  %16 = icmp ne i64* %15, null, !dbg !928
  br i1 %16, label %17, label %27, !dbg !930

17:                                               ; preds = %10
  %18 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !931
  %19 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %18, i32 0, i32 3, !dbg !931
  %20 = load i64*, i64** %19, align 8, !dbg !931
  %21 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %4, align 8, !dbg !931
  %22 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %21, i32 0, i32 1, !dbg !931
  %23 = load i64, i64* %22, align 8, !dbg !931
  %24 = getelementptr inbounds i64, i64* %20, i64 %23, !dbg !931
  %25 = load i64, i64* %24, align 8, !dbg !931
  %26 = load i64*, i64** %5, align 8, !dbg !931
  store i64 %25, i64* %26, align 8, !dbg !931
  br label %27, !dbg !931

27:                                               ; preds = %17, %10
  store i32 0, i32* %3, align 4, !dbg !932
  br label %28, !dbg !932

28:                                               ; preds = %27, %9
  %29 = load i32, i32* %3, align 4, !dbg !933
  ret i32 %29, !dbg !933
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_stack_free(%struct.fiobj_stack_s* %0) #0 !dbg !934 {
  %2 = alloca %struct.fiobj_stack_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fiobj_stack_s, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %2, metadata !937, metadata !DIExpression()), !dbg !938
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !939
  %7 = icmp ne %struct.fiobj_stack_s* %6, null, !dbg !939
  br i1 %7, label %8, label %33, !dbg !941

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %3, metadata !942, metadata !DIExpression()), !dbg !945
  %9 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !946
  %10 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %9, i32 0, i32 1, !dbg !947
  %11 = load i64, i64* %10, align 8, !dbg !947
  store i64 %11, i64* %3, align 8, !dbg !945
  call void @llvm.dbg.declare(metadata i64* %4, metadata !948, metadata !DIExpression()), !dbg !950
  %12 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !951
  %13 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %12, i32 0, i32 0, !dbg !952
  %14 = load i64, i64* %13, align 8, !dbg !952
  store i64 %14, i64* %4, align 8, !dbg !950
  br label %15, !dbg !953

15:                                               ; preds = %20, %8
  %16 = load i64, i64* %4, align 8, !dbg !954
  %17 = load i64, i64* %3, align 8, !dbg !956
  %18 = icmp ult i64 %16, %17, !dbg !957
  br i1 %18, label %19, label %23, !dbg !958

19:                                               ; preds = %15
  br label %20, !dbg !959

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8, !dbg !961
  %22 = add i64 %21, 1, !dbg !961
  store i64 %22, i64* %4, align 8, !dbg !961
  br label %15, !dbg !962, !llvm.loop !963

23:                                               ; preds = %15
  %24 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !965
  %25 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %24, i32 0, i32 3, !dbg !965
  %26 = load i64*, i64** %25, align 8, !dbg !965
  %27 = bitcast i64* %26 to i8*, !dbg !965
  call void @fio_free(i8* %27), !dbg !965
  %28 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !966
  %29 = bitcast %struct.fiobj_stack_s* %5 to i8*, !dbg !967
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false), !dbg !967
  %30 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %5, i32 0, i32 2, !dbg !968
  store i64 0, i64* %30, align 8, !dbg !968
  %31 = bitcast %struct.fiobj_stack_s* %28 to i8*, !dbg !967
  %32 = bitcast %struct.fiobj_stack_s* %5 to i8*, !dbg !967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false), !dbg !967
  br label %33, !dbg !969

33:                                               ; preds = %23, %1
  ret void, !dbg !970
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_free_complex_object(i64 %0) #0 !dbg !971 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fiobj_stack_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s* %3, metadata !976, metadata !DIExpression()), !dbg !977
  %4 = bitcast %struct.fiobj_stack_s* %3 to i8*, !dbg !977
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 32, i1 false), !dbg !977
  br label %5, !dbg !978

5:                                                ; preds = %12, %1
  %6 = load i64, i64* %2, align 8, !dbg !979
  %7 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %6), !dbg !979
  %8 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %7, i32 0, i32 1, !dbg !981
  %9 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %8, align 8, !dbg !981
  %10 = load i64, i64* %2, align 8, !dbg !982
  %11 = bitcast %struct.fiobj_stack_s* %3 to i8*, !dbg !983
  call void %9(i64 %10, void (i64, i8*)* @fiobj_dealloc_task, i8* %11), !dbg !979
  br label %12, !dbg !984

12:                                               ; preds = %5
  %13 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %3, i64* %2), !dbg !985
  %14 = icmp ne i32 %13, 0, !dbg !986
  %15 = xor i1 %14, true, !dbg !986
  br i1 %15, label %5, label %16, !dbg !984, !llvm.loop !987

16:                                               ; preds = %12
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %3), !dbg !989
  ret void, !dbg !990
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_dealloc_task(i64 %0, i8* %1) #0 !dbg !991 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fiobj_stack_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !992, metadata !DIExpression()), !dbg !993
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !994, metadata !DIExpression()), !dbg !995
  %8 = load i64, i64* %3, align 8, !dbg !996
  %9 = icmp ne i64 %8, 0, !dbg !996
  br i1 %9, label %10, label %21, !dbg !998

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8, !dbg !999
  %12 = icmp ne i64 %11, 0, !dbg !999
  br i1 %12, label %13, label %21, !dbg !999

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8, !dbg !999
  %15 = and i64 %14, 1, !dbg !999
  %16 = icmp eq i64 %15, 0, !dbg !999
  br i1 %16, label %17, label %21, !dbg !999

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8, !dbg !999
  %19 = and i64 %18, 6, !dbg !999
  %20 = icmp ne i64 %19, 6, !dbg !999
  br i1 %20, label %22, label %21, !dbg !1000

21:                                               ; preds = %17, %13, %10, %2
  br label %60, !dbg !1001

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8, !dbg !1002
  %24 = and i64 %23, -8, !dbg !1002
  %25 = inttoptr i64 %24 to i8*, !dbg !1002
  %26 = bitcast i8* %25 to %struct.fiobj_object_header_s*, !dbg !1002
  %27 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %26, i32 0, i32 1, !dbg !1002
  store i32 1, i32* %5, align 4, !dbg !1002
  %28 = load i32, i32* %5, align 4, !dbg !1002
  %29 = atomicrmw sub i32* %27, i32 %28 seq_cst, !dbg !1002
  %30 = sub i32 %29, %28, !dbg !1002
  store i32 %30, i32* %6, align 4, !dbg !1002
  %31 = load i32, i32* %6, align 4, !dbg !1002
  %32 = icmp ne i32 %31, 0, !dbg !1002
  br i1 %32, label %33, label %34, !dbg !1004

33:                                               ; preds = %22
  br label %60, !dbg !1005

34:                                               ; preds = %22
  %35 = load i64, i64* %3, align 8, !dbg !1006
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !1006
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 5, !dbg !1008
  %38 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %37, align 8, !dbg !1008
  %39 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %38, null, !dbg !1006
  br i1 %39, label %40, label %48, !dbg !1009

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8, !dbg !1010
  %42 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %41), !dbg !1010
  %43 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %42, i32 0, i32 2, !dbg !1011
  %44 = load i64 (i64)*, i64 (i64)** %43, align 8, !dbg !1011
  %45 = load i64, i64* %3, align 8, !dbg !1012
  %46 = call i64 %44(i64 %45), !dbg !1010
  %47 = icmp ne i64 %46, 0, !dbg !1010
  br i1 %47, label %54, label %48, !dbg !1013

48:                                               ; preds = %40, %34
  %49 = load i64, i64* %3, align 8, !dbg !1014
  %50 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %49), !dbg !1014
  %51 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %50, i32 0, i32 1, !dbg !1016
  %52 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %51, align 8, !dbg !1016
  %53 = load i64, i64* %3, align 8, !dbg !1017
  call void %52(i64 %53, void (i64, i8*)* null, i8* null), !dbg !1014
  br label %60, !dbg !1018

54:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %7, metadata !1019, metadata !DIExpression()), !dbg !1020
  %55 = load i8*, i8** %4, align 8, !dbg !1021
  %56 = bitcast i8* %55 to %struct.fiobj_stack_s*, !dbg !1021
  store %struct.fiobj_stack_s* %56, %struct.fiobj_stack_s** %7, align 8, !dbg !1020
  %57 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %7, align 8, !dbg !1022
  %58 = load i64, i64* %3, align 8, !dbg !1023
  %59 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %57, i64 %58), !dbg !1024
  br label %60, !dbg !1025

60:                                               ; preds = %54, %48, %33, %21
  ret void, !dbg !1025
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_iseq____internal_complex__(i64 %0, i64 %1) #0 !dbg !1026 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fiobj_stack_s, align 8
  %7 = alloca %struct.fiobj_stack_s, align 8
  %8 = alloca %struct.fiobj_stack_s, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s* %6, metadata !1033, metadata !DIExpression()), !dbg !1034
  %9 = bitcast %struct.fiobj_stack_s* %6 to i8*, !dbg !1034
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false), !dbg !1034
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s* %7, metadata !1035, metadata !DIExpression()), !dbg !1036
  %10 = bitcast %struct.fiobj_stack_s* %7 to i8*, !dbg !1036
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false), !dbg !1036
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s* %8, metadata !1037, metadata !DIExpression()), !dbg !1038
  %11 = bitcast %struct.fiobj_stack_s* %8 to i8*, !dbg !1038
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false), !dbg !1038
  br label %12, !dbg !1039

12:                                               ; preds = %70, %2
  %13 = load i64, i64* %4, align 8, !dbg !1040
  %14 = bitcast %struct.fiobj_stack_s* %6 to i8*, !dbg !1042
  %15 = call i64 @fiobj_each1(i64 %13, i64 0, i32 (i64, i8*)* @fiobj_iseq____internal_complex__task, i8* %14), !dbg !1043
  %16 = load i64, i64* %5, align 8, !dbg !1044
  %17 = bitcast %struct.fiobj_stack_s* %7 to i8*, !dbg !1045
  %18 = call i64 @fiobj_each1(i64 %16, i64 0, i32 (i64, i8*)* @fiobj_iseq____internal_complex__task, i8* %17), !dbg !1046
  br label %19, !dbg !1047

19:                                               ; preds = %60, %12
  %20 = call i64 @fiobj_stack_count(%struct.fiobj_stack_s* %6), !dbg !1048
  %21 = icmp ne i64 %20, 0, !dbg !1047
  br i1 %21, label %22, label %61, !dbg !1047

22:                                               ; preds = %19
  store i64 0, i64* %4, align 8, !dbg !1049
  store i64 0, i64* %5, align 8, !dbg !1051
  %23 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %6, i64* %4), !dbg !1052
  %24 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %7, i64* %5), !dbg !1053
  %25 = load i64, i64* %4, align 8, !dbg !1054
  %26 = load i64, i64* %5, align 8, !dbg !1056
  %27 = call i32 @fiobj_iseq_simple(i64 %25, i64 %26), !dbg !1057
  %28 = icmp ne i32 %27, 0, !dbg !1057
  br i1 %28, label %30, label %29, !dbg !1058

29:                                               ; preds = %22
  br label %74, !dbg !1059

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8, !dbg !1060
  %32 = icmp ne i64 %31, 0, !dbg !1060
  br i1 %32, label %33, label %60, !dbg !1060

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8, !dbg !1060
  %35 = and i64 %34, 1, !dbg !1060
  %36 = icmp eq i64 %35, 0, !dbg !1060
  br i1 %36, label %37, label %60, !dbg !1060

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8, !dbg !1060
  %39 = and i64 %38, 6, !dbg !1060
  %40 = icmp ne i64 %39, 6, !dbg !1060
  br i1 %40, label %41, label %60, !dbg !1062

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8, !dbg !1063
  %43 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %42), !dbg !1063
  %44 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %43, i32 0, i32 5, !dbg !1064
  %45 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %44, align 8, !dbg !1064
  %46 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %45, null, !dbg !1063
  br i1 %46, label %47, label %60, !dbg !1065

47:                                               ; preds = %41
  %48 = load i64, i64* %4, align 8, !dbg !1066
  %49 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %48), !dbg !1066
  %50 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %49, i32 0, i32 2, !dbg !1067
  %51 = load i64 (i64)*, i64 (i64)** %50, align 8, !dbg !1067
  %52 = load i64, i64* %4, align 8, !dbg !1068
  %53 = call i64 %51(i64 %52), !dbg !1066
  %54 = icmp ne i64 %53, 0, !dbg !1066
  br i1 %54, label %55, label %60, !dbg !1069

55:                                               ; preds = %47
  %56 = load i64, i64* %4, align 8, !dbg !1070
  %57 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %8, i64 %56), !dbg !1072
  %58 = load i64, i64* %5, align 8, !dbg !1073
  %59 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %8, i64 %58), !dbg !1074
  br label %60, !dbg !1075

60:                                               ; preds = %55, %47, %41, %37, %33, %30
  br label %19, !dbg !1047, !llvm.loop !1076

61:                                               ; preds = %19
  store i64 0, i64* %4, align 8, !dbg !1078
  store i64 0, i64* %5, align 8, !dbg !1079
  %62 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %8, i64* %5), !dbg !1080
  %63 = call i32 @fiobj_stack_pop(%struct.fiobj_stack_s* %8, i64* %4), !dbg !1081
  %64 = load i64, i64* %4, align 8, !dbg !1082
  %65 = load i64, i64* %5, align 8, !dbg !1084
  %66 = call i32 @fiobj_iseq_simple(i64 %64, i64 %65), !dbg !1085
  %67 = icmp ne i32 %66, 0, !dbg !1085
  br i1 %67, label %69, label %68, !dbg !1086

68:                                               ; preds = %61
  br label %74, !dbg !1087

69:                                               ; preds = %61
  br label %70, !dbg !1088

70:                                               ; preds = %69
  %71 = load i64, i64* %4, align 8, !dbg !1089
  %72 = icmp ne i64 %71, 0, !dbg !1088
  br i1 %72, label %12, label %73, !dbg !1088, !llvm.loop !1090

73:                                               ; preds = %70
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %6), !dbg !1092
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %7), !dbg !1093
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %8), !dbg !1094
  store i32 1, i32* %3, align 4, !dbg !1095
  br label %75, !dbg !1095

74:                                               ; preds = %68, %29
  call void @llvm.dbg.label(metadata !1096), !dbg !1097
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %6), !dbg !1098
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %7), !dbg !1099
  call void @fiobj_stack_free(%struct.fiobj_stack_s* %8), !dbg !1100
  store i32 0, i32* %3, align 4, !dbg !1101
  br label %75, !dbg !1101

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %3, align 4, !dbg !1102
  ret i32 %76, !dbg !1102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_each1(i64 %0, i64 %1, i32 (i64, i8*)* %2, i8* %3) #0 !dbg !1103 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i32 (i64, i8*)* %2, i32 (i64, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i64, i8*)** %8, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1110, metadata !DIExpression()), !dbg !1111
  %10 = load i64, i64* %6, align 8, !dbg !1112
  %11 = icmp ne i64 %10, 0, !dbg !1112
  br i1 %11, label %12, label %36, !dbg !1112

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8, !dbg !1112
  %14 = and i64 %13, 1, !dbg !1112
  %15 = icmp eq i64 %14, 0, !dbg !1112
  br i1 %15, label %16, label %36, !dbg !1112

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8, !dbg !1112
  %18 = and i64 %17, 6, !dbg !1112
  %19 = icmp ne i64 %18, 6, !dbg !1112
  br i1 %19, label %20, label %36, !dbg !1114

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8, !dbg !1115
  %22 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %21), !dbg !1115
  %23 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %22, i32 0, i32 5, !dbg !1116
  %24 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %23, align 8, !dbg !1116
  %25 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %24, null, !dbg !1115
  br i1 %25, label %26, label %36, !dbg !1117

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8, !dbg !1118
  %28 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %27), !dbg !1118
  %29 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %28, i32 0, i32 5, !dbg !1119
  %30 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %29, align 8, !dbg !1119
  %31 = load i64, i64* %6, align 8, !dbg !1120
  %32 = load i64, i64* %7, align 8, !dbg !1121
  %33 = load i32 (i64, i8*)*, i32 (i64, i8*)** %8, align 8, !dbg !1122
  %34 = load i8*, i8** %9, align 8, !dbg !1123
  %35 = call i64 %30(i64 %31, i64 %32, i32 (i64, i8*)* %33, i8* %34), !dbg !1118
  store i64 %35, i64* %5, align 8, !dbg !1124
  br label %37, !dbg !1124

36:                                               ; preds = %20, %16, %12, %4
  store i64 0, i64* %5, align 8, !dbg !1125
  br label %37, !dbg !1125

37:                                               ; preds = %36, %26
  %38 = load i64, i64* %5, align 8, !dbg !1126
  ret i64 %38, !dbg !1126
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_iseq____internal_complex__task(i64 %0, i8* %1) #0 !dbg !1127 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fiobj_stack_s*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %5, metadata !1132, metadata !DIExpression()), !dbg !1133
  %6 = load i8*, i8** %4, align 8, !dbg !1134
  %7 = bitcast i8* %6 to %struct.fiobj_stack_s*, !dbg !1134
  store %struct.fiobj_stack_s* %7, %struct.fiobj_stack_s** %5, align 8, !dbg !1133
  %8 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %5, align 8, !dbg !1135
  %9 = load i64, i64* %3, align 8, !dbg !1136
  %10 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %8, i64 %9), !dbg !1137
  %11 = call i64 @fiobj_hash_key_in_loop(), !dbg !1138
  %12 = icmp ne i64 %11, 0, !dbg !1138
  br i1 %12, label %13, label %17, !dbg !1140

13:                                               ; preds = %2
  %14 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %5, align 8, !dbg !1141
  %15 = call i64 @fiobj_hash_key_in_loop(), !dbg !1142
  %16 = call i32 @fiobj_stack_push(%struct.fiobj_stack_s* %14, i64 %15), !dbg !1143
  br label %17, !dbg !1143

17:                                               ; preds = %13, %2
  ret i32 0, !dbg !1144
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_stack_count(%struct.fiobj_stack_s* %0) #0 !dbg !1145 {
  %2 = alloca %struct.fiobj_stack_s*, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %2, metadata !1148, metadata !DIExpression()), !dbg !1149
  %3 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !1150
  %4 = icmp ne %struct.fiobj_stack_s* %3, null, !dbg !1150
  br i1 %4, label %5, label %13, !dbg !1150

5:                                                ; preds = %1
  %6 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !1151
  %7 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %6, i32 0, i32 1, !dbg !1152
  %8 = load i64, i64* %7, align 8, !dbg !1152
  %9 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %2, align 8, !dbg !1153
  %10 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %9, i32 0, i32 0, !dbg !1154
  %11 = load i64, i64* %10, align 8, !dbg !1154
  %12 = sub i64 %8, %11, !dbg !1155
  br label %14, !dbg !1150

13:                                               ; preds = %1
  br label %14, !dbg !1150

14:                                               ; preds = %13, %5
  %15 = phi i64 [ %12, %5 ], [ 0, %13 ], !dbg !1150
  ret i64 %15, !dbg !1156
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_iseq_simple(i64 %0, i64 %1) #0 !dbg !1157 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1162, metadata !DIExpression()), !dbg !1163
  %6 = load i64, i64* %4, align 8, !dbg !1164
  %7 = load i64, i64* %5, align 8, !dbg !1166
  %8 = icmp eq i64 %6, %7, !dbg !1167
  br i1 %8, label %9, label %10, !dbg !1168

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !1169
  br label %68, !dbg !1169

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8, !dbg !1170
  %12 = icmp ne i64 %11, 0, !dbg !1170
  br i1 %12, label %13, label %16, !dbg !1172

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8, !dbg !1173
  %15 = icmp ne i64 %14, 0, !dbg !1173
  br i1 %15, label %17, label %16, !dbg !1174

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4, !dbg !1175
  br label %68, !dbg !1175

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8, !dbg !1176
  %19 = icmp ne i64 %18, 0, !dbg !1176
  br i1 %19, label %20, label %39, !dbg !1176

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8, !dbg !1176
  %22 = and i64 %21, 1, !dbg !1176
  %23 = icmp eq i64 %22, 0, !dbg !1176
  br i1 %23, label %24, label %39, !dbg !1176

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8, !dbg !1176
  %26 = and i64 %25, 6, !dbg !1176
  %27 = icmp ne i64 %26, 6, !dbg !1176
  br i1 %27, label %28, label %39, !dbg !1178

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8, !dbg !1179
  %30 = icmp ne i64 %29, 0, !dbg !1179
  br i1 %30, label %31, label %39, !dbg !1179

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8, !dbg !1179
  %33 = and i64 %32, 1, !dbg !1179
  %34 = icmp eq i64 %33, 0, !dbg !1179
  br i1 %34, label %35, label %39, !dbg !1179

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8, !dbg !1179
  %37 = and i64 %36, 6, !dbg !1179
  %38 = icmp ne i64 %37, 6, !dbg !1179
  br i1 %38, label %40, label %39, !dbg !1180

39:                                               ; preds = %35, %31, %28, %24, %20, %17
  store i32 0, i32* %3, align 4, !dbg !1181
  br label %68, !dbg !1181

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8, !dbg !1182
  %42 = and i64 %41, -8, !dbg !1182
  %43 = inttoptr i64 %42 to i8*, !dbg !1182
  %44 = bitcast i8* %43 to %struct.fiobj_object_header_s*, !dbg !1182
  %45 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %44, i32 0, i32 0, !dbg !1184
  %46 = load i8, i8* %45, align 4, !dbg !1184
  %47 = zext i8 %46 to i32, !dbg !1182
  %48 = load i64, i64* %5, align 8, !dbg !1185
  %49 = and i64 %48, -8, !dbg !1185
  %50 = inttoptr i64 %49 to i8*, !dbg !1185
  %51 = bitcast i8* %50 to %struct.fiobj_object_header_s*, !dbg !1185
  %52 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %51, i32 0, i32 0, !dbg !1186
  %53 = load i8, i8* %52, align 4, !dbg !1186
  %54 = zext i8 %53 to i32, !dbg !1185
  %55 = icmp ne i32 %47, %54, !dbg !1187
  br i1 %55, label %56, label %57, !dbg !1188

56:                                               ; preds = %40
  store i32 0, i32* %3, align 4, !dbg !1189
  br label %68, !dbg !1189

57:                                               ; preds = %40
  %58 = load i64, i64* %4, align 8, !dbg !1190
  %59 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %58), !dbg !1190
  %60 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %59, i32 0, i32 4, !dbg !1192
  %61 = load i64 (i64, i64)*, i64 (i64, i64)** %60, align 8, !dbg !1192
  %62 = load i64, i64* %4, align 8, !dbg !1193
  %63 = load i64, i64* %5, align 8, !dbg !1194
  %64 = call i64 %61(i64 %62, i64 %63), !dbg !1190
  %65 = icmp ne i64 %64, 0, !dbg !1190
  br i1 %65, label %67, label %66, !dbg !1195

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4, !dbg !1196
  br label %68, !dbg !1196

67:                                               ; preds = %57
  store i32 1, i32* %3, align 4, !dbg !1197
  br label %68, !dbg !1197

68:                                               ; preds = %67, %66, %56, %39, %16, %9
  %69 = load i32, i32* %3, align 4, !dbg !1198
  ret i32 %69, !dbg !1198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobject___noop_dealloc(i64 %0, void (i64, i8*)* %1, i8* %2) #0 !dbg !1199 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1200, metadata !DIExpression()), !dbg !1201
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %5, metadata !1202, metadata !DIExpression()), !dbg !1203
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1204, metadata !DIExpression()), !dbg !1205
  %7 = load i64, i64* %4, align 8, !dbg !1206
  %8 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8, !dbg !1207
  %9 = load i8*, i8** %6, align 8, !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobject___simple_dealloc(i64 %0, void (i64, i8*)* %1, i8* %2) #0 !dbg !1210 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1211, metadata !DIExpression()), !dbg !1212
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %5, metadata !1213, metadata !DIExpression()), !dbg !1214
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1215, metadata !DIExpression()), !dbg !1216
  %7 = load i64, i64* %4, align 8, !dbg !1217
  %8 = and i64 %7, -8, !dbg !1217
  %9 = inttoptr i64 %8 to i8*, !dbg !1217
  call void @fio_free(i8* %9), !dbg !1218
  %10 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8, !dbg !1219
  %11 = load i8*, i8** %6, align 8, !dbg !1220
  ret void, !dbg !1221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobject___noop_count(i64 %0) #0 !dbg !1222 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1223, metadata !DIExpression()), !dbg !1224
  %3 = load i64, i64* %2, align 8, !dbg !1225
  ret i64 0, !dbg !1226
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobject___noop_is_eq(i64 %0, i64 %1) #0 !dbg !1227 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1228, metadata !DIExpression()), !dbg !1229
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1230, metadata !DIExpression()), !dbg !1231
  %5 = load i64, i64* %3, align 8, !dbg !1232
  %6 = load i64, i64* %4, align 8, !dbg !1233
  ret i64 0, !dbg !1234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobject___noop_to_str(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !1235 {
  %3 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1236, metadata !DIExpression()), !dbg !1237
  %4 = load i64, i64* %3, align 8, !dbg !1238
  %5 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1239
  store i64 0, i64* %5, align 8, !dbg !1239
  %6 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1239
  store i64 0, i64* %6, align 8, !dbg !1239
  %7 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1239
  store i8* null, i8** %7, align 8, !dbg !1239
  ret void, !dbg !1240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobject___noop_to_i(i64 %0) #0 !dbg !1241 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1242, metadata !DIExpression()), !dbg !1243
  %3 = load i64, i64* %2, align 8, !dbg !1244
  ret i64 0, !dbg !1245
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @fiobject___noop_to_f(i64 %0) #0 !dbg !1246 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1247, metadata !DIExpression()), !dbg !1248
  %3 = load i64, i64* %2, align 8, !dbg !1249
  ret double 0.000000e+00, !dbg !1250
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !1251 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1254, metadata !DIExpression()), !dbg !1255
  %4 = load i64, i64* %3, align 8, !dbg !1256
  %5 = icmp ne i64 %4, 0, !dbg !1256
  br i1 %5, label %7, label %6, !dbg !1258

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !1259
  br label %35, !dbg !1259

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !1260
  %9 = and i64 %8, 1, !dbg !1262
  %10 = icmp ne i64 %9, 0, !dbg !1262
  br i1 %10, label %11, label %12, !dbg !1263

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !1264
  br label %35, !dbg !1264

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !1265
  %14 = and i64 %13, 6, !dbg !1267
  %15 = icmp eq i64 %14, 6, !dbg !1268
  br i1 %15, label %16, label %19, !dbg !1269

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !1270
  %18 = trunc i64 %17 to i8, !dbg !1271
  store i8 %18, i8* %2, align 1, !dbg !1272
  br label %35, !dbg !1272

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !1273
  %21 = and i64 %20, 6, !dbg !1275
  %22 = icmp eq i64 %21, 2, !dbg !1276
  br i1 %22, label %23, label %24, !dbg !1277

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !1278
  br label %35, !dbg !1278

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !1279
  %26 = and i64 %25, 6, !dbg !1281
  %27 = icmp eq i64 %26, 4, !dbg !1282
  br i1 %27, label %28, label %29, !dbg !1283

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !1284
  br label %35, !dbg !1284

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !1285
  %31 = and i64 %30, -8, !dbg !1285
  %32 = inttoptr i64 %31 to i8*, !dbg !1285
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !1286
  %34 = load i8, i8* %33, align 1, !dbg !1286
  store i8 %34, i8* %2, align 1, !dbg !1287
  br label %35, !dbg !1287

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !1288
  ret i8 %36, !dbg !1288
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_stack___require_on_top(%struct.fiobj_stack_s* %0, i64 %1) #0 !dbg !1289 {
  %3 = alloca %struct.fiobj_stack_s*, align 8
  %4 = alloca i64, align 8
  store %struct.fiobj_stack_s* %0, %struct.fiobj_stack_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.fiobj_stack_s** %3, metadata !1292, metadata !DIExpression()), !dbg !1293
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1294, metadata !DIExpression()), !dbg !1295
  %5 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1296
  %6 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %5, i32 0, i32 1, !dbg !1298
  %7 = load i64, i64* %6, align 8, !dbg !1298
  %8 = load i64, i64* %4, align 8, !dbg !1299
  %9 = add i64 %7, %8, !dbg !1300
  %10 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1301
  %11 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %10, i32 0, i32 2, !dbg !1302
  %12 = load i64, i64* %11, align 8, !dbg !1302
  %13 = icmp ult i64 %9, %12, !dbg !1303
  br i1 %13, label %14, label %15, !dbg !1304

14:                                               ; preds = %2
  br label %58, !dbg !1305

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8, !dbg !1306
  %17 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1306
  %18 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %17, i32 0, i32 1, !dbg !1306
  %19 = load i64, i64* %18, align 8, !dbg !1306
  %20 = add i64 %16, %19, !dbg !1306
  %21 = and i64 %20, -2, !dbg !1306
  %22 = add i64 %21, 2, !dbg !1306
  store i64 %22, i64* %4, align 8, !dbg !1307
  %23 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1308
  %24 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %23, i32 0, i32 3, !dbg !1308
  %25 = load i64*, i64** %24, align 8, !dbg !1308
  %26 = bitcast i64* %25 to i8*, !dbg !1308
  %27 = load i64, i64* %4, align 8, !dbg !1308
  %28 = mul i64 %27, 8, !dbg !1308
  %29 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1308
  %30 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %29, i32 0, i32 1, !dbg !1308
  %31 = load i64, i64* %30, align 8, !dbg !1308
  %32 = mul i64 %31, 8, !dbg !1308
  %33 = call i8* @fio_realloc2(i8* %26, i64 %28, i64 %32), !dbg !1308
  %34 = ptrtoint i8* %33 to i64, !dbg !1308
  %35 = and i64 %34, 15, !dbg !1308
  %36 = icmp eq i64 %35, 0, !dbg !1308
  call void @llvm.assume(i1 %36), !dbg !1308
  %37 = bitcast i8* %33 to i64*, !dbg !1308
  %38 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1309
  %39 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %38, i32 0, i32 3, !dbg !1310
  store i64* %37, i64** %39, align 8, !dbg !1311
  %40 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1312
  %41 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %40, i32 0, i32 3, !dbg !1312
  %42 = load i64*, i64** %41, align 8, !dbg !1312
  %43 = icmp ne i64* %42, null, !dbg !1312
  br i1 %43, label %54, label %44, !dbg !1314

44:                                               ; preds = %15
  br label %45, !dbg !1315

45:                                               ; preds = %44
  %46 = load i32, i32* @FIO_LOG_LEVEL, align 4, !dbg !1317
  %47 = icmp sle i32 1, %46, !dbg !1317
  br i1 %47, label %48, label %49, !dbg !1320

48:                                               ; preds = %45
  call void (i8*, ...) @FIO_LOG2STDERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)), !dbg !1321
  br label %49, !dbg !1321

49:                                               ; preds = %48, %45
  br label %50, !dbg !1320

50:                                               ; preds = %49
  %51 = call i32 @kill(i32 0, i32 2) #2, !dbg !1315
  %52 = call i32* @__errno_location() #9, !dbg !1315
  %53 = load i32, i32* %52, align 4, !dbg !1315
  call void @exit(i32 %53) #10, !dbg !1315
  unreachable, !dbg !1315

54:                                               ; preds = %15
  %55 = load i64, i64* %4, align 8, !dbg !1323
  %56 = load %struct.fiobj_stack_s*, %struct.fiobj_stack_s** %3, align 8, !dbg !1324
  %57 = getelementptr inbounds %struct.fiobj_stack_s, %struct.fiobj_stack_s* %56, i32 0, i32 2, !dbg !1325
  store i64 %55, i64* %57, align 8, !dbg !1326
  br label %58, !dbg !1327

58:                                               ; preds = %54, %14
  ret void, !dbg !1327
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32, i32) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

declare dso_local i64 @fiobj_hash_key_in_loop() #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !3, line: 67, type: !46, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobject.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
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
!19 = !{!20, !21, !22, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 90, baseType: !24)
!23 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_type_enum", file: !6, line: 61, baseType: !5)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_header_s", file: !6, line: 332, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 327, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !6, line: 329, baseType: !25, size: 8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !29, file: !6, line: 331, baseType: !33, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!0, !39, !44}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !41, line: 2433, type: !42, isLocal: false, isDefinition: true)
!41 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 24, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !36, line: 38, baseType: !7)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !41, line: 2434, type: !42, isLocal: false, isDefinition: true)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{i32 7, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{!"clang version 10.0.0-4ubuntu1 "}
!51 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !41, file: !41, line: 437, type: !52, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, null}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{}
!58 = !DILocalVariable(name: "format", arg: 1, scope: !51, file: !41, line: 437, type: !54)
!59 = !DILocation(line: 437, column: 28, scope: !51)
!60 = !DILocalVariable(name: "tmp___log", scope: !51, file: !41, line: 438, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16384, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 2048)
!64 = !DILocation(line: 438, column: 8, scope: !51)
!65 = !DILocalVariable(name: "argv", scope: !51, file: !41, line: 439, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !67, line: 52, baseType: !68)
!67 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !69, line: 32, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !78)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !72, file: !3, line: 439, baseType: !37, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !72, file: !3, line: 439, baseType: !37, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !72, file: !3, line: 439, baseType: !20, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !72, file: !3, line: 439, baseType: !20, size: 64, offset: 128)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DILocation(line: 439, column: 11, scope: !51)
!81 = !DILocation(line: 440, column: 3, scope: !51)
!82 = !DILocalVariable(name: "len___log", scope: !51, file: !41, line: 441, type: !46)
!83 = !DILocation(line: 441, column: 7, scope: !51)
!84 = !DILocation(line: 441, column: 29, scope: !51)
!85 = !DILocation(line: 441, column: 66, scope: !51)
!86 = !DILocation(line: 441, column: 74, scope: !51)
!87 = !DILocation(line: 441, column: 19, scope: !51)
!88 = !DILocation(line: 442, column: 3, scope: !51)
!89 = !DILocation(line: 443, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !51, file: !41, line: 443, column: 7)
!91 = !DILocation(line: 443, column: 17, scope: !90)
!92 = !DILocation(line: 443, column: 22, scope: !90)
!93 = !DILocation(line: 443, column: 25, scope: !90)
!94 = !DILocation(line: 443, column: 35, scope: !90)
!95 = !DILocation(line: 443, column: 7, scope: !51)
!96 = !DILocation(line: 444, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !41, line: 444, column: 9)
!98 = distinct !DILexicalBlock(scope: !90, file: !41, line: 443, column: 64)
!99 = !DILocation(line: 444, column: 19, scope: !97)
!100 = !DILocation(line: 444, column: 9, scope: !98)
!101 = !DILocation(line: 445, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !41, line: 444, column: 48)
!103 = !DILocation(line: 445, column: 24, scope: !102)
!104 = !DILocation(line: 445, column: 7, scope: !102)
!105 = !DILocation(line: 447, column: 17, scope: !102)
!106 = !DILocation(line: 448, column: 5, scope: !102)
!107 = !DILocation(line: 449, column: 65, scope: !108)
!108 = distinct !DILexicalBlock(scope: !97, file: !41, line: 448, column: 12)
!109 = !DILocation(line: 449, column: 7, scope: !108)
!110 = !DILocation(line: 450, column: 7, scope: !108)
!111 = !DILocation(line: 452, column: 3, scope: !98)
!112 = !DILocation(line: 453, column: 22, scope: !51)
!113 = !DILocation(line: 453, column: 3, scope: !51)
!114 = !DILocation(line: 453, column: 26, scope: !51)
!115 = !DILocation(line: 454, column: 13, scope: !51)
!116 = !DILocation(line: 454, column: 3, scope: !51)
!117 = !DILocation(line: 454, column: 24, scope: !51)
!118 = !DILocation(line: 455, column: 10, scope: !51)
!119 = !DILocation(line: 455, column: 21, scope: !51)
!120 = !DILocation(line: 455, column: 35, scope: !51)
!121 = !DILocation(line: 455, column: 3, scope: !51)
!122 = !DILocation(line: 456, column: 1, scope: !51)
!123 = distinct !DISubprogram(name: "fio_malloc", scope: !3, file: !3, line: 31, type: !124, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!124 = !DISubroutineType(types: !125)
!125 = !{!20, !126}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !24)
!127 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!128 = !DILocalVariable(name: "size", arg: 1, scope: !123, file: !3, line: 31, type: !126)
!129 = !DILocation(line: 31, column: 25, scope: !123)
!130 = !DILocalVariable(name: "m", scope: !123, file: !3, line: 32, type: !20)
!131 = !DILocation(line: 32, column: 9, scope: !123)
!132 = !DILocation(line: 32, column: 20, scope: !123)
!133 = !DILocation(line: 32, column: 13, scope: !123)
!134 = !DILocation(line: 33, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !123, file: !3, line: 33, column: 7)
!136 = !DILocation(line: 33, column: 7, scope: !123)
!137 = !DILocation(line: 34, column: 12, scope: !135)
!138 = !DILocation(line: 34, column: 18, scope: !135)
!139 = !DILocation(line: 34, column: 5, scope: !135)
!140 = !DILocation(line: 35, column: 10, scope: !123)
!141 = !DILocation(line: 35, column: 3, scope: !123)
!142 = distinct !DISubprogram(name: "fio_calloc", scope: !3, file: !3, line: 39, type: !143, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!143 = !DISubroutineType(types: !144)
!144 = !{!20, !126, !126}
!145 = !DILocalVariable(name: "size", arg: 1, scope: !142, file: !3, line: 39, type: !126)
!146 = !DILocation(line: 39, column: 47, scope: !142)
!147 = !DILocalVariable(name: "count", arg: 2, scope: !142, file: !3, line: 39, type: !126)
!148 = !DILocation(line: 39, column: 60, scope: !142)
!149 = !DILocation(line: 40, column: 17, scope: !142)
!150 = !DILocation(line: 40, column: 23, scope: !142)
!151 = !DILocation(line: 40, column: 10, scope: !142)
!152 = !DILocation(line: 40, column: 3, scope: !142)
!153 = distinct !DISubprogram(name: "fio_free", scope: !3, file: !3, line: 44, type: !154, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !20}
!156 = !DILocalVariable(name: "ptr", arg: 1, scope: !153, file: !3, line: 44, type: !20)
!157 = !DILocation(line: 44, column: 43, scope: !153)
!158 = !DILocation(line: 44, column: 55, scope: !153)
!159 = !DILocation(line: 44, column: 50, scope: !153)
!160 = !DILocation(line: 44, column: 61, scope: !153)
!161 = distinct !DISubprogram(name: "fio_realloc", scope: !3, file: !3, line: 47, type: !162, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!162 = !DISubroutineType(types: !163)
!163 = !{!20, !20, !126}
!164 = !DILocalVariable(name: "ptr", arg: 1, scope: !161, file: !3, line: 47, type: !20)
!165 = !DILocation(line: 47, column: 47, scope: !161)
!166 = !DILocalVariable(name: "new_size", arg: 2, scope: !161, file: !3, line: 47, type: !126)
!167 = !DILocation(line: 47, column: 59, scope: !161)
!168 = !DILocation(line: 48, column: 18, scope: !161)
!169 = !DILocation(line: 48, column: 23, scope: !161)
!170 = !DILocation(line: 48, column: 10, scope: !161)
!171 = !DILocation(line: 48, column: 3, scope: !161)
!172 = distinct !DISubprogram(name: "fio_realloc2", scope: !3, file: !3, line: 53, type: !173, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!173 = !DISubroutineType(types: !174)
!174 = !{!20, !20, !126, !126}
!175 = !DILocalVariable(name: "ptr", arg: 1, scope: !172, file: !3, line: 53, type: !20)
!176 = !DILocation(line: 53, column: 20, scope: !172)
!177 = !DILocalVariable(name: "new_size", arg: 2, scope: !172, file: !3, line: 53, type: !126)
!178 = !DILocation(line: 53, column: 32, scope: !172)
!179 = !DILocalVariable(name: "valid_len", arg: 3, scope: !172, file: !3, line: 53, type: !126)
!180 = !DILocation(line: 53, column: 49, scope: !172)
!181 = !DILocation(line: 54, column: 18, scope: !172)
!182 = !DILocation(line: 54, column: 23, scope: !172)
!183 = !DILocation(line: 54, column: 10, scope: !172)
!184 = !DILocation(line: 54, column: 3, scope: !172)
!185 = distinct !DISubprogram(name: "fio_mmap", scope: !3, file: !3, line: 59, type: !124, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!186 = !DILocalVariable(name: "size", arg: 1, scope: !185, file: !3, line: 59, type: !126)
!187 = !DILocation(line: 59, column: 45, scope: !185)
!188 = !DILocation(line: 59, column: 71, scope: !185)
!189 = !DILocation(line: 59, column: 60, scope: !185)
!190 = !DILocation(line: 59, column: 53, scope: !185)
!191 = distinct !DISubprogram(name: "fio_atol", scope: !3, file: !3, line: 73, type: !192, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !198}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !195, line: 27, baseType: !196)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !36, line: 44, baseType: !197)
!197 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!200 = !DILocalVariable(name: "pstr", arg: 1, scope: !191, file: !3, line: 73, type: !198)
!201 = !DILocation(line: 73, column: 47, scope: !191)
!202 = !DILocation(line: 74, column: 19, scope: !191)
!203 = !DILocation(line: 74, column: 18, scope: !191)
!204 = !DILocation(line: 74, column: 25, scope: !191)
!205 = !DILocation(line: 74, column: 10, scope: !191)
!206 = !DILocation(line: 74, column: 3, scope: !191)
!207 = distinct !DISubprogram(name: "fio_atof", scope: !3, file: !3, line: 81, type: !208, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !198}
!210 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!211 = !DILocalVariable(name: "pstr", arg: 1, scope: !207, file: !3, line: 81, type: !198)
!212 = !DILocation(line: 81, column: 46, scope: !207)
!213 = !DILocation(line: 82, column: 18, scope: !207)
!214 = !DILocation(line: 82, column: 17, scope: !207)
!215 = !DILocation(line: 82, column: 24, scope: !207)
!216 = !DILocation(line: 82, column: 10, scope: !207)
!217 = !DILocation(line: 82, column: 3, scope: !207)
!218 = distinct !DISubprogram(name: "fio_ltoa", scope: !3, file: !3, line: 100, type: !219, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!219 = !DISubroutineType(types: !220)
!220 = !{!126, !199, !194, !42}
!221 = !DILocalVariable(name: "dest", arg: 1, scope: !218, file: !3, line: 100, type: !199)
!222 = !DILocation(line: 100, column: 45, scope: !218)
!223 = !DILocalVariable(name: "num", arg: 2, scope: !218, file: !3, line: 100, type: !194)
!224 = !DILocation(line: 100, column: 59, scope: !218)
!225 = !DILocalVariable(name: "base", arg: 3, scope: !218, file: !3, line: 100, type: !42)
!226 = !DILocation(line: 100, column: 72, scope: !218)
!227 = !DILocalVariable(name: "notation", scope: !218, file: !3, line: 101, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 16)
!231 = !DILocation(line: 101, column: 14, scope: !218)
!232 = !DILocalVariable(name: "len", scope: !218, file: !3, line: 104, type: !126)
!233 = !DILocation(line: 104, column: 10, scope: !218)
!234 = !DILocalVariable(name: "buf", scope: !218, file: !3, line: 105, type: !235)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 384, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 48)
!238 = !DILocation(line: 105, column: 8, scope: !218)
!239 = !DILocation(line: 107, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !218, file: !3, line: 107, column: 7)
!241 = !DILocation(line: 107, column: 7, scope: !218)
!242 = !DILocation(line: 108, column: 5, scope: !240)
!243 = !DILocation(line: 110, column: 11, scope: !218)
!244 = !DILocation(line: 110, column: 3, scope: !218)
!245 = !DILocalVariable(name: "n", scope: !246, file: !3, line: 115, type: !248)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 114, column: 5)
!247 = distinct !DILexicalBlock(scope: !218, file: !3, line: 110, column: 17)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !34, line: 27, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !36, line: 45, baseType: !24)
!250 = !DILocation(line: 115, column: 16, scope: !246)
!251 = !DILocation(line: 115, column: 20, scope: !246)
!252 = !DILocalVariable(name: "i", scope: !246, file: !3, line: 116, type: !42)
!253 = !DILocation(line: 116, column: 15, scope: !246)
!254 = !DILocation(line: 117, column: 7, scope: !246)
!255 = !DILocation(line: 117, column: 15, scope: !246)
!256 = !DILocation(line: 117, column: 19, scope: !246)
!257 = !DILocation(line: 118, column: 7, scope: !246)
!258 = !DILocation(line: 118, column: 15, scope: !246)
!259 = !DILocation(line: 118, column: 19, scope: !246)
!260 = !DILocation(line: 120, column: 7, scope: !246)
!261 = !DILocation(line: 120, column: 15, scope: !246)
!262 = !DILocation(line: 120, column: 17, scope: !246)
!263 = !DILocation(line: 120, column: 23, scope: !246)
!264 = !DILocation(line: 120, column: 27, scope: !246)
!265 = !DILocation(line: 120, column: 29, scope: !246)
!266 = !DILocation(line: 120, column: 51, scope: !246)
!267 = !DILocation(line: 0, scope: !246)
!268 = !DILocation(line: 121, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !246, file: !3, line: 120, column: 57)
!270 = !DILocation(line: 121, column: 15, scope: !269)
!271 = !DILocation(line: 121, column: 11, scope: !269)
!272 = !DILocation(line: 122, column: 10, scope: !269)
!273 = distinct !{!273, !260, !274}
!274 = !DILocation(line: 123, column: 7, scope: !246)
!275 = !DILocation(line: 125, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !246, file: !3, line: 125, column: 11)
!277 = !DILocation(line: 125, column: 11, scope: !246)
!278 = !DILocation(line: 126, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 125, column: 14)
!280 = !DILocation(line: 126, column: 17, scope: !279)
!281 = !DILocation(line: 126, column: 21, scope: !279)
!282 = !DILocation(line: 127, column: 7, scope: !279)
!283 = !DILocation(line: 129, column: 7, scope: !246)
!284 = !DILocation(line: 129, column: 14, scope: !246)
!285 = !DILocation(line: 129, column: 16, scope: !246)
!286 = !DILocation(line: 130, column: 25, scope: !287)
!287 = distinct !DILexicalBlock(scope: !246, file: !3, line: 129, column: 22)
!288 = !DILocation(line: 130, column: 27, scope: !287)
!289 = !DILocation(line: 130, column: 24, scope: !287)
!290 = !DILocation(line: 130, column: 23, scope: !287)
!291 = !DILocation(line: 130, column: 9, scope: !287)
!292 = !DILocation(line: 130, column: 17, scope: !287)
!293 = !DILocation(line: 130, column: 21, scope: !287)
!294 = !DILocation(line: 131, column: 13, scope: !287)
!295 = !DILocation(line: 131, column: 15, scope: !287)
!296 = !DILocation(line: 131, column: 11, scope: !287)
!297 = !DILocation(line: 132, column: 10, scope: !287)
!298 = distinct !{!298, !283, !299}
!299 = !DILocation(line: 133, column: 7, scope: !246)
!300 = !DILocation(line: 134, column: 7, scope: !246)
!301 = !DILocation(line: 134, column: 12, scope: !246)
!302 = !DILocation(line: 134, column: 17, scope: !246)
!303 = !DILocation(line: 135, column: 14, scope: !246)
!304 = !DILocation(line: 135, column: 7, scope: !246)
!305 = !DILocalVariable(name: "l", scope: !306, file: !3, line: 140, type: !248)
!306 = distinct !DILexicalBlock(scope: !247, file: !3, line: 139, column: 5)
!307 = !DILocation(line: 140, column: 16, scope: !306)
!308 = !DILocation(line: 141, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !3, line: 141, column: 11)
!310 = !DILocation(line: 141, column: 15, scope: !309)
!311 = !DILocation(line: 141, column: 11, scope: !306)
!312 = !DILocation(line: 142, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 141, column: 20)
!314 = !DILocation(line: 142, column: 17, scope: !313)
!315 = !DILocation(line: 142, column: 21, scope: !313)
!316 = !DILocation(line: 143, column: 19, scope: !313)
!317 = !DILocation(line: 143, column: 17, scope: !313)
!318 = !DILocation(line: 143, column: 13, scope: !313)
!319 = !DILocation(line: 144, column: 7, scope: !313)
!320 = !DILocation(line: 145, column: 7, scope: !306)
!321 = !DILocation(line: 145, column: 15, scope: !306)
!322 = !DILocation(line: 145, column: 19, scope: !306)
!323 = !DILocation(line: 147, column: 7, scope: !306)
!324 = !DILocation(line: 147, column: 14, scope: !306)
!325 = !DILocation(line: 148, column: 27, scope: !326)
!326 = distinct !DILexicalBlock(scope: !306, file: !3, line: 147, column: 19)
!327 = !DILocation(line: 148, column: 31, scope: !326)
!328 = !DILocation(line: 148, column: 24, scope: !326)
!329 = !DILocation(line: 148, column: 20, scope: !326)
!330 = !DILocation(line: 148, column: 14, scope: !326)
!331 = !DILocation(line: 148, column: 9, scope: !326)
!332 = !DILocation(line: 148, column: 18, scope: !326)
!333 = !DILocation(line: 149, column: 15, scope: !326)
!334 = !DILocation(line: 149, column: 19, scope: !326)
!335 = !DILocation(line: 149, column: 13, scope: !326)
!336 = distinct !{!336, !323, !337}
!337 = !DILocation(line: 150, column: 7, scope: !306)
!338 = !DILocation(line: 151, column: 7, scope: !306)
!339 = !DILocation(line: 151, column: 14, scope: !306)
!340 = !DILocation(line: 152, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !306, file: !3, line: 151, column: 17)
!342 = !DILocation(line: 153, column: 27, scope: !341)
!343 = !DILocation(line: 153, column: 23, scope: !341)
!344 = !DILocation(line: 153, column: 9, scope: !341)
!345 = !DILocation(line: 153, column: 17, scope: !341)
!346 = !DILocation(line: 153, column: 21, scope: !341)
!347 = distinct !{!347, !338, !348}
!348 = !DILocation(line: 154, column: 7, scope: !306)
!349 = !DILocation(line: 155, column: 7, scope: !306)
!350 = !DILocation(line: 155, column: 12, scope: !306)
!351 = !DILocation(line: 155, column: 17, scope: !306)
!352 = !DILocation(line: 156, column: 14, scope: !306)
!353 = !DILocation(line: 156, column: 7, scope: !306)
!354 = !DILocalVariable(name: "n", scope: !355, file: !3, line: 162, type: !248)
!355 = distinct !DILexicalBlock(scope: !247, file: !3, line: 161, column: 5)
!356 = !DILocation(line: 162, column: 16, scope: !355)
!357 = !DILocation(line: 162, column: 20, scope: !355)
!358 = !DILocalVariable(name: "i", scope: !355, file: !3, line: 163, type: !42)
!359 = !DILocation(line: 163, column: 15, scope: !355)
!360 = !DILocation(line: 164, column: 7, scope: !355)
!361 = !DILocation(line: 164, column: 15, scope: !355)
!362 = !DILocation(line: 164, column: 19, scope: !355)
!363 = !DILocation(line: 165, column: 7, scope: !355)
!364 = !DILocation(line: 165, column: 15, scope: !355)
!365 = !DILocation(line: 165, column: 19, scope: !355)
!366 = !DILocation(line: 166, column: 7, scope: !355)
!367 = !DILocation(line: 166, column: 14, scope: !355)
!368 = !DILocation(line: 166, column: 16, scope: !355)
!369 = !DILocation(line: 166, column: 20, scope: !355)
!370 = !DILocation(line: 166, column: 24, scope: !355)
!371 = !DILocation(line: 166, column: 26, scope: !355)
!372 = !DILocation(line: 166, column: 48, scope: !355)
!373 = !DILocation(line: 0, scope: !355)
!374 = !DILocation(line: 167, column: 13, scope: !375)
!375 = distinct !DILexicalBlock(scope: !355, file: !3, line: 166, column: 54)
!376 = !DILocation(line: 167, column: 15, scope: !375)
!377 = !DILocation(line: 167, column: 11, scope: !375)
!378 = !DILocation(line: 168, column: 10, scope: !375)
!379 = distinct !{!379, !366, !380}
!380 = !DILocation(line: 169, column: 7, scope: !355)
!381 = !DILocation(line: 171, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !355, file: !3, line: 171, column: 11)
!383 = !DILocation(line: 171, column: 13, scope: !382)
!384 = !DILocation(line: 171, column: 17, scope: !382)
!385 = !DILocation(line: 171, column: 19, scope: !382)
!386 = !DILocation(line: 171, column: 11, scope: !355)
!387 = !DILocation(line: 172, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 171, column: 42)
!389 = !DILocation(line: 172, column: 17, scope: !388)
!390 = !DILocation(line: 172, column: 21, scope: !388)
!391 = !DILocation(line: 173, column: 9, scope: !388)
!392 = !DILocation(line: 173, column: 17, scope: !388)
!393 = !DILocation(line: 173, column: 21, scope: !388)
!394 = !DILocation(line: 174, column: 7, scope: !388)
!395 = !DILocation(line: 176, column: 7, scope: !355)
!396 = !DILocation(line: 176, column: 14, scope: !355)
!397 = !DILocation(line: 176, column: 16, scope: !355)
!398 = !DILocalVariable(name: "tmp", scope: !399, file: !3, line: 177, type: !42)
!399 = distinct !DILexicalBlock(scope: !355, file: !3, line: 176, column: 21)
!400 = !DILocation(line: 177, column: 17, scope: !399)
!401 = !DILocation(line: 177, column: 24, scope: !399)
!402 = !DILocation(line: 177, column: 26, scope: !399)
!403 = !DILocation(line: 177, column: 48, scope: !399)
!404 = !DILocation(line: 177, column: 23, scope: !399)
!405 = !DILocation(line: 178, column: 32, scope: !399)
!406 = !DILocation(line: 178, column: 23, scope: !399)
!407 = !DILocation(line: 178, column: 9, scope: !399)
!408 = !DILocation(line: 178, column: 17, scope: !399)
!409 = !DILocation(line: 178, column: 21, scope: !399)
!410 = !DILocation(line: 179, column: 16, scope: !399)
!411 = !DILocation(line: 179, column: 18, scope: !399)
!412 = !DILocation(line: 179, column: 40, scope: !399)
!413 = !DILocation(line: 179, column: 15, scope: !399)
!414 = !DILocation(line: 179, column: 13, scope: !399)
!415 = !DILocation(line: 180, column: 32, scope: !399)
!416 = !DILocation(line: 180, column: 23, scope: !399)
!417 = !DILocation(line: 180, column: 9, scope: !399)
!418 = !DILocation(line: 180, column: 17, scope: !399)
!419 = !DILocation(line: 180, column: 21, scope: !399)
!420 = !DILocation(line: 181, column: 10, scope: !399)
!421 = !DILocation(line: 182, column: 13, scope: !399)
!422 = !DILocation(line: 182, column: 15, scope: !399)
!423 = !DILocation(line: 182, column: 11, scope: !399)
!424 = distinct !{!424, !395, !425}
!425 = !DILocation(line: 183, column: 7, scope: !355)
!426 = !DILocation(line: 184, column: 7, scope: !355)
!427 = !DILocation(line: 184, column: 12, scope: !355)
!428 = !DILocation(line: 184, column: 17, scope: !355)
!429 = !DILocation(line: 185, column: 14, scope: !355)
!430 = !DILocation(line: 185, column: 7, scope: !355)
!431 = !DILocation(line: 194, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !247, file: !3, line: 194, column: 9)
!433 = !DILocation(line: 194, column: 13, scope: !432)
!434 = !DILocation(line: 194, column: 9, scope: !247)
!435 = !DILocation(line: 195, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !3, line: 194, column: 18)
!437 = !DILocation(line: 195, column: 15, scope: !436)
!438 = !DILocation(line: 195, column: 19, scope: !436)
!439 = !DILocation(line: 196, column: 17, scope: !436)
!440 = !DILocation(line: 196, column: 15, scope: !436)
!441 = !DILocation(line: 196, column: 11, scope: !436)
!442 = !DILocation(line: 197, column: 5, scope: !436)
!443 = !DILocalVariable(name: "l", scope: !247, file: !3, line: 198, type: !248)
!444 = !DILocation(line: 198, column: 14, scope: !247)
!445 = !DILocation(line: 199, column: 5, scope: !247)
!446 = !DILocation(line: 199, column: 12, scope: !247)
!447 = !DILocalVariable(name: "t", scope: !448, file: !3, line: 200, type: !248)
!448 = distinct !DILexicalBlock(scope: !247, file: !3, line: 199, column: 17)
!449 = !DILocation(line: 200, column: 16, scope: !448)
!450 = !DILocation(line: 200, column: 20, scope: !448)
!451 = !DILocation(line: 200, column: 26, scope: !448)
!452 = !DILocation(line: 200, column: 24, scope: !448)
!453 = !DILocation(line: 201, column: 25, scope: !448)
!454 = !DILocation(line: 201, column: 32, scope: !448)
!455 = !DILocation(line: 201, column: 36, scope: !448)
!456 = !DILocation(line: 201, column: 34, scope: !448)
!457 = !DILocation(line: 201, column: 29, scope: !448)
!458 = !DILocation(line: 201, column: 22, scope: !448)
!459 = !DILocation(line: 201, column: 18, scope: !448)
!460 = !DILocation(line: 201, column: 12, scope: !448)
!461 = !DILocation(line: 201, column: 7, scope: !448)
!462 = !DILocation(line: 201, column: 16, scope: !448)
!463 = !DILocation(line: 202, column: 13, scope: !448)
!464 = !DILocation(line: 202, column: 11, scope: !448)
!465 = distinct !{!465, !445, !466}
!466 = !DILocation(line: 203, column: 5, scope: !247)
!467 = !DILocation(line: 204, column: 5, scope: !247)
!468 = !DILocation(line: 204, column: 12, scope: !247)
!469 = !DILocation(line: 205, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !247, file: !3, line: 204, column: 15)
!471 = !DILocation(line: 206, column: 25, scope: !470)
!472 = !DILocation(line: 206, column: 21, scope: !470)
!473 = !DILocation(line: 206, column: 7, scope: !470)
!474 = !DILocation(line: 206, column: 15, scope: !470)
!475 = !DILocation(line: 206, column: 19, scope: !470)
!476 = distinct !{!476, !467, !477}
!477 = !DILocation(line: 207, column: 5, scope: !247)
!478 = !DILocation(line: 208, column: 5, scope: !247)
!479 = !DILocation(line: 208, column: 10, scope: !247)
!480 = !DILocation(line: 208, column: 15, scope: !247)
!481 = !DILocation(line: 209, column: 12, scope: !247)
!482 = !DILocation(line: 209, column: 5, scope: !247)
!483 = !DILocation(line: 212, column: 5, scope: !247)
!484 = !DILocation(line: 216, column: 7, scope: !485)
!485 = distinct !DILexicalBlock(scope: !218, file: !3, line: 216, column: 7)
!486 = !DILocation(line: 216, column: 11, scope: !485)
!487 = !DILocation(line: 216, column: 7, scope: !218)
!488 = !DILocation(line: 217, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !3, line: 216, column: 16)
!490 = !DILocation(line: 217, column: 13, scope: !489)
!491 = !DILocation(line: 217, column: 17, scope: !489)
!492 = !DILocation(line: 218, column: 15, scope: !489)
!493 = !DILocation(line: 218, column: 13, scope: !489)
!494 = !DILocation(line: 218, column: 9, scope: !489)
!495 = !DILocation(line: 219, column: 3, scope: !489)
!496 = !DILocalVariable(name: "l", scope: !218, file: !3, line: 220, type: !248)
!497 = !DILocation(line: 220, column: 12, scope: !218)
!498 = !DILocation(line: 221, column: 3, scope: !218)
!499 = !DILocation(line: 221, column: 10, scope: !218)
!500 = !DILocalVariable(name: "t", scope: !501, file: !3, line: 222, type: !248)
!501 = distinct !DILexicalBlock(scope: !218, file: !3, line: 221, column: 15)
!502 = !DILocation(line: 222, column: 14, scope: !501)
!503 = !DILocation(line: 222, column: 18, scope: !501)
!504 = !DILocation(line: 222, column: 22, scope: !501)
!505 = !DILocation(line: 223, column: 23, scope: !501)
!506 = !DILocation(line: 223, column: 30, scope: !501)
!507 = !DILocation(line: 223, column: 32, scope: !501)
!508 = !DILocation(line: 223, column: 27, scope: !501)
!509 = !DILocation(line: 223, column: 20, scope: !501)
!510 = !DILocation(line: 223, column: 16, scope: !501)
!511 = !DILocation(line: 223, column: 10, scope: !501)
!512 = !DILocation(line: 223, column: 5, scope: !501)
!513 = !DILocation(line: 223, column: 14, scope: !501)
!514 = !DILocation(line: 224, column: 11, scope: !501)
!515 = !DILocation(line: 224, column: 9, scope: !501)
!516 = distinct !{!516, !498, !517}
!517 = !DILocation(line: 225, column: 3, scope: !218)
!518 = !DILocation(line: 226, column: 3, scope: !218)
!519 = !DILocation(line: 226, column: 10, scope: !218)
!520 = !DILocation(line: 227, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !218, file: !3, line: 226, column: 13)
!522 = !DILocation(line: 228, column: 23, scope: !521)
!523 = !DILocation(line: 228, column: 19, scope: !521)
!524 = !DILocation(line: 228, column: 5, scope: !521)
!525 = !DILocation(line: 228, column: 13, scope: !521)
!526 = !DILocation(line: 228, column: 17, scope: !521)
!527 = distinct !{!527, !518, !528}
!528 = !DILocation(line: 229, column: 3, scope: !218)
!529 = !DILocation(line: 230, column: 3, scope: !218)
!530 = !DILocation(line: 230, column: 8, scope: !218)
!531 = !DILocation(line: 230, column: 13, scope: !218)
!532 = !DILocation(line: 231, column: 10, scope: !218)
!533 = !DILocation(line: 231, column: 3, scope: !218)
!534 = !DILabel(scope: !218, name: "zero", file: !3, line: 233)
!535 = !DILocation(line: 233, column: 1, scope: !218)
!536 = !DILocation(line: 234, column: 11, scope: !218)
!537 = !DILocation(line: 234, column: 3, scope: !218)
!538 = !DILocation(line: 237, column: 5, scope: !539)
!539 = distinct !DILexicalBlock(scope: !218, file: !3, line: 234, column: 17)
!540 = !DILocation(line: 237, column: 13, scope: !539)
!541 = !DILocation(line: 237, column: 17, scope: !539)
!542 = !DILocation(line: 238, column: 5, scope: !539)
!543 = !DILocation(line: 238, column: 13, scope: !539)
!544 = !DILocation(line: 238, column: 17, scope: !539)
!545 = !DILocation(line: 241, column: 5, scope: !539)
!546 = !DILocation(line: 241, column: 13, scope: !539)
!547 = !DILocation(line: 241, column: 17, scope: !539)
!548 = !DILocation(line: 242, column: 5, scope: !539)
!549 = !DILocation(line: 242, column: 13, scope: !539)
!550 = !DILocation(line: 242, column: 17, scope: !539)
!551 = !DILocation(line: 243, column: 5, scope: !539)
!552 = !DILocation(line: 243, column: 13, scope: !539)
!553 = !DILocation(line: 243, column: 17, scope: !539)
!554 = !DILocation(line: 244, column: 3, scope: !539)
!555 = !DILocation(line: 245, column: 3, scope: !218)
!556 = !DILocation(line: 245, column: 11, scope: !218)
!557 = !DILocation(line: 245, column: 15, scope: !218)
!558 = !DILocation(line: 246, column: 3, scope: !218)
!559 = !DILocation(line: 246, column: 8, scope: !218)
!560 = !DILocation(line: 246, column: 13, scope: !218)
!561 = !DILocation(line: 247, column: 10, scope: !218)
!562 = !DILocation(line: 247, column: 3, scope: !218)
!563 = !DILocation(line: 248, column: 1, scope: !218)
!564 = distinct !DISubprogram(name: "fio_ftoa", scope: !3, file: !3, line: 264, type: !565, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!565 = !DISubroutineType(types: !566)
!566 = !{!126, !199, !210, !42}
!567 = !DILocalVariable(name: "dest", arg: 1, scope: !564, file: !3, line: 264, type: !199)
!568 = !DILocation(line: 264, column: 45, scope: !564)
!569 = !DILocalVariable(name: "num", arg: 2, scope: !564, file: !3, line: 264, type: !210)
!570 = !DILocation(line: 264, column: 58, scope: !564)
!571 = !DILocalVariable(name: "base", arg: 3, scope: !564, file: !3, line: 264, type: !42)
!572 = !DILocation(line: 264, column: 71, scope: !564)
!573 = !DILocation(line: 265, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !564, file: !3, line: 265, column: 7)
!575 = !DILocation(line: 265, column: 12, scope: !574)
!576 = !DILocation(line: 265, column: 17, scope: !574)
!577 = !DILocation(line: 265, column: 20, scope: !574)
!578 = !DILocation(line: 265, column: 25, scope: !574)
!579 = !DILocation(line: 265, column: 7, scope: !564)
!580 = !DILocalVariable(name: "i", scope: !581, file: !3, line: 269, type: !582)
!581 = distinct !DILexicalBlock(scope: !574, file: !3, line: 265, column: 32)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!583 = !DILocation(line: 269, column: 14, scope: !581)
!584 = !DILocation(line: 269, column: 18, scope: !581)
!585 = !DILocation(line: 270, column: 21, scope: !581)
!586 = !DILocation(line: 270, column: 28, scope: !581)
!587 = !DILocation(line: 270, column: 27, scope: !581)
!588 = !DILocation(line: 270, column: 31, scope: !581)
!589 = !DILocation(line: 270, column: 12, scope: !581)
!590 = !DILocation(line: 270, column: 5, scope: !581)
!591 = !DILocalVariable(name: "written", scope: !564, file: !3, line: 273, type: !126)
!592 = !DILocation(line: 273, column: 10, scope: !564)
!593 = !DILocation(line: 273, column: 28, scope: !564)
!594 = !DILocation(line: 273, column: 40, scope: !564)
!595 = !DILocation(line: 273, column: 20, scope: !564)
!596 = !DILocalVariable(name: "need_zero", scope: !564, file: !3, line: 274, type: !42)
!597 = !DILocation(line: 274, column: 11, scope: !564)
!598 = !DILocalVariable(name: "start", scope: !564, file: !3, line: 275, type: !199)
!599 = !DILocation(line: 275, column: 9, scope: !564)
!600 = !DILocation(line: 275, column: 17, scope: !564)
!601 = !DILocation(line: 276, column: 3, scope: !564)
!602 = !DILocation(line: 276, column: 11, scope: !564)
!603 = !DILocation(line: 276, column: 10, scope: !564)
!604 = !DILocation(line: 277, column: 10, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 277, column: 9)
!606 = distinct !DILexicalBlock(scope: !564, file: !3, line: 276, column: 18)
!607 = !DILocation(line: 277, column: 9, scope: !605)
!608 = !DILocation(line: 277, column: 16, scope: !605)
!609 = !DILocation(line: 277, column: 9, scope: !606)
!610 = !DILocation(line: 278, column: 8, scope: !605)
!611 = !DILocation(line: 278, column: 14, scope: !605)
!612 = !DILocation(line: 278, column: 7, scope: !605)
!613 = !DILocation(line: 279, column: 10, scope: !614)
!614 = distinct !DILexicalBlock(scope: !606, file: !3, line: 279, column: 9)
!615 = !DILocation(line: 279, column: 9, scope: !614)
!616 = !DILocation(line: 279, column: 16, scope: !614)
!617 = !DILocation(line: 279, column: 23, scope: !614)
!618 = !DILocation(line: 279, column: 27, scope: !614)
!619 = !DILocation(line: 279, column: 26, scope: !614)
!620 = !DILocation(line: 279, column: 33, scope: !614)
!621 = !DILocation(line: 279, column: 9, scope: !606)
!622 = !DILocation(line: 280, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !614, file: !3, line: 279, column: 41)
!624 = !DILocation(line: 281, column: 7, scope: !623)
!625 = !DILocation(line: 283, column: 10, scope: !606)
!626 = distinct !{!626, !601, !627}
!627 = !DILocation(line: 284, column: 3, scope: !564)
!628 = !DILocation(line: 285, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !564, file: !3, line: 285, column: 7)
!630 = !DILocation(line: 285, column: 7, scope: !564)
!631 = !DILocation(line: 286, column: 5, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !3, line: 285, column: 18)
!633 = !DILocation(line: 286, column: 17, scope: !632)
!634 = !DILocation(line: 286, column: 21, scope: !632)
!635 = !DILocation(line: 287, column: 5, scope: !632)
!636 = !DILocation(line: 287, column: 17, scope: !632)
!637 = !DILocation(line: 287, column: 21, scope: !632)
!638 = !DILocation(line: 288, column: 3, scope: !632)
!639 = !DILocation(line: 289, column: 10, scope: !564)
!640 = !DILocation(line: 289, column: 3, scope: !564)
!641 = !DILocation(line: 290, column: 1, scope: !564)
!642 = distinct !DISubprogram(name: "fiobj_each2", scope: !3, file: !3, line: 341, type: !643, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!643 = !DISubroutineType(types: !644)
!644 = !{!126, !21, !645, !20}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!46, !21, !20}
!648 = !DILocalVariable(name: "o", arg: 1, scope: !642, file: !3, line: 341, type: !21)
!649 = !DILocation(line: 341, column: 26, scope: !642)
!650 = !DILocalVariable(name: "task", arg: 2, scope: !642, file: !3, line: 341, type: !645)
!651 = !DILocation(line: 341, column: 35, scope: !642)
!652 = !DILocalVariable(name: "arg", arg: 3, scope: !642, file: !3, line: 341, type: !20)
!653 = !DILocation(line: 341, column: 70, scope: !642)
!654 = !DILocation(line: 342, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !642, file: !3, line: 342, column: 7)
!656 = !DILocation(line: 342, column: 10, scope: !655)
!657 = !DILocation(line: 342, column: 14, scope: !655)
!658 = !DILocation(line: 342, column: 36, scope: !655)
!659 = !DILocation(line: 342, column: 40, scope: !655)
!660 = !DILocation(line: 342, column: 58, scope: !655)
!661 = !DILocation(line: 342, column: 63, scope: !655)
!662 = !DILocation(line: 342, column: 7, scope: !642)
!663 = !DILocation(line: 343, column: 5, scope: !664)
!664 = distinct !DILexicalBlock(scope: !655, file: !3, line: 342, column: 73)
!665 = !DILocation(line: 343, column: 10, scope: !664)
!666 = !DILocation(line: 343, column: 13, scope: !664)
!667 = !DILocation(line: 344, column: 5, scope: !664)
!668 = !DILocation(line: 347, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !642, file: !3, line: 347, column: 7)
!670 = !DILocation(line: 347, column: 12, scope: !669)
!671 = !DILocation(line: 347, column: 15, scope: !669)
!672 = !DILocation(line: 347, column: 20, scope: !669)
!673 = !DILocation(line: 347, column: 7, scope: !642)
!674 = !DILocation(line: 348, column: 5, scope: !669)
!675 = !DILocalVariable(name: "pos", scope: !642, file: !3, line: 349, type: !22)
!676 = !DILocation(line: 349, column: 13, scope: !642)
!677 = !DILocalVariable(name: "stack", scope: !642, file: !3, line: 350, type: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_stack_s", file: !41, line: 4724, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiobj_stack_s", file: !41, line: 4878, size: 256, elements: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !679, file: !41, line: 4879, baseType: !126, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !679, file: !41, line: 4880, baseType: !126, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !679, file: !41, line: 4881, baseType: !126, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "arry", scope: !679, file: !41, line: 4882, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!686 = !DILocation(line: 350, column: 17, scope: !642)
!687 = !DILocalVariable(name: "packet", scope: !642, file: !3, line: 351, type: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_packet_s", file: !3, line: 297, size: 384, elements: !689)
!689 = !{!690, !691, !692, !694, !695, !696, !697}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !688, file: !3, line: 298, baseType: !645, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !688, file: !3, line: 299, baseType: !20, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !688, file: !3, line: 300, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !688, file: !3, line: 301, baseType: !21, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !688, file: !3, line: 302, baseType: !22, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !688, file: !3, line: 303, baseType: !42, size: 8, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "incomplete", scope: !688, file: !3, line: 304, baseType: !42, size: 8, offset: 328)
!698 = !DILocation(line: 351, column: 24, scope: !642)
!699 = !DILocation(line: 351, column: 33, scope: !642)
!700 = !DILocation(line: 352, column: 15, scope: !642)
!701 = !DILocation(line: 353, column: 14, scope: !642)
!702 = !DILocation(line: 357, column: 3, scope: !642)
!703 = !DILocation(line: 358, column: 10, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 358, column: 9)
!705 = distinct !DILexicalBlock(scope: !642, file: !3, line: 357, column: 6)
!706 = !DILocation(line: 358, column: 9, scope: !705)
!707 = !DILocation(line: 359, column: 14, scope: !704)
!708 = !DILocation(line: 359, column: 19, scope: !704)
!709 = !DILocation(line: 359, column: 7, scope: !704)
!710 = !DILocation(line: 360, column: 12, scope: !705)
!711 = !DILocation(line: 360, column: 23, scope: !705)
!712 = !DILocation(line: 361, column: 11, scope: !705)
!713 = !DILocation(line: 361, column: 29, scope: !705)
!714 = !DILocation(line: 361, column: 34, scope: !705)
!715 = !DILocation(line: 361, column: 37, scope: !705)
!716 = !DILocation(line: 361, column: 62, scope: !705)
!717 = !DILocation(line: 361, column: 9, scope: !705)
!718 = !DILocation(line: 362, column: 16, scope: !719)
!719 = distinct !DILexicalBlock(scope: !705, file: !3, line: 362, column: 9)
!720 = !DILocation(line: 362, column: 9, scope: !719)
!721 = !DILocation(line: 362, column: 9, scope: !705)
!722 = !DILocation(line: 363, column: 7, scope: !719)
!723 = !DILocation(line: 364, column: 16, scope: !724)
!724 = distinct !DILexicalBlock(scope: !705, file: !3, line: 364, column: 9)
!725 = !DILocation(line: 364, column: 9, scope: !724)
!726 = !DILocation(line: 364, column: 9, scope: !705)
!727 = !DILocation(line: 365, column: 32, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !3, line: 364, column: 28)
!729 = !DILocation(line: 365, column: 7, scope: !728)
!730 = !DILocation(line: 366, column: 32, scope: !728)
!731 = !DILocation(line: 366, column: 7, scope: !728)
!732 = !DILocation(line: 367, column: 5, scope: !728)
!733 = !DILocation(line: 369, column: 16, scope: !734)
!734 = distinct !DILexicalBlock(scope: !705, file: !3, line: 369, column: 9)
!735 = !DILocation(line: 369, column: 9, scope: !734)
!736 = !DILocation(line: 369, column: 9, scope: !705)
!737 = !DILocation(line: 370, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !3, line: 369, column: 22)
!739 = !DILocation(line: 371, column: 39, scope: !738)
!740 = !DILocation(line: 371, column: 7, scope: !738)
!741 = !DILocation(line: 372, column: 5, scope: !738)
!742 = !DILocation(line: 373, column: 7, scope: !705)
!743 = !DILocation(line: 374, column: 5, scope: !705)
!744 = !DILocation(line: 375, column: 5, scope: !705)
!745 = !DILocation(line: 376, column: 3, scope: !705)
!746 = !DILocation(line: 376, column: 12, scope: !642)
!747 = distinct !{!747, !702, !748}
!748 = !DILocation(line: 376, column: 13, scope: !642)
!749 = !DILabel(scope: !642, name: "finish", file: !3, line: 377)
!750 = !DILocation(line: 377, column: 1, scope: !642)
!751 = !DILocation(line: 378, column: 3, scope: !642)
!752 = !DILocation(line: 379, column: 17, scope: !642)
!753 = !DILocation(line: 379, column: 3, scope: !642)
!754 = !DILocation(line: 380, column: 1, scope: !642)
!755 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !6, file: !6, line: 344, type: !756, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!756 = !DISubroutineType(types: !757)
!757 = !{!758, !21}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !762)
!762 = !{!763, !764, !772, !778, !783, !788, !793, !804, !810}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !761, file: !6, line: 307, baseType: !54, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !761, file: !6, line: 309, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !21, !769, !20}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !21, !20}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !761, file: !6, line: 311, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!22, !777}
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !761, file: !6, line: 313, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!126, !777}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !761, file: !6, line: 315, baseType: !784, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!126, !777, !777}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !761, file: !6, line: 317, baseType: !789, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!126, !21, !126, !645, !20}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !761, file: !6, line: 320, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!798, !777}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !41, line: 287, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !41, line: 283, size: 192, elements: !800)
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !799, file: !41, line: 284, baseType: !126, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !799, file: !41, line: 285, baseType: !126, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !799, file: !41, line: 286, baseType: !199, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !761, file: !6, line: 322, baseType: !805, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!809, !777}
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !23, line: 87, baseType: !197)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !761, file: !6, line: 324, baseType: !811, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!210, !777}
!815 = !DILocalVariable(name: "o", arg: 1, scope: !755, file: !6, line: 344, type: !21)
!816 = !DILocation(line: 344, column: 65, scope: !755)
!817 = !DILocation(line: 345, column: 11, scope: !755)
!818 = !DILocation(line: 345, column: 3, scope: !755)
!819 = !DILocation(line: 347, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !755, file: !6, line: 345, column: 26)
!821 = !DILocation(line: 349, column: 5, scope: !820)
!822 = !DILocation(line: 351, column: 5, scope: !820)
!823 = !DILocation(line: 353, column: 5, scope: !820)
!824 = !DILocation(line: 355, column: 5, scope: !820)
!825 = !DILocation(line: 357, column: 5, scope: !820)
!826 = !DILocation(line: 362, column: 5, scope: !820)
!827 = !DILocation(line: 364, column: 3, scope: !755)
!828 = !DILocation(line: 365, column: 1, scope: !755)
!829 = distinct !DISubprogram(name: "fiobj_task_wrapper", scope: !3, file: !3, line: 307, type: !646, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!830 = !DILocalVariable(name: "o", arg: 1, scope: !829, file: !3, line: 307, type: !21)
!831 = !DILocation(line: 307, column: 37, scope: !829)
!832 = !DILocalVariable(name: "p_", arg: 2, scope: !829, file: !3, line: 307, type: !20)
!833 = !DILocation(line: 307, column: 46, scope: !829)
!834 = !DILocalVariable(name: "p", scope: !829, file: !3, line: 308, type: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!836 = !DILocation(line: 308, column: 25, scope: !829)
!837 = !DILocation(line: 308, column: 29, scope: !829)
!838 = !DILocation(line: 309, column: 5, scope: !829)
!839 = !DILocation(line: 309, column: 8, scope: !829)
!840 = !DILocation(line: 309, column: 3, scope: !829)
!841 = !DILocalVariable(name: "ret", scope: !829, file: !3, line: 310, type: !46)
!842 = !DILocation(line: 310, column: 7, scope: !829)
!843 = !DILocation(line: 310, column: 13, scope: !829)
!844 = !DILocation(line: 310, column: 16, scope: !829)
!845 = !DILocation(line: 310, column: 21, scope: !829)
!846 = !DILocation(line: 310, column: 24, scope: !829)
!847 = !DILocation(line: 310, column: 27, scope: !829)
!848 = !DILocation(line: 311, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !829, file: !3, line: 311, column: 7)
!850 = !DILocation(line: 311, column: 11, scope: !849)
!851 = !DILocation(line: 311, column: 7, scope: !829)
!852 = !DILocation(line: 312, column: 5, scope: !853)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 311, column: 18)
!854 = !DILocation(line: 312, column: 8, scope: !853)
!855 = !DILocation(line: 312, column: 13, scope: !853)
!856 = !DILocation(line: 313, column: 5, scope: !853)
!857 = !DILocation(line: 315, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !829, file: !3, line: 315, column: 7)
!859 = !DILocation(line: 315, column: 29, scope: !858)
!860 = !DILocation(line: 315, column: 32, scope: !858)
!861 = !DILocation(line: 315, column: 50, scope: !858)
!862 = !DILocation(line: 315, column: 7, scope: !829)
!863 = !DILocation(line: 316, column: 5, scope: !864)
!864 = distinct !DILexicalBlock(scope: !858, file: !3, line: 315, column: 56)
!865 = !DILocation(line: 316, column: 8, scope: !864)
!866 = !DILocation(line: 316, column: 19, scope: !864)
!867 = !DILocation(line: 317, column: 15, scope: !864)
!868 = !DILocation(line: 317, column: 5, scope: !864)
!869 = !DILocation(line: 317, column: 8, scope: !864)
!870 = !DILocation(line: 317, column: 13, scope: !864)
!871 = !DILocation(line: 318, column: 5, scope: !864)
!872 = !DILocation(line: 320, column: 3, scope: !829)
!873 = !DILocation(line: 321, column: 1, scope: !829)
!874 = distinct !DISubprogram(name: "fiobj_stack_push", scope: !41, file: !41, line: 5114, type: !875, scopeLine: 5114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!875 = !DISubroutineType(types: !876)
!876 = !{!46, !693, !21}
!877 = !DILocalVariable(name: "ary", arg: 1, scope: !874, file: !41, line: 5114, type: !693)
!878 = !DILocation(line: 5114, column: 50, scope: !874)
!879 = !DILocalVariable(name: "data", arg: 2, scope: !874, file: !41, line: 5114, type: !21)
!880 = !DILocation(line: 5114, column: 68, scope: !874)
!881 = !DILocation(line: 5115, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !874, file: !41, line: 5115, column: 7)
!883 = !DILocation(line: 5115, column: 7, scope: !874)
!884 = !DILocation(line: 5116, column: 5, scope: !882)
!885 = !DILocation(line: 5117, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !874, file: !41, line: 5117, column: 7)
!887 = !DILocation(line: 5117, column: 12, scope: !886)
!888 = !DILocation(line: 5117, column: 20, scope: !886)
!889 = !DILocation(line: 5117, column: 25, scope: !886)
!890 = !DILocation(line: 5117, column: 17, scope: !886)
!891 = !DILocation(line: 5117, column: 7, scope: !874)
!892 = !DILocation(line: 5118, column: 32, scope: !886)
!893 = !DILocation(line: 5118, column: 5, scope: !886)
!894 = !DILocation(line: 5119, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !874, file: !41, line: 5119, column: 7)
!896 = !DILocation(line: 5119, column: 12, scope: !895)
!897 = !DILocation(line: 5119, column: 21, scope: !895)
!898 = !DILocation(line: 5119, column: 26, scope: !895)
!899 = !DILocation(line: 5119, column: 18, scope: !895)
!900 = !DILocation(line: 5119, column: 7, scope: !874)
!901 = !DILocation(line: 5120, column: 18, scope: !895)
!902 = !DILocation(line: 5120, column: 23, scope: !895)
!903 = !DILocation(line: 5120, column: 27, scope: !895)
!904 = !DILocation(line: 5120, column: 5, scope: !895)
!905 = !DILocation(line: 5120, column: 10, scope: !895)
!906 = !DILocation(line: 5120, column: 16, scope: !895)
!907 = !DILocation(line: 5121, column: 3, scope: !874)
!908 = !DILocation(line: 5122, column: 5, scope: !874)
!909 = !DILocation(line: 5122, column: 10, scope: !874)
!910 = !DILocation(line: 5122, column: 3, scope: !874)
!911 = !DILocation(line: 5123, column: 3, scope: !874)
!912 = !DILocation(line: 5124, column: 1, scope: !874)
!913 = distinct !DISubprogram(name: "fiobj_stack_pop", scope: !41, file: !41, line: 5134, type: !914, scopeLine: 5134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!914 = !DISubroutineType(types: !915)
!915 = !{!46, !693, !685}
!916 = !DILocalVariable(name: "ary", arg: 1, scope: !913, file: !41, line: 5134, type: !693)
!917 = !DILocation(line: 5134, column: 49, scope: !913)
!918 = !DILocalVariable(name: "old", arg: 2, scope: !913, file: !41, line: 5134, type: !685)
!919 = !DILocation(line: 5134, column: 68, scope: !913)
!920 = !DILocation(line: 5135, column: 24, scope: !921)
!921 = distinct !DILexicalBlock(scope: !913, file: !41, line: 5135, column: 7)
!922 = !DILocation(line: 5135, column: 8, scope: !921)
!923 = !DILocation(line: 5135, column: 7, scope: !913)
!924 = !DILocation(line: 5136, column: 5, scope: !921)
!925 = !DILocation(line: 5137, column: 5, scope: !913)
!926 = !DILocation(line: 5137, column: 10, scope: !913)
!927 = !DILocation(line: 5137, column: 3, scope: !913)
!928 = !DILocation(line: 5138, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !913, file: !41, line: 5138, column: 7)
!930 = !DILocation(line: 5138, column: 7, scope: !913)
!931 = !DILocation(line: 5139, column: 5, scope: !929)
!932 = !DILocation(line: 5141, column: 3, scope: !913)
!933 = !DILocation(line: 5142, column: 1, scope: !913)
!934 = distinct !DISubprogram(name: "fiobj_stack_free", scope: !41, file: !41, line: 4889, type: !935, scopeLine: 4889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !693}
!937 = !DILocalVariable(name: "ary", arg: 1, scope: !934, file: !41, line: 4889, type: !693)
!938 = !DILocation(line: 4889, column: 52, scope: !934)
!939 = !DILocation(line: 4890, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !934, file: !41, line: 4890, column: 7)
!941 = !DILocation(line: 4890, column: 7, scope: !934)
!942 = !DILocalVariable(name: "count", scope: !943, file: !41, line: 4891, type: !944)
!943 = distinct !DILexicalBlock(scope: !940, file: !41, line: 4890, column: 12)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!945 = !DILocation(line: 4891, column: 18, scope: !943)
!946 = !DILocation(line: 4891, column: 26, scope: !943)
!947 = !DILocation(line: 4891, column: 31, scope: !943)
!948 = !DILocalVariable(name: "i", scope: !949, file: !41, line: 4892, type: !126)
!949 = distinct !DILexicalBlock(scope: !943, file: !41, line: 4892, column: 5)
!950 = !DILocation(line: 4892, column: 17, scope: !949)
!951 = !DILocation(line: 4892, column: 21, scope: !949)
!952 = !DILocation(line: 4892, column: 26, scope: !949)
!953 = !DILocation(line: 4892, column: 10, scope: !949)
!954 = !DILocation(line: 4892, column: 33, scope: !955)
!955 = distinct !DILexicalBlock(scope: !949, file: !41, line: 4892, column: 5)
!956 = !DILocation(line: 4892, column: 37, scope: !955)
!957 = !DILocation(line: 4892, column: 35, scope: !955)
!958 = !DILocation(line: 4892, column: 5, scope: !949)
!959 = !DILocation(line: 4894, column: 5, scope: !960)
!960 = distinct !DILexicalBlock(scope: !955, file: !41, line: 4892, column: 49)
!961 = !DILocation(line: 4892, column: 44, scope: !955)
!962 = !DILocation(line: 4892, column: 5, scope: !955)
!963 = distinct !{!963, !958, !964}
!964 = !DILocation(line: 4894, column: 5, scope: !949)
!965 = !DILocation(line: 4895, column: 5, scope: !943)
!966 = !DILocation(line: 4896, column: 6, scope: !943)
!967 = !DILocation(line: 4896, column: 12, scope: !943)
!968 = !DILocation(line: 4896, column: 25, scope: !943)
!969 = !DILocation(line: 4897, column: 3, scope: !943)
!970 = !DILocation(line: 4898, column: 1, scope: !934)
!971 = distinct !DISubprogram(name: "fiobj_free_complex_object", scope: !3, file: !3, line: 410, type: !972, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !21}
!974 = !DILocalVariable(name: "o", arg: 1, scope: !971, file: !3, line: 410, type: !21)
!975 = !DILocation(line: 410, column: 38, scope: !971)
!976 = !DILocalVariable(name: "stack", scope: !971, file: !3, line: 411, type: !678)
!977 = !DILocation(line: 411, column: 17, scope: !971)
!978 = !DILocation(line: 412, column: 3, scope: !971)
!979 = !DILocation(line: 413, column: 5, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !3, line: 412, column: 6)
!981 = !DILocation(line: 413, column: 23, scope: !980)
!982 = !DILocation(line: 413, column: 31, scope: !980)
!983 = !DILocation(line: 413, column: 54, scope: !980)
!984 = !DILocation(line: 414, column: 3, scope: !980)
!985 = !DILocation(line: 414, column: 13, scope: !971)
!986 = !DILocation(line: 414, column: 12, scope: !971)
!987 = distinct !{!987, !978, !988}
!988 = !DILocation(line: 414, column: 40, scope: !971)
!989 = !DILocation(line: 415, column: 3, scope: !971)
!990 = !DILocation(line: 416, column: 1, scope: !971)
!991 = distinct !DISubprogram(name: "fiobj_dealloc_task", scope: !3, file: !3, line: 386, type: !770, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!992 = !DILocalVariable(name: "o", arg: 1, scope: !991, file: !3, line: 386, type: !21)
!993 = !DILocation(line: 386, column: 38, scope: !991)
!994 = !DILocalVariable(name: "stack_", arg: 2, scope: !991, file: !3, line: 386, type: !20)
!995 = !DILocation(line: 386, column: 47, scope: !991)
!996 = !DILocation(line: 391, column: 8, scope: !997)
!997 = distinct !DILexicalBlock(scope: !991, file: !3, line: 391, column: 7)
!998 = !DILocation(line: 391, column: 10, scope: !997)
!999 = !DILocation(line: 391, column: 14, scope: !997)
!1000 = !DILocation(line: 391, column: 7, scope: !991)
!1001 = !DILocation(line: 392, column: 5, scope: !997)
!1002 = !DILocation(line: 393, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !991, file: !3, line: 393, column: 7)
!1004 = !DILocation(line: 393, column: 7, scope: !991)
!1005 = !DILocation(line: 394, column: 5, scope: !1003)
!1006 = !DILocation(line: 395, column: 8, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !991, file: !3, line: 395, column: 7)
!1008 = !DILocation(line: 395, column: 26, scope: !1007)
!1009 = !DILocation(line: 395, column: 31, scope: !1007)
!1010 = !DILocation(line: 395, column: 35, scope: !1007)
!1011 = !DILocation(line: 395, column: 53, scope: !1007)
!1012 = !DILocation(line: 395, column: 59, scope: !1007)
!1013 = !DILocation(line: 395, column: 7, scope: !991)
!1014 = !DILocation(line: 396, column: 5, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 395, column: 63)
!1016 = !DILocation(line: 396, column: 23, scope: !1015)
!1017 = !DILocation(line: 396, column: 31, scope: !1015)
!1018 = !DILocation(line: 397, column: 5, scope: !1015)
!1019 = !DILocalVariable(name: "s", scope: !991, file: !3, line: 399, type: !693)
!1020 = !DILocation(line: 399, column: 18, scope: !991)
!1021 = !DILocation(line: 399, column: 22, scope: !991)
!1022 = !DILocation(line: 400, column: 20, scope: !991)
!1023 = !DILocation(line: 400, column: 23, scope: !991)
!1024 = !DILocation(line: 400, column: 3, scope: !991)
!1025 = !DILocation(line: 401, column: 1, scope: !991)
!1026 = distinct !DISubprogram(name: "fiobj_iseq____internal_complex__", scope: !3, file: !3, line: 446, type: !1027, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!46, !21, !21}
!1029 = !DILocalVariable(name: "o", arg: 1, scope: !1026, file: !3, line: 446, type: !21)
!1030 = !DILocation(line: 446, column: 44, scope: !1026)
!1031 = !DILocalVariable(name: "o2", arg: 2, scope: !1026, file: !3, line: 446, type: !21)
!1032 = !DILocation(line: 446, column: 53, scope: !1026)
!1033 = !DILocalVariable(name: "left", scope: !1026, file: !3, line: 450, type: !678)
!1034 = !DILocation(line: 450, column: 17, scope: !1026)
!1035 = !DILocalVariable(name: "right", scope: !1026, file: !3, line: 450, type: !678)
!1036 = !DILocation(line: 450, column: 38, scope: !1026)
!1037 = !DILocalVariable(name: "queue", scope: !1026, file: !3, line: 450, type: !678)
!1038 = !DILocation(line: 450, column: 60, scope: !1026)
!1039 = !DILocation(line: 451, column: 3, scope: !1026)
!1040 = !DILocation(line: 452, column: 17, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 451, column: 6)
!1042 = !DILocation(line: 452, column: 61, scope: !1041)
!1043 = !DILocation(line: 452, column: 5, scope: !1041)
!1044 = !DILocation(line: 453, column: 17, scope: !1041)
!1045 = !DILocation(line: 453, column: 62, scope: !1041)
!1046 = !DILocation(line: 453, column: 5, scope: !1041)
!1047 = !DILocation(line: 454, column: 5, scope: !1041)
!1048 = !DILocation(line: 454, column: 12, scope: !1041)
!1049 = !DILocation(line: 455, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 454, column: 38)
!1051 = !DILocation(line: 456, column: 10, scope: !1050)
!1052 = !DILocation(line: 457, column: 7, scope: !1050)
!1053 = !DILocation(line: 458, column: 7, scope: !1050)
!1054 = !DILocation(line: 459, column: 30, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 459, column: 11)
!1056 = !DILocation(line: 459, column: 33, scope: !1055)
!1057 = !DILocation(line: 459, column: 12, scope: !1055)
!1058 = !DILocation(line: 459, column: 11, scope: !1050)
!1059 = !DILocation(line: 460, column: 9, scope: !1055)
!1060 = !DILocation(line: 461, column: 11, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 461, column: 11)
!1062 = !DILocation(line: 461, column: 33, scope: !1061)
!1063 = !DILocation(line: 461, column: 36, scope: !1061)
!1064 = !DILocation(line: 461, column: 54, scope: !1061)
!1065 = !DILocation(line: 461, column: 59, scope: !1061)
!1066 = !DILocation(line: 462, column: 11, scope: !1061)
!1067 = !DILocation(line: 462, column: 29, scope: !1061)
!1068 = !DILocation(line: 462, column: 35, scope: !1061)
!1069 = !DILocation(line: 461, column: 11, scope: !1050)
!1070 = !DILocation(line: 463, column: 34, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 462, column: 39)
!1072 = !DILocation(line: 463, column: 9, scope: !1071)
!1073 = !DILocation(line: 464, column: 34, scope: !1071)
!1074 = !DILocation(line: 464, column: 9, scope: !1071)
!1075 = !DILocation(line: 465, column: 7, scope: !1071)
!1076 = distinct !{!1076, !1047, !1077}
!1077 = !DILocation(line: 466, column: 5, scope: !1041)
!1078 = !DILocation(line: 467, column: 7, scope: !1041)
!1079 = !DILocation(line: 468, column: 8, scope: !1041)
!1080 = !DILocation(line: 469, column: 5, scope: !1041)
!1081 = !DILocation(line: 470, column: 5, scope: !1041)
!1082 = !DILocation(line: 471, column: 28, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 471, column: 9)
!1084 = !DILocation(line: 471, column: 31, scope: !1083)
!1085 = !DILocation(line: 471, column: 10, scope: !1083)
!1086 = !DILocation(line: 471, column: 9, scope: !1041)
!1087 = !DILocation(line: 472, column: 7, scope: !1083)
!1088 = !DILocation(line: 473, column: 3, scope: !1041)
!1089 = !DILocation(line: 473, column: 12, scope: !1026)
!1090 = distinct !{!1090, !1039, !1091}
!1091 = !DILocation(line: 473, column: 13, scope: !1026)
!1092 = !DILocation(line: 474, column: 3, scope: !1026)
!1093 = !DILocation(line: 475, column: 3, scope: !1026)
!1094 = !DILocation(line: 476, column: 3, scope: !1026)
!1095 = !DILocation(line: 477, column: 3, scope: !1026)
!1096 = !DILabel(scope: !1026, name: "unequal", file: !3, line: 478)
!1097 = !DILocation(line: 478, column: 1, scope: !1026)
!1098 = !DILocation(line: 479, column: 3, scope: !1026)
!1099 = !DILocation(line: 480, column: 3, scope: !1026)
!1100 = !DILocation(line: 481, column: 3, scope: !1026)
!1101 = !DILocation(line: 482, column: 3, scope: !1026)
!1102 = !DILocation(line: 483, column: 1, scope: !1026)
!1103 = distinct !DISubprogram(name: "fiobj_each1", scope: !6, file: !6, line: 638, type: !791, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1104 = !DILocalVariable(name: "o", arg: 1, scope: !1103, file: !6, line: 638, type: !21)
!1105 = !DILocation(line: 638, column: 37, scope: !1103)
!1106 = !DILocalVariable(name: "start_at", arg: 2, scope: !1103, file: !6, line: 638, type: !126)
!1107 = !DILocation(line: 638, column: 47, scope: !1103)
!1108 = !DILocalVariable(name: "task", arg: 3, scope: !1103, file: !6, line: 639, type: !645)
!1109 = !DILocation(line: 639, column: 37, scope: !1103)
!1110 = !DILocalVariable(name: "arg", arg: 4, scope: !1103, file: !6, line: 639, type: !20)
!1111 = !DILocation(line: 639, column: 72, scope: !1103)
!1112 = !DILocation(line: 640, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !6, line: 640, column: 7)
!1114 = !DILocation(line: 640, column: 29, scope: !1113)
!1115 = !DILocation(line: 640, column: 32, scope: !1113)
!1116 = !DILocation(line: 640, column: 50, scope: !1113)
!1117 = !DILocation(line: 640, column: 7, scope: !1103)
!1118 = !DILocation(line: 641, column: 12, scope: !1113)
!1119 = !DILocation(line: 641, column: 30, scope: !1113)
!1120 = !DILocation(line: 641, column: 35, scope: !1113)
!1121 = !DILocation(line: 641, column: 38, scope: !1113)
!1122 = !DILocation(line: 641, column: 48, scope: !1113)
!1123 = !DILocation(line: 641, column: 54, scope: !1113)
!1124 = !DILocation(line: 641, column: 5, scope: !1113)
!1125 = !DILocation(line: 642, column: 3, scope: !1103)
!1126 = !DILocation(line: 643, column: 1, scope: !1103)
!1127 = distinct !DISubprogram(name: "fiobj_iseq____internal_complex__task", scope: !3, file: !3, line: 437, type: !646, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1128 = !DILocalVariable(name: "o", arg: 1, scope: !1127, file: !3, line: 437, type: !21)
!1129 = !DILocation(line: 437, column: 55, scope: !1127)
!1130 = !DILocalVariable(name: "ary_", arg: 2, scope: !1127, file: !3, line: 437, type: !20)
!1131 = !DILocation(line: 437, column: 64, scope: !1127)
!1132 = !DILocalVariable(name: "ary", scope: !1127, file: !3, line: 438, type: !693)
!1133 = !DILocation(line: 438, column: 18, scope: !1127)
!1134 = !DILocation(line: 438, column: 24, scope: !1127)
!1135 = !DILocation(line: 439, column: 20, scope: !1127)
!1136 = !DILocation(line: 439, column: 25, scope: !1127)
!1137 = !DILocation(line: 439, column: 3, scope: !1127)
!1138 = !DILocation(line: 440, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 440, column: 7)
!1140 = !DILocation(line: 440, column: 7, scope: !1127)
!1141 = !DILocation(line: 441, column: 22, scope: !1139)
!1142 = !DILocation(line: 441, column: 27, scope: !1139)
!1143 = !DILocation(line: 441, column: 5, scope: !1139)
!1144 = !DILocation(line: 442, column: 3, scope: !1127)
!1145 = distinct !DISubprogram(name: "fiobj_stack_count", scope: !41, file: !41, line: 4953, type: !1146, scopeLine: 4953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!126, !693}
!1148 = !DILocalVariable(name: "ary", arg: 1, scope: !1145, file: !41, line: 4953, type: !693)
!1149 = !DILocation(line: 4953, column: 54, scope: !1145)
!1150 = !DILocation(line: 4954, column: 10, scope: !1145)
!1151 = !DILocation(line: 4954, column: 17, scope: !1145)
!1152 = !DILocation(line: 4954, column: 22, scope: !1145)
!1153 = !DILocation(line: 4954, column: 28, scope: !1145)
!1154 = !DILocation(line: 4954, column: 33, scope: !1145)
!1155 = !DILocation(line: 4954, column: 26, scope: !1145)
!1156 = !DILocation(line: 4954, column: 3, scope: !1145)
!1157 = distinct !DISubprogram(name: "fiobj_iseq_simple", scope: !3, file: !3, line: 423, type: !1158, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!46, !777, !777}
!1160 = !DILocalVariable(name: "o", arg: 1, scope: !1157, file: !3, line: 423, type: !777)
!1161 = !DILocation(line: 423, column: 49, scope: !1157)
!1162 = !DILocalVariable(name: "o2", arg: 2, scope: !1157, file: !3, line: 423, type: !777)
!1163 = !DILocation(line: 423, column: 64, scope: !1157)
!1164 = !DILocation(line: 424, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 424, column: 7)
!1166 = !DILocation(line: 424, column: 12, scope: !1165)
!1167 = !DILocation(line: 424, column: 9, scope: !1165)
!1168 = !DILocation(line: 424, column: 7, scope: !1157)
!1169 = !DILocation(line: 425, column: 5, scope: !1165)
!1170 = !DILocation(line: 426, column: 8, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 426, column: 7)
!1172 = !DILocation(line: 426, column: 10, scope: !1171)
!1173 = !DILocation(line: 426, column: 14, scope: !1171)
!1174 = !DILocation(line: 426, column: 7, scope: !1157)
!1175 = !DILocation(line: 427, column: 5, scope: !1171)
!1176 = !DILocation(line: 428, column: 8, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 428, column: 7)
!1178 = !DILocation(line: 428, column: 30, scope: !1177)
!1179 = !DILocation(line: 428, column: 34, scope: !1177)
!1180 = !DILocation(line: 428, column: 7, scope: !1157)
!1181 = !DILocation(line: 429, column: 5, scope: !1177)
!1182 = !DILocation(line: 430, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 430, column: 7)
!1184 = !DILocation(line: 430, column: 25, scope: !1183)
!1185 = !DILocation(line: 430, column: 33, scope: !1183)
!1186 = !DILocation(line: 430, column: 52, scope: !1183)
!1187 = !DILocation(line: 430, column: 30, scope: !1183)
!1188 = !DILocation(line: 430, column: 7, scope: !1157)
!1189 = !DILocation(line: 431, column: 5, scope: !1183)
!1190 = !DILocation(line: 432, column: 8, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 432, column: 7)
!1192 = !DILocation(line: 432, column: 26, scope: !1191)
!1193 = !DILocation(line: 432, column: 32, scope: !1191)
!1194 = !DILocation(line: 432, column: 35, scope: !1191)
!1195 = !DILocation(line: 432, column: 7, scope: !1157)
!1196 = !DILocation(line: 433, column: 5, scope: !1191)
!1197 = !DILocation(line: 434, column: 3, scope: !1157)
!1198 = !DILocation(line: 435, column: 1, scope: !1157)
!1199 = distinct !DISubprogram(name: "fiobject___noop_dealloc", scope: !3, file: !3, line: 489, type: !767, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1200 = !DILocalVariable(name: "o", arg: 1, scope: !1199, file: !3, line: 489, type: !21)
!1201 = !DILocation(line: 489, column: 36, scope: !1199)
!1202 = !DILocalVariable(name: "task", arg: 2, scope: !1199, file: !3, line: 489, type: !769)
!1203 = !DILocation(line: 489, column: 46, scope: !1199)
!1204 = !DILocalVariable(name: "arg", arg: 3, scope: !1199, file: !3, line: 489, type: !20)
!1205 = !DILocation(line: 489, column: 74, scope: !1199)
!1206 = !DILocation(line: 490, column: 9, scope: !1199)
!1207 = !DILocation(line: 491, column: 9, scope: !1199)
!1208 = !DILocation(line: 492, column: 9, scope: !1199)
!1209 = !DILocation(line: 493, column: 1, scope: !1199)
!1210 = distinct !DISubprogram(name: "fiobject___simple_dealloc", scope: !3, file: !3, line: 494, type: !767, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1211 = !DILocalVariable(name: "o", arg: 1, scope: !1210, file: !3, line: 494, type: !21)
!1212 = !DILocation(line: 494, column: 38, scope: !1210)
!1213 = !DILocalVariable(name: "task", arg: 2, scope: !1210, file: !3, line: 494, type: !769)
!1214 = !DILocation(line: 494, column: 48, scope: !1210)
!1215 = !DILocalVariable(name: "arg", arg: 3, scope: !1210, file: !3, line: 495, type: !20)
!1216 = !DILocation(line: 495, column: 38, scope: !1210)
!1217 = !DILocation(line: 496, column: 12, scope: !1210)
!1218 = !DILocation(line: 496, column: 3, scope: !1210)
!1219 = !DILocation(line: 497, column: 9, scope: !1210)
!1220 = !DILocation(line: 498, column: 9, scope: !1210)
!1221 = !DILocation(line: 499, column: 1, scope: !1210)
!1222 = distinct !DISubprogram(name: "fiobject___noop_count", scope: !3, file: !3, line: 501, type: !775, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1223 = !DILocalVariable(name: "o", arg: 1, scope: !1222, file: !3, line: 501, type: !777)
!1224 = !DILocation(line: 501, column: 45, scope: !1222)
!1225 = !DILocation(line: 502, column: 9, scope: !1222)
!1226 = !DILocation(line: 503, column: 3, scope: !1222)
!1227 = distinct !DISubprogram(name: "fiobject___noop_is_eq", scope: !3, file: !3, line: 505, type: !786, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1228 = !DILocalVariable(name: "o1", arg: 1, scope: !1227, file: !3, line: 505, type: !777)
!1229 = !DILocation(line: 505, column: 42, scope: !1227)
!1230 = !DILocalVariable(name: "o2", arg: 2, scope: !1227, file: !3, line: 505, type: !777)
!1231 = !DILocation(line: 505, column: 58, scope: !1227)
!1232 = !DILocation(line: 506, column: 9, scope: !1227)
!1233 = !DILocation(line: 507, column: 9, scope: !1227)
!1234 = !DILocation(line: 508, column: 3, scope: !1227)
!1235 = distinct !DISubprogram(name: "fiobject___noop_to_str", scope: !3, file: !3, line: 511, type: !796, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1236 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !3, line: 511, type: !777)
!1237 = !DILocation(line: 511, column: 51, scope: !1235)
!1238 = !DILocation(line: 512, column: 9, scope: !1235)
!1239 = !DILocation(line: 513, column: 26, scope: !1235)
!1240 = !DILocation(line: 513, column: 3, scope: !1235)
!1241 = distinct !DISubprogram(name: "fiobject___noop_to_i", scope: !3, file: !3, line: 515, type: !807, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1242 = !DILocalVariable(name: "o", arg: 1, scope: !1241, file: !3, line: 515, type: !777)
!1243 = !DILocation(line: 515, column: 43, scope: !1241)
!1244 = !DILocation(line: 516, column: 9, scope: !1241)
!1245 = !DILocation(line: 517, column: 3, scope: !1241)
!1246 = distinct !DISubprogram(name: "fiobject___noop_to_f", scope: !3, file: !3, line: 519, type: !813, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1247 = !DILocalVariable(name: "o", arg: 1, scope: !1246, file: !3, line: 519, type: !777)
!1248 = !DILocation(line: 519, column: 41, scope: !1246)
!1249 = !DILocation(line: 520, column: 9, scope: !1246)
!1250 = !DILocation(line: 521, column: 3, scope: !1246)
!1251 = distinct !DISubprogram(name: "fiobj_type", scope: !6, file: !6, line: 250, type: !1252, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!25, !21}
!1254 = !DILocalVariable(name: "o", arg: 1, scope: !1251, file: !6, line: 250, type: !21)
!1255 = !DILocation(line: 250, column: 45, scope: !1251)
!1256 = !DILocation(line: 251, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 251, column: 7)
!1258 = !DILocation(line: 251, column: 7, scope: !1251)
!1259 = !DILocation(line: 252, column: 5, scope: !1257)
!1260 = !DILocation(line: 253, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 253, column: 7)
!1262 = !DILocation(line: 253, column: 9, scope: !1261)
!1263 = !DILocation(line: 253, column: 7, scope: !1251)
!1264 = !DILocation(line: 254, column: 5, scope: !1261)
!1265 = !DILocation(line: 255, column: 8, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 255, column: 7)
!1267 = !DILocation(line: 255, column: 10, scope: !1266)
!1268 = !DILocation(line: 255, column: 37, scope: !1266)
!1269 = !DILocation(line: 255, column: 7, scope: !1251)
!1270 = !DILocation(line: 256, column: 29, scope: !1266)
!1271 = !DILocation(line: 256, column: 12, scope: !1266)
!1272 = !DILocation(line: 256, column: 5, scope: !1266)
!1273 = !DILocation(line: 258, column: 8, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 257, column: 7)
!1275 = !DILocation(line: 258, column: 10, scope: !1274)
!1276 = !DILocation(line: 258, column: 37, scope: !1274)
!1277 = !DILocation(line: 257, column: 7, scope: !1251)
!1278 = !DILocation(line: 259, column: 5, scope: !1274)
!1279 = !DILocation(line: 260, column: 30, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 260, column: 7)
!1281 = !DILocation(line: 260, column: 32, scope: !1280)
!1282 = !DILocation(line: 260, column: 59, scope: !1280)
!1283 = !DILocation(line: 260, column: 7, scope: !1251)
!1284 = !DILocation(line: 261, column: 5, scope: !1280)
!1285 = !DILocation(line: 262, column: 30, scope: !1251)
!1286 = !DILocation(line: 262, column: 10, scope: !1251)
!1287 = !DILocation(line: 262, column: 3, scope: !1251)
!1288 = !DILocation(line: 263, column: 1, scope: !1251)
!1289 = distinct !DISubprogram(name: "fiobj_stack___require_on_top", scope: !41, file: !41, line: 4912, type: !1290, scopeLine: 4912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !693, !126}
!1292 = !DILocalVariable(name: "ary", arg: 1, scope: !1289, file: !41, line: 4912, type: !693)
!1293 = !DILocation(line: 4912, column: 56, scope: !1289)
!1294 = !DILocalVariable(name: "len", arg: 2, scope: !1289, file: !41, line: 4912, type: !126)
!1295 = !DILocation(line: 4912, column: 68, scope: !1289)
!1296 = !DILocation(line: 4913, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1289, file: !41, line: 4913, column: 7)
!1298 = !DILocation(line: 4913, column: 12, scope: !1297)
!1299 = !DILocation(line: 4913, column: 18, scope: !1297)
!1300 = !DILocation(line: 4913, column: 16, scope: !1297)
!1301 = !DILocation(line: 4913, column: 24, scope: !1297)
!1302 = !DILocation(line: 4913, column: 29, scope: !1297)
!1303 = !DILocation(line: 4913, column: 22, scope: !1297)
!1304 = !DILocation(line: 4913, column: 7, scope: !1289)
!1305 = !DILocation(line: 4914, column: 5, scope: !1297)
!1306 = !DILocation(line: 4915, column: 9, scope: !1289)
!1307 = !DILocation(line: 4915, column: 7, scope: !1289)
!1308 = !DILocation(line: 4917, column: 15, scope: !1289)
!1309 = !DILocation(line: 4917, column: 3, scope: !1289)
!1310 = !DILocation(line: 4917, column: 8, scope: !1289)
!1311 = !DILocation(line: 4917, column: 13, scope: !1289)
!1312 = !DILocation(line: 4920, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1289, file: !41, line: 4920, column: 3)
!1314 = !DILocation(line: 4920, column: 3, scope: !1289)
!1315 = !DILocation(line: 4920, column: 3, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !41, line: 4920, column: 3)
!1317 = !DILocation(line: 4920, column: 3, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !41, line: 4920, column: 3)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !41, line: 4920, column: 3)
!1320 = !DILocation(line: 4920, column: 3, scope: !1319)
!1321 = !DILocation(line: 4920, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !41, line: 4920, column: 3)
!1323 = !DILocation(line: 4921, column: 15, scope: !1289)
!1324 = !DILocation(line: 4921, column: 3, scope: !1289)
!1325 = !DILocation(line: 4921, column: 8, scope: !1289)
!1326 = !DILocation(line: 4921, column: 13, scope: !1289)
!1327 = !DILocation(line: 4922, column: 1, scope: !1289)
