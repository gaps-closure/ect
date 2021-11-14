; ModuleID = 'fiobj_data.c'
source_filename = "fiobj_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.fiobj_object_vtable_s = type { i8*, void (i64, void (i64, i8*)*, i8*)*, i64 (i64)*, i64 (i64)*, i64 (i64, i64)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)*, void (%struct.fio_str_info_s*, i64)*, i64 (i64)*, double (i64)* }
%struct.fio_str_info_s = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fiobj_data_s = type { %struct.fiobj_object_header_s, i8*, %union.anon, i64, i64, i64, i32 }
%struct.fiobj_object_header_s = type { i8, i32 }
%union.anon = type { i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"... (warning: truncated).\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ERROR: log output error (can't write).\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@FIOBJECT_VTABLE_DATA = dso_local constant %struct.fiobj_object_vtable_s { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), void (i64, void (i64, i8*)*, i8*)* @fiobj_data_dealloc, i64 (i64)* @fiobject___noop_count, i64 (i64)* @fiobj_data_is_true, i64 (i64, i64)* @fiobj_data_iseq, i64 (i64, i64, i32 (i64, i8*)*, i8*)* null, void (%struct.fio_str_info_s*, i64)* @fio_io2str, i64 (i64)* @fiobj_data_i, double (i64)* @fiobject___noop_to_f }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [47 x i8] c"FATAL ERROR: fiobj IO couldn't allocate memory\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"FIOBJ_TYPE(io) == FIOBJ_T_DATA\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fiobj_data.c\00", align 1
@__PRETTY_FUNCTION__.fiobj_data_assert_dynamic = private unnamed_addr constant [38 x i8] c"void fiobj_data_assert_dynamic(FIOBJ)\00", align 1
@FIO_LOG_LEVEL = weak dso_local global i32 0, align 4, !dbg !68
@fio_hash_secret_marker1 = weak dso_local global i8 0, align 1, !dbg !71
@fio_hash_secret_marker2 = weak dso_local global i8 0, align 1, !dbg !73
@FIOBJECT_VTABLE_NUMBER = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_FLOAT = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_STRING = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_ARRAY = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@FIOBJECT_VTABLE_HASH = external dso_local constant %struct.fiobj_object_vtable_s, align 8
@__const.fio_tmpfile.name_template = private unnamed_addr constant [31 x i8] c"/tmp/facil_io_tmpfile_XXXXXXXX\00", align 16
@.str.6 = private unnamed_addr constant [54 x i8] c"FATAL ERROR: (fiobj_data) can't create temporary file\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"FATAL ERROR: (fiobj_data) can't write to temporary file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @FIO_LOG2STDERR(i8* %0, ...) #0 !dbg !144 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !155, metadata !DIExpression()), !dbg !170
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !171
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !171
  call void @llvm.va_start(i8* %7), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %5, metadata !172, metadata !DIExpression()), !dbg !173
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !174
  %9 = load i8*, i8** %2, align 8, !dbg !175
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !176
  %11 = call i32 @vsnprintf(i8* %8, i64 2046, i8* %9, %struct.__va_list_tag* %10) #2, !dbg !177
  store i32 %11, i32* %5, align 4, !dbg !173
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !178
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !178
  call void @llvm.va_end(i8* %13), !dbg !178
  %14 = load i32, i32* %5, align 4, !dbg !179
  %15 = icmp sle i32 %14, 0, !dbg !181
  br i1 %15, label %19, label %16, !dbg !182

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4, !dbg !183
  %18 = icmp sge i32 %17, 2046, !dbg !184
  br i1 %18, label %19, label %29, !dbg !185

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4, !dbg !186
  %21 = icmp sge i32 %20, 2046, !dbg !189
  br i1 %21, label %22, label %25, !dbg !190

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !191
  %24 = getelementptr inbounds i8, i8* %23, i64 2016, !dbg !193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i1 false), !dbg !194
  store i32 2041, i32* %5, align 4, !dbg !195
  br label %28, !dbg !196

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !197
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %26), !dbg !199
  br label %42, !dbg !200

28:                                               ; preds = %22
  br label %29, !dbg !201

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %5, align 4, !dbg !202
  %31 = add nsw i32 %30, 1, !dbg !202
  store i32 %31, i32* %5, align 4, !dbg !202
  %32 = sext i32 %30 to i64, !dbg !203
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %32, !dbg !203
  store i8 10, i8* %33, align 1, !dbg !204
  %34 = load i32, i32* %5, align 4, !dbg !205
  %35 = sext i32 %34 to i64, !dbg !206
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %35, !dbg !206
  store i8 48, i8* %36, align 1, !dbg !207
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0, !dbg !208
  %38 = load i32, i32* %5, align 4, !dbg !209
  %39 = sext i32 %38 to i64, !dbg !209
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !210
  %41 = call i64 @fwrite(i8* %37, i64 %39, i64 1, %struct._IO_FILE* %40), !dbg !211
  br label %42, !dbg !212

42:                                               ; preds = %29, %25
  ret void, !dbg !212
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
define internal void @fiobj_data_dealloc(i64 %0, void (i64, i8*)* %1, i8* %2) #0 !dbg !213 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !214, metadata !DIExpression()), !dbg !215
  store void (i64, i8*)* %1, void (i64, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i64, i8*)** %5, metadata !216, metadata !DIExpression()), !dbg !217
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !218, metadata !DIExpression()), !dbg !219
  %7 = load i64, i64* %4, align 8, !dbg !220
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*, !dbg !220
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 6, !dbg !221
  %10 = load i32, i32* %9, align 8, !dbg !221
  switch i32 %10, label %41 [
    i32 -1, label %11
    i32 -2, label %35
  ], !dbg !222

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8, !dbg !223
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*, !dbg !223
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 2, !dbg !226
  %15 = bitcast %union.anon* %14 to void (i8*)**, !dbg !227
  %16 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !227
  %17 = icmp ne void (i8*)* %16, null, !dbg !223
  br i1 %17, label %18, label %34, !dbg !228

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8, !dbg !229
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*, !dbg !229
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 1, !dbg !230
  %22 = load i8*, i8** %21, align 8, !dbg !230
  %23 = icmp ne i8* %22, null, !dbg !229
  br i1 %23, label %24, label %34, !dbg !231

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8, !dbg !232
  %26 = inttoptr i64 %25 to %struct.fiobj_data_s*, !dbg !232
  %27 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %26, i32 0, i32 2, !dbg !233
  %28 = bitcast %union.anon* %27 to void (i8*)**, !dbg !234
  %29 = load void (i8*)*, void (i8*)** %28, align 8, !dbg !234
  %30 = load i64, i64* %4, align 8, !dbg !235
  %31 = inttoptr i64 %30 to %struct.fiobj_data_s*, !dbg !235
  %32 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %31, i32 0, i32 1, !dbg !236
  %33 = load i8*, i8** %32, align 8, !dbg !236
  call void %29(i8* %33), !dbg !232
  br label %34, !dbg !232

34:                                               ; preds = %24, %18, %11
  br label %51, !dbg !237

35:                                               ; preds = %3
  %36 = load i64, i64* %4, align 8, !dbg !238
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*, !dbg !238
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 2, !dbg !239
  %39 = bitcast %union.anon* %38 to i64*, !dbg !240
  %40 = load i64, i64* %39, align 8, !dbg !240
  call void @fiobj_free(i64 %40), !dbg !241
  br label %51, !dbg !242

41:                                               ; preds = %3
  %42 = load i64, i64* %4, align 8, !dbg !243
  %43 = inttoptr i64 %42 to %struct.fiobj_data_s*, !dbg !243
  %44 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %43, i32 0, i32 6, !dbg !244
  %45 = load i32, i32* %44, align 8, !dbg !244
  %46 = call i32 @close(i32 %45), !dbg !245
  %47 = load i64, i64* %4, align 8, !dbg !246
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*, !dbg !246
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1, !dbg !247
  %50 = load i8*, i8** %49, align 8, !dbg !247
  call void @fio_free(i8* %50), !dbg !248
  br label %51, !dbg !249

51:                                               ; preds = %41, %35, %34
  %52 = load i64, i64* %4, align 8, !dbg !250
  %53 = inttoptr i64 %52 to i8*, !dbg !251
  call void @fio_free(i8* %53), !dbg !252
  %54 = load void (i64, i8*)*, void (i64, i8*)** %5, align 8, !dbg !253
  %55 = load i8*, i8** %6, align 8, !dbg !254
  ret void, !dbg !255
}

declare dso_local i64 @fiobject___noop_count(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_is_true(i64 %0) #0 !dbg !256 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !257, metadata !DIExpression()), !dbg !258
  %3 = load i64, i64* %2, align 8, !dbg !259
  %4 = call i64 @fiobj_data_i(i64 %3), !dbg !260
  %5 = icmp sgt i64 %4, 0, !dbg !261
  %6 = zext i1 %5 to i32, !dbg !261
  %7 = sext i32 %6 to i64, !dbg !260
  ret i64 %7, !dbg !262
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_iseq(i64 %0, i64 %1) #0 !dbg !263 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !264, metadata !DIExpression()), !dbg !265
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i64* %5, metadata !268, metadata !DIExpression()), !dbg !272
  %8 = load i64, i64* %3, align 8, !dbg !273
  %9 = call i64 @fiobj_data_i(i64 %8), !dbg !274
  store i64 %9, i64* %5, align 8, !dbg !275
  %10 = load i64, i64* %4, align 8, !dbg !276
  %11 = call i64 @fiobj_data_i(i64 %10), !dbg !277
  %12 = icmp eq i64 %9, %11, !dbg !278
  br i1 %12, label %13, label %24, !dbg !279

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !280
  call void @fio_io2str(%struct.fio_str_info_s* sret %6, i64 %14), !dbg !281
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %6, i32 0, i32 2, !dbg !282
  %16 = load i8*, i8** %15, align 8, !dbg !282
  %17 = load i64, i64* %4, align 8, !dbg !283
  call void @fio_io2str(%struct.fio_str_info_s* sret %7, i64 %17), !dbg !284
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !285
  %19 = load i8*, i8** %18, align 8, !dbg !285
  %20 = load i64, i64* %5, align 8, !dbg !286
  %21 = call i32 @memcmp(i8* %16, i8* %19, i64 %20) #10, !dbg !287
  %22 = icmp ne i32 %21, 0, !dbg !288
  %23 = xor i1 %22, true, !dbg !288
  br label %24

24:                                               ; preds = %13, %2
  %25 = phi i1 [ false, %2 ], [ %23, %13 ], !dbg !289
  %26 = zext i1 %25 to i32, !dbg !279
  %27 = sext i32 %26 to i64, !dbg !290
  ret i64 %27, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fio_io2str(%struct.fio_str_info_s* noalias sret %0, i64 %1) #0 !dbg !292 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !293, metadata !DIExpression()), !dbg !294
  %5 = load i64, i64* %3, align 8, !dbg !295
  %6 = inttoptr i64 %5 to %struct.fiobj_data_s*, !dbg !295
  %7 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 6, !dbg !296
  %8 = load i32, i32* %7, align 8, !dbg !296
  switch i32 %8, label %35 [
    i32 -1, label %9
    i32 -2, label %21
  ], !dbg !297

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !298
  store i64 0, i64* %10, align 8, !dbg !298
  %11 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !298
  %12 = load i64, i64* %3, align 8, !dbg !300
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*, !dbg !300
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 4, !dbg !301
  %15 = load i64, i64* %14, align 8, !dbg !301
  store i64 %15, i64* %11, align 8, !dbg !298
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !298
  %17 = load i64, i64* %3, align 8, !dbg !302
  %18 = inttoptr i64 %17 to %struct.fiobj_data_s*, !dbg !302
  %19 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %18, i32 0, i32 1, !dbg !303
  %20 = load i8*, i8** %19, align 8, !dbg !303
  store i8* %20, i8** %16, align 8, !dbg !298
  br label %93, !dbg !304

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8, !dbg !305
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*, !dbg !305
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 2, !dbg !306
  %25 = bitcast %union.anon* %24 to i64*, !dbg !307
  %26 = load i64, i64* %25, align 8, !dbg !307
  %27 = load i64, i64* %3, align 8, !dbg !308
  %28 = inttoptr i64 %27 to %struct.fiobj_data_s*, !dbg !308
  %29 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %28, i32 0, i32 3, !dbg !309
  %30 = load i64, i64* %29, align 8, !dbg !309
  %31 = load i64, i64* %3, align 8, !dbg !310
  %32 = inttoptr i64 %31 to %struct.fiobj_data_s*, !dbg !310
  %33 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %32, i32 0, i32 4, !dbg !311
  %34 = load i64, i64* %33, align 8, !dbg !311
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %0, i64 %26, i64 %30, i64 %34), !dbg !312
  br label %93, !dbg !313

35:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %4, metadata !314, metadata !DIExpression()), !dbg !315
  %36 = load i64, i64* %3, align 8, !dbg !316
  %37 = call i64 @fiobj_data_get_fd_size(i64 %36), !dbg !317
  store i64 %37, i64* %4, align 8, !dbg !315
  %38 = load i64, i64* %4, align 8, !dbg !318
  %39 = icmp sle i64 %38, 0, !dbg !320
  br i1 %39, label %40, label %52, !dbg !321

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !322
  store i64 0, i64* %41, align 8, !dbg !322
  %42 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !322
  %43 = load i64, i64* %3, align 8, !dbg !323
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !323
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 4, !dbg !324
  %46 = load i64, i64* %45, align 8, !dbg !324
  store i64 %46, i64* %42, align 8, !dbg !322
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !322
  %48 = load i64, i64* %3, align 8, !dbg !325
  %49 = inttoptr i64 %48 to %struct.fiobj_data_s*, !dbg !325
  %50 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %49, i32 0, i32 1, !dbg !326
  %51 = load i8*, i8** %50, align 8, !dbg !326
  store i8* %51, i8** %47, align 8, !dbg !322
  br label %93, !dbg !327

52:                                               ; preds = %35
  %53 = load i64, i64* %3, align 8, !dbg !328
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*, !dbg !328
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 4, !dbg !329
  store i64 0, i64* %55, align 8, !dbg !330
  %56 = load i64, i64* %3, align 8, !dbg !331
  %57 = inttoptr i64 %56 to %struct.fiobj_data_s*, !dbg !331
  %58 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %57, i32 0, i32 5, !dbg !332
  store i64 0, i64* %58, align 8, !dbg !333
  %59 = load i64, i64* %3, align 8, !dbg !334
  %60 = load i64, i64* %4, align 8, !dbg !335
  %61 = add nsw i64 %60, 1, !dbg !336
  call void @fiobj_data_pre_write(i64 %59, i64 %61), !dbg !337
  %62 = load i64, i64* %3, align 8, !dbg !338
  %63 = inttoptr i64 %62 to %struct.fiobj_data_s*, !dbg !338
  %64 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %63, i32 0, i32 6, !dbg !340
  %65 = load i32, i32* %64, align 8, !dbg !340
  %66 = load i64, i64* %3, align 8, !dbg !341
  %67 = inttoptr i64 %66 to %struct.fiobj_data_s*, !dbg !341
  %68 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %67, i32 0, i32 1, !dbg !342
  %69 = load i8*, i8** %68, align 8, !dbg !342
  %70 = load i64, i64* %4, align 8, !dbg !343
  %71 = call i64 @pread(i32 %65, i8* %69, i64 %70, i64 0), !dbg !344
  %72 = load i64, i64* %4, align 8, !dbg !345
  %73 = icmp ne i64 %71, %72, !dbg !346
  br i1 %73, label %74, label %78, !dbg !347

74:                                               ; preds = %52
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !348
  store i64 0, i64* %75, align 8, !dbg !348
  %76 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !348
  store i64 0, i64* %76, align 8, !dbg !348
  %77 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !348
  store i8* null, i8** %77, align 8, !dbg !348
  br label %93, !dbg !349

78:                                               ; preds = %52
  %79 = load i64, i64* %3, align 8, !dbg !350
  %80 = inttoptr i64 %79 to %struct.fiobj_data_s*, !dbg !350
  %81 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %80, i32 0, i32 1, !dbg !351
  %82 = load i8*, i8** %81, align 8, !dbg !351
  %83 = load i64, i64* %4, align 8, !dbg !352
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !350
  store i8 0, i8* %84, align 1, !dbg !353
  %85 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !354
  store i64 0, i64* %85, align 8, !dbg !354
  %86 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !354
  %87 = load i64, i64* %4, align 8, !dbg !355
  store i64 %87, i64* %86, align 8, !dbg !354
  %88 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !354
  %89 = load i64, i64* %3, align 8, !dbg !356
  %90 = inttoptr i64 %89 to %struct.fiobj_data_s*, !dbg !356
  %91 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %90, i32 0, i32 1, !dbg !357
  %92 = load i8*, i8** %91, align 8, !dbg !357
  store i8* %92, i8** %88, align 8, !dbg !354
  br label %93, !dbg !358

93:                                               ; preds = %78, %74, %40, %21, %9
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_i(i64 %0) #0 !dbg !360 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !361, metadata !DIExpression()), !dbg !362
  %4 = load i64, i64* %3, align 8, !dbg !363
  %5 = inttoptr i64 %4 to %struct.fiobj_data_s*, !dbg !363
  %6 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %5, i32 0, i32 6, !dbg !364
  %7 = load i32, i32* %6, align 8, !dbg !364
  switch i32 %7, label %13 [
    i32 -1, label %8
    i32 -2, label %8
  ], !dbg !365

8:                                                ; preds = %1, %1
  %9 = load i64, i64* %3, align 8, !dbg !366
  %10 = inttoptr i64 %9 to %struct.fiobj_data_s*, !dbg !366
  %11 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %10, i32 0, i32 4, !dbg !368
  %12 = load i64, i64* %11, align 8, !dbg !368
  store i64 %12, i64* %2, align 8, !dbg !369
  br label %16, !dbg !369

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8, !dbg !370
  %15 = call i64 @fiobj_data_get_fd_size(i64 %14), !dbg !371
  store i64 %15, i64* %2, align 8, !dbg !372
  br label %16, !dbg !372

16:                                               ; preds = %13, %8
  %17 = load i64, i64* %2, align 8, !dbg !373
  ret i64 %17, !dbg !373
}

declare dso_local double @fiobject___noop_to_f(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newstr() #0 !dbg !374 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !377, metadata !DIExpression()), !dbg !378
  %2 = call noalias i8* @fio_malloc(i64 4096), !dbg !379
  %3 = ptrtoint i8* %2 to i64, !dbg !379
  %4 = and i64 %3, 15, !dbg !379
  %5 = icmp eq i64 %4, 0, !dbg !379
  call void @llvm.assume(i1 %5), !dbg !379
  %6 = call i64 @fiobj_data_alloc(i8* %2, i32 -1), !dbg !380
  store i64 %6, i64* %1, align 8, !dbg !378
  br label %7, !dbg !381

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8, !dbg !383
  %9 = inttoptr i64 %8 to %struct.fiobj_data_s*, !dbg !383
  %10 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %9, i32 0, i32 1, !dbg !383
  %11 = load i8*, i8** %10, align 8, !dbg !383
  %12 = icmp eq i8* %11, null, !dbg !383
  br i1 %12, label %13, label %16, !dbg !386

13:                                               ; preds = %7
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)), !dbg !387
  %14 = call i32* @__errno_location() #11, !dbg !387
  %15 = load i32, i32* %14, align 4, !dbg !387
  call void @exit(i32 %15) #12, !dbg !387
  unreachable, !dbg !387

16:                                               ; preds = %7
  br label %17, !dbg !386

17:                                               ; preds = %16
  %18 = load i64, i64* %1, align 8, !dbg !389
  %19 = inttoptr i64 %18 to %struct.fiobj_data_s*, !dbg !389
  %20 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %19, i32 0, i32 3, !dbg !390
  store i64 4096, i64* %20, align 8, !dbg !391
  %21 = load i64, i64* %1, align 8, !dbg !392
  %22 = inttoptr i64 %21 to %struct.fiobj_data_s*, !dbg !392
  %23 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %22, i32 0, i32 2, !dbg !393
  %24 = bitcast %union.anon* %23 to void (i8*)**, !dbg !394
  store void (i8*)* @fio_free, void (i8*)** %24, align 8, !dbg !395
  %25 = load i64, i64* %1, align 8, !dbg !396
  ret i64 %25, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_alloc(i8* %0, i32 %1) #0 !dbg !398 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fiobj_data_s*, align 8
  %6 = alloca %struct.fiobj_data_s, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !401, metadata !DIExpression()), !dbg !402
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata %struct.fiobj_data_s** %5, metadata !405, metadata !DIExpression()), !dbg !406
  %7 = call noalias i8* @fio_malloc(i64 56), !dbg !407
  %8 = ptrtoint i8* %7 to i64, !dbg !407
  %9 = and i64 %8, 15, !dbg !407
  %10 = icmp eq i64 %9, 0, !dbg !407
  call void @llvm.assume(i1 %10), !dbg !407
  %11 = bitcast i8* %7 to %struct.fiobj_data_s*, !dbg !407
  store %struct.fiobj_data_s* %11, %struct.fiobj_data_s** %5, align 8, !dbg !406
  br label %12, !dbg !408

12:                                               ; preds = %2
  %13 = load %struct.fiobj_data_s*, %struct.fiobj_data_s** %5, align 8, !dbg !410
  %14 = icmp eq %struct.fiobj_data_s* %13, null, !dbg !410
  br i1 %14, label %15, label %18, !dbg !413

15:                                               ; preds = %12
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)), !dbg !414
  %16 = call i32* @__errno_location() #11, !dbg !414
  %17 = load i32, i32* %16, align 4, !dbg !414
  call void @exit(i32 %17) #12, !dbg !414
  unreachable, !dbg !414

18:                                               ; preds = %12
  br label %19, !dbg !413

19:                                               ; preds = %18
  %20 = load %struct.fiobj_data_s*, %struct.fiobj_data_s** %5, align 8, !dbg !416
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 0, !dbg !417
  %22 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 0, !dbg !418
  store i8 43, i8* %22, align 8, !dbg !418
  %23 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %21, i32 0, i32 1, !dbg !418
  store i32 1, i32* %23, align 4, !dbg !418
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 1, !dbg !417
  %25 = load i8*, i8** %3, align 8, !dbg !419
  store i8* %25, i8** %24, align 8, !dbg !417
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 2, !dbg !417
  %27 = bitcast %union.anon* %26 to i8*, !dbg !417
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false), !dbg !417
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 3, !dbg !417
  store i64 0, i64* %28, align 8, !dbg !417
  %29 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 4, !dbg !417
  store i64 0, i64* %29, align 8, !dbg !417
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 5, !dbg !417
  store i64 0, i64* %30, align 8, !dbg !417
  %31 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 6, !dbg !417
  %32 = load i32, i32* %4, align 4, !dbg !420
  store i32 %32, i32* %31, align 8, !dbg !417
  %33 = bitcast %struct.fiobj_data_s* %20 to i8*, !dbg !421
  %34 = bitcast %struct.fiobj_data_s* %6 to i8*, !dbg !421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 56, i1 false), !dbg !421
  %35 = load %struct.fiobj_data_s*, %struct.fiobj_data_s** %5, align 8, !dbg !422
  %36 = ptrtoint %struct.fiobj_data_s* %35 to i64, !dbg !423
  ret i64 %36, !dbg !424
}

declare dso_local noalias i8* @fio_malloc(i64) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

declare dso_local void @perror(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

declare dso_local void @fio_free(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newstr2(i8* %0, i64 %1, void (i8*)* %2) #0 !dbg !425 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !430, metadata !DIExpression()), !dbg !431
  store void (i8*)* %2, void (i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %6, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i64* %7, metadata !434, metadata !DIExpression()), !dbg !435
  %8 = load i8*, i8** %4, align 8, !dbg !436
  %9 = call i64 @fiobj_data_alloc(i8* %8, i32 -1), !dbg !437
  store i64 %9, i64* %7, align 8, !dbg !435
  %10 = load i64, i64* %5, align 8, !dbg !438
  %11 = load i64, i64* %7, align 8, !dbg !439
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !439
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 3, !dbg !440
  store i64 %10, i64* %13, align 8, !dbg !441
  %14 = load i64, i64* %5, align 8, !dbg !442
  %15 = load i64, i64* %7, align 8, !dbg !443
  %16 = inttoptr i64 %15 to %struct.fiobj_data_s*, !dbg !443
  %17 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %16, i32 0, i32 4, !dbg !444
  store i64 %14, i64* %17, align 8, !dbg !445
  %18 = load void (i8*)*, void (i8*)** %6, align 8, !dbg !446
  %19 = load i64, i64* %7, align 8, !dbg !447
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*, !dbg !447
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 2, !dbg !448
  %22 = bitcast %union.anon* %21 to void (i8*)**, !dbg !449
  store void (i8*)* %18, void (i8*)** %22, align 8, !dbg !450
  %23 = load i64, i64* %7, align 8, !dbg !451
  ret i64 %23, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newfd(i32 %0) #0 !dbg !453 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i64* %3, metadata !458, metadata !DIExpression()), !dbg !459
  %4 = call noalias i8* @fio_malloc(i64 4096), !dbg !460
  %5 = ptrtoint i8* %4 to i64, !dbg !460
  %6 = and i64 %5, 15, !dbg !460
  %7 = icmp eq i64 %6, 0, !dbg !460
  call void @llvm.assume(i1 %7), !dbg !460
  %8 = load i32, i32* %2, align 4, !dbg !461
  %9 = call i64 @fiobj_data_alloc(i8* %4, i32 %8), !dbg !463
  store i64 %9, i64* %3, align 8, !dbg !459
  br label %10, !dbg !464

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8, !dbg !465
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !465
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 1, !dbg !465
  %14 = load i8*, i8** %13, align 8, !dbg !465
  %15 = icmp eq i8* %14, null, !dbg !465
  br i1 %15, label %16, label %19, !dbg !468

16:                                               ; preds = %10
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)), !dbg !469
  %17 = call i32* @__errno_location() #11, !dbg !469
  %18 = load i32, i32* %17, align 4, !dbg !469
  call void @exit(i32 %18) #12, !dbg !469
  unreachable, !dbg !469

19:                                               ; preds = %10
  br label %20, !dbg !468

20:                                               ; preds = %19
  %21 = load i64, i64* %3, align 8, !dbg !471
  %22 = inttoptr i64 %21 to %struct.fiobj_data_s*, !dbg !471
  %23 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %22, i32 0, i32 2, !dbg !472
  %24 = bitcast %union.anon* %23 to i64*, !dbg !473
  store i64 0, i64* %24, align 8, !dbg !474
  %25 = load i64, i64* %3, align 8, !dbg !475
  ret i64 %25, !dbg !476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_newtmpfile() #0 !dbg !477 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = call i32 @fio_tmpfile(), !dbg !480
  store i32 %3, i32* %2, align 4, !dbg !479
  %4 = load i32, i32* %2, align 4, !dbg !481
  %5 = icmp eq i32 %4, -1, !dbg !483
  br i1 %5, label %6, label %7, !dbg !484

6:                                                ; preds = %0
  store i64 0, i64* %1, align 8, !dbg !485
  br label %10, !dbg !485

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !486
  %9 = call i64 @fiobj_data_newfd(i32 %8), !dbg !487
  store i64 %9, i64* %1, align 8, !dbg !488
  br label %10, !dbg !488

10:                                               ; preds = %7, %6
  %11 = load i64, i64* %1, align 8, !dbg !489
  ret i64 %11, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fio_tmpfile() #0 !dbg !490 {
  %1 = alloca i32, align 4
  %2 = alloca [31 x i8], align 16
  call void @llvm.dbg.declare(metadata i32* %1, metadata !494, metadata !DIExpression()), !dbg !495
  store i32 0, i32* %1, align 4, !dbg !495
  call void @llvm.dbg.declare(metadata [31 x i8]* %2, metadata !496, metadata !DIExpression()), !dbg !502
  %3 = bitcast [31 x i8]* %2 to i8*, !dbg !502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.fio_tmpfile.name_template, i32 0, i32 0), i64 31, i1 false), !dbg !502
  %4 = getelementptr inbounds [31 x i8], [31 x i8]* %2, i64 0, i64 0, !dbg !503
  %5 = call i32 @mkstemp(i8* %4), !dbg !504
  store i32 %5, i32* %1, align 4, !dbg !505
  %6 = load i32, i32* %1, align 4, !dbg !506
  ret i32 %6, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_slice(i64 %0, i64 %1, i64 %2) #0 !dbg !508 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !515, metadata !DIExpression()), !dbg !516
  %10 = load i64, i64* %5, align 8, !dbg !517
  %11 = icmp slt i64 %10, 0, !dbg !519
  br i1 %11, label %12, label %19, !dbg !520

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %7, metadata !521, metadata !DIExpression()), !dbg !523
  %13 = load i64, i64* %4, align 8, !dbg !524
  %14 = call i64 @fiobj_data_len(i64 %13), !dbg !525
  store i64 %14, i64* %7, align 8, !dbg !523
  %15 = load i64, i64* %7, align 8, !dbg !526
  %16 = add i64 %15, 1, !dbg !527
  %17 = load i64, i64* %5, align 8, !dbg !528
  %18 = add i64 %16, %17, !dbg !529
  store i64 %18, i64* %5, align 8, !dbg !530
  br label %19, !dbg !531

19:                                               ; preds = %12, %3
  %20 = load i64, i64* %5, align 8, !dbg !532
  %21 = icmp slt i64 %20, 0, !dbg !534
  br i1 %21, label %22, label %23, !dbg !535

22:                                               ; preds = %19
  store i64 0, i64* %5, align 8, !dbg !536
  br label %23, !dbg !537

23:                                               ; preds = %22, %19
  br label %24, !dbg !538

24:                                               ; preds = %30, %23
  %25 = load i64, i64* %4, align 8, !dbg !539
  %26 = inttoptr i64 %25 to %struct.fiobj_data_s*, !dbg !539
  %27 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %26, i32 0, i32 6, !dbg !540
  %28 = load i32, i32* %27, align 8, !dbg !540
  %29 = icmp eq i32 %28, -2, !dbg !541
  br i1 %29, label %30, label %42, !dbg !538

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8, !dbg !542
  %32 = inttoptr i64 %31 to %struct.fiobj_data_s*, !dbg !542
  %33 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %32, i32 0, i32 3, !dbg !544
  %34 = load i64, i64* %33, align 8, !dbg !544
  %35 = load i64, i64* %5, align 8, !dbg !545
  %36 = add i64 %35, %34, !dbg !545
  store i64 %36, i64* %5, align 8, !dbg !545
  %37 = load i64, i64* %4, align 8, !dbg !546
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*, !dbg !546
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 2, !dbg !547
  %40 = bitcast %union.anon* %39 to i64*, !dbg !548
  %41 = load i64, i64* %40, align 8, !dbg !548
  store i64 %41, i64* %4, align 8, !dbg !549
  br label %24, !dbg !538, !llvm.loop !550

42:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !552, metadata !DIExpression()), !dbg !553
  %43 = load i64, i64* %4, align 8, !dbg !554
  %44 = call i64 @fiobj_data_len(i64 %43), !dbg !555
  store i64 %44, i64* %8, align 8, !dbg !553
  %45 = load i64, i64* %8, align 8, !dbg !556
  %46 = load i64, i64* %5, align 8, !dbg !558
  %47 = icmp ule i64 %45, %46, !dbg !559
  br i1 %47, label %48, label %50, !dbg !560

48:                                               ; preds = %42
  store i64 0, i64* %6, align 8, !dbg !561
  %49 = load i64, i64* %8, align 8, !dbg !563
  store i64 %49, i64* %5, align 8, !dbg !564
  br label %61, !dbg !565

50:                                               ; preds = %42
  %51 = load i64, i64* %8, align 8, !dbg !566
  %52 = load i64, i64* %5, align 8, !dbg !568
  %53 = load i64, i64* %6, align 8, !dbg !569
  %54 = add i64 %52, %53, !dbg !570
  %55 = icmp ult i64 %51, %54, !dbg !571
  br i1 %55, label %56, label %60, !dbg !572

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8, !dbg !573
  %58 = load i64, i64* %5, align 8, !dbg !575
  %59 = sub i64 %57, %58, !dbg !576
  store i64 %59, i64* %6, align 8, !dbg !577
  br label %60, !dbg !578

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %48
  call void @llvm.dbg.declare(metadata i64* %9, metadata !579, metadata !DIExpression()), !dbg !580
  %62 = call i64 @fiobj_data_alloc(i8* null, i32 -2), !dbg !581
  store i64 %62, i64* %9, align 8, !dbg !580
  %63 = load i64, i64* %5, align 8, !dbg !582
  %64 = load i64, i64* %9, align 8, !dbg !583
  %65 = inttoptr i64 %64 to %struct.fiobj_data_s*, !dbg !583
  %66 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %65, i32 0, i32 3, !dbg !584
  store i64 %63, i64* %66, align 8, !dbg !585
  %67 = load i64, i64* %6, align 8, !dbg !586
  %68 = load i64, i64* %9, align 8, !dbg !587
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*, !dbg !587
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 4, !dbg !588
  store i64 %67, i64* %70, align 8, !dbg !589
  %71 = load i64, i64* %4, align 8, !dbg !590
  %72 = call i64 @fiobj_dup(i64 %71), !dbg !591
  %73 = load i64, i64* %9, align 8, !dbg !592
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*, !dbg !592
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 2, !dbg !593
  %76 = bitcast %union.anon* %75 to i64*, !dbg !594
  store i64 %72, i64* %76, align 8, !dbg !595
  %77 = load i64, i64* %9, align 8, !dbg !596
  ret i64 %77, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_len(i64 %0) #0 !dbg !598 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !601, metadata !DIExpression()), !dbg !602
  %4 = load i64, i64* %3, align 8, !dbg !603
  %5 = icmp ne i64 %4, 0, !dbg !603
  br i1 %5, label %6, label %10, !dbg !605

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8, !dbg !606
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 43), !dbg !606
  %9 = icmp ne i64 %8, 0, !dbg !606
  br i1 %9, label %11, label %10, !dbg !607

10:                                               ; preds = %6, %1
  store i64 -1, i64* %2, align 8, !dbg !608
  br label %14, !dbg !608

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8, !dbg !609
  %13 = call i64 @fiobj_data_i(i64 %12), !dbg !610
  store i64 %13, i64* %2, align 8, !dbg !611
  br label %14, !dbg !611

14:                                               ; preds = %11, %10
  %15 = load i64, i64* %2, align 8, !dbg !612
  ret i64 %15, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_dup(i64 %0) #0 !dbg !613 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !616, metadata !DIExpression()), !dbg !617
  %5 = load i64, i64* %2, align 8, !dbg !618
  %6 = icmp ne i64 %5, 0, !dbg !618
  br i1 %6, label %7, label %25, !dbg !618

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !618
  %9 = and i64 %8, 1, !dbg !618
  %10 = icmp eq i64 %9, 0, !dbg !618
  br i1 %10, label %11, label %25, !dbg !618

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !618
  %13 = and i64 %12, 6, !dbg !618
  %14 = icmp ne i64 %13, 6, !dbg !618
  br i1 %14, label %15, label %25, !dbg !620

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8, !dbg !621
  %17 = and i64 %16, -8, !dbg !621
  %18 = inttoptr i64 %17 to i8*, !dbg !621
  %19 = bitcast i8* %18 to %struct.fiobj_object_header_s*, !dbg !621
  %20 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %19, i32 0, i32 1, !dbg !621
  store i32 1, i32* %3, align 4, !dbg !621
  %21 = load i32, i32* %3, align 4, !dbg !621
  %22 = atomicrmw add i32* %20, i32 %21 seq_cst, !dbg !621
  %23 = add i32 %22, %21, !dbg !621
  store i32 %23, i32* %4, align 4, !dbg !621
  %24 = load i32, i32* %4, align 4, !dbg !621
  br label %25, !dbg !621

25:                                               ; preds = %15, %11, %7, %1
  %26 = load i64, i64* %2, align 8, !dbg !622
  ret i64 %26, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiobj_data_save(i64 %0, i8* %1) #0 !dbg !624 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !627, metadata !DIExpression()), !dbg !628
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !629, metadata !DIExpression()), !dbg !630
  %6 = load i64, i64* %4, align 8, !dbg !631
  %7 = inttoptr i64 %6 to %struct.fiobj_data_s*, !dbg !631
  %8 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %7, i32 0, i32 6, !dbg !632
  %9 = load i32, i32* %8, align 8, !dbg !632
  switch i32 %9, label %18 [
    i32 -1, label %10
    i32 -2, label %14
  ], !dbg !633

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8, !dbg !634
  %12 = load i8*, i8** %5, align 8, !dbg !636
  %13 = call i32 @fiobj_data_save_str(i64 %11, i8* %12), !dbg !637
  store i32 %13, i32* %3, align 4, !dbg !638
  br label %22, !dbg !638

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8, !dbg !639
  %16 = load i8*, i8** %5, align 8, !dbg !640
  %17 = call i32 @fiobj_data_save_slice(i64 %15, i8* %16), !dbg !641
  store i32 %17, i32* %3, align 4, !dbg !642
  br label %22, !dbg !642

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8, !dbg !643
  %20 = load i8*, i8** %5, align 8, !dbg !644
  %21 = call i32 @fiobj_data_save_file(i64 %19, i8* %20), !dbg !645
  store i32 %21, i32* %3, align 4, !dbg !646
  br label %22, !dbg !646

22:                                               ; preds = %18, %14, %10
  %23 = load i32, i32* %3, align 4, !dbg !647
  ret i32 %23, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_data_save_str(i64 %0, i8* %1) #0 !dbg !648 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !649, metadata !DIExpression()), !dbg !650
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i32* %6, metadata !653, metadata !DIExpression()), !dbg !654
  %9 = load i8*, i8** %5, align 8, !dbg !655
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 578, i32 511), !dbg !656
  store i32 %10, i32* %6, align 4, !dbg !654
  %11 = load i32, i32* %6, align 4, !dbg !657
  %12 = icmp eq i32 %11, -1, !dbg !659
  br i1 %12, label %13, label %14, !dbg !660

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !661
  br label %53, !dbg !661

14:                                               ; preds = %2
  %15 = call i32* @__errno_location() #11, !dbg !662
  store i32 0, i32* %15, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata i64* %7, metadata !664, metadata !DIExpression()), !dbg !665
  store i64 0, i64* %7, align 8, !dbg !665
  br label %16, !dbg !666

16:                                               ; preds = %38, %14
  call void @llvm.dbg.declare(metadata i64* %8, metadata !667, metadata !DIExpression()), !dbg !671
  %17 = load i32, i32* %6, align 4, !dbg !672
  %18 = load i64, i64* %4, align 8, !dbg !673
  %19 = inttoptr i64 %18 to %struct.fiobj_data_s*, !dbg !673
  %20 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %19, i32 0, i32 1, !dbg !674
  %21 = load i8*, i8** %20, align 8, !dbg !674
  %22 = load i64, i64* %7, align 8, !dbg !675
  %23 = getelementptr inbounds i8, i8* %21, i64 %22, !dbg !676
  %24 = load i64, i64* %4, align 8, !dbg !677
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*, !dbg !677
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4, !dbg !678
  %27 = load i64, i64* %26, align 8, !dbg !678
  %28 = load i64, i64* %7, align 8, !dbg !679
  %29 = sub i64 %27, %28, !dbg !680
  %30 = call i64 @write(i32 %17, i8* %23, i64 %29), !dbg !681
  store i64 %30, i64* %8, align 8, !dbg !671
  %31 = load i64, i64* %8, align 8, !dbg !682
  %32 = icmp slt i64 %31, 0, !dbg !684
  br i1 %32, label %33, label %34, !dbg !685

33:                                               ; preds = %16
  br label %48, !dbg !686

34:                                               ; preds = %16
  %35 = load i64, i64* %8, align 8, !dbg !687
  %36 = load i64, i64* %7, align 8, !dbg !688
  %37 = add i64 %36, %35, !dbg !688
  store i64 %37, i64* %7, align 8, !dbg !688
  br label %38, !dbg !689

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8, !dbg !690
  %40 = load i64, i64* %4, align 8, !dbg !691
  %41 = inttoptr i64 %40 to %struct.fiobj_data_s*, !dbg !691
  %42 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %41, i32 0, i32 4, !dbg !692
  %43 = load i64, i64* %42, align 8, !dbg !692
  %44 = icmp ult i64 %39, %43, !dbg !693
  br i1 %44, label %16, label %45, !dbg !689, !llvm.loop !694

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4, !dbg !696
  %47 = call i32 @close(i32 %46), !dbg !697
  store i32 0, i32* %3, align 4, !dbg !698
  br label %53, !dbg !698

48:                                               ; preds = %33
  call void @llvm.dbg.label(metadata !699), !dbg !700
  %49 = load i32, i32* %6, align 4, !dbg !701
  %50 = call i32 @close(i32 %49), !dbg !702
  %51 = load i8*, i8** %5, align 8, !dbg !703
  %52 = call i32 @unlink(i8* %51) #2, !dbg !704
  store i32 -1, i32* %3, align 4, !dbg !705
  br label %53, !dbg !705

53:                                               ; preds = %48, %45, %13
  %54 = load i32, i32* %3, align 4, !dbg !706
  ret i32 %54, !dbg !706
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_data_save_slice(i64 %0, i8* %1) #0 !dbg !707 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fio_str_info_s, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fio_str_info_s, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !708, metadata !DIExpression()), !dbg !709
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !710, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.declare(metadata i32* %6, metadata !712, metadata !DIExpression()), !dbg !713
  %11 = load i8*, i8** %5, align 8, !dbg !714
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 578, i32 511), !dbg !715
  store i32 %12, i32* %6, align 4, !dbg !713
  %13 = load i32, i32* %6, align 4, !dbg !716
  %14 = icmp eq i32 %13, -1, !dbg !718
  br i1 %14, label %15, label %16, !dbg !719

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !720
  br label %90, !dbg !720

16:                                               ; preds = %2
  %17 = call i32* @__errno_location() #11, !dbg !721
  store i32 0, i32* %17, align 4, !dbg !722
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %7, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata i64* %8, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 0, i64* %8, align 8, !dbg !726
  br label %18, !dbg !727

18:                                               ; preds = %78, %16
  %19 = load i64, i64* %4, align 8, !dbg !728
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*, !dbg !728
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 2, !dbg !730
  %22 = bitcast %union.anon* %21 to i64*, !dbg !731
  %23 = load i64, i64* %22, align 8, !dbg !731
  %24 = load i64, i64* %4, align 8, !dbg !732
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*, !dbg !732
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 3, !dbg !733
  %27 = load i64, i64* %26, align 8, !dbg !733
  %28 = load i64, i64* %8, align 8, !dbg !734
  %29 = add i64 %27, %28, !dbg !735
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %9, i64 %23, i64 %29, i64 4096), !dbg !736
  %30 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !736
  %31 = bitcast %struct.fio_str_info_s* %9 to i8*, !dbg !736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false), !dbg !736
  %32 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !737
  %33 = load i64, i64* %32, align 8, !dbg !737
  %34 = icmp eq i64 %33, 0, !dbg !739
  br i1 %34, label %35, label %36, !dbg !740

35:                                               ; preds = %18
  br label %82, !dbg !741

36:                                               ; preds = %18
  %37 = load i64, i64* %8, align 8, !dbg !742
  %38 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !744
  %39 = load i64, i64* %38, align 8, !dbg !744
  %40 = add i64 %37, %39, !dbg !745
  %41 = load i64, i64* %4, align 8, !dbg !746
  %42 = inttoptr i64 %41 to %struct.fiobj_data_s*, !dbg !746
  %43 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %42, i32 0, i32 4, !dbg !747
  %44 = load i64, i64* %43, align 8, !dbg !747
  %45 = icmp ugt i64 %40, %44, !dbg !748
  br i1 %45, label %46, label %54, !dbg !749

46:                                               ; preds = %36
  %47 = load i64, i64* %4, align 8, !dbg !750
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*, !dbg !750
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 4, !dbg !751
  %50 = load i64, i64* %49, align 8, !dbg !751
  %51 = load i64, i64* %8, align 8, !dbg !752
  %52 = sub i64 %50, %51, !dbg !753
  %53 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !754
  store i64 %52, i64* %53, align 8, !dbg !755
  br label %54, !dbg !756

54:                                               ; preds = %46, %36
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !757
  %56 = load i64, i64* %55, align 8, !dbg !757
  %57 = icmp ne i64 %56, 0, !dbg !759
  br i1 %57, label %58, label %77, !dbg !760

58:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata i64* %10, metadata !761, metadata !DIExpression()), !dbg !763
  %59 = load i32, i32* %6, align 4, !dbg !764
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 2, !dbg !765
  %61 = load i8*, i8** %60, align 8, !dbg !765
  %62 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !766
  %63 = load i64, i64* %62, align 8, !dbg !766
  %64 = call i64 @write(i32 %59, i8* %61, i64 %63), !dbg !767
  store i64 %64, i64* %10, align 8, !dbg !763
  %65 = load i64, i64* %10, align 8, !dbg !768
  %66 = icmp slt i64 %65, 0, !dbg !770
  br i1 %66, label %72, label %67, !dbg !771

67:                                               ; preds = %58
  %68 = load i64, i64* %10, align 8, !dbg !772
  %69 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !773
  %70 = load i64, i64* %69, align 8, !dbg !773
  %71 = icmp ult i64 %68, %70, !dbg !774
  br i1 %71, label %72, label %73, !dbg !775

72:                                               ; preds = %67, %58
  br label %85, !dbg !776

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8, !dbg !777
  %75 = load i64, i64* %8, align 8, !dbg !778
  %76 = add i64 %75, %74, !dbg !778
  store i64 %76, i64* %8, align 8, !dbg !778
  br label %77, !dbg !779

77:                                               ; preds = %73, %54
  br label %78, !dbg !780

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !781
  %80 = load i64, i64* %79, align 8, !dbg !781
  %81 = icmp eq i64 %80, 4096, !dbg !782
  br i1 %81, label %18, label %82, !dbg !780, !llvm.loop !783

82:                                               ; preds = %78, %35
  %83 = load i32, i32* %6, align 4, !dbg !785
  %84 = call i32 @close(i32 %83), !dbg !786
  store i32 0, i32* %3, align 4, !dbg !787
  br label %90, !dbg !787

85:                                               ; preds = %72
  call void @llvm.dbg.label(metadata !788), !dbg !789
  %86 = load i32, i32* %6, align 4, !dbg !790
  %87 = call i32 @close(i32 %86), !dbg !791
  %88 = load i8*, i8** %5, align 8, !dbg !792
  %89 = call i32 @unlink(i8* %88) #2, !dbg !793
  store i32 -1, i32* %3, align 4, !dbg !794
  br label %90, !dbg !794

90:                                               ; preds = %85, %82, %15
  %91 = load i32, i32* %3, align 4, !dbg !795
  ret i32 %91, !dbg !795
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiobj_data_save_file(i64 %0, i8* %1) #0 !dbg !796 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !797, metadata !DIExpression()), !dbg !798
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata i32* %6, metadata !801, metadata !DIExpression()), !dbg !802
  %11 = load i8*, i8** %5, align 8, !dbg !803
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 578, i32 511), !dbg !804
  store i32 %12, i32* %6, align 4, !dbg !802
  %13 = load i32, i32* %6, align 4, !dbg !805
  %14 = icmp eq i32 %13, -1, !dbg !807
  br i1 %14, label %15, label %16, !dbg !808

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !809
  br label %55, !dbg !809

16:                                               ; preds = %2
  %17 = call i32* @__errno_location() #11, !dbg !810
  store i32 0, i32* %17, align 4, !dbg !811
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !812, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata i64* %8, metadata !817, metadata !DIExpression()), !dbg !818
  store i64 0, i64* %8, align 8, !dbg !818
  br label %18, !dbg !819

18:                                               ; preds = %46, %16
  call void @llvm.dbg.declare(metadata i64* %9, metadata !820, metadata !DIExpression()), !dbg !822
  %19 = load i64, i64* %4, align 8, !dbg !823
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*, !dbg !823
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 6, !dbg !824
  %22 = load i32, i32* %21, align 8, !dbg !824
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !825
  %24 = load i64, i64* %8, align 8, !dbg !826
  %25 = call i64 @pread(i32 %22, i8* %23, i64 1024, i64 %24), !dbg !827
  store i64 %25, i64* %9, align 8, !dbg !822
  %26 = load i64, i64* %9, align 8, !dbg !828
  %27 = icmp eq i64 %26, 0, !dbg !830
  br i1 %27, label %28, label %29, !dbg !831

28:                                               ; preds = %18
  br label %47, !dbg !832

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8, !dbg !833
  %31 = icmp slt i64 %30, 0, !dbg !835
  br i1 %31, label %32, label %33, !dbg !836

32:                                               ; preds = %29
  br label %50, !dbg !837

33:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata i64* %10, metadata !838, metadata !DIExpression()), !dbg !839
  %34 = load i32, i32* %6, align 4, !dbg !840
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !841
  %36 = load i64, i64* %9, align 8, !dbg !842
  %37 = call i64 @write(i32 %34, i8* %35, i64 %36), !dbg !843
  store i64 %37, i64* %10, align 8, !dbg !839
  %38 = load i64, i64* %10, align 8, !dbg !844
  %39 = load i64, i64* %9, align 8, !dbg !846
  %40 = icmp slt i64 %38, %39, !dbg !847
  br i1 %40, label %41, label %42, !dbg !848

41:                                               ; preds = %33
  br label %50, !dbg !849

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8, !dbg !850
  %44 = load i64, i64* %8, align 8, !dbg !851
  %45 = add i64 %44, %43, !dbg !851
  store i64 %45, i64* %8, align 8, !dbg !851
  br label %46, !dbg !852

46:                                               ; preds = %42
  br i1 true, label %18, label %47, !dbg !852, !llvm.loop !853

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %6, align 4, !dbg !855
  %49 = call i32 @close(i32 %48), !dbg !856
  store i32 0, i32* %3, align 4, !dbg !857
  br label %55, !dbg !857

50:                                               ; preds = %41, %32
  call void @llvm.dbg.label(metadata !858), !dbg !859
  %51 = load i32, i32* %6, align 4, !dbg !860
  %52 = call i32 @close(i32 %51), !dbg !861
  %53 = load i8*, i8** %5, align 8, !dbg !862
  %54 = call i32 @unlink(i8* %53) #2, !dbg !863
  store i32 -1, i32* %3, align 4, !dbg !864
  br label %55, !dbg !864

55:                                               ; preds = %50, %47, %15
  %56 = load i32, i32* %3, align 4, !dbg !865
  ret i32 %56, !dbg !865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_read(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2) #0 !dbg !866 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !869, metadata !DIExpression()), !dbg !870
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !871, metadata !DIExpression()), !dbg !872
  %6 = load i64, i64* %4, align 8, !dbg !873
  %7 = icmp ne i64 %6, 0, !dbg !873
  br i1 %7, label %8, label %12, !dbg !875

8:                                                ; preds = %3
  %9 = load i64, i64* %4, align 8, !dbg !876
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 43), !dbg !876
  %11 = icmp ne i64 %10, 0, !dbg !876
  br i1 %11, label %17, label %12, !dbg !877

12:                                               ; preds = %8, %3
  %13 = call i32* @__errno_location() #11, !dbg !878
  store i32 14, i32* %13, align 4, !dbg !880
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !881
  store i64 0, i64* %14, align 8, !dbg !881
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !881
  store i64 0, i64* %15, align 8, !dbg !881
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !881
  store i8* null, i8** %16, align 8, !dbg !881
  br label %32, !dbg !882

17:                                               ; preds = %8
  %18 = call i32* @__errno_location() #11, !dbg !883
  store i32 0, i32* %18, align 4, !dbg !884
  %19 = load i64, i64* %4, align 8, !dbg !885
  %20 = inttoptr i64 %19 to %struct.fiobj_data_s*, !dbg !885
  %21 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %20, i32 0, i32 6, !dbg !886
  %22 = load i32, i32* %21, align 8, !dbg !886
  switch i32 %22, label %29 [
    i32 -1, label %23
    i32 -2, label %26
  ], !dbg !887

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8, !dbg !888
  %25 = load i64, i64* %5, align 8, !dbg !890
  call void @fiobj_data_read_str(%struct.fio_str_info_s* sret %0, i64 %24, i64 %25), !dbg !891
  br label %32, !dbg !892

26:                                               ; preds = %17
  %27 = load i64, i64* %4, align 8, !dbg !893
  %28 = load i64, i64* %5, align 8, !dbg !894
  call void @fiobj_data_read_slice(%struct.fio_str_info_s* sret %0, i64 %27, i64 %28), !dbg !895
  br label %32, !dbg !896

29:                                               ; preds = %17
  %30 = load i64, i64* %4, align 8, !dbg !897
  %31 = load i64, i64* %5, align 8, !dbg !898
  call void @fiobj_data_read_file(%struct.fio_str_info_s* sret %0, i64 %30, i64 %31), !dbg !899
  br label %32, !dbg !900

32:                                               ; preds = %29, %26, %23, %12
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_type_is(i64 %0, i8 zeroext %1) #0 !dbg !902 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !905, metadata !DIExpression()), !dbg !906
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !907, metadata !DIExpression()), !dbg !908
  %6 = load i8, i8* %5, align 1, !dbg !909
  %7 = zext i8 %6 to i32, !dbg !909
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
  ], !dbg !910

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !911
  %10 = and i64 %9, 1, !dbg !913
  %11 = icmp ne i64 %10, 0, !dbg !913
  br i1 %11, label %19, label %12, !dbg !914

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8, !dbg !915
  %14 = inttoptr i64 %13 to i8*, !dbg !916
  %15 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !917
  %16 = load i8, i8* %15, align 1, !dbg !917
  %17 = zext i8 %16 to i32, !dbg !917
  %18 = icmp eq i32 %17, 1, !dbg !918
  br label %19, !dbg !914

19:                                               ; preds = %12, %8
  %20 = phi i1 [ true, %8 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32, !dbg !914
  %22 = sext i32 %21 to i64, !dbg !919
  store i64 %22, i64* %3, align 8, !dbg !920
  br label %121, !dbg !920

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8, !dbg !921
  %25 = icmp ne i64 %24, 0, !dbg !921
  br i1 %25, label %26, label %30, !dbg !922

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8, !dbg !923
  %28 = call i64 @fiobj_null(), !dbg !924
  %29 = icmp eq i64 %27, %28, !dbg !925
  br label %30, !dbg !922

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !922
  %33 = sext i32 %32 to i64, !dbg !926
  store i64 %33, i64* %3, align 8, !dbg !927
  br label %121, !dbg !927

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8, !dbg !928
  %36 = call i64 @fiobj_true(), !dbg !929
  %37 = icmp eq i64 %35, %36, !dbg !930
  %38 = zext i1 %37 to i32, !dbg !930
  %39 = sext i32 %38 to i64, !dbg !928
  store i64 %39, i64* %3, align 8, !dbg !931
  br label %121, !dbg !931

40:                                               ; preds = %2
  %41 = load i64, i64* %4, align 8, !dbg !932
  %42 = call i64 @fiobj_false(), !dbg !933
  %43 = icmp eq i64 %41, %42, !dbg !934
  %44 = zext i1 %43 to i32, !dbg !934
  %45 = sext i32 %44 to i64, !dbg !932
  store i64 %45, i64* %3, align 8, !dbg !935
  br label %121, !dbg !935

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8, !dbg !936
  %48 = and i64 %47, 1, !dbg !937
  %49 = icmp eq i64 %48, 0, !dbg !938
  br i1 %49, label %50, label %54, !dbg !939

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8, !dbg !940
  %52 = and i64 %51, 6, !dbg !941
  %53 = icmp eq i64 %52, 2, !dbg !942
  br i1 %53, label %55, label %54, !dbg !943

54:                                               ; preds = %50, %46
  br label %55, !dbg !943

55:                                               ; preds = %54, %50
  %56 = phi i1 [ true, %50 ], [ false, %54 ]
  %57 = zext i1 %56 to i32, !dbg !943
  %58 = sext i32 %57 to i64, !dbg !944
  store i64 %58, i64* %3, align 8, !dbg !945
  br label %121, !dbg !945

59:                                               ; preds = %2
  %60 = load i64, i64* %4, align 8, !dbg !946
  %61 = and i64 %60, 1, !dbg !949
  %62 = icmp eq i64 %61, 0, !dbg !950
  br i1 %62, label %63, label %67, !dbg !951

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8, !dbg !952
  %65 = and i64 %64, 6, !dbg !953
  %66 = icmp eq i64 %65, 4, !dbg !954
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ], !dbg !955
  %69 = zext i1 %68 to i32, !dbg !951
  %70 = sext i32 %69 to i64, !dbg !956
  store i64 %70, i64* %3, align 8, !dbg !957
  br label %121, !dbg !957

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* %4, align 8, !dbg !958
  %73 = icmp ne i64 %72, 0, !dbg !958
  br i1 %73, label %74, label %92, !dbg !958

74:                                               ; preds = %71
  %75 = load i64, i64* %4, align 8, !dbg !958
  %76 = and i64 %75, 1, !dbg !958
  %77 = icmp eq i64 %76, 0, !dbg !958
  br i1 %77, label %78, label %92, !dbg !958

78:                                               ; preds = %74
  %79 = load i64, i64* %4, align 8, !dbg !958
  %80 = and i64 %79, 6, !dbg !958
  %81 = icmp ne i64 %80, 6, !dbg !958
  br i1 %81, label %82, label %92, !dbg !959

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8, !dbg !960
  %84 = and i64 %83, -8, !dbg !960
  %85 = inttoptr i64 %84 to i8*, !dbg !960
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !961
  %87 = load i8, i8* %86, align 1, !dbg !961
  %88 = zext i8 %87 to i32, !dbg !961
  %89 = load i8, i8* %5, align 1, !dbg !962
  %90 = zext i8 %89 to i32, !dbg !962
  %91 = icmp eq i32 %88, %90, !dbg !963
  br label %92

92:                                               ; preds = %82, %78, %74, %71
  %93 = phi i1 [ false, %78 ], [ false, %74 ], [ false, %71 ], [ %91, %82 ], !dbg !964
  %94 = zext i1 %93 to i32, !dbg !959
  %95 = sext i32 %94 to i64, !dbg !958
  store i64 %95, i64* %3, align 8, !dbg !965
  br label %121, !dbg !965

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8, !dbg !966
  %98 = icmp ne i64 %97, 0, !dbg !966
  br i1 %98, label %99, label %117, !dbg !966

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8, !dbg !966
  %101 = and i64 %100, 1, !dbg !966
  %102 = icmp eq i64 %101, 0, !dbg !966
  br i1 %102, label %103, label %117, !dbg !966

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8, !dbg !966
  %105 = and i64 %104, 6, !dbg !966
  %106 = icmp ne i64 %105, 6, !dbg !966
  br i1 %106, label %107, label %117, !dbg !967

107:                                              ; preds = %103
  %108 = load i64, i64* %4, align 8, !dbg !968
  %109 = and i64 %108, -8, !dbg !968
  %110 = inttoptr i64 %109 to i8*, !dbg !968
  %111 = getelementptr inbounds i8, i8* %110, i64 0, !dbg !969
  %112 = load i8, i8* %111, align 1, !dbg !969
  %113 = zext i8 %112 to i32, !dbg !969
  %114 = load i8, i8* %5, align 1, !dbg !970
  %115 = zext i8 %114 to i32, !dbg !970
  %116 = icmp eq i32 %113, %115, !dbg !971
  br label %117

117:                                              ; preds = %107, %103, %99, %96
  %118 = phi i1 [ false, %103 ], [ false, %99 ], [ false, %96 ], [ %116, %107 ], !dbg !972
  %119 = zext i1 %118 to i32, !dbg !967
  %120 = sext i32 %119 to i64, !dbg !966
  store i64 %120, i64* %3, align 8, !dbg !973
  br label %121, !dbg !973

121:                                              ; preds = %117, %92, %67, %55, %40, %34, %30, %19
  %122 = load i64, i64* %3, align 8, !dbg !974
  ret i64 %122, !dbg !974
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read_str(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2) #0 !dbg !975 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !976, metadata !DIExpression()), !dbg !977
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !978, metadata !DIExpression()), !dbg !979
  %7 = load i64, i64* %4, align 8, !dbg !980
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*, !dbg !980
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 5, !dbg !982
  %10 = load i64, i64* %9, align 8, !dbg !982
  %11 = load i64, i64* %4, align 8, !dbg !983
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !983
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4, !dbg !984
  %14 = load i64, i64* %13, align 8, !dbg !984
  %15 = icmp eq i64 %10, %14, !dbg !985
  br i1 %15, label %16, label %20, !dbg !986

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !987
  store i64 0, i64* %17, align 8, !dbg !987
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !987
  store i64 0, i64* %18, align 8, !dbg !987
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !987
  store i8* null, i8** %19, align 8, !dbg !987
  br label %86, !dbg !989

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8, !dbg !990
  %22 = icmp sle i64 %21, 0, !dbg !992
  br i1 %22, label %23, label %35, !dbg !993

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8, !dbg !994
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*, !dbg !994
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4, !dbg !996
  %27 = load i64, i64* %26, align 8, !dbg !996
  %28 = load i64, i64* %4, align 8, !dbg !997
  %29 = inttoptr i64 %28 to %struct.fiobj_data_s*, !dbg !997
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %29, i32 0, i32 5, !dbg !998
  %31 = load i64, i64* %30, align 8, !dbg !998
  %32 = sub i64 %27, %31, !dbg !999
  %33 = load i64, i64* %5, align 8, !dbg !1000
  %34 = add i64 %32, %33, !dbg !1001
  store i64 %34, i64* %5, align 8, !dbg !1002
  br label %35, !dbg !1003

35:                                               ; preds = %23, %20
  %36 = load i64, i64* %5, align 8, !dbg !1004
  %37 = icmp sle i64 %36, 0, !dbg !1006
  br i1 %37, label %38, label %42, !dbg !1007

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1008
  store i64 0, i64* %39, align 8, !dbg !1008
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1008
  store i64 0, i64* %40, align 8, !dbg !1008
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1008
  store i8* null, i8** %41, align 8, !dbg !1008
  br label %86, !dbg !1010

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1011, metadata !DIExpression()), !dbg !1012
  %43 = load i64, i64* %4, align 8, !dbg !1013
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1013
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5, !dbg !1014
  %46 = load i64, i64* %45, align 8, !dbg !1014
  store i64 %46, i64* %6, align 8, !dbg !1012
  %47 = load i64, i64* %6, align 8, !dbg !1015
  %48 = load i64, i64* %5, align 8, !dbg !1016
  %49 = add i64 %47, %48, !dbg !1017
  %50 = load i64, i64* %4, align 8, !dbg !1018
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*, !dbg !1018
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 5, !dbg !1019
  store i64 %49, i64* %52, align 8, !dbg !1020
  %53 = load i64, i64* %4, align 8, !dbg !1021
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*, !dbg !1021
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 5, !dbg !1023
  %56 = load i64, i64* %55, align 8, !dbg !1023
  %57 = load i64, i64* %4, align 8, !dbg !1024
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*, !dbg !1024
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 4, !dbg !1025
  %60 = load i64, i64* %59, align 8, !dbg !1025
  %61 = icmp ugt i64 %56, %60, !dbg !1026
  br i1 %61, label %62, label %70, !dbg !1027

62:                                               ; preds = %42
  %63 = load i64, i64* %4, align 8, !dbg !1028
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*, !dbg !1028
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 4, !dbg !1029
  %66 = load i64, i64* %65, align 8, !dbg !1029
  %67 = load i64, i64* %4, align 8, !dbg !1030
  %68 = inttoptr i64 %67 to %struct.fiobj_data_s*, !dbg !1030
  %69 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %68, i32 0, i32 5, !dbg !1031
  store i64 %66, i64* %69, align 8, !dbg !1032
  br label %70, !dbg !1030

70:                                               ; preds = %62, %42
  %71 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1033
  store i64 0, i64* %71, align 8, !dbg !1033
  %72 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1033
  %73 = load i64, i64* %4, align 8, !dbg !1034
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*, !dbg !1034
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 5, !dbg !1035
  %76 = load i64, i64* %75, align 8, !dbg !1035
  %77 = load i64, i64* %6, align 8, !dbg !1036
  %78 = sub i64 %76, %77, !dbg !1037
  store i64 %78, i64* %72, align 8, !dbg !1033
  %79 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1033
  %80 = load i64, i64* %4, align 8, !dbg !1038
  %81 = inttoptr i64 %80 to %struct.fiobj_data_s*, !dbg !1038
  %82 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %81, i32 0, i32 1, !dbg !1039
  %83 = load i8*, i8** %82, align 8, !dbg !1039
  %84 = load i64, i64* %6, align 8, !dbg !1040
  %85 = getelementptr inbounds i8, i8* %83, i64 %84, !dbg !1041
  store i8* %85, i8** %79, align 8, !dbg !1033
  br label %86, !dbg !1042

86:                                               ; preds = %70, %38, %16
  ret void, !dbg !1043
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read_slice(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2) #0 !dbg !1044 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1047, metadata !DIExpression()), !dbg !1048
  %7 = load i64, i64* %4, align 8, !dbg !1049
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*, !dbg !1049
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 5, !dbg !1051
  %10 = load i64, i64* %9, align 8, !dbg !1051
  %11 = load i64, i64* %4, align 8, !dbg !1052
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !1052
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4, !dbg !1053
  %14 = load i64, i64* %13, align 8, !dbg !1053
  %15 = icmp eq i64 %10, %14, !dbg !1054
  br i1 %15, label %16, label %20, !dbg !1055

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1056
  store i64 0, i64* %17, align 8, !dbg !1056
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1056
  store i64 0, i64* %18, align 8, !dbg !1056
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1056
  store i8* null, i8** %19, align 8, !dbg !1056
  br label %88, !dbg !1058

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8, !dbg !1059
  %22 = icmp sle i64 %21, 0, !dbg !1061
  br i1 %22, label %23, label %35, !dbg !1062

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8, !dbg !1063
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*, !dbg !1063
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4, !dbg !1065
  %27 = load i64, i64* %26, align 8, !dbg !1065
  %28 = load i64, i64* %4, align 8, !dbg !1066
  %29 = inttoptr i64 %28 to %struct.fiobj_data_s*, !dbg !1066
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %29, i32 0, i32 5, !dbg !1067
  %31 = load i64, i64* %30, align 8, !dbg !1067
  %32 = sub i64 %27, %31, !dbg !1068
  %33 = load i64, i64* %5, align 8, !dbg !1069
  %34 = add i64 %32, %33, !dbg !1070
  store i64 %34, i64* %5, align 8, !dbg !1071
  br label %35, !dbg !1072

35:                                               ; preds = %23, %20
  %36 = load i64, i64* %5, align 8, !dbg !1073
  %37 = icmp sle i64 %36, 0, !dbg !1075
  br i1 %37, label %38, label %42, !dbg !1076

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1077
  store i64 0, i64* %39, align 8, !dbg !1077
  %40 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1077
  store i64 0, i64* %40, align 8, !dbg !1077
  %41 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1077
  store i8* null, i8** %41, align 8, !dbg !1077
  br label %88, !dbg !1079

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1080, metadata !DIExpression()), !dbg !1081
  %43 = load i64, i64* %4, align 8, !dbg !1082
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1082
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5, !dbg !1083
  %46 = load i64, i64* %45, align 8, !dbg !1083
  store i64 %46, i64* %6, align 8, !dbg !1081
  %47 = load i64, i64* %6, align 8, !dbg !1084
  %48 = load i64, i64* %5, align 8, !dbg !1085
  %49 = add i64 %47, %48, !dbg !1086
  %50 = load i64, i64* %4, align 8, !dbg !1087
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*, !dbg !1087
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 5, !dbg !1088
  store i64 %49, i64* %52, align 8, !dbg !1089
  %53 = load i64, i64* %4, align 8, !dbg !1090
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*, !dbg !1090
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 5, !dbg !1092
  %56 = load i64, i64* %55, align 8, !dbg !1092
  %57 = load i64, i64* %4, align 8, !dbg !1093
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*, !dbg !1093
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 4, !dbg !1094
  %60 = load i64, i64* %59, align 8, !dbg !1094
  %61 = icmp ugt i64 %56, %60, !dbg !1095
  br i1 %61, label %62, label %70, !dbg !1096

62:                                               ; preds = %42
  %63 = load i64, i64* %4, align 8, !dbg !1097
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*, !dbg !1097
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 4, !dbg !1098
  %66 = load i64, i64* %65, align 8, !dbg !1098
  %67 = load i64, i64* %4, align 8, !dbg !1099
  %68 = inttoptr i64 %67 to %struct.fiobj_data_s*, !dbg !1099
  %69 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %68, i32 0, i32 5, !dbg !1100
  store i64 %66, i64* %69, align 8, !dbg !1101
  br label %70, !dbg !1099

70:                                               ; preds = %62, %42
  %71 = load i64, i64* %4, align 8, !dbg !1102
  %72 = inttoptr i64 %71 to %struct.fiobj_data_s*, !dbg !1102
  %73 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %72, i32 0, i32 2, !dbg !1103
  %74 = bitcast %union.anon* %73 to i64*, !dbg !1104
  %75 = load i64, i64* %74, align 8, !dbg !1104
  %76 = load i64, i64* %6, align 8, !dbg !1105
  %77 = load i64, i64* %4, align 8, !dbg !1106
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*, !dbg !1106
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 3, !dbg !1107
  %80 = load i64, i64* %79, align 8, !dbg !1107
  %81 = add i64 %76, %80, !dbg !1108
  %82 = load i64, i64* %4, align 8, !dbg !1109
  %83 = inttoptr i64 %82 to %struct.fiobj_data_s*, !dbg !1109
  %84 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %83, i32 0, i32 5, !dbg !1110
  %85 = load i64, i64* %84, align 8, !dbg !1110
  %86 = load i64, i64* %6, align 8, !dbg !1111
  %87 = sub i64 %85, %86, !dbg !1112
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %0, i64 %75, i64 %81, i64 %87), !dbg !1113
  br label %88, !dbg !1114

88:                                               ; preds = %70, %38, %16
  ret void, !dbg !1115
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read_file(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2) #0 !dbg !1116 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i64 %2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1121, metadata !DIExpression()), !dbg !1122
  %8 = load i64, i64* %4, align 8, !dbg !1123
  %9 = call i64 @fiobj_data_get_fd_size(i64 %8), !dbg !1124
  store i64 %9, i64* %6, align 8, !dbg !1122
  %10 = load i64, i64* %5, align 8, !dbg !1125
  %11 = icmp sle i64 %10, 0, !dbg !1127
  br i1 %11, label %12, label %22, !dbg !1128

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8, !dbg !1129
  %14 = load i64, i64* %4, align 8, !dbg !1131
  %15 = inttoptr i64 %14 to %struct.fiobj_data_s*, !dbg !1131
  %16 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %15, i32 0, i32 2, !dbg !1132
  %17 = bitcast %union.anon* %16 to i64*, !dbg !1133
  %18 = load i64, i64* %17, align 8, !dbg !1133
  %19 = sub i64 %13, %18, !dbg !1134
  %20 = load i64, i64* %5, align 8, !dbg !1135
  %21 = add i64 %19, %20, !dbg !1136
  store i64 %21, i64* %5, align 8, !dbg !1137
  br label %22, !dbg !1138

22:                                               ; preds = %12, %3
  %23 = load i64, i64* %5, align 8, !dbg !1139
  %24 = icmp sle i64 %23, 0, !dbg !1141
  br i1 %24, label %25, label %30, !dbg !1142

25:                                               ; preds = %22
  %26 = call i32* @__errno_location() #11, !dbg !1143
  store i32 0, i32* %26, align 4, !dbg !1145
  %27 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1146
  store i64 0, i64* %27, align 8, !dbg !1146
  %28 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1146
  store i64 0, i64* %28, align 8, !dbg !1146
  %29 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1146
  store i8* null, i8** %29, align 8, !dbg !1146
  br label %127, !dbg !1147

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8, !dbg !1148
  %32 = load i64, i64* %4, align 8, !dbg !1150
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*, !dbg !1150
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 5, !dbg !1151
  %35 = load i64, i64* %34, align 8, !dbg !1151
  %36 = add i64 %31, %35, !dbg !1152
  %37 = load i64, i64* %4, align 8, !dbg !1153
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*, !dbg !1153
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 4, !dbg !1154
  %40 = load i64, i64* %39, align 8, !dbg !1154
  %41 = icmp ule i64 %36, %40, !dbg !1155
  br i1 %41, label %42, label %69, !dbg !1156

42:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %0, metadata !1157, metadata !DIExpression()), !dbg !1159
  %43 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1160
  store i64 0, i64* %43, align 8, !dbg !1160
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1160
  %45 = load i64, i64* %5, align 8, !dbg !1161
  store i64 %45, i64* %44, align 8, !dbg !1160
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1160
  %47 = load i64, i64* %4, align 8, !dbg !1162
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*, !dbg !1162
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1, !dbg !1163
  %50 = load i8*, i8** %49, align 8, !dbg !1163
  %51 = load i64, i64* %4, align 8, !dbg !1164
  %52 = inttoptr i64 %51 to %struct.fiobj_data_s*, !dbg !1164
  %53 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %52, i32 0, i32 5, !dbg !1165
  %54 = load i64, i64* %53, align 8, !dbg !1165
  %55 = getelementptr inbounds i8, i8* %50, i64 %54, !dbg !1166
  store i8* %55, i8** %46, align 8, !dbg !1160
  %56 = load i64, i64* %5, align 8, !dbg !1167
  %57 = load i64, i64* %4, align 8, !dbg !1168
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*, !dbg !1168
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 5, !dbg !1169
  %60 = load i64, i64* %59, align 8, !dbg !1170
  %61 = add i64 %60, %56, !dbg !1170
  store i64 %61, i64* %59, align 8, !dbg !1170
  %62 = load i64, i64* %5, align 8, !dbg !1171
  %63 = load i64, i64* %4, align 8, !dbg !1172
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*, !dbg !1172
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 2, !dbg !1173
  %66 = bitcast %union.anon* %65 to i64*, !dbg !1174
  %67 = load i64, i64* %66, align 8, !dbg !1175
  %68 = add i64 %67, %62, !dbg !1175
  store i64 %68, i64* %66, align 8, !dbg !1175
  br label %127, !dbg !1176

69:                                               ; preds = %30
  %70 = load i64, i64* %4, align 8, !dbg !1177
  %71 = inttoptr i64 %70 to %struct.fiobj_data_s*, !dbg !1177
  %72 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %71, i32 0, i32 4, !dbg !1179
  store i64 0, i64* %72, align 8, !dbg !1180
  %73 = load i64, i64* %4, align 8, !dbg !1181
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*, !dbg !1181
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 5, !dbg !1182
  store i64 0, i64* %75, align 8, !dbg !1183
  %76 = load i64, i64* %4, align 8, !dbg !1184
  %77 = load i64, i64* %5, align 8, !dbg !1185
  call void @fiobj_data_pre_write(i64 %76, i64 %77), !dbg !1186
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1187, metadata !DIExpression()), !dbg !1188
  br label %78, !dbg !1189

78:                                               ; preds = %100, %69
  call void @llvm.dbg.label(metadata !1190), !dbg !1191
  %79 = load i64, i64* %4, align 8, !dbg !1192
  %80 = inttoptr i64 %79 to %struct.fiobj_data_s*, !dbg !1192
  %81 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %80, i32 0, i32 6, !dbg !1193
  %82 = load i32, i32* %81, align 8, !dbg !1193
  %83 = load i64, i64* %4, align 8, !dbg !1194
  %84 = inttoptr i64 %83 to %struct.fiobj_data_s*, !dbg !1194
  %85 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %84, i32 0, i32 1, !dbg !1195
  %86 = load i8*, i8** %85, align 8, !dbg !1195
  %87 = load i64, i64* %5, align 8, !dbg !1196
  %88 = load i64, i64* %4, align 8, !dbg !1197
  %89 = inttoptr i64 %88 to %struct.fiobj_data_s*, !dbg !1197
  %90 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %89, i32 0, i32 2, !dbg !1198
  %91 = bitcast %union.anon* %90 to i64*, !dbg !1199
  %92 = load i64, i64* %91, align 8, !dbg !1199
  %93 = call i64 @pread(i32 %82, i8* %86, i64 %87, i64 %92), !dbg !1200
  store i64 %93, i64* %7, align 8, !dbg !1201
  %94 = load i64, i64* %7, align 8, !dbg !1202
  %95 = icmp eq i64 %94, -1, !dbg !1204
  br i1 %95, label %96, label %101, !dbg !1205

96:                                               ; preds = %78
  %97 = call i32* @__errno_location() #11, !dbg !1206
  %98 = load i32, i32* %97, align 4, !dbg !1206
  %99 = icmp eq i32 %98, 4, !dbg !1207
  br i1 %99, label %100, label %101, !dbg !1208

100:                                              ; preds = %96
  br label %78, !dbg !1209

101:                                              ; preds = %96, %78
  %102 = load i64, i64* %7, align 8, !dbg !1210
  %103 = icmp eq i64 %102, -1, !dbg !1212
  br i1 %103, label %107, label %104, !dbg !1213

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8, !dbg !1214
  %106 = icmp eq i64 %105, 0, !dbg !1215
  br i1 %106, label %107, label %111, !dbg !1216

107:                                              ; preds = %104, %101
  %108 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1217
  store i64 0, i64* %108, align 8, !dbg !1217
  %109 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1217
  store i64 0, i64* %109, align 8, !dbg !1217
  %110 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1217
  store i8* null, i8** %110, align 8, !dbg !1217
  br label %127, !dbg !1218

111:                                              ; preds = %104
  %112 = load i64, i64* %7, align 8, !dbg !1219
  %113 = load i64, i64* %4, align 8, !dbg !1220
  %114 = inttoptr i64 %113 to %struct.fiobj_data_s*, !dbg !1220
  %115 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %114, i32 0, i32 2, !dbg !1221
  %116 = bitcast %union.anon* %115 to i64*, !dbg !1222
  %117 = load i64, i64* %116, align 8, !dbg !1223
  %118 = add i64 %117, %112, !dbg !1223
  store i64 %118, i64* %116, align 8, !dbg !1223
  %119 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1224
  store i64 0, i64* %119, align 8, !dbg !1224
  %120 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1224
  %121 = load i64, i64* %7, align 8, !dbg !1225
  store i64 %121, i64* %120, align 8, !dbg !1224
  %122 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1224
  %123 = load i64, i64* %4, align 8, !dbg !1226
  %124 = inttoptr i64 %123 to %struct.fiobj_data_s*, !dbg !1226
  %125 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %124, i32 0, i32 1, !dbg !1227
  %126 = load i8*, i8** %125, align 8, !dbg !1227
  store i8* %126, i8** %122, align 8, !dbg !1224
  br label %127, !dbg !1228

127:                                              ; preds = %111, %107, %42, %25
  ret void, !dbg !1229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_read2ch(%struct.fio_str_info_s* noalias sret %0, i64 %1, i8 zeroext %2) #0 !dbg !1230 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i8 %2, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1235, metadata !DIExpression()), !dbg !1236
  %6 = load i64, i64* %4, align 8, !dbg !1237
  %7 = icmp ne i64 %6, 0, !dbg !1237
  br i1 %7, label %8, label %12, !dbg !1239

8:                                                ; preds = %3
  %9 = load i64, i64* %4, align 8, !dbg !1240
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 43), !dbg !1240
  %11 = icmp ne i64 %10, 0, !dbg !1240
  br i1 %11, label %17, label %12, !dbg !1241

12:                                               ; preds = %8, %3
  %13 = call i32* @__errno_location() #11, !dbg !1242
  store i32 14, i32* %13, align 4, !dbg !1244
  %14 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1245
  store i64 0, i64* %14, align 8, !dbg !1245
  %15 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1245
  store i64 0, i64* %15, align 8, !dbg !1245
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1245
  store i8* null, i8** %16, align 8, !dbg !1245
  br label %31, !dbg !1246

17:                                               ; preds = %8
  %18 = load i64, i64* %4, align 8, !dbg !1247
  %19 = inttoptr i64 %18 to %struct.fiobj_data_s*, !dbg !1247
  %20 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %19, i32 0, i32 6, !dbg !1248
  %21 = load i32, i32* %20, align 8, !dbg !1248
  switch i32 %21, label %28 [
    i32 -1, label %22
    i32 -2, label %25
  ], !dbg !1249

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8, !dbg !1250
  %24 = load i8, i8* %5, align 1, !dbg !1252
  call void @fiobj_data_read2ch_str(%struct.fio_str_info_s* sret %0, i64 %23, i8 zeroext %24), !dbg !1253
  br label %31, !dbg !1254

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8, !dbg !1255
  %27 = load i8, i8* %5, align 1, !dbg !1256
  call void @fiobj_data_read2ch_slice(%struct.fio_str_info_s* sret %0, i64 %26, i8 zeroext %27), !dbg !1257
  br label %31, !dbg !1258

28:                                               ; preds = %17
  %29 = load i64, i64* %4, align 8, !dbg !1259
  %30 = load i8, i8* %5, align 1, !dbg !1260
  call void @fiobj_data_read2ch_file(%struct.fio_str_info_s* sret %0, i64 %29, i8 zeroext %30), !dbg !1261
  br label %31, !dbg !1262

31:                                               ; preds = %28, %25, %22, %12
  ret void, !dbg !1263
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read2ch_str(%struct.fio_str_info_s* noalias sret %0, i64 %1, i8 zeroext %2) #0 !dbg !1264 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fio_str_info_s, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i8 %2, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1267, metadata !DIExpression()), !dbg !1268
  %9 = load i64, i64* %4, align 8, !dbg !1269
  %10 = inttoptr i64 %9 to %struct.fiobj_data_s*, !dbg !1269
  %11 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %10, i32 0, i32 5, !dbg !1271
  %12 = load i64, i64* %11, align 8, !dbg !1271
  %13 = load i64, i64* %4, align 8, !dbg !1272
  %14 = inttoptr i64 %13 to %struct.fiobj_data_s*, !dbg !1272
  %15 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %14, i32 0, i32 4, !dbg !1273
  %16 = load i64, i64* %15, align 8, !dbg !1273
  %17 = icmp eq i64 %12, %16, !dbg !1274
  br i1 %17, label %18, label %22, !dbg !1275

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1276
  store i64 0, i64* %19, align 8, !dbg !1276
  %20 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1276
  store i64 0, i64* %20, align 8, !dbg !1276
  %21 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1276
  store i8* null, i8** %21, align 8, !dbg !1276
  br label %82, !dbg !1277

22:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1278, metadata !DIExpression()), !dbg !1279
  %23 = load i64, i64* %4, align 8, !dbg !1280
  %24 = inttoptr i64 %23 to %struct.fiobj_data_s*, !dbg !1280
  %25 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %24, i32 0, i32 1, !dbg !1281
  %26 = load i8*, i8** %25, align 8, !dbg !1281
  %27 = load i64, i64* %4, align 8, !dbg !1282
  %28 = inttoptr i64 %27 to %struct.fiobj_data_s*, !dbg !1282
  %29 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %28, i32 0, i32 5, !dbg !1283
  %30 = load i64, i64* %29, align 8, !dbg !1283
  %31 = getelementptr inbounds i8, i8* %26, i64 %30, !dbg !1284
  store i8* %31, i8** %6, align 8, !dbg !1279
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1285, metadata !DIExpression()), !dbg !1286
  %32 = load i64, i64* %4, align 8, !dbg !1287
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*, !dbg !1287
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 1, !dbg !1288
  %35 = load i8*, i8** %34, align 8, !dbg !1288
  %36 = load i64, i64* %4, align 8, !dbg !1289
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*, !dbg !1289
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 4, !dbg !1290
  %39 = load i64, i64* %38, align 8, !dbg !1290
  %40 = getelementptr inbounds i8, i8* %35, i64 %39, !dbg !1291
  store i8* %40, i8** %7, align 8, !dbg !1286
  %41 = load i8*, i8** %7, align 8, !dbg !1292
  %42 = load i8, i8* %5, align 1, !dbg !1293
  %43 = call i32 @swallow_ch(i8** %6, i8* %41, i8 zeroext %42), !dbg !1294
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %8, metadata !1295, metadata !DIExpression()), !dbg !1296
  %44 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 0, !dbg !1297
  store i64 0, i64* %44, align 8, !dbg !1297
  %45 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 1, !dbg !1297
  %46 = load i8*, i8** %6, align 8, !dbg !1298
  %47 = load i64, i64* %4, align 8, !dbg !1299
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*, !dbg !1299
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1, !dbg !1300
  %50 = load i8*, i8** %49, align 8, !dbg !1300
  %51 = ptrtoint i8* %46 to i64, !dbg !1301
  %52 = ptrtoint i8* %50 to i64, !dbg !1301
  %53 = sub i64 %51, %52, !dbg !1301
  %54 = load i64, i64* %4, align 8, !dbg !1302
  %55 = inttoptr i64 %54 to %struct.fiobj_data_s*, !dbg !1302
  %56 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %55, i32 0, i32 5, !dbg !1303
  %57 = load i64, i64* %56, align 8, !dbg !1303
  %58 = sub i64 %53, %57, !dbg !1304
  store i64 %58, i64* %45, align 8, !dbg !1297
  %59 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %8, i32 0, i32 2, !dbg !1297
  %60 = load i64, i64* %4, align 8, !dbg !1305
  %61 = inttoptr i64 %60 to %struct.fiobj_data_s*, !dbg !1305
  %62 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %61, i32 0, i32 1, !dbg !1306
  %63 = load i8*, i8** %62, align 8, !dbg !1306
  %64 = load i64, i64* %4, align 8, !dbg !1307
  %65 = inttoptr i64 %64 to %struct.fiobj_data_s*, !dbg !1307
  %66 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %65, i32 0, i32 5, !dbg !1308
  %67 = load i64, i64* %66, align 8, !dbg !1308
  %68 = getelementptr inbounds i8, i8* %63, i64 %67, !dbg !1309
  store i8* %68, i8** %59, align 8, !dbg !1297
  %69 = load i8*, i8** %6, align 8, !dbg !1310
  %70 = load i64, i64* %4, align 8, !dbg !1311
  %71 = inttoptr i64 %70 to %struct.fiobj_data_s*, !dbg !1311
  %72 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %71, i32 0, i32 1, !dbg !1312
  %73 = load i8*, i8** %72, align 8, !dbg !1312
  %74 = ptrtoint i8* %69 to i64, !dbg !1313
  %75 = ptrtoint i8* %73 to i64, !dbg !1313
  %76 = sub i64 %74, %75, !dbg !1313
  %77 = load i64, i64* %4, align 8, !dbg !1314
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*, !dbg !1314
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 5, !dbg !1315
  store i64 %76, i64* %79, align 8, !dbg !1316
  %80 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1317
  %81 = bitcast %struct.fio_str_info_s* %8 to i8*, !dbg !1317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false), !dbg !1317
  br label %82, !dbg !1318

82:                                               ; preds = %22, %18
  ret void, !dbg !1319
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read2ch_slice(%struct.fio_str_info_s* noalias sret %0, i64 %1, i8 zeroext %2) #0 !dbg !1320 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.fio_str_info_s, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i8 %2, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1323, metadata !DIExpression()), !dbg !1324
  %8 = load i64, i64* %4, align 8, !dbg !1325
  %9 = inttoptr i64 %8 to %struct.fiobj_data_s*, !dbg !1325
  %10 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %9, i32 0, i32 5, !dbg !1327
  %11 = load i64, i64* %10, align 8, !dbg !1327
  %12 = load i64, i64* %4, align 8, !dbg !1328
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*, !dbg !1328
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 4, !dbg !1329
  %15 = load i64, i64* %14, align 8, !dbg !1329
  %16 = icmp eq i64 %11, %15, !dbg !1330
  br i1 %16, label %17, label %21, !dbg !1331

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1332
  store i64 0, i64* %18, align 8, !dbg !1332
  %19 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1332
  store i64 0, i64* %19, align 8, !dbg !1332
  %20 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1332
  store i8* null, i8** %20, align 8, !dbg !1332
  br label %95, !dbg !1333

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1334, metadata !DIExpression()), !dbg !1335
  %22 = load i64, i64* %4, align 8, !dbg !1336
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*, !dbg !1336
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 2, !dbg !1336
  %25 = bitcast %union.anon* %24 to i64*, !dbg !1336
  %26 = load i64, i64* %25, align 8, !dbg !1336
  %27 = inttoptr i64 %26 to %struct.fiobj_data_s*, !dbg !1336
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %27, i32 0, i32 5, !dbg !1337
  %29 = load i64, i64* %28, align 8, !dbg !1337
  store i64 %29, i64* %6, align 8, !dbg !1335
  %30 = load i64, i64* %4, align 8, !dbg !1338
  %31 = inttoptr i64 %30 to %struct.fiobj_data_s*, !dbg !1338
  %32 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %31, i32 0, i32 3, !dbg !1339
  %33 = load i64, i64* %32, align 8, !dbg !1339
  %34 = load i64, i64* %4, align 8, !dbg !1340
  %35 = inttoptr i64 %34 to %struct.fiobj_data_s*, !dbg !1340
  %36 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %35, i32 0, i32 5, !dbg !1341
  %37 = load i64, i64* %36, align 8, !dbg !1341
  %38 = add i64 %33, %37, !dbg !1342
  %39 = load i64, i64* %4, align 8, !dbg !1343
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*, !dbg !1343
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 2, !dbg !1343
  %42 = bitcast %union.anon* %41 to i64*, !dbg !1343
  %43 = load i64, i64* %42, align 8, !dbg !1343
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1343
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5, !dbg !1344
  store i64 %38, i64* %45, align 8, !dbg !1345
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %7, metadata !1346, metadata !DIExpression()), !dbg !1347
  %46 = load i64, i64* %4, align 8, !dbg !1348
  %47 = inttoptr i64 %46 to %struct.fiobj_data_s*, !dbg !1348
  %48 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %47, i32 0, i32 2, !dbg !1349
  %49 = bitcast %union.anon* %48 to i64*, !dbg !1350
  %50 = load i64, i64* %49, align 8, !dbg !1350
  %51 = load i8, i8* %5, align 1, !dbg !1351
  call void @fiobj_data_read2ch(%struct.fio_str_info_s* sret %7, i64 %50, i8 zeroext %51), !dbg !1352
  %52 = load i64, i64* %6, align 8, !dbg !1353
  %53 = load i64, i64* %4, align 8, !dbg !1354
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*, !dbg !1354
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 2, !dbg !1354
  %56 = bitcast %union.anon* %55 to i64*, !dbg !1354
  %57 = load i64, i64* %56, align 8, !dbg !1354
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*, !dbg !1354
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 5, !dbg !1355
  store i64 %52, i64* %59, align 8, !dbg !1356
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1357
  %61 = load i64, i64* %60, align 8, !dbg !1357
  %62 = load i64, i64* %4, align 8, !dbg !1359
  %63 = inttoptr i64 %62 to %struct.fiobj_data_s*, !dbg !1359
  %64 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %63, i32 0, i32 5, !dbg !1360
  %65 = load i64, i64* %64, align 8, !dbg !1360
  %66 = add i64 %61, %65, !dbg !1361
  %67 = load i64, i64* %4, align 8, !dbg !1362
  %68 = inttoptr i64 %67 to %struct.fiobj_data_s*, !dbg !1362
  %69 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %68, i32 0, i32 4, !dbg !1363
  %70 = load i64, i64* %69, align 8, !dbg !1363
  %71 = icmp ugt i64 %66, %70, !dbg !1364
  br i1 %71, label %72, label %92, !dbg !1365

72:                                               ; preds = %21
  %73 = load i64, i64* %4, align 8, !dbg !1366
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*, !dbg !1366
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 4, !dbg !1368
  %76 = load i64, i64* %75, align 8, !dbg !1368
  %77 = load i64, i64* %4, align 8, !dbg !1369
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*, !dbg !1369
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 5, !dbg !1370
  %80 = load i64, i64* %79, align 8, !dbg !1370
  %81 = sub i64 %76, %80, !dbg !1371
  %82 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %7, i32 0, i32 1, !dbg !1372
  store i64 %81, i64* %82, align 8, !dbg !1373
  %83 = load i64, i64* %4, align 8, !dbg !1374
  %84 = inttoptr i64 %83 to %struct.fiobj_data_s*, !dbg !1374
  %85 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %84, i32 0, i32 4, !dbg !1375
  %86 = load i64, i64* %85, align 8, !dbg !1375
  %87 = load i64, i64* %4, align 8, !dbg !1376
  %88 = inttoptr i64 %87 to %struct.fiobj_data_s*, !dbg !1376
  %89 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %88, i32 0, i32 5, !dbg !1377
  store i64 %86, i64* %89, align 8, !dbg !1378
  %90 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1379
  %91 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !1379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 24, i1 false), !dbg !1379
  br label %95, !dbg !1380

92:                                               ; preds = %21
  %93 = bitcast %struct.fio_str_info_s* %0 to i8*, !dbg !1381
  %94 = bitcast %struct.fio_str_info_s* %7 to i8*, !dbg !1381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false), !dbg !1381
  br label %95, !dbg !1382

95:                                               ; preds = %92, %72, %17
  ret void, !dbg !1383
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_read2ch_file(%struct.fio_str_info_s* noalias sret %0, i64 %1, i8 zeroext %2) #0 !dbg !1384 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i8 %2, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1387, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1389, metadata !DIExpression()), !dbg !1390
  %11 = load i64, i64* %4, align 8, !dbg !1391
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !1391
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 1, !dbg !1392
  %14 = load i8*, i8** %13, align 8, !dbg !1392
  %15 = load i64, i64* %4, align 8, !dbg !1393
  %16 = inttoptr i64 %15 to %struct.fiobj_data_s*, !dbg !1393
  %17 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %16, i32 0, i32 5, !dbg !1394
  %18 = load i64, i64* %17, align 8, !dbg !1394
  %19 = getelementptr inbounds i8, i8* %14, i64 %18, !dbg !1395
  store i8* %19, i8** %6, align 8, !dbg !1390
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1396, metadata !DIExpression()), !dbg !1397
  %20 = load i64, i64* %4, align 8, !dbg !1398
  %21 = inttoptr i64 %20 to %struct.fiobj_data_s*, !dbg !1398
  %22 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %21, i32 0, i32 1, !dbg !1399
  %23 = load i8*, i8** %22, align 8, !dbg !1399
  %24 = load i64, i64* %4, align 8, !dbg !1400
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*, !dbg !1400
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 4, !dbg !1401
  %27 = load i64, i64* %26, align 8, !dbg !1401
  %28 = getelementptr inbounds i8, i8* %23, i64 %27, !dbg !1402
  store i8* %28, i8** %7, align 8, !dbg !1397
  %29 = load i8*, i8** %6, align 8, !dbg !1403
  %30 = load i8*, i8** %7, align 8, !dbg !1405
  %31 = icmp ne i8* %29, %30, !dbg !1406
  br i1 %31, label %32, label %86, !dbg !1407

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8, !dbg !1408
  %34 = load i8, i8* %5, align 1, !dbg !1409
  %35 = call i32 @swallow_ch(i8** %6, i8* %33, i8 zeroext %34), !dbg !1410
  %36 = icmp ne i32 %35, 0, !dbg !1410
  br i1 %36, label %37, label %86, !dbg !1411

37:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1412, metadata !DIExpression()), !dbg !1415
  %38 = load i8*, i8** %6, align 8, !dbg !1416
  %39 = load i64, i64* %4, align 8, !dbg !1417
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*, !dbg !1417
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 1, !dbg !1418
  %42 = load i8*, i8** %41, align 8, !dbg !1418
  %43 = load i64, i64* %4, align 8, !dbg !1419
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1419
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 5, !dbg !1420
  %46 = load i64, i64* %45, align 8, !dbg !1420
  %47 = getelementptr inbounds i8, i8* %42, i64 %46, !dbg !1421
  %48 = ptrtoint i8* %38 to i64, !dbg !1422
  %49 = ptrtoint i8* %47 to i64, !dbg !1422
  %50 = sub i64 %48, %49, !dbg !1422
  store i64 %50, i64* %8, align 8, !dbg !1415
  %51 = load i64, i64* %8, align 8, !dbg !1423
  %52 = load i64, i64* %4, align 8, !dbg !1424
  %53 = inttoptr i64 %52 to %struct.fiobj_data_s*, !dbg !1424
  %54 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %53, i32 0, i32 5, !dbg !1425
  %55 = load i64, i64* %54, align 8, !dbg !1426
  %56 = add i64 %55, %51, !dbg !1426
  store i64 %56, i64* %54, align 8, !dbg !1426
  %57 = load i64, i64* %8, align 8, !dbg !1427
  %58 = load i64, i64* %4, align 8, !dbg !1428
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*, !dbg !1428
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 2, !dbg !1429
  %61 = bitcast %union.anon* %60 to i64*, !dbg !1430
  %62 = load i64, i64* %61, align 8, !dbg !1431
  %63 = add i64 %62, %57, !dbg !1431
  store i64 %63, i64* %61, align 8, !dbg !1431
  %64 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1432
  store i64 0, i64* %64, align 8, !dbg !1432
  %65 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1432
  %66 = load i64, i64* %8, align 8, !dbg !1433
  store i64 %66, i64* %65, align 8, !dbg !1432
  %67 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1432
  %68 = load i64, i64* %8, align 8, !dbg !1434
  %69 = icmp ne i64 %68, 0, !dbg !1434
  br i1 %69, label %70, label %83, !dbg !1434

70:                                               ; preds = %37
  %71 = load i64, i64* %4, align 8, !dbg !1435
  %72 = inttoptr i64 %71 to %struct.fiobj_data_s*, !dbg !1435
  %73 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %72, i32 0, i32 1, !dbg !1436
  %74 = load i8*, i8** %73, align 8, !dbg !1436
  %75 = load i64, i64* %4, align 8, !dbg !1437
  %76 = inttoptr i64 %75 to %struct.fiobj_data_s*, !dbg !1437
  %77 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %76, i32 0, i32 5, !dbg !1438
  %78 = load i64, i64* %77, align 8, !dbg !1438
  %79 = getelementptr inbounds i8, i8* %74, i64 %78, !dbg !1439
  %80 = load i64, i64* %8, align 8, !dbg !1440
  %81 = sub i64 0, %80, !dbg !1441
  %82 = getelementptr inbounds i8, i8* %79, i64 %81, !dbg !1441
  br label %84, !dbg !1434

83:                                               ; preds = %37
  br label %84, !dbg !1434

84:                                               ; preds = %83, %70
  %85 = phi i8* [ %82, %70 ], [ null, %83 ], !dbg !1434
  store i8* %85, i8** %67, align 8, !dbg !1432
  br label %226, !dbg !1442

86:                                               ; preds = %32, %3
  %87 = load i64, i64* %4, align 8, !dbg !1443
  %88 = inttoptr i64 %87 to %struct.fiobj_data_s*, !dbg !1443
  %89 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %88, i32 0, i32 5, !dbg !1444
  store i64 0, i64* %89, align 8, !dbg !1445
  %90 = load i64, i64* %4, align 8, !dbg !1446
  %91 = inttoptr i64 %90 to %struct.fiobj_data_s*, !dbg !1446
  %92 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %91, i32 0, i32 4, !dbg !1447
  store i64 0, i64* %92, align 8, !dbg !1448
  br label %93, !dbg !1449

93:                                               ; preds = %86, %225
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1450, metadata !DIExpression()), !dbg !1452
  %94 = load i64, i64* %4, align 8, !dbg !1453
  call void @fiobj_data_pre_write(i64 %94, i64 4096), !dbg !1454
  br label %95, !dbg !1454

95:                                               ; preds = %126, %93
  call void @llvm.dbg.label(metadata !1455), !dbg !1456
  %96 = load i64, i64* %4, align 8, !dbg !1457
  %97 = inttoptr i64 %96 to %struct.fiobj_data_s*, !dbg !1457
  %98 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %97, i32 0, i32 6, !dbg !1458
  %99 = load i32, i32* %98, align 8, !dbg !1458
  %100 = load i64, i64* %4, align 8, !dbg !1459
  %101 = inttoptr i64 %100 to %struct.fiobj_data_s*, !dbg !1459
  %102 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %101, i32 0, i32 1, !dbg !1460
  %103 = load i8*, i8** %102, align 8, !dbg !1460
  %104 = load i64, i64* %4, align 8, !dbg !1461
  %105 = inttoptr i64 %104 to %struct.fiobj_data_s*, !dbg !1461
  %106 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %105, i32 0, i32 4, !dbg !1462
  %107 = load i64, i64* %106, align 8, !dbg !1462
  %108 = getelementptr inbounds i8, i8* %103, i64 %107, !dbg !1463
  %109 = load i64, i64* %4, align 8, !dbg !1464
  %110 = inttoptr i64 %109 to %struct.fiobj_data_s*, !dbg !1464
  %111 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %110, i32 0, i32 2, !dbg !1465
  %112 = bitcast %union.anon* %111 to i64*, !dbg !1466
  %113 = load i64, i64* %112, align 8, !dbg !1466
  %114 = load i64, i64* %4, align 8, !dbg !1467
  %115 = inttoptr i64 %114 to %struct.fiobj_data_s*, !dbg !1467
  %116 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %115, i32 0, i32 4, !dbg !1468
  %117 = load i64, i64* %116, align 8, !dbg !1468
  %118 = add i64 %113, %117, !dbg !1469
  %119 = call i64 @pread(i32 %99, i8* %108, i64 4096, i64 %118), !dbg !1470
  store i64 %119, i64* %9, align 8, !dbg !1471
  %120 = load i64, i64* %9, align 8, !dbg !1472
  %121 = icmp slt i64 %120, 0, !dbg !1474
  br i1 %121, label %122, label %127, !dbg !1475

122:                                              ; preds = %95
  %123 = call i32* @__errno_location() #11, !dbg !1476
  %124 = load i32, i32* %123, align 4, !dbg !1476
  %125 = icmp eq i32 %124, 4, !dbg !1477
  br i1 %125, label %126, label %127, !dbg !1478

126:                                              ; preds = %122
  br label %95, !dbg !1479

127:                                              ; preds = %122, %95
  %128 = load i64, i64* %9, align 8, !dbg !1480
  %129 = icmp slt i64 %128, 0, !dbg !1482
  br i1 %129, label %139, label %130, !dbg !1483

130:                                              ; preds = %127
  %131 = load i64, i64* %9, align 8, !dbg !1484
  %132 = icmp eq i64 %131, 0, !dbg !1485
  br i1 %132, label %133, label %143, !dbg !1486

133:                                              ; preds = %130
  %134 = load i64, i64* %4, align 8, !dbg !1487
  %135 = inttoptr i64 %134 to %struct.fiobj_data_s*, !dbg !1487
  %136 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %135, i32 0, i32 4, !dbg !1488
  %137 = load i64, i64* %136, align 8, !dbg !1488
  %138 = icmp eq i64 %137, 0, !dbg !1489
  br i1 %138, label %139, label %143, !dbg !1490

139:                                              ; preds = %133, %127
  %140 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1491
  store i64 0, i64* %140, align 8, !dbg !1491
  %141 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1491
  store i64 0, i64* %141, align 8, !dbg !1491
  %142 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1491
  store i8* null, i8** %142, align 8, !dbg !1491
  br label %226, !dbg !1493

143:                                              ; preds = %133, %130
  %144 = load i64, i64* %9, align 8, !dbg !1494
  %145 = icmp eq i64 %144, 0, !dbg !1496
  br i1 %145, label %146, label %168, !dbg !1497

146:                                              ; preds = %143
  %147 = load i64, i64* %4, align 8, !dbg !1498
  %148 = inttoptr i64 %147 to %struct.fiobj_data_s*, !dbg !1498
  %149 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %148, i32 0, i32 4, !dbg !1500
  %150 = load i64, i64* %149, align 8, !dbg !1500
  %151 = load i64, i64* %4, align 8, !dbg !1501
  %152 = inttoptr i64 %151 to %struct.fiobj_data_s*, !dbg !1501
  %153 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %152, i32 0, i32 2, !dbg !1502
  %154 = bitcast %union.anon* %153 to i64*, !dbg !1503
  %155 = load i64, i64* %154, align 8, !dbg !1504
  %156 = add i64 %155, %150, !dbg !1504
  store i64 %156, i64* %154, align 8, !dbg !1504
  %157 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1505
  store i64 0, i64* %157, align 8, !dbg !1505
  %158 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1505
  %159 = load i64, i64* %4, align 8, !dbg !1506
  %160 = inttoptr i64 %159 to %struct.fiobj_data_s*, !dbg !1506
  %161 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %160, i32 0, i32 4, !dbg !1507
  %162 = load i64, i64* %161, align 8, !dbg !1507
  store i64 %162, i64* %158, align 8, !dbg !1505
  %163 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1505
  %164 = load i64, i64* %4, align 8, !dbg !1508
  %165 = inttoptr i64 %164 to %struct.fiobj_data_s*, !dbg !1508
  %166 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %165, i32 0, i32 1, !dbg !1509
  %167 = load i8*, i8** %166, align 8, !dbg !1509
  store i8* %167, i8** %163, align 8, !dbg !1505
  br label %226, !dbg !1510

168:                                              ; preds = %143
  %169 = load i64, i64* %9, align 8, !dbg !1511
  %170 = load i64, i64* %4, align 8, !dbg !1512
  %171 = inttoptr i64 %170 to %struct.fiobj_data_s*, !dbg !1512
  %172 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %171, i32 0, i32 4, !dbg !1513
  %173 = load i64, i64* %172, align 8, !dbg !1514
  %174 = add i64 %173, %169, !dbg !1514
  store i64 %174, i64* %172, align 8, !dbg !1514
  %175 = load i64, i64* %4, align 8, !dbg !1515
  %176 = inttoptr i64 %175 to %struct.fiobj_data_s*, !dbg !1515
  %177 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %176, i32 0, i32 1, !dbg !1516
  %178 = load i8*, i8** %177, align 8, !dbg !1516
  store i8* %178, i8** %6, align 8, !dbg !1517
  %179 = load i64, i64* %4, align 8, !dbg !1518
  %180 = inttoptr i64 %179 to %struct.fiobj_data_s*, !dbg !1518
  %181 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %180, i32 0, i32 1, !dbg !1519
  %182 = load i8*, i8** %181, align 8, !dbg !1519
  %183 = load i64, i64* %4, align 8, !dbg !1520
  %184 = inttoptr i64 %183 to %struct.fiobj_data_s*, !dbg !1520
  %185 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %184, i32 0, i32 4, !dbg !1521
  %186 = load i64, i64* %185, align 8, !dbg !1521
  %187 = getelementptr inbounds i8, i8* %182, i64 %186, !dbg !1522
  store i8* %187, i8** %7, align 8, !dbg !1523
  %188 = load i8*, i8** %7, align 8, !dbg !1524
  %189 = load i8, i8* %5, align 1, !dbg !1526
  %190 = call i32 @swallow_ch(i8** %6, i8* %188, i8 zeroext %189), !dbg !1527
  %191 = icmp ne i32 %190, 0, !dbg !1527
  br i1 %191, label %192, label %225, !dbg !1528

192:                                              ; preds = %168
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1529, metadata !DIExpression()), !dbg !1531
  %193 = load i8*, i8** %6, align 8, !dbg !1532
  %194 = load i64, i64* %4, align 8, !dbg !1533
  %195 = inttoptr i64 %194 to %struct.fiobj_data_s*, !dbg !1533
  %196 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %195, i32 0, i32 1, !dbg !1534
  %197 = load i8*, i8** %196, align 8, !dbg !1534
  %198 = load i64, i64* %4, align 8, !dbg !1535
  %199 = inttoptr i64 %198 to %struct.fiobj_data_s*, !dbg !1535
  %200 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %199, i32 0, i32 5, !dbg !1536
  %201 = load i64, i64* %200, align 8, !dbg !1536
  %202 = getelementptr inbounds i8, i8* %197, i64 %201, !dbg !1537
  %203 = ptrtoint i8* %193 to i64, !dbg !1538
  %204 = ptrtoint i8* %202 to i64, !dbg !1538
  %205 = sub i64 %203, %204, !dbg !1538
  store i64 %205, i64* %10, align 8, !dbg !1531
  %206 = load i64, i64* %10, align 8, !dbg !1539
  %207 = load i64, i64* %4, align 8, !dbg !1540
  %208 = inttoptr i64 %207 to %struct.fiobj_data_s*, !dbg !1540
  %209 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %208, i32 0, i32 5, !dbg !1541
  store i64 %206, i64* %209, align 8, !dbg !1542
  %210 = load i64, i64* %10, align 8, !dbg !1543
  %211 = load i64, i64* %4, align 8, !dbg !1544
  %212 = inttoptr i64 %211 to %struct.fiobj_data_s*, !dbg !1544
  %213 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %212, i32 0, i32 2, !dbg !1545
  %214 = bitcast %union.anon* %213 to i64*, !dbg !1546
  %215 = load i64, i64* %214, align 8, !dbg !1547
  %216 = add i64 %215, %210, !dbg !1547
  store i64 %216, i64* %214, align 8, !dbg !1547
  %217 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1548
  store i64 0, i64* %217, align 8, !dbg !1548
  %218 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1548
  %219 = load i64, i64* %10, align 8, !dbg !1549
  store i64 %219, i64* %218, align 8, !dbg !1548
  %220 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1548
  %221 = load i64, i64* %4, align 8, !dbg !1550
  %222 = inttoptr i64 %221 to %struct.fiobj_data_s*, !dbg !1550
  %223 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %222, i32 0, i32 1, !dbg !1551
  %224 = load i8*, i8** %223, align 8, !dbg !1551
  store i8* %224, i8** %220, align 8, !dbg !1548
  br label %226, !dbg !1552

225:                                              ; preds = %168
  br label %93, !dbg !1449, !llvm.loop !1553

226:                                              ; preds = %192, %146, %139, %84
  ret void, !dbg !1555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_pos(i64 %0) #0 !dbg !1556 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1557, metadata !DIExpression()), !dbg !1558
  %4 = load i64, i64* %3, align 8, !dbg !1559
  %5 = icmp ne i64 %4, 0, !dbg !1559
  br i1 %5, label %6, label %10, !dbg !1561

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8, !dbg !1562
  %8 = call i64 @fiobj_type_is(i64 %7, i8 zeroext 43), !dbg !1562
  %9 = icmp ne i64 %8, 0, !dbg !1562
  br i1 %9, label %11, label %10, !dbg !1563

10:                                               ; preds = %6, %1
  store i64 -1, i64* %2, align 8, !dbg !1564
  br label %27, !dbg !1564

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8, !dbg !1565
  %13 = inttoptr i64 %12 to %struct.fiobj_data_s*, !dbg !1565
  %14 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %13, i32 0, i32 6, !dbg !1566
  %15 = load i32, i32* %14, align 8, !dbg !1566
  switch i32 %15, label %21 [
    i32 -1, label %16
    i32 -2, label %16
  ], !dbg !1567

16:                                               ; preds = %11, %11
  %17 = load i64, i64* %3, align 8, !dbg !1568
  %18 = inttoptr i64 %17 to %struct.fiobj_data_s*, !dbg !1568
  %19 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %18, i32 0, i32 5, !dbg !1570
  %20 = load i64, i64* %19, align 8, !dbg !1570
  store i64 %20, i64* %2, align 8, !dbg !1571
  br label %27, !dbg !1571

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8, !dbg !1572
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*, !dbg !1572
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 2, !dbg !1573
  %25 = bitcast %union.anon* %24 to i64*, !dbg !1574
  %26 = load i64, i64* %25, align 8, !dbg !1574
  store i64 %26, i64* %2, align 8, !dbg !1575
  br label %27, !dbg !1575

27:                                               ; preds = %21, %16, %10
  %28 = load i64, i64* %2, align 8, !dbg !1576
  ret i64 %28, !dbg !1576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_seek(i64 %0, i64 %1) #0 !dbg !1577 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1580, metadata !DIExpression()), !dbg !1581
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1582, metadata !DIExpression()), !dbg !1583
  %6 = load i64, i64* %3, align 8, !dbg !1584
  %7 = icmp ne i64 %6, 0, !dbg !1584
  br i1 %7, label %8, label %12, !dbg !1586

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8, !dbg !1587
  %10 = call i64 @fiobj_type_is(i64 %9, i8 zeroext 43), !dbg !1587
  %11 = icmp ne i64 %10, 0, !dbg !1587
  br i1 %11, label %13, label %12, !dbg !1588

12:                                               ; preds = %8, %2
  br label %119, !dbg !1589

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8, !dbg !1590
  %15 = inttoptr i64 %14 to %struct.fiobj_data_s*, !dbg !1590
  %16 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %15, i32 0, i32 6, !dbg !1591
  %17 = load i32, i32* %16, align 8, !dbg !1591
  switch i32 %17, label %67 [
    i32 -1, label %18
    i32 -2, label %18
  ], !dbg !1592

18:                                               ; preds = %13, %13
  %19 = load i64, i64* %4, align 8, !dbg !1593
  %20 = icmp eq i64 %19, 0, !dbg !1596
  br i1 %20, label %21, label %25, !dbg !1597

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8, !dbg !1598
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*, !dbg !1598
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 5, !dbg !1600
  store i64 0, i64* %24, align 8, !dbg !1601
  br label %119, !dbg !1602

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8, !dbg !1603
  %27 = icmp sgt i64 %26, 0, !dbg !1605
  br i1 %27, label %28, label %45, !dbg !1606

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8, !dbg !1607
  %30 = load i64, i64* %3, align 8, !dbg !1610
  %31 = inttoptr i64 %30 to %struct.fiobj_data_s*, !dbg !1610
  %32 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %31, i32 0, i32 4, !dbg !1611
  %33 = load i64, i64* %32, align 8, !dbg !1611
  %34 = icmp ugt i64 %29, %33, !dbg !1612
  br i1 %34, label %35, label %40, !dbg !1613

35:                                               ; preds = %28
  %36 = load i64, i64* %3, align 8, !dbg !1614
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*, !dbg !1614
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 4, !dbg !1615
  %39 = load i64, i64* %38, align 8, !dbg !1615
  store i64 %39, i64* %4, align 8, !dbg !1616
  br label %40, !dbg !1617

40:                                               ; preds = %35, %28
  %41 = load i64, i64* %4, align 8, !dbg !1618
  %42 = load i64, i64* %3, align 8, !dbg !1619
  %43 = inttoptr i64 %42 to %struct.fiobj_data_s*, !dbg !1619
  %44 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %43, i32 0, i32 5, !dbg !1620
  store i64 %41, i64* %44, align 8, !dbg !1621
  br label %119, !dbg !1622

45:                                               ; preds = %25
  %46 = load i64, i64* %4, align 8, !dbg !1623
  %47 = sub nsw i64 0, %46, !dbg !1624
  store i64 %47, i64* %4, align 8, !dbg !1625
  %48 = load i64, i64* %4, align 8, !dbg !1626
  %49 = load i64, i64* %3, align 8, !dbg !1628
  %50 = inttoptr i64 %49 to %struct.fiobj_data_s*, !dbg !1628
  %51 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %50, i32 0, i32 4, !dbg !1629
  %52 = load i64, i64* %51, align 8, !dbg !1629
  %53 = icmp ugt i64 %48, %52, !dbg !1630
  br i1 %53, label %54, label %55, !dbg !1631

54:                                               ; preds = %45
  store i64 0, i64* %4, align 8, !dbg !1632
  br label %62, !dbg !1633

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8, !dbg !1634
  %57 = inttoptr i64 %56 to %struct.fiobj_data_s*, !dbg !1634
  %58 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %57, i32 0, i32 4, !dbg !1635
  %59 = load i64, i64* %58, align 8, !dbg !1635
  %60 = load i64, i64* %4, align 8, !dbg !1636
  %61 = sub i64 %59, %60, !dbg !1637
  store i64 %61, i64* %4, align 8, !dbg !1638
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i64, i64* %4, align 8, !dbg !1639
  %64 = load i64, i64* %3, align 8, !dbg !1640
  %65 = inttoptr i64 %64 to %struct.fiobj_data_s*, !dbg !1640
  %66 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %65, i32 0, i32 5, !dbg !1641
  store i64 %63, i64* %66, align 8, !dbg !1642
  br label %119, !dbg !1643

67:                                               ; preds = %13
  %68 = load i64, i64* %3, align 8, !dbg !1644
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*, !dbg !1644
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 5, !dbg !1645
  store i64 0, i64* %70, align 8, !dbg !1646
  %71 = load i64, i64* %3, align 8, !dbg !1647
  %72 = inttoptr i64 %71 to %struct.fiobj_data_s*, !dbg !1647
  %73 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %72, i32 0, i32 4, !dbg !1648
  store i64 0, i64* %73, align 8, !dbg !1649
  %74 = load i64, i64* %4, align 8, !dbg !1650
  %75 = icmp eq i64 %74, 0, !dbg !1652
  br i1 %75, label %76, label %81, !dbg !1653

76:                                               ; preds = %67
  %77 = load i64, i64* %3, align 8, !dbg !1654
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*, !dbg !1654
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 2, !dbg !1656
  %80 = bitcast %union.anon* %79 to i64*, !dbg !1657
  store i64 0, i64* %80, align 8, !dbg !1658
  br label %119, !dbg !1659

81:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1660, metadata !DIExpression()), !dbg !1661
  %82 = load i64, i64* %3, align 8, !dbg !1662
  %83 = call i64 @fiobj_data_get_fd_size(i64 %82), !dbg !1663
  store i64 %83, i64* %5, align 8, !dbg !1661
  %84 = load i64, i64* %5, align 8, !dbg !1664
  %85 = icmp slt i64 %84, 0, !dbg !1666
  br i1 %85, label %86, label %87, !dbg !1667

86:                                               ; preds = %81
  store i64 0, i64* %5, align 8, !dbg !1668
  br label %87, !dbg !1669

87:                                               ; preds = %86, %81
  %88 = load i64, i64* %4, align 8, !dbg !1670
  %89 = icmp sgt i64 %88, 0, !dbg !1672
  br i1 %89, label %90, label %102, !dbg !1673

90:                                               ; preds = %87
  %91 = load i64, i64* %4, align 8, !dbg !1674
  %92 = load i64, i64* %5, align 8, !dbg !1677
  %93 = icmp sgt i64 %91, %92, !dbg !1678
  br i1 %93, label %94, label %96, !dbg !1679

94:                                               ; preds = %90
  %95 = load i64, i64* %5, align 8, !dbg !1680
  store i64 %95, i64* %4, align 8, !dbg !1681
  br label %96, !dbg !1682

96:                                               ; preds = %94, %90
  %97 = load i64, i64* %4, align 8, !dbg !1683
  %98 = load i64, i64* %3, align 8, !dbg !1684
  %99 = inttoptr i64 %98 to %struct.fiobj_data_s*, !dbg !1684
  %100 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %99, i32 0, i32 2, !dbg !1685
  %101 = bitcast %union.anon* %100 to i64*, !dbg !1686
  store i64 %97, i64* %101, align 8, !dbg !1687
  br label %119, !dbg !1688

102:                                              ; preds = %87
  %103 = load i64, i64* %4, align 8, !dbg !1689
  %104 = sub nsw i64 0, %103, !dbg !1690
  store i64 %104, i64* %4, align 8, !dbg !1691
  %105 = load i64, i64* %4, align 8, !dbg !1692
  %106 = load i64, i64* %5, align 8, !dbg !1694
  %107 = icmp sgt i64 %105, %106, !dbg !1695
  br i1 %107, label %108, label %109, !dbg !1696

108:                                              ; preds = %102
  store i64 0, i64* %4, align 8, !dbg !1697
  br label %113, !dbg !1698

109:                                              ; preds = %102
  %110 = load i64, i64* %5, align 8, !dbg !1699
  %111 = load i64, i64* %4, align 8, !dbg !1700
  %112 = sub nsw i64 %110, %111, !dbg !1701
  store i64 %112, i64* %4, align 8, !dbg !1702
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i64, i64* %4, align 8, !dbg !1703
  %115 = load i64, i64* %3, align 8, !dbg !1704
  %116 = inttoptr i64 %115 to %struct.fiobj_data_s*, !dbg !1704
  %117 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %116, i32 0, i32 2, !dbg !1705
  %118 = bitcast %union.anon* %117 to i64*, !dbg !1706
  store i64 %114, i64* %118, align 8, !dbg !1707
  br label %119, !dbg !1708

119:                                              ; preds = %113, %96, %76, %62, %40, %21, %12
  ret void, !dbg !1709
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_data_get_fd_size(i64 %0) #0 !dbg !1710 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1713, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1715, metadata !DIExpression()), !dbg !1753
  br label %5, !dbg !1754

5:                                                ; preds = %16, %1
  call void @llvm.dbg.label(metadata !1755), !dbg !1756
  %6 = load i64, i64* %3, align 8, !dbg !1757
  %7 = inttoptr i64 %6 to %struct.fiobj_data_s*, !dbg !1757
  %8 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %7, i32 0, i32 6, !dbg !1759
  %9 = load i32, i32* %8, align 8, !dbg !1759
  %10 = call i32 @fstat(i32 %9, %struct.stat* %4) #2, !dbg !1760
  %11 = icmp ne i32 %10, 0, !dbg !1760
  br i1 %11, label %12, label %18, !dbg !1761

12:                                               ; preds = %5
  %13 = call i32* @__errno_location() #11, !dbg !1762
  %14 = load i32, i32* %13, align 4, !dbg !1762
  %15 = icmp eq i32 %14, 4, !dbg !1765
  br i1 %15, label %16, label %17, !dbg !1766

16:                                               ; preds = %12
  br label %5, !dbg !1767

17:                                               ; preds = %12
  store i64 -1, i64* %2, align 8, !dbg !1768
  br label %21, !dbg !1768

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 8, !dbg !1769
  %20 = load i64, i64* %19, align 8, !dbg !1769
  store i64 %20, i64* %2, align 8, !dbg !1770
  br label %21, !dbg !1770

21:                                               ; preds = %18, %17
  %22 = load i64, i64* %2, align 8, !dbg !1771
  ret i64 %22, !dbg !1771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_pread(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2, i64 %3) #0 !dbg !1772 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1777, metadata !DIExpression()), !dbg !1778
  store i64 %3, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1779, metadata !DIExpression()), !dbg !1780
  %8 = load i64, i64* %5, align 8, !dbg !1781
  %9 = icmp ne i64 %8, 0, !dbg !1781
  br i1 %9, label %10, label %14, !dbg !1783

10:                                               ; preds = %4
  %11 = load i64, i64* %5, align 8, !dbg !1784
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 43), !dbg !1784
  %13 = icmp ne i64 %12, 0, !dbg !1784
  br i1 %13, label %19, label %14, !dbg !1785

14:                                               ; preds = %10, %4
  %15 = call i32* @__errno_location() #11, !dbg !1786
  store i32 14, i32* %15, align 4, !dbg !1788
  %16 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1789
  store i64 0, i64* %16, align 8, !dbg !1789
  %17 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1789
  store i64 0, i64* %17, align 8, !dbg !1789
  %18 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1789
  store i8* null, i8** %18, align 8, !dbg !1789
  br label %37, !dbg !1790

19:                                               ; preds = %10
  %20 = call i32* @__errno_location() #11, !dbg !1791
  store i32 0, i32* %20, align 4, !dbg !1792
  %21 = load i64, i64* %5, align 8, !dbg !1793
  %22 = inttoptr i64 %21 to %struct.fiobj_data_s*, !dbg !1793
  %23 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %22, i32 0, i32 6, !dbg !1794
  %24 = load i32, i32* %23, align 8, !dbg !1794
  switch i32 %24, label %33 [
    i32 -1, label %25
    i32 -2, label %29
  ], !dbg !1795

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8, !dbg !1796
  %27 = load i64, i64* %6, align 8, !dbg !1798
  %28 = load i64, i64* %7, align 8, !dbg !1799
  call void @fiobj_data_pread_str(%struct.fio_str_info_s* sret %0, i64 %26, i64 %27, i64 %28), !dbg !1800
  br label %37, !dbg !1801

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8, !dbg !1802
  %31 = load i64, i64* %6, align 8, !dbg !1803
  %32 = load i64, i64* %7, align 8, !dbg !1804
  call void @fiobj_data_pread_slice(%struct.fio_str_info_s* sret %0, i64 %30, i64 %31, i64 %32), !dbg !1805
  br label %37, !dbg !1806

33:                                               ; preds = %19
  %34 = load i64, i64* %5, align 8, !dbg !1807
  %35 = load i64, i64* %6, align 8, !dbg !1808
  %36 = load i64, i64* %7, align 8, !dbg !1809
  call void @fiobj_data_pread_file(%struct.fio_str_info_s* sret %0, i64 %34, i64 %35, i64 %36), !dbg !1810
  br label %37, !dbg !1811

37:                                               ; preds = %33, %29, %25, %14
  ret void, !dbg !1812
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pread_str(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2, i64 %3) #0 !dbg !1813 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1814, metadata !DIExpression()), !dbg !1815
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1816, metadata !DIExpression()), !dbg !1817
  store i64 %3, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1818, metadata !DIExpression()), !dbg !1819
  %8 = load i64, i64* %6, align 8, !dbg !1820
  %9 = icmp slt i64 %8, 0, !dbg !1822
  br i1 %9, label %10, label %17, !dbg !1823

10:                                               ; preds = %4
  %11 = load i64, i64* %5, align 8, !dbg !1824
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !1824
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4, !dbg !1825
  %14 = load i64, i64* %13, align 8, !dbg !1825
  %15 = load i64, i64* %6, align 8, !dbg !1826
  %16 = add i64 %14, %15, !dbg !1827
  store i64 %16, i64* %6, align 8, !dbg !1828
  br label %17, !dbg !1829

17:                                               ; preds = %10, %4
  %18 = load i64, i64* %6, align 8, !dbg !1830
  %19 = icmp slt i64 %18, 0, !dbg !1832
  br i1 %19, label %20, label %21, !dbg !1833

20:                                               ; preds = %17
  store i64 0, i64* %6, align 8, !dbg !1834
  br label %21, !dbg !1835

21:                                               ; preds = %20, %17
  %22 = load i64, i64* %6, align 8, !dbg !1836
  %23 = load i64, i64* %5, align 8, !dbg !1838
  %24 = inttoptr i64 %23 to %struct.fiobj_data_s*, !dbg !1838
  %25 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %24, i32 0, i32 4, !dbg !1839
  %26 = load i64, i64* %25, align 8, !dbg !1839
  %27 = icmp ugt i64 %22, %26, !dbg !1840
  br i1 %27, label %28, label %33, !dbg !1841

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8, !dbg !1842
  %30 = inttoptr i64 %29 to %struct.fiobj_data_s*, !dbg !1842
  %31 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %30, i32 0, i32 4, !dbg !1843
  %32 = load i64, i64* %31, align 8, !dbg !1843
  store i64 %32, i64* %6, align 8, !dbg !1844
  br label %33, !dbg !1845

33:                                               ; preds = %28, %21
  %34 = load i64, i64* %7, align 8, !dbg !1846
  %35 = load i64, i64* %6, align 8, !dbg !1848
  %36 = add i64 %34, %35, !dbg !1849
  %37 = load i64, i64* %5, align 8, !dbg !1850
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*, !dbg !1850
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 4, !dbg !1851
  %40 = load i64, i64* %39, align 8, !dbg !1851
  %41 = icmp ugt i64 %36, %40, !dbg !1852
  br i1 %41, label %42, label %49, !dbg !1853

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8, !dbg !1854
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1854
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 4, !dbg !1855
  %46 = load i64, i64* %45, align 8, !dbg !1855
  %47 = load i64, i64* %6, align 8, !dbg !1856
  %48 = sub i64 %46, %47, !dbg !1857
  store i64 %48, i64* %7, align 8, !dbg !1858
  br label %49, !dbg !1859

49:                                               ; preds = %42, %33
  %50 = load i64, i64* %7, align 8, !dbg !1860
  %51 = icmp eq i64 %50, 0, !dbg !1862
  br i1 %51, label %52, label %56, !dbg !1863

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1864
  store i64 0, i64* %53, align 8, !dbg !1864
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1864
  store i64 0, i64* %54, align 8, !dbg !1864
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1864
  store i8* null, i8** %55, align 8, !dbg !1864
  br label %67, !dbg !1865

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1866
  store i64 0, i64* %57, align 8, !dbg !1866
  %58 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1866
  %59 = load i64, i64* %7, align 8, !dbg !1867
  store i64 %59, i64* %58, align 8, !dbg !1866
  %60 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1866
  %61 = load i64, i64* %5, align 8, !dbg !1868
  %62 = inttoptr i64 %61 to %struct.fiobj_data_s*, !dbg !1868
  %63 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %62, i32 0, i32 1, !dbg !1869
  %64 = load i8*, i8** %63, align 8, !dbg !1869
  %65 = load i64, i64* %6, align 8, !dbg !1870
  %66 = getelementptr inbounds i8, i8* %64, i64 %65, !dbg !1871
  store i8* %66, i8** %60, align 8, !dbg !1866
  br label %67, !dbg !1872

67:                                               ; preds = %56, %52
  ret void, !dbg !1873
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pread_slice(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2, i64 %3) #0 !dbg !1874 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1875, metadata !DIExpression()), !dbg !1876
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1877, metadata !DIExpression()), !dbg !1878
  store i64 %3, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1879, metadata !DIExpression()), !dbg !1880
  %8 = load i64, i64* %6, align 8, !dbg !1881
  %9 = icmp slt i64 %8, 0, !dbg !1883
  br i1 %9, label %10, label %17, !dbg !1884

10:                                               ; preds = %4
  %11 = load i64, i64* %5, align 8, !dbg !1885
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !1885
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 4, !dbg !1886
  %14 = load i64, i64* %13, align 8, !dbg !1886
  %15 = load i64, i64* %6, align 8, !dbg !1887
  %16 = add i64 %14, %15, !dbg !1888
  store i64 %16, i64* %6, align 8, !dbg !1889
  br label %17, !dbg !1890

17:                                               ; preds = %10, %4
  %18 = load i64, i64* %6, align 8, !dbg !1891
  %19 = icmp slt i64 %18, 0, !dbg !1893
  br i1 %19, label %20, label %21, !dbg !1894

20:                                               ; preds = %17
  store i64 0, i64* %6, align 8, !dbg !1895
  br label %21, !dbg !1896

21:                                               ; preds = %20, %17
  %22 = load i64, i64* %6, align 8, !dbg !1897
  %23 = load i64, i64* %5, align 8, !dbg !1899
  %24 = inttoptr i64 %23 to %struct.fiobj_data_s*, !dbg !1899
  %25 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %24, i32 0, i32 4, !dbg !1900
  %26 = load i64, i64* %25, align 8, !dbg !1900
  %27 = icmp ugt i64 %22, %26, !dbg !1901
  br i1 %27, label %28, label %33, !dbg !1902

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8, !dbg !1903
  %30 = inttoptr i64 %29 to %struct.fiobj_data_s*, !dbg !1903
  %31 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %30, i32 0, i32 4, !dbg !1904
  %32 = load i64, i64* %31, align 8, !dbg !1904
  store i64 %32, i64* %6, align 8, !dbg !1905
  br label %33, !dbg !1906

33:                                               ; preds = %28, %21
  %34 = load i64, i64* %7, align 8, !dbg !1907
  %35 = load i64, i64* %6, align 8, !dbg !1909
  %36 = add i64 %34, %35, !dbg !1910
  %37 = load i64, i64* %5, align 8, !dbg !1911
  %38 = inttoptr i64 %37 to %struct.fiobj_data_s*, !dbg !1911
  %39 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %38, i32 0, i32 4, !dbg !1912
  %40 = load i64, i64* %39, align 8, !dbg !1912
  %41 = icmp ugt i64 %36, %40, !dbg !1913
  br i1 %41, label %42, label %49, !dbg !1914

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8, !dbg !1915
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1915
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 4, !dbg !1916
  %46 = load i64, i64* %45, align 8, !dbg !1916
  %47 = load i64, i64* %6, align 8, !dbg !1917
  %48 = sub i64 %46, %47, !dbg !1918
  store i64 %48, i64* %7, align 8, !dbg !1919
  br label %49, !dbg !1920

49:                                               ; preds = %42, %33
  %50 = load i64, i64* %7, align 8, !dbg !1921
  %51 = icmp eq i64 %50, 0, !dbg !1923
  br i1 %51, label %52, label %56, !dbg !1924

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1925
  store i64 0, i64* %53, align 8, !dbg !1925
  %54 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1925
  store i64 0, i64* %54, align 8, !dbg !1925
  %55 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1925
  store i8* null, i8** %55, align 8, !dbg !1925
  br label %64, !dbg !1926

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8, !dbg !1927
  %58 = inttoptr i64 %57 to %struct.fiobj_data_s*, !dbg !1927
  %59 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %58, i32 0, i32 2, !dbg !1928
  %60 = bitcast %union.anon* %59 to i64*, !dbg !1929
  %61 = load i64, i64* %60, align 8, !dbg !1929
  %62 = load i64, i64* %6, align 8, !dbg !1930
  %63 = load i64, i64* %7, align 8, !dbg !1931
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %0, i64 %61, i64 %62, i64 %63), !dbg !1932
  br label %64, !dbg !1933

64:                                               ; preds = %56, %52
  ret void, !dbg !1934
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pread_file(%struct.fio_str_info_s* noalias sret %0, i64 %1, i64 %2, i64 %3) #0 !dbg !1935 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1938, metadata !DIExpression()), !dbg !1939
  store i64 %3, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1942, metadata !DIExpression()), !dbg !1944
  %10 = load i64, i64* %5, align 8, !dbg !1945
  %11 = call i64 @fiobj_data_get_fd_size(i64 %10), !dbg !1946
  store i64 %11, i64* %8, align 8, !dbg !1944
  %12 = load i64, i64* %6, align 8, !dbg !1947
  %13 = icmp slt i64 %12, 0, !dbg !1949
  br i1 %13, label %14, label %18, !dbg !1950

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8, !dbg !1951
  %16 = load i64, i64* %6, align 8, !dbg !1952
  %17 = add nsw i64 %15, %16, !dbg !1953
  store i64 %17, i64* %6, align 8, !dbg !1954
  br label %18, !dbg !1955

18:                                               ; preds = %14, %4
  %19 = load i64, i64* %6, align 8, !dbg !1956
  %20 = icmp slt i64 %19, 0, !dbg !1958
  br i1 %20, label %21, label %22, !dbg !1959

21:                                               ; preds = %18
  store i64 0, i64* %6, align 8, !dbg !1960
  br label %22, !dbg !1961

22:                                               ; preds = %21, %18
  %23 = load i64, i64* %7, align 8, !dbg !1962
  %24 = load i64, i64* %6, align 8, !dbg !1964
  %25 = add i64 %23, %24, !dbg !1965
  %26 = load i64, i64* %8, align 8, !dbg !1966
  %27 = icmp ugt i64 %25, %26, !dbg !1967
  br i1 %27, label %28, label %32, !dbg !1968

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8, !dbg !1969
  %30 = load i64, i64* %6, align 8, !dbg !1970
  %31 = sub nsw i64 %29, %30, !dbg !1971
  store i64 %31, i64* %7, align 8, !dbg !1972
  br label %32, !dbg !1973

32:                                               ; preds = %28, %22
  %33 = load i64, i64* %7, align 8, !dbg !1974
  %34 = icmp eq i64 %33, 0, !dbg !1976
  br i1 %34, label %35, label %49, !dbg !1977

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8, !dbg !1978
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*, !dbg !1978
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 3, !dbg !1980
  store i64 0, i64* %38, align 8, !dbg !1981
  %39 = load i64, i64* %5, align 8, !dbg !1982
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*, !dbg !1982
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 1, !dbg !1983
  %42 = load i8*, i8** %41, align 8, !dbg !1983
  call void @fio_free(i8* %42), !dbg !1984
  %43 = load i64, i64* %5, align 8, !dbg !1985
  %44 = inttoptr i64 %43 to %struct.fiobj_data_s*, !dbg !1985
  %45 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %44, i32 0, i32 1, !dbg !1986
  store i8* null, i8** %45, align 8, !dbg !1987
  %46 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !1988
  store i64 0, i64* %46, align 8, !dbg !1988
  %47 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !1988
  store i64 0, i64* %47, align 8, !dbg !1988
  %48 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !1988
  store i8* null, i8** %48, align 8, !dbg !1988
  br label %91, !dbg !1989

49:                                               ; preds = %32
  %50 = load i64, i64* %5, align 8, !dbg !1990
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*, !dbg !1990
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 4, !dbg !1991
  store i64 0, i64* %52, align 8, !dbg !1992
  %53 = load i64, i64* %5, align 8, !dbg !1993
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*, !dbg !1993
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 5, !dbg !1994
  store i64 0, i64* %55, align 8, !dbg !1995
  %56 = load i64, i64* %5, align 8, !dbg !1996
  %57 = load i64, i64* %7, align 8, !dbg !1997
  %58 = add i64 %57, 1, !dbg !1998
  call void @fiobj_data_pre_write(i64 %56, i64 %58), !dbg !1999
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2000, metadata !DIExpression()), !dbg !2001
  %59 = load i64, i64* %5, align 8, !dbg !2002
  %60 = inttoptr i64 %59 to %struct.fiobj_data_s*, !dbg !2002
  %61 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %60, i32 0, i32 6, !dbg !2003
  %62 = load i32, i32* %61, align 8, !dbg !2003
  %63 = load i64, i64* %5, align 8, !dbg !2004
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*, !dbg !2004
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 1, !dbg !2005
  %66 = load i8*, i8** %65, align 8, !dbg !2005
  %67 = load i64, i64* %7, align 8, !dbg !2006
  %68 = load i64, i64* %6, align 8, !dbg !2007
  %69 = call i64 @pread(i32 %62, i8* %66, i64 %67, i64 %68), !dbg !2008
  store i64 %69, i64* %9, align 8, !dbg !2001
  %70 = load i64, i64* %9, align 8, !dbg !2009
  %71 = icmp sle i64 %70, 0, !dbg !2011
  br i1 %71, label %72, label %76, !dbg !2012

72:                                               ; preds = %49
  %73 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !2013
  store i64 0, i64* %73, align 8, !dbg !2013
  %74 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !2013
  store i64 0, i64* %74, align 8, !dbg !2013
  %75 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !2013
  store i8* null, i8** %75, align 8, !dbg !2013
  br label %91, !dbg !2015

76:                                               ; preds = %49
  %77 = load i64, i64* %5, align 8, !dbg !2016
  %78 = inttoptr i64 %77 to %struct.fiobj_data_s*, !dbg !2016
  %79 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %78, i32 0, i32 1, !dbg !2017
  %80 = load i8*, i8** %79, align 8, !dbg !2017
  %81 = load i64, i64* %9, align 8, !dbg !2018
  %82 = getelementptr inbounds i8, i8* %80, i64 %81, !dbg !2016
  store i8 0, i8* %82, align 1, !dbg !2019
  %83 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 0, !dbg !2020
  store i64 0, i64* %83, align 8, !dbg !2020
  %84 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 1, !dbg !2020
  %85 = load i64, i64* %9, align 8, !dbg !2021
  store i64 %85, i64* %84, align 8, !dbg !2020
  %86 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %0, i32 0, i32 2, !dbg !2020
  %87 = load i64, i64* %5, align 8, !dbg !2022
  %88 = inttoptr i64 %87 to %struct.fiobj_data_s*, !dbg !2022
  %89 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %88, i32 0, i32 1, !dbg !2023
  %90 = load i8*, i8** %89, align 8, !dbg !2023
  store i8* %90, i8** %86, align 8, !dbg !2020
  br label %91, !dbg !2024

91:                                               ; preds = %76, %72, %35
  ret void, !dbg !2025
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiobj_data_assert_dynamic(i64 %0) #0 !dbg !2026 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2029, metadata !DIExpression()), !dbg !2030
  %3 = load i64, i64* %2, align 8, !dbg !2031
  %4 = icmp ne i64 %3, 0, !dbg !2031
  br i1 %4, label %7, label %5, !dbg !2033

5:                                                ; preds = %1
  %6 = call i32* @__errno_location() #11, !dbg !2034
  store i32 23, i32* %6, align 4, !dbg !2036
  br label %16, !dbg !2037

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !2038
  %9 = call zeroext i8 @fiobj_type(i64 %8), !dbg !2038
  %10 = zext i8 %9 to i32, !dbg !2038
  %11 = icmp eq i32 %10, 43, !dbg !2038
  br i1 %11, label %12, label %13, !dbg !2041

12:                                               ; preds = %7
  br label %14, !dbg !2041

13:                                               ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 941, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.fiobj_data_assert_dynamic, i64 0, i64 0)) #12, !dbg !2038
  unreachable, !dbg !2038

14:                                               ; preds = %12
  %15 = load i64, i64* %2, align 8, !dbg !2042
  call void @fiobj_data_pre_write(i64 %15, i64 0), !dbg !2043
  br label %16, !dbg !2044

16:                                               ; preds = %14, %5
  ret void, !dbg !2045
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fiobj_type(i64 %0) #0 !dbg !2046 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2049, metadata !DIExpression()), !dbg !2050
  %4 = load i64, i64* %3, align 8, !dbg !2051
  %5 = icmp ne i64 %4, 0, !dbg !2051
  br i1 %5, label %7, label %6, !dbg !2053

6:                                                ; preds = %1
  store i8 6, i8* %2, align 1, !dbg !2054
  br label %35, !dbg !2054

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !2055
  %9 = and i64 %8, 1, !dbg !2057
  %10 = icmp ne i64 %9, 0, !dbg !2057
  br i1 %10, label %11, label %12, !dbg !2058

11:                                               ; preds = %7
  store i8 1, i8* %2, align 1, !dbg !2059
  br label %35, !dbg !2059

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8, !dbg !2060
  %14 = and i64 %13, 6, !dbg !2062
  %15 = icmp eq i64 %14, 6, !dbg !2063
  br i1 %15, label %16, label %19, !dbg !2064

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8, !dbg !2065
  %18 = trunc i64 %17 to i8, !dbg !2066
  store i8 %18, i8* %2, align 1, !dbg !2067
  br label %35, !dbg !2067

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !2068
  %21 = and i64 %20, 6, !dbg !2070
  %22 = icmp eq i64 %21, 2, !dbg !2071
  br i1 %22, label %23, label %24, !dbg !2072

23:                                               ; preds = %19
  store i8 40, i8* %2, align 1, !dbg !2073
  br label %35, !dbg !2073

24:                                               ; preds = %19
  %25 = load i64, i64* %3, align 8, !dbg !2074
  %26 = and i64 %25, 6, !dbg !2076
  %27 = icmp eq i64 %26, 4, !dbg !2077
  br i1 %27, label %28, label %29, !dbg !2078

28:                                               ; preds = %24
  store i8 42, i8* %2, align 1, !dbg !2079
  br label %35, !dbg !2079

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8, !dbg !2080
  %31 = and i64 %30, -8, !dbg !2080
  %32 = inttoptr i64 %31 to i8*, !dbg !2080
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !2081
  %34 = load i8, i8* %33, align 1, !dbg !2081
  store i8 %34, i8* %2, align 1, !dbg !2082
  br label %35, !dbg !2082

35:                                               ; preds = %29, %28, %23, %16, %11, %6
  %36 = load i8, i8* %2, align 1, !dbg !2083
  ret i8 %36, !dbg !2083
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_pre_write(i64 %0, i64 %1) #0 !dbg !2084 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2089, metadata !DIExpression()), !dbg !2090
  %5 = load i64, i64* %3, align 8, !dbg !2091
  %6 = inttoptr i64 %5 to %struct.fiobj_data_s*, !dbg !2091
  %7 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %6, i32 0, i32 6, !dbg !2092
  %8 = load i32, i32* %7, align 8, !dbg !2092
  switch i32 %8, label %21 [
    i32 -1, label %9
    i32 -2, label %19
  ], !dbg !2093

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8, !dbg !2094
  %11 = inttoptr i64 %10 to %struct.fiobj_data_s*, !dbg !2094
  %12 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %11, i32 0, i32 2, !dbg !2097
  %13 = bitcast %union.anon* %12 to void (i8*)**, !dbg !2098
  %14 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !2098
  %15 = icmp ne void (i8*)* %14, @fio_free, !dbg !2099
  br i1 %15, label %16, label %18, !dbg !2100

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8, !dbg !2101
  call void @fiobj_data_copy_buffer(i64 %17), !dbg !2103
  br label %18, !dbg !2104

18:                                               ; preds = %16, %9
  br label %21, !dbg !2105

19:                                               ; preds = %2
  %20 = load i64, i64* %3, align 8, !dbg !2106
  call void @fiobj_data_copy_parent(i64 %20), !dbg !2107
  br label %21, !dbg !2108

21:                                               ; preds = %2, %19, %18
  %22 = load i64, i64* %3, align 8, !dbg !2109
  %23 = inttoptr i64 %22 to %struct.fiobj_data_s*, !dbg !2109
  %24 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %23, i32 0, i32 3, !dbg !2111
  %25 = load i64, i64* %24, align 8, !dbg !2111
  %26 = load i64, i64* %3, align 8, !dbg !2112
  %27 = inttoptr i64 %26 to %struct.fiobj_data_s*, !dbg !2112
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %27, i32 0, i32 4, !dbg !2113
  %29 = load i64, i64* %28, align 8, !dbg !2113
  %30 = load i64, i64* %4, align 8, !dbg !2114
  %31 = add i64 %29, %30, !dbg !2115
  %32 = icmp uge i64 %25, %31, !dbg !2116
  br i1 %32, label %33, label %34, !dbg !2117

33:                                               ; preds = %21
  br label %72, !dbg !2118

34:                                               ; preds = %21
  %35 = load i64, i64* %3, align 8, !dbg !2119
  %36 = inttoptr i64 %35 to %struct.fiobj_data_s*, !dbg !2119
  %37 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %36, i32 0, i32 4, !dbg !2120
  %38 = load i64, i64* %37, align 8, !dbg !2120
  %39 = load i64, i64* %4, align 8, !dbg !2121
  %40 = add i64 %38, %39, !dbg !2122
  %41 = lshr i64 %40, 12, !dbg !2123
  %42 = add i64 %41, 1, !dbg !2124
  %43 = shl i64 %42, 12, !dbg !2125
  %44 = load i64, i64* %3, align 8, !dbg !2126
  %45 = inttoptr i64 %44 to %struct.fiobj_data_s*, !dbg !2126
  %46 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %45, i32 0, i32 3, !dbg !2127
  store i64 %43, i64* %46, align 8, !dbg !2128
  %47 = load i64, i64* %3, align 8, !dbg !2129
  %48 = inttoptr i64 %47 to %struct.fiobj_data_s*, !dbg !2129
  %49 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %48, i32 0, i32 1, !dbg !2130
  %50 = load i8*, i8** %49, align 8, !dbg !2130
  %51 = load i64, i64* %3, align 8, !dbg !2131
  %52 = inttoptr i64 %51 to %struct.fiobj_data_s*, !dbg !2131
  %53 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %52, i32 0, i32 3, !dbg !2132
  %54 = load i64, i64* %53, align 8, !dbg !2132
  %55 = call i8* @fio_realloc(i8* %50, i64 %54), !dbg !2133
  %56 = ptrtoint i8* %55 to i64, !dbg !2133
  %57 = and i64 %56, 15, !dbg !2133
  %58 = icmp eq i64 %57, 0, !dbg !2133
  call void @llvm.assume(i1 %58), !dbg !2133
  %59 = load i64, i64* %3, align 8, !dbg !2134
  %60 = inttoptr i64 %59 to %struct.fiobj_data_s*, !dbg !2134
  %61 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %60, i32 0, i32 1, !dbg !2136
  store i8* %55, i8** %61, align 8, !dbg !2137
  br label %62, !dbg !2138

62:                                               ; preds = %34
  %63 = load i64, i64* %3, align 8, !dbg !2139
  %64 = inttoptr i64 %63 to %struct.fiobj_data_s*, !dbg !2139
  %65 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %64, i32 0, i32 1, !dbg !2139
  %66 = load i8*, i8** %65, align 8, !dbg !2139
  %67 = icmp eq i8* %66, null, !dbg !2139
  br i1 %67, label %68, label %71, !dbg !2142

68:                                               ; preds = %62
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)), !dbg !2143
  %69 = call i32* @__errno_location() #11, !dbg !2143
  %70 = load i32, i32* %69, align 4, !dbg !2143
  call void @exit(i32 %70) #12, !dbg !2143
  unreachable, !dbg !2143

71:                                               ; preds = %62
  br label %72, !dbg !2142

72:                                               ; preds = %33, %71
  ret void, !dbg !2145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_write(i64 %0, i8* %1, i64 %2) #0 !dbg !2146 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2149, metadata !DIExpression()), !dbg !2150
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2151, metadata !DIExpression()), !dbg !2152
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2153, metadata !DIExpression()), !dbg !2154
  %8 = load i64, i64* %5, align 8, !dbg !2155
  %9 = icmp ne i64 %8, 0, !dbg !2155
  br i1 %9, label %10, label %20, !dbg !2157

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8, !dbg !2158
  %12 = call i64 @fiobj_type_is(i64 %11, i8 zeroext 43), !dbg !2158
  %13 = icmp ne i64 %12, 0, !dbg !2158
  br i1 %13, label %14, label %20, !dbg !2159

14:                                               ; preds = %10
  %15 = load i8*, i8** %6, align 8, !dbg !2160
  %16 = icmp ne i8* %15, null, !dbg !2160
  br i1 %16, label %22, label %17, !dbg !2161

17:                                               ; preds = %14
  %18 = load i64, i64* %7, align 8, !dbg !2162
  %19 = icmp ne i64 %18, 0, !dbg !2162
  br i1 %19, label %20, label %22, !dbg !2163

20:                                               ; preds = %17, %10, %3
  %21 = call i32* @__errno_location() #11, !dbg !2164
  store i32 14, i32* %21, align 4, !dbg !2166
  store i64 -1, i64* %4, align 8, !dbg !2167
  br label %81, !dbg !2167

22:                                               ; preds = %17, %14
  %23 = call i32* @__errno_location() #11, !dbg !2168
  store i32 0, i32* %23, align 4, !dbg !2169
  %24 = load i64, i64* %5, align 8, !dbg !2170
  %25 = inttoptr i64 %24 to %struct.fiobj_data_s*, !dbg !2170
  %26 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %25, i32 0, i32 6, !dbg !2172
  %27 = load i32, i32* %26, align 8, !dbg !2172
  %28 = icmp eq i32 %27, -2, !dbg !2173
  br i1 %28, label %29, label %31, !dbg !2174

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8, !dbg !2175
  call void @fiobj_data_assert_dynamic(i64 %30), !dbg !2176
  br label %31, !dbg !2176

31:                                               ; preds = %29, %22
  %32 = load i64, i64* %5, align 8, !dbg !2177
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*, !dbg !2177
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 6, !dbg !2179
  %35 = load i32, i32* %34, align 8, !dbg !2179
  %36 = icmp eq i32 %35, -1, !dbg !2180
  br i1 %36, label %37, label %71, !dbg !2181

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8, !dbg !2182
  %39 = load i64, i64* %7, align 8, !dbg !2184
  %40 = add i64 %39, 1, !dbg !2185
  call void @fiobj_data_pre_write(i64 %38, i64 %40), !dbg !2186
  %41 = load i64, i64* %5, align 8, !dbg !2187
  %42 = inttoptr i64 %41 to %struct.fiobj_data_s*, !dbg !2187
  %43 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %42, i32 0, i32 1, !dbg !2188
  %44 = load i8*, i8** %43, align 8, !dbg !2188
  %45 = load i64, i64* %5, align 8, !dbg !2189
  %46 = inttoptr i64 %45 to %struct.fiobj_data_s*, !dbg !2189
  %47 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %46, i32 0, i32 4, !dbg !2190
  %48 = load i64, i64* %47, align 8, !dbg !2190
  %49 = getelementptr inbounds i8, i8* %44, i64 %48, !dbg !2191
  %50 = load i8*, i8** %6, align 8, !dbg !2192
  %51 = load i64, i64* %7, align 8, !dbg !2193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %50, i64 %51, i1 false), !dbg !2194
  %52 = load i64, i64* %5, align 8, !dbg !2195
  %53 = inttoptr i64 %52 to %struct.fiobj_data_s*, !dbg !2195
  %54 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %53, i32 0, i32 4, !dbg !2196
  %55 = load i64, i64* %54, align 8, !dbg !2196
  %56 = load i64, i64* %7, align 8, !dbg !2197
  %57 = add i64 %55, %56, !dbg !2198
  %58 = load i64, i64* %5, align 8, !dbg !2199
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*, !dbg !2199
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 4, !dbg !2200
  store i64 %57, i64* %60, align 8, !dbg !2201
  %61 = load i64, i64* %5, align 8, !dbg !2202
  %62 = inttoptr i64 %61 to %struct.fiobj_data_s*, !dbg !2202
  %63 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %62, i32 0, i32 1, !dbg !2203
  %64 = load i8*, i8** %63, align 8, !dbg !2203
  %65 = load i64, i64* %5, align 8, !dbg !2204
  %66 = inttoptr i64 %65 to %struct.fiobj_data_s*, !dbg !2204
  %67 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %66, i32 0, i32 4, !dbg !2205
  %68 = load i64, i64* %67, align 8, !dbg !2205
  %69 = getelementptr inbounds i8, i8* %64, i64 %68, !dbg !2202
  store i8 0, i8* %69, align 1, !dbg !2206
  %70 = load i64, i64* %7, align 8, !dbg !2207
  store i64 %70, i64* %4, align 8, !dbg !2208
  br label %81, !dbg !2208

71:                                               ; preds = %31
  %72 = load i64, i64* %5, align 8, !dbg !2209
  %73 = inttoptr i64 %72 to %struct.fiobj_data_s*, !dbg !2209
  %74 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %73, i32 0, i32 6, !dbg !2210
  %75 = load i32, i32* %74, align 8, !dbg !2210
  %76 = load i8*, i8** %6, align 8, !dbg !2211
  %77 = load i64, i64* %7, align 8, !dbg !2212
  %78 = load i64, i64* %5, align 8, !dbg !2213
  %79 = call i64 @fiobj_data_get_fd_size(i64 %78), !dbg !2214
  %80 = call i64 @pwrite(i32 %75, i8* %76, i64 %77, i64 %79), !dbg !2215
  store i64 %80, i64* %4, align 8, !dbg !2216
  br label %81, !dbg !2216

81:                                               ; preds = %71, %37, %20
  %82 = load i64, i64* %4, align 8, !dbg !2217
  ret i64 %82, !dbg !2217
}

declare dso_local i64 @pwrite(i32, i8*, i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fiobj_data_puts(i64 %0, i8* %1, i64 %2) #0 !dbg !2218 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2223, metadata !DIExpression()), !dbg !2224
  %11 = load i64, i64* %5, align 8, !dbg !2225
  %12 = icmp ne i64 %11, 0, !dbg !2225
  br i1 %12, label %13, label %23, !dbg !2227

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8, !dbg !2228
  %15 = call i64 @fiobj_type_is(i64 %14, i8 zeroext 43), !dbg !2228
  %16 = icmp ne i64 %15, 0, !dbg !2228
  br i1 %16, label %17, label %23, !dbg !2229

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8, !dbg !2230
  %19 = icmp ne i8* %18, null, !dbg !2230
  br i1 %19, label %25, label %20, !dbg !2231

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8, !dbg !2232
  %22 = icmp ne i64 %21, 0, !dbg !2232
  br i1 %22, label %23, label %25, !dbg !2233

23:                                               ; preds = %20, %13, %3
  %24 = call i32* @__errno_location() #11, !dbg !2234
  store i32 14, i32* %24, align 4, !dbg !2236
  store i64 -1, i64* %4, align 8, !dbg !2237
  br label %129, !dbg !2237

25:                                               ; preds = %20, %17
  %26 = load i64, i64* %5, align 8, !dbg !2238
  %27 = inttoptr i64 %26 to %struct.fiobj_data_s*, !dbg !2238
  %28 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %27, i32 0, i32 6, !dbg !2240
  %29 = load i32, i32* %28, align 8, !dbg !2240
  %30 = icmp eq i32 %29, -2, !dbg !2241
  br i1 %30, label %31, label %33, !dbg !2242

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8, !dbg !2243
  call void @fiobj_data_assert_dynamic(i64 %32), !dbg !2244
  br label %33, !dbg !2244

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %5, align 8, !dbg !2245
  %35 = inttoptr i64 %34 to %struct.fiobj_data_s*, !dbg !2245
  %36 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %35, i32 0, i32 6, !dbg !2247
  %37 = load i32, i32* %36, align 8, !dbg !2247
  %38 = icmp eq i32 %37, -1, !dbg !2248
  br i1 %38, label %39, label %90, !dbg !2249

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8, !dbg !2250
  %41 = load i64, i64* %7, align 8, !dbg !2252
  %42 = add i64 %41, 2, !dbg !2253
  call void @fiobj_data_pre_write(i64 %40, i64 %42), !dbg !2254
  %43 = load i64, i64* %7, align 8, !dbg !2255
  %44 = icmp ne i64 %43, 0, !dbg !2255
  br i1 %44, label %45, label %57, !dbg !2257

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8, !dbg !2258
  %47 = inttoptr i64 %46 to %struct.fiobj_data_s*, !dbg !2258
  %48 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %47, i32 0, i32 1, !dbg !2260
  %49 = load i8*, i8** %48, align 8, !dbg !2260
  %50 = load i64, i64* %5, align 8, !dbg !2261
  %51 = inttoptr i64 %50 to %struct.fiobj_data_s*, !dbg !2261
  %52 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %51, i32 0, i32 4, !dbg !2262
  %53 = load i64, i64* %52, align 8, !dbg !2262
  %54 = getelementptr inbounds i8, i8* %49, i64 %53, !dbg !2263
  %55 = load i8*, i8** %6, align 8, !dbg !2264
  %56 = load i64, i64* %7, align 8, !dbg !2265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %55, i64 %56, i1 false), !dbg !2266
  br label %57, !dbg !2267

57:                                               ; preds = %45, %39
  %58 = load i64, i64* %5, align 8, !dbg !2268
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*, !dbg !2268
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 4, !dbg !2269
  %61 = load i64, i64* %60, align 8, !dbg !2269
  %62 = load i64, i64* %7, align 8, !dbg !2270
  %63 = add i64 %61, %62, !dbg !2271
  %64 = add i64 %63, 2, !dbg !2272
  %65 = load i64, i64* %5, align 8, !dbg !2273
  %66 = inttoptr i64 %65 to %struct.fiobj_data_s*, !dbg !2273
  %67 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %66, i32 0, i32 4, !dbg !2274
  store i64 %64, i64* %67, align 8, !dbg !2275
  %68 = load i64, i64* %5, align 8, !dbg !2276
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*, !dbg !2276
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 1, !dbg !2277
  %71 = load i8*, i8** %70, align 8, !dbg !2277
  %72 = load i64, i64* %5, align 8, !dbg !2278
  %73 = inttoptr i64 %72 to %struct.fiobj_data_s*, !dbg !2278
  %74 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %73, i32 0, i32 4, !dbg !2279
  %75 = load i64, i64* %74, align 8, !dbg !2279
  %76 = sub i64 %75, 2, !dbg !2280
  %77 = getelementptr inbounds i8, i8* %71, i64 %76, !dbg !2276
  store i8 13, i8* %77, align 1, !dbg !2281
  %78 = load i64, i64* %5, align 8, !dbg !2282
  %79 = inttoptr i64 %78 to %struct.fiobj_data_s*, !dbg !2282
  %80 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %79, i32 0, i32 1, !dbg !2283
  %81 = load i8*, i8** %80, align 8, !dbg !2283
  %82 = load i64, i64* %5, align 8, !dbg !2284
  %83 = inttoptr i64 %82 to %struct.fiobj_data_s*, !dbg !2284
  %84 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %83, i32 0, i32 4, !dbg !2285
  %85 = load i64, i64* %84, align 8, !dbg !2285
  %86 = sub i64 %85, 1, !dbg !2286
  %87 = getelementptr inbounds i8, i8* %81, i64 %86, !dbg !2282
  store i8 10, i8* %87, align 1, !dbg !2287
  %88 = load i64, i64* %7, align 8, !dbg !2288
  %89 = add i64 %88, 2, !dbg !2289
  store i64 %89, i64* %4, align 8, !dbg !2290
  br label %129, !dbg !2290

90:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2291, metadata !DIExpression()), !dbg !2292
  %91 = load i64, i64* %5, align 8, !dbg !2293
  %92 = call i64 @fiobj_data_get_fd_size(i64 %91), !dbg !2294
  store i64 %92, i64* %8, align 8, !dbg !2292
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2295, metadata !DIExpression()), !dbg !2296
  store i64 0, i64* %9, align 8, !dbg !2296
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2297, metadata !DIExpression()), !dbg !2298
  store i64 0, i64* %10, align 8, !dbg !2298
  %93 = load i64, i64* %7, align 8, !dbg !2299
  %94 = icmp ne i64 %93, 0, !dbg !2299
  br i1 %94, label %95, label %112, !dbg !2301

95:                                               ; preds = %90
  %96 = load i64, i64* %5, align 8, !dbg !2302
  %97 = inttoptr i64 %96 to %struct.fiobj_data_s*, !dbg !2302
  %98 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %97, i32 0, i32 6, !dbg !2304
  %99 = load i32, i32* %98, align 8, !dbg !2304
  %100 = load i8*, i8** %6, align 8, !dbg !2305
  %101 = load i64, i64* %7, align 8, !dbg !2306
  %102 = load i64, i64* %8, align 8, !dbg !2307
  %103 = call i64 @pwrite(i32 %99, i8* %100, i64 %101, i64 %102), !dbg !2308
  store i64 %103, i64* %9, align 8, !dbg !2309
  %104 = load i64, i64* %9, align 8, !dbg !2310
  %105 = icmp slt i64 %104, 0, !dbg !2312
  br i1 %105, label %106, label %108, !dbg !2313

106:                                              ; preds = %95
  %107 = load i64, i64* %9, align 8, !dbg !2314
  store i64 %107, i64* %4, align 8, !dbg !2315
  br label %129, !dbg !2315

108:                                              ; preds = %95
  %109 = load i64, i64* %9, align 8, !dbg !2316
  %110 = load i64, i64* %8, align 8, !dbg !2317
  %111 = add i64 %110, %109, !dbg !2317
  store i64 %111, i64* %8, align 8, !dbg !2317
  br label %112, !dbg !2318

112:                                              ; preds = %108, %90
  %113 = load i64, i64* %5, align 8, !dbg !2319
  %114 = inttoptr i64 %113 to %struct.fiobj_data_s*, !dbg !2319
  %115 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %114, i32 0, i32 6, !dbg !2320
  %116 = load i32, i32* %115, align 8, !dbg !2320
  %117 = load i8*, i8** %6, align 8, !dbg !2321
  %118 = load i64, i64* %7, align 8, !dbg !2322
  %119 = load i64, i64* %8, align 8, !dbg !2323
  %120 = call i64 @pwrite(i32 %116, i8* %117, i64 %118, i64 %119), !dbg !2324
  store i64 %120, i64* %10, align 8, !dbg !2325
  %121 = load i64, i64* %10, align 8, !dbg !2326
  %122 = icmp slt i64 %121, 0, !dbg !2328
  br i1 %122, label %123, label %125, !dbg !2329

123:                                              ; preds = %112
  %124 = load i64, i64* %9, align 8, !dbg !2330
  store i64 %124, i64* %4, align 8, !dbg !2331
  br label %129, !dbg !2331

125:                                              ; preds = %112
  %126 = load i64, i64* %9, align 8, !dbg !2332
  %127 = load i64, i64* %10, align 8, !dbg !2333
  %128 = add nsw i64 %126, %127, !dbg !2334
  store i64 %128, i64* %4, align 8, !dbg !2335
  br label %129, !dbg !2335

129:                                              ; preds = %125, %123, %106, %57, %23
  %130 = load i64, i64* %4, align 8, !dbg !2336
  ret i64 %130, !dbg !2336
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_free(i64 %0) #0 !dbg !2337 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2338, metadata !DIExpression()), !dbg !2339
  %5 = load i64, i64* %2, align 8, !dbg !2340
  %6 = icmp ne i64 %5, 0, !dbg !2340
  br i1 %6, label %7, label %15, !dbg !2340

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !2340
  %9 = and i64 %8, 1, !dbg !2340
  %10 = icmp eq i64 %9, 0, !dbg !2340
  br i1 %10, label %11, label %15, !dbg !2340

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8, !dbg !2340
  %13 = and i64 %12, 6, !dbg !2340
  %14 = icmp ne i64 %13, 6, !dbg !2340
  br i1 %14, label %16, label %15, !dbg !2342

15:                                               ; preds = %11, %7, %1
  br label %50, !dbg !2343

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8, !dbg !2344
  %18 = and i64 %17, -8, !dbg !2344
  %19 = inttoptr i64 %18 to i8*, !dbg !2344
  %20 = bitcast i8* %19 to %struct.fiobj_object_header_s*, !dbg !2344
  %21 = getelementptr inbounds %struct.fiobj_object_header_s, %struct.fiobj_object_header_s* %20, i32 0, i32 1, !dbg !2344
  store i32 1, i32* %3, align 4, !dbg !2344
  %22 = load i32, i32* %3, align 4, !dbg !2344
  %23 = atomicrmw sub i32* %21, i32 %22 seq_cst, !dbg !2344
  %24 = sub i32 %23, %22, !dbg !2344
  store i32 %24, i32* %4, align 4, !dbg !2344
  %25 = load i32, i32* %4, align 4, !dbg !2344
  %26 = icmp ne i32 %25, 0, !dbg !2344
  br i1 %26, label %27, label %28, !dbg !2346

27:                                               ; preds = %16
  br label %50, !dbg !2347

28:                                               ; preds = %16
  %29 = load i64, i64* %2, align 8, !dbg !2348
  %30 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %29), !dbg !2348
  %31 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %30, i32 0, i32 5, !dbg !2350
  %32 = load i64 (i64, i64, i32 (i64, i8*)*, i8*)*, i64 (i64, i64, i32 (i64, i8*)*, i8*)** %31, align 8, !dbg !2350
  %33 = icmp ne i64 (i64, i64, i32 (i64, i8*)*, i8*)* %32, null, !dbg !2348
  br i1 %33, label %34, label %44, !dbg !2351

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8, !dbg !2352
  %36 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %35), !dbg !2352
  %37 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %36, i32 0, i32 2, !dbg !2353
  %38 = load i64 (i64)*, i64 (i64)** %37, align 8, !dbg !2353
  %39 = load i64, i64* %2, align 8, !dbg !2354
  %40 = call i64 %38(i64 %39), !dbg !2352
  %41 = icmp ne i64 %40, 0, !dbg !2352
  br i1 %41, label %42, label %44, !dbg !2355

42:                                               ; preds = %34
  %43 = load i64, i64* %2, align 8, !dbg !2356
  call void @fiobj_free_complex_object(i64 %43), !dbg !2357
  br label %50, !dbg !2357

44:                                               ; preds = %34, %28
  %45 = load i64, i64* %2, align 8, !dbg !2358
  %46 = call %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %45), !dbg !2358
  %47 = getelementptr inbounds %struct.fiobj_object_vtable_s, %struct.fiobj_object_vtable_s* %46, i32 0, i32 1, !dbg !2359
  %48 = load void (i64, void (i64, i8*)*, i8*)*, void (i64, void (i64, i8*)*, i8*)** %47, align 8, !dbg !2359
  %49 = load i64, i64* %2, align 8, !dbg !2360
  call void %48(i64 %49, void (i64, i8*)* null, i8* null), !dbg !2358
  br label %50

50:                                               ; preds = %15, %27, %44, %42
  ret void, !dbg !2361
}

declare dso_local i32 @close(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fiobj_object_vtable_s* @fiobj_type_vtable(i64 %0) #0 !dbg !2362 {
  %2 = alloca %struct.fiobj_object_vtable_s*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2366, metadata !DIExpression()), !dbg !2367
  %4 = load i64, i64* %3, align 8, !dbg !2368
  %5 = call zeroext i8 @fiobj_type(i64 %4), !dbg !2368
  %6 = zext i8 %5 to i32, !dbg !2368
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
  ], !dbg !2369

7:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_NUMBER, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2370
  br label %15, !dbg !2370

8:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_FLOAT, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2372
  br label %15, !dbg !2372

9:                                                ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_STRING, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2373
  br label %15, !dbg !2373

10:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_ARRAY, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2374
  br label %15, !dbg !2374

11:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_HASH, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2375
  br label %15, !dbg !2375

12:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* @FIOBJECT_VTABLE_DATA, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2376
  br label %15, !dbg !2376

13:                                               ; preds = %1, %1, %1, %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2377
  br label %15, !dbg !2377

14:                                               ; preds = %1
  store %struct.fiobj_object_vtable_s* null, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2378
  br label %15, !dbg !2378

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7
  %16 = load %struct.fiobj_object_vtable_s*, %struct.fiobj_object_vtable_s** %2, align 8, !dbg !2379
  ret %struct.fiobj_object_vtable_s* %16, !dbg !2379
}

declare dso_local void @fiobj_free_complex_object(i64) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #9

declare dso_local i64 @pread(i32, i8*, i64, i64) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @mkstemp(i8*) #5

declare dso_local i32 @open(i8*, i32, ...) #5

declare dso_local i64 @write(i32, i8*, i64) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_null() #0 !dbg !2380 {
  ret i64 6, !dbg !2381
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_true() #0 !dbg !2382 {
  ret i64 22, !dbg !2383
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fiobj_false() #0 !dbg !2384 {
  ret i64 38, !dbg !2385
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swallow_ch(i8** %0, i8* %1, i8 zeroext %2) #0 !dbg !2386 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2392, metadata !DIExpression()), !dbg !2393
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2396, metadata !DIExpression()), !dbg !2397
  %9 = load i8*, i8** %6, align 8, !dbg !2398
  %10 = load i8**, i8*** %5, align 8, !dbg !2400
  %11 = load i8*, i8** %10, align 8, !dbg !2401
  %12 = ptrtoint i8* %9 to i64, !dbg !2402
  %13 = ptrtoint i8* %11 to i64, !dbg !2402
  %14 = sub i64 %12, %13, !dbg !2402
  %15 = icmp eq i64 %14, 0, !dbg !2403
  br i1 %15, label %16, label %17, !dbg !2404

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2405
  br label %40, !dbg !2405

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2406, metadata !DIExpression()), !dbg !2407
  %18 = load i8**, i8*** %5, align 8, !dbg !2408
  %19 = load i8*, i8** %18, align 8, !dbg !2409
  %20 = load i8, i8* %7, align 1, !dbg !2410
  %21 = zext i8 %20 to i32, !dbg !2410
  %22 = load i8*, i8** %6, align 8, !dbg !2411
  %23 = load i8**, i8*** %5, align 8, !dbg !2412
  %24 = load i8*, i8** %23, align 8, !dbg !2413
  %25 = ptrtoint i8* %22 to i64, !dbg !2414
  %26 = ptrtoint i8* %24 to i64, !dbg !2414
  %27 = sub i64 %25, %26, !dbg !2414
  %28 = call i8* @memchr(i8* %19, i32 %21, i64 %27) #10, !dbg !2415
  store i8* %28, i8** %8, align 8, !dbg !2407
  %29 = load i8*, i8** %8, align 8, !dbg !2416
  %30 = icmp ne i8* %29, null, !dbg !2416
  br i1 %30, label %31, label %37, !dbg !2418

31:                                               ; preds = %17
  %32 = load i8*, i8** %8, align 8, !dbg !2419
  %33 = load i8**, i8*** %5, align 8, !dbg !2421
  store i8* %32, i8** %33, align 8, !dbg !2422
  %34 = load i8**, i8*** %5, align 8, !dbg !2423
  %35 = load i8*, i8** %34, align 8, !dbg !2424
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !2424
  store i8* %36, i8** %34, align 8, !dbg !2424
  store i32 1, i32* %4, align 4, !dbg !2425
  br label %40, !dbg !2425

37:                                               ; preds = %17
  %38 = load i8*, i8** %6, align 8, !dbg !2426
  %39 = load i8**, i8*** %5, align 8, !dbg !2427
  store i8* %38, i8** %39, align 8, !dbg !2428
  store i32 0, i32* %4, align 4, !dbg !2429
  br label %40, !dbg !2429

40:                                               ; preds = %37, %31, %16
  %41 = load i32, i32* %4, align 4, !dbg !2430
  ret i32 %41, !dbg !2430
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #9

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_copy_buffer(i64 %0) #0 !dbg !2431 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2432, metadata !DIExpression()), !dbg !2433
  %4 = load i64, i64* %2, align 8, !dbg !2434
  %5 = inttoptr i64 %4 to %struct.fiobj_data_s*, !dbg !2434
  %6 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %5, i32 0, i32 4, !dbg !2435
  %7 = load i64, i64* %6, align 8, !dbg !2435
  %8 = lshr i64 %7, 12, !dbg !2436
  %9 = add i64 %8, 1, !dbg !2437
  %10 = shl i64 %9, 12, !dbg !2438
  %11 = load i64, i64* %2, align 8, !dbg !2439
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !2439
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 3, !dbg !2440
  store i64 %10, i64* %13, align 8, !dbg !2441
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2442, metadata !DIExpression()), !dbg !2443
  %14 = load i64, i64* %2, align 8, !dbg !2444
  %15 = inttoptr i64 %14 to %struct.fiobj_data_s*, !dbg !2444
  %16 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %15, i32 0, i32 3, !dbg !2445
  %17 = load i64, i64* %16, align 8, !dbg !2445
  %18 = call noalias i8* @fio_malloc(i64 %17), !dbg !2446
  %19 = ptrtoint i8* %18 to i64, !dbg !2446
  %20 = and i64 %19, 15, !dbg !2446
  %21 = icmp eq i64 %20, 0, !dbg !2446
  call void @llvm.assume(i1 %21), !dbg !2446
  store i8* %18, i8** %3, align 8, !dbg !2443
  br label %22, !dbg !2447

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8, !dbg !2449
  %24 = icmp eq i8* %23, null, !dbg !2449
  br i1 %24, label %25, label %28, !dbg !2452

25:                                               ; preds = %22
  call void @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)), !dbg !2453
  %26 = call i32* @__errno_location() #11, !dbg !2453
  %27 = load i32, i32* %26, align 4, !dbg !2453
  call void @exit(i32 %27) #12, !dbg !2453
  unreachable, !dbg !2453

28:                                               ; preds = %22
  br label %29, !dbg !2452

29:                                               ; preds = %28
  %30 = load i8*, i8** %3, align 8, !dbg !2455
  %31 = load i64, i64* %2, align 8, !dbg !2456
  %32 = inttoptr i64 %31 to %struct.fiobj_data_s*, !dbg !2456
  %33 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %32, i32 0, i32 1, !dbg !2457
  %34 = load i8*, i8** %33, align 8, !dbg !2457
  %35 = load i64, i64* %2, align 8, !dbg !2458
  %36 = inttoptr i64 %35 to %struct.fiobj_data_s*, !dbg !2458
  %37 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %36, i32 0, i32 4, !dbg !2459
  %38 = load i64, i64* %37, align 8, !dbg !2459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %34, i64 %38, i1 false), !dbg !2460
  %39 = load i64, i64* %2, align 8, !dbg !2461
  %40 = inttoptr i64 %39 to %struct.fiobj_data_s*, !dbg !2461
  %41 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %40, i32 0, i32 2, !dbg !2463
  %42 = bitcast %union.anon* %41 to void (i8*)**, !dbg !2464
  %43 = load void (i8*)*, void (i8*)** %42, align 8, !dbg !2464
  %44 = icmp ne void (i8*)* %43, null, !dbg !2461
  br i1 %44, label %45, label %55, !dbg !2465

45:                                               ; preds = %29
  %46 = load i64, i64* %2, align 8, !dbg !2466
  %47 = inttoptr i64 %46 to %struct.fiobj_data_s*, !dbg !2466
  %48 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %47, i32 0, i32 2, !dbg !2467
  %49 = bitcast %union.anon* %48 to void (i8*)**, !dbg !2468
  %50 = load void (i8*)*, void (i8*)** %49, align 8, !dbg !2468
  %51 = load i64, i64* %2, align 8, !dbg !2469
  %52 = inttoptr i64 %51 to %struct.fiobj_data_s*, !dbg !2469
  %53 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %52, i32 0, i32 1, !dbg !2470
  %54 = load i8*, i8** %53, align 8, !dbg !2470
  call void %50(i8* %54), !dbg !2466
  br label %55, !dbg !2466

55:                                               ; preds = %45, %29
  %56 = load i64, i64* %2, align 8, !dbg !2471
  %57 = inttoptr i64 %56 to %struct.fiobj_data_s*, !dbg !2471
  %58 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %57, i32 0, i32 2, !dbg !2472
  %59 = bitcast %union.anon* %58 to void (i8*)**, !dbg !2473
  store void (i8*)* @fio_free, void (i8*)** %59, align 8, !dbg !2474
  %60 = load i8*, i8** %3, align 8, !dbg !2475
  %61 = load i64, i64* %2, align 8, !dbg !2476
  %62 = inttoptr i64 %61 to %struct.fiobj_data_s*, !dbg !2476
  %63 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %62, i32 0, i32 1, !dbg !2477
  store i8* %60, i8** %63, align 8, !dbg !2478
  ret void, !dbg !2479
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiobj_data_copy_parent(i64 %0) #0 !dbg !2480 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fio_str_info_s, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fio_str_info_s, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2481, metadata !DIExpression()), !dbg !2482
  %7 = load i64, i64* %2, align 8, !dbg !2483
  %8 = inttoptr i64 %7 to %struct.fiobj_data_s*, !dbg !2483
  %9 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %8, i32 0, i32 2, !dbg !2483
  %10 = bitcast %union.anon* %9 to i64*, !dbg !2483
  %11 = load i64, i64* %10, align 8, !dbg !2483
  %12 = inttoptr i64 %11 to %struct.fiobj_data_s*, !dbg !2483
  %13 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %12, i32 0, i32 6, !dbg !2484
  %14 = load i32, i32* %13, align 8, !dbg !2484
  switch i32 %14, label %77 [
    i32 -1, label %15
  ], !dbg !2485

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8, !dbg !2486
  %17 = inttoptr i64 %16 to %struct.fiobj_data_s*, !dbg !2486
  %18 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %17, i32 0, i32 4, !dbg !2488
  %19 = load i64, i64* %18, align 8, !dbg !2488
  %20 = add i64 %19, 1, !dbg !2489
  %21 = call noalias i8* @fio_malloc(i64 %20), !dbg !2490
  %22 = ptrtoint i8* %21 to i64, !dbg !2490
  %23 = and i64 %22, 15, !dbg !2490
  %24 = icmp eq i64 %23, 0, !dbg !2490
  call void @llvm.assume(i1 %24), !dbg !2490
  %25 = load i64, i64* %2, align 8, !dbg !2491
  %26 = inttoptr i64 %25 to %struct.fiobj_data_s*, !dbg !2491
  %27 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %26, i32 0, i32 1, !dbg !2493
  store i8* %21, i8** %27, align 8, !dbg !2494
  %28 = load i64, i64* %2, align 8, !dbg !2495
  %29 = inttoptr i64 %28 to %struct.fiobj_data_s*, !dbg !2495
  %30 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %29, i32 0, i32 1, !dbg !2496
  %31 = load i8*, i8** %30, align 8, !dbg !2496
  %32 = load i64, i64* %2, align 8, !dbg !2497
  %33 = inttoptr i64 %32 to %struct.fiobj_data_s*, !dbg !2497
  %34 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %33, i32 0, i32 2, !dbg !2497
  %35 = bitcast %union.anon* %34 to i64*, !dbg !2497
  %36 = load i64, i64* %35, align 8, !dbg !2497
  %37 = inttoptr i64 %36 to %struct.fiobj_data_s*, !dbg !2497
  %38 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %37, i32 0, i32 1, !dbg !2498
  %39 = load i8*, i8** %38, align 8, !dbg !2498
  %40 = load i64, i64* %2, align 8, !dbg !2499
  %41 = inttoptr i64 %40 to %struct.fiobj_data_s*, !dbg !2499
  %42 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %41, i32 0, i32 3, !dbg !2500
  %43 = load i64, i64* %42, align 8, !dbg !2500
  %44 = getelementptr inbounds i8, i8* %39, i64 %43, !dbg !2501
  %45 = load i64, i64* %2, align 8, !dbg !2502
  %46 = inttoptr i64 %45 to %struct.fiobj_data_s*, !dbg !2502
  %47 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %46, i32 0, i32 4, !dbg !2503
  %48 = load i64, i64* %47, align 8, !dbg !2503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %44, i64 %48, i1 false), !dbg !2504
  %49 = load i64, i64* %2, align 8, !dbg !2505
  %50 = inttoptr i64 %49 to %struct.fiobj_data_s*, !dbg !2505
  %51 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %50, i32 0, i32 1, !dbg !2506
  %52 = load i8*, i8** %51, align 8, !dbg !2506
  %53 = load i64, i64* %2, align 8, !dbg !2507
  %54 = inttoptr i64 %53 to %struct.fiobj_data_s*, !dbg !2507
  %55 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %54, i32 0, i32 4, !dbg !2508
  %56 = load i64, i64* %55, align 8, !dbg !2508
  %57 = getelementptr inbounds i8, i8* %52, i64 %56, !dbg !2505
  store i8 0, i8* %57, align 1, !dbg !2509
  %58 = load i64, i64* %2, align 8, !dbg !2510
  %59 = inttoptr i64 %58 to %struct.fiobj_data_s*, !dbg !2510
  %60 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %59, i32 0, i32 4, !dbg !2511
  %61 = load i64, i64* %60, align 8, !dbg !2511
  %62 = load i64, i64* %2, align 8, !dbg !2512
  %63 = inttoptr i64 %62 to %struct.fiobj_data_s*, !dbg !2512
  %64 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %63, i32 0, i32 3, !dbg !2513
  store i64 %61, i64* %64, align 8, !dbg !2514
  %65 = load i64, i64* %2, align 8, !dbg !2515
  %66 = inttoptr i64 %65 to %struct.fiobj_data_s*, !dbg !2515
  %67 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %66, i32 0, i32 6, !dbg !2516
  store i32 -1, i32* %67, align 8, !dbg !2517
  %68 = load i64, i64* %2, align 8, !dbg !2518
  %69 = inttoptr i64 %68 to %struct.fiobj_data_s*, !dbg !2518
  %70 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %69, i32 0, i32 2, !dbg !2519
  %71 = bitcast %union.anon* %70 to i64*, !dbg !2520
  %72 = load i64, i64* %71, align 8, !dbg !2520
  call void @fiobj_free(i64 %72), !dbg !2521
  %73 = load i64, i64* %2, align 8, !dbg !2522
  %74 = inttoptr i64 %73 to %struct.fiobj_data_s*, !dbg !2522
  %75 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %74, i32 0, i32 2, !dbg !2523
  %76 = bitcast %union.anon* %75 to void (i8*)**, !dbg !2524
  store void (i8*)* @fio_free, void (i8*)** %76, align 8, !dbg !2525
  br label %178, !dbg !2526

77:                                               ; preds = %1
  %78 = call i32 @fio_tmpfile(), !dbg !2527
  %79 = load i64, i64* %2, align 8, !dbg !2528
  %80 = inttoptr i64 %79 to %struct.fiobj_data_s*, !dbg !2528
  %81 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %80, i32 0, i32 6, !dbg !2529
  store i32 %78, i32* %81, align 8, !dbg !2530
  %82 = load i64, i64* %2, align 8, !dbg !2531
  %83 = inttoptr i64 %82 to %struct.fiobj_data_s*, !dbg !2531
  %84 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %83, i32 0, i32 6, !dbg !2533
  %85 = load i32, i32* %84, align 8, !dbg !2533
  %86 = icmp slt i32 %85, 0, !dbg !2534
  br i1 %86, label %87, label %90, !dbg !2535

87:                                               ; preds = %77
  call void @perror(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0)), !dbg !2536
  %88 = call i32* @__errno_location() #11, !dbg !2538
  %89 = load i32, i32* %88, align 4, !dbg !2538
  call void @exit(i32 %89) #12, !dbg !2539
  unreachable, !dbg !2539

90:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata %struct.fio_str_info_s* %3, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2542, metadata !DIExpression()), !dbg !2543
  store i64 0, i64* %4, align 8, !dbg !2543
  br label %91, !dbg !2544

91:                                               ; preds = %147, %90
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2545, metadata !DIExpression()), !dbg !2547
  %92 = load i64, i64* %2, align 8, !dbg !2548
  %93 = inttoptr i64 %92 to %struct.fiobj_data_s*, !dbg !2548
  %94 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %93, i32 0, i32 2, !dbg !2549
  %95 = bitcast %union.anon* %94 to i64*, !dbg !2550
  %96 = load i64, i64* %95, align 8, !dbg !2550
  %97 = load i64, i64* %4, align 8, !dbg !2551
  %98 = load i64, i64* %2, align 8, !dbg !2552
  %99 = inttoptr i64 %98 to %struct.fiobj_data_s*, !dbg !2552
  %100 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %99, i32 0, i32 3, !dbg !2553
  %101 = load i64, i64* %100, align 8, !dbg !2553
  %102 = add i64 %97, %101, !dbg !2554
  call void @fiobj_data_pread(%struct.fio_str_info_s* sret %6, i64 %96, i64 %102, i64 4096), !dbg !2555
  %103 = bitcast %struct.fio_str_info_s* %3 to i8*, !dbg !2555
  %104 = bitcast %struct.fio_str_info_s* %6 to i8*, !dbg !2555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 24, i1 false), !dbg !2555
  %105 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1, !dbg !2556
  %106 = load i64, i64* %105, align 8, !dbg !2556
  %107 = load i64, i64* %4, align 8, !dbg !2558
  %108 = add i64 %106, %107, !dbg !2559
  %109 = load i64, i64* %2, align 8, !dbg !2560
  %110 = inttoptr i64 %109 to %struct.fiobj_data_s*, !dbg !2560
  %111 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %110, i32 0, i32 4, !dbg !2561
  %112 = load i64, i64* %111, align 8, !dbg !2561
  %113 = icmp ugt i64 %108, %112, !dbg !2562
  br i1 %113, label %114, label %122, !dbg !2563

114:                                              ; preds = %91
  %115 = load i64, i64* %2, align 8, !dbg !2564
  %116 = inttoptr i64 %115 to %struct.fiobj_data_s*, !dbg !2564
  %117 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %116, i32 0, i32 4, !dbg !2565
  %118 = load i64, i64* %117, align 8, !dbg !2565
  %119 = load i64, i64* %4, align 8, !dbg !2566
  %120 = sub i64 %118, %119, !dbg !2567
  %121 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1, !dbg !2568
  store i64 %120, i64* %121, align 8, !dbg !2569
  br label %122, !dbg !2570

122:                                              ; preds = %114, %91
  br label %123, !dbg !2561

123:                                              ; preds = %139, %122
  call void @llvm.dbg.label(metadata !2571), !dbg !2572
  %124 = load i64, i64* %2, align 8, !dbg !2573
  %125 = inttoptr i64 %124 to %struct.fiobj_data_s*, !dbg !2573
  %126 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %125, i32 0, i32 6, !dbg !2574
  %127 = load i32, i32* %126, align 8, !dbg !2574
  %128 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 2, !dbg !2575
  %129 = load i8*, i8** %128, align 8, !dbg !2575
  %130 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1, !dbg !2576
  %131 = load i64, i64* %130, align 8, !dbg !2576
  %132 = call i64 @write(i32 %127, i8* %129, i64 %131), !dbg !2577
  store i64 %132, i64* %5, align 8, !dbg !2578
  %133 = load i64, i64* %5, align 8, !dbg !2579
  %134 = icmp slt i64 %133, 0, !dbg !2581
  br i1 %134, label %135, label %143, !dbg !2582

135:                                              ; preds = %123
  %136 = call i32* @__errno_location() #11, !dbg !2583
  %137 = load i32, i32* %136, align 4, !dbg !2583
  %138 = icmp eq i32 %137, 4, !dbg !2586
  br i1 %138, label %139, label %140, !dbg !2587

139:                                              ; preds = %135
  br label %123, !dbg !2588

140:                                              ; preds = %135
  call void @perror(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0)), !dbg !2589
  %141 = call i32* @__errno_location() #11, !dbg !2590
  %142 = load i32, i32* %141, align 4, !dbg !2590
  call void @exit(i32 %142) #12, !dbg !2591
  unreachable, !dbg !2591

143:                                              ; preds = %123
  %144 = load i64, i64* %5, align 8, !dbg !2592
  %145 = load i64, i64* %4, align 8, !dbg !2593
  %146 = add i64 %145, %144, !dbg !2593
  store i64 %146, i64* %4, align 8, !dbg !2593
  br label %147, !dbg !2594

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.fio_str_info_s, %struct.fio_str_info_s* %3, i32 0, i32 1, !dbg !2595
  %149 = load i64, i64* %148, align 8, !dbg !2595
  %150 = icmp eq i64 %149, 4096, !dbg !2596
  br i1 %150, label %91, label %151, !dbg !2594, !llvm.loop !2597

151:                                              ; preds = %147
  %152 = load i64, i64* %2, align 8, !dbg !2599
  %153 = inttoptr i64 %152 to %struct.fiobj_data_s*, !dbg !2599
  %154 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %153, i32 0, i32 2, !dbg !2600
  %155 = bitcast %union.anon* %154 to i64*, !dbg !2601
  %156 = load i64, i64* %155, align 8, !dbg !2601
  call void @fiobj_free(i64 %156), !dbg !2602
  %157 = load i64, i64* %2, align 8, !dbg !2603
  %158 = inttoptr i64 %157 to %struct.fiobj_data_s*, !dbg !2603
  %159 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %158, i32 0, i32 3, !dbg !2604
  store i64 0, i64* %159, align 8, !dbg !2605
  %160 = load i64, i64* %4, align 8, !dbg !2606
  %161 = load i64, i64* %2, align 8, !dbg !2607
  %162 = inttoptr i64 %161 to %struct.fiobj_data_s*, !dbg !2607
  %163 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %162, i32 0, i32 4, !dbg !2608
  store i64 %160, i64* %163, align 8, !dbg !2609
  %164 = load i64, i64* %2, align 8, !dbg !2610
  %165 = inttoptr i64 %164 to %struct.fiobj_data_s*, !dbg !2610
  %166 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %165, i32 0, i32 5, !dbg !2611
  %167 = load i64, i64* %166, align 8, !dbg !2611
  %168 = load i64, i64* %2, align 8, !dbg !2612
  %169 = inttoptr i64 %168 to %struct.fiobj_data_s*, !dbg !2612
  %170 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %169, i32 0, i32 2, !dbg !2613
  %171 = bitcast %union.anon* %170 to i64*, !dbg !2614
  store i64 %167, i64* %171, align 8, !dbg !2615
  %172 = load i64, i64* %2, align 8, !dbg !2616
  %173 = inttoptr i64 %172 to %struct.fiobj_data_s*, !dbg !2616
  %174 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %173, i32 0, i32 5, !dbg !2617
  store i64 0, i64* %174, align 8, !dbg !2618
  %175 = load i64, i64* %2, align 8, !dbg !2619
  %176 = inttoptr i64 %175 to %struct.fiobj_data_s*, !dbg !2619
  %177 = getelementptr inbounds %struct.fiobj_data_s, %struct.fiobj_data_s* %176, i32 0, i32 1, !dbg !2620
  store i8* null, i8** %177, align 8, !dbg !2621
  br label %178, !dbg !2622

178:                                              ; preds = %15, %151
  ret void, !dbg !2623
}

declare dso_local i8* @fio_realloc(i8*, i64) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind readnone }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!140, !141, !142}
!llvm.ident = !{!143}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FIOBJECT_VTABLE_DATA", scope: !2, file: !3, line: 231, type: !75, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fiobj_data.c", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
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
!19 = !{!20, !52, !54, !45, !61, !62, !44, !64, !37, !65, !29}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_data_s", file: !3, line: 50, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 38, size: 448, elements: !23)
!23 = !{!24, !36, !40, !56, !57, !58, !59}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !22, file: !3, line: 39, baseType: !25, size: 64)
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
!36 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !22, file: !3, line: 40, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !7)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !22, file: !3, line: 45, baseType: !41, size: 64, offset: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !3, line: 41, size: 64, elements: !42)
!42 = !{!43, !48, !53}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !3, line: 42, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FIOBJ", file: !6, line: 63, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !46, line: 90, baseType: !47)
!46 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !41, file: !3, line: 43, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fpos", scope: !41, file: !3, line: 44, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !47)
!55 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !22, file: !3, line: 46, baseType: !54, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !22, file: !3, line: 47, baseType: !54, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !22, file: !3, line: 48, baseType: !54, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !22, file: !3, line: 49, baseType: !60, size: 32, offset: 384)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 27, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !34, line: 45, baseType: !47)
!67 = !{!0, !68, !71, !73}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "FIO_LOG_LEVEL", scope: !2, file: !70, line: 433, type: !60, isLocal: false, isDefinition: true)
!70 = !DIFile(filename: "../include/fio.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker1", scope: !2, file: !70, line: 2433, type: !38, isLocal: false, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "fio_hash_secret_marker2", scope: !2, file: !70, line: 2434, type: !38, isLocal: false, isDefinition: true)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "fiobj_object_vtable_s", file: !6, line: 325, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 305, size: 576, elements: !78)
!78 = !{!79, !82, !90, !96, !101, !106, !114, !125, !134}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !77, file: !6, line: 307, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc", scope: !77, file: !6, line: 309, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !44, !87, !52}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !44, !52}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !77, file: !6, line: 311, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!45, !95}
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "is_true", scope: !77, file: !6, line: 313, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!54, !95}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "is_eq", scope: !77, file: !6, line: 315, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!54, !95, !95}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "each", scope: !77, file: !6, line: 317, baseType: !107, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!54, !44, !54, !111, !52}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!60, !44, !52}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "to_str", scope: !77, file: !6, line: 320, baseType: !115, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !95}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "fio_str_info_s", file: !70, line: 287, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fio_str_info_s", file: !70, line: 283, size: 192, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "capa", scope: !120, file: !70, line: 284, baseType: !54, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !70, line: 285, baseType: !54, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !120, file: !70, line: 286, baseType: !62, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "to_i", scope: !77, file: !6, line: 322, baseType: !126, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !95}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !131, line: 267, baseType: !132)
!131 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !34, line: 206, baseType: !133)
!133 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "to_f", scope: !77, file: !6, line: 324, baseType: !135, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !95}
!139 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!140 = !{i32 7, !"Dwarf Version", i32 4}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{!"clang version 10.0.0-4ubuntu1 "}
!144 = distinct !DISubprogram(name: "FIO_LOG2STDERR", scope: !70, file: !70, line: 437, type: !145, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !80, null}
!147 = !{}
!148 = !DILocalVariable(name: "format", arg: 1, scope: !144, file: !70, line: 437, type: !80)
!149 = !DILocation(line: 437, column: 28, scope: !144)
!150 = !DILocalVariable(name: "tmp___log", scope: !144, file: !70, line: 438, type: !151)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 16384, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 2048)
!154 = !DILocation(line: 438, column: 8, scope: !144)
!155 = !DILocalVariable(name: "argv", scope: !144, file: !70, line: 439, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !157, line: 52, baseType: !158)
!157 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !159, line: 32, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stdarg.h", directory: "")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 439, baseType: !161)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 192, elements: !168)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 439, size: 192, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !162, file: !3, line: 439, baseType: !35, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !162, file: !3, line: 439, baseType: !35, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !162, file: !3, line: 439, baseType: !52, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !162, file: !3, line: 439, baseType: !52, size: 64, offset: 128)
!168 = !{!169}
!169 = !DISubrange(count: 1)
!170 = !DILocation(line: 439, column: 11, scope: !144)
!171 = !DILocation(line: 440, column: 3, scope: !144)
!172 = !DILocalVariable(name: "len___log", scope: !144, file: !70, line: 441, type: !60)
!173 = !DILocation(line: 441, column: 7, scope: !144)
!174 = !DILocation(line: 441, column: 29, scope: !144)
!175 = !DILocation(line: 441, column: 66, scope: !144)
!176 = !DILocation(line: 441, column: 74, scope: !144)
!177 = !DILocation(line: 441, column: 19, scope: !144)
!178 = !DILocation(line: 442, column: 3, scope: !144)
!179 = !DILocation(line: 443, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !144, file: !70, line: 443, column: 7)
!181 = !DILocation(line: 443, column: 17, scope: !180)
!182 = !DILocation(line: 443, column: 22, scope: !180)
!183 = !DILocation(line: 443, column: 25, scope: !180)
!184 = !DILocation(line: 443, column: 35, scope: !180)
!185 = !DILocation(line: 443, column: 7, scope: !144)
!186 = !DILocation(line: 444, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !70, line: 444, column: 9)
!188 = distinct !DILexicalBlock(scope: !180, file: !70, line: 443, column: 64)
!189 = !DILocation(line: 444, column: 19, scope: !187)
!190 = !DILocation(line: 444, column: 9, scope: !188)
!191 = !DILocation(line: 445, column: 14, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !70, line: 444, column: 48)
!193 = !DILocation(line: 445, column: 24, scope: !192)
!194 = !DILocation(line: 445, column: 7, scope: !192)
!195 = !DILocation(line: 447, column: 17, scope: !192)
!196 = !DILocation(line: 448, column: 5, scope: !192)
!197 = !DILocation(line: 449, column: 65, scope: !198)
!198 = distinct !DILexicalBlock(scope: !187, file: !70, line: 448, column: 12)
!199 = !DILocation(line: 449, column: 7, scope: !198)
!200 = !DILocation(line: 450, column: 7, scope: !198)
!201 = !DILocation(line: 452, column: 3, scope: !188)
!202 = !DILocation(line: 453, column: 22, scope: !144)
!203 = !DILocation(line: 453, column: 3, scope: !144)
!204 = !DILocation(line: 453, column: 26, scope: !144)
!205 = !DILocation(line: 454, column: 13, scope: !144)
!206 = !DILocation(line: 454, column: 3, scope: !144)
!207 = !DILocation(line: 454, column: 24, scope: !144)
!208 = !DILocation(line: 455, column: 10, scope: !144)
!209 = !DILocation(line: 455, column: 21, scope: !144)
!210 = !DILocation(line: 455, column: 35, scope: !144)
!211 = !DILocation(line: 455, column: 3, scope: !144)
!212 = !DILocation(line: 456, column: 1, scope: !144)
!213 = distinct !DISubprogram(name: "fiobj_data_dealloc", scope: !3, file: !3, line: 165, type: !85, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!214 = !DILocalVariable(name: "o", arg: 1, scope: !213, file: !3, line: 165, type: !44)
!215 = !DILocation(line: 165, column: 38, scope: !213)
!216 = !DILocalVariable(name: "task", arg: 2, scope: !213, file: !3, line: 165, type: !87)
!217 = !DILocation(line: 165, column: 48, scope: !213)
!218 = !DILocalVariable(name: "arg", arg: 3, scope: !213, file: !3, line: 166, type: !52)
!219 = !DILocation(line: 166, column: 38, scope: !213)
!220 = !DILocation(line: 167, column: 11, scope: !213)
!221 = !DILocation(line: 167, column: 22, scope: !213)
!222 = !DILocation(line: 167, column: 3, scope: !213)
!223 = !DILocation(line: 169, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 169, column: 9)
!225 = distinct !DILexicalBlock(scope: !213, file: !3, line: 167, column: 26)
!226 = !DILocation(line: 169, column: 20, scope: !224)
!227 = !DILocation(line: 169, column: 27, scope: !224)
!228 = !DILocation(line: 169, column: 35, scope: !224)
!229 = !DILocation(line: 169, column: 38, scope: !224)
!230 = !DILocation(line: 169, column: 49, scope: !224)
!231 = !DILocation(line: 169, column: 9, scope: !225)
!232 = !DILocation(line: 170, column: 7, scope: !224)
!233 = !DILocation(line: 170, column: 18, scope: !224)
!234 = !DILocation(line: 170, column: 25, scope: !224)
!235 = !DILocation(line: 170, column: 33, scope: !224)
!236 = !DILocation(line: 170, column: 44, scope: !224)
!237 = !DILocation(line: 171, column: 5, scope: !225)
!238 = !DILocation(line: 173, column: 16, scope: !225)
!239 = !DILocation(line: 173, column: 27, scope: !225)
!240 = !DILocation(line: 173, column: 34, scope: !225)
!241 = !DILocation(line: 173, column: 5, scope: !225)
!242 = !DILocation(line: 174, column: 5, scope: !225)
!243 = !DILocation(line: 176, column: 11, scope: !225)
!244 = !DILocation(line: 176, column: 22, scope: !225)
!245 = !DILocation(line: 176, column: 5, scope: !225)
!246 = !DILocation(line: 177, column: 14, scope: !225)
!247 = !DILocation(line: 177, column: 25, scope: !225)
!248 = !DILocation(line: 177, column: 5, scope: !225)
!249 = !DILocation(line: 178, column: 5, scope: !225)
!250 = !DILocation(line: 180, column: 20, scope: !213)
!251 = !DILocation(line: 180, column: 12, scope: !213)
!252 = !DILocation(line: 180, column: 3, scope: !213)
!253 = !DILocation(line: 181, column: 9, scope: !213)
!254 = !DILocation(line: 182, column: 9, scope: !213)
!255 = !DILocation(line: 183, column: 1, scope: !213)
!256 = distinct !DISubprogram(name: "fiobj_data_is_true", scope: !3, file: !3, line: 196, type: !99, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!257 = !DILocalVariable(name: "o", arg: 1, scope: !256, file: !3, line: 196, type: !95)
!258 = !DILocation(line: 196, column: 46, scope: !256)
!259 = !DILocation(line: 196, column: 71, scope: !256)
!260 = !DILocation(line: 196, column: 58, scope: !256)
!261 = !DILocation(line: 196, column: 74, scope: !256)
!262 = !DILocation(line: 196, column: 51, scope: !256)
!263 = distinct !DISubprogram(name: "fiobj_data_iseq", scope: !3, file: !3, line: 222, type: !104, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!264 = !DILocalVariable(name: "self", arg: 1, scope: !263, file: !3, line: 222, type: !95)
!265 = !DILocation(line: 222, column: 43, scope: !263)
!266 = !DILocalVariable(name: "other", arg: 2, scope: !263, file: !3, line: 222, type: !95)
!267 = !DILocation(line: 222, column: 61, scope: !263)
!268 = !DILocalVariable(name: "len", scope: !263, file: !3, line: 223, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !270, line: 27, baseType: !271)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !34, line: 44, baseType: !133)
!272 = !DILocation(line: 223, column: 11, scope: !263)
!273 = !DILocation(line: 224, column: 31, scope: !263)
!274 = !DILocation(line: 224, column: 18, scope: !263)
!275 = !DILocation(line: 224, column: 16, scope: !263)
!276 = !DILocation(line: 224, column: 54, scope: !263)
!277 = !DILocation(line: 224, column: 41, scope: !263)
!278 = !DILocation(line: 224, column: 38, scope: !263)
!279 = !DILocation(line: 224, column: 61, scope: !263)
!280 = !DILocation(line: 225, column: 30, scope: !263)
!281 = !DILocation(line: 225, column: 19, scope: !263)
!282 = !DILocation(line: 225, column: 36, scope: !263)
!283 = !DILocation(line: 225, column: 53, scope: !263)
!284 = !DILocation(line: 225, column: 42, scope: !263)
!285 = !DILocation(line: 225, column: 60, scope: !263)
!286 = !DILocation(line: 225, column: 74, scope: !263)
!287 = !DILocation(line: 225, column: 12, scope: !263)
!288 = !DILocation(line: 225, column: 11, scope: !263)
!289 = !DILocation(line: 0, scope: !263)
!290 = !DILocation(line: 224, column: 10, scope: !263)
!291 = !DILocation(line: 224, column: 3, scope: !263)
!292 = distinct !DISubprogram(name: "fio_io2str", scope: !3, file: !3, line: 198, type: !117, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!293 = !DILocalVariable(name: "o", arg: 1, scope: !292, file: !3, line: 198, type: !95)
!294 = !DILocation(line: 198, column: 46, scope: !292)
!295 = !DILocation(line: 199, column: 11, scope: !292)
!296 = !DILocation(line: 199, column: 22, scope: !292)
!297 = !DILocation(line: 199, column: 3, scope: !292)
!298 = !DILocation(line: 201, column: 28, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !3, line: 199, column: 26)
!300 = !DILocation(line: 202, column: 36, scope: !299)
!301 = !DILocation(line: 202, column: 47, scope: !299)
!302 = !DILocation(line: 201, column: 45, scope: !299)
!303 = !DILocation(line: 201, column: 56, scope: !299)
!304 = !DILocation(line: 201, column: 5, scope: !299)
!305 = !DILocation(line: 205, column: 29, scope: !299)
!306 = !DILocation(line: 205, column: 40, scope: !299)
!307 = !DILocation(line: 205, column: 47, scope: !299)
!308 = !DILocation(line: 205, column: 55, scope: !299)
!309 = !DILocation(line: 205, column: 66, scope: !299)
!310 = !DILocation(line: 206, column: 29, scope: !299)
!311 = !DILocation(line: 206, column: 40, scope: !299)
!312 = !DILocation(line: 205, column: 12, scope: !299)
!313 = !DILocation(line: 205, column: 5, scope: !299)
!314 = !DILocalVariable(name: "i", scope: !292, file: !3, line: 209, type: !269)
!315 = !DILocation(line: 209, column: 11, scope: !292)
!316 = !DILocation(line: 209, column: 38, scope: !292)
!317 = !DILocation(line: 209, column: 15, scope: !292)
!318 = !DILocation(line: 210, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !292, file: !3, line: 210, column: 7)
!320 = !DILocation(line: 210, column: 9, scope: !319)
!321 = !DILocation(line: 210, column: 7, scope: !292)
!322 = !DILocation(line: 211, column: 28, scope: !319)
!323 = !DILocation(line: 212, column: 36, scope: !319)
!324 = !DILocation(line: 212, column: 47, scope: !319)
!325 = !DILocation(line: 211, column: 45, scope: !319)
!326 = !DILocation(line: 211, column: 56, scope: !319)
!327 = !DILocation(line: 211, column: 5, scope: !319)
!328 = !DILocation(line: 213, column: 3, scope: !292)
!329 = !DILocation(line: 213, column: 14, scope: !292)
!330 = !DILocation(line: 213, column: 18, scope: !292)
!331 = !DILocation(line: 214, column: 3, scope: !292)
!332 = !DILocation(line: 214, column: 14, scope: !292)
!333 = !DILocation(line: 214, column: 18, scope: !292)
!334 = !DILocation(line: 215, column: 31, scope: !292)
!335 = !DILocation(line: 215, column: 34, scope: !292)
!336 = !DILocation(line: 215, column: 36, scope: !292)
!337 = !DILocation(line: 215, column: 3, scope: !292)
!338 = !DILocation(line: 216, column: 13, scope: !339)
!339 = distinct !DILexicalBlock(scope: !292, file: !3, line: 216, column: 7)
!340 = !DILocation(line: 216, column: 24, scope: !339)
!341 = !DILocation(line: 216, column: 28, scope: !339)
!342 = !DILocation(line: 216, column: 39, scope: !339)
!343 = !DILocation(line: 216, column: 47, scope: !339)
!344 = !DILocation(line: 216, column: 7, scope: !339)
!345 = !DILocation(line: 216, column: 56, scope: !339)
!346 = !DILocation(line: 216, column: 53, scope: !339)
!347 = !DILocation(line: 216, column: 7, scope: !292)
!348 = !DILocation(line: 217, column: 28, scope: !339)
!349 = !DILocation(line: 217, column: 5, scope: !339)
!350 = !DILocation(line: 218, column: 3, scope: !292)
!351 = !DILocation(line: 218, column: 14, scope: !292)
!352 = !DILocation(line: 218, column: 21, scope: !292)
!353 = !DILocation(line: 218, column: 24, scope: !292)
!354 = !DILocation(line: 219, column: 26, scope: !292)
!355 = !DILocation(line: 219, column: 69, scope: !292)
!356 = !DILocation(line: 219, column: 43, scope: !292)
!357 = !DILocation(line: 219, column: 54, scope: !292)
!358 = !DILocation(line: 219, column: 3, scope: !292)
!359 = !DILocation(line: 220, column: 1, scope: !292)
!360 = distinct !DISubprogram(name: "fiobj_data_i", scope: !3, file: !3, line: 185, type: !128, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!361 = !DILocalVariable(name: "o", arg: 1, scope: !360, file: !3, line: 185, type: !95)
!362 = !DILocation(line: 185, column: 42, scope: !360)
!363 = !DILocation(line: 186, column: 11, scope: !360)
!364 = !DILocation(line: 186, column: 22, scope: !360)
!365 = !DILocation(line: 186, column: 3, scope: !360)
!366 = !DILocation(line: 189, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !360, file: !3, line: 186, column: 26)
!368 = !DILocation(line: 189, column: 23, scope: !367)
!369 = !DILocation(line: 189, column: 5, scope: !367)
!370 = !DILocation(line: 192, column: 35, scope: !367)
!371 = !DILocation(line: 192, column: 12, scope: !367)
!372 = !DILocation(line: 192, column: 5, scope: !367)
!373 = !DILocation(line: 194, column: 1, scope: !360)
!374 = distinct !DISubprogram(name: "fiobj_data_newstr", scope: !3, file: !3, line: 326, type: !375, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!375 = !DISubroutineType(types: !376)
!376 = !{!44}
!377 = !DILocalVariable(name: "o", scope: !374, file: !3, line: 327, type: !44)
!378 = !DILocation(line: 327, column: 9, scope: !374)
!379 = !DILocation(line: 327, column: 30, scope: !374)
!380 = !DILocation(line: 327, column: 13, scope: !374)
!381 = !DILocation(line: 328, column: 3, scope: !382)
!382 = !DILexicalBlockFile(scope: !374, file: !3, discriminator: 0)
!383 = !DILocation(line: 328, column: 3, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 328, column: 3)
!385 = distinct !DILexicalBlock(scope: !382, file: !3, line: 328, column: 3)
!386 = !DILocation(line: 328, column: 3, scope: !385)
!387 = !DILocation(line: 328, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 328, column: 3)
!389 = !DILocation(line: 329, column: 3, scope: !382)
!390 = !DILocation(line: 329, column: 14, scope: !382)
!391 = !DILocation(line: 329, column: 19, scope: !382)
!392 = !DILocation(line: 330, column: 3, scope: !382)
!393 = !DILocation(line: 330, column: 14, scope: !382)
!394 = !DILocation(line: 330, column: 21, scope: !382)
!395 = !DILocation(line: 330, column: 29, scope: !382)
!396 = !DILocation(line: 331, column: 10, scope: !382)
!397 = !DILocation(line: 331, column: 3, scope: !382)
!398 = distinct !DISubprogram(name: "fiobj_data_alloc", scope: !3, file: !3, line: 154, type: !399, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!399 = !DISubroutineType(types: !400)
!400 = !{!44, !52, !60}
!401 = !DILocalVariable(name: "buffer", arg: 1, scope: !398, file: !3, line: 154, type: !52)
!402 = !DILocation(line: 154, column: 37, scope: !398)
!403 = !DILocalVariable(name: "fd", arg: 2, scope: !398, file: !3, line: 154, type: !60)
!404 = !DILocation(line: 154, column: 49, scope: !398)
!405 = !DILocalVariable(name: "io", scope: !398, file: !3, line: 155, type: !20)
!406 = !DILocation(line: 155, column: 17, scope: !398)
!407 = !DILocation(line: 155, column: 22, scope: !398)
!408 = !DILocation(line: 156, column: 3, scope: !409)
!409 = !DILexicalBlockFile(scope: !398, file: !3, discriminator: 0)
!410 = !DILocation(line: 156, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 156, column: 3)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 156, column: 3)
!413 = !DILocation(line: 156, column: 3, scope: !412)
!414 = !DILocation(line: 156, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !3, line: 156, column: 3)
!416 = !DILocation(line: 157, column: 4, scope: !409)
!417 = !DILocation(line: 157, column: 23, scope: !409)
!418 = !DILocation(line: 158, column: 15, scope: !409)
!419 = !DILocation(line: 159, column: 17, scope: !409)
!420 = !DILocation(line: 160, column: 13, scope: !409)
!421 = !DILocation(line: 157, column: 9, scope: !409)
!422 = !DILocation(line: 162, column: 17, scope: !409)
!423 = !DILocation(line: 162, column: 10, scope: !409)
!424 = !DILocation(line: 162, column: 3, scope: !409)
!425 = distinct !DISubprogram(name: "fiobj_data_newstr2", scope: !3, file: !3, line: 339, type: !426, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!426 = !DISubroutineType(types: !427)
!427 = !{!44, !52, !45, !49}
!428 = !DILocalVariable(name: "buffer", arg: 1, scope: !425, file: !3, line: 339, type: !52)
!429 = !DILocation(line: 339, column: 32, scope: !425)
!430 = !DILocalVariable(name: "length", arg: 2, scope: !425, file: !3, line: 339, type: !45)
!431 = !DILocation(line: 339, column: 50, scope: !425)
!432 = !DILocalVariable(name: "dealloc", arg: 3, scope: !425, file: !3, line: 340, type: !49)
!433 = !DILocation(line: 340, column: 33, scope: !425)
!434 = !DILocalVariable(name: "o", scope: !425, file: !3, line: 341, type: !44)
!435 = !DILocation(line: 341, column: 9, scope: !425)
!436 = !DILocation(line: 341, column: 30, scope: !425)
!437 = !DILocation(line: 341, column: 13, scope: !425)
!438 = !DILocation(line: 342, column: 21, scope: !425)
!439 = !DILocation(line: 342, column: 3, scope: !425)
!440 = !DILocation(line: 342, column: 14, scope: !425)
!441 = !DILocation(line: 342, column: 19, scope: !425)
!442 = !DILocation(line: 343, column: 20, scope: !425)
!443 = !DILocation(line: 343, column: 3, scope: !425)
!444 = !DILocation(line: 343, column: 14, scope: !425)
!445 = !DILocation(line: 343, column: 18, scope: !425)
!446 = !DILocation(line: 344, column: 31, scope: !425)
!447 = !DILocation(line: 344, column: 3, scope: !425)
!448 = !DILocation(line: 344, column: 14, scope: !425)
!449 = !DILocation(line: 344, column: 21, scope: !425)
!450 = !DILocation(line: 344, column: 29, scope: !425)
!451 = !DILocation(line: 345, column: 10, scope: !425)
!452 = !DILocation(line: 345, column: 3, scope: !425)
!453 = distinct !DISubprogram(name: "fiobj_data_newfd", scope: !3, file: !3, line: 349, type: !454, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!454 = !DISubroutineType(types: !455)
!455 = !{!44, !60}
!456 = !DILocalVariable(name: "fd", arg: 1, scope: !453, file: !3, line: 349, type: !60)
!457 = !DILocation(line: 349, column: 28, scope: !453)
!458 = !DILocalVariable(name: "o", scope: !453, file: !3, line: 350, type: !44)
!459 = !DILocation(line: 350, column: 9, scope: !453)
!460 = !DILocation(line: 350, column: 30, scope: !453)
!461 = !DILocation(line: 350, column: 48, scope: !462)
!462 = !DILexicalBlockFile(scope: !453, file: !3, discriminator: 0)
!463 = !DILocation(line: 350, column: 13, scope: !453)
!464 = !DILocation(line: 351, column: 3, scope: !462)
!465 = !DILocation(line: 351, column: 3, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 351, column: 3)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 351, column: 3)
!468 = !DILocation(line: 351, column: 3, scope: !467)
!469 = !DILocation(line: 351, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 351, column: 3)
!471 = !DILocation(line: 352, column: 3, scope: !462)
!472 = !DILocation(line: 352, column: 14, scope: !462)
!473 = !DILocation(line: 352, column: 21, scope: !462)
!474 = !DILocation(line: 352, column: 26, scope: !462)
!475 = !DILocation(line: 353, column: 10, scope: !462)
!476 = !DILocation(line: 353, column: 3, scope: !462)
!477 = distinct !DISubprogram(name: "fiobj_data_newtmpfile", scope: !3, file: !3, line: 357, type: !375, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!478 = !DILocalVariable(name: "fd", scope: !477, file: !3, line: 359, type: !60)
!479 = !DILocation(line: 359, column: 7, scope: !477)
!480 = !DILocation(line: 359, column: 12, scope: !477)
!481 = !DILocation(line: 360, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !3, line: 360, column: 7)
!483 = !DILocation(line: 360, column: 10, scope: !482)
!484 = !DILocation(line: 360, column: 7, scope: !477)
!485 = !DILocation(line: 361, column: 5, scope: !482)
!486 = !DILocation(line: 362, column: 27, scope: !477)
!487 = !DILocation(line: 362, column: 10, scope: !477)
!488 = !DILocation(line: 362, column: 3, scope: !477)
!489 = !DILocation(line: 363, column: 1, scope: !477)
!490 = distinct !DISubprogram(name: "fio_tmpfile", scope: !491, file: !491, line: 21, type: !492, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!491 = !DIFile(filename: "../include/fio_tmpfile.h", directory: "/home/mlevatich/m/build/apps/eridemo2020/secdesk/.solution/refactored/facilio/src")
!492 = !DISubroutineType(types: !493)
!493 = !{!60}
!494 = !DILocalVariable(name: "fd", scope: !490, file: !491, line: 23, type: !60)
!495 = !DILocation(line: 23, column: 7, scope: !490)
!496 = !DILocalVariable(name: "name_template", scope: !497, file: !491, line: 29, type: !499)
!497 = distinct !DILexicalBlock(scope: !498, file: !491, line: 28, column: 10)
!498 = distinct !DILexicalBlock(scope: !490, file: !491, line: 25, column: 7)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 248, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 31)
!502 = !DILocation(line: 29, column: 10, scope: !497)
!503 = !DILocation(line: 30, column: 18, scope: !497)
!504 = !DILocation(line: 30, column: 10, scope: !497)
!505 = !DILocation(line: 30, column: 8, scope: !497)
!506 = !DILocation(line: 36, column: 10, scope: !490)
!507 = !DILocation(line: 36, column: 3, scope: !490)
!508 = distinct !DISubprogram(name: "fiobj_data_slice", scope: !3, file: !3, line: 366, type: !509, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!509 = !DISubroutineType(types: !510)
!510 = !{!44, !44, !130, !45}
!511 = !DILocalVariable(name: "parent", arg: 1, scope: !508, file: !3, line: 366, type: !44)
!512 = !DILocation(line: 366, column: 30, scope: !508)
!513 = !DILocalVariable(name: "offset", arg: 2, scope: !508, file: !3, line: 366, type: !130)
!514 = !DILocation(line: 366, column: 47, scope: !508)
!515 = !DILocalVariable(name: "length", arg: 3, scope: !508, file: !3, line: 366, type: !45)
!516 = !DILocation(line: 366, column: 65, scope: !508)
!517 = !DILocation(line: 368, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !508, file: !3, line: 368, column: 7)
!519 = !DILocation(line: 368, column: 14, scope: !518)
!520 = !DILocation(line: 368, column: 7, scope: !508)
!521 = !DILocalVariable(name: "parent_len", scope: !522, file: !3, line: 369, type: !54)
!522 = distinct !DILexicalBlock(scope: !518, file: !3, line: 368, column: 19)
!523 = !DILocation(line: 369, column: 12, scope: !522)
!524 = !DILocation(line: 369, column: 40, scope: !522)
!525 = !DILocation(line: 369, column: 25, scope: !522)
!526 = !DILocation(line: 370, column: 14, scope: !522)
!527 = !DILocation(line: 370, column: 25, scope: !522)
!528 = !DILocation(line: 370, column: 31, scope: !522)
!529 = !DILocation(line: 370, column: 29, scope: !522)
!530 = !DILocation(line: 370, column: 12, scope: !522)
!531 = !DILocation(line: 371, column: 3, scope: !522)
!532 = !DILocation(line: 372, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !508, file: !3, line: 372, column: 7)
!534 = !DILocation(line: 372, column: 14, scope: !533)
!535 = !DILocation(line: 372, column: 7, scope: !508)
!536 = !DILocation(line: 373, column: 12, scope: !533)
!537 = !DILocation(line: 373, column: 5, scope: !533)
!538 = !DILocation(line: 374, column: 3, scope: !508)
!539 = !DILocation(line: 374, column: 10, scope: !508)
!540 = !DILocation(line: 374, column: 26, scope: !508)
!541 = !DILocation(line: 374, column: 29, scope: !508)
!542 = !DILocation(line: 376, column: 15, scope: !543)
!543 = distinct !DILexicalBlock(scope: !508, file: !3, line: 374, column: 36)
!544 = !DILocation(line: 376, column: 31, scope: !543)
!545 = !DILocation(line: 376, column: 12, scope: !543)
!546 = !DILocation(line: 377, column: 14, scope: !543)
!547 = !DILocation(line: 377, column: 30, scope: !543)
!548 = !DILocation(line: 377, column: 37, scope: !543)
!549 = !DILocation(line: 377, column: 12, scope: !543)
!550 = distinct !{!550, !538, !551}
!551 = !DILocation(line: 378, column: 3, scope: !508)
!552 = !DILocalVariable(name: "parent_len", scope: !508, file: !3, line: 379, type: !54)
!553 = !DILocation(line: 379, column: 10, scope: !508)
!554 = !DILocation(line: 379, column: 38, scope: !508)
!555 = !DILocation(line: 379, column: 23, scope: !508)
!556 = !DILocation(line: 380, column: 7, scope: !557)
!557 = distinct !DILexicalBlock(scope: !508, file: !3, line: 380, column: 7)
!558 = !DILocation(line: 380, column: 29, scope: !557)
!559 = !DILocation(line: 380, column: 18, scope: !557)
!560 = !DILocation(line: 380, column: 7, scope: !508)
!561 = !DILocation(line: 381, column: 12, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !3, line: 380, column: 37)
!563 = !DILocation(line: 382, column: 14, scope: !562)
!564 = !DILocation(line: 382, column: 12, scope: !562)
!565 = !DILocation(line: 383, column: 3, scope: !562)
!566 = !DILocation(line: 383, column: 14, scope: !567)
!567 = distinct !DILexicalBlock(scope: !557, file: !3, line: 383, column: 14)
!568 = !DILocation(line: 383, column: 27, scope: !567)
!569 = !DILocation(line: 383, column: 36, scope: !567)
!570 = !DILocation(line: 383, column: 34, scope: !567)
!571 = !DILocation(line: 383, column: 25, scope: !567)
!572 = !DILocation(line: 383, column: 14, scope: !557)
!573 = !DILocation(line: 384, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !567, file: !3, line: 383, column: 44)
!575 = !DILocation(line: 384, column: 27, scope: !574)
!576 = !DILocation(line: 384, column: 25, scope: !574)
!577 = !DILocation(line: 384, column: 12, scope: !574)
!578 = !DILocation(line: 385, column: 3, scope: !574)
!579 = !DILocalVariable(name: "o", scope: !508, file: !3, line: 387, type: !44)
!580 = !DILocation(line: 387, column: 9, scope: !508)
!581 = !DILocation(line: 387, column: 13, scope: !508)
!582 = !DILocation(line: 388, column: 21, scope: !508)
!583 = !DILocation(line: 388, column: 3, scope: !508)
!584 = !DILocation(line: 388, column: 14, scope: !508)
!585 = !DILocation(line: 388, column: 19, scope: !508)
!586 = !DILocation(line: 389, column: 20, scope: !508)
!587 = !DILocation(line: 389, column: 3, scope: !508)
!588 = !DILocation(line: 389, column: 14, scope: !508)
!589 = !DILocation(line: 389, column: 18, scope: !508)
!590 = !DILocation(line: 390, column: 40, scope: !508)
!591 = !DILocation(line: 390, column: 30, scope: !508)
!592 = !DILocation(line: 390, column: 3, scope: !508)
!593 = !DILocation(line: 390, column: 14, scope: !508)
!594 = !DILocation(line: 390, column: 21, scope: !508)
!595 = !DILocation(line: 390, column: 28, scope: !508)
!596 = !DILocation(line: 391, column: 10, scope: !508)
!597 = !DILocation(line: 391, column: 3, scope: !508)
!598 = distinct !DISubprogram(name: "fiobj_data_len", scope: !3, file: !3, line: 749, type: !599, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!599 = !DISubroutineType(types: !600)
!600 = !{!130, !44}
!601 = !DILocalVariable(name: "io", arg: 1, scope: !598, file: !3, line: 749, type: !44)
!602 = !DILocation(line: 749, column: 31, scope: !598)
!603 = !DILocation(line: 750, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !598, file: !3, line: 750, column: 7)
!605 = !DILocation(line: 750, column: 11, scope: !604)
!606 = !DILocation(line: 750, column: 15, scope: !604)
!607 = !DILocation(line: 750, column: 7, scope: !598)
!608 = !DILocation(line: 751, column: 5, scope: !604)
!609 = !DILocation(line: 752, column: 23, scope: !598)
!610 = !DILocation(line: 752, column: 10, scope: !598)
!611 = !DILocation(line: 752, column: 3, scope: !598)
!612 = !DILocation(line: 753, column: 1, scope: !598)
!613 = distinct !DISubprogram(name: "fiobj_dup", scope: !6, file: !6, line: 430, type: !614, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!614 = !DISubroutineType(types: !615)
!615 = !{!44, !44}
!616 = !DILocalVariable(name: "o", arg: 1, scope: !613, file: !6, line: 430, type: !44)
!617 = !DILocation(line: 430, column: 34, scope: !613)
!618 = !DILocation(line: 431, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !6, line: 431, column: 7)
!620 = !DILocation(line: 431, column: 7, scope: !613)
!621 = !DILocation(line: 432, column: 5, scope: !619)
!622 = !DILocation(line: 433, column: 10, scope: !613)
!623 = !DILocation(line: 433, column: 3, scope: !613)
!624 = distinct !DISubprogram(name: "fiobj_data_save", scope: !3, file: !3, line: 475, type: !625, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!625 = !DISubroutineType(types: !626)
!626 = !{!60, !44, !80}
!627 = !DILocalVariable(name: "o", arg: 1, scope: !624, file: !3, line: 475, type: !44)
!628 = !DILocation(line: 475, column: 27, scope: !624)
!629 = !DILocalVariable(name: "filename", arg: 2, scope: !624, file: !3, line: 475, type: !80)
!630 = !DILocation(line: 475, column: 42, scope: !624)
!631 = !DILocation(line: 476, column: 11, scope: !624)
!632 = !DILocation(line: 476, column: 22, scope: !624)
!633 = !DILocation(line: 476, column: 3, scope: !624)
!634 = !DILocation(line: 478, column: 32, scope: !635)
!635 = distinct !DILexicalBlock(scope: !624, file: !3, line: 476, column: 26)
!636 = !DILocation(line: 478, column: 35, scope: !635)
!637 = !DILocation(line: 478, column: 12, scope: !635)
!638 = !DILocation(line: 478, column: 5, scope: !635)
!639 = !DILocation(line: 481, column: 34, scope: !635)
!640 = !DILocation(line: 481, column: 37, scope: !635)
!641 = !DILocation(line: 481, column: 12, scope: !635)
!642 = !DILocation(line: 481, column: 5, scope: !635)
!643 = !DILocation(line: 484, column: 33, scope: !635)
!644 = !DILocation(line: 484, column: 36, scope: !635)
!645 = !DILocation(line: 484, column: 12, scope: !635)
!646 = !DILocation(line: 484, column: 5, scope: !635)
!647 = !DILocation(line: 486, column: 1, scope: !624)
!648 = distinct !DISubprogram(name: "fiobj_data_save_str", scope: !3, file: !3, line: 398, type: !625, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!649 = !DILocalVariable(name: "o", arg: 1, scope: !648, file: !3, line: 398, type: !44)
!650 = !DILocation(line: 398, column: 38, scope: !648)
!651 = !DILocalVariable(name: "filename", arg: 2, scope: !648, file: !3, line: 398, type: !80)
!652 = !DILocation(line: 398, column: 53, scope: !648)
!653 = !DILocalVariable(name: "target", scope: !648, file: !3, line: 399, type: !60)
!654 = !DILocation(line: 399, column: 7, scope: !648)
!655 = !DILocation(line: 399, column: 21, scope: !648)
!656 = !DILocation(line: 399, column: 16, scope: !648)
!657 = !DILocation(line: 400, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !648, file: !3, line: 400, column: 7)
!659 = !DILocation(line: 400, column: 14, scope: !658)
!660 = !DILocation(line: 400, column: 7, scope: !648)
!661 = !DILocation(line: 401, column: 5, scope: !658)
!662 = !DILocation(line: 402, column: 3, scope: !648)
!663 = !DILocation(line: 402, column: 9, scope: !648)
!664 = !DILocalVariable(name: "total", scope: !648, file: !3, line: 403, type: !54)
!665 = !DILocation(line: 403, column: 10, scope: !648)
!666 = !DILocation(line: 404, column: 3, scope: !648)
!667 = !DILocalVariable(name: "act", scope: !668, file: !3, line: 405, type: !669)
!668 = distinct !DILexicalBlock(scope: !648, file: !3, line: 404, column: 6)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !157, line: 77, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !34, line: 193, baseType: !133)
!671 = !DILocation(line: 405, column: 13, scope: !668)
!672 = !DILocation(line: 406, column: 15, scope: !668)
!673 = !DILocation(line: 406, column: 23, scope: !668)
!674 = !DILocation(line: 406, column: 34, scope: !668)
!675 = !DILocation(line: 406, column: 43, scope: !668)
!676 = !DILocation(line: 406, column: 41, scope: !668)
!677 = !DILocation(line: 406, column: 50, scope: !668)
!678 = !DILocation(line: 406, column: 61, scope: !668)
!679 = !DILocation(line: 406, column: 67, scope: !668)
!680 = !DILocation(line: 406, column: 65, scope: !668)
!681 = !DILocation(line: 406, column: 9, scope: !668)
!682 = !DILocation(line: 407, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !668, file: !3, line: 407, column: 9)
!684 = !DILocation(line: 407, column: 13, scope: !683)
!685 = !DILocation(line: 407, column: 9, scope: !668)
!686 = !DILocation(line: 408, column: 7, scope: !683)
!687 = !DILocation(line: 409, column: 14, scope: !668)
!688 = !DILocation(line: 409, column: 11, scope: !668)
!689 = !DILocation(line: 410, column: 3, scope: !668)
!690 = !DILocation(line: 410, column: 12, scope: !648)
!691 = !DILocation(line: 410, column: 20, scope: !648)
!692 = !DILocation(line: 410, column: 31, scope: !648)
!693 = !DILocation(line: 410, column: 18, scope: !648)
!694 = distinct !{!694, !666, !695}
!695 = !DILocation(line: 410, column: 34, scope: !648)
!696 = !DILocation(line: 411, column: 9, scope: !648)
!697 = !DILocation(line: 411, column: 3, scope: !648)
!698 = !DILocation(line: 412, column: 3, scope: !648)
!699 = !DILabel(scope: !648, name: "error", file: !3, line: 413)
!700 = !DILocation(line: 413, column: 1, scope: !648)
!701 = !DILocation(line: 414, column: 9, scope: !648)
!702 = !DILocation(line: 414, column: 3, scope: !648)
!703 = !DILocation(line: 415, column: 10, scope: !648)
!704 = !DILocation(line: 415, column: 3, scope: !648)
!705 = !DILocation(line: 416, column: 3, scope: !648)
!706 = !DILocation(line: 417, column: 1, scope: !648)
!707 = distinct !DISubprogram(name: "fiobj_data_save_slice", scope: !3, file: !3, line: 445, type: !625, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!708 = !DILocalVariable(name: "o", arg: 1, scope: !707, file: !3, line: 445, type: !44)
!709 = !DILocation(line: 445, column: 40, scope: !707)
!710 = !DILocalVariable(name: "filename", arg: 2, scope: !707, file: !3, line: 445, type: !80)
!711 = !DILocation(line: 445, column: 55, scope: !707)
!712 = !DILocalVariable(name: "target", scope: !707, file: !3, line: 446, type: !60)
!713 = !DILocation(line: 446, column: 7, scope: !707)
!714 = !DILocation(line: 446, column: 21, scope: !707)
!715 = !DILocation(line: 446, column: 16, scope: !707)
!716 = !DILocation(line: 447, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !707, file: !3, line: 447, column: 7)
!718 = !DILocation(line: 447, column: 14, scope: !717)
!719 = !DILocation(line: 447, column: 7, scope: !707)
!720 = !DILocation(line: 448, column: 5, scope: !717)
!721 = !DILocation(line: 449, column: 3, scope: !707)
!722 = !DILocation(line: 449, column: 9, scope: !707)
!723 = !DILocalVariable(name: "tmp", scope: !707, file: !3, line: 450, type: !119)
!724 = !DILocation(line: 450, column: 18, scope: !707)
!725 = !DILocalVariable(name: "total", scope: !707, file: !3, line: 451, type: !54)
!726 = !DILocation(line: 451, column: 10, scope: !707)
!727 = !DILocation(line: 452, column: 3, scope: !707)
!728 = !DILocation(line: 453, column: 28, scope: !729)
!729 = distinct !DILexicalBlock(scope: !707, file: !3, line: 452, column: 6)
!730 = !DILocation(line: 453, column: 39, scope: !729)
!731 = !DILocation(line: 453, column: 46, scope: !729)
!732 = !DILocation(line: 453, column: 54, scope: !729)
!733 = !DILocation(line: 453, column: 65, scope: !729)
!734 = !DILocation(line: 453, column: 72, scope: !729)
!735 = !DILocation(line: 453, column: 70, scope: !729)
!736 = !DILocation(line: 453, column: 11, scope: !729)
!737 = !DILocation(line: 455, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !729, file: !3, line: 455, column: 9)
!739 = !DILocation(line: 455, column: 17, scope: !738)
!740 = !DILocation(line: 455, column: 9, scope: !729)
!741 = !DILocation(line: 456, column: 7, scope: !738)
!742 = !DILocation(line: 457, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !729, file: !3, line: 457, column: 9)
!744 = !DILocation(line: 457, column: 21, scope: !743)
!745 = !DILocation(line: 457, column: 15, scope: !743)
!746 = !DILocation(line: 457, column: 27, scope: !743)
!747 = !DILocation(line: 457, column: 38, scope: !743)
!748 = !DILocation(line: 457, column: 25, scope: !743)
!749 = !DILocation(line: 457, column: 9, scope: !729)
!750 = !DILocation(line: 458, column: 17, scope: !743)
!751 = !DILocation(line: 458, column: 28, scope: !743)
!752 = !DILocation(line: 458, column: 34, scope: !743)
!753 = !DILocation(line: 458, column: 32, scope: !743)
!754 = !DILocation(line: 458, column: 11, scope: !743)
!755 = !DILocation(line: 458, column: 15, scope: !743)
!756 = !DILocation(line: 458, column: 7, scope: !743)
!757 = !DILocation(line: 459, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !729, file: !3, line: 459, column: 9)
!759 = !DILocation(line: 459, column: 9, scope: !758)
!760 = !DILocation(line: 459, column: 9, scope: !729)
!761 = !DILocalVariable(name: "act2", scope: !762, file: !3, line: 460, type: !669)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 459, column: 18)
!763 = !DILocation(line: 460, column: 15, scope: !762)
!764 = !DILocation(line: 460, column: 28, scope: !762)
!765 = !DILocation(line: 460, column: 40, scope: !762)
!766 = !DILocation(line: 460, column: 50, scope: !762)
!767 = !DILocation(line: 460, column: 22, scope: !762)
!768 = !DILocation(line: 461, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !3, line: 461, column: 11)
!770 = !DILocation(line: 461, column: 16, scope: !769)
!771 = !DILocation(line: 461, column: 20, scope: !769)
!772 = !DILocation(line: 461, column: 31, scope: !769)
!773 = !DILocation(line: 461, column: 42, scope: !769)
!774 = !DILocation(line: 461, column: 36, scope: !769)
!775 = !DILocation(line: 461, column: 11, scope: !762)
!776 = !DILocation(line: 462, column: 9, scope: !769)
!777 = !DILocation(line: 463, column: 16, scope: !762)
!778 = !DILocation(line: 463, column: 13, scope: !762)
!779 = !DILocation(line: 464, column: 5, scope: !762)
!780 = !DILocation(line: 465, column: 3, scope: !729)
!781 = !DILocation(line: 465, column: 16, scope: !707)
!782 = !DILocation(line: 465, column: 20, scope: !707)
!783 = distinct !{!783, !727, !784}
!784 = !DILocation(line: 465, column: 27, scope: !707)
!785 = !DILocation(line: 466, column: 9, scope: !707)
!786 = !DILocation(line: 466, column: 3, scope: !707)
!787 = !DILocation(line: 467, column: 3, scope: !707)
!788 = !DILabel(scope: !707, name: "error", file: !3, line: 468)
!789 = !DILocation(line: 468, column: 1, scope: !707)
!790 = !DILocation(line: 469, column: 9, scope: !707)
!791 = !DILocation(line: 469, column: 3, scope: !707)
!792 = !DILocation(line: 470, column: 10, scope: !707)
!793 = !DILocation(line: 470, column: 3, scope: !707)
!794 = !DILocation(line: 471, column: 3, scope: !707)
!795 = !DILocation(line: 472, column: 1, scope: !707)
!796 = distinct !DISubprogram(name: "fiobj_data_save_file", scope: !3, file: !3, line: 419, type: !625, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!797 = !DILocalVariable(name: "o", arg: 1, scope: !796, file: !3, line: 419, type: !44)
!798 = !DILocation(line: 419, column: 39, scope: !796)
!799 = !DILocalVariable(name: "filename", arg: 2, scope: !796, file: !3, line: 419, type: !80)
!800 = !DILocation(line: 419, column: 54, scope: !796)
!801 = !DILocalVariable(name: "target", scope: !796, file: !3, line: 420, type: !60)
!802 = !DILocation(line: 420, column: 7, scope: !796)
!803 = !DILocation(line: 420, column: 21, scope: !796)
!804 = !DILocation(line: 420, column: 16, scope: !796)
!805 = !DILocation(line: 421, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !796, file: !3, line: 421, column: 7)
!807 = !DILocation(line: 421, column: 14, scope: !806)
!808 = !DILocation(line: 421, column: 7, scope: !796)
!809 = !DILocation(line: 422, column: 5, scope: !806)
!810 = !DILocation(line: 423, column: 3, scope: !796)
!811 = !DILocation(line: 423, column: 9, scope: !796)
!812 = !DILocalVariable(name: "buf", scope: !796, file: !3, line: 424, type: !813)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 8192, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 1024)
!816 = !DILocation(line: 424, column: 8, scope: !796)
!817 = !DILocalVariable(name: "total", scope: !796, file: !3, line: 425, type: !54)
!818 = !DILocation(line: 425, column: 10, scope: !796)
!819 = !DILocation(line: 426, column: 3, scope: !796)
!820 = !DILocalVariable(name: "act", scope: !821, file: !3, line: 427, type: !669)
!821 = distinct !DILexicalBlock(scope: !796, file: !3, line: 426, column: 6)
!822 = !DILocation(line: 427, column: 13, scope: !821)
!823 = !DILocation(line: 427, column: 25, scope: !821)
!824 = !DILocation(line: 427, column: 36, scope: !821)
!825 = !DILocation(line: 427, column: 40, scope: !821)
!826 = !DILocation(line: 427, column: 51, scope: !821)
!827 = !DILocation(line: 427, column: 19, scope: !821)
!828 = !DILocation(line: 428, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !821, file: !3, line: 428, column: 9)
!830 = !DILocation(line: 428, column: 13, scope: !829)
!831 = !DILocation(line: 428, column: 9, scope: !821)
!832 = !DILocation(line: 429, column: 7, scope: !829)
!833 = !DILocation(line: 430, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !821, file: !3, line: 430, column: 9)
!835 = !DILocation(line: 430, column: 13, scope: !834)
!836 = !DILocation(line: 430, column: 9, scope: !821)
!837 = !DILocation(line: 431, column: 7, scope: !834)
!838 = !DILocalVariable(name: "act2", scope: !821, file: !3, line: 432, type: !669)
!839 = !DILocation(line: 432, column: 13, scope: !821)
!840 = !DILocation(line: 432, column: 26, scope: !821)
!841 = !DILocation(line: 432, column: 34, scope: !821)
!842 = !DILocation(line: 432, column: 39, scope: !821)
!843 = !DILocation(line: 432, column: 20, scope: !821)
!844 = !DILocation(line: 433, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !821, file: !3, line: 433, column: 9)
!846 = !DILocation(line: 433, column: 16, scope: !845)
!847 = !DILocation(line: 433, column: 14, scope: !845)
!848 = !DILocation(line: 433, column: 9, scope: !821)
!849 = !DILocation(line: 434, column: 7, scope: !845)
!850 = !DILocation(line: 435, column: 14, scope: !821)
!851 = !DILocation(line: 435, column: 11, scope: !821)
!852 = !DILocation(line: 436, column: 3, scope: !821)
!853 = distinct !{!853, !819, !854}
!854 = !DILocation(line: 436, column: 13, scope: !796)
!855 = !DILocation(line: 437, column: 9, scope: !796)
!856 = !DILocation(line: 437, column: 3, scope: !796)
!857 = !DILocation(line: 438, column: 3, scope: !796)
!858 = !DILabel(scope: !796, name: "error", file: !3, line: 439)
!859 = !DILocation(line: 439, column: 1, scope: !796)
!860 = !DILocation(line: 440, column: 9, scope: !796)
!861 = !DILocation(line: 440, column: 3, scope: !796)
!862 = !DILocation(line: 441, column: 10, scope: !796)
!863 = !DILocation(line: 441, column: 3, scope: !796)
!864 = !DILocation(line: 442, column: 3, scope: !796)
!865 = !DILocation(line: 443, column: 1, scope: !796)
!866 = distinct !DISubprogram(name: "fiobj_data_read", scope: !3, file: !3, line: 593, type: !867, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!867 = !DISubroutineType(types: !868)
!868 = !{!119, !44, !130}
!869 = !DILocalVariable(name: "io", arg: 1, scope: !866, file: !3, line: 593, type: !44)
!870 = !DILocation(line: 593, column: 38, scope: !866)
!871 = !DILocalVariable(name: "length", arg: 2, scope: !866, file: !3, line: 593, type: !130)
!872 = !DILocation(line: 593, column: 51, scope: !866)
!873 = !DILocation(line: 594, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !866, file: !3, line: 594, column: 7)
!875 = !DILocation(line: 594, column: 11, scope: !874)
!876 = !DILocation(line: 594, column: 15, scope: !874)
!877 = !DILocation(line: 594, column: 7, scope: !866)
!878 = !DILocation(line: 595, column: 5, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 594, column: 48)
!880 = !DILocation(line: 595, column: 11, scope: !879)
!881 = !DILocation(line: 596, column: 28, scope: !879)
!882 = !DILocation(line: 596, column: 5, scope: !879)
!883 = !DILocation(line: 598, column: 3, scope: !866)
!884 = !DILocation(line: 598, column: 9, scope: !866)
!885 = !DILocation(line: 599, column: 11, scope: !866)
!886 = !DILocation(line: 599, column: 23, scope: !866)
!887 = !DILocation(line: 599, column: 3, scope: !866)
!888 = !DILocation(line: 601, column: 32, scope: !889)
!889 = distinct !DILexicalBlock(scope: !866, file: !3, line: 599, column: 27)
!890 = !DILocation(line: 601, column: 36, scope: !889)
!891 = !DILocation(line: 601, column: 12, scope: !889)
!892 = !DILocation(line: 601, column: 5, scope: !889)
!893 = !DILocation(line: 604, column: 34, scope: !889)
!894 = !DILocation(line: 604, column: 38, scope: !889)
!895 = !DILocation(line: 604, column: 12, scope: !889)
!896 = !DILocation(line: 604, column: 5, scope: !889)
!897 = !DILocation(line: 607, column: 33, scope: !889)
!898 = !DILocation(line: 607, column: 37, scope: !889)
!899 = !DILocation(line: 607, column: 12, scope: !889)
!900 = !DILocation(line: 607, column: 5, scope: !889)
!901 = !DILocation(line: 609, column: 1, scope: !866)
!902 = distinct !DISubprogram(name: "fiobj_type_is", scope: !6, file: !6, line: 269, type: !903, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!903 = !DISubroutineType(types: !904)
!904 = !{!54, !44, !29}
!905 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !6, line: 269, type: !44)
!906 = !DILocation(line: 269, column: 39, scope: !902)
!907 = !DILocalVariable(name: "type", arg: 2, scope: !902, file: !6, line: 269, type: !29)
!908 = !DILocation(line: 269, column: 58, scope: !902)
!909 = !DILocation(line: 270, column: 11, scope: !902)
!910 = !DILocation(line: 270, column: 3, scope: !902)
!911 = !DILocation(line: 272, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !6, line: 270, column: 17)
!913 = !DILocation(line: 272, column: 15, scope: !912)
!914 = !DILocation(line: 272, column: 39, scope: !912)
!915 = !DILocation(line: 273, column: 32, scope: !912)
!916 = !DILocation(line: 273, column: 13, scope: !912)
!917 = !DILocation(line: 273, column: 12, scope: !912)
!918 = !DILocation(line: 273, column: 38, scope: !912)
!919 = !DILocation(line: 272, column: 12, scope: !912)
!920 = !DILocation(line: 272, column: 5, scope: !912)
!921 = !DILocation(line: 275, column: 13, scope: !912)
!922 = !DILocation(line: 275, column: 15, scope: !912)
!923 = !DILocation(line: 275, column: 18, scope: !912)
!924 = !DILocation(line: 275, column: 23, scope: !912)
!925 = !DILocation(line: 275, column: 20, scope: !912)
!926 = !DILocation(line: 275, column: 12, scope: !912)
!927 = !DILocation(line: 275, column: 5, scope: !912)
!928 = !DILocation(line: 277, column: 12, scope: !912)
!929 = !DILocation(line: 277, column: 17, scope: !912)
!930 = !DILocation(line: 277, column: 14, scope: !912)
!931 = !DILocation(line: 277, column: 5, scope: !912)
!932 = !DILocation(line: 279, column: 12, scope: !912)
!933 = !DILocation(line: 279, column: 17, scope: !912)
!934 = !DILocation(line: 279, column: 14, scope: !912)
!935 = !DILocation(line: 279, column: 5, scope: !912)
!936 = !DILocation(line: 281, column: 38, scope: !912)
!937 = !DILocation(line: 281, column: 40, scope: !912)
!938 = !DILocation(line: 281, column: 64, scope: !912)
!939 = !DILocation(line: 281, column: 69, scope: !912)
!940 = !DILocation(line: 282, column: 14, scope: !912)
!941 = !DILocation(line: 282, column: 16, scope: !912)
!942 = !DILocation(line: 282, column: 43, scope: !912)
!943 = !DILocation(line: 282, column: 68, scope: !912)
!944 = !DILocation(line: 281, column: 12, scope: !912)
!945 = !DILocation(line: 281, column: 5, scope: !912)
!946 = !DILocation(line: 287, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !6, line: 286, column: 29)
!948 = distinct !DILexicalBlock(scope: !912, file: !6, line: 286, column: 9)
!949 = !DILocation(line: 287, column: 18, scope: !947)
!950 = !DILocation(line: 287, column: 42, scope: !947)
!951 = !DILocation(line: 287, column: 47, scope: !947)
!952 = !DILocation(line: 288, column: 16, scope: !947)
!953 = !DILocation(line: 288, column: 18, scope: !947)
!954 = !DILocation(line: 288, column: 45, scope: !947)
!955 = !DILocation(line: 0, scope: !947)
!956 = !DILocation(line: 287, column: 14, scope: !947)
!957 = !DILocation(line: 287, column: 7, scope: !947)
!958 = !DILocation(line: 295, column: 12, scope: !912)
!959 = !DILocation(line: 295, column: 34, scope: !912)
!960 = !DILocation(line: 296, column: 32, scope: !912)
!961 = !DILocation(line: 296, column: 12, scope: !912)
!962 = !DILocation(line: 296, column: 52, scope: !912)
!963 = !DILocation(line: 296, column: 49, scope: !912)
!964 = !DILocation(line: 0, scope: !912)
!965 = !DILocation(line: 295, column: 5, scope: !912)
!966 = !DILocation(line: 298, column: 10, scope: !902)
!967 = !DILocation(line: 298, column: 32, scope: !902)
!968 = !DILocation(line: 298, column: 55, scope: !902)
!969 = !DILocation(line: 298, column: 35, scope: !902)
!970 = !DILocation(line: 298, column: 75, scope: !902)
!971 = !DILocation(line: 298, column: 72, scope: !902)
!972 = !DILocation(line: 0, scope: !902)
!973 = !DILocation(line: 298, column: 3, scope: !902)
!974 = !DILocation(line: 299, column: 1, scope: !902)
!975 = distinct !DISubprogram(name: "fiobj_data_read_str", scope: !3, file: !3, line: 493, type: !867, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!976 = !DILocalVariable(name: "io", arg: 1, scope: !975, file: !3, line: 493, type: !44)
!977 = !DILocation(line: 493, column: 49, scope: !975)
!978 = !DILocalVariable(name: "length", arg: 2, scope: !975, file: !3, line: 493, type: !130)
!979 = !DILocation(line: 493, column: 62, scope: !975)
!980 = !DILocation(line: 494, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 494, column: 7)
!982 = !DILocation(line: 494, column: 19, scope: !981)
!983 = !DILocation(line: 494, column: 26, scope: !981)
!984 = !DILocation(line: 494, column: 38, scope: !981)
!985 = !DILocation(line: 494, column: 23, scope: !981)
!986 = !DILocation(line: 494, column: 7, scope: !975)
!987 = !DILocation(line: 496, column: 28, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !3, line: 494, column: 43)
!989 = !DILocation(line: 496, column: 5, scope: !988)
!990 = !DILocation(line: 499, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !975, file: !3, line: 499, column: 7)
!992 = !DILocation(line: 499, column: 14, scope: !991)
!993 = !DILocation(line: 499, column: 7, scope: !975)
!994 = !DILocation(line: 501, column: 15, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 499, column: 20)
!996 = !DILocation(line: 501, column: 27, scope: !995)
!997 = !DILocation(line: 501, column: 33, scope: !995)
!998 = !DILocation(line: 501, column: 45, scope: !995)
!999 = !DILocation(line: 501, column: 31, scope: !995)
!1000 = !DILocation(line: 501, column: 52, scope: !995)
!1001 = !DILocation(line: 501, column: 50, scope: !995)
!1002 = !DILocation(line: 501, column: 12, scope: !995)
!1003 = !DILocation(line: 502, column: 3, scope: !995)
!1004 = !DILocation(line: 504, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !975, file: !3, line: 504, column: 7)
!1006 = !DILocation(line: 504, column: 14, scope: !1005)
!1007 = !DILocation(line: 504, column: 7, scope: !975)
!1008 = !DILocation(line: 506, column: 28, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 504, column: 20)
!1010 = !DILocation(line: 506, column: 5, scope: !1009)
!1011 = !DILocalVariable(name: "pos", scope: !975, file: !3, line: 510, type: !54)
!1012 = !DILocation(line: 510, column: 19, scope: !975)
!1013 = !DILocation(line: 510, column: 25, scope: !975)
!1014 = !DILocation(line: 510, column: 37, scope: !975)
!1015 = !DILocation(line: 511, column: 21, scope: !975)
!1016 = !DILocation(line: 511, column: 27, scope: !975)
!1017 = !DILocation(line: 511, column: 25, scope: !975)
!1018 = !DILocation(line: 511, column: 3, scope: !975)
!1019 = !DILocation(line: 511, column: 15, scope: !975)
!1020 = !DILocation(line: 511, column: 19, scope: !975)
!1021 = !DILocation(line: 512, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !975, file: !3, line: 512, column: 7)
!1023 = !DILocation(line: 512, column: 19, scope: !1022)
!1024 = !DILocation(line: 512, column: 25, scope: !1022)
!1025 = !DILocation(line: 512, column: 37, scope: !1022)
!1026 = !DILocation(line: 512, column: 23, scope: !1022)
!1027 = !DILocation(line: 512, column: 7, scope: !975)
!1028 = !DILocation(line: 513, column: 23, scope: !1022)
!1029 = !DILocation(line: 513, column: 35, scope: !1022)
!1030 = !DILocation(line: 513, column: 5, scope: !1022)
!1031 = !DILocation(line: 513, column: 17, scope: !1022)
!1032 = !DILocation(line: 513, column: 21, scope: !1022)
!1033 = !DILocation(line: 514, column: 26, scope: !975)
!1034 = !DILocation(line: 516, column: 15, scope: !975)
!1035 = !DILocation(line: 516, column: 27, scope: !975)
!1036 = !DILocation(line: 516, column: 33, scope: !975)
!1037 = !DILocation(line: 516, column: 31, scope: !975)
!1038 = !DILocation(line: 515, column: 24, scope: !975)
!1039 = !DILocation(line: 515, column: 36, scope: !975)
!1040 = !DILocation(line: 515, column: 45, scope: !975)
!1041 = !DILocation(line: 515, column: 43, scope: !975)
!1042 = !DILocation(line: 514, column: 3, scope: !975)
!1043 = !DILocation(line: 518, column: 1, scope: !975)
!1044 = distinct !DISubprogram(name: "fiobj_data_read_slice", scope: !3, file: !3, line: 521, type: !867, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1045 = !DILocalVariable(name: "io", arg: 1, scope: !1044, file: !3, line: 521, type: !44)
!1046 = !DILocation(line: 521, column: 51, scope: !1044)
!1047 = !DILocalVariable(name: "length", arg: 2, scope: !1044, file: !3, line: 521, type: !130)
!1048 = !DILocation(line: 521, column: 64, scope: !1044)
!1049 = !DILocation(line: 522, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 522, column: 7)
!1051 = !DILocation(line: 522, column: 19, scope: !1050)
!1052 = !DILocation(line: 522, column: 26, scope: !1050)
!1053 = !DILocation(line: 522, column: 38, scope: !1050)
!1054 = !DILocation(line: 522, column: 23, scope: !1050)
!1055 = !DILocation(line: 522, column: 7, scope: !1044)
!1056 = !DILocation(line: 524, column: 28, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 522, column: 43)
!1058 = !DILocation(line: 524, column: 5, scope: !1057)
!1059 = !DILocation(line: 526, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 526, column: 7)
!1061 = !DILocation(line: 526, column: 14, scope: !1060)
!1062 = !DILocation(line: 526, column: 7, scope: !1044)
!1063 = !DILocation(line: 528, column: 15, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 526, column: 20)
!1065 = !DILocation(line: 528, column: 27, scope: !1064)
!1066 = !DILocation(line: 528, column: 33, scope: !1064)
!1067 = !DILocation(line: 528, column: 45, scope: !1064)
!1068 = !DILocation(line: 528, column: 31, scope: !1064)
!1069 = !DILocation(line: 528, column: 52, scope: !1064)
!1070 = !DILocation(line: 528, column: 50, scope: !1064)
!1071 = !DILocation(line: 528, column: 12, scope: !1064)
!1072 = !DILocation(line: 529, column: 3, scope: !1064)
!1073 = !DILocation(line: 531, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 531, column: 7)
!1075 = !DILocation(line: 531, column: 14, scope: !1074)
!1076 = !DILocation(line: 531, column: 7, scope: !1044)
!1077 = !DILocation(line: 533, column: 28, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 531, column: 20)
!1079 = !DILocation(line: 533, column: 5, scope: !1078)
!1080 = !DILocalVariable(name: "pos", scope: !1044, file: !3, line: 535, type: !54)
!1081 = !DILocation(line: 535, column: 19, scope: !1044)
!1082 = !DILocation(line: 535, column: 25, scope: !1044)
!1083 = !DILocation(line: 535, column: 37, scope: !1044)
!1084 = !DILocation(line: 536, column: 21, scope: !1044)
!1085 = !DILocation(line: 536, column: 27, scope: !1044)
!1086 = !DILocation(line: 536, column: 25, scope: !1044)
!1087 = !DILocation(line: 536, column: 3, scope: !1044)
!1088 = !DILocation(line: 536, column: 15, scope: !1044)
!1089 = !DILocation(line: 536, column: 19, scope: !1044)
!1090 = !DILocation(line: 537, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 537, column: 7)
!1092 = !DILocation(line: 537, column: 19, scope: !1091)
!1093 = !DILocation(line: 537, column: 25, scope: !1091)
!1094 = !DILocation(line: 537, column: 37, scope: !1091)
!1095 = !DILocation(line: 537, column: 23, scope: !1091)
!1096 = !DILocation(line: 537, column: 7, scope: !1044)
!1097 = !DILocation(line: 538, column: 23, scope: !1091)
!1098 = !DILocation(line: 538, column: 35, scope: !1091)
!1099 = !DILocation(line: 538, column: 5, scope: !1091)
!1100 = !DILocation(line: 538, column: 17, scope: !1091)
!1101 = !DILocation(line: 538, column: 21, scope: !1091)
!1102 = !DILocation(line: 539, column: 27, scope: !1044)
!1103 = !DILocation(line: 539, column: 39, scope: !1044)
!1104 = !DILocation(line: 539, column: 46, scope: !1044)
!1105 = !DILocation(line: 539, column: 54, scope: !1044)
!1106 = !DILocation(line: 539, column: 60, scope: !1044)
!1107 = !DILocation(line: 539, column: 72, scope: !1044)
!1108 = !DILocation(line: 539, column: 58, scope: !1044)
!1109 = !DILocation(line: 540, column: 28, scope: !1044)
!1110 = !DILocation(line: 540, column: 40, scope: !1044)
!1111 = !DILocation(line: 540, column: 46, scope: !1044)
!1112 = !DILocation(line: 540, column: 44, scope: !1044)
!1113 = !DILocation(line: 539, column: 10, scope: !1044)
!1114 = !DILocation(line: 539, column: 3, scope: !1044)
!1115 = !DILocation(line: 541, column: 1, scope: !1044)
!1116 = distinct !DISubprogram(name: "fiobj_data_read_file", scope: !3, file: !3, line: 544, type: !867, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1117 = !DILocalVariable(name: "io", arg: 1, scope: !1116, file: !3, line: 544, type: !44)
!1118 = !DILocation(line: 544, column: 50, scope: !1116)
!1119 = !DILocalVariable(name: "length", arg: 2, scope: !1116, file: !3, line: 544, type: !130)
!1120 = !DILocation(line: 544, column: 63, scope: !1116)
!1121 = !DILocalVariable(name: "fsize", scope: !1116, file: !3, line: 545, type: !45)
!1122 = !DILocation(line: 545, column: 13, scope: !1116)
!1123 = !DILocation(line: 545, column: 44, scope: !1116)
!1124 = !DILocation(line: 545, column: 21, scope: !1116)
!1125 = !DILocation(line: 547, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 547, column: 7)
!1127 = !DILocation(line: 547, column: 14, scope: !1126)
!1128 = !DILocation(line: 547, column: 7, scope: !1116)
!1129 = !DILocation(line: 549, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 547, column: 20)
!1131 = !DILocation(line: 549, column: 23, scope: !1130)
!1132 = !DILocation(line: 549, column: 35, scope: !1130)
!1133 = !DILocation(line: 549, column: 42, scope: !1130)
!1134 = !DILocation(line: 549, column: 21, scope: !1130)
!1135 = !DILocation(line: 549, column: 50, scope: !1130)
!1136 = !DILocation(line: 549, column: 48, scope: !1130)
!1137 = !DILocation(line: 549, column: 12, scope: !1130)
!1138 = !DILocation(line: 550, column: 3, scope: !1130)
!1139 = !DILocation(line: 552, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 552, column: 7)
!1141 = !DILocation(line: 552, column: 14, scope: !1140)
!1142 = !DILocation(line: 552, column: 7, scope: !1116)
!1143 = !DILocation(line: 554, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 552, column: 20)
!1145 = !DILocation(line: 554, column: 11, scope: !1144)
!1146 = !DILocation(line: 555, column: 28, scope: !1144)
!1147 = !DILocation(line: 555, column: 5, scope: !1144)
!1148 = !DILocation(line: 559, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 559, column: 7)
!1150 = !DILocation(line: 559, column: 16, scope: !1149)
!1151 = !DILocation(line: 559, column: 28, scope: !1149)
!1152 = !DILocation(line: 559, column: 14, scope: !1149)
!1153 = !DILocation(line: 559, column: 35, scope: !1149)
!1154 = !DILocation(line: 559, column: 47, scope: !1149)
!1155 = !DILocation(line: 559, column: 32, scope: !1149)
!1156 = !DILocation(line: 559, column: 7, scope: !1116)
!1157 = !DILocalVariable(name: "data", scope: !1158, file: !3, line: 562, type: !119)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 559, column: 52)
!1159 = !DILocation(line: 562, column: 20, scope: !1158)
!1160 = !DILocation(line: 562, column: 27, scope: !1158)
!1161 = !DILocation(line: 564, column: 46, scope: !1158)
!1162 = !DILocation(line: 563, column: 41, scope: !1158)
!1163 = !DILocation(line: 563, column: 53, scope: !1158)
!1164 = !DILocation(line: 563, column: 62, scope: !1158)
!1165 = !DILocation(line: 563, column: 74, scope: !1158)
!1166 = !DILocation(line: 563, column: 60, scope: !1158)
!1167 = !DILocation(line: 565, column: 24, scope: !1158)
!1168 = !DILocation(line: 565, column: 5, scope: !1158)
!1169 = !DILocation(line: 565, column: 17, scope: !1158)
!1170 = !DILocation(line: 565, column: 21, scope: !1158)
!1171 = !DILocation(line: 566, column: 32, scope: !1158)
!1172 = !DILocation(line: 566, column: 5, scope: !1158)
!1173 = !DILocation(line: 566, column: 17, scope: !1158)
!1174 = !DILocation(line: 566, column: 24, scope: !1158)
!1175 = !DILocation(line: 566, column: 29, scope: !1158)
!1176 = !DILocation(line: 567, column: 5, scope: !1158)
!1177 = !DILocation(line: 571, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 568, column: 10)
!1179 = !DILocation(line: 571, column: 17, scope: !1178)
!1180 = !DILocation(line: 571, column: 21, scope: !1178)
!1181 = !DILocation(line: 572, column: 5, scope: !1178)
!1182 = !DILocation(line: 572, column: 17, scope: !1178)
!1183 = !DILocation(line: 572, column: 21, scope: !1178)
!1184 = !DILocation(line: 573, column: 26, scope: !1178)
!1185 = !DILocation(line: 573, column: 30, scope: !1178)
!1186 = !DILocation(line: 573, column: 5, scope: !1178)
!1187 = !DILocalVariable(name: "l", scope: !1178, file: !3, line: 574, type: !669)
!1188 = !DILocation(line: 574, column: 13, scope: !1178)
!1189 = !DILocation(line: 574, column: 5, scope: !1178)
!1190 = !DILabel(scope: !1178, name: "retry_int", file: !3, line: 575)
!1191 = !DILocation(line: 575, column: 3, scope: !1178)
!1192 = !DILocation(line: 576, column: 15, scope: !1178)
!1193 = !DILocation(line: 576, column: 27, scope: !1178)
!1194 = !DILocation(line: 576, column: 31, scope: !1178)
!1195 = !DILocation(line: 576, column: 43, scope: !1178)
!1196 = !DILocation(line: 576, column: 51, scope: !1178)
!1197 = !DILocation(line: 577, column: 15, scope: !1178)
!1198 = !DILocation(line: 577, column: 27, scope: !1178)
!1199 = !DILocation(line: 577, column: 34, scope: !1178)
!1200 = !DILocation(line: 576, column: 9, scope: !1178)
!1201 = !DILocation(line: 576, column: 7, scope: !1178)
!1202 = !DILocation(line: 578, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 578, column: 9)
!1204 = !DILocation(line: 578, column: 11, scope: !1203)
!1205 = !DILocation(line: 578, column: 17, scope: !1203)
!1206 = !DILocation(line: 578, column: 20, scope: !1203)
!1207 = !DILocation(line: 578, column: 26, scope: !1203)
!1208 = !DILocation(line: 578, column: 9, scope: !1178)
!1209 = !DILocation(line: 579, column: 7, scope: !1203)
!1210 = !DILocation(line: 580, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 580, column: 9)
!1212 = !DILocation(line: 580, column: 11, scope: !1211)
!1213 = !DILocation(line: 580, column: 17, scope: !1211)
!1214 = !DILocation(line: 580, column: 20, scope: !1211)
!1215 = !DILocation(line: 580, column: 22, scope: !1211)
!1216 = !DILocation(line: 580, column: 9, scope: !1178)
!1217 = !DILocation(line: 581, column: 30, scope: !1211)
!1218 = !DILocation(line: 581, column: 7, scope: !1211)
!1219 = !DILocation(line: 582, column: 32, scope: !1178)
!1220 = !DILocation(line: 582, column: 5, scope: !1178)
!1221 = !DILocation(line: 582, column: 17, scope: !1178)
!1222 = !DILocation(line: 582, column: 24, scope: !1178)
!1223 = !DILocation(line: 582, column: 29, scope: !1178)
!1224 = !DILocation(line: 583, column: 28, scope: !1178)
!1225 = !DILocation(line: 583, column: 72, scope: !1178)
!1226 = !DILocation(line: 583, column: 45, scope: !1178)
!1227 = !DILocation(line: 583, column: 57, scope: !1178)
!1228 = !DILocation(line: 583, column: 5, scope: !1178)
!1229 = !DILocation(line: 585, column: 1, scope: !1116)
!1230 = distinct !DISubprogram(name: "fiobj_data_read2ch", scope: !3, file: !3, line: 709, type: !1231, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!119, !44, !38}
!1233 = !DILocalVariable(name: "io", arg: 1, scope: !1230, file: !3, line: 709, type: !44)
!1234 = !DILocation(line: 709, column: 41, scope: !1230)
!1235 = !DILocalVariable(name: "token", arg: 2, scope: !1230, file: !3, line: 709, type: !38)
!1236 = !DILocation(line: 709, column: 53, scope: !1230)
!1237 = !DILocation(line: 710, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 710, column: 7)
!1239 = !DILocation(line: 710, column: 11, scope: !1238)
!1240 = !DILocation(line: 710, column: 15, scope: !1238)
!1241 = !DILocation(line: 710, column: 7, scope: !1230)
!1242 = !DILocation(line: 711, column: 5, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 710, column: 48)
!1244 = !DILocation(line: 711, column: 11, scope: !1243)
!1245 = !DILocation(line: 712, column: 28, scope: !1243)
!1246 = !DILocation(line: 712, column: 5, scope: !1243)
!1247 = !DILocation(line: 714, column: 11, scope: !1230)
!1248 = !DILocation(line: 714, column: 23, scope: !1230)
!1249 = !DILocation(line: 714, column: 3, scope: !1230)
!1250 = !DILocation(line: 716, column: 35, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 714, column: 27)
!1252 = !DILocation(line: 716, column: 39, scope: !1251)
!1253 = !DILocation(line: 716, column: 12, scope: !1251)
!1254 = !DILocation(line: 716, column: 5, scope: !1251)
!1255 = !DILocation(line: 719, column: 37, scope: !1251)
!1256 = !DILocation(line: 719, column: 41, scope: !1251)
!1257 = !DILocation(line: 719, column: 12, scope: !1251)
!1258 = !DILocation(line: 719, column: 5, scope: !1251)
!1259 = !DILocation(line: 722, column: 36, scope: !1251)
!1260 = !DILocation(line: 722, column: 40, scope: !1251)
!1261 = !DILocation(line: 722, column: 12, scope: !1251)
!1262 = !DILocation(line: 722, column: 5, scope: !1251)
!1263 = !DILocation(line: 724, column: 1, scope: !1230)
!1264 = distinct !DISubprogram(name: "fiobj_data_read2ch_str", scope: !3, file: !3, line: 615, type: !1231, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1265 = !DILocalVariable(name: "io", arg: 1, scope: !1264, file: !3, line: 615, type: !44)
!1266 = !DILocation(line: 615, column: 52, scope: !1264)
!1267 = !DILocalVariable(name: "token", arg: 2, scope: !1264, file: !3, line: 615, type: !38)
!1268 = !DILocation(line: 615, column: 64, scope: !1264)
!1269 = !DILocation(line: 616, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 616, column: 7)
!1271 = !DILocation(line: 616, column: 19, scope: !1270)
!1272 = !DILocation(line: 616, column: 26, scope: !1270)
!1273 = !DILocation(line: 616, column: 38, scope: !1270)
!1274 = !DILocation(line: 616, column: 23, scope: !1270)
!1275 = !DILocation(line: 616, column: 7, scope: !1264)
!1276 = !DILocation(line: 617, column: 28, scope: !1270)
!1277 = !DILocation(line: 617, column: 5, scope: !1270)
!1278 = !DILocalVariable(name: "pos", scope: !1264, file: !3, line: 619, type: !37)
!1279 = !DILocation(line: 619, column: 12, scope: !1264)
!1280 = !DILocation(line: 619, column: 18, scope: !1264)
!1281 = !DILocation(line: 619, column: 30, scope: !1264)
!1282 = !DILocation(line: 619, column: 39, scope: !1264)
!1283 = !DILocation(line: 619, column: 51, scope: !1264)
!1284 = !DILocation(line: 619, column: 37, scope: !1264)
!1285 = !DILocalVariable(name: "lim", scope: !1264, file: !3, line: 620, type: !37)
!1286 = !DILocation(line: 620, column: 12, scope: !1264)
!1287 = !DILocation(line: 620, column: 18, scope: !1264)
!1288 = !DILocation(line: 620, column: 30, scope: !1264)
!1289 = !DILocation(line: 620, column: 39, scope: !1264)
!1290 = !DILocation(line: 620, column: 51, scope: !1264)
!1291 = !DILocation(line: 620, column: 37, scope: !1264)
!1292 = !DILocation(line: 621, column: 20, scope: !1264)
!1293 = !DILocation(line: 621, column: 25, scope: !1264)
!1294 = !DILocation(line: 621, column: 3, scope: !1264)
!1295 = !DILocalVariable(name: "ret", scope: !1264, file: !3, line: 622, type: !119)
!1296 = !DILocation(line: 622, column: 18, scope: !1264)
!1297 = !DILocation(line: 622, column: 40, scope: !1264)
!1298 = !DILocation(line: 624, column: 26, scope: !1264)
!1299 = !DILocation(line: 624, column: 32, scope: !1264)
!1300 = !DILocation(line: 624, column: 44, scope: !1264)
!1301 = !DILocation(line: 624, column: 30, scope: !1264)
!1302 = !DILocation(line: 624, column: 54, scope: !1264)
!1303 = !DILocation(line: 624, column: 66, scope: !1264)
!1304 = !DILocation(line: 624, column: 52, scope: !1264)
!1305 = !DILocation(line: 623, column: 23, scope: !1264)
!1306 = !DILocation(line: 623, column: 35, scope: !1264)
!1307 = !DILocation(line: 623, column: 44, scope: !1264)
!1308 = !DILocation(line: 623, column: 56, scope: !1264)
!1309 = !DILocation(line: 623, column: 42, scope: !1264)
!1310 = !DILocation(line: 626, column: 33, scope: !1264)
!1311 = !DILocation(line: 626, column: 39, scope: !1264)
!1312 = !DILocation(line: 626, column: 51, scope: !1264)
!1313 = !DILocation(line: 626, column: 37, scope: !1264)
!1314 = !DILocation(line: 626, column: 3, scope: !1264)
!1315 = !DILocation(line: 626, column: 15, scope: !1264)
!1316 = !DILocation(line: 626, column: 19, scope: !1264)
!1317 = !DILocation(line: 627, column: 10, scope: !1264)
!1318 = !DILocation(line: 627, column: 3, scope: !1264)
!1319 = !DILocation(line: 628, column: 1, scope: !1264)
!1320 = distinct !DISubprogram(name: "fiobj_data_read2ch_slice", scope: !3, file: !3, line: 630, type: !1231, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1321 = !DILocalVariable(name: "io", arg: 1, scope: !1320, file: !3, line: 630, type: !44)
!1322 = !DILocation(line: 630, column: 54, scope: !1320)
!1323 = !DILocalVariable(name: "token", arg: 2, scope: !1320, file: !3, line: 630, type: !38)
!1324 = !DILocation(line: 630, column: 66, scope: !1320)
!1325 = !DILocation(line: 631, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 631, column: 7)
!1327 = !DILocation(line: 631, column: 19, scope: !1326)
!1328 = !DILocation(line: 631, column: 26, scope: !1326)
!1329 = !DILocation(line: 631, column: 38, scope: !1326)
!1330 = !DILocation(line: 631, column: 23, scope: !1326)
!1331 = !DILocation(line: 631, column: 7, scope: !1320)
!1332 = !DILocation(line: 632, column: 28, scope: !1326)
!1333 = !DILocation(line: 632, column: 5, scope: !1326)
!1334 = !DILocalVariable(name: "old_pos", scope: !1320, file: !3, line: 633, type: !54)
!1335 = !DILocation(line: 633, column: 10, scope: !1320)
!1336 = !DILocation(line: 633, column: 20, scope: !1320)
!1337 = !DILocation(line: 633, column: 55, scope: !1320)
!1338 = !DILocation(line: 634, column: 44, scope: !1320)
!1339 = !DILocation(line: 634, column: 56, scope: !1320)
!1340 = !DILocation(line: 634, column: 63, scope: !1320)
!1341 = !DILocation(line: 634, column: 75, scope: !1320)
!1342 = !DILocation(line: 634, column: 61, scope: !1320)
!1343 = !DILocation(line: 634, column: 3, scope: !1320)
!1344 = !DILocation(line: 634, column: 38, scope: !1320)
!1345 = !DILocation(line: 634, column: 42, scope: !1320)
!1346 = !DILocalVariable(name: "tmp", scope: !1320, file: !3, line: 635, type: !119)
!1347 = !DILocation(line: 635, column: 18, scope: !1320)
!1348 = !DILocation(line: 635, column: 43, scope: !1320)
!1349 = !DILocation(line: 635, column: 55, scope: !1320)
!1350 = !DILocation(line: 635, column: 62, scope: !1320)
!1351 = !DILocation(line: 635, column: 70, scope: !1320)
!1352 = !DILocation(line: 635, column: 24, scope: !1320)
!1353 = !DILocation(line: 636, column: 44, scope: !1320)
!1354 = !DILocation(line: 636, column: 3, scope: !1320)
!1355 = !DILocation(line: 636, column: 38, scope: !1320)
!1356 = !DILocation(line: 636, column: 42, scope: !1320)
!1357 = !DILocation(line: 637, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 637, column: 7)
!1359 = !DILocation(line: 637, column: 17, scope: !1358)
!1360 = !DILocation(line: 637, column: 29, scope: !1358)
!1361 = !DILocation(line: 637, column: 15, scope: !1358)
!1362 = !DILocation(line: 637, column: 35, scope: !1358)
!1363 = !DILocation(line: 637, column: 47, scope: !1358)
!1364 = !DILocation(line: 637, column: 33, scope: !1358)
!1365 = !DILocation(line: 637, column: 7, scope: !1320)
!1366 = !DILocation(line: 639, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 637, column: 52)
!1368 = !DILocation(line: 639, column: 27, scope: !1367)
!1369 = !DILocation(line: 639, column: 33, scope: !1367)
!1370 = !DILocation(line: 639, column: 45, scope: !1367)
!1371 = !DILocation(line: 639, column: 31, scope: !1367)
!1372 = !DILocation(line: 639, column: 9, scope: !1367)
!1373 = !DILocation(line: 639, column: 13, scope: !1367)
!1374 = !DILocation(line: 640, column: 23, scope: !1367)
!1375 = !DILocation(line: 640, column: 35, scope: !1367)
!1376 = !DILocation(line: 640, column: 5, scope: !1367)
!1377 = !DILocation(line: 640, column: 17, scope: !1367)
!1378 = !DILocation(line: 640, column: 21, scope: !1367)
!1379 = !DILocation(line: 641, column: 12, scope: !1367)
!1380 = !DILocation(line: 641, column: 5, scope: !1367)
!1381 = !DILocation(line: 643, column: 10, scope: !1320)
!1382 = !DILocation(line: 643, column: 3, scope: !1320)
!1383 = !DILocation(line: 644, column: 1, scope: !1320)
!1384 = distinct !DISubprogram(name: "fiobj_data_read2ch_file", scope: !3, file: !3, line: 646, type: !1231, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1385 = !DILocalVariable(name: "io", arg: 1, scope: !1384, file: !3, line: 646, type: !44)
!1386 = !DILocation(line: 646, column: 53, scope: !1384)
!1387 = !DILocalVariable(name: "token", arg: 2, scope: !1384, file: !3, line: 646, type: !38)
!1388 = !DILocation(line: 646, column: 65, scope: !1384)
!1389 = !DILocalVariable(name: "pos", scope: !1384, file: !3, line: 647, type: !37)
!1390 = !DILocation(line: 647, column: 12, scope: !1384)
!1391 = !DILocation(line: 647, column: 18, scope: !1384)
!1392 = !DILocation(line: 647, column: 30, scope: !1384)
!1393 = !DILocation(line: 647, column: 39, scope: !1384)
!1394 = !DILocation(line: 647, column: 51, scope: !1384)
!1395 = !DILocation(line: 647, column: 37, scope: !1384)
!1396 = !DILocalVariable(name: "lim", scope: !1384, file: !3, line: 648, type: !37)
!1397 = !DILocation(line: 648, column: 12, scope: !1384)
!1398 = !DILocation(line: 648, column: 18, scope: !1384)
!1399 = !DILocation(line: 648, column: 30, scope: !1384)
!1400 = !DILocation(line: 648, column: 39, scope: !1384)
!1401 = !DILocation(line: 648, column: 51, scope: !1384)
!1402 = !DILocation(line: 648, column: 37, scope: !1384)
!1403 = !DILocation(line: 649, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 649, column: 7)
!1405 = !DILocation(line: 649, column: 14, scope: !1404)
!1406 = !DILocation(line: 649, column: 11, scope: !1404)
!1407 = !DILocation(line: 649, column: 18, scope: !1404)
!1408 = !DILocation(line: 649, column: 38, scope: !1404)
!1409 = !DILocation(line: 649, column: 43, scope: !1404)
!1410 = !DILocation(line: 649, column: 21, scope: !1404)
!1411 = !DILocation(line: 649, column: 7, scope: !1384)
!1412 = !DILocalVariable(name: "delta", scope: !1413, file: !3, line: 651, type: !1414)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 649, column: 51)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1415 = !DILocation(line: 651, column: 21, scope: !1413)
!1416 = !DILocation(line: 652, column: 21, scope: !1413)
!1417 = !DILocation(line: 652, column: 28, scope: !1413)
!1418 = !DILocation(line: 652, column: 40, scope: !1413)
!1419 = !DILocation(line: 652, column: 49, scope: !1413)
!1420 = !DILocation(line: 652, column: 61, scope: !1413)
!1421 = !DILocation(line: 652, column: 47, scope: !1413)
!1422 = !DILocation(line: 652, column: 25, scope: !1413)
!1423 = !DILocation(line: 653, column: 24, scope: !1413)
!1424 = !DILocation(line: 653, column: 5, scope: !1413)
!1425 = !DILocation(line: 653, column: 17, scope: !1413)
!1426 = !DILocation(line: 653, column: 21, scope: !1413)
!1427 = !DILocation(line: 654, column: 32, scope: !1413)
!1428 = !DILocation(line: 654, column: 5, scope: !1413)
!1429 = !DILocation(line: 654, column: 17, scope: !1413)
!1430 = !DILocation(line: 654, column: 24, scope: !1413)
!1431 = !DILocation(line: 654, column: 29, scope: !1413)
!1432 = !DILocation(line: 655, column: 28, scope: !1413)
!1433 = !DILocation(line: 659, column: 16, scope: !1413)
!1434 = !DILocation(line: 657, column: 22, scope: !1413)
!1435 = !DILocation(line: 657, column: 32, scope: !1413)
!1436 = !DILocation(line: 657, column: 44, scope: !1413)
!1437 = !DILocation(line: 657, column: 53, scope: !1413)
!1438 = !DILocation(line: 657, column: 65, scope: !1413)
!1439 = !DILocation(line: 657, column: 51, scope: !1413)
!1440 = !DILocation(line: 657, column: 72, scope: !1413)
!1441 = !DILocation(line: 657, column: 70, scope: !1413)
!1442 = !DILocation(line: 655, column: 5, scope: !1413)
!1443 = !DILocation(line: 663, column: 3, scope: !1384)
!1444 = !DILocation(line: 663, column: 15, scope: !1384)
!1445 = !DILocation(line: 663, column: 19, scope: !1384)
!1446 = !DILocation(line: 664, column: 3, scope: !1384)
!1447 = !DILocation(line: 664, column: 15, scope: !1384)
!1448 = !DILocation(line: 664, column: 19, scope: !1384)
!1449 = !DILocation(line: 666, column: 3, scope: !1384)
!1450 = !DILocalVariable(name: "tmp", scope: !1451, file: !3, line: 667, type: !669)
!1451 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 666, column: 13)
!1452 = !DILocation(line: 667, column: 13, scope: !1451)
!1453 = !DILocation(line: 668, column: 26, scope: !1451)
!1454 = !DILocation(line: 668, column: 5, scope: !1451)
!1455 = !DILabel(scope: !1451, name: "retry_int", file: !3, line: 669)
!1456 = !DILocation(line: 669, column: 3, scope: !1451)
!1457 = !DILocation(line: 670, column: 17, scope: !1451)
!1458 = !DILocation(line: 670, column: 29, scope: !1451)
!1459 = !DILocation(line: 670, column: 33, scope: !1451)
!1460 = !DILocation(line: 670, column: 45, scope: !1451)
!1461 = !DILocation(line: 670, column: 54, scope: !1451)
!1462 = !DILocation(line: 670, column: 66, scope: !1451)
!1463 = !DILocation(line: 670, column: 52, scope: !1451)
!1464 = !DILocation(line: 671, column: 17, scope: !1451)
!1465 = !DILocation(line: 671, column: 29, scope: !1451)
!1466 = !DILocation(line: 671, column: 36, scope: !1451)
!1467 = !DILocation(line: 671, column: 43, scope: !1451)
!1468 = !DILocation(line: 671, column: 55, scope: !1451)
!1469 = !DILocation(line: 671, column: 41, scope: !1451)
!1470 = !DILocation(line: 670, column: 11, scope: !1451)
!1471 = !DILocation(line: 670, column: 9, scope: !1451)
!1472 = !DILocation(line: 672, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 672, column: 9)
!1474 = !DILocation(line: 672, column: 13, scope: !1473)
!1475 = !DILocation(line: 672, column: 17, scope: !1473)
!1476 = !DILocation(line: 672, column: 20, scope: !1473)
!1477 = !DILocation(line: 672, column: 26, scope: !1473)
!1478 = !DILocation(line: 672, column: 9, scope: !1451)
!1479 = !DILocation(line: 673, column: 7, scope: !1473)
!1480 = !DILocation(line: 674, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 674, column: 9)
!1482 = !DILocation(line: 674, column: 13, scope: !1481)
!1483 = !DILocation(line: 674, column: 17, scope: !1481)
!1484 = !DILocation(line: 674, column: 21, scope: !1481)
!1485 = !DILocation(line: 674, column: 25, scope: !1481)
!1486 = !DILocation(line: 674, column: 30, scope: !1481)
!1487 = !DILocation(line: 674, column: 33, scope: !1481)
!1488 = !DILocation(line: 674, column: 45, scope: !1481)
!1489 = !DILocation(line: 674, column: 49, scope: !1481)
!1490 = !DILocation(line: 674, column: 9, scope: !1451)
!1491 = !DILocation(line: 675, column: 30, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 674, column: 56)
!1493 = !DILocation(line: 675, column: 7, scope: !1492)
!1494 = !DILocation(line: 677, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 677, column: 9)
!1496 = !DILocation(line: 677, column: 13, scope: !1495)
!1497 = !DILocation(line: 677, column: 9, scope: !1451)
!1498 = !DILocation(line: 678, column: 34, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 677, column: 19)
!1500 = !DILocation(line: 678, column: 46, scope: !1499)
!1501 = !DILocation(line: 678, column: 7, scope: !1499)
!1502 = !DILocation(line: 678, column: 19, scope: !1499)
!1503 = !DILocation(line: 678, column: 26, scope: !1499)
!1504 = !DILocation(line: 678, column: 31, scope: !1499)
!1505 = !DILocation(line: 679, column: 30, scope: !1499)
!1506 = !DILocation(line: 680, column: 38, scope: !1499)
!1507 = !DILocation(line: 680, column: 50, scope: !1499)
!1508 = !DILocation(line: 679, column: 47, scope: !1499)
!1509 = !DILocation(line: 679, column: 59, scope: !1499)
!1510 = !DILocation(line: 679, column: 7, scope: !1499)
!1511 = !DILocation(line: 682, column: 24, scope: !1451)
!1512 = !DILocation(line: 682, column: 5, scope: !1451)
!1513 = !DILocation(line: 682, column: 17, scope: !1451)
!1514 = !DILocation(line: 682, column: 21, scope: !1451)
!1515 = !DILocation(line: 683, column: 11, scope: !1451)
!1516 = !DILocation(line: 683, column: 23, scope: !1451)
!1517 = !DILocation(line: 683, column: 9, scope: !1451)
!1518 = !DILocation(line: 684, column: 11, scope: !1451)
!1519 = !DILocation(line: 684, column: 23, scope: !1451)
!1520 = !DILocation(line: 684, column: 32, scope: !1451)
!1521 = !DILocation(line: 684, column: 44, scope: !1451)
!1522 = !DILocation(line: 684, column: 30, scope: !1451)
!1523 = !DILocation(line: 684, column: 9, scope: !1451)
!1524 = !DILocation(line: 685, column: 26, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 685, column: 9)
!1526 = !DILocation(line: 685, column: 31, scope: !1525)
!1527 = !DILocation(line: 685, column: 9, scope: !1525)
!1528 = !DILocation(line: 685, column: 9, scope: !1451)
!1529 = !DILocalVariable(name: "delta", scope: !1530, file: !3, line: 686, type: !1414)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 685, column: 39)
!1531 = !DILocation(line: 686, column: 23, scope: !1530)
!1532 = !DILocation(line: 687, column: 23, scope: !1530)
!1533 = !DILocation(line: 687, column: 30, scope: !1530)
!1534 = !DILocation(line: 687, column: 42, scope: !1530)
!1535 = !DILocation(line: 687, column: 51, scope: !1530)
!1536 = !DILocation(line: 687, column: 63, scope: !1530)
!1537 = !DILocation(line: 687, column: 49, scope: !1530)
!1538 = !DILocation(line: 687, column: 27, scope: !1530)
!1539 = !DILocation(line: 688, column: 25, scope: !1530)
!1540 = !DILocation(line: 688, column: 7, scope: !1530)
!1541 = !DILocation(line: 688, column: 19, scope: !1530)
!1542 = !DILocation(line: 688, column: 23, scope: !1530)
!1543 = !DILocation(line: 689, column: 34, scope: !1530)
!1544 = !DILocation(line: 689, column: 7, scope: !1530)
!1545 = !DILocation(line: 689, column: 19, scope: !1530)
!1546 = !DILocation(line: 689, column: 26, scope: !1530)
!1547 = !DILocation(line: 689, column: 31, scope: !1530)
!1548 = !DILocation(line: 690, column: 30, scope: !1530)
!1549 = !DILocation(line: 692, column: 18, scope: !1530)
!1550 = !DILocation(line: 691, column: 27, scope: !1530)
!1551 = !DILocation(line: 691, column: 39, scope: !1530)
!1552 = !DILocation(line: 690, column: 7, scope: !1530)
!1553 = distinct !{!1553, !1449, !1554}
!1554 = !DILocation(line: 695, column: 3, scope: !1384)
!1555 = !DILocation(line: 696, column: 1, scope: !1384)
!1556 = distinct !DISubprogram(name: "fiobj_data_pos", scope: !3, file: !3, line: 733, type: !599, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1557 = !DILocalVariable(name: "io", arg: 1, scope: !1556, file: !3, line: 733, type: !44)
!1558 = !DILocation(line: 733, column: 31, scope: !1556)
!1559 = !DILocation(line: 734, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 734, column: 7)
!1561 = !DILocation(line: 734, column: 11, scope: !1560)
!1562 = !DILocation(line: 734, column: 15, scope: !1560)
!1563 = !DILocation(line: 734, column: 7, scope: !1556)
!1564 = !DILocation(line: 735, column: 5, scope: !1560)
!1565 = !DILocation(line: 736, column: 11, scope: !1556)
!1566 = !DILocation(line: 736, column: 23, scope: !1556)
!1567 = !DILocation(line: 736, column: 3, scope: !1556)
!1568 = !DILocation(line: 739, column: 12, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 736, column: 27)
!1570 = !DILocation(line: 739, column: 24, scope: !1569)
!1571 = !DILocation(line: 739, column: 5, scope: !1569)
!1572 = !DILocation(line: 742, column: 12, scope: !1569)
!1573 = !DILocation(line: 742, column: 24, scope: !1569)
!1574 = !DILocation(line: 742, column: 31, scope: !1569)
!1575 = !DILocation(line: 742, column: 5, scope: !1569)
!1576 = !DILocation(line: 744, column: 1, scope: !1556)
!1577 = distinct !DISubprogram(name: "fiobj_data_seek", scope: !3, file: !3, line: 758, type: !1578, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !44, !130}
!1580 = !DILocalVariable(name: "io", arg: 1, scope: !1577, file: !3, line: 758, type: !44)
!1581 = !DILocation(line: 758, column: 28, scope: !1577)
!1582 = !DILocalVariable(name: "position", arg: 2, scope: !1577, file: !3, line: 758, type: !130)
!1583 = !DILocation(line: 758, column: 41, scope: !1577)
!1584 = !DILocation(line: 759, column: 8, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 759, column: 7)
!1586 = !DILocation(line: 759, column: 11, scope: !1585)
!1587 = !DILocation(line: 759, column: 15, scope: !1585)
!1588 = !DILocation(line: 759, column: 7, scope: !1577)
!1589 = !DILocation(line: 760, column: 5, scope: !1585)
!1590 = !DILocation(line: 761, column: 11, scope: !1577)
!1591 = !DILocation(line: 761, column: 23, scope: !1577)
!1592 = !DILocation(line: 761, column: 3, scope: !1577)
!1593 = !DILocation(line: 765, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 765, column: 9)
!1595 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 761, column: 27)
!1596 = !DILocation(line: 765, column: 18, scope: !1594)
!1597 = !DILocation(line: 765, column: 9, scope: !1595)
!1598 = !DILocation(line: 766, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 765, column: 24)
!1600 = !DILocation(line: 766, column: 19, scope: !1599)
!1601 = !DILocation(line: 766, column: 23, scope: !1599)
!1602 = !DILocation(line: 767, column: 7, scope: !1599)
!1603 = !DILocation(line: 769, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 769, column: 9)
!1605 = !DILocation(line: 769, column: 18, scope: !1604)
!1606 = !DILocation(line: 769, column: 9, scope: !1595)
!1607 = !DILocation(line: 770, column: 22, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 770, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 769, column: 23)
!1610 = !DILocation(line: 770, column: 33, scope: !1608)
!1611 = !DILocation(line: 770, column: 45, scope: !1608)
!1612 = !DILocation(line: 770, column: 31, scope: !1608)
!1613 = !DILocation(line: 770, column: 11, scope: !1609)
!1614 = !DILocation(line: 771, column: 20, scope: !1608)
!1615 = !DILocation(line: 771, column: 32, scope: !1608)
!1616 = !DILocation(line: 771, column: 18, scope: !1608)
!1617 = !DILocation(line: 771, column: 9, scope: !1608)
!1618 = !DILocation(line: 772, column: 25, scope: !1609)
!1619 = !DILocation(line: 772, column: 7, scope: !1609)
!1620 = !DILocation(line: 772, column: 19, scope: !1609)
!1621 = !DILocation(line: 772, column: 23, scope: !1609)
!1622 = !DILocation(line: 773, column: 7, scope: !1609)
!1623 = !DILocation(line: 775, column: 21, scope: !1595)
!1624 = !DILocation(line: 775, column: 19, scope: !1595)
!1625 = !DILocation(line: 775, column: 14, scope: !1595)
!1626 = !DILocation(line: 776, column: 20, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 776, column: 9)
!1628 = !DILocation(line: 776, column: 31, scope: !1627)
!1629 = !DILocation(line: 776, column: 43, scope: !1627)
!1630 = !DILocation(line: 776, column: 29, scope: !1627)
!1631 = !DILocation(line: 776, column: 9, scope: !1595)
!1632 = !DILocation(line: 777, column: 16, scope: !1627)
!1633 = !DILocation(line: 777, column: 7, scope: !1627)
!1634 = !DILocation(line: 779, column: 18, scope: !1627)
!1635 = !DILocation(line: 779, column: 30, scope: !1627)
!1636 = !DILocation(line: 779, column: 36, scope: !1627)
!1637 = !DILocation(line: 779, column: 34, scope: !1627)
!1638 = !DILocation(line: 779, column: 16, scope: !1627)
!1639 = !DILocation(line: 780, column: 23, scope: !1595)
!1640 = !DILocation(line: 780, column: 5, scope: !1595)
!1641 = !DILocation(line: 780, column: 17, scope: !1595)
!1642 = !DILocation(line: 780, column: 21, scope: !1595)
!1643 = !DILocation(line: 781, column: 5, scope: !1595)
!1644 = !DILocation(line: 785, column: 5, scope: !1595)
!1645 = !DILocation(line: 785, column: 17, scope: !1595)
!1646 = !DILocation(line: 785, column: 21, scope: !1595)
!1647 = !DILocation(line: 786, column: 5, scope: !1595)
!1648 = !DILocation(line: 786, column: 17, scope: !1595)
!1649 = !DILocation(line: 786, column: 21, scope: !1595)
!1650 = !DILocation(line: 788, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 788, column: 9)
!1652 = !DILocation(line: 788, column: 18, scope: !1651)
!1653 = !DILocation(line: 788, column: 9, scope: !1595)
!1654 = !DILocation(line: 789, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 788, column: 24)
!1656 = !DILocation(line: 789, column: 19, scope: !1655)
!1657 = !DILocation(line: 789, column: 26, scope: !1655)
!1658 = !DILocation(line: 789, column: 31, scope: !1655)
!1659 = !DILocation(line: 790, column: 7, scope: !1655)
!1660 = !DILocalVariable(name: "len", scope: !1595, file: !3, line: 792, type: !269)
!1661 = !DILocation(line: 792, column: 13, scope: !1595)
!1662 = !DILocation(line: 792, column: 42, scope: !1595)
!1663 = !DILocation(line: 792, column: 19, scope: !1595)
!1664 = !DILocation(line: 793, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 793, column: 9)
!1666 = !DILocation(line: 793, column: 13, scope: !1665)
!1667 = !DILocation(line: 793, column: 9, scope: !1595)
!1668 = !DILocation(line: 794, column: 11, scope: !1665)
!1669 = !DILocation(line: 794, column: 7, scope: !1665)
!1670 = !DILocation(line: 795, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 795, column: 9)
!1672 = !DILocation(line: 795, column: 18, scope: !1671)
!1673 = !DILocation(line: 795, column: 9, scope: !1595)
!1674 = !DILocation(line: 796, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 796, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 795, column: 23)
!1677 = !DILocation(line: 796, column: 22, scope: !1675)
!1678 = !DILocation(line: 796, column: 20, scope: !1675)
!1679 = !DILocation(line: 796, column: 11, scope: !1676)
!1680 = !DILocation(line: 797, column: 20, scope: !1675)
!1681 = !DILocation(line: 797, column: 18, scope: !1675)
!1682 = !DILocation(line: 797, column: 9, scope: !1675)
!1683 = !DILocation(line: 799, column: 33, scope: !1676)
!1684 = !DILocation(line: 799, column: 7, scope: !1676)
!1685 = !DILocation(line: 799, column: 19, scope: !1676)
!1686 = !DILocation(line: 799, column: 26, scope: !1676)
!1687 = !DILocation(line: 799, column: 31, scope: !1676)
!1688 = !DILocation(line: 800, column: 7, scope: !1676)
!1689 = !DILocation(line: 802, column: 21, scope: !1595)
!1690 = !DILocation(line: 802, column: 19, scope: !1595)
!1691 = !DILocation(line: 802, column: 14, scope: !1595)
!1692 = !DILocation(line: 803, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 803, column: 9)
!1694 = !DILocation(line: 803, column: 20, scope: !1693)
!1695 = !DILocation(line: 803, column: 18, scope: !1693)
!1696 = !DILocation(line: 803, column: 9, scope: !1595)
!1697 = !DILocation(line: 804, column: 16, scope: !1693)
!1698 = !DILocation(line: 804, column: 7, scope: !1693)
!1699 = !DILocation(line: 806, column: 18, scope: !1693)
!1700 = !DILocation(line: 806, column: 24, scope: !1693)
!1701 = !DILocation(line: 806, column: 22, scope: !1693)
!1702 = !DILocation(line: 806, column: 16, scope: !1693)
!1703 = !DILocation(line: 807, column: 31, scope: !1595)
!1704 = !DILocation(line: 807, column: 5, scope: !1595)
!1705 = !DILocation(line: 807, column: 17, scope: !1595)
!1706 = !DILocation(line: 807, column: 24, scope: !1595)
!1707 = !DILocation(line: 807, column: 29, scope: !1595)
!1708 = !DILocation(line: 808, column: 5, scope: !1595)
!1709 = !DILocation(line: 810, column: 1, scope: !1577)
!1710 = distinct !DISubprogram(name: "fiobj_data_get_fd_size", scope: !3, file: !3, line: 143, type: !1711, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!269, !95}
!1713 = !DILocalVariable(name: "o", arg: 1, scope: !1710, file: !3, line: 143, type: !95)
!1714 = !DILocation(line: 143, column: 58, scope: !1710)
!1715 = !DILocalVariable(name: "stat", scope: !1710, file: !3, line: 144, type: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1717, line: 46, size: 1152, elements: !1718)
!1717 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1718 = !{!1719, !1721, !1723, !1725, !1727, !1729, !1731, !1732, !1733, !1735, !1737, !1739, !1747, !1748, !1749}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1716, file: !1717, line: 48, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !34, line: 145, baseType: !47)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1716, file: !1717, line: 53, baseType: !1722, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !34, line: 148, baseType: !47)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1716, file: !1717, line: 61, baseType: !1724, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !34, line: 151, baseType: !47)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1716, file: !1717, line: 62, baseType: !1726, size: 32, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !34, line: 150, baseType: !35)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1716, file: !1717, line: 64, baseType: !1728, size: 32, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !34, line: 146, baseType: !35)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1716, file: !1717, line: 65, baseType: !1730, size: 32, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !34, line: 147, baseType: !35)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1716, file: !1717, line: 67, baseType: !60, size: 32, offset: 288)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1716, file: !1717, line: 69, baseType: !1720, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1716, file: !1717, line: 74, baseType: !1734, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 152, baseType: !133)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1716, file: !1717, line: 78, baseType: !1736, size: 64, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !34, line: 174, baseType: !133)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1716, file: !1717, line: 80, baseType: !1738, size: 64, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !34, line: 179, baseType: !133)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1716, file: !1717, line: 91, baseType: !1740, size: 128, offset: 576)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1741, line: 10, size: 128, elements: !1742)
!1741 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1742 = !{!1743, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1740, file: !1741, line: 12, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 160, baseType: !133)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1740, file: !1741, line: 16, baseType: !1746, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !34, line: 196, baseType: !133)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1716, file: !1717, line: 92, baseType: !1740, size: 128, offset: 704)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1716, file: !1717, line: 93, baseType: !1740, size: 128, offset: 832)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1716, file: !1717, line: 106, baseType: !1750, size: 192, offset: 960)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1746, size: 192, elements: !1751)
!1751 = !{!1752}
!1752 = !DISubrange(count: 3)
!1753 = !DILocation(line: 144, column: 15, scope: !1710)
!1754 = !DILocation(line: 144, column: 3, scope: !1710)
!1755 = !DILabel(scope: !1710, name: "retry", file: !3, line: 145)
!1756 = !DILocation(line: 145, column: 1, scope: !1710)
!1757 = !DILocation(line: 146, column: 13, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 146, column: 7)
!1759 = !DILocation(line: 146, column: 24, scope: !1758)
!1760 = !DILocation(line: 146, column: 7, scope: !1758)
!1761 = !DILocation(line: 146, column: 7, scope: !1710)
!1762 = !DILocation(line: 147, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 147, column: 9)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 146, column: 36)
!1765 = !DILocation(line: 147, column: 15, scope: !1763)
!1766 = !DILocation(line: 147, column: 9, scope: !1764)
!1767 = !DILocation(line: 148, column: 7, scope: !1763)
!1768 = !DILocation(line: 149, column: 5, scope: !1764)
!1769 = !DILocation(line: 151, column: 15, scope: !1710)
!1770 = !DILocation(line: 151, column: 3, scope: !1710)
!1771 = !DILocation(line: 152, column: 1, scope: !1710)
!1772 = distinct !DISubprogram(name: "fiobj_data_pread", scope: !3, file: !3, line: 904, type: !1773, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!119, !44, !130, !45}
!1775 = !DILocalVariable(name: "io", arg: 1, scope: !1772, file: !3, line: 904, type: !44)
!1776 = !DILocation(line: 904, column: 39, scope: !1772)
!1777 = !DILocalVariable(name: "start_at", arg: 2, scope: !1772, file: !3, line: 904, type: !130)
!1778 = !DILocation(line: 904, column: 52, scope: !1772)
!1779 = !DILocalVariable(name: "length", arg: 3, scope: !1772, file: !3, line: 904, type: !45)
!1780 = !DILocation(line: 904, column: 72, scope: !1772)
!1781 = !DILocation(line: 905, column: 8, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 905, column: 7)
!1783 = !DILocation(line: 905, column: 11, scope: !1782)
!1784 = !DILocation(line: 905, column: 15, scope: !1782)
!1785 = !DILocation(line: 905, column: 7, scope: !1772)
!1786 = !DILocation(line: 906, column: 5, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 905, column: 48)
!1788 = !DILocation(line: 906, column: 11, scope: !1787)
!1789 = !DILocation(line: 907, column: 28, scope: !1787)
!1790 = !DILocation(line: 907, column: 5, scope: !1787)
!1791 = !DILocation(line: 913, column: 3, scope: !1772)
!1792 = !DILocation(line: 913, column: 9, scope: !1772)
!1793 = !DILocation(line: 914, column: 11, scope: !1772)
!1794 = !DILocation(line: 914, column: 23, scope: !1772)
!1795 = !DILocation(line: 914, column: 3, scope: !1772)
!1796 = !DILocation(line: 916, column: 33, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 914, column: 27)
!1798 = !DILocation(line: 916, column: 37, scope: !1797)
!1799 = !DILocation(line: 916, column: 47, scope: !1797)
!1800 = !DILocation(line: 916, column: 12, scope: !1797)
!1801 = !DILocation(line: 916, column: 5, scope: !1797)
!1802 = !DILocation(line: 919, column: 35, scope: !1797)
!1803 = !DILocation(line: 919, column: 39, scope: !1797)
!1804 = !DILocation(line: 919, column: 49, scope: !1797)
!1805 = !DILocation(line: 919, column: 12, scope: !1797)
!1806 = !DILocation(line: 919, column: 5, scope: !1797)
!1807 = !DILocation(line: 922, column: 34, scope: !1797)
!1808 = !DILocation(line: 922, column: 38, scope: !1797)
!1809 = !DILocation(line: 922, column: 48, scope: !1797)
!1810 = !DILocation(line: 922, column: 12, scope: !1797)
!1811 = !DILocation(line: 922, column: 5, scope: !1797)
!1812 = !DILocation(line: 924, column: 1, scope: !1772)
!1813 = distinct !DISubprogram(name: "fiobj_data_pread_str", scope: !3, file: !3, line: 823, type: !1773, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1814 = !DILocalVariable(name: "io", arg: 1, scope: !1813, file: !3, line: 823, type: !44)
!1815 = !DILocation(line: 823, column: 50, scope: !1813)
!1816 = !DILocalVariable(name: "start_at", arg: 2, scope: !1813, file: !3, line: 823, type: !130)
!1817 = !DILocation(line: 823, column: 63, scope: !1813)
!1818 = !DILocalVariable(name: "length", arg: 3, scope: !1813, file: !3, line: 824, type: !45)
!1819 = !DILocation(line: 824, column: 54, scope: !1813)
!1820 = !DILocation(line: 825, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 825, column: 7)
!1822 = !DILocation(line: 825, column: 16, scope: !1821)
!1823 = !DILocation(line: 825, column: 7, scope: !1813)
!1824 = !DILocation(line: 826, column: 16, scope: !1821)
!1825 = !DILocation(line: 826, column: 28, scope: !1821)
!1826 = !DILocation(line: 826, column: 34, scope: !1821)
!1827 = !DILocation(line: 826, column: 32, scope: !1821)
!1828 = !DILocation(line: 826, column: 14, scope: !1821)
!1829 = !DILocation(line: 826, column: 5, scope: !1821)
!1830 = !DILocation(line: 827, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 827, column: 7)
!1832 = !DILocation(line: 827, column: 16, scope: !1831)
!1833 = !DILocation(line: 827, column: 7, scope: !1813)
!1834 = !DILocation(line: 828, column: 14, scope: !1831)
!1835 = !DILocation(line: 828, column: 5, scope: !1831)
!1836 = !DILocation(line: 829, column: 15, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 829, column: 7)
!1838 = !DILocation(line: 829, column: 26, scope: !1837)
!1839 = !DILocation(line: 829, column: 38, scope: !1837)
!1840 = !DILocation(line: 829, column: 24, scope: !1837)
!1841 = !DILocation(line: 829, column: 7, scope: !1813)
!1842 = !DILocation(line: 830, column: 16, scope: !1837)
!1843 = !DILocation(line: 830, column: 28, scope: !1837)
!1844 = !DILocation(line: 830, column: 14, scope: !1837)
!1845 = !DILocation(line: 830, column: 5, scope: !1837)
!1846 = !DILocation(line: 831, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 831, column: 7)
!1848 = !DILocation(line: 831, column: 16, scope: !1847)
!1849 = !DILocation(line: 831, column: 14, scope: !1847)
!1850 = !DILocation(line: 831, column: 27, scope: !1847)
!1851 = !DILocation(line: 831, column: 39, scope: !1847)
!1852 = !DILocation(line: 831, column: 25, scope: !1847)
!1853 = !DILocation(line: 831, column: 7, scope: !1813)
!1854 = !DILocation(line: 832, column: 14, scope: !1847)
!1855 = !DILocation(line: 832, column: 26, scope: !1847)
!1856 = !DILocation(line: 832, column: 32, scope: !1847)
!1857 = !DILocation(line: 832, column: 30, scope: !1847)
!1858 = !DILocation(line: 832, column: 12, scope: !1847)
!1859 = !DILocation(line: 832, column: 5, scope: !1847)
!1860 = !DILocation(line: 833, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 833, column: 7)
!1862 = !DILocation(line: 833, column: 14, scope: !1861)
!1863 = !DILocation(line: 833, column: 7, scope: !1813)
!1864 = !DILocation(line: 834, column: 28, scope: !1861)
!1865 = !DILocation(line: 834, column: 5, scope: !1861)
!1866 = !DILocation(line: 838, column: 26, scope: !1813)
!1867 = !DILocation(line: 840, column: 14, scope: !1813)
!1868 = !DILocation(line: 839, column: 23, scope: !1813)
!1869 = !DILocation(line: 839, column: 35, scope: !1813)
!1870 = !DILocation(line: 839, column: 44, scope: !1813)
!1871 = !DILocation(line: 839, column: 42, scope: !1813)
!1872 = !DILocation(line: 838, column: 3, scope: !1813)
!1873 = !DILocation(line: 842, column: 1, scope: !1813)
!1874 = distinct !DISubprogram(name: "fiobj_data_pread_slice", scope: !3, file: !3, line: 843, type: !1773, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1875 = !DILocalVariable(name: "io", arg: 1, scope: !1874, file: !3, line: 843, type: !44)
!1876 = !DILocation(line: 843, column: 52, scope: !1874)
!1877 = !DILocalVariable(name: "start_at", arg: 2, scope: !1874, file: !3, line: 843, type: !130)
!1878 = !DILocation(line: 843, column: 65, scope: !1874)
!1879 = !DILocalVariable(name: "length", arg: 3, scope: !1874, file: !3, line: 844, type: !45)
!1880 = !DILocation(line: 844, column: 56, scope: !1874)
!1881 = !DILocation(line: 845, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 845, column: 7)
!1883 = !DILocation(line: 845, column: 16, scope: !1882)
!1884 = !DILocation(line: 845, column: 7, scope: !1874)
!1885 = !DILocation(line: 846, column: 16, scope: !1882)
!1886 = !DILocation(line: 846, column: 28, scope: !1882)
!1887 = !DILocation(line: 846, column: 34, scope: !1882)
!1888 = !DILocation(line: 846, column: 32, scope: !1882)
!1889 = !DILocation(line: 846, column: 14, scope: !1882)
!1890 = !DILocation(line: 846, column: 5, scope: !1882)
!1891 = !DILocation(line: 847, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 847, column: 7)
!1893 = !DILocation(line: 847, column: 16, scope: !1892)
!1894 = !DILocation(line: 847, column: 7, scope: !1874)
!1895 = !DILocation(line: 848, column: 14, scope: !1892)
!1896 = !DILocation(line: 848, column: 5, scope: !1892)
!1897 = !DILocation(line: 849, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 849, column: 7)
!1899 = !DILocation(line: 849, column: 26, scope: !1898)
!1900 = !DILocation(line: 849, column: 38, scope: !1898)
!1901 = !DILocation(line: 849, column: 24, scope: !1898)
!1902 = !DILocation(line: 849, column: 7, scope: !1874)
!1903 = !DILocation(line: 850, column: 16, scope: !1898)
!1904 = !DILocation(line: 850, column: 28, scope: !1898)
!1905 = !DILocation(line: 850, column: 14, scope: !1898)
!1906 = !DILocation(line: 850, column: 5, scope: !1898)
!1907 = !DILocation(line: 851, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 851, column: 7)
!1909 = !DILocation(line: 851, column: 16, scope: !1908)
!1910 = !DILocation(line: 851, column: 14, scope: !1908)
!1911 = !DILocation(line: 851, column: 27, scope: !1908)
!1912 = !DILocation(line: 851, column: 39, scope: !1908)
!1913 = !DILocation(line: 851, column: 25, scope: !1908)
!1914 = !DILocation(line: 851, column: 7, scope: !1874)
!1915 = !DILocation(line: 852, column: 14, scope: !1908)
!1916 = !DILocation(line: 852, column: 26, scope: !1908)
!1917 = !DILocation(line: 852, column: 32, scope: !1908)
!1918 = !DILocation(line: 852, column: 30, scope: !1908)
!1919 = !DILocation(line: 852, column: 12, scope: !1908)
!1920 = !DILocation(line: 852, column: 5, scope: !1908)
!1921 = !DILocation(line: 853, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 853, column: 7)
!1923 = !DILocation(line: 853, column: 14, scope: !1922)
!1924 = !DILocation(line: 853, column: 7, scope: !1874)
!1925 = !DILocation(line: 854, column: 28, scope: !1922)
!1926 = !DILocation(line: 854, column: 5, scope: !1922)
!1927 = !DILocation(line: 858, column: 27, scope: !1874)
!1928 = !DILocation(line: 858, column: 39, scope: !1874)
!1929 = !DILocation(line: 858, column: 46, scope: !1874)
!1930 = !DILocation(line: 858, column: 54, scope: !1874)
!1931 = !DILocation(line: 858, column: 64, scope: !1874)
!1932 = !DILocation(line: 858, column: 10, scope: !1874)
!1933 = !DILocation(line: 858, column: 3, scope: !1874)
!1934 = !DILocation(line: 859, column: 1, scope: !1874)
!1935 = distinct !DISubprogram(name: "fiobj_data_pread_file", scope: !3, file: !3, line: 861, type: !1773, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!1936 = !DILocalVariable(name: "io", arg: 1, scope: !1935, file: !3, line: 861, type: !44)
!1937 = !DILocation(line: 861, column: 51, scope: !1935)
!1938 = !DILocalVariable(name: "start_at", arg: 2, scope: !1935, file: !3, line: 861, type: !130)
!1939 = !DILocation(line: 861, column: 64, scope: !1935)
!1940 = !DILocalVariable(name: "length", arg: 3, scope: !1935, file: !3, line: 862, type: !45)
!1941 = !DILocation(line: 862, column: 55, scope: !1935)
!1942 = !DILocalVariable(name: "size", scope: !1935, file: !3, line: 863, type: !1943)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!1944 = !DILocation(line: 863, column: 17, scope: !1935)
!1945 = !DILocation(line: 863, column: 47, scope: !1935)
!1946 = !DILocation(line: 863, column: 24, scope: !1935)
!1947 = !DILocation(line: 864, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 864, column: 7)
!1949 = !DILocation(line: 864, column: 16, scope: !1948)
!1950 = !DILocation(line: 864, column: 7, scope: !1935)
!1951 = !DILocation(line: 865, column: 16, scope: !1948)
!1952 = !DILocation(line: 865, column: 23, scope: !1948)
!1953 = !DILocation(line: 865, column: 21, scope: !1948)
!1954 = !DILocation(line: 865, column: 14, scope: !1948)
!1955 = !DILocation(line: 865, column: 5, scope: !1948)
!1956 = !DILocation(line: 866, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 866, column: 7)
!1958 = !DILocation(line: 866, column: 16, scope: !1957)
!1959 = !DILocation(line: 866, column: 7, scope: !1935)
!1960 = !DILocation(line: 867, column: 14, scope: !1957)
!1961 = !DILocation(line: 867, column: 5, scope: !1957)
!1962 = !DILocation(line: 868, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 868, column: 7)
!1964 = !DILocation(line: 868, column: 16, scope: !1963)
!1965 = !DILocation(line: 868, column: 14, scope: !1963)
!1966 = !DILocation(line: 868, column: 37, scope: !1963)
!1967 = !DILocation(line: 868, column: 25, scope: !1963)
!1968 = !DILocation(line: 868, column: 7, scope: !1935)
!1969 = !DILocation(line: 869, column: 14, scope: !1963)
!1970 = !DILocation(line: 869, column: 21, scope: !1963)
!1971 = !DILocation(line: 869, column: 19, scope: !1963)
!1972 = !DILocation(line: 869, column: 12, scope: !1963)
!1973 = !DILocation(line: 869, column: 5, scope: !1963)
!1974 = !DILocation(line: 870, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 870, column: 7)
!1976 = !DILocation(line: 870, column: 14, scope: !1975)
!1977 = !DILocation(line: 870, column: 7, scope: !1935)
!1978 = !DILocation(line: 872, column: 5, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 870, column: 20)
!1980 = !DILocation(line: 872, column: 17, scope: !1979)
!1981 = !DILocation(line: 872, column: 22, scope: !1979)
!1982 = !DILocation(line: 873, column: 14, scope: !1979)
!1983 = !DILocation(line: 873, column: 26, scope: !1979)
!1984 = !DILocation(line: 873, column: 5, scope: !1979)
!1985 = !DILocation(line: 874, column: 5, scope: !1979)
!1986 = !DILocation(line: 874, column: 17, scope: !1979)
!1987 = !DILocation(line: 874, column: 24, scope: !1979)
!1988 = !DILocation(line: 875, column: 28, scope: !1979)
!1989 = !DILocation(line: 875, column: 5, scope: !1979)
!1990 = !DILocation(line: 880, column: 3, scope: !1935)
!1991 = !DILocation(line: 880, column: 15, scope: !1935)
!1992 = !DILocation(line: 880, column: 19, scope: !1935)
!1993 = !DILocation(line: 881, column: 3, scope: !1935)
!1994 = !DILocation(line: 881, column: 15, scope: !1935)
!1995 = !DILocation(line: 881, column: 19, scope: !1935)
!1996 = !DILocation(line: 882, column: 24, scope: !1935)
!1997 = !DILocation(line: 882, column: 28, scope: !1935)
!1998 = !DILocation(line: 882, column: 35, scope: !1935)
!1999 = !DILocation(line: 882, column: 3, scope: !1935)
!2000 = !DILocalVariable(name: "tmp", scope: !1935, file: !3, line: 883, type: !669)
!2001 = !DILocation(line: 883, column: 11, scope: !1935)
!2002 = !DILocation(line: 883, column: 23, scope: !1935)
!2003 = !DILocation(line: 883, column: 35, scope: !1935)
!2004 = !DILocation(line: 883, column: 39, scope: !1935)
!2005 = !DILocation(line: 883, column: 51, scope: !1935)
!2006 = !DILocation(line: 883, column: 59, scope: !1935)
!2007 = !DILocation(line: 883, column: 67, scope: !1935)
!2008 = !DILocation(line: 883, column: 17, scope: !1935)
!2009 = !DILocation(line: 884, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 884, column: 7)
!2011 = !DILocation(line: 884, column: 11, scope: !2010)
!2012 = !DILocation(line: 884, column: 7, scope: !1935)
!2013 = !DILocation(line: 885, column: 28, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 884, column: 17)
!2015 = !DILocation(line: 885, column: 5, scope: !2014)
!2016 = !DILocation(line: 890, column: 3, scope: !1935)
!2017 = !DILocation(line: 890, column: 15, scope: !1935)
!2018 = !DILocation(line: 890, column: 22, scope: !1935)
!2019 = !DILocation(line: 890, column: 27, scope: !1935)
!2020 = !DILocation(line: 891, column: 26, scope: !1935)
!2021 = !DILocation(line: 893, column: 14, scope: !1935)
!2022 = !DILocation(line: 892, column: 23, scope: !1935)
!2023 = !DILocation(line: 892, column: 35, scope: !1935)
!2024 = !DILocation(line: 891, column: 3, scope: !1935)
!2025 = !DILocation(line: 895, column: 1, scope: !1935)
!2026 = distinct !DISubprogram(name: "fiobj_data_assert_dynamic", scope: !3, file: !3, line: 936, type: !2027, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !44}
!2029 = !DILocalVariable(name: "io", arg: 1, scope: !2026, file: !3, line: 936, type: !44)
!2030 = !DILocation(line: 936, column: 38, scope: !2026)
!2031 = !DILocation(line: 937, column: 8, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 937, column: 7)
!2033 = !DILocation(line: 937, column: 7, scope: !2026)
!2034 = !DILocation(line: 938, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 937, column: 12)
!2036 = !DILocation(line: 938, column: 11, scope: !2035)
!2037 = !DILocation(line: 939, column: 5, scope: !2035)
!2038 = !DILocation(line: 941, column: 3, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 941, column: 3)
!2040 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 941, column: 3)
!2041 = !DILocation(line: 941, column: 3, scope: !2040)
!2042 = !DILocation(line: 942, column: 24, scope: !2026)
!2043 = !DILocation(line: 942, column: 3, scope: !2026)
!2044 = !DILocation(line: 943, column: 3, scope: !2026)
!2045 = !DILocation(line: 944, column: 1, scope: !2026)
!2046 = distinct !DISubprogram(name: "fiobj_type", scope: !6, file: !6, line: 250, type: !2047, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!29, !44}
!2049 = !DILocalVariable(name: "o", arg: 1, scope: !2046, file: !6, line: 250, type: !44)
!2050 = !DILocation(line: 250, column: 45, scope: !2046)
!2051 = !DILocation(line: 251, column: 8, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2046, file: !6, line: 251, column: 7)
!2053 = !DILocation(line: 251, column: 7, scope: !2046)
!2054 = !DILocation(line: 252, column: 5, scope: !2052)
!2055 = !DILocation(line: 253, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2046, file: !6, line: 253, column: 7)
!2057 = !DILocation(line: 253, column: 9, scope: !2056)
!2058 = !DILocation(line: 253, column: 7, scope: !2046)
!2059 = !DILocation(line: 254, column: 5, scope: !2056)
!2060 = !DILocation(line: 255, column: 8, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2046, file: !6, line: 255, column: 7)
!2062 = !DILocation(line: 255, column: 10, scope: !2061)
!2063 = !DILocation(line: 255, column: 37, scope: !2061)
!2064 = !DILocation(line: 255, column: 7, scope: !2046)
!2065 = !DILocation(line: 256, column: 29, scope: !2061)
!2066 = !DILocation(line: 256, column: 12, scope: !2061)
!2067 = !DILocation(line: 256, column: 5, scope: !2061)
!2068 = !DILocation(line: 258, column: 8, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2046, file: !6, line: 257, column: 7)
!2070 = !DILocation(line: 258, column: 10, scope: !2069)
!2071 = !DILocation(line: 258, column: 37, scope: !2069)
!2072 = !DILocation(line: 257, column: 7, scope: !2046)
!2073 = !DILocation(line: 259, column: 5, scope: !2069)
!2074 = !DILocation(line: 260, column: 30, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2046, file: !6, line: 260, column: 7)
!2076 = !DILocation(line: 260, column: 32, scope: !2075)
!2077 = !DILocation(line: 260, column: 59, scope: !2075)
!2078 = !DILocation(line: 260, column: 7, scope: !2046)
!2079 = !DILocation(line: 261, column: 5, scope: !2075)
!2080 = !DILocation(line: 262, column: 30, scope: !2046)
!2081 = !DILocation(line: 262, column: 10, scope: !2046)
!2082 = !DILocation(line: 262, column: 3, scope: !2046)
!2083 = !DILocation(line: 263, column: 1, scope: !2046)
!2084 = distinct !DISubprogram(name: "fiobj_data_pre_write", scope: !3, file: !3, line: 124, type: !2085, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !44, !45}
!2087 = !DILocalVariable(name: "o", arg: 1, scope: !2084, file: !3, line: 124, type: !44)
!2088 = !DILocation(line: 124, column: 47, scope: !2084)
!2089 = !DILocalVariable(name: "length", arg: 2, scope: !2084, file: !3, line: 124, type: !45)
!2090 = !DILocation(line: 124, column: 60, scope: !2084)
!2091 = !DILocation(line: 125, column: 11, scope: !2084)
!2092 = !DILocation(line: 125, column: 22, scope: !2084)
!2093 = !DILocation(line: 125, column: 3, scope: !2084)
!2094 = !DILocation(line: 127, column: 9, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 127, column: 9)
!2096 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 125, column: 26)
!2097 = !DILocation(line: 127, column: 20, scope: !2095)
!2098 = !DILocation(line: 127, column: 27, scope: !2095)
!2099 = !DILocation(line: 127, column: 35, scope: !2095)
!2100 = !DILocation(line: 127, column: 9, scope: !2096)
!2101 = !DILocation(line: 128, column: 30, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 127, column: 48)
!2103 = !DILocation(line: 128, column: 7, scope: !2102)
!2104 = !DILocation(line: 129, column: 5, scope: !2102)
!2105 = !DILocation(line: 130, column: 5, scope: !2096)
!2106 = !DILocation(line: 132, column: 28, scope: !2096)
!2107 = !DILocation(line: 132, column: 5, scope: !2096)
!2108 = !DILocation(line: 133, column: 5, scope: !2096)
!2109 = !DILocation(line: 135, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 135, column: 7)
!2111 = !DILocation(line: 135, column: 18, scope: !2110)
!2112 = !DILocation(line: 135, column: 26, scope: !2110)
!2113 = !DILocation(line: 135, column: 37, scope: !2110)
!2114 = !DILocation(line: 135, column: 43, scope: !2110)
!2115 = !DILocation(line: 135, column: 41, scope: !2110)
!2116 = !DILocation(line: 135, column: 23, scope: !2110)
!2117 = !DILocation(line: 135, column: 7, scope: !2084)
!2118 = !DILocation(line: 136, column: 5, scope: !2110)
!2119 = !DILocation(line: 138, column: 24, scope: !2084)
!2120 = !DILocation(line: 138, column: 35, scope: !2084)
!2121 = !DILocation(line: 138, column: 41, scope: !2084)
!2122 = !DILocation(line: 138, column: 39, scope: !2084)
!2123 = !DILocation(line: 138, column: 49, scope: !2084)
!2124 = !DILocation(line: 138, column: 56, scope: !2084)
!2125 = !DILocation(line: 138, column: 61, scope: !2084)
!2126 = !DILocation(line: 138, column: 3, scope: !2084)
!2127 = !DILocation(line: 138, column: 14, scope: !2084)
!2128 = !DILocation(line: 138, column: 19, scope: !2084)
!2129 = !DILocation(line: 139, column: 35, scope: !2084)
!2130 = !DILocation(line: 139, column: 46, scope: !2084)
!2131 = !DILocation(line: 139, column: 54, scope: !2084)
!2132 = !DILocation(line: 139, column: 65, scope: !2084)
!2133 = !DILocation(line: 139, column: 23, scope: !2084)
!2134 = !DILocation(line: 139, column: 3, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2084, file: !3, discriminator: 0)
!2136 = !DILocation(line: 139, column: 14, scope: !2135)
!2137 = !DILocation(line: 139, column: 21, scope: !2084)
!2138 = !DILocation(line: 140, column: 3, scope: !2135)
!2139 = !DILocation(line: 140, column: 3, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 140, column: 3)
!2141 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 140, column: 3)
!2142 = !DILocation(line: 140, column: 3, scope: !2141)
!2143 = !DILocation(line: 140, column: 3, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 140, column: 3)
!2145 = !DILocation(line: 141, column: 1, scope: !2135)
!2146 = distinct !DISubprogram(name: "fiobj_data_write", scope: !3, file: !3, line: 952, type: !2147, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!130, !44, !52, !45}
!2149 = !DILocalVariable(name: "io", arg: 1, scope: !2146, file: !3, line: 952, type: !44)
!2150 = !DILocation(line: 952, column: 33, scope: !2146)
!2151 = !DILocalVariable(name: "buffer", arg: 2, scope: !2146, file: !3, line: 952, type: !52)
!2152 = !DILocation(line: 952, column: 43, scope: !2146)
!2153 = !DILocalVariable(name: "length", arg: 3, scope: !2146, file: !3, line: 952, type: !45)
!2154 = !DILocation(line: 952, column: 61, scope: !2146)
!2155 = !DILocation(line: 953, column: 8, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 953, column: 7)
!2157 = !DILocation(line: 953, column: 11, scope: !2156)
!2158 = !DILocation(line: 953, column: 15, scope: !2156)
!2159 = !DILocation(line: 953, column: 47, scope: !2156)
!2160 = !DILocation(line: 953, column: 52, scope: !2156)
!2161 = !DILocation(line: 953, column: 59, scope: !2156)
!2162 = !DILocation(line: 953, column: 62, scope: !2156)
!2163 = !DILocation(line: 953, column: 7, scope: !2146)
!2164 = !DILocation(line: 954, column: 5, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 953, column: 71)
!2166 = !DILocation(line: 954, column: 11, scope: !2165)
!2167 = !DILocation(line: 955, column: 5, scope: !2165)
!2168 = !DILocation(line: 957, column: 3, scope: !2146)
!2169 = !DILocation(line: 957, column: 9, scope: !2146)
!2170 = !DILocation(line: 959, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 959, column: 7)
!2172 = !DILocation(line: 959, column: 19, scope: !2171)
!2173 = !DILocation(line: 959, column: 22, scope: !2171)
!2174 = !DILocation(line: 959, column: 7, scope: !2146)
!2175 = !DILocation(line: 960, column: 31, scope: !2171)
!2176 = !DILocation(line: 960, column: 5, scope: !2171)
!2177 = !DILocation(line: 962, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 962, column: 7)
!2179 = !DILocation(line: 962, column: 19, scope: !2178)
!2180 = !DILocation(line: 962, column: 22, scope: !2178)
!2181 = !DILocation(line: 962, column: 7, scope: !2146)
!2182 = !DILocation(line: 964, column: 26, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 962, column: 29)
!2184 = !DILocation(line: 964, column: 30, scope: !2183)
!2185 = !DILocation(line: 964, column: 37, scope: !2183)
!2186 = !DILocation(line: 964, column: 5, scope: !2183)
!2187 = !DILocation(line: 965, column: 12, scope: !2183)
!2188 = !DILocation(line: 965, column: 24, scope: !2183)
!2189 = !DILocation(line: 965, column: 33, scope: !2183)
!2190 = !DILocation(line: 965, column: 45, scope: !2183)
!2191 = !DILocation(line: 965, column: 31, scope: !2183)
!2192 = !DILocation(line: 965, column: 50, scope: !2183)
!2193 = !DILocation(line: 965, column: 58, scope: !2183)
!2194 = !DILocation(line: 965, column: 5, scope: !2183)
!2195 = !DILocation(line: 966, column: 23, scope: !2183)
!2196 = !DILocation(line: 966, column: 35, scope: !2183)
!2197 = !DILocation(line: 966, column: 41, scope: !2183)
!2198 = !DILocation(line: 966, column: 39, scope: !2183)
!2199 = !DILocation(line: 966, column: 5, scope: !2183)
!2200 = !DILocation(line: 966, column: 17, scope: !2183)
!2201 = !DILocation(line: 966, column: 21, scope: !2183)
!2202 = !DILocation(line: 967, column: 5, scope: !2183)
!2203 = !DILocation(line: 967, column: 17, scope: !2183)
!2204 = !DILocation(line: 967, column: 24, scope: !2183)
!2205 = !DILocation(line: 967, column: 36, scope: !2183)
!2206 = !DILocation(line: 967, column: 41, scope: !2183)
!2207 = !DILocation(line: 968, column: 12, scope: !2183)
!2208 = !DILocation(line: 968, column: 5, scope: !2183)
!2209 = !DILocation(line: 972, column: 17, scope: !2146)
!2210 = !DILocation(line: 972, column: 29, scope: !2146)
!2211 = !DILocation(line: 972, column: 33, scope: !2146)
!2212 = !DILocation(line: 972, column: 41, scope: !2146)
!2213 = !DILocation(line: 972, column: 72, scope: !2146)
!2214 = !DILocation(line: 972, column: 49, scope: !2146)
!2215 = !DILocation(line: 972, column: 10, scope: !2146)
!2216 = !DILocation(line: 972, column: 3, scope: !2146)
!2217 = !DILocation(line: 973, column: 1, scope: !2146)
!2218 = distinct !DISubprogram(name: "fiobj_data_puts", scope: !3, file: !3, line: 981, type: !2147, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2219 = !DILocalVariable(name: "io", arg: 1, scope: !2218, file: !3, line: 981, type: !44)
!2220 = !DILocation(line: 981, column: 32, scope: !2218)
!2221 = !DILocalVariable(name: "buffer", arg: 2, scope: !2218, file: !3, line: 981, type: !52)
!2222 = !DILocation(line: 981, column: 42, scope: !2218)
!2223 = !DILocalVariable(name: "length", arg: 3, scope: !2218, file: !3, line: 981, type: !45)
!2224 = !DILocation(line: 981, column: 60, scope: !2218)
!2225 = !DILocation(line: 982, column: 8, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 982, column: 7)
!2227 = !DILocation(line: 982, column: 11, scope: !2226)
!2228 = !DILocation(line: 982, column: 15, scope: !2226)
!2229 = !DILocation(line: 982, column: 47, scope: !2226)
!2230 = !DILocation(line: 982, column: 52, scope: !2226)
!2231 = !DILocation(line: 982, column: 59, scope: !2226)
!2232 = !DILocation(line: 982, column: 62, scope: !2226)
!2233 = !DILocation(line: 982, column: 7, scope: !2218)
!2234 = !DILocation(line: 983, column: 5, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 982, column: 71)
!2236 = !DILocation(line: 983, column: 11, scope: !2235)
!2237 = !DILocation(line: 984, column: 5, scope: !2235)
!2238 = !DILocation(line: 987, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 987, column: 7)
!2240 = !DILocation(line: 987, column: 19, scope: !2239)
!2241 = !DILocation(line: 987, column: 22, scope: !2239)
!2242 = !DILocation(line: 987, column: 7, scope: !2218)
!2243 = !DILocation(line: 988, column: 31, scope: !2239)
!2244 = !DILocation(line: 988, column: 5, scope: !2239)
!2245 = !DILocation(line: 990, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 990, column: 7)
!2247 = !DILocation(line: 990, column: 19, scope: !2246)
!2248 = !DILocation(line: 990, column: 22, scope: !2246)
!2249 = !DILocation(line: 990, column: 7, scope: !2218)
!2250 = !DILocation(line: 992, column: 26, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 990, column: 29)
!2252 = !DILocation(line: 992, column: 30, scope: !2251)
!2253 = !DILocation(line: 992, column: 37, scope: !2251)
!2254 = !DILocation(line: 992, column: 5, scope: !2251)
!2255 = !DILocation(line: 993, column: 9, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 993, column: 9)
!2257 = !DILocation(line: 993, column: 9, scope: !2251)
!2258 = !DILocation(line: 994, column: 14, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 993, column: 17)
!2260 = !DILocation(line: 994, column: 26, scope: !2259)
!2261 = !DILocation(line: 994, column: 35, scope: !2259)
!2262 = !DILocation(line: 994, column: 47, scope: !2259)
!2263 = !DILocation(line: 994, column: 33, scope: !2259)
!2264 = !DILocation(line: 994, column: 52, scope: !2259)
!2265 = !DILocation(line: 994, column: 60, scope: !2259)
!2266 = !DILocation(line: 994, column: 7, scope: !2259)
!2267 = !DILocation(line: 995, column: 5, scope: !2259)
!2268 = !DILocation(line: 996, column: 23, scope: !2251)
!2269 = !DILocation(line: 996, column: 35, scope: !2251)
!2270 = !DILocation(line: 996, column: 41, scope: !2251)
!2271 = !DILocation(line: 996, column: 39, scope: !2251)
!2272 = !DILocation(line: 996, column: 48, scope: !2251)
!2273 = !DILocation(line: 996, column: 5, scope: !2251)
!2274 = !DILocation(line: 996, column: 17, scope: !2251)
!2275 = !DILocation(line: 996, column: 21, scope: !2251)
!2276 = !DILocation(line: 997, column: 5, scope: !2251)
!2277 = !DILocation(line: 997, column: 17, scope: !2251)
!2278 = !DILocation(line: 997, column: 24, scope: !2251)
!2279 = !DILocation(line: 997, column: 36, scope: !2251)
!2280 = !DILocation(line: 997, column: 40, scope: !2251)
!2281 = !DILocation(line: 997, column: 45, scope: !2251)
!2282 = !DILocation(line: 998, column: 5, scope: !2251)
!2283 = !DILocation(line: 998, column: 17, scope: !2251)
!2284 = !DILocation(line: 998, column: 24, scope: !2251)
!2285 = !DILocation(line: 998, column: 36, scope: !2251)
!2286 = !DILocation(line: 998, column: 40, scope: !2251)
!2287 = !DILocation(line: 998, column: 45, scope: !2251)
!2288 = !DILocation(line: 999, column: 12, scope: !2251)
!2289 = !DILocation(line: 999, column: 19, scope: !2251)
!2290 = !DILocation(line: 999, column: 5, scope: !2251)
!2291 = !DILocalVariable(name: "end", scope: !2218, file: !3, line: 1002, type: !45)
!2292 = !DILocation(line: 1002, column: 13, scope: !2218)
!2293 = !DILocation(line: 1002, column: 42, scope: !2218)
!2294 = !DILocation(line: 1002, column: 19, scope: !2218)
!2295 = !DILocalVariable(name: "t1", scope: !2218, file: !3, line: 1003, type: !669)
!2296 = !DILocation(line: 1003, column: 11, scope: !2218)
!2297 = !DILocalVariable(name: "t2", scope: !2218, file: !3, line: 1003, type: !669)
!2298 = !DILocation(line: 1003, column: 19, scope: !2218)
!2299 = !DILocation(line: 1005, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1005, column: 7)
!2301 = !DILocation(line: 1005, column: 7, scope: !2218)
!2302 = !DILocation(line: 1006, column: 17, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1005, column: 15)
!2304 = !DILocation(line: 1006, column: 29, scope: !2303)
!2305 = !DILocation(line: 1006, column: 33, scope: !2303)
!2306 = !DILocation(line: 1006, column: 41, scope: !2303)
!2307 = !DILocation(line: 1006, column: 49, scope: !2303)
!2308 = !DILocation(line: 1006, column: 10, scope: !2303)
!2309 = !DILocation(line: 1006, column: 8, scope: !2303)
!2310 = !DILocation(line: 1007, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1007, column: 9)
!2312 = !DILocation(line: 1007, column: 12, scope: !2311)
!2313 = !DILocation(line: 1007, column: 9, scope: !2303)
!2314 = !DILocation(line: 1008, column: 14, scope: !2311)
!2315 = !DILocation(line: 1008, column: 7, scope: !2311)
!2316 = !DILocation(line: 1009, column: 12, scope: !2303)
!2317 = !DILocation(line: 1009, column: 9, scope: !2303)
!2318 = !DILocation(line: 1010, column: 3, scope: !2303)
!2319 = !DILocation(line: 1011, column: 15, scope: !2218)
!2320 = !DILocation(line: 1011, column: 27, scope: !2218)
!2321 = !DILocation(line: 1011, column: 31, scope: !2218)
!2322 = !DILocation(line: 1011, column: 39, scope: !2218)
!2323 = !DILocation(line: 1011, column: 47, scope: !2218)
!2324 = !DILocation(line: 1011, column: 8, scope: !2218)
!2325 = !DILocation(line: 1011, column: 6, scope: !2218)
!2326 = !DILocation(line: 1012, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1012, column: 7)
!2328 = !DILocation(line: 1012, column: 10, scope: !2327)
!2329 = !DILocation(line: 1012, column: 7, scope: !2218)
!2330 = !DILocation(line: 1013, column: 12, scope: !2327)
!2331 = !DILocation(line: 1013, column: 5, scope: !2327)
!2332 = !DILocation(line: 1014, column: 10, scope: !2218)
!2333 = !DILocation(line: 1014, column: 15, scope: !2218)
!2334 = !DILocation(line: 1014, column: 13, scope: !2218)
!2335 = !DILocation(line: 1014, column: 3, scope: !2218)
!2336 = !DILocation(line: 1015, column: 1, scope: !2218)
!2337 = distinct !DISubprogram(name: "fiobj_free", scope: !6, file: !6, line: 446, type: !2027, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2338 = !DILocalVariable(name: "o", arg: 1, scope: !2337, file: !6, line: 446, type: !44)
!2339 = !DILocation(line: 446, column: 34, scope: !2337)
!2340 = !DILocation(line: 447, column: 8, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !6, line: 447, column: 7)
!2342 = !DILocation(line: 447, column: 7, scope: !2337)
!2343 = !DILocation(line: 448, column: 5, scope: !2341)
!2344 = !DILocation(line: 449, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2337, file: !6, line: 449, column: 7)
!2346 = !DILocation(line: 449, column: 7, scope: !2337)
!2347 = !DILocation(line: 450, column: 5, scope: !2345)
!2348 = !DILocation(line: 451, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2337, file: !6, line: 451, column: 7)
!2350 = !DILocation(line: 451, column: 25, scope: !2349)
!2351 = !DILocation(line: 451, column: 30, scope: !2349)
!2352 = !DILocation(line: 451, column: 33, scope: !2349)
!2353 = !DILocation(line: 451, column: 51, scope: !2349)
!2354 = !DILocation(line: 451, column: 57, scope: !2349)
!2355 = !DILocation(line: 451, column: 7, scope: !2337)
!2356 = !DILocation(line: 452, column: 31, scope: !2349)
!2357 = !DILocation(line: 452, column: 5, scope: !2349)
!2358 = !DILocation(line: 454, column: 5, scope: !2349)
!2359 = !DILocation(line: 454, column: 23, scope: !2349)
!2360 = !DILocation(line: 454, column: 31, scope: !2349)
!2361 = !DILocation(line: 455, column: 1, scope: !2337)
!2362 = distinct !DISubprogram(name: "fiobj_type_vtable", scope: !6, file: !6, line: 344, type: !2363, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2365, !44}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2366 = !DILocalVariable(name: "o", arg: 1, scope: !2362, file: !6, line: 344, type: !44)
!2367 = !DILocation(line: 344, column: 65, scope: !2362)
!2368 = !DILocation(line: 345, column: 11, scope: !2362)
!2369 = !DILocation(line: 345, column: 3, scope: !2362)
!2370 = !DILocation(line: 347, column: 5, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2362, file: !6, line: 345, column: 26)
!2372 = !DILocation(line: 349, column: 5, scope: !2371)
!2373 = !DILocation(line: 351, column: 5, scope: !2371)
!2374 = !DILocation(line: 353, column: 5, scope: !2371)
!2375 = !DILocation(line: 355, column: 5, scope: !2371)
!2376 = !DILocation(line: 357, column: 5, scope: !2371)
!2377 = !DILocation(line: 362, column: 5, scope: !2371)
!2378 = !DILocation(line: 364, column: 3, scope: !2362)
!2379 = !DILocation(line: 365, column: 1, scope: !2362)
!2380 = distinct !DISubprogram(name: "fiobj_null", scope: !6, file: !6, line: 87, type: !375, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2381 = !DILocation(line: 87, column: 37, scope: !2380)
!2382 = distinct !DISubprogram(name: "fiobj_true", scope: !6, file: !6, line: 88, type: !375, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2383 = !DILocation(line: 88, column: 37, scope: !2382)
!2384 = distinct !DISubprogram(name: "fiobj_false", scope: !6, file: !6, line: 89, type: !375, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2385 = !DILocation(line: 89, column: 38, scope: !2384)
!2386 = distinct !DISubprogram(name: "swallow_ch", scope: !3, file: !3, line: 305, type: !2387, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!60, !2389, !2390, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2392 = !DILocalVariable(name: "buffer", arg: 1, scope: !2386, file: !3, line: 305, type: !2389)
!2393 = !DILocation(line: 305, column: 40, scope: !2386)
!2394 = !DILocalVariable(name: "limit", arg: 2, scope: !2386, file: !3, line: 305, type: !2390)
!2395 = !DILocation(line: 305, column: 63, scope: !2386)
!2396 = !DILocalVariable(name: "c", arg: 3, scope: !2386, file: !3, line: 306, type: !2391)
!2397 = !DILocation(line: 306, column: 44, scope: !2386)
!2398 = !DILocation(line: 307, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 307, column: 7)
!2400 = !DILocation(line: 307, column: 16, scope: !2399)
!2401 = !DILocation(line: 307, column: 15, scope: !2399)
!2402 = !DILocation(line: 307, column: 13, scope: !2399)
!2403 = !DILocation(line: 307, column: 23, scope: !2399)
!2404 = !DILocation(line: 307, column: 7, scope: !2386)
!2405 = !DILocation(line: 308, column: 5, scope: !2399)
!2406 = !DILocalVariable(name: "tmp", scope: !2386, file: !3, line: 309, type: !52)
!2407 = !DILocation(line: 309, column: 9, scope: !2386)
!2408 = !DILocation(line: 309, column: 23, scope: !2386)
!2409 = !DILocation(line: 309, column: 22, scope: !2386)
!2410 = !DILocation(line: 309, column: 31, scope: !2386)
!2411 = !DILocation(line: 309, column: 34, scope: !2386)
!2412 = !DILocation(line: 309, column: 44, scope: !2386)
!2413 = !DILocation(line: 309, column: 43, scope: !2386)
!2414 = !DILocation(line: 309, column: 40, scope: !2386)
!2415 = !DILocation(line: 309, column: 15, scope: !2386)
!2416 = !DILocation(line: 310, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 310, column: 7)
!2418 = !DILocation(line: 310, column: 7, scope: !2386)
!2419 = !DILocation(line: 311, column: 15, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 310, column: 12)
!2421 = !DILocation(line: 311, column: 6, scope: !2420)
!2422 = !DILocation(line: 311, column: 13, scope: !2420)
!2423 = !DILocation(line: 312, column: 7, scope: !2420)
!2424 = !DILocation(line: 312, column: 14, scope: !2420)
!2425 = !DILocation(line: 313, column: 5, scope: !2420)
!2426 = !DILocation(line: 315, column: 24, scope: !2386)
!2427 = !DILocation(line: 315, column: 4, scope: !2386)
!2428 = !DILocation(line: 315, column: 11, scope: !2386)
!2429 = !DILocation(line: 316, column: 3, scope: !2386)
!2430 = !DILocation(line: 317, column: 1, scope: !2386)
!2431 = distinct !DISubprogram(name: "fiobj_data_copy_buffer", scope: !3, file: !3, line: 66, type: !2027, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2432 = !DILocalVariable(name: "o", arg: 1, scope: !2431, file: !3, line: 66, type: !44)
!2433 = !DILocation(line: 66, column: 42, scope: !2431)
!2434 = !DILocation(line: 67, column: 24, scope: !2431)
!2435 = !DILocation(line: 67, column: 35, scope: !2431)
!2436 = !DILocation(line: 67, column: 40, scope: !2431)
!2437 = !DILocation(line: 67, column: 47, scope: !2431)
!2438 = !DILocation(line: 67, column: 52, scope: !2431)
!2439 = !DILocation(line: 67, column: 3, scope: !2431)
!2440 = !DILocation(line: 67, column: 14, scope: !2431)
!2441 = !DILocation(line: 67, column: 19, scope: !2431)
!2442 = !DILocalVariable(name: "tmp", scope: !2431, file: !3, line: 68, type: !52)
!2443 = !DILocation(line: 68, column: 9, scope: !2431)
!2444 = !DILocation(line: 68, column: 26, scope: !2431)
!2445 = !DILocation(line: 68, column: 37, scope: !2431)
!2446 = !DILocation(line: 68, column: 15, scope: !2431)
!2447 = !DILocation(line: 69, column: 3, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2431, file: !3, discriminator: 0)
!2449 = !DILocation(line: 69, column: 3, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 69, column: 3)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 69, column: 3)
!2452 = !DILocation(line: 69, column: 3, scope: !2451)
!2453 = !DILocation(line: 69, column: 3, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 69, column: 3)
!2455 = !DILocation(line: 70, column: 10, scope: !2448)
!2456 = !DILocation(line: 70, column: 15, scope: !2448)
!2457 = !DILocation(line: 70, column: 26, scope: !2448)
!2458 = !DILocation(line: 70, column: 34, scope: !2448)
!2459 = !DILocation(line: 70, column: 45, scope: !2448)
!2460 = !DILocation(line: 70, column: 3, scope: !2448)
!2461 = !DILocation(line: 71, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 71, column: 7)
!2463 = !DILocation(line: 71, column: 18, scope: !2462)
!2464 = !DILocation(line: 71, column: 25, scope: !2462)
!2465 = !DILocation(line: 71, column: 7, scope: !2448)
!2466 = !DILocation(line: 72, column: 5, scope: !2462)
!2467 = !DILocation(line: 72, column: 16, scope: !2462)
!2468 = !DILocation(line: 72, column: 23, scope: !2462)
!2469 = !DILocation(line: 72, column: 31, scope: !2462)
!2470 = !DILocation(line: 72, column: 42, scope: !2462)
!2471 = !DILocation(line: 73, column: 3, scope: !2448)
!2472 = !DILocation(line: 73, column: 14, scope: !2448)
!2473 = !DILocation(line: 73, column: 21, scope: !2448)
!2474 = !DILocation(line: 73, column: 29, scope: !2448)
!2475 = !DILocation(line: 74, column: 23, scope: !2448)
!2476 = !DILocation(line: 74, column: 3, scope: !2448)
!2477 = !DILocation(line: 74, column: 14, scope: !2448)
!2478 = !DILocation(line: 74, column: 21, scope: !2448)
!2479 = !DILocation(line: 75, column: 1, scope: !2448)
!2480 = distinct !DISubprogram(name: "fiobj_data_copy_parent", scope: !3, file: !3, line: 77, type: !2027, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !147)
!2481 = !DILocalVariable(name: "o", arg: 1, scope: !2480, file: !3, line: 77, type: !44)
!2482 = !DILocation(line: 77, column: 42, scope: !2480)
!2483 = !DILocation(line: 78, column: 11, scope: !2480)
!2484 = !DILocation(line: 78, column: 45, scope: !2480)
!2485 = !DILocation(line: 78, column: 3, scope: !2480)
!2486 = !DILocation(line: 80, column: 36, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 78, column: 49)
!2488 = !DILocation(line: 80, column: 47, scope: !2487)
!2489 = !DILocation(line: 80, column: 51, scope: !2487)
!2490 = !DILocation(line: 80, column: 25, scope: !2487)
!2491 = !DILocation(line: 80, column: 5, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2487, file: !3, discriminator: 0)
!2493 = !DILocation(line: 80, column: 16, scope: !2492)
!2494 = !DILocation(line: 80, column: 23, scope: !2487)
!2495 = !DILocation(line: 81, column: 12, scope: !2492)
!2496 = !DILocation(line: 81, column: 23, scope: !2492)
!2497 = !DILocation(line: 82, column: 12, scope: !2492)
!2498 = !DILocation(line: 82, column: 46, scope: !2492)
!2499 = !DILocation(line: 82, column: 55, scope: !2492)
!2500 = !DILocation(line: 82, column: 66, scope: !2492)
!2501 = !DILocation(line: 82, column: 53, scope: !2492)
!2502 = !DILocation(line: 83, column: 12, scope: !2492)
!2503 = !DILocation(line: 83, column: 23, scope: !2492)
!2504 = !DILocation(line: 81, column: 5, scope: !2492)
!2505 = !DILocation(line: 84, column: 5, scope: !2492)
!2506 = !DILocation(line: 84, column: 16, scope: !2492)
!2507 = !DILocation(line: 84, column: 23, scope: !2492)
!2508 = !DILocation(line: 84, column: 34, scope: !2492)
!2509 = !DILocation(line: 84, column: 39, scope: !2492)
!2510 = !DILocation(line: 85, column: 23, scope: !2492)
!2511 = !DILocation(line: 85, column: 34, scope: !2492)
!2512 = !DILocation(line: 85, column: 5, scope: !2492)
!2513 = !DILocation(line: 85, column: 16, scope: !2492)
!2514 = !DILocation(line: 85, column: 21, scope: !2492)
!2515 = !DILocation(line: 86, column: 5, scope: !2492)
!2516 = !DILocation(line: 86, column: 16, scope: !2492)
!2517 = !DILocation(line: 86, column: 19, scope: !2492)
!2518 = !DILocation(line: 87, column: 16, scope: !2492)
!2519 = !DILocation(line: 87, column: 27, scope: !2492)
!2520 = !DILocation(line: 87, column: 34, scope: !2492)
!2521 = !DILocation(line: 87, column: 5, scope: !2492)
!2522 = !DILocation(line: 88, column: 5, scope: !2492)
!2523 = !DILocation(line: 88, column: 16, scope: !2492)
!2524 = !DILocation(line: 88, column: 23, scope: !2492)
!2525 = !DILocation(line: 88, column: 31, scope: !2492)
!2526 = !DILocation(line: 89, column: 5, scope: !2492)
!2527 = !DILocation(line: 91, column: 21, scope: !2492)
!2528 = !DILocation(line: 91, column: 5, scope: !2492)
!2529 = !DILocation(line: 91, column: 16, scope: !2492)
!2530 = !DILocation(line: 91, column: 19, scope: !2492)
!2531 = !DILocation(line: 92, column: 9, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 92, column: 9)
!2533 = !DILocation(line: 92, column: 20, scope: !2532)
!2534 = !DILocation(line: 92, column: 23, scope: !2532)
!2535 = !DILocation(line: 92, column: 9, scope: !2492)
!2536 = !DILocation(line: 93, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 92, column: 28)
!2538 = !DILocation(line: 94, column: 12, scope: !2537)
!2539 = !DILocation(line: 94, column: 7, scope: !2537)
!2540 = !DILocalVariable(name: "data", scope: !2492, file: !3, line: 96, type: !119)
!2541 = !DILocation(line: 96, column: 20, scope: !2492)
!2542 = !DILocalVariable(name: "pos", scope: !2492, file: !3, line: 97, type: !54)
!2543 = !DILocation(line: 97, column: 12, scope: !2492)
!2544 = !DILocation(line: 98, column: 5, scope: !2492)
!2545 = !DILocalVariable(name: "written", scope: !2546, file: !3, line: 99, type: !669)
!2546 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 98, column: 8)
!2547 = !DILocation(line: 99, column: 15, scope: !2546)
!2548 = !DILocation(line: 100, column: 31, scope: !2546)
!2549 = !DILocation(line: 100, column: 42, scope: !2546)
!2550 = !DILocation(line: 100, column: 49, scope: !2546)
!2551 = !DILocation(line: 100, column: 57, scope: !2546)
!2552 = !DILocation(line: 100, column: 63, scope: !2546)
!2553 = !DILocation(line: 100, column: 74, scope: !2546)
!2554 = !DILocation(line: 100, column: 61, scope: !2546)
!2555 = !DILocation(line: 100, column: 14, scope: !2546)
!2556 = !DILocation(line: 102, column: 16, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 102, column: 11)
!2558 = !DILocation(line: 102, column: 22, scope: !2557)
!2559 = !DILocation(line: 102, column: 20, scope: !2557)
!2560 = !DILocation(line: 102, column: 28, scope: !2557)
!2561 = !DILocation(line: 102, column: 39, scope: !2557)
!2562 = !DILocation(line: 102, column: 26, scope: !2557)
!2563 = !DILocation(line: 102, column: 11, scope: !2546)
!2564 = !DILocation(line: 103, column: 20, scope: !2557)
!2565 = !DILocation(line: 103, column: 31, scope: !2557)
!2566 = !DILocation(line: 103, column: 37, scope: !2557)
!2567 = !DILocation(line: 103, column: 35, scope: !2557)
!2568 = !DILocation(line: 103, column: 14, scope: !2557)
!2569 = !DILocation(line: 103, column: 18, scope: !2557)
!2570 = !DILocation(line: 103, column: 9, scope: !2557)
!2571 = !DILabel(scope: !2546, name: "retry_int", file: !3, line: 104)
!2572 = !DILocation(line: 104, column: 5, scope: !2546)
!2573 = !DILocation(line: 105, column: 23, scope: !2546)
!2574 = !DILocation(line: 105, column: 34, scope: !2546)
!2575 = !DILocation(line: 105, column: 43, scope: !2546)
!2576 = !DILocation(line: 105, column: 54, scope: !2546)
!2577 = !DILocation(line: 105, column: 17, scope: !2546)
!2578 = !DILocation(line: 105, column: 15, scope: !2546)
!2579 = !DILocation(line: 106, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 106, column: 11)
!2581 = !DILocation(line: 106, column: 19, scope: !2580)
!2582 = !DILocation(line: 106, column: 11, scope: !2546)
!2583 = !DILocation(line: 107, column: 13, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 107, column: 13)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 106, column: 24)
!2586 = !DILocation(line: 107, column: 19, scope: !2584)
!2587 = !DILocation(line: 107, column: 13, scope: !2585)
!2588 = !DILocation(line: 108, column: 11, scope: !2584)
!2589 = !DILocation(line: 109, column: 9, scope: !2585)
!2590 = !DILocation(line: 110, column: 14, scope: !2585)
!2591 = !DILocation(line: 110, column: 9, scope: !2585)
!2592 = !DILocation(line: 112, column: 14, scope: !2546)
!2593 = !DILocation(line: 112, column: 11, scope: !2546)
!2594 = !DILocation(line: 113, column: 5, scope: !2546)
!2595 = !DILocation(line: 113, column: 19, scope: !2492)
!2596 = !DILocation(line: 113, column: 23, scope: !2492)
!2597 = distinct !{!2597, !2544, !2598}
!2598 = !DILocation(line: 113, column: 30, scope: !2492)
!2599 = !DILocation(line: 114, column: 16, scope: !2492)
!2600 = !DILocation(line: 114, column: 27, scope: !2492)
!2601 = !DILocation(line: 114, column: 34, scope: !2492)
!2602 = !DILocation(line: 114, column: 5, scope: !2492)
!2603 = !DILocation(line: 115, column: 5, scope: !2492)
!2604 = !DILocation(line: 115, column: 16, scope: !2492)
!2605 = !DILocation(line: 115, column: 21, scope: !2492)
!2606 = !DILocation(line: 116, column: 22, scope: !2492)
!2607 = !DILocation(line: 116, column: 5, scope: !2492)
!2608 = !DILocation(line: 116, column: 16, scope: !2492)
!2609 = !DILocation(line: 116, column: 20, scope: !2492)
!2610 = !DILocation(line: 117, column: 30, scope: !2492)
!2611 = !DILocation(line: 117, column: 41, scope: !2492)
!2612 = !DILocation(line: 117, column: 5, scope: !2492)
!2613 = !DILocation(line: 117, column: 16, scope: !2492)
!2614 = !DILocation(line: 117, column: 23, scope: !2492)
!2615 = !DILocation(line: 117, column: 28, scope: !2492)
!2616 = !DILocation(line: 118, column: 5, scope: !2492)
!2617 = !DILocation(line: 118, column: 16, scope: !2492)
!2618 = !DILocation(line: 118, column: 20, scope: !2492)
!2619 = !DILocation(line: 119, column: 5, scope: !2492)
!2620 = !DILocation(line: 119, column: 16, scope: !2492)
!2621 = !DILocation(line: 119, column: 23, scope: !2492)
!2622 = !DILocation(line: 120, column: 5, scope: !2492)
!2623 = !DILocation(line: 122, column: 1, scope: !2480)
